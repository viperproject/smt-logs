(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 22:59:07
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
(declare-fun _isDefined ($Snap Int) Bool)
(declare-fun _isDefined%limited ($Snap Int) Bool)
(declare-fun _isDefined%stateless (Int) Bool)
(declare-fun _isDefined%precondition ($Snap Int) Bool)
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
(declare-fun Level ($Snap $Ref) $Perm)
(declare-fun Level%limited ($Snap $Ref) $Perm)
(declare-fun Level%stateless ($Ref) Bool)
(declare-fun Level%precondition ($Snap $Ref) Bool)
(declare-fun Measure$check ($Snap Seq<Measure$> $Ref Int) Bool)
(declare-fun Measure$check%limited ($Snap Seq<Measure$> $Ref Int) Bool)
(declare-fun Measure$check%stateless (Seq<Measure$> $Ref Int) Bool)
(declare-fun Measure$check%precondition ($Snap Seq<Measure$> $Ref Int) Bool)
(declare-fun _checkDefined ($Snap $Ref Int) $Ref)
(declare-fun _checkDefined%limited ($Snap $Ref Int) $Ref)
(declare-fun _checkDefined%stateless ($Ref Int) Bool)
(declare-fun _checkDefined%precondition ($Snap $Ref Int) Bool)
(declare-fun int___eq__ ($Snap $Ref $Ref) Bool)
(declare-fun int___eq__%limited ($Snap $Ref $Ref) Bool)
(declare-fun int___eq__%stateless ($Ref $Ref) Bool)
(declare-fun int___eq__%precondition ($Snap $Ref $Ref) Bool)
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
(assert (forall ((s@$ $Snap) (id@0@00 Int)) (!
  (= (_isDefined%limited s@$ id@0@00) (_isDefined s@$ id@0@00))
  :pattern ((_isDefined s@$ id@0@00))
  :qid |quant-u-3140|)))
(assert (forall ((s@$ $Snap) (id@0@00 Int)) (!
  (_isDefined%stateless id@0@00)
  :pattern ((_isDefined%limited s@$ id@0@00))
  :qid |quant-u-3141|)))
(assert (forall ((s@$ $Snap) (prim@2@00 Bool)) (!
  (=
    (__prim__bool___box__%limited s@$ prim@2@00)
    (__prim__bool___box__ s@$ prim@2@00))
  :pattern ((__prim__bool___box__ s@$ prim@2@00))
  :qid |quant-u-3142|)))
(assert (forall ((s@$ $Snap) (prim@2@00 Bool)) (!
  (__prim__bool___box__%stateless prim@2@00)
  :pattern ((__prim__bool___box__%limited s@$ prim@2@00))
  :qid |quant-u-3143|)))
(assert (forall ((s@$ $Snap) (prim@2@00 Bool)) (!
  (let ((result@3@00 (__prim__bool___box__%limited s@$ prim@2@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@2@00)
    (and
      (= (typeof<PyType> result@3@00) (as bool<PyType>  PyType))
      (= (bool___unbox__%limited $Snap.unit result@3@00) prim@2@00)
      (= (int___unbox__%limited $Snap.unit result@3@00) (ite prim@2@00 1 0)))))
  :pattern ((__prim__bool___box__%limited s@$ prim@2@00))
  :qid |quant-u-3158|)))
(assert (forall ((s@$ $Snap) (prim@2@00 Bool)) (!
  (let ((result@3@00 (__prim__bool___box__%limited s@$ prim@2@00))) true)
  :pattern ((__prim__bool___box__%limited s@$ prim@2@00))
  :qid |quant-u-3159|)))
(assert (forall ((s@$ $Snap) (prim@2@00 Bool)) (!
  (let ((result@3@00 (__prim__bool___box__%limited s@$ prim@2@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@2@00)
    (bool___unbox__%precondition $Snap.unit result@3@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@2@00))
  :qid |quant-u-3160|)))
(assert (forall ((s@$ $Snap) (prim@2@00 Bool)) (!
  (let ((result@3@00 (__prim__bool___box__%limited s@$ prim@2@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@2@00)
    (int___unbox__%precondition $Snap.unit result@3@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@2@00))
  :qid |quant-u-3161|)))
(assert (forall ((s@$ $Snap) (box@4@00 $Ref)) (!
  (= (int___unbox__%limited s@$ box@4@00) (int___unbox__ s@$ box@4@00))
  :pattern ((int___unbox__ s@$ box@4@00))
  :qid |quant-u-3144|)))
(assert (forall ((s@$ $Snap) (box@4@00 $Ref)) (!
  (int___unbox__%stateless box@4@00)
  :pattern ((int___unbox__%limited s@$ box@4@00))
  :qid |quant-u-3145|)))
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
  :qid |quant-u-3162|)))
(assert (forall ((s@$ $Snap) (box@4@00 $Ref)) (!
  (let ((result@5@00 (int___unbox__%limited s@$ box@4@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@4@00)
      (not (issubtype<Bool> (typeof<PyType> box@4@00) (as bool<PyType>  PyType))))
    (__prim__int___box__%precondition $Snap.unit result@5@00)))
  :pattern ((int___unbox__%limited s@$ box@4@00))
  :qid |quant-u-3163|)))
(assert (forall ((s@$ $Snap) (box@4@00 $Ref)) (!
  (let ((result@5@00 (int___unbox__%limited s@$ box@4@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@4@00)
      (issubtype<Bool> (typeof<PyType> box@4@00) (as bool<PyType>  PyType)))
    (__prim__bool___box__%precondition $Snap.unit (not (= result@5@00 0)))))
  :pattern ((int___unbox__%limited s@$ box@4@00))
  :qid |quant-u-3164|)))
(assert (forall ((s@$ $Snap) (box@6@00 $Ref)) (!
  (= (bool___unbox__%limited s@$ box@6@00) (bool___unbox__ s@$ box@6@00))
  :pattern ((bool___unbox__ s@$ box@6@00))
  :qid |quant-u-3146|)))
(assert (forall ((s@$ $Snap) (box@6@00 $Ref)) (!
  (bool___unbox__%stateless box@6@00)
  :pattern ((bool___unbox__%limited s@$ box@6@00))
  :qid |quant-u-3147|)))
(assert (forall ((s@$ $Snap) (box@6@00 $Ref)) (!
  (let ((result@7@00 (bool___unbox__%limited s@$ box@6@00))) (=>
    (bool___unbox__%precondition s@$ box@6@00)
    (= (__prim__bool___box__%limited $Snap.unit result@7@00) box@6@00)))
  :pattern ((bool___unbox__%limited s@$ box@6@00))
  :qid |quant-u-3165|)))
(assert (forall ((s@$ $Snap) (box@6@00 $Ref)) (!
  (let ((result@7@00 (bool___unbox__%limited s@$ box@6@00))) (=>
    (bool___unbox__%precondition s@$ box@6@00)
    (__prim__bool___box__%precondition $Snap.unit result@7@00)))
  :pattern ((bool___unbox__%limited s@$ box@6@00))
  :qid |quant-u-3166|)))
(assert (forall ((s@$ $Snap) (prim@8@00 Int)) (!
  (=
    (__prim__int___box__%limited s@$ prim@8@00)
    (__prim__int___box__ s@$ prim@8@00))
  :pattern ((__prim__int___box__ s@$ prim@8@00))
  :qid |quant-u-3148|)))
(assert (forall ((s@$ $Snap) (prim@8@00 Int)) (!
  (__prim__int___box__%stateless prim@8@00)
  :pattern ((__prim__int___box__%limited s@$ prim@8@00))
  :qid |quant-u-3149|)))
(assert (forall ((s@$ $Snap) (prim@8@00 Int)) (!
  (let ((result@9@00 (__prim__int___box__%limited s@$ prim@8@00))) (=>
    (__prim__int___box__%precondition s@$ prim@8@00)
    (and
      (= (typeof<PyType> result@9@00) (as int<PyType>  PyType))
      (= (int___unbox__%limited $Snap.unit result@9@00) prim@8@00))))
  :pattern ((__prim__int___box__%limited s@$ prim@8@00))
  :qid |quant-u-3167|)))
(assert (forall ((s@$ $Snap) (prim@8@00 Int)) (!
  (let ((result@9@00 (__prim__int___box__%limited s@$ prim@8@00))) true)
  :pattern ((__prim__int___box__%limited s@$ prim@8@00))
  :qid |quant-u-3168|)))
(assert (forall ((s@$ $Snap) (prim@8@00 Int)) (!
  (let ((result@9@00 (__prim__int___box__%limited s@$ prim@8@00))) (=>
    (__prim__int___box__%precondition s@$ prim@8@00)
    (int___unbox__%precondition $Snap.unit result@9@00)))
  :pattern ((__prim__int___box__%limited s@$ prim@8@00))
  :qid |quant-u-3169|)))
(assert (forall ((s@$ $Snap) (r@10@00 $Ref)) (!
  (= (Level%limited s@$ r@10@00) (Level s@$ r@10@00))
  :pattern ((Level s@$ r@10@00))
  :qid |quant-u-3150|)))
(assert (forall ((s@$ $Snap) (r@10@00 $Ref)) (!
  (Level%stateless r@10@00)
  :pattern ((Level%limited s@$ r@10@00))
  :qid |quant-u-3151|)))
(assert (forall ((s@$ $Snap) (map@12@00 Seq<Measure$>) (key@13@00 $Ref) (value@14@00 Int)) (!
  (=
    (Measure$check%limited s@$ map@12@00 key@13@00 value@14@00)
    (Measure$check s@$ map@12@00 key@13@00 value@14@00))
  :pattern ((Measure$check s@$ map@12@00 key@13@00 value@14@00))
  :qid |quant-u-3152|)))
(assert (forall ((s@$ $Snap) (map@12@00 Seq<Measure$>) (key@13@00 $Ref) (value@14@00 Int)) (!
  (Measure$check%stateless map@12@00 key@13@00 value@14@00)
  :pattern ((Measure$check%limited s@$ map@12@00 key@13@00 value@14@00))
  :qid |quant-u-3153|)))
(assert (forall ((s@$ $Snap) (map@12@00 Seq<Measure$>) (key@13@00 $Ref) (value@14@00 Int)) (!
  (=>
    (Measure$check%precondition s@$ map@12@00 key@13@00 value@14@00)
    (=
      (Measure$check s@$ map@12@00 key@13@00 value@14@00)
      (forall ((m Measure$)) (!
        (=>
          (and
            (Seq_contains map@12@00 m)
            (and (Measure$guard<Bool> m) (= (Measure$key<Ref> m) key@13@00)))
          (> (Measure$value<Int> m) value@14@00))
        :pattern ((Seq_contains map@12@00 m))
        :pattern ((Seq_contains_trigger map@12@00 m))
        :pattern ((Seq_contains_trigger map@12@00 m))
        ))))
  :pattern ((Measure$check s@$ map@12@00 key@13@00 value@14@00))
  :qid |quant-u-3170|)))
(assert (forall ((s@$ $Snap) (map@12@00 Seq<Measure$>) (key@13@00 $Ref) (value@14@00 Int)) (!
  true
  :pattern ((Measure$check s@$ map@12@00 key@13@00 value@14@00))
  :qid |quant-u-3171|)))
(assert (forall ((s@$ $Snap) (val@16@00 $Ref) (id@17@00 Int)) (!
  (=
    (_checkDefined%limited s@$ val@16@00 id@17@00)
    (_checkDefined s@$ val@16@00 id@17@00))
  :pattern ((_checkDefined s@$ val@16@00 id@17@00))
  :qid |quant-u-3154|)))
(assert (forall ((s@$ $Snap) (val@16@00 $Ref) (id@17@00 Int)) (!
  (_checkDefined%stateless val@16@00 id@17@00)
  :pattern ((_checkDefined%limited s@$ val@16@00 id@17@00))
  :qid |quant-u-3155|)))
(assert (forall ((s@$ $Snap) (val@16@00 $Ref) (id@17@00 Int)) (!
  (=>
    (_checkDefined%precondition s@$ val@16@00 id@17@00)
    (= (_checkDefined s@$ val@16@00 id@17@00) val@16@00))
  :pattern ((_checkDefined s@$ val@16@00 id@17@00))
  :qid |quant-u-3172|)))
(assert (forall ((s@$ $Snap) (val@16@00 $Ref) (id@17@00 Int)) (!
  true
  :pattern ((_checkDefined s@$ val@16@00 id@17@00))
  :qid |quant-u-3173|)))
(assert (forall ((s@$ $Snap) (self@19@00 $Ref) (other@20@00 $Ref)) (!
  (=
    (int___eq__%limited s@$ self@19@00 other@20@00)
    (int___eq__ s@$ self@19@00 other@20@00))
  :pattern ((int___eq__ s@$ self@19@00 other@20@00))
  :qid |quant-u-3156|)))
(assert (forall ((s@$ $Snap) (self@19@00 $Ref) (other@20@00 $Ref)) (!
  (int___eq__%stateless self@19@00 other@20@00)
  :pattern ((int___eq__%limited s@$ self@19@00 other@20@00))
  :qid |quant-u-3157|)))
(assert (forall ((s@$ $Snap) (self@19@00 $Ref) (other@20@00 $Ref)) (!
  (=>
    (int___eq__%precondition s@$ self@19@00 other@20@00)
    (=
      (int___eq__ s@$ self@19@00 other@20@00)
      (=
        (int___unbox__ $Snap.unit self@19@00)
        (int___unbox__ $Snap.unit other@20@00))))
  :pattern ((int___eq__ s@$ self@19@00 other@20@00))
  :qid |quant-u-3174|)))
(assert (forall ((s@$ $Snap) (self@19@00 $Ref) (other@20@00 $Ref)) (!
  (=>
    (int___eq__%precondition s@$ self@19@00 other@20@00)
    (and
      (int___unbox__%precondition $Snap.unit self@19@00)
      (int___unbox__%precondition $Snap.unit other@20@00)))
  :pattern ((int___eq__ s@$ self@19@00 other@20@00))
  :qid |quant-u-3175|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- _print ----------
(declare-const p1@0@01 Bool)
(declare-const p2@1@01 Bool)
(declare-const _cthread_156@2@01 $Ref)
(declare-const _cthread_156_0@3@01 $Ref)
(declare-const _caller_measures_156@4@01 Seq<Measure$>)
(declare-const _caller_measures_156_0@5@01 Seq<Measure$>)
(declare-const _residue_156@6@01 $Perm)
(declare-const _residue_156_0@7@01 $Perm)
(declare-const val@8@01 $Ref)
(declare-const val_1@9@01 $Ref)
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
(declare-const val@20@01 $Ref)
(declare-const val_1@21@01 $Ref)
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
; [eval] p1 ==> issubtype(typeof(val), int())
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
; [eval] issubtype(typeof(val), int())
; [eval] typeof(val)
; [eval] int()
(pop) ; 3
(push) ; 3
; [else-branch: 4 | !(p1@12@01)]
(assert (not p1@12@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p1@12@01
  (issubtype<Bool> (typeof<PyType> val@20@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))
  $Snap.unit))
; [eval] p2 ==> issubtype(typeof(val_1), int())
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
; [eval] issubtype(typeof(val_1), int())
; [eval] typeof(val_1)
; [eval] int()
(pop) ; 3
(push) ; 3
; [else-branch: 5 | !(p2@13@01)]
(assert (not p2@13@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p2@13@01
  (issubtype<Bool> (typeof<PyType> val_1@21@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))
  $Snap.unit))
; [eval] p1 == p2
(assert (= p1@12@01 p2@13@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))
  $Snap.unit))
; [eval] p1 && p2 ==> val == val_1
; [eval] p1 && p2
(push) ; 2
; [then-branch: 6 | !(p1@12@01) | live]
; [else-branch: 6 | p1@12@01 | live]
(push) ; 3
; [then-branch: 6 | !(p1@12@01)]
(assert (not p1@12@01))
(pop) ; 3
(push) ; 3
; [else-branch: 6 | p1@12@01]
(assert p1@12@01)
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or p1@12@01 (not p1@12@01)))
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (and p1@12@01 p2@13@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and p1@12@01 p2@13@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | p1@12@01 && p2@13@01 | live]
; [else-branch: 7 | !(p1@12@01 && p2@13@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 7 | p1@12@01 && p2@13@01]
(assert (and p1@12@01 p2@13@01))
; [eval] val == val_1
(pop) ; 3
(push) ; 3
; [else-branch: 7 | !(p1@12@01 && p2@13@01)]
(assert (not (and p1@12@01 p2@13@01)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not (and p1@12@01 p2@13@01)) (and p1@12@01 p2@13@01)))
(assert (=> (and p1@12@01 p2@13@01) (= val@20@01 val_1@21@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))
  $Snap.unit))
; [eval] p1 ==> true
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
; [then-branch: 8 | p1@12@01 | live]
; [else-branch: 8 | !(p1@12@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 8 | p1@12@01]
(assert p1@12@01)
(pop) ; 3
(push) ; 3
; [else-branch: 8 | !(p1@12@01)]
(assert (not p1@12@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))
  $Snap.unit))
; [eval] p2 ==> true
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
; [then-branch: 9 | p2@13@01 | live]
; [else-branch: 9 | !(p2@13@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 9 | p2@13@01]
(assert p2@13@01)
(pop) ; 3
(push) ; 3
; [else-branch: 9 | !(p2@13@01)]
(assert (not p2@13@01))
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
(declare-const $t@25@01 $Snap)
(assert (= $t@25@01 ($Snap.combine ($Snap.first $t@25@01) ($Snap.second $t@25@01))))
(assert (= ($Snap.first $t@25@01) $Snap.unit))
; [eval] p1 ==> (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156) && ((forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156) && _residue_156 <= _current_wait_level_156)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p1@12@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | p1@12@01 | live]
; [else-branch: 10 | !(p1@12@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 10 | p1@12@01]
(assert p1@12@01)
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156) && ((forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156) && _residue_156 <= _current_wait_level_156)
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156)
(push) ; 5
; [then-branch: 11 | False | live]
; [else-branch: 11 | True | live]
(push) ; 6
; [then-branch: 11 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 11 | True]
; [eval] (forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156)
(push) ; 7
; [then-branch: 12 | False | live]
; [else-branch: 12 | True | live]
(push) ; 8
; [then-branch: 12 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 12 | True]
; [eval] _residue_156 <= _current_wait_level_156
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
; [else-branch: 10 | !(p1@12@01)]
(assert (not p1@12@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=> p1@12@01 (<= _residue_156@18@01 _current_wait_level_156@22@01)))
(assert (=
  ($Snap.second $t@25@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@25@01))
    ($Snap.second ($Snap.second $t@25@01)))))
(assert (= ($Snap.first ($Snap.second $t@25@01)) $Snap.unit))
; [eval] p2 ==> (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _current_wait_level_156_0) && ((forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _current_wait_level_156_0) && _residue_156_0 <= _current_wait_level_156_0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p2@13@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | p2@13@01 | live]
; [else-branch: 13 | !(p2@13@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 13 | p2@13@01]
(assert p2@13@01)
; [eval] (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _current_wait_level_156_0) && ((forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _current_wait_level_156_0) && _residue_156_0 <= _current_wait_level_156_0)
; [eval] (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _current_wait_level_156_0)
(push) ; 5
; [then-branch: 14 | False | live]
; [else-branch: 14 | True | live]
(push) ; 6
; [then-branch: 14 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 14 | True]
; [eval] (forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _current_wait_level_156_0)
(push) ; 7
; [then-branch: 15 | False | live]
; [else-branch: 15 | True | live]
(push) ; 8
; [then-branch: 15 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 15 | True]
; [eval] _residue_156_0 <= _current_wait_level_156_0
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
; [else-branch: 13 | !(p2@13@01)]
(assert (not p2@13@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=> p2@13@01 (<= _residue_156_0@19@01 _current_wait_level_156_0@23@01)))
(assert (=
  ($Snap.second ($Snap.second $t@25@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@25@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@25@01))) $Snap.unit))
; [eval] p1 ==> true
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p1@12@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | p1@12@01 | live]
; [else-branch: 16 | !(p1@12@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 16 | p1@12@01]
(assert p1@12@01)
(pop) ; 4
(push) ; 4
; [else-branch: 16 | !(p1@12@01)]
(assert (not p1@12@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@25@01))) $Snap.unit))
; [eval] p2 ==> true
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p2@13@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 17 | p2@13@01 | live]
; [else-branch: 17 | !(p2@13@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 17 | p2@13@01]
(assert p2@13@01)
(pop) ; 4
(push) ; 4
; [else-branch: 17 | !(p2@13@01)]
(assert (not p2@13@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@26@01 $Ref)
; [exec]
; var _err_0: Ref
(declare-const _err_0@27@01 $Ref)
; [exec]
; var val_0: Ref
(declare-const val_0@28@01 $Ref)
; [exec]
; var val_0_0: Ref
(declare-const val_0_0@29@01 $Ref)
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
; inhale p1
(declare-const $t@34@01 $Snap)
(assert (= $t@34@01 $Snap.unit))
(assert p1@12@01)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 18 | p1@12@01 | live]
; [else-branch: 18 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 18 | p1@12@01]
; [exec]
; _method_measures_156 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err := null
; [exec]
; val_0 := val
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p2@13@01))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 19 | p2@13@01 | live]
; [else-branch: 19 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 19 | p2@13@01]
(assert p2@13@01)
; [exec]
; _method_measures_156_0 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err_0 := null
; [exec]
; val_0_0 := val_1
; [exec]
; assert true
; [eval] p1 ==> true
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 20 | p1@12@01 | live]
; [else-branch: 20 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 20 | p1@12@01]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] p2 ==> true
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 21 | p2@13@01 | live]
; [else-branch: 21 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 21 | p2@13@01]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] p1 ==> (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | p1@12@01 | live]
; [else-branch: 22 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 22 | p1@12@01]
; [eval] (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false)
(push) ; 7
; [then-branch: 23 | False | live]
; [else-branch: 23 | True | live]
(push) ; 8
; [then-branch: 23 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 23 | True]
; [eval] (forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false)
(push) ; 9
; [then-branch: 24 | False | live]
; [else-branch: 24 | True | live]
(push) ; 10
; [then-branch: 24 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 24 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false)
(push) ; 11
; [then-branch: 25 | False | live]
; [else-branch: 25 | True | live]
(push) ; 12
; [then-branch: 25 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 25 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)
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
; [eval] p2 ==> (forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 26 | p2@13@01 | live]
; [else-branch: 26 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 26 | p2@13@01]
; [eval] (forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))
; [eval] (forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false)
(push) ; 7
; [then-branch: 27 | False | live]
; [else-branch: 27 | True | live]
(push) ; 8
; [then-branch: 27 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 27 | True]
; [eval] (forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false)
(push) ; 9
; [then-branch: 28 | False | live]
; [else-branch: 28 | True | live]
(push) ; 10
; [then-branch: 28 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 28 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false)
(push) ; 11
; [then-branch: 29 | False | live]
; [else-branch: 29 | True | live]
(push) ; 12
; [then-branch: 29 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 29 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)
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
; [eval] !p2
(push) ; 4
(set-option :timeout 10)
(assert (not p2@13@01))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 30 | !(p2@13@01) | dead]
; [else-branch: 30 | p2@13@01 | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 30 | p2@13@01]
(assert p2@13@01)
(pop) ; 4
(pop) ; 3
; [eval] !p1
; [then-branch: 31 | !(p1@12@01) | dead]
; [else-branch: 31 | p1@12@01 | live]
(push) ; 3
; [else-branch: 31 | p1@12@01]
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- inputPIN ----------
(declare-const p1_0@35@01 Bool)
(declare-const p2_0@36@01 Bool)
(declare-const _cthread_157@37@01 $Ref)
(declare-const _cthread_157_0@38@01 $Ref)
(declare-const _caller_measures_157@39@01 Seq<Measure$>)
(declare-const _caller_measures_157_0@40@01 Seq<Measure$>)
(declare-const _residue_157@41@01 $Perm)
(declare-const _residue_157_0@42@01 $Perm)
(declare-const _current_wait_level_157@43@01 $Perm)
(declare-const _current_wait_level_157_0@44@01 $Perm)
(declare-const _res@45@01 $Ref)
(declare-const _res_0@46@01 $Ref)
(declare-const p1_0@47@01 Bool)
(declare-const p2_0@48@01 Bool)
(declare-const _cthread_157@49@01 $Ref)
(declare-const _cthread_157_0@50@01 $Ref)
(declare-const _caller_measures_157@51@01 Seq<Measure$>)
(declare-const _caller_measures_157_0@52@01 Seq<Measure$>)
(declare-const _residue_157@53@01 $Perm)
(declare-const _residue_157_0@54@01 $Perm)
(declare-const _current_wait_level_157@55@01 $Perm)
(declare-const _current_wait_level_157_0@56@01 $Perm)
(declare-const _res@57@01 $Ref)
(declare-const _res_0@58@01 $Ref)
(push) ; 1
(declare-const $t@59@01 $Snap)
(assert (= $t@59@01 ($Snap.combine ($Snap.first $t@59@01) ($Snap.second $t@59@01))))
(assert (= ($Snap.first $t@59@01) $Snap.unit))
; [eval] p1_0 ==> _cthread_157 != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_0@47@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1_0@47@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 32 | p1_0@47@01 | live]
; [else-branch: 32 | !(p1_0@47@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 32 | p1_0@47@01]
(assert p1_0@47@01)
; [eval] _cthread_157 != null
(pop) ; 3
(push) ; 3
; [else-branch: 32 | !(p1_0@47@01)]
(assert (not p1_0@47@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not p1_0@47@01) p1_0@47@01))
(assert (=> p1_0@47@01 (not (= _cthread_157@49@01 $Ref.null))))
(assert (=
  ($Snap.second $t@59@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@59@01))
    ($Snap.second ($Snap.second $t@59@01)))))
(assert (= ($Snap.first ($Snap.second $t@59@01)) $Snap.unit))
; [eval] p2_0 ==> _cthread_157_0 != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2_0@48@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2_0@48@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 33 | p2_0@48@01 | live]
; [else-branch: 33 | !(p2_0@48@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 33 | p2_0@48@01]
(assert p2_0@48@01)
; [eval] _cthread_157_0 != null
(pop) ; 3
(push) ; 3
; [else-branch: 33 | !(p2_0@48@01)]
(assert (not p2_0@48@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not p2_0@48@01) p2_0@48@01))
(assert (=> p2_0@48@01 (not (= _cthread_157_0@50@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@59@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@59@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@59@01))) $Snap.unit))
; [eval] p1_0 ==> issubtype(typeof(_cthread_157), Thread_0())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_0@47@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1_0@47@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 34 | p1_0@47@01 | live]
; [else-branch: 34 | !(p1_0@47@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 34 | p1_0@47@01]
(assert p1_0@47@01)
; [eval] issubtype(typeof(_cthread_157), Thread_0())
; [eval] typeof(_cthread_157)
; [eval] Thread_0()
(pop) ; 3
(push) ; 3
; [else-branch: 34 | !(p1_0@47@01)]
(assert (not p1_0@47@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p1_0@47@01
  (issubtype<Bool> (typeof<PyType> _cthread_157@49@01) (as Thread_0<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@59@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@59@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@59@01))))
  $Snap.unit))
; [eval] p2_0 ==> issubtype(typeof(_cthread_157_0), Thread_0())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2_0@48@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2_0@48@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 35 | p2_0@48@01 | live]
; [else-branch: 35 | !(p2_0@48@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 35 | p2_0@48@01]
(assert p2_0@48@01)
; [eval] issubtype(typeof(_cthread_157_0), Thread_0())
; [eval] typeof(_cthread_157_0)
; [eval] Thread_0()
(pop) ; 3
(push) ; 3
; [else-branch: 35 | !(p2_0@48@01)]
(assert (not p2_0@48@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p2_0@48@01
  (issubtype<Bool> (typeof<PyType> _cthread_157_0@50@01) (as Thread_0<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))
  $Snap.unit))
; [eval] p1_0 ==> true
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_0@47@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1_0@47@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 36 | p1_0@47@01 | live]
; [else-branch: 36 | !(p1_0@47@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 36 | p1_0@47@01]
(assert p1_0@47@01)
(pop) ; 3
(push) ; 3
; [else-branch: 36 | !(p1_0@47@01)]
(assert (not p1_0@47@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))
  $Snap.unit))
; [eval] p2_0 ==> true
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2_0@48@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2_0@48@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 37 | p2_0@48@01 | live]
; [else-branch: 37 | !(p2_0@48@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 37 | p2_0@48@01]
(assert p2_0@48@01)
(pop) ; 3
(push) ; 3
; [else-branch: 37 | !(p2_0@48@01)]
(assert (not p2_0@48@01))
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
(declare-const $t@60@01 $Snap)
(assert (= $t@60@01 ($Snap.combine ($Snap.first $t@60@01) ($Snap.second $t@60@01))))
(assert (= ($Snap.first $t@60@01) $Snap.unit))
; [eval] p1_0 ==> (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157) && ((forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157) && _residue_157 <= _current_wait_level_157)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p1_0@47@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p1_0@47@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 38 | p1_0@47@01 | live]
; [else-branch: 38 | !(p1_0@47@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 38 | p1_0@47@01]
(assert p1_0@47@01)
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157) && ((forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157) && _residue_157 <= _current_wait_level_157)
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157)
(push) ; 5
; [then-branch: 39 | False | live]
; [else-branch: 39 | True | live]
(push) ; 6
; [then-branch: 39 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 39 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157)
(push) ; 7
; [then-branch: 40 | False | live]
; [else-branch: 40 | True | live]
(push) ; 8
; [then-branch: 40 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 40 | True]
; [eval] _residue_157 <= _current_wait_level_157
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
; [else-branch: 38 | !(p1_0@47@01)]
(assert (not p1_0@47@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=> p1_0@47@01 (<= _residue_157@53@01 _current_wait_level_157@55@01)))
(assert (=
  ($Snap.second $t@60@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@60@01))
    ($Snap.second ($Snap.second $t@60@01)))))
(assert (= ($Snap.first ($Snap.second $t@60@01)) $Snap.unit))
; [eval] p2_0 ==> (forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: Level(_r_2) <= _current_wait_level_157_0) && ((forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: Level(_r_2) <= _current_wait_level_157_0) && _residue_157_0 <= _current_wait_level_157_0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2_0@48@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p2_0@48@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 41 | p2_0@48@01 | live]
; [else-branch: 41 | !(p2_0@48@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 41 | p2_0@48@01]
(assert p2_0@48@01)
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: Level(_r_2) <= _current_wait_level_157_0) && ((forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: Level(_r_2) <= _current_wait_level_157_0) && _residue_157_0 <= _current_wait_level_157_0)
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: Level(_r_2) <= _current_wait_level_157_0)
(push) ; 5
; [then-branch: 42 | False | live]
; [else-branch: 42 | True | live]
(push) ; 6
; [then-branch: 42 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 42 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: Level(_r_2) <= _current_wait_level_157_0)
(push) ; 7
; [then-branch: 43 | False | live]
; [else-branch: 43 | True | live]
(push) ; 8
; [then-branch: 43 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 43 | True]
; [eval] _residue_157_0 <= _current_wait_level_157_0
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
; [else-branch: 41 | !(p2_0@48@01)]
(assert (not p2_0@48@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=> p2_0@48@01 (<= _residue_157_0@54@01 _current_wait_level_157_0@56@01)))
(assert (=
  ($Snap.second ($Snap.second $t@60@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@60@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@60@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@60@01))) $Snap.unit))
; [eval] p1_0 ==> issubtype(typeof(_res), int())
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p1_0@47@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p1_0@47@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 44 | p1_0@47@01 | live]
; [else-branch: 44 | !(p1_0@47@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 44 | p1_0@47@01]
(assert p1_0@47@01)
; [eval] issubtype(typeof(_res), int())
; [eval] typeof(_res)
; [eval] int()
(pop) ; 4
(push) ; 4
; [else-branch: 44 | !(p1_0@47@01)]
(assert (not p1_0@47@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  p1_0@47@01
  (issubtype<Bool> (typeof<PyType> _res@57@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@60@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@60@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@60@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@60@01))))
  $Snap.unit))
; [eval] p2_0 ==> issubtype(typeof(_res_0), int())
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2_0@48@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p2_0@48@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 45 | p2_0@48@01 | live]
; [else-branch: 45 | !(p2_0@48@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 45 | p2_0@48@01]
(assert p2_0@48@01)
; [eval] issubtype(typeof(_res_0), int())
; [eval] typeof(_res_0)
; [eval] int()
(pop) ; 4
(push) ; 4
; [else-branch: 45 | !(p2_0@48@01)]
(assert (not p2_0@48@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  p2_0@48@01
  (issubtype<Bool> (typeof<PyType> _res_0@58@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@60@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@60@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@60@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@60@01)))))
  $Snap.unit))
; [eval] p1_0 ==> true
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p1_0@47@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p1_0@47@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 46 | p1_0@47@01 | live]
; [else-branch: 46 | !(p1_0@47@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 46 | p1_0@47@01]
(assert p1_0@47@01)
(pop) ; 4
(push) ; 4
; [else-branch: 46 | !(p1_0@47@01)]
(assert (not p1_0@47@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@60@01)))))
  $Snap.unit))
; [eval] p2_0 ==> true
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2_0@48@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p2_0@48@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 47 | p2_0@48@01 | live]
; [else-branch: 47 | !(p2_0@48@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 47 | p2_0@48@01]
(assert p2_0@48@01)
(pop) ; 4
(push) ; 4
; [else-branch: 47 | !(p2_0@48@01)]
(assert (not p2_0@48@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(pop) ; 2
(push) ; 2
; [exec]
; var ret1: Bool
(declare-const ret1@61@01 Bool)
; [exec]
; var ret2: Bool
(declare-const ret2@62@01 Bool)
; [exec]
; var _err: Ref
(declare-const _err@63@01 $Ref)
; [exec]
; var _err_1: Ref
(declare-const _err_1@64@01 $Ref)
; [exec]
; var _cwl_157: Perm
(declare-const _cwl_157@65@01 $Perm)
; [exec]
; var _cwl_157_0: Perm
(declare-const _cwl_157_0@66@01 $Perm)
; [exec]
; var _method_measures_157: Seq[Measure$]
(declare-const _method_measures_157@67@01 Seq<Measure$>)
; [exec]
; var _method_measures_157_0: Seq[Measure$]
(declare-const _method_measures_157_0@68@01 Seq<Measure$>)
; [exec]
; inhale p1_0
(declare-const $t@69@01 $Snap)
(assert (= $t@69@01 $Snap.unit))
(assert p1_0@47@01)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; ret1 := false
; [exec]
; ret2 := false
; [eval] p1_0 && !ret1
(set-option :timeout 0)
(push) ; 3
; [then-branch: 48 | !(p1_0@47@01) | live]
; [else-branch: 48 | p1_0@47@01 | live]
(push) ; 4
; [then-branch: 48 | !(p1_0@47@01)]
(assert (not p1_0@47@01))
(pop) ; 4
(push) ; 4
; [else-branch: 48 | p1_0@47@01]
; [eval] !ret1
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or p1_0@47@01 (not p1_0@47@01)))
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_0@47@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 49 | p1_0@47@01 | live]
; [else-branch: 49 | !(p1_0@47@01) | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 49 | p1_0@47@01]
; [exec]
; _method_measures_157 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _res := null
; [exec]
; _err := null
; [exec]
; _res := __prim__int___box__(17)
; [eval] __prim__int___box__(17)
(push) ; 4
(assert (__prim__int___box__%precondition $Snap.unit 17))
(pop) ; 4
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 17))
(declare-const _res@70@01 $Ref)
(assert (= _res@70@01 (__prim__int___box__ $Snap.unit 17)))
; [exec]
; ret1 := true
; [eval] p2_0 && !ret2
(push) ; 4
; [then-branch: 50 | !(p2_0@48@01) | live]
; [else-branch: 50 | p2_0@48@01 | live]
(push) ; 5
; [then-branch: 50 | !(p2_0@48@01)]
(assert (not p2_0@48@01))
(pop) ; 5
(push) ; 5
; [else-branch: 50 | p2_0@48@01]
(assert p2_0@48@01)
; [eval] !ret2
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or p2_0@48@01 (not p2_0@48@01)))
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2_0@48@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p2_0@48@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 51 | p2_0@48@01 | live]
; [else-branch: 51 | !(p2_0@48@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 51 | p2_0@48@01]
(assert p2_0@48@01)
; [exec]
; _method_measures_157_0 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _res_0 := null
; [exec]
; _err_1 := null
; [exec]
; _res_0 := __prim__int___box__(17)
; [eval] __prim__int___box__(17)
(push) ; 5
(pop) ; 5
; Joined path conditions
(declare-const _res_0@71@01 $Ref)
(assert (= _res_0@71@01 (__prim__int___box__ $Snap.unit 17)))
; [exec]
; ret2 := true
; [exec]
; assert true
; [eval] p1_0 ==> true
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not p1_0@47@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 52 | p1_0@47@01 | live]
; [else-branch: 52 | !(p1_0@47@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 52 | p1_0@47@01]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] p2_0 ==> true
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not p2_0@48@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 53 | p2_0@48@01 | live]
; [else-branch: 53 | !(p2_0@48@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 53 | p2_0@48@01]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] p1_0 ==> issubtype(typeof(_res), int())
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not p1_0@47@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 54 | p1_0@47@01 | live]
; [else-branch: 54 | !(p1_0@47@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 54 | p1_0@47@01]
; [eval] issubtype(typeof(_res), int())
; [eval] typeof(_res)
; [eval] int()
(pop) ; 6
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (=>
  p1_0@47@01
  (issubtype<Bool> (typeof<PyType> _res@70@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p1_0@47@01
  (issubtype<Bool> (typeof<PyType> _res@70@01) (as int<PyType>  PyType))))
; [eval] p2_0 ==> issubtype(typeof(_res_0), int())
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not p2_0@48@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 55 | p2_0@48@01 | live]
; [else-branch: 55 | !(p2_0@48@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 55 | p2_0@48@01]
; [eval] issubtype(typeof(_res_0), int())
; [eval] typeof(_res_0)
; [eval] int()
(pop) ; 6
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (=>
  p2_0@48@01
  (issubtype<Bool> (typeof<PyType> _res_0@71@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p2_0@48@01
  (issubtype<Bool> (typeof<PyType> _res_0@71@01) (as int<PyType>  PyType))))
; [eval] p1_0 ==> (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)))
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not p1_0@47@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 56 | p1_0@47@01 | live]
; [else-branch: 56 | !(p1_0@47@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 56 | p1_0@47@01]
; [eval] (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false)
(push) ; 7
; [then-branch: 57 | False | live]
; [else-branch: 57 | True | live]
(push) ; 8
; [then-branch: 57 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 57 | True]
; [eval] (forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false)
(push) ; 9
; [then-branch: 58 | False | live]
; [else-branch: 58 | True | live]
(push) ; 10
; [then-branch: 58 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 58 | True]
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false)
(push) ; 11
; [then-branch: 59 | False | live]
; [else-branch: 59 | True | live]
(push) ; 12
; [then-branch: 59 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 59 | True]
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)
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
; [eval] p2_0 ==> (forperm _r_3: Ref [MustInvokeBounded_0(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded_0(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBoundedp] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnboundedp] :: false)))
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not p2_0@48@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 60 | p2_0@48@01 | live]
; [else-branch: 60 | !(p2_0@48@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 60 | p2_0@48@01]
; [eval] (forperm _r_3: Ref [MustInvokeBounded_0(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded_0(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBoundedp] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnboundedp] :: false)))
; [eval] (forperm _r_3: Ref [MustInvokeBounded_0(_r_3)] :: false)
(push) ; 7
; [then-branch: 61 | False | live]
; [else-branch: 61 | True | live]
(push) ; 8
; [then-branch: 61 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 61 | True]
; [eval] (forperm _r_3: Ref [MustInvokeUnbounded_0(_r_3)] :: false)
(push) ; 9
; [then-branch: 62 | False | live]
; [else-branch: 62 | True | live]
(push) ; 10
; [then-branch: 62 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 62 | True]
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseBoundedp] :: false)
(push) ; 11
; [then-branch: 63 | False | live]
; [else-branch: 63 | True | live]
(push) ; 12
; [then-branch: 63 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 63 | True]
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseUnboundedp] :: false)
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
; [else-branch: 51 | !(p2_0@48@01)]
(assert (not p2_0@48@01))
(pop) ; 4
; [eval] !(p2_0 && !ret2)
; [eval] p2_0 && !ret2
(push) ; 4
; [then-branch: 64 | !(p2_0@48@01) | live]
; [else-branch: 64 | p2_0@48@01 | live]
(push) ; 5
; [then-branch: 64 | !(p2_0@48@01)]
(assert (not p2_0@48@01))
(pop) ; 5
(push) ; 5
; [else-branch: 64 | p2_0@48@01]
(assert p2_0@48@01)
; [eval] !ret2
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(set-option :timeout 10)
(assert (not p2_0@48@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2_0@48@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 65 | !(p2_0@48@01) | live]
; [else-branch: 65 | p2_0@48@01 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 65 | !(p2_0@48@01)]
(assert (not p2_0@48@01))
; [exec]
; assert true
; [eval] p1_0 ==> true
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not p1_0@47@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 66 | p1_0@47@01 | live]
; [else-branch: 66 | !(p1_0@47@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 66 | p1_0@47@01]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] p2_0 ==> true
(push) ; 5
; [then-branch: 67 | p2_0@48@01 | dead]
; [else-branch: 67 | !(p2_0@48@01) | live]
(push) ; 6
; [else-branch: 67 | !(p2_0@48@01)]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] p1_0 ==> issubtype(typeof(_res), int())
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not p1_0@47@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 68 | p1_0@47@01 | live]
; [else-branch: 68 | !(p1_0@47@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 68 | p1_0@47@01]
; [eval] issubtype(typeof(_res), int())
; [eval] typeof(_res)
; [eval] int()
(pop) ; 6
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (=>
  p1_0@47@01
  (issubtype<Bool> (typeof<PyType> _res@70@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p1_0@47@01
  (issubtype<Bool> (typeof<PyType> _res@70@01) (as int<PyType>  PyType))))
; [eval] p2_0 ==> issubtype(typeof(_res_0), int())
(push) ; 5
; [then-branch: 69 | p2_0@48@01 | dead]
; [else-branch: 69 | !(p2_0@48@01) | live]
(push) ; 6
; [else-branch: 69 | !(p2_0@48@01)]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] p1_0 ==> (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)))
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not p1_0@47@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 70 | p1_0@47@01 | live]
; [else-branch: 70 | !(p1_0@47@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 70 | p1_0@47@01]
; [eval] (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false)
(push) ; 7
; [then-branch: 71 | False | live]
; [else-branch: 71 | True | live]
(push) ; 8
; [then-branch: 71 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 71 | True]
; [eval] (forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false)
(push) ; 9
; [then-branch: 72 | False | live]
; [else-branch: 72 | True | live]
(push) ; 10
; [then-branch: 72 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 72 | True]
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false)
(push) ; 11
; [then-branch: 73 | False | live]
; [else-branch: 73 | True | live]
(push) ; 12
; [then-branch: 73 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 73 | True]
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)
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
; [eval] p2_0 ==> (forperm _r_3: Ref [MustInvokeBounded_0(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded_0(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBoundedp] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnboundedp] :: false)))
(push) ; 5
; [then-branch: 74 | p2_0@48@01 | dead]
; [else-branch: 74 | !(p2_0@48@01) | live]
(push) ; 6
; [else-branch: 74 | !(p2_0@48@01)]
(pop) ; 6
(pop) ; 5
; Joined path conditions
(pop) ; 4
(push) ; 4
; [else-branch: 65 | p2_0@48@01]
(assert p2_0@48@01)
(pop) ; 4
(pop) ; 3
; [eval] !(p1_0 && !ret1)
; [eval] p1_0 && !ret1
(push) ; 3
; [then-branch: 75 | !(p1_0@47@01) | live]
; [else-branch: 75 | p1_0@47@01 | live]
(push) ; 4
; [then-branch: 75 | !(p1_0@47@01)]
(assert (not p1_0@47@01))
(pop) ; 4
(push) ; 4
; [else-branch: 75 | p1_0@47@01]
; [eval] !ret1
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
; [then-branch: 76 | !(p1_0@47@01) | dead]
; [else-branch: 76 | p1_0@47@01 | live]
(push) ; 3
; [else-branch: 76 | p1_0@47@01]
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- main ----------
(declare-const p1_1@72@01 Bool)
(declare-const p2_1@73@01 Bool)
(declare-const _cthread_158@74@01 $Ref)
(declare-const _cthread_158_0@75@01 $Ref)
(declare-const _caller_measures_158@76@01 Seq<Measure$>)
(declare-const _caller_measures_158_0@77@01 Seq<Measure$>)
(declare-const _residue_158@78@01 $Perm)
(declare-const _residue_158_0@79@01 $Perm)
(declare-const _current_wait_level_158@80@01 $Perm)
(declare-const _current_wait_level_158_0@81@01 $Perm)
(declare-const p1_1@82@01 Bool)
(declare-const p2_1@83@01 Bool)
(declare-const _cthread_158@84@01 $Ref)
(declare-const _cthread_158_0@85@01 $Ref)
(declare-const _caller_measures_158@86@01 Seq<Measure$>)
(declare-const _caller_measures_158_0@87@01 Seq<Measure$>)
(declare-const _residue_158@88@01 $Perm)
(declare-const _residue_158_0@89@01 $Perm)
(declare-const _current_wait_level_158@90@01 $Perm)
(declare-const _current_wait_level_158_0@91@01 $Perm)
(push) ; 1
(declare-const $t@92@01 $Snap)
(assert (= $t@92@01 ($Snap.combine ($Snap.first $t@92@01) ($Snap.second $t@92@01))))
(assert (= ($Snap.first $t@92@01) $Snap.unit))
; [eval] p1_1 ==> _cthread_158 != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_1@82@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1_1@82@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 77 | p1_1@82@01 | live]
; [else-branch: 77 | !(p1_1@82@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 77 | p1_1@82@01]
(assert p1_1@82@01)
; [eval] _cthread_158 != null
(pop) ; 3
(push) ; 3
; [else-branch: 77 | !(p1_1@82@01)]
(assert (not p1_1@82@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not p1_1@82@01) p1_1@82@01))
(assert (=> p1_1@82@01 (not (= _cthread_158@84@01 $Ref.null))))
(assert (=
  ($Snap.second $t@92@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@92@01))
    ($Snap.second ($Snap.second $t@92@01)))))
(assert (= ($Snap.first ($Snap.second $t@92@01)) $Snap.unit))
; [eval] p2_1 ==> _cthread_158_0 != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2_1@83@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2_1@83@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 78 | p2_1@83@01 | live]
; [else-branch: 78 | !(p2_1@83@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 78 | p2_1@83@01]
(assert p2_1@83@01)
; [eval] _cthread_158_0 != null
(pop) ; 3
(push) ; 3
; [else-branch: 78 | !(p2_1@83@01)]
(assert (not p2_1@83@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not p2_1@83@01) p2_1@83@01))
(assert (=> p2_1@83@01 (not (= _cthread_158_0@85@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@92@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@92@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@92@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@92@01))) $Snap.unit))
; [eval] p1_1 ==> issubtype(typeof(_cthread_158), Thread_0())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_1@82@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1_1@82@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 79 | p1_1@82@01 | live]
; [else-branch: 79 | !(p1_1@82@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 79 | p1_1@82@01]
(assert p1_1@82@01)
; [eval] issubtype(typeof(_cthread_158), Thread_0())
; [eval] typeof(_cthread_158)
; [eval] Thread_0()
(pop) ; 3
(push) ; 3
; [else-branch: 79 | !(p1_1@82@01)]
(assert (not p1_1@82@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p1_1@82@01
  (issubtype<Bool> (typeof<PyType> _cthread_158@84@01) (as Thread_0<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@92@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@92@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@92@01))))
  $Snap.unit))
; [eval] p2_1 ==> issubtype(typeof(_cthread_158_0), Thread_0())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2_1@83@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2_1@83@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 80 | p2_1@83@01 | live]
; [else-branch: 80 | !(p2_1@83@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 80 | p2_1@83@01]
(assert p2_1@83@01)
; [eval] issubtype(typeof(_cthread_158_0), Thread_0())
; [eval] typeof(_cthread_158_0)
; [eval] Thread_0()
(pop) ; 3
(push) ; 3
; [else-branch: 80 | !(p2_1@83@01)]
(assert (not p2_1@83@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p2_1@83@01
  (issubtype<Bool> (typeof<PyType> _cthread_158_0@85@01) (as Thread_0<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01)))))
  $Snap.unit))
; [eval] p1_1 == p2_1
(assert (= p1_1@82@01 p2_1@83@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01))))))
  $Snap.unit))
; [eval] p1_1 ==> true
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_1@82@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1_1@82@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 81 | p1_1@82@01 | live]
; [else-branch: 81 | !(p1_1@82@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 81 | p1_1@82@01]
(assert p1_1@82@01)
(pop) ; 3
(push) ; 3
; [else-branch: 81 | !(p1_1@82@01)]
(assert (not p1_1@82@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@92@01))))))
  $Snap.unit))
; [eval] p2_1 ==> true
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2_1@83@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2_1@83@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 82 | p2_1@83@01 | live]
; [else-branch: 82 | !(p2_1@83@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 82 | p2_1@83@01]
(assert p2_1@83@01)
(pop) ; 3
(push) ; 3
; [else-branch: 82 | !(p2_1@83@01)]
(assert (not p2_1@83@01))
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
(declare-const $t@93@01 $Snap)
(assert (= $t@93@01 ($Snap.combine ($Snap.first $t@93@01) ($Snap.second $t@93@01))))
(assert (= ($Snap.first $t@93@01) $Snap.unit))
; [eval] p1_1 ==> (forperm _r_11: Ref [_r_11.MustReleaseBounded] :: Level(_r_11) <= _current_wait_level_158) && ((forperm _r_11: Ref [_r_11.MustReleaseUnbounded] :: Level(_r_11) <= _current_wait_level_158) && _residue_158 <= _current_wait_level_158)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p1_1@82@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p1_1@82@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 83 | p1_1@82@01 | live]
; [else-branch: 83 | !(p1_1@82@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 83 | p1_1@82@01]
(assert p1_1@82@01)
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseBounded] :: Level(_r_11) <= _current_wait_level_158) && ((forperm _r_11: Ref [_r_11.MustReleaseUnbounded] :: Level(_r_11) <= _current_wait_level_158) && _residue_158 <= _current_wait_level_158)
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseBounded] :: Level(_r_11) <= _current_wait_level_158)
(push) ; 5
; [then-branch: 84 | False | live]
; [else-branch: 84 | True | live]
(push) ; 6
; [then-branch: 84 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 84 | True]
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseUnbounded] :: Level(_r_11) <= _current_wait_level_158)
(push) ; 7
; [then-branch: 85 | False | live]
; [else-branch: 85 | True | live]
(push) ; 8
; [then-branch: 85 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 85 | True]
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
; [else-branch: 83 | !(p1_1@82@01)]
(assert (not p1_1@82@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=> p1_1@82@01 (<= _residue_158@88@01 _current_wait_level_158@90@01)))
(assert (=
  ($Snap.second $t@93@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@93@01))
    ($Snap.second ($Snap.second $t@93@01)))))
(assert (= ($Snap.first ($Snap.second $t@93@01)) $Snap.unit))
; [eval] p2_1 ==> (forperm _r_11: Ref [_r_11.MustReleaseBoundedp] :: Level(_r_11) <= _current_wait_level_158_0) && ((forperm _r_11: Ref [_r_11.MustReleaseUnboundedp] :: Level(_r_11) <= _current_wait_level_158_0) && _residue_158_0 <= _current_wait_level_158_0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2_1@83@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p2_1@83@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 86 | p2_1@83@01 | live]
; [else-branch: 86 | !(p2_1@83@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 86 | p2_1@83@01]
(assert p2_1@83@01)
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseBoundedp] :: Level(_r_11) <= _current_wait_level_158_0) && ((forperm _r_11: Ref [_r_11.MustReleaseUnboundedp] :: Level(_r_11) <= _current_wait_level_158_0) && _residue_158_0 <= _current_wait_level_158_0)
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseBoundedp] :: Level(_r_11) <= _current_wait_level_158_0)
(push) ; 5
; [then-branch: 87 | False | live]
; [else-branch: 87 | True | live]
(push) ; 6
; [then-branch: 87 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 87 | True]
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseUnboundedp] :: Level(_r_11) <= _current_wait_level_158_0)
(push) ; 7
; [then-branch: 88 | False | live]
; [else-branch: 88 | True | live]
(push) ; 8
; [then-branch: 88 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 88 | True]
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
; [else-branch: 86 | !(p2_1@83@01)]
(assert (not p2_1@83@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=> p2_1@83@01 (<= _residue_158_0@89@01 _current_wait_level_158_0@91@01)))
(assert (=
  ($Snap.second ($Snap.second $t@93@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@93@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@93@01))) $Snap.unit))
; [eval] p1_1 ==> true
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p1_1@82@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p1_1@82@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 89 | p1_1@82@01 | live]
; [else-branch: 89 | !(p1_1@82@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 89 | p1_1@82@01]
(assert p1_1@82@01)
(pop) ; 4
(push) ; 4
; [else-branch: 89 | !(p1_1@82@01)]
(assert (not p1_1@82@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@93@01))) $Snap.unit))
; [eval] p2_1 ==> true
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2_1@83@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p2_1@83@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 90 | p2_1@83@01 | live]
; [else-branch: 90 | !(p2_1@83@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 90 | p2_1@83@01]
(assert p2_1@83@01)
(pop) ; 4
(push) ; 4
; [else-branch: 90 | !(p2_1@83@01)]
(assert (not p2_1@83@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@94@01 $Ref)
; [exec]
; var _err_2: Ref
(declare-const _err_2@95@01 $Ref)
; [exec]
; var x_0: Ref
(declare-const x_0@96@01 $Ref)
; [exec]
; var x_0_0: Ref
(declare-const x_0_0@97@01 $Ref)
; [exec]
; var inputPIN_res: Ref
(declare-const inputPIN_res@98@01 $Ref)
; [exec]
; var inputPIN_res_1: Ref
(declare-const inputPIN_res_1@99@01 $Ref)
; [exec]
; var _loop_measures: Seq[Measure$]
(declare-const _loop_measures@100@01 Seq<Measure$>)
; [exec]
; var _loop_measures_5: Seq[Measure$]
(declare-const _loop_measures_5@101@01 Seq<Measure$>)
; [exec]
; var _loop_check_before: Bool
(declare-const _loop_check_before@102@01 Bool)
; [exec]
; var _loop_check_before_5: Bool
(declare-const _loop_check_before_5@103@01 Bool)
; [exec]
; var _loop_termination_flag: Bool
(declare-const _loop_termination_flag@104@01 Bool)
; [exec]
; var _loop_termination_flag_5: Bool
(declare-const _loop_termination_flag_5@105@01 Bool)
; [exec]
; var _loop_original_must_terminate: Perm
(declare-const _loop_original_must_terminate@106@01 $Perm)
; [exec]
; var _loop_original_must_terminate_5: Perm
(declare-const _loop_original_must_terminate_5@107@01 $Perm)
; [exec]
; var _residue_160: Perm
(declare-const _residue_160@108@01 $Perm)
; [exec]
; var _residue_160_0: Perm
(declare-const _residue_160_0@109@01 $Perm)
; [exec]
; var _loop_measures_0: Seq[Measure$]
(declare-const _loop_measures_0@110@01 Seq<Measure$>)
; [exec]
; var _loop_measures_0_0: Seq[Measure$]
(declare-const _loop_measures_0_0@111@01 Seq<Measure$>)
; [exec]
; var _loop_check_before_0: Bool
(declare-const _loop_check_before_0@112@01 Bool)
; [exec]
; var _loop_check_before_0_0: Bool
(declare-const _loop_check_before_0_0@113@01 Bool)
; [exec]
; var _loop_termination_flag_0: Bool
(declare-const _loop_termination_flag_0@114@01 Bool)
; [exec]
; var _loop_termination_flag_0_0: Bool
(declare-const _loop_termination_flag_0_0@115@01 Bool)
; [exec]
; var _loop_original_must_terminate_0: Perm
(declare-const _loop_original_must_terminate_0@116@01 $Perm)
; [exec]
; var _loop_original_must_terminate_0_0: Perm
(declare-const _loop_original_must_terminate_0_0@117@01 $Perm)
; [exec]
; var _residue_161: Perm
(declare-const _residue_161@118@01 $Perm)
; [exec]
; var _residue_161_0: Perm
(declare-const _residue_161_0@119@01 $Perm)
; [exec]
; var _loop_measures_1: Seq[Measure$]
(declare-const _loop_measures_1@120@01 Seq<Measure$>)
; [exec]
; var _loop_measures_1_0: Seq[Measure$]
(declare-const _loop_measures_1_0@121@01 Seq<Measure$>)
; [exec]
; var _loop_check_before_1: Bool
(declare-const _loop_check_before_1@122@01 Bool)
; [exec]
; var _loop_check_before_1_0: Bool
(declare-const _loop_check_before_1_0@123@01 Bool)
; [exec]
; var _loop_termination_flag_1: Bool
(declare-const _loop_termination_flag_1@124@01 Bool)
; [exec]
; var _loop_termination_flag_1_0: Bool
(declare-const _loop_termination_flag_1_0@125@01 Bool)
; [exec]
; var _loop_original_must_terminate_1: Perm
(declare-const _loop_original_must_terminate_1@126@01 $Perm)
; [exec]
; var _loop_original_must_terminate_1_0: Perm
(declare-const _loop_original_must_terminate_1_0@127@01 $Perm)
; [exec]
; var _residue_162: Perm
(declare-const _residue_162@128@01 $Perm)
; [exec]
; var _residue_162_0: Perm
(declare-const _residue_162_0@129@01 $Perm)
; [exec]
; var _cwl_158: Perm
(declare-const _cwl_158@130@01 $Perm)
; [exec]
; var _cwl_158_0: Perm
(declare-const _cwl_158_0@131@01 $Perm)
; [exec]
; var _method_measures_158: Seq[Measure$]
(declare-const _method_measures_158@132@01 Seq<Measure$>)
; [exec]
; var _method_measures_158_0: Seq[Measure$]
(declare-const _method_measures_158_0@133@01 Seq<Measure$>)
; [exec]
; var bypass1: Bool
(declare-const bypass1@134@01 Bool)
; [exec]
; var bypass2: Bool
(declare-const bypass2@135@01 Bool)
; [exec]
; var tmp1_4: Seq[Measure$]
(declare-const tmp1_4@136@01 Seq<Measure$>)
; [exec]
; var tmp2_4: Seq[Measure$]
(declare-const tmp2_4@137@01 Seq<Measure$>)
; [exec]
; var tmp1_5: Bool
(declare-const tmp1_5@138@01 Bool)
; [exec]
; var tmp2_5: Bool
(declare-const tmp2_5@139@01 Bool)
; [exec]
; var p1_2: Bool
(declare-const p1_2@140@01 Bool)
; [exec]
; var p2_2: Bool
(declare-const p2_2@141@01 Bool)
; [exec]
; var idle1: Bool
(declare-const idle1@142@01 Bool)
; [exec]
; var idle2: Bool
(declare-const idle2@143@01 Bool)
; [exec]
; var cond: Bool
(declare-const cond@144@01 Bool)
; [exec]
; var cond_0: Bool
(declare-const cond_0@145@01 Bool)
; [exec]
; var bypass1_0: Bool
(declare-const bypass1_0@146@01 Bool)
; [exec]
; var bypass2_0: Bool
(declare-const bypass2_0@147@01 Bool)
; [exec]
; var tmp1_11: Seq[Measure$]
(declare-const tmp1_11@148@01 Seq<Measure$>)
; [exec]
; var tmp2_11: Seq[Measure$]
(declare-const tmp2_11@149@01 Seq<Measure$>)
; [exec]
; var tmp1_12: Bool
(declare-const tmp1_12@150@01 Bool)
; [exec]
; var tmp2_12: Bool
(declare-const tmp2_12@151@01 Bool)
; [exec]
; var p1_3: Bool
(declare-const p1_3@152@01 Bool)
; [exec]
; var p2_3: Bool
(declare-const p2_3@153@01 Bool)
; [exec]
; var idle1_0: Bool
(declare-const idle1_0@154@01 Bool)
; [exec]
; var idle2_0: Bool
(declare-const idle2_0@155@01 Bool)
; [exec]
; var cond_1: Bool
(declare-const cond_1@156@01 Bool)
; [exec]
; var cond_2: Bool
(declare-const cond_2@157@01 Bool)
; [exec]
; var bypass1_1: Bool
(declare-const bypass1_1@158@01 Bool)
; [exec]
; var bypass2_1: Bool
(declare-const bypass2_1@159@01 Bool)
; [exec]
; var tmp1_18: Seq[Measure$]
(declare-const tmp1_18@160@01 Seq<Measure$>)
; [exec]
; var tmp2_18: Seq[Measure$]
(declare-const tmp2_18@161@01 Seq<Measure$>)
; [exec]
; var tmp1_19: Bool
(declare-const tmp1_19@162@01 Bool)
; [exec]
; var tmp2_19: Bool
(declare-const tmp2_19@163@01 Bool)
; [exec]
; var p1_4: Bool
(declare-const p1_4@164@01 Bool)
; [exec]
; var p2_4: Bool
(declare-const p2_4@165@01 Bool)
; [exec]
; var idle1_1: Bool
(declare-const idle1_1@166@01 Bool)
; [exec]
; var idle2_1: Bool
(declare-const idle2_1@167@01 Bool)
; [exec]
; var cond_3: Bool
(declare-const cond_3@168@01 Bool)
; [exec]
; var cond_4: Bool
(declare-const cond_4@169@01 Bool)
; [exec]
; inhale p1_1
(declare-const $t@170@01 $Snap)
(assert (= $t@170@01 $Snap.unit))
(assert p1_1@82@01)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_1@82@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 91 | p1_1@82@01 | live]
; [else-branch: 91 | !(p1_1@82@01) | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 91 | p1_1@82@01]
; [exec]
; _method_measures_158 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err := null
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2_1@83@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p2_1@83@01))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 92 | p2_1@83@01 | live]
; [else-branch: 92 | !(p2_1@83@01) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 92 | p2_1@83@01]
(assert p2_1@83@01)
; [exec]
; _method_measures_158_0 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err_2 := null
; [eval] p1_1 || p2_1
(push) ; 5
; [then-branch: 93 | p1_1@82@01 | live]
; [else-branch: 93 | !(p1_1@82@01) | live]
(push) ; 6
; [then-branch: 93 | p1_1@82@01]
(pop) ; 6
(push) ; 6
; [else-branch: 93 | !(p1_1@82@01)]
(assert (not p1_1@82@01))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (not (or p1_1@82@01 p2_1@83@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (or p1_1@82@01 p2_1@83@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 94 | p1_1@82@01 || p2_1@83@01 | live]
; [else-branch: 94 | !(p1_1@82@01 || p2_1@83@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 94 | p1_1@82@01 || p2_1@83@01]
(assert (or p1_1@82@01 p2_1@83@01))
; [exec]
; var tmp1: Ref
(declare-const tmp1@171@01 $Ref)
; [exec]
; var tmp2: Ref
(declare-const tmp2@172@01 $Ref)
; [exec]
; var tmp1_0: Seq[Measure$]
(declare-const tmp1_0@173@01 Seq<Measure$>)
; [exec]
; var tmp2_0: Seq[Measure$]
(declare-const tmp2_0@174@01 Seq<Measure$>)
; [exec]
; var tmp1_1: Perm
(declare-const tmp1_1@175@01 $Perm)
; [exec]
; var tmp2_1: Perm
(declare-const tmp2_1@176@01 $Perm)
; [exec]
; var tmp1_2: Perm
(declare-const tmp1_2@177@01 $Perm)
; [exec]
; var tmp2_2: Perm
(declare-const tmp2_2@178@01 $Perm)
; [exec]
; var tmp1_3: Ref
(declare-const tmp1_3@179@01 $Ref)
; [exec]
; var tmp2_3: Ref
(declare-const tmp2_3@180@01 $Ref)
(push) ; 6
(set-option :timeout 10)
(assert (not (not p1_1@82@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 95 | p1_1@82@01 | live]
; [else-branch: 95 | !(p1_1@82@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 95 | p1_1@82@01]
; [exec]
; tmp1 := _cthread_158
; [exec]
; tmp1_0 := _method_measures_158
; [exec]
; tmp1_1 := _residue_158
(push) ; 7
(set-option :timeout 10)
(assert (not (not p2_1@83@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 96 | p2_1@83@01 | live]
; [else-branch: 96 | !(p2_1@83@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 96 | p2_1@83@01]
; [exec]
; tmp2 := _cthread_158_0
; [exec]
; tmp2_0 := _method_measures_158_0
; [exec]
; tmp2_1 := _residue_158_0
; [exec]
; tmp1_2, tmp2_2, tmp1_3, tmp2_3 := inputPIN(p1_1, p2_1, tmp1, tmp2, tmp1_0, tmp2_0,
;   tmp1_1, tmp2_1)
; [eval] p1_0 ==> _cthread_157 != null
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p1_1@82@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 97 | p1_1@82@01 | live]
; [else-branch: 97 | !(p1_1@82@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 97 | p1_1@82@01]
; [eval] _cthread_157 != null
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] p2_0 ==> _cthread_157_0 != null
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p2_1@83@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 98 | p2_1@83@01 | live]
; [else-branch: 98 | !(p2_1@83@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 98 | p2_1@83@01]
; [eval] _cthread_157_0 != null
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] p1_0 ==> issubtype(typeof(_cthread_157), Thread_0())
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p1_1@82@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 99 | p1_1@82@01 | live]
; [else-branch: 99 | !(p1_1@82@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 99 | p1_1@82@01]
; [eval] issubtype(typeof(_cthread_157), Thread_0())
; [eval] typeof(_cthread_157)
; [eval] Thread_0()
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] p2_0 ==> issubtype(typeof(_cthread_157_0), Thread_0())
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p2_1@83@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 100 | p2_1@83@01 | live]
; [else-branch: 100 | !(p2_1@83@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 100 | p2_1@83@01]
; [eval] issubtype(typeof(_cthread_157_0), Thread_0())
; [eval] typeof(_cthread_157_0)
; [eval] Thread_0()
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] p1_0 ==> perm(MustTerminate(_cthread_157)) == none && ((forperm _r_4: Ref [MustInvokeBounded(_r_4)] :: false) && ((forperm _r_4: Ref [MustInvokeUnbounded(_r_4)] :: false) && ((forperm _r_4: Ref [_r_4.MustReleaseBounded] :: false) && (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: false))))
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p1_1@82@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 101 | p1_1@82@01 | live]
; [else-branch: 101 | !(p1_1@82@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 101 | p1_1@82@01]
; [eval] perm(MustTerminate(_cthread_157)) == none && ((forperm _r_4: Ref [MustInvokeBounded(_r_4)] :: false) && ((forperm _r_4: Ref [MustInvokeUnbounded(_r_4)] :: false) && ((forperm _r_4: Ref [_r_4.MustReleaseBounded] :: false) && (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_157)) == none
; [eval] perm(MustTerminate(_cthread_157))
(push) ; 10
; [then-branch: 102 | False | live]
; [else-branch: 102 | True | live]
(push) ; 11
; [then-branch: 102 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 102 | True]
; [eval] (forperm _r_4: Ref [MustInvokeBounded(_r_4)] :: false)
(push) ; 12
; [then-branch: 103 | False | live]
; [else-branch: 103 | True | live]
(push) ; 13
; [then-branch: 103 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 103 | True]
; [eval] (forperm _r_4: Ref [MustInvokeUnbounded(_r_4)] :: false)
(push) ; 14
; [then-branch: 104 | False | live]
; [else-branch: 104 | True | live]
(push) ; 15
; [then-branch: 104 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 104 | True]
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseBounded] :: false)
(push) ; 16
; [then-branch: 105 | False | live]
; [else-branch: 105 | True | live]
(push) ; 17
; [then-branch: 105 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 105 | True]
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: false)
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
; [eval] p2_0 ==> perm(MustTerminate_0(_cthread_157_0)) == none && ((forperm _r_4: Ref [MustInvokeBounded_0(_r_4)] :: false) && ((forperm _r_4: Ref [MustInvokeUnbounded_0(_r_4)] :: false) && ((forperm _r_4: Ref [_r_4.MustReleaseBoundedp] :: false) && (forperm _r_4: Ref [_r_4.MustReleaseUnboundedp] :: false))))
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p2_1@83@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 106 | p2_1@83@01 | live]
; [else-branch: 106 | !(p2_1@83@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 106 | p2_1@83@01]
; [eval] perm(MustTerminate_0(_cthread_157_0)) == none && ((forperm _r_4: Ref [MustInvokeBounded_0(_r_4)] :: false) && ((forperm _r_4: Ref [MustInvokeUnbounded_0(_r_4)] :: false) && ((forperm _r_4: Ref [_r_4.MustReleaseBoundedp] :: false) && (forperm _r_4: Ref [_r_4.MustReleaseUnboundedp] :: false))))
; [eval] perm(MustTerminate_0(_cthread_157_0)) == none
; [eval] perm(MustTerminate_0(_cthread_157_0))
(push) ; 10
; [then-branch: 107 | False | live]
; [else-branch: 107 | True | live]
(push) ; 11
; [then-branch: 107 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 107 | True]
; [eval] (forperm _r_4: Ref [MustInvokeBounded_0(_r_4)] :: false)
(push) ; 12
; [then-branch: 108 | False | live]
; [else-branch: 108 | True | live]
(push) ; 13
; [then-branch: 108 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 108 | True]
; [eval] (forperm _r_4: Ref [MustInvokeUnbounded_0(_r_4)] :: false)
(push) ; 14
; [then-branch: 109 | False | live]
; [else-branch: 109 | True | live]
(push) ; 15
; [then-branch: 109 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 109 | True]
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseBoundedp] :: false)
(push) ; 16
; [then-branch: 110 | False | live]
; [else-branch: 110 | True | live]
(push) ; 17
; [then-branch: 110 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 110 | True]
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseUnboundedp] :: false)
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
(declare-const _current_wait_level_157@181@01 $Perm)
(declare-const _current_wait_level_157_0@182@01 $Perm)
(declare-const _res@183@01 $Ref)
(declare-const _res_0@184@01 $Ref)
(declare-const $t@185@01 $Snap)
(assert (= $t@185@01 ($Snap.combine ($Snap.first $t@185@01) ($Snap.second $t@185@01))))
(assert (= ($Snap.first $t@185@01) $Snap.unit))
; [eval] p1_0 ==> (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157) && ((forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157) && _residue_157 <= _current_wait_level_157)
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p1_1@82@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 111 | p1_1@82@01 | live]
; [else-branch: 111 | !(p1_1@82@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 111 | p1_1@82@01]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157) && ((forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157) && _residue_157 <= _current_wait_level_157)
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157)
(push) ; 10
; [then-branch: 112 | False | live]
; [else-branch: 112 | True | live]
(push) ; 11
; [then-branch: 112 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 112 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157)
(push) ; 12
; [then-branch: 113 | False | live]
; [else-branch: 113 | True | live]
(push) ; 13
; [then-branch: 113 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 113 | True]
; [eval] _residue_157 <= _current_wait_level_157
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
(assert (=> p1_1@82@01 (<= _residue_158@88@01 _current_wait_level_157@181@01)))
(assert (=
  ($Snap.second $t@185@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@185@01))
    ($Snap.second ($Snap.second $t@185@01)))))
(assert (= ($Snap.first ($Snap.second $t@185@01)) $Snap.unit))
; [eval] p2_0 ==> (forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: Level(_r_2) <= _current_wait_level_157_0) && ((forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: Level(_r_2) <= _current_wait_level_157_0) && _residue_157_0 <= _current_wait_level_157_0)
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p2_1@83@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 114 | p2_1@83@01 | live]
; [else-branch: 114 | !(p2_1@83@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 114 | p2_1@83@01]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: Level(_r_2) <= _current_wait_level_157_0) && ((forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: Level(_r_2) <= _current_wait_level_157_0) && _residue_157_0 <= _current_wait_level_157_0)
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: Level(_r_2) <= _current_wait_level_157_0)
(push) ; 10
; [then-branch: 115 | False | live]
; [else-branch: 115 | True | live]
(push) ; 11
; [then-branch: 115 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 115 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: Level(_r_2) <= _current_wait_level_157_0)
(push) ; 12
; [then-branch: 116 | False | live]
; [else-branch: 116 | True | live]
(push) ; 13
; [then-branch: 116 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 116 | True]
; [eval] _residue_157_0 <= _current_wait_level_157_0
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
(assert (=> p2_1@83@01 (<= _residue_158_0@89@01 _current_wait_level_157_0@182@01)))
(assert (=
  ($Snap.second ($Snap.second $t@185@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@185@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@185@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@185@01))) $Snap.unit))
; [eval] p1_0 ==> issubtype(typeof(_res), int())
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p1_1@82@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 117 | p1_1@82@01 | live]
; [else-branch: 117 | !(p1_1@82@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 117 | p1_1@82@01]
; [eval] issubtype(typeof(_res), int())
; [eval] typeof(_res)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  p1_1@82@01
  (issubtype<Bool> (typeof<PyType> _res@183@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@185@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@185@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@185@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@185@01))))
  $Snap.unit))
; [eval] p2_0 ==> issubtype(typeof(_res_0), int())
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p2_1@83@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 118 | p2_1@83@01 | live]
; [else-branch: 118 | !(p2_1@83@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 118 | p2_1@83@01]
; [eval] issubtype(typeof(_res_0), int())
; [eval] typeof(_res_0)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  p2_1@83@01
  (issubtype<Bool> (typeof<PyType> _res_0@184@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@185@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@185@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@185@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@185@01)))))
  $Snap.unit))
; [eval] p1_0 ==> true
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p1_1@82@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 119 | p1_1@82@01 | live]
; [else-branch: 119 | !(p1_1@82@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 119 | p1_1@82@01]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@185@01)))))
  $Snap.unit))
; [eval] p2_0 ==> true
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p2_1@83@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 120 | p2_1@83@01 | live]
; [else-branch: 120 | !(p2_1@83@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 120 | p2_1@83@01]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not p1_1@82@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 121 | p1_1@82@01 | live]
; [else-branch: 121 | !(p1_1@82@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 121 | p1_1@82@01]
; [exec]
; _cwl_158 := tmp1_2
; [exec]
; inputPIN_res := tmp1_3
(push) ; 9
(set-option :timeout 10)
(assert (not (not p2_1@83@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 122 | p2_1@83@01 | live]
; [else-branch: 122 | !(p2_1@83@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 122 | p2_1@83@01]
; [exec]
; _cwl_158_0 := tmp2_2
; [exec]
; inputPIN_res_1 := tmp2_3
(push) ; 10
(set-option :timeout 10)
(assert (not (not p1_1@82@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 123 | p1_1@82@01 | live]
; [else-branch: 123 | !(p1_1@82@01) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 123 | p1_1@82@01]
; [exec]
; x_0 := inputPIN_res
; [exec]
; inhale _isDefined(3170168)
(declare-const $t@186@01 $Snap)
(assert (= $t@186@01 $Snap.unit))
; [eval] _isDefined(3170168)
(push) ; 11
(assert (_isDefined%precondition $Snap.unit 3170168))
(pop) ; 11
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3170168))
(assert (_isDefined $Snap.unit 3170168))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _loop_original_must_terminate := perm(MustTerminate(_cthread_158))
; [eval] perm(MustTerminate(_cthread_158))
(declare-const _loop_original_must_terminate@187@01 $Perm)
(assert (= _loop_original_must_terminate@187@01 $Perm.No))
; [exec]
; _loop_termination_flag := !int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0))
; [eval] !int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0))
; [eval] int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0))
; [eval] _checkDefined(x_0, 3170168)
(set-option :timeout 0)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit _res@183@01 3170168))
(pop) ; 11
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit _res@183@01 3170168))
; [eval] __prim__int___box__(0)
(push) ; 11
(assert (__prim__int___box__%precondition $Snap.unit 0))
(pop) ; 11
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 0))
(push) ; 11
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
(push) ; 12
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit _res@183@01 3170168)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit _res@183@01 3170168)) (as int<PyType>  PyType)))
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(push) ; 12
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType)))
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@183@01 3170168) (__prim__int___box__ $Snap.unit 0)))
(pop) ; 11
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit _res@183@01 3170168)) (as int<PyType>  PyType))
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@183@01 3170168) (__prim__int___box__ $Snap.unit 0))))
(declare-const _loop_termination_flag@188@01 Bool)
(assert (=
  _loop_termination_flag@188@01
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@183@01 3170168) (__prim__int___box__ $Snap.unit 0)))))
; [exec]
; _loop_check_before := true
(push) ; 11
(set-option :timeout 10)
(assert (not (not p2_1@83@01)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 124 | p2_1@83@01 | live]
; [else-branch: 124 | !(p2_1@83@01) | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 124 | p2_1@83@01]
; [exec]
; x_0_0 := inputPIN_res_1
; [exec]
; inhale true
(declare-const $t@189@01 $Snap)
(assert (= $t@189@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _loop_original_must_terminate_5 := perm(MustTerminate_0(_cthread_158_0))
; [eval] perm(MustTerminate_0(_cthread_158_0))
(declare-const _loop_original_must_terminate_5@190@01 $Perm)
(assert (= _loop_original_must_terminate_5@190@01 $Perm.No))
; [exec]
; _loop_termination_flag_5 := !int___eq__(x_0_0, __prim__int___box__(0))
; [eval] !int___eq__(x_0_0, __prim__int___box__(0))
; [eval] int___eq__(x_0_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(set-option :timeout 0)
(push) ; 12
(pop) ; 12
; Joined path conditions
(push) ; 12
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
(push) ; 13
(assert (not (issubtype<Bool> (typeof<PyType> _res_0@184@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res_0@184@01) (as int<PyType>  PyType)))
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@184@01 (__prim__int___box__ $Snap.unit 0)))
(pop) ; 12
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> _res_0@184@01) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@184@01 (__prim__int___box__ $Snap.unit 0))))
(declare-const _loop_termination_flag_5@191@01 Bool)
(assert (=
  _loop_termination_flag_5@191@01
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@184@01 (__prim__int___box__ $Snap.unit 0)))))
; [exec]
; _loop_check_before_5 := true
; [exec]
; bypass1 := !p1_1
; [eval] !p1_1
(declare-const bypass1@192@01 Bool)
(assert (= bypass1@192@01 (not p1_1@82@01)))
; [exec]
; bypass2 := !p2_1
; [eval] !p2_1
(declare-const bypass2@193@01 Bool)
(assert (= bypass2@193@01 (not p2_1@83@01)))
(push) ; 12
(set-option :timeout 10)
(assert (not (not bypass1@192@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 125 | bypass1@192@01 | dead]
; [else-branch: 125 | !(bypass1@192@01) | live]
(set-option :timeout 0)
(push) ; 12
; [else-branch: 125 | !(bypass1@192@01)]
(assert (not bypass1@192@01))
(pop) ; 12
; [eval] !bypass1
(push) ; 12
(set-option :timeout 10)
(assert (not bypass1@192@01))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (not bypass1@192@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 126 | !(bypass1@192@01) | live]
; [else-branch: 126 | bypass1@192@01 | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 126 | !(bypass1@192@01)]
(assert (not bypass1@192@01))
(push) ; 13
(set-option :timeout 10)
(assert (not (not bypass2@193@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 127 | bypass2@193@01 | dead]
; [else-branch: 127 | !(bypass2@193@01) | live]
(set-option :timeout 0)
(push) ; 13
; [else-branch: 127 | !(bypass2@193@01)]
(assert (not bypass2@193@01))
(pop) ; 13
; [eval] !bypass2
(push) ; 13
(set-option :timeout 10)
(assert (not bypass2@193@01))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (not bypass2@193@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 128 | !(bypass2@193@01) | live]
; [else-branch: 128 | bypass2@193@01 | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 128 | !(bypass2@193@01)]
(assert (not bypass2@193@01))
; [exec]
; idle1 := false
; [exec]
; idle2 := false
; [exec]
; assert (p1_1 ==>
;   !!int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0))) &&
;   (p2_1 ==> !!int___eq__(x_0_0, __prim__int___box__(0))) ==>
;   p1_1 == p2_1
; [eval] (p1_1 ==> !!int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0))) && (p2_1 ==> !!int___eq__(x_0_0, __prim__int___box__(0))) ==> p1_1 == p2_1
; [eval] (p1_1 ==> !!int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0))) && (p2_1 ==> !!int___eq__(x_0_0, __prim__int___box__(0)))
; [eval] p1_1 ==> !!int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0))
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not (not p1_1@82@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 129 | p1_1@82@01 | live]
; [else-branch: 129 | !(p1_1@82@01) | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 129 | p1_1@82@01]
; [eval] !!int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0))
; [eval] !int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0))
; [eval] int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0))
; [eval] _checkDefined(x_0, 3170168)
(push) ; 16
; [eval] _isDefined(id)
(push) ; 17
(pop) ; 17
; Joined path conditions
(pop) ; 16
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 16
(pop) ; 16
; Joined path conditions
(push) ; 16
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 16
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
(push) ; 14
; [then-branch: 130 | !(p1_1@82@01 ==> int___eq__((_, _), _checkDefined(_, _res@183@01, 3170168), __prim__int___box__(_, 0))) | live]
; [else-branch: 130 | p1_1@82@01 ==> int___eq__((_, _), _checkDefined(_, _res@183@01, 3170168), __prim__int___box__(_, 0)) | live]
(push) ; 15
; [then-branch: 130 | !(p1_1@82@01 ==> int___eq__((_, _), _checkDefined(_, _res@183@01, 3170168), __prim__int___box__(_, 0)))]
(assert (not
  (=>
    p1_1@82@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@183@01 3170168) (__prim__int___box__ $Snap.unit 0)))))
(pop) ; 15
(push) ; 15
; [else-branch: 130 | p1_1@82@01 ==> int___eq__((_, _), _checkDefined(_, _res@183@01, 3170168), __prim__int___box__(_, 0))]
(assert (=>
  p1_1@82@01
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@183@01 3170168) (__prim__int___box__ $Snap.unit 0))))
; [eval] p2_1 ==> !!int___eq__(x_0_0, __prim__int___box__(0))
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (not p2_1@83@01)))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 131 | p2_1@83@01 | live]
; [else-branch: 131 | !(p2_1@83@01) | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 131 | p2_1@83@01]
; [eval] !!int___eq__(x_0_0, __prim__int___box__(0))
; [eval] !int___eq__(x_0_0, __prim__int___box__(0))
; [eval] int___eq__(x_0_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 18
(pop) ; 18
; Joined path conditions
(push) ; 18
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 18
; Joined path conditions
(pop) ; 17
(pop) ; 16
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (=>
  (and
    (=>
      p1_1@82@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@183@01 3170168) (__prim__int___box__ $Snap.unit 0)))
    p1_1@82@01)
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@183@01 3170168) (__prim__int___box__ $Snap.unit 0))))
(assert (or
  (=>
    p1_1@82@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@183@01 3170168) (__prim__int___box__ $Snap.unit 0)))
  (not
    (=>
      p1_1@82@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@183@01 3170168) (__prim__int___box__ $Snap.unit 0))))))
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not (not
  (and
    (=>
      p1_1@82@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@183@01 3170168) (__prim__int___box__ $Snap.unit 0)))
    (=>
      p2_1@83@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@184@01 (__prim__int___box__ $Snap.unit 0)))))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (and
  (=>
    p1_1@82@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@183@01 3170168) (__prim__int___box__ $Snap.unit 0)))
  (=>
    p2_1@83@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@184@01 (__prim__int___box__ $Snap.unit 0))))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 132 | p1_1@82@01 ==> int___eq__((_, _), _checkDefined(_, _res@183@01, 3170168), __prim__int___box__(_, 0)) && p2_1@83@01 ==> int___eq__((_, _), _res_0@184@01, __prim__int___box__(_, 0)) | live]
; [else-branch: 132 | !(p1_1@82@01 ==> int___eq__((_, _), _checkDefined(_, _res@183@01, 3170168), __prim__int___box__(_, 0)) && p2_1@83@01 ==> int___eq__((_, _), _res_0@184@01, __prim__int___box__(_, 0))) | live]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 132 | p1_1@82@01 ==> int___eq__((_, _), _checkDefined(_, _res@183@01, 3170168), __prim__int___box__(_, 0)) && p2_1@83@01 ==> int___eq__((_, _), _res_0@184@01, __prim__int___box__(_, 0))]
(assert (and
  (=>
    p1_1@82@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@183@01 3170168) (__prim__int___box__ $Snap.unit 0)))
  (=>
    p2_1@83@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@184@01 (__prim__int___box__ $Snap.unit 0)))))
; [eval] p1_1 == p2_1
(pop) ; 15
(push) ; 15
; [else-branch: 132 | !(p1_1@82@01 ==> int___eq__((_, _), _checkDefined(_, _res@183@01, 3170168), __prim__int___box__(_, 0)) && p2_1@83@01 ==> int___eq__((_, _), _res_0@184@01, __prim__int___box__(_, 0)))]
(assert (not
  (and
    (=>
      p1_1@82@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@183@01 3170168) (__prim__int___box__ $Snap.unit 0)))
    (=>
      p2_1@83@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@184@01 (__prim__int___box__ $Snap.unit 0))))))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (=>
        p1_1@82@01
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@183@01 3170168) (__prim__int___box__ $Snap.unit 0)))
      (=>
        p2_1@83@01
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@184@01 (__prim__int___box__ $Snap.unit 0)))))
  (and
    (=>
      p1_1@82@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@183@01 3170168) (__prim__int___box__ $Snap.unit 0)))
    (=>
      p2_1@83@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@184@01 (__prim__int___box__ $Snap.unit 0))))))
(push) ; 14
(assert (not (=>
  (and
    (=>
      p1_1@82@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@183@01 3170168) (__prim__int___box__ $Snap.unit 0)))
    (=>
      p2_1@83@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@184@01 (__prim__int___box__ $Snap.unit 0))))
  (= p1_1@82@01 p2_1@83@01))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and
    (=>
      p1_1@82@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@183@01 3170168) (__prim__int___box__ $Snap.unit 0)))
    (=>
      p2_1@83@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@184@01 (__prim__int___box__ $Snap.unit 0))))
  (= p1_1@82@01 p2_1@83@01)))
; [exec]
; assert p1_1 && p2_1 ==>
;   !int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0)) ==
;   !int___eq__(x_0_0, __prim__int___box__(0))
; [eval] p1_1 && p2_1 ==> !int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0)) == !int___eq__(x_0_0, __prim__int___box__(0))
; [eval] p1_1 && p2_1
(push) ; 14
; [then-branch: 133 | !(p1_1@82@01) | live]
; [else-branch: 133 | p1_1@82@01 | live]
(push) ; 15
; [then-branch: 133 | !(p1_1@82@01)]
(assert (not p1_1@82@01))
(pop) ; 15
(push) ; 15
; [else-branch: 133 | p1_1@82@01]
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or p1_1@82@01 (not p1_1@82@01)))
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not (not (and p1_1@82@01 p2_1@83@01))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (and p1_1@82@01 p2_1@83@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 134 | p1_1@82@01 && p2_1@83@01 | live]
; [else-branch: 134 | !(p1_1@82@01 && p2_1@83@01) | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 134 | p1_1@82@01 && p2_1@83@01]
(assert (and p1_1@82@01 p2_1@83@01))
; [eval] !int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0)) == !int___eq__(x_0_0, __prim__int___box__(0))
; [eval] !int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0))
; [eval] int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0))
; [eval] _checkDefined(x_0, 3170168)
(push) ; 16
; [eval] _isDefined(id)
(push) ; 17
(pop) ; 17
; Joined path conditions
(pop) ; 16
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 16
(pop) ; 16
; Joined path conditions
(push) ; 16
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 16
; Joined path conditions
; [eval] !int___eq__(x_0_0, __prim__int___box__(0))
; [eval] int___eq__(x_0_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 16
(pop) ; 16
; Joined path conditions
(push) ; 16
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 16
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
(assert (and p1_1@82@01 p2_1@83@01))
(push) ; 14
(assert (not (=>
  (and p1_1@82@01 p2_1@83@01)
  (=
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@183@01 3170168) (__prim__int___box__ $Snap.unit 0)))
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@184@01 (__prim__int___box__ $Snap.unit 0)))))))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] p1_1 && p2_1 ==> !int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0)) == !int___eq__(x_0_0, __prim__int___box__(0))
; [eval] p1_1 && p2_1
(set-option :timeout 0)
(push) ; 14
; [then-branch: 135 | !(p1_1@82@01) | live]
; [else-branch: 135 | p1_1@82@01 | live]
(push) ; 15
; [then-branch: 135 | !(p1_1@82@01)]
(assert (not p1_1@82@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 15
(set-option :timeout 0)
(push) ; 15
; [else-branch: 135 | p1_1@82@01]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(set-option :timeout 0)
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not (not (and p1_1@82@01 p2_1@83@01))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (and p1_1@82@01 p2_1@83@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 136 | p1_1@82@01 && p2_1@83@01 | live]
; [else-branch: 136 | !(p1_1@82@01 && p2_1@83@01) | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 136 | p1_1@82@01 && p2_1@83@01]
(assert (and p1_1@82@01 p2_1@83@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0)) == !int___eq__(x_0_0, __prim__int___box__(0))
; [eval] !int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0))
; [eval] int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0))
; [eval] _checkDefined(x_0, 3170168)
(set-option :timeout 0)
(push) ; 16
; [eval] _isDefined(id)
(push) ; 17
(pop) ; 17
; Joined path conditions
(pop) ; 16
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 16
(pop) ; 16
; Joined path conditions
(push) ; 16
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 16
; Joined path conditions
; [eval] !int___eq__(x_0_0, __prim__int___box__(0))
; [eval] int___eq__(x_0_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 16
(pop) ; 16
; Joined path conditions
(push) ; 16
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 16
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
(assert (and p1_1@82@01 p2_1@83@01))
(push) ; 14
(assert (not (=>
  (and p1_1@82@01 p2_1@83@01)
  (=
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@183@01 3170168) (__prim__int___box__ $Snap.unit 0)))
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@184@01 (__prim__int___box__ $Snap.unit 0)))))))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] p1_1 && p2_1 ==> !int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0)) == !int___eq__(x_0_0, __prim__int___box__(0))
; [eval] p1_1 && p2_1
(set-option :timeout 0)
(push) ; 14
; [then-branch: 137 | !(p1_1@82@01) | live]
; [else-branch: 137 | p1_1@82@01 | live]
(push) ; 15
; [then-branch: 137 | !(p1_1@82@01)]
(assert (not p1_1@82@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 15
(set-option :timeout 0)
(push) ; 15
; [else-branch: 137 | p1_1@82@01]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(set-option :timeout 0)
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not (not (and p1_1@82@01 p2_1@83@01))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (and p1_1@82@01 p2_1@83@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 138 | p1_1@82@01 && p2_1@83@01 | live]
; [else-branch: 138 | !(p1_1@82@01 && p2_1@83@01) | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 138 | p1_1@82@01 && p2_1@83@01]
(assert (and p1_1@82@01 p2_1@83@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0)) == !int___eq__(x_0_0, __prim__int___box__(0))
; [eval] !int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0))
; [eval] int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0))
; [eval] _checkDefined(x_0, 3170168)
(set-option :timeout 0)
(push) ; 16
; [eval] _isDefined(id)
(push) ; 17
(pop) ; 17
; Joined path conditions
(pop) ; 16
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 16
(pop) ; 16
; Joined path conditions
(push) ; 16
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 16
; Joined path conditions
; [eval] !int___eq__(x_0_0, __prim__int___box__(0))
; [eval] int___eq__(x_0_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 16
(pop) ; 16
; Joined path conditions
(push) ; 16
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 16
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
(assert (and p1_1@82@01 p2_1@83@01))
(push) ; 14
(assert (not (=>
  (and p1_1@82@01 p2_1@83@01)
  (=
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@183@01 3170168) (__prim__int___box__ $Snap.unit 0)))
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@184@01 (__prim__int___box__ $Snap.unit 0)))))))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] p1_1 && p2_1 ==> !int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0)) == !int___eq__(x_0_0, __prim__int___box__(0))
; [eval] p1_1 && p2_1
(set-option :timeout 0)
(push) ; 14
; [then-branch: 139 | !(p1_1@82@01) | live]
; [else-branch: 139 | p1_1@82@01 | live]
(push) ; 15
; [then-branch: 139 | !(p1_1@82@01)]
(assert (not p1_1@82@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 15
(set-option :timeout 0)
(push) ; 15
; [else-branch: 139 | p1_1@82@01]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(set-option :timeout 0)
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not (not (and p1_1@82@01 p2_1@83@01))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (and p1_1@82@01 p2_1@83@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 140 | p1_1@82@01 && p2_1@83@01 | live]
; [else-branch: 140 | !(p1_1@82@01 && p2_1@83@01) | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 140 | p1_1@82@01 && p2_1@83@01]
(assert (and p1_1@82@01 p2_1@83@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0)) == !int___eq__(x_0_0, __prim__int___box__(0))
; [eval] !int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0))
; [eval] int___eq__(_checkDefined(x_0, 3170168), __prim__int___box__(0))
; [eval] _checkDefined(x_0, 3170168)
(set-option :timeout 0)
(push) ; 16
; [eval] _isDefined(id)
(push) ; 17
(pop) ; 17
; Joined path conditions
(pop) ; 16
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 16
(pop) ; 16
; Joined path conditions
(push) ; 16
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 16
; Joined path conditions
; [eval] !int___eq__(x_0_0, __prim__int___box__(0))
; [eval] int___eq__(x_0_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 16
(pop) ; 16
; Joined path conditions
(push) ; 16
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 16
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
(assert (and p1_1@82@01 p2_1@83@01))
(push) ; 14
(assert (not (=>
  (and p1_1@82@01 p2_1@83@01)
  (=
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@183@01 3170168) (__prim__int___box__ $Snap.unit 0)))
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@184@01 (__prim__int___box__ $Snap.unit 0)))))))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(pop) ; 12
(pop) ; 11
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
; ---------- main_fixed ----------
(declare-const p1_5@194@01 Bool)
(declare-const p2_5@195@01 Bool)
(declare-const _cthread_159@196@01 $Ref)
(declare-const _cthread_159_0@197@01 $Ref)
(declare-const _caller_measures_159@198@01 Seq<Measure$>)
(declare-const _caller_measures_159_0@199@01 Seq<Measure$>)
(declare-const _residue_159@200@01 $Perm)
(declare-const _residue_159_0@201@01 $Perm)
(declare-const _current_wait_level_159@202@01 $Perm)
(declare-const _current_wait_level_159_0@203@01 $Perm)
(declare-const p1_5@204@01 Bool)
(declare-const p2_5@205@01 Bool)
(declare-const _cthread_159@206@01 $Ref)
(declare-const _cthread_159_0@207@01 $Ref)
(declare-const _caller_measures_159@208@01 Seq<Measure$>)
(declare-const _caller_measures_159_0@209@01 Seq<Measure$>)
(declare-const _residue_159@210@01 $Perm)
(declare-const _residue_159_0@211@01 $Perm)
(declare-const _current_wait_level_159@212@01 $Perm)
(declare-const _current_wait_level_159_0@213@01 $Perm)
(push) ; 1
(declare-const $t@214@01 $Snap)
(assert (= $t@214@01 ($Snap.combine ($Snap.first $t@214@01) ($Snap.second $t@214@01))))
(assert (= ($Snap.first $t@214@01) $Snap.unit))
; [eval] p1_5 ==> _cthread_159 != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 141 | p1_5@204@01 | live]
; [else-branch: 141 | !(p1_5@204@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 141 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] _cthread_159 != null
(pop) ; 3
(push) ; 3
; [else-branch: 141 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not p1_5@204@01) p1_5@204@01))
(assert (=> p1_5@204@01 (not (= _cthread_159@206@01 $Ref.null))))
(assert (=
  ($Snap.second $t@214@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@214@01))
    ($Snap.second ($Snap.second $t@214@01)))))
(assert (= ($Snap.first ($Snap.second $t@214@01)) $Snap.unit))
; [eval] p2_5 ==> _cthread_159_0 != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 142 | p2_5@205@01 | live]
; [else-branch: 142 | !(p2_5@205@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 142 | p2_5@205@01]
(assert p2_5@205@01)
; [eval] _cthread_159_0 != null
(pop) ; 3
(push) ; 3
; [else-branch: 142 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not p2_5@205@01) p2_5@205@01))
(assert (=> p2_5@205@01 (not (= _cthread_159_0@207@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@214@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@214@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@214@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@214@01))) $Snap.unit))
; [eval] p1_5 ==> issubtype(typeof(_cthread_159), Thread_0())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 143 | p1_5@204@01 | live]
; [else-branch: 143 | !(p1_5@204@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 143 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] issubtype(typeof(_cthread_159), Thread_0())
; [eval] typeof(_cthread_159)
; [eval] Thread_0()
(pop) ; 3
(push) ; 3
; [else-branch: 143 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p1_5@204@01
  (issubtype<Bool> (typeof<PyType> _cthread_159@206@01) (as Thread_0<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@214@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@214@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@214@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@214@01))))
  $Snap.unit))
; [eval] p2_5 ==> issubtype(typeof(_cthread_159_0), Thread_0())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 144 | p2_5@205@01 | live]
; [else-branch: 144 | !(p2_5@205@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 144 | p2_5@205@01]
(assert p2_5@205@01)
; [eval] issubtype(typeof(_cthread_159_0), Thread_0())
; [eval] typeof(_cthread_159_0)
; [eval] Thread_0()
(pop) ; 3
(push) ; 3
; [else-branch: 144 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p2_5@205@01
  (issubtype<Bool> (typeof<PyType> _cthread_159_0@207@01) (as Thread_0<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@214@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@214@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@214@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@214@01)))))
  $Snap.unit))
; [eval] p1_5 == p2_5
(assert (= p1_5@204@01 p2_5@205@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@214@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@214@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@214@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@214@01))))))
  $Snap.unit))
; [eval] p1_5 ==> true
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 145 | p1_5@204@01 | live]
; [else-branch: 145 | !(p1_5@204@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 145 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 3
(push) ; 3
; [else-branch: 145 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@214@01))))))
  $Snap.unit))
; [eval] p2_5 ==> true
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 146 | p2_5@205@01 | live]
; [else-branch: 146 | !(p2_5@205@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 146 | p2_5@205@01]
(assert p2_5@205@01)
(pop) ; 3
(push) ; 3
; [else-branch: 146 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
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
(declare-const $t@215@01 $Snap)
(assert (= $t@215@01 ($Snap.combine ($Snap.first $t@215@01) ($Snap.second $t@215@01))))
(assert (= ($Snap.first $t@215@01) $Snap.unit))
; [eval] p1_5 ==> (forperm _r_20: Ref [_r_20.MustReleaseBounded] :: Level(_r_20) <= _current_wait_level_159) && ((forperm _r_20: Ref [_r_20.MustReleaseUnbounded] :: Level(_r_20) <= _current_wait_level_159) && _residue_159 <= _current_wait_level_159)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 147 | p1_5@204@01 | live]
; [else-branch: 147 | !(p1_5@204@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 147 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseBounded] :: Level(_r_20) <= _current_wait_level_159) && ((forperm _r_20: Ref [_r_20.MustReleaseUnbounded] :: Level(_r_20) <= _current_wait_level_159) && _residue_159 <= _current_wait_level_159)
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseBounded] :: Level(_r_20) <= _current_wait_level_159)
(push) ; 5
; [then-branch: 148 | False | live]
; [else-branch: 148 | True | live]
(push) ; 6
; [then-branch: 148 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 148 | True]
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseUnbounded] :: Level(_r_20) <= _current_wait_level_159)
(push) ; 7
; [then-branch: 149 | False | live]
; [else-branch: 149 | True | live]
(push) ; 8
; [then-branch: 149 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 149 | True]
; [eval] _residue_159 <= _current_wait_level_159
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
; [else-branch: 147 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=> p1_5@204@01 (<= _residue_159@210@01 _current_wait_level_159@212@01)))
(assert (=
  ($Snap.second $t@215@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@215@01))
    ($Snap.second ($Snap.second $t@215@01)))))
(assert (= ($Snap.first ($Snap.second $t@215@01)) $Snap.unit))
; [eval] p2_5 ==> (forperm _r_20: Ref [_r_20.MustReleaseBoundedp] :: Level(_r_20) <= _current_wait_level_159_0) && ((forperm _r_20: Ref [_r_20.MustReleaseUnboundedp] :: Level(_r_20) <= _current_wait_level_159_0) && _residue_159_0 <= _current_wait_level_159_0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 150 | p2_5@205@01 | live]
; [else-branch: 150 | !(p2_5@205@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 150 | p2_5@205@01]
(assert p2_5@205@01)
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseBoundedp] :: Level(_r_20) <= _current_wait_level_159_0) && ((forperm _r_20: Ref [_r_20.MustReleaseUnboundedp] :: Level(_r_20) <= _current_wait_level_159_0) && _residue_159_0 <= _current_wait_level_159_0)
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseBoundedp] :: Level(_r_20) <= _current_wait_level_159_0)
(push) ; 5
; [then-branch: 151 | False | live]
; [else-branch: 151 | True | live]
(push) ; 6
; [then-branch: 151 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 151 | True]
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseUnboundedp] :: Level(_r_20) <= _current_wait_level_159_0)
(push) ; 7
; [then-branch: 152 | False | live]
; [else-branch: 152 | True | live]
(push) ; 8
; [then-branch: 152 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 152 | True]
; [eval] _residue_159_0 <= _current_wait_level_159_0
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
; [else-branch: 150 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (<= _residue_159_0@211@01 _current_wait_level_159_0@213@01)))
(assert (=
  ($Snap.second ($Snap.second $t@215@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@215@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@215@01))) $Snap.unit))
; [eval] p1_5 ==> true
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 153 | p1_5@204@01 | live]
; [else-branch: 153 | !(p1_5@204@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 153 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 4
(push) ; 4
; [else-branch: 153 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@215@01))) $Snap.unit))
; [eval] p2_5 ==> true
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 154 | p2_5@205@01 | live]
; [else-branch: 154 | !(p2_5@205@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 154 | p2_5@205@01]
(assert p2_5@205@01)
(pop) ; 4
(push) ; 4
; [else-branch: 154 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@216@01 $Ref)
; [exec]
; var _err_3: Ref
(declare-const _err_3@217@01 $Ref)
; [exec]
; var x_1: Ref
(declare-const x_1@218@01 $Ref)
; [exec]
; var x_1_0: Ref
(declare-const x_1_0@219@01 $Ref)
; [exec]
; var inputPIN_res_0: Ref
(declare-const inputPIN_res_0@220@01 $Ref)
; [exec]
; var inputPIN_res_0_0: Ref
(declare-const inputPIN_res_0_0@221@01 $Ref)
; [exec]
; var _loop_measures_2: Seq[Measure$]
(declare-const _loop_measures_2@222@01 Seq<Measure$>)
; [exec]
; var _loop_measures_2_0: Seq[Measure$]
(declare-const _loop_measures_2_0@223@01 Seq<Measure$>)
; [exec]
; var _loop_check_before_2: Bool
(declare-const _loop_check_before_2@224@01 Bool)
; [exec]
; var _loop_check_before_2_0: Bool
(declare-const _loop_check_before_2_0@225@01 Bool)
; [exec]
; var _loop_termination_flag_2: Bool
(declare-const _loop_termination_flag_2@226@01 Bool)
; [exec]
; var _loop_termination_flag_2_0: Bool
(declare-const _loop_termination_flag_2_0@227@01 Bool)
; [exec]
; var _loop_original_must_terminate_2: Perm
(declare-const _loop_original_must_terminate_2@228@01 $Perm)
; [exec]
; var _loop_original_must_terminate_2_0: Perm
(declare-const _loop_original_must_terminate_2_0@229@01 $Perm)
; [exec]
; var _residue_163: Perm
(declare-const _residue_163@230@01 $Perm)
; [exec]
; var _residue_163_0: Perm
(declare-const _residue_163_0@231@01 $Perm)
; [exec]
; var _loop_measures_3: Seq[Measure$]
(declare-const _loop_measures_3@232@01 Seq<Measure$>)
; [exec]
; var _loop_measures_3_0: Seq[Measure$]
(declare-const _loop_measures_3_0@233@01 Seq<Measure$>)
; [exec]
; var _loop_check_before_3: Bool
(declare-const _loop_check_before_3@234@01 Bool)
; [exec]
; var _loop_check_before_3_0: Bool
(declare-const _loop_check_before_3_0@235@01 Bool)
; [exec]
; var _loop_termination_flag_3: Bool
(declare-const _loop_termination_flag_3@236@01 Bool)
; [exec]
; var _loop_termination_flag_3_0: Bool
(declare-const _loop_termination_flag_3_0@237@01 Bool)
; [exec]
; var _loop_original_must_terminate_3: Perm
(declare-const _loop_original_must_terminate_3@238@01 $Perm)
; [exec]
; var _loop_original_must_terminate_3_0: Perm
(declare-const _loop_original_must_terminate_3_0@239@01 $Perm)
; [exec]
; var _residue_164: Perm
(declare-const _residue_164@240@01 $Perm)
; [exec]
; var _residue_164_0: Perm
(declare-const _residue_164_0@241@01 $Perm)
; [exec]
; var _loop_measures_4: Seq[Measure$]
(declare-const _loop_measures_4@242@01 Seq<Measure$>)
; [exec]
; var _loop_measures_4_0: Seq[Measure$]
(declare-const _loop_measures_4_0@243@01 Seq<Measure$>)
; [exec]
; var _loop_check_before_4: Bool
(declare-const _loop_check_before_4@244@01 Bool)
; [exec]
; var _loop_check_before_4_0: Bool
(declare-const _loop_check_before_4_0@245@01 Bool)
; [exec]
; var _loop_termination_flag_4: Bool
(declare-const _loop_termination_flag_4@246@01 Bool)
; [exec]
; var _loop_termination_flag_4_0: Bool
(declare-const _loop_termination_flag_4_0@247@01 Bool)
; [exec]
; var _loop_original_must_terminate_4: Perm
(declare-const _loop_original_must_terminate_4@248@01 $Perm)
; [exec]
; var _loop_original_must_terminate_4_0: Perm
(declare-const _loop_original_must_terminate_4_0@249@01 $Perm)
; [exec]
; var _residue_165: Perm
(declare-const _residue_165@250@01 $Perm)
; [exec]
; var _residue_165_0: Perm
(declare-const _residue_165_0@251@01 $Perm)
; [exec]
; var _cwl_159: Perm
(declare-const _cwl_159@252@01 $Perm)
; [exec]
; var _cwl_159_0: Perm
(declare-const _cwl_159_0@253@01 $Perm)
; [exec]
; var _method_measures_159: Seq[Measure$]
(declare-const _method_measures_159@254@01 Seq<Measure$>)
; [exec]
; var _method_measures_159_0: Seq[Measure$]
(declare-const _method_measures_159_0@255@01 Seq<Measure$>)
; [exec]
; var bypass1_2: Bool
(declare-const bypass1_2@256@01 Bool)
; [exec]
; var bypass2_2: Bool
(declare-const bypass2_2@257@01 Bool)
; [exec]
; var tmp1_30: Seq[Measure$]
(declare-const tmp1_30@258@01 Seq<Measure$>)
; [exec]
; var tmp2_30: Seq[Measure$]
(declare-const tmp2_30@259@01 Seq<Measure$>)
; [exec]
; var tmp1_31: Bool
(declare-const tmp1_31@260@01 Bool)
; [exec]
; var tmp2_31: Bool
(declare-const tmp2_31@261@01 Bool)
; [exec]
; var p1_6: Bool
(declare-const p1_6@262@01 Bool)
; [exec]
; var p2_6: Bool
(declare-const p2_6@263@01 Bool)
; [exec]
; var idle1_2: Bool
(declare-const idle1_2@264@01 Bool)
; [exec]
; var idle2_2: Bool
(declare-const idle2_2@265@01 Bool)
; [exec]
; var cond_5: Bool
(declare-const cond_5@266@01 Bool)
; [exec]
; var cond_6: Bool
(declare-const cond_6@267@01 Bool)
; [exec]
; var bypass1_3: Bool
(declare-const bypass1_3@268@01 Bool)
; [exec]
; var bypass2_3: Bool
(declare-const bypass2_3@269@01 Bool)
; [exec]
; var tmp1_37: Seq[Measure$]
(declare-const tmp1_37@270@01 Seq<Measure$>)
; [exec]
; var tmp2_37: Seq[Measure$]
(declare-const tmp2_37@271@01 Seq<Measure$>)
; [exec]
; var tmp1_38: Bool
(declare-const tmp1_38@272@01 Bool)
; [exec]
; var tmp2_38: Bool
(declare-const tmp2_38@273@01 Bool)
; [exec]
; var p1_7: Bool
(declare-const p1_7@274@01 Bool)
; [exec]
; var p2_7: Bool
(declare-const p2_7@275@01 Bool)
; [exec]
; var idle1_3: Bool
(declare-const idle1_3@276@01 Bool)
; [exec]
; var idle2_3: Bool
(declare-const idle2_3@277@01 Bool)
; [exec]
; var cond_7: Bool
(declare-const cond_7@278@01 Bool)
; [exec]
; var cond_8: Bool
(declare-const cond_8@279@01 Bool)
; [exec]
; var bypass1_4: Bool
(declare-const bypass1_4@280@01 Bool)
; [exec]
; var bypass2_4: Bool
(declare-const bypass2_4@281@01 Bool)
; [exec]
; var tmp1_44: Seq[Measure$]
(declare-const tmp1_44@282@01 Seq<Measure$>)
; [exec]
; var tmp2_44: Seq[Measure$]
(declare-const tmp2_44@283@01 Seq<Measure$>)
; [exec]
; var tmp1_45: Bool
(declare-const tmp1_45@284@01 Bool)
; [exec]
; var tmp2_45: Bool
(declare-const tmp2_45@285@01 Bool)
; [exec]
; var p1_8: Bool
(declare-const p1_8@286@01 Bool)
; [exec]
; var p2_8: Bool
(declare-const p2_8@287@01 Bool)
; [exec]
; var idle1_4: Bool
(declare-const idle1_4@288@01 Bool)
; [exec]
; var idle2_4: Bool
(declare-const idle2_4@289@01 Bool)
; [exec]
; var cond_9: Bool
(declare-const cond_9@290@01 Bool)
; [exec]
; var cond_10: Bool
(declare-const cond_10@291@01 Bool)
; [exec]
; inhale p1_5
(declare-const $t@292@01 $Snap)
(assert (= $t@292@01 $Snap.unit))
(assert p1_5@204@01)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 155 | p1_5@204@01 | live]
; [else-branch: 155 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 155 | p1_5@204@01]
; [exec]
; _method_measures_159 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err := null
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 156 | p2_5@205@01 | live]
; [else-branch: 156 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 156 | p2_5@205@01]
(assert p2_5@205@01)
; [exec]
; _method_measures_159_0 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err_3 := null
; [eval] p1_5 || p2_5
(push) ; 5
; [then-branch: 157 | p1_5@204@01 | live]
; [else-branch: 157 | !(p1_5@204@01) | live]
(push) ; 6
; [then-branch: 157 | p1_5@204@01]
(pop) ; 6
(push) ; 6
; [else-branch: 157 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (not (or p1_5@204@01 p2_5@205@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (or p1_5@204@01 p2_5@205@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 158 | p1_5@204@01 || p2_5@205@01 | live]
; [else-branch: 158 | !(p1_5@204@01 || p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 158 | p1_5@204@01 || p2_5@205@01]
(assert (or p1_5@204@01 p2_5@205@01))
; [exec]
; var tmp1_25: Ref
(declare-const tmp1_25@293@01 $Ref)
; [exec]
; var tmp2_25: Ref
(declare-const tmp2_25@294@01 $Ref)
; [exec]
; var tmp1_26: Seq[Measure$]
(declare-const tmp1_26@295@01 Seq<Measure$>)
; [exec]
; var tmp2_26: Seq[Measure$]
(declare-const tmp2_26@296@01 Seq<Measure$>)
; [exec]
; var tmp1_27: Perm
(declare-const tmp1_27@297@01 $Perm)
; [exec]
; var tmp2_27: Perm
(declare-const tmp2_27@298@01 $Perm)
; [exec]
; var tmp1_28: Perm
(declare-const tmp1_28@299@01 $Perm)
; [exec]
; var tmp2_28: Perm
(declare-const tmp2_28@300@01 $Perm)
; [exec]
; var tmp1_29: Ref
(declare-const tmp1_29@301@01 $Ref)
; [exec]
; var tmp2_29: Ref
(declare-const tmp2_29@302@01 $Ref)
(push) ; 6
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 159 | p1_5@204@01 | live]
; [else-branch: 159 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 159 | p1_5@204@01]
; [exec]
; tmp1_25 := _cthread_159
; [exec]
; tmp1_26 := _method_measures_159
; [exec]
; tmp1_27 := _residue_159
(push) ; 7
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 160 | p2_5@205@01 | live]
; [else-branch: 160 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 160 | p2_5@205@01]
; [exec]
; tmp2_25 := _cthread_159_0
; [exec]
; tmp2_26 := _method_measures_159_0
; [exec]
; tmp2_27 := _residue_159_0
; [exec]
; tmp1_28, tmp2_28, tmp1_29, tmp2_29 := inputPIN(p1_5, p2_5, tmp1_25, tmp2_25,
;   tmp1_26, tmp2_26, tmp1_27, tmp2_27)
; [eval] p1_0 ==> _cthread_157 != null
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 161 | p1_5@204@01 | live]
; [else-branch: 161 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 161 | p1_5@204@01]
; [eval] _cthread_157 != null
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] p2_0 ==> _cthread_157_0 != null
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 162 | p2_5@205@01 | live]
; [else-branch: 162 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 162 | p2_5@205@01]
; [eval] _cthread_157_0 != null
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] p1_0 ==> issubtype(typeof(_cthread_157), Thread_0())
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 163 | p1_5@204@01 | live]
; [else-branch: 163 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 163 | p1_5@204@01]
; [eval] issubtype(typeof(_cthread_157), Thread_0())
; [eval] typeof(_cthread_157)
; [eval] Thread_0()
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] p2_0 ==> issubtype(typeof(_cthread_157_0), Thread_0())
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 164 | p2_5@205@01 | live]
; [else-branch: 164 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 164 | p2_5@205@01]
; [eval] issubtype(typeof(_cthread_157_0), Thread_0())
; [eval] typeof(_cthread_157_0)
; [eval] Thread_0()
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] p1_0 ==> perm(MustTerminate(_cthread_157)) == none && ((forperm _r_4: Ref [MustInvokeBounded(_r_4)] :: false) && ((forperm _r_4: Ref [MustInvokeUnbounded(_r_4)] :: false) && ((forperm _r_4: Ref [_r_4.MustReleaseBounded] :: false) && (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: false))))
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 165 | p1_5@204@01 | live]
; [else-branch: 165 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 165 | p1_5@204@01]
; [eval] perm(MustTerminate(_cthread_157)) == none && ((forperm _r_4: Ref [MustInvokeBounded(_r_4)] :: false) && ((forperm _r_4: Ref [MustInvokeUnbounded(_r_4)] :: false) && ((forperm _r_4: Ref [_r_4.MustReleaseBounded] :: false) && (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_157)) == none
; [eval] perm(MustTerminate(_cthread_157))
(push) ; 10
; [then-branch: 166 | False | live]
; [else-branch: 166 | True | live]
(push) ; 11
; [then-branch: 166 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 166 | True]
; [eval] (forperm _r_4: Ref [MustInvokeBounded(_r_4)] :: false)
(push) ; 12
; [then-branch: 167 | False | live]
; [else-branch: 167 | True | live]
(push) ; 13
; [then-branch: 167 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 167 | True]
; [eval] (forperm _r_4: Ref [MustInvokeUnbounded(_r_4)] :: false)
(push) ; 14
; [then-branch: 168 | False | live]
; [else-branch: 168 | True | live]
(push) ; 15
; [then-branch: 168 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 168 | True]
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseBounded] :: false)
(push) ; 16
; [then-branch: 169 | False | live]
; [else-branch: 169 | True | live]
(push) ; 17
; [then-branch: 169 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 169 | True]
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: false)
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
; [eval] p2_0 ==> perm(MustTerminate_0(_cthread_157_0)) == none && ((forperm _r_4: Ref [MustInvokeBounded_0(_r_4)] :: false) && ((forperm _r_4: Ref [MustInvokeUnbounded_0(_r_4)] :: false) && ((forperm _r_4: Ref [_r_4.MustReleaseBoundedp] :: false) && (forperm _r_4: Ref [_r_4.MustReleaseUnboundedp] :: false))))
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 170 | p2_5@205@01 | live]
; [else-branch: 170 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 170 | p2_5@205@01]
; [eval] perm(MustTerminate_0(_cthread_157_0)) == none && ((forperm _r_4: Ref [MustInvokeBounded_0(_r_4)] :: false) && ((forperm _r_4: Ref [MustInvokeUnbounded_0(_r_4)] :: false) && ((forperm _r_4: Ref [_r_4.MustReleaseBoundedp] :: false) && (forperm _r_4: Ref [_r_4.MustReleaseUnboundedp] :: false))))
; [eval] perm(MustTerminate_0(_cthread_157_0)) == none
; [eval] perm(MustTerminate_0(_cthread_157_0))
(push) ; 10
; [then-branch: 171 | False | live]
; [else-branch: 171 | True | live]
(push) ; 11
; [then-branch: 171 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 171 | True]
; [eval] (forperm _r_4: Ref [MustInvokeBounded_0(_r_4)] :: false)
(push) ; 12
; [then-branch: 172 | False | live]
; [else-branch: 172 | True | live]
(push) ; 13
; [then-branch: 172 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 172 | True]
; [eval] (forperm _r_4: Ref [MustInvokeUnbounded_0(_r_4)] :: false)
(push) ; 14
; [then-branch: 173 | False | live]
; [else-branch: 173 | True | live]
(push) ; 15
; [then-branch: 173 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 173 | True]
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseBoundedp] :: false)
(push) ; 16
; [then-branch: 174 | False | live]
; [else-branch: 174 | True | live]
(push) ; 17
; [then-branch: 174 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 174 | True]
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseUnboundedp] :: false)
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
(declare-const _current_wait_level_157@303@01 $Perm)
(declare-const _current_wait_level_157_0@304@01 $Perm)
(declare-const _res@305@01 $Ref)
(declare-const _res_0@306@01 $Ref)
(declare-const $t@307@01 $Snap)
(assert (= $t@307@01 ($Snap.combine ($Snap.first $t@307@01) ($Snap.second $t@307@01))))
(assert (= ($Snap.first $t@307@01) $Snap.unit))
; [eval] p1_0 ==> (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157) && ((forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157) && _residue_157 <= _current_wait_level_157)
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 175 | p1_5@204@01 | live]
; [else-branch: 175 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 175 | p1_5@204@01]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157) && ((forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157) && _residue_157 <= _current_wait_level_157)
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157)
(push) ; 10
; [then-branch: 176 | False | live]
; [else-branch: 176 | True | live]
(push) ; 11
; [then-branch: 176 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 176 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157)
(push) ; 12
; [then-branch: 177 | False | live]
; [else-branch: 177 | True | live]
(push) ; 13
; [then-branch: 177 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 177 | True]
; [eval] _residue_157 <= _current_wait_level_157
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
(assert (=> p1_5@204@01 (<= _residue_159@210@01 _current_wait_level_157@303@01)))
(assert (=
  ($Snap.second $t@307@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@307@01))
    ($Snap.second ($Snap.second $t@307@01)))))
(assert (= ($Snap.first ($Snap.second $t@307@01)) $Snap.unit))
; [eval] p2_0 ==> (forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: Level(_r_2) <= _current_wait_level_157_0) && ((forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: Level(_r_2) <= _current_wait_level_157_0) && _residue_157_0 <= _current_wait_level_157_0)
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 178 | p2_5@205@01 | live]
; [else-branch: 178 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 178 | p2_5@205@01]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: Level(_r_2) <= _current_wait_level_157_0) && ((forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: Level(_r_2) <= _current_wait_level_157_0) && _residue_157_0 <= _current_wait_level_157_0)
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: Level(_r_2) <= _current_wait_level_157_0)
(push) ; 10
; [then-branch: 179 | False | live]
; [else-branch: 179 | True | live]
(push) ; 11
; [then-branch: 179 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 179 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: Level(_r_2) <= _current_wait_level_157_0)
(push) ; 12
; [then-branch: 180 | False | live]
; [else-branch: 180 | True | live]
(push) ; 13
; [then-branch: 180 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 180 | True]
; [eval] _residue_157_0 <= _current_wait_level_157_0
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
(assert (=> p2_5@205@01 (<= _residue_159_0@211@01 _current_wait_level_157_0@304@01)))
(assert (=
  ($Snap.second ($Snap.second $t@307@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@307@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@307@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@307@01))) $Snap.unit))
; [eval] p1_0 ==> issubtype(typeof(_res), int())
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 181 | p1_5@204@01 | live]
; [else-branch: 181 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 181 | p1_5@204@01]
; [eval] issubtype(typeof(_res), int())
; [eval] typeof(_res)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  p1_5@204@01
  (issubtype<Bool> (typeof<PyType> _res@305@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@307@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@307@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@307@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@307@01))))
  $Snap.unit))
; [eval] p2_0 ==> issubtype(typeof(_res_0), int())
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 182 | p2_5@205@01 | live]
; [else-branch: 182 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 182 | p2_5@205@01]
; [eval] issubtype(typeof(_res_0), int())
; [eval] typeof(_res_0)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  p2_5@205@01
  (issubtype<Bool> (typeof<PyType> _res_0@306@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@307@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@307@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@307@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@307@01)))))
  $Snap.unit))
; [eval] p1_0 ==> true
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 183 | p1_5@204@01 | live]
; [else-branch: 183 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 183 | p1_5@204@01]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@307@01)))))
  $Snap.unit))
; [eval] p2_0 ==> true
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 184 | p2_5@205@01 | live]
; [else-branch: 184 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 184 | p2_5@205@01]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 185 | p1_5@204@01 | live]
; [else-branch: 185 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 185 | p1_5@204@01]
; [exec]
; _cwl_159 := tmp1_28
; [exec]
; inputPIN_res_0 := tmp1_29
(push) ; 9
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 186 | p2_5@205@01 | live]
; [else-branch: 186 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 186 | p2_5@205@01]
; [exec]
; _cwl_159_0 := tmp2_28
; [exec]
; inputPIN_res_0_0 := tmp2_29
(push) ; 10
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 187 | p1_5@204@01 | live]
; [else-branch: 187 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 187 | p1_5@204@01]
; [exec]
; x_1 := inputPIN_res_0
; [exec]
; inhale _isDefined(3235704)
(declare-const $t@308@01 $Snap)
(assert (= $t@308@01 $Snap.unit))
; [eval] _isDefined(3235704)
(push) ; 11
(assert (_isDefined%precondition $Snap.unit 3235704))
(pop) ; 11
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3235704))
(assert (_isDefined $Snap.unit 3235704))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 188 | p2_5@205@01 | live]
; [else-branch: 188 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 188 | p2_5@205@01]
; [exec]
; x_1_0 := inputPIN_res_0_0
; [exec]
; inhale true
(declare-const $t@309@01 $Snap)
(assert (= $t@309@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale p1_5 && p2_5 ==>
;   __prim__bool___box__(int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))) ==
;   __prim__bool___box__(int___eq__(x_1_0, __prim__int___box__(0)))
(declare-const $t@310@01 $Snap)
(assert (= $t@310@01 $Snap.unit))
; [eval] p1_5 && p2_5 ==> __prim__bool___box__(int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))) == __prim__bool___box__(int___eq__(x_1_0, __prim__int___box__(0)))
; [eval] p1_5 && p2_5
(set-option :timeout 0)
(push) ; 12
; [then-branch: 189 | !(p1_5@204@01) | live]
; [else-branch: 189 | p1_5@204@01 | live]
(push) ; 13
; [then-branch: 189 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 13
(push) ; 13
; [else-branch: 189 | p1_5@204@01]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or p1_5@204@01 (not p1_5@204@01)))
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 p2_5@205@01))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p1_5@204@01 p2_5@205@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 190 | p1_5@204@01 && p2_5@205@01 | live]
; [else-branch: 190 | !(p1_5@204@01 && p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 190 | p1_5@204@01 && p2_5@205@01]
(assert (and p1_5@204@01 p2_5@205@01))
; [eval] __prim__bool___box__(int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))) == __prim__bool___box__(int___eq__(x_1_0, __prim__int___box__(0)))
; [eval] __prim__bool___box__(int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 14
; [eval] _isDefined(id)
(push) ; 15
(pop) ; 15
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit _res@305@01 3235704))
(pop) ; 14
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit _res@305@01 3235704))
; [eval] __prim__int___box__(0)
(push) ; 14
(assert (__prim__int___box__%precondition $Snap.unit 0))
(pop) ; 14
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 0))
(push) ; 14
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
(push) ; 15
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit _res@305@01 3235704)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit _res@305@01 3235704)) (as int<PyType>  PyType)))
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(push) ; 15
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType)))
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
(pop) ; 14
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit _res@305@01 3235704)) (as int<PyType>  PyType))
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
(push) ; 14
(assert (__prim__bool___box__%precondition $Snap.unit (int___eq__ ($Snap.combine
  $Snap.unit
  $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
(pop) ; 14
; Joined path conditions
(assert (__prim__bool___box__%precondition $Snap.unit (int___eq__ ($Snap.combine
  $Snap.unit
  $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
; [eval] __prim__bool___box__(int___eq__(x_1_0, __prim__int___box__(0)))
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 14
(pop) ; 14
; Joined path conditions
(push) ; 14
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
(push) ; 15
(assert (not (issubtype<Bool> (typeof<PyType> _res_0@306@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res_0@306@01) (as int<PyType>  PyType)))
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))
(pop) ; 14
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> _res_0@306@01) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))
(push) ; 14
(assert (__prim__bool___box__%precondition $Snap.unit (int___eq__ ($Snap.combine
  $Snap.unit
  $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))
(pop) ; 14
; Joined path conditions
(assert (__prim__bool___box__%precondition $Snap.unit (int___eq__ ($Snap.combine
  $Snap.unit
  $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  (and p1_5@204@01 p2_5@205@01)
  (and
    p1_5@204@01
    p2_5@205@01
    (_checkDefined%precondition $Snap.unit _res@305@01 3235704)
    (__prim__int___box__%precondition $Snap.unit 0)
    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit _res@305@01 3235704)) (as int<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType))
    (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))
    (__prim__bool___box__%precondition $Snap.unit (int___eq__ ($Snap.combine
      $Snap.unit
      $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
    (issubtype<Bool> (typeof<PyType> _res_0@306@01) (as int<PyType>  PyType))
    (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))
    (__prim__bool___box__%precondition $Snap.unit (int___eq__ ($Snap.combine
      $Snap.unit
      $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))))
(assert (and p1_5@204@01 p2_5@205@01))
(assert (=>
  (and p1_5@204@01 p2_5@205@01)
  (=
    (__prim__bool___box__ $Snap.unit (int___eq__ ($Snap.combine
      $Snap.unit
      $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
    (__prim__bool___box__ $Snap.unit (int___eq__ ($Snap.combine
      $Snap.unit
      $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 191 | p1_5@204@01 | live]
; [else-branch: 191 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 191 | p1_5@204@01]
; [exec]
; _loop_original_must_terminate_2 := perm(MustTerminate(_cthread_159))
; [eval] perm(MustTerminate(_cthread_159))
(declare-const _loop_original_must_terminate_2@311@01 $Perm)
(assert (= _loop_original_must_terminate_2@311@01 $Perm.No))
; [exec]
; _loop_termination_flag_2 := !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 13
; [eval] _isDefined(id)
(push) ; 14
(pop) ; 14
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit _res@305@01 3235704))
(pop) ; 13
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit _res@305@01 3235704))
; [eval] __prim__int___box__(0)
(push) ; 13
(assert (__prim__int___box__%precondition $Snap.unit 0))
(pop) ; 13
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 0))
(push) ; 13
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
(push) ; 14
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit _res@305@01 3235704)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit _res@305@01 3235704)) (as int<PyType>  PyType)))
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(push) ; 14
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType)))
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
(pop) ; 13
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit _res@305@01 3235704)) (as int<PyType>  PyType))
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
(declare-const _loop_termination_flag_2@312@01 Bool)
(assert (=
  _loop_termination_flag_2@312@01
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
; [exec]
; _loop_check_before_2 := true
(push) ; 13
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 192 | p2_5@205@01 | live]
; [else-branch: 192 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 192 | p2_5@205@01]
; [exec]
; _loop_original_must_terminate_2_0 := perm(MustTerminate_0(_cthread_159_0))
; [eval] perm(MustTerminate_0(_cthread_159_0))
(declare-const _loop_original_must_terminate_2_0@313@01 $Perm)
(assert (= _loop_original_must_terminate_2_0@313@01 $Perm.No))
; [exec]
; _loop_termination_flag_2_0 := !int___eq__(x_1_0, __prim__int___box__(0))
; [eval] !int___eq__(x_1_0, __prim__int___box__(0))
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 14
(pop) ; 14
; Joined path conditions
(push) ; 14
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
(push) ; 15
(assert (not (issubtype<Bool> (typeof<PyType> _res_0@306@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res_0@306@01) (as int<PyType>  PyType)))
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))
(pop) ; 14
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> _res_0@306@01) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))
(declare-const _loop_termination_flag_2_0@314@01 Bool)
(assert (=
  _loop_termination_flag_2_0@314@01
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))))
; [exec]
; _loop_check_before_2_0 := true
; [exec]
; bypass1_2 := !p1_5
; [eval] !p1_5
(declare-const bypass1_2@315@01 Bool)
(assert (= bypass1_2@315@01 (not p1_5@204@01)))
; [exec]
; bypass2_2 := !p2_5
; [eval] !p2_5
(declare-const bypass2_2@316@01 Bool)
(assert (= bypass2_2@316@01 (not p2_5@205@01)))
(push) ; 14
(set-option :timeout 10)
(assert (not (not bypass1_2@315@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 193 | bypass1_2@315@01 | dead]
; [else-branch: 193 | !(bypass1_2@315@01) | live]
(set-option :timeout 0)
(push) ; 14
; [else-branch: 193 | !(bypass1_2@315@01)]
(assert (not bypass1_2@315@01))
(pop) ; 14
; [eval] !bypass1_2
(push) ; 14
(set-option :timeout 10)
(assert (not bypass1_2@315@01))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (not bypass1_2@315@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 194 | !(bypass1_2@315@01) | live]
; [else-branch: 194 | bypass1_2@315@01 | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 194 | !(bypass1_2@315@01)]
(assert (not bypass1_2@315@01))
(push) ; 15
(set-option :timeout 10)
(assert (not (not bypass2_2@316@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 195 | bypass2_2@316@01 | dead]
; [else-branch: 195 | !(bypass2_2@316@01) | live]
(set-option :timeout 0)
(push) ; 15
; [else-branch: 195 | !(bypass2_2@316@01)]
(assert (not bypass2_2@316@01))
(pop) ; 15
; [eval] !bypass2_2
(push) ; 15
(set-option :timeout 10)
(assert (not bypass2_2@316@01))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (not bypass2_2@316@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 196 | !(bypass2_2@316@01) | live]
; [else-branch: 196 | bypass2_2@316@01 | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 196 | !(bypass2_2@316@01)]
(assert (not bypass2_2@316@01))
; [exec]
; idle1_2 := false
; [exec]
; idle2_2 := false
; [exec]
; assert (p1_5 ==>
;   !!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))) &&
;   (p2_5 ==> !!int___eq__(x_1_0, __prim__int___box__(0))) ==>
;   p1_5 == p2_5
; [eval] (p1_5 ==> !!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))) && (p2_5 ==> !!int___eq__(x_1_0, __prim__int___box__(0))) ==> p1_5 == p2_5
; [eval] (p1_5 ==> !!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))) && (p2_5 ==> !!int___eq__(x_1_0, __prim__int___box__(0)))
; [eval] p1_5 ==> !!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 197 | p1_5@204@01 | live]
; [else-branch: 197 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 197 | p1_5@204@01]
; [eval] !!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 18
; [eval] _isDefined(id)
(push) ; 19
(pop) ; 19
; Joined path conditions
(pop) ; 18
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 18
(pop) ; 18
; Joined path conditions
(push) ; 18
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 18
; Joined path conditions
(pop) ; 17
(pop) ; 16
; Joined path conditions
(push) ; 16
; [then-branch: 198 | !(p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))) | live]
; [else-branch: 198 | p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) | live]
(push) ; 17
; [then-branch: 198 | !(p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)))]
(assert (not
  (=>
    p1_5@204@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
(pop) ; 17
(push) ; 17
; [else-branch: 198 | p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))]
(assert (=>
  p1_5@204@01
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
; [eval] p2_5 ==> !!int___eq__(x_1_0, __prim__int___box__(0))
(push) ; 18
(push) ; 19
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 199 | p2_5@205@01 | live]
; [else-branch: 199 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 199 | p2_5@205@01]
; [eval] !!int___eq__(x_1_0, __prim__int___box__(0))
; [eval] !int___eq__(x_1_0, __prim__int___box__(0))
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 20
(pop) ; 20
; Joined path conditions
(push) ; 20
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 20
; Joined path conditions
(pop) ; 19
(pop) ; 18
; Joined path conditions
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (=>
  (and
    (=>
      p1_5@204@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
    p1_5@204@01)
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
(assert (or
  (=>
    p1_5@204@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
  (not
    (=>
      p1_5@204@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))))
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (not
  (and
    (=>
      p1_5@204@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
    (=>
      p2_5@205@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))))))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (and
  (=>
    p1_5@204@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
  (=>
    p2_5@205@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 200 | p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) && p2_5@205@01 ==> int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0)) | live]
; [else-branch: 200 | !(p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) && p2_5@205@01 ==> int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0))) | live]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 200 | p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) && p2_5@205@01 ==> int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0))]
(assert (and
  (=>
    p1_5@204@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
  (=>
    p2_5@205@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))))
; [eval] p1_5 == p2_5
(pop) ; 17
(push) ; 17
; [else-branch: 200 | !(p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) && p2_5@205@01 ==> int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0)))]
(assert (not
  (and
    (=>
      p1_5@204@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
    (=>
      p2_5@205@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (=>
        p1_5@204@01
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
      (=>
        p2_5@205@01
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))))
  (and
    (=>
      p1_5@204@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
    (=>
      p2_5@205@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))))
(push) ; 16
(assert (not (=>
  (and
    (=>
      p1_5@204@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
    (=>
      p2_5@205@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))
  (= p1_5@204@01 p2_5@205@01))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and
    (=>
      p1_5@204@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
    (=>
      p2_5@205@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))
  (= p1_5@204@01 p2_5@205@01)))
; [exec]
; assert p1_5 && p2_5 ==>
;   !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) ==
;   !int___eq__(x_1_0, __prim__int___box__(0))
; [eval] p1_5 && p2_5 ==> !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) == !int___eq__(x_1_0, __prim__int___box__(0))
; [eval] p1_5 && p2_5
(push) ; 16
; [then-branch: 201 | !(p1_5@204@01) | live]
; [else-branch: 201 | p1_5@204@01 | live]
(push) ; 17
; [then-branch: 201 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 17
(push) ; 17
; [else-branch: 201 | p1_5@204@01]
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 p2_5@205@01))))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (and p1_5@204@01 p2_5@205@01)))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 202 | p1_5@204@01 && p2_5@205@01 | live]
; [else-branch: 202 | !(p1_5@204@01 && p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 202 | p1_5@204@01 && p2_5@205@01]
(assert (and p1_5@204@01 p2_5@205@01))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) == !int___eq__(x_1_0, __prim__int___box__(0))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 18
; [eval] _isDefined(id)
(push) ; 19
(pop) ; 19
; Joined path conditions
(pop) ; 18
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 18
(pop) ; 18
; Joined path conditions
(push) ; 18
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 18
; Joined path conditions
; [eval] !int___eq__(x_1_0, __prim__int___box__(0))
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 18
(pop) ; 18
; Joined path conditions
(push) ; 18
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 18
; Joined path conditions
(pop) ; 17
(pop) ; 16
; Joined path conditions
(assert (and p1_5@204@01 p2_5@205@01))
(push) ; 16
(assert (not (=>
  (and p1_5@204@01 p2_5@205@01)
  (=
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p1_5@204@01 p2_5@205@01)
  (=
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))))
(push) ; 16
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 203 | p1_5@204@01 | live]
; [else-branch: 203 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 203 | p1_5@204@01]
; [exec]
; cond_5 := !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 17
; [eval] _isDefined(id)
(push) ; 18
(pop) ; 18
; Joined path conditions
(pop) ; 17
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 17
(pop) ; 17
; Joined path conditions
(push) ; 17
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 17
; Joined path conditions
(declare-const cond_5@317@01 Bool)
(assert (=
  cond_5@317@01
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
(push) ; 17
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 204 | p2_5@205@01 | live]
; [else-branch: 204 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 204 | p2_5@205@01]
; [exec]
; cond_6 := !int___eq__(x_1_0, __prim__int___box__(0))
; [eval] !int___eq__(x_1_0, __prim__int___box__(0))
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 18
(pop) ; 18
; Joined path conditions
(push) ; 18
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 18
; Joined path conditions
(declare-const cond_6@318@01 Bool)
(assert (=
  cond_6@318@01
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))))
(declare-const p1_6@319@01 Bool)
(declare-const p2_6@320@01 Bool)
(declare-const idle1_2@321@01 Bool)
(declare-const idle2_2@322@01 Bool)
(declare-const _loop_measures_2@323@01 Seq<Measure$>)
(declare-const _loop_check_before_2@324@01 Bool)
(declare-const _loop_measures_2_0@325@01 Seq<Measure$>)
(declare-const _loop_check_before_2_0@326@01 Bool)
(push) ; 18
; Loop head block: Check well-definedness of invariant
(declare-const $t@327@01 $Snap)
(assert (= $t@327@01 ($Snap.combine ($Snap.first $t@327@01) ($Snap.second $t@327@01))))
(assert (= ($Snap.first $t@327@01) $Snap.unit))
; [eval] p1_5 && !bypass1_2 ==> (forperm _r_14: Ref [_r_14.MustReleaseBounded] :: Level(_r_14) <= _residue_163) && ((forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: Level(_r_14) <= _residue_163) && _residue_159 <= _residue_163)
; [eval] p1_5 && !bypass1_2
(push) ; 19
; [then-branch: 205 | !(p1_5@204@01) | live]
; [else-branch: 205 | p1_5@204@01 | live]
(push) ; 20
; [then-branch: 205 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 20
(push) ; 20
; [else-branch: 205 | p1_5@204@01]
; [eval] !bypass1_2
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(push) ; 19
(push) ; 20
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_2@315@01)))))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_2@315@01))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 206 | p1_5@204@01 && !(bypass1_2@315@01) | live]
; [else-branch: 206 | !(p1_5@204@01 && !(bypass1_2@315@01)) | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 206 | p1_5@204@01 && !(bypass1_2@315@01)]
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseBounded] :: Level(_r_14) <= _residue_163) && ((forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: Level(_r_14) <= _residue_163) && _residue_159 <= _residue_163)
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseBounded] :: Level(_r_14) <= _residue_163)
(push) ; 21
; [then-branch: 207 | False | live]
; [else-branch: 207 | True | live]
(push) ; 22
; [then-branch: 207 | False]
(assert false)
(pop) ; 22
(push) ; 22
; [else-branch: 207 | True]
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: Level(_r_14) <= _residue_163)
(push) ; 23
; [then-branch: 208 | False | live]
; [else-branch: 208 | True | live]
(push) ; 24
; [then-branch: 208 | False]
(assert false)
(pop) ; 24
(push) ; 24
; [else-branch: 208 | True]
; [eval] _residue_159 <= _residue_163
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
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
(assert (=>
  (and p1_5@204@01 (not bypass1_2@315@01))
  (<= _residue_159@210@01 _residue_163@230@01)))
(assert (=
  ($Snap.second $t@327@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@327@01))
    ($Snap.second ($Snap.second $t@327@01)))))
(assert (= ($Snap.first ($Snap.second $t@327@01)) $Snap.unit))
; [eval] p2_5 && !bypass2_2 ==> (forperm _r_14: Ref [_r_14.MustReleaseBoundedp] :: Level(_r_14) <= _residue_163_0) && ((forperm _r_14: Ref [_r_14.MustReleaseUnboundedp] :: Level(_r_14) <= _residue_163_0) && _residue_159_0 <= _residue_163_0)
; [eval] p2_5 && !bypass2_2
(push) ; 19
; [then-branch: 209 | !(p2_5@205@01) | live]
; [else-branch: 209 | p2_5@205@01 | live]
(push) ; 20
; [then-branch: 209 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 20
(push) ; 20
; [else-branch: 209 | p2_5@205@01]
; [eval] !bypass2_2
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(assert (or p2_5@205@01 (not p2_5@205@01)))
(push) ; 19
(push) ; 20
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_2@316@01)))))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_2@316@01))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 210 | p2_5@205@01 && !(bypass2_2@316@01) | live]
; [else-branch: 210 | !(p2_5@205@01 && !(bypass2_2@316@01)) | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 210 | p2_5@205@01 && !(bypass2_2@316@01)]
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseBoundedp] :: Level(_r_14) <= _residue_163_0) && ((forperm _r_14: Ref [_r_14.MustReleaseUnboundedp] :: Level(_r_14) <= _residue_163_0) && _residue_159_0 <= _residue_163_0)
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseBoundedp] :: Level(_r_14) <= _residue_163_0)
(push) ; 21
; [then-branch: 211 | False | live]
; [else-branch: 211 | True | live]
(push) ; 22
; [then-branch: 211 | False]
(assert false)
(pop) ; 22
(push) ; 22
; [else-branch: 211 | True]
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseUnboundedp] :: Level(_r_14) <= _residue_163_0)
(push) ; 23
; [then-branch: 212 | False | live]
; [else-branch: 212 | True | live]
(push) ; 24
; [then-branch: 212 | False]
(assert false)
(pop) ; 24
(push) ; 24
; [else-branch: 212 | True]
; [eval] _residue_159_0 <= _residue_163_0
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
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
(assert (=>
  (and p2_5@205@01 (not bypass2_2@316@01))
  (<= _residue_159_0@211@01 _residue_163_0@231@01)))
(assert (=
  ($Snap.second ($Snap.second $t@327@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@327@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))
; [eval] p1_5 && !bypass1_2
(push) ; 19
; [then-branch: 213 | !(p1_5@204@01) | live]
; [else-branch: 213 | p1_5@204@01 | live]
(push) ; 20
; [then-branch: 213 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 20
(push) ; 20
; [else-branch: 213 | p1_5@204@01]
; [eval] !bypass1_2
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(push) ; 19
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_2@315@01)))))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_2@315@01))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 214 | p1_5@204@01 && !(bypass1_2@315@01) | live]
; [else-branch: 214 | !(p1_5@204@01 && !(bypass1_2@315@01)) | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 214 | p1_5@204@01 && !(bypass1_2@315@01)]
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 20
; [eval] _isDefined(id)
(push) ; 21
(pop) ; 21
; Joined path conditions
(pop) ; 20
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 20
(pop) ; 20
; Joined path conditions
(push) ; 20
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 20
; Joined path conditions
(push) ; 20
(set-option :timeout 10)
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 215 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))) | live]
; [else-branch: 215 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) | live]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 215 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second $t@327@01)))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@327@01))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@327@01)))))))
(assert (=
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@327@01))))
  $Snap.unit))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) ==> false
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 21
; [eval] _isDefined(id)
(push) ; 22
(pop) ; 22
; Joined path conditions
(pop) ; 21
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 21
(pop) ; 21
; Joined path conditions
(push) ; 21
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 21
; Joined path conditions
(push) ; 21
; [then-branch: 216 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) | dead]
; [else-branch: 216 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))) | live]
(push) ; 22
; [else-branch: 216 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)))]
(pop) ; 22
(pop) ; 21
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@327@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@327@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))
; [eval] p2_5 && !bypass2_2
(push) ; 21
; [then-branch: 217 | !(p2_5@205@01) | live]
; [else-branch: 217 | p2_5@205@01 | live]
(push) ; 22
; [then-branch: 217 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 22
(push) ; 22
; [else-branch: 217 | p2_5@205@01]
; [eval] !bypass2_2
(pop) ; 22
(pop) ; 21
; Joined path conditions
; Joined path conditions
(push) ; 21
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_2@316@01)))))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_2@316@01))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [then-branch: 218 | p2_5@205@01 && !(bypass2_2@316@01) | live]
; [else-branch: 218 | !(p2_5@205@01 && !(bypass2_2@316@01)) | dead]
(set-option :timeout 0)
(push) ; 21
; [then-branch: 218 | p2_5@205@01 && !(bypass2_2@316@01)]
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] !int___eq__(x_1_0, __prim__int___box__(0))
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 22
(pop) ; 22
; Joined path conditions
(push) ; 22
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 22
; Joined path conditions
(push) ; 22
(set-option :timeout 10)
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 22
(set-option :timeout 10)
(assert (not (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))))
(check-sat)
; unsat
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 219 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0))) | live]
; [else-branch: 219 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0)) | dead]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 219 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0)))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@327@01))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))
(assert (=
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))
  $Snap.unit))
; [eval] int___eq__(x_1_0, __prim__int___box__(0)) ==> false
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 23
(pop) ; 23
; Joined path conditions
(push) ; 23
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 23
; Joined path conditions
(push) ; 23
; [then-branch: 220 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0)) | dead]
; [else-branch: 220 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0))) | live]
(push) ; 24
; [else-branch: 220 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0)))]
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))
  $Snap.unit))
; [eval] p1_5 && !bypass1_2 ==> true
; [eval] p1_5 && !bypass1_2
(push) ; 23
; [then-branch: 221 | !(p1_5@204@01) | live]
; [else-branch: 221 | p1_5@204@01 | live]
(push) ; 24
; [then-branch: 221 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 24
(push) ; 24
; [else-branch: 221 | p1_5@204@01]
; [eval] !bypass1_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_2@315@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_2@315@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 222 | p1_5@204@01 && !(bypass1_2@315@01) | live]
; [else-branch: 222 | !(p1_5@204@01 && !(bypass1_2@315@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 222 | p1_5@204@01 && !(bypass1_2@315@01)]
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))
  $Snap.unit))
; [eval] p2_5 && !bypass2_2 ==> true
; [eval] p2_5 && !bypass2_2
(push) ; 23
; [then-branch: 223 | !(p2_5@205@01) | live]
; [else-branch: 223 | p2_5@205@01 | live]
(push) ; 24
; [then-branch: 223 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 24
(push) ; 24
; [else-branch: 223 | p2_5@205@01]
; [eval] !bypass2_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_2@316@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_2@316@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 224 | p2_5@205@01 && !(bypass2_2@316@01) | live]
; [else-branch: 224 | !(p2_5@205@01 && !(bypass2_2@316@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 224 | p2_5@205@01 && !(bypass2_2@316@01)]
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))
  $Snap.unit))
; [eval] p1_5 && !bypass1_2 ==> true
; [eval] p1_5 && !bypass1_2
(push) ; 23
; [then-branch: 225 | !(p1_5@204@01) | live]
; [else-branch: 225 | p1_5@204@01 | live]
(push) ; 24
; [then-branch: 225 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 24
(push) ; 24
; [else-branch: 225 | p1_5@204@01]
; [eval] !bypass1_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_2@315@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_2@315@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 226 | p1_5@204@01 && !(bypass1_2@315@01) | live]
; [else-branch: 226 | !(p1_5@204@01 && !(bypass1_2@315@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 226 | p1_5@204@01 && !(bypass1_2@315@01)]
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))
  $Snap.unit))
; [eval] p2_5 && !bypass2_2 ==> true
; [eval] p2_5 && !bypass2_2
(push) ; 23
; [then-branch: 227 | !(p2_5@205@01) | live]
; [else-branch: 227 | p2_5@205@01 | live]
(push) ; 24
; [then-branch: 227 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 24
(push) ; 24
; [else-branch: 227 | p2_5@205@01]
; [eval] !bypass2_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_2@316@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_2@316@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 228 | p2_5@205@01 && !(bypass2_2@316@01) | live]
; [else-branch: 228 | !(p2_5@205@01 && !(bypass2_2@316@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 228 | p2_5@205@01 && !(bypass2_2@316@01)]
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))
  $Snap.unit))
; [eval] p1_5 && !bypass1_2 ==> !cond_5 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] p1_5 && !bypass1_2
(push) ; 23
; [then-branch: 229 | !(p1_5@204@01) | live]
; [else-branch: 229 | p1_5@204@01 | live]
(push) ; 24
; [then-branch: 229 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 24
(push) ; 24
; [else-branch: 229 | p1_5@204@01]
; [eval] !bypass1_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_2@315@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_2@315@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 230 | p1_5@204@01 && !(bypass1_2@315@01) | live]
; [else-branch: 230 | !(p1_5@204@01 && !(bypass1_2@315@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 230 | p1_5@204@01 && !(bypass1_2@315@01)]
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
; [eval] !cond_5 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] !cond_5
(push) ; 25
(push) ; 26
(set-option :timeout 10)
(assert (not cond_5@317@01))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 231 | !(cond_5@317@01) | dead]
; [else-branch: 231 | cond_5@317@01 | live]
(set-option :timeout 0)
(push) ; 26
; [else-branch: 231 | cond_5@317@01]
(assert cond_5@317@01)
(pop) ; 26
(pop) ; 25
; Joined path conditions
(assert cond_5@317@01)
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=>
  (and p1_5@204@01 (not bypass1_2@315@01))
  (and p1_5@204@01 (not bypass1_2@315@01) cond_5@317@01)))
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))
  $Snap.unit))
; [eval] p2_5 && !bypass2_2 ==> !cond_6 ==> int___eq__(x_1_0, __prim__int___box__(0))
; [eval] p2_5 && !bypass2_2
(push) ; 23
; [then-branch: 232 | !(p2_5@205@01) | live]
; [else-branch: 232 | p2_5@205@01 | live]
(push) ; 24
; [then-branch: 232 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 24
(push) ; 24
; [else-branch: 232 | p2_5@205@01]
; [eval] !bypass2_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_2@316@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_2@316@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 233 | p2_5@205@01 && !(bypass2_2@316@01) | live]
; [else-branch: 233 | !(p2_5@205@01 && !(bypass2_2@316@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 233 | p2_5@205@01 && !(bypass2_2@316@01)]
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] !cond_6 ==> int___eq__(x_1_0, __prim__int___box__(0))
; [eval] !cond_6
(push) ; 25
(push) ; 26
(set-option :timeout 10)
(assert (not cond_6@318@01))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 234 | !(cond_6@318@01) | dead]
; [else-branch: 234 | cond_6@318@01 | live]
(set-option :timeout 0)
(push) ; 26
; [else-branch: 234 | cond_6@318@01]
(assert cond_6@318@01)
(pop) ; 26
(pop) ; 25
; Joined path conditions
(assert cond_6@318@01)
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=>
  (and p2_5@205@01 (not bypass2_2@316@01))
  (and p2_5@205@01 (not bypass2_2@316@01) cond_6@318@01)))
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))
  $Snap.unit))
; [eval] bypass1_2 ==> tmp1_30 == _loop_measures_2
(push) ; 23
; [then-branch: 235 | bypass1_2@315@01 | dead]
; [else-branch: 235 | !(bypass1_2@315@01) | live]
(push) ; 24
; [else-branch: 235 | !(bypass1_2@315@01)]
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))
  $Snap.unit))
; [eval] bypass1_2 ==> tmp1_31 == _loop_check_before_2
(push) ; 23
; [then-branch: 236 | bypass1_2@315@01 | dead]
; [else-branch: 236 | !(bypass1_2@315@01) | live]
(push) ; 24
; [else-branch: 236 | !(bypass1_2@315@01)]
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))))
  $Snap.unit))
; [eval] bypass2_2 ==> tmp2_30 == _loop_measures_2_0
(push) ; 23
; [then-branch: 237 | bypass2_2@316@01 | dead]
; [else-branch: 237 | !(bypass2_2@316@01) | live]
(push) ; 24
; [else-branch: 237 | !(bypass2_2@316@01)]
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))))
  $Snap.unit))
; [eval] bypass2_2 ==> tmp2_31 == _loop_check_before_2_0
(push) ; 23
; [then-branch: 238 | bypass2_2@316@01 | dead]
; [else-branch: 238 | !(bypass2_2@316@01) | live]
(push) ; 24
; [else-branch: 238 | !(bypass2_2@316@01)]
(pop) ; 24
(pop) ; 23
; Joined path conditions
(pop) ; 22
(pop) ; 21
(pop) ; 20
(push) ; 20
; [else-branch: 215 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@327@01))) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@327@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@327@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))
; [eval] p2_5 && !bypass2_2
(push) ; 21
; [then-branch: 239 | !(p2_5@205@01) | live]
; [else-branch: 239 | p2_5@205@01 | live]
(push) ; 22
; [then-branch: 239 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 22
(push) ; 22
; [else-branch: 239 | p2_5@205@01]
(assert p2_5@205@01)
; [eval] !bypass2_2
(pop) ; 22
(pop) ; 21
; Joined path conditions
; Joined path conditions
(push) ; 21
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_2@316@01)))))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_2@316@01))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [then-branch: 240 | p2_5@205@01 && !(bypass2_2@316@01) | live]
; [else-branch: 240 | !(p2_5@205@01 && !(bypass2_2@316@01)) | dead]
(set-option :timeout 0)
(push) ; 21
; [then-branch: 240 | p2_5@205@01 && !(bypass2_2@316@01)]
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] !int___eq__(x_1_0, __prim__int___box__(0))
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 22
(pop) ; 22
; Joined path conditions
(push) ; 22
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 22
; Joined path conditions
(push) ; 22
(set-option :timeout 10)
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))
(check-sat)
; unsat
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 241 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0))) | dead]
; [else-branch: 241 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0)) | live]
(set-option :timeout 0)
(push) ; 22
; [else-branch: 241 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0))]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@327@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))
  $Snap.unit))
; [eval] p1_5 && !bypass1_2 ==> true
; [eval] p1_5 && !bypass1_2
(push) ; 23
; [then-branch: 242 | !(p1_5@204@01) | live]
; [else-branch: 242 | p1_5@204@01 | live]
(push) ; 24
; [then-branch: 242 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 24
(push) ; 24
; [else-branch: 242 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_2@315@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_2@315@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 243 | p1_5@204@01 && !(bypass1_2@315@01) | live]
; [else-branch: 243 | !(p1_5@204@01 && !(bypass1_2@315@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 243 | p1_5@204@01 && !(bypass1_2@315@01)]
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))
  $Snap.unit))
; [eval] p2_5 && !bypass2_2 ==> true
; [eval] p2_5 && !bypass2_2
(push) ; 23
; [then-branch: 244 | !(p2_5@205@01) | live]
; [else-branch: 244 | p2_5@205@01 | live]
(push) ; 24
; [then-branch: 244 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 24
(push) ; 24
; [else-branch: 244 | p2_5@205@01]
; [eval] !bypass2_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_2@316@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_2@316@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 245 | p2_5@205@01 && !(bypass2_2@316@01) | live]
; [else-branch: 245 | !(p2_5@205@01 && !(bypass2_2@316@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 245 | p2_5@205@01 && !(bypass2_2@316@01)]
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))
  $Snap.unit))
; [eval] p1_5 && !bypass1_2 ==> true
; [eval] p1_5 && !bypass1_2
(push) ; 23
; [then-branch: 246 | !(p1_5@204@01) | live]
; [else-branch: 246 | p1_5@204@01 | live]
(push) ; 24
; [then-branch: 246 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 24
(push) ; 24
; [else-branch: 246 | p1_5@204@01]
; [eval] !bypass1_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_2@315@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_2@315@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 247 | p1_5@204@01 && !(bypass1_2@315@01) | live]
; [else-branch: 247 | !(p1_5@204@01 && !(bypass1_2@315@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 247 | p1_5@204@01 && !(bypass1_2@315@01)]
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))
  $Snap.unit))
; [eval] p2_5 && !bypass2_2 ==> true
; [eval] p2_5 && !bypass2_2
(push) ; 23
; [then-branch: 248 | !(p2_5@205@01) | live]
; [else-branch: 248 | p2_5@205@01 | live]
(push) ; 24
; [then-branch: 248 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 24
(push) ; 24
; [else-branch: 248 | p2_5@205@01]
; [eval] !bypass2_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_2@316@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_2@316@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 249 | p2_5@205@01 && !(bypass2_2@316@01) | live]
; [else-branch: 249 | !(p2_5@205@01 && !(bypass2_2@316@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 249 | p2_5@205@01 && !(bypass2_2@316@01)]
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))
  $Snap.unit))
; [eval] p1_5 && !bypass1_2 ==> !cond_5 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] p1_5 && !bypass1_2
(push) ; 23
; [then-branch: 250 | !(p1_5@204@01) | live]
; [else-branch: 250 | p1_5@204@01 | live]
(push) ; 24
; [then-branch: 250 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 24
(push) ; 24
; [else-branch: 250 | p1_5@204@01]
; [eval] !bypass1_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_2@315@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_2@315@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 251 | p1_5@204@01 && !(bypass1_2@315@01) | live]
; [else-branch: 251 | !(p1_5@204@01 && !(bypass1_2@315@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 251 | p1_5@204@01 && !(bypass1_2@315@01)]
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
; [eval] !cond_5 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] !cond_5
(push) ; 25
(push) ; 26
(set-option :timeout 10)
(assert (not cond_5@317@01))
(check-sat)
; unknown
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (not cond_5@317@01)))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 252 | !(cond_5@317@01) | live]
; [else-branch: 252 | cond_5@317@01 | dead]
(set-option :timeout 0)
(push) ; 26
; [then-branch: 252 | !(cond_5@317@01)]
(assert (not cond_5@317@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 27
; [eval] _isDefined(id)
(push) ; 28
(pop) ; 28
; Joined path conditions
(pop) ; 27
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 27
(pop) ; 27
; Joined path conditions
(push) ; 27
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 27
; Joined path conditions
(pop) ; 26
(pop) ; 25
; Joined path conditions
(assert (not cond_5@317@01))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=>
  (and p1_5@204@01 (not bypass1_2@315@01))
  (and p1_5@204@01 (not bypass1_2@315@01) (not cond_5@317@01))))
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
(assert (=>
  (and (and p1_5@204@01 (not bypass1_2@315@01)) (not cond_5@317@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))
  $Snap.unit))
; [eval] p2_5 && !bypass2_2 ==> !cond_6 ==> int___eq__(x_1_0, __prim__int___box__(0))
; [eval] p2_5 && !bypass2_2
(push) ; 23
; [then-branch: 253 | !(p2_5@205@01) | live]
; [else-branch: 253 | p2_5@205@01 | live]
(push) ; 24
; [then-branch: 253 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 24
(push) ; 24
; [else-branch: 253 | p2_5@205@01]
; [eval] !bypass2_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_2@316@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_2@316@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 254 | p2_5@205@01 && !(bypass2_2@316@01) | live]
; [else-branch: 254 | !(p2_5@205@01 && !(bypass2_2@316@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 254 | p2_5@205@01 && !(bypass2_2@316@01)]
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] !cond_6 ==> int___eq__(x_1_0, __prim__int___box__(0))
; [eval] !cond_6
(push) ; 25
(push) ; 26
(set-option :timeout 10)
(assert (not cond_6@318@01))
(check-sat)
; unknown
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (not cond_6@318@01)))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 255 | !(cond_6@318@01) | live]
; [else-branch: 255 | cond_6@318@01 | dead]
(set-option :timeout 0)
(push) ; 26
; [then-branch: 255 | !(cond_6@318@01)]
(assert (not cond_6@318@01))
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 27
(pop) ; 27
; Joined path conditions
(push) ; 27
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 27
; Joined path conditions
(pop) ; 26
(pop) ; 25
; Joined path conditions
(assert (not cond_6@318@01))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=>
  (and p2_5@205@01 (not bypass2_2@316@01))
  (and p2_5@205@01 (not bypass2_2@316@01) (not cond_6@318@01))))
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
(assert (=>
  (and (and p2_5@205@01 (not bypass2_2@316@01)) (not cond_6@318@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))
  $Snap.unit))
; [eval] bypass1_2 ==> tmp1_30 == _loop_measures_2
(push) ; 23
; [then-branch: 256 | bypass1_2@315@01 | dead]
; [else-branch: 256 | !(bypass1_2@315@01) | live]
(push) ; 24
; [else-branch: 256 | !(bypass1_2@315@01)]
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))
  $Snap.unit))
; [eval] bypass1_2 ==> tmp1_31 == _loop_check_before_2
(push) ; 23
; [then-branch: 257 | bypass1_2@315@01 | dead]
; [else-branch: 257 | !(bypass1_2@315@01) | live]
(push) ; 24
; [else-branch: 257 | !(bypass1_2@315@01)]
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))))
  $Snap.unit))
; [eval] bypass2_2 ==> tmp2_30 == _loop_measures_2_0
(push) ; 23
; [then-branch: 258 | bypass2_2@316@01 | dead]
; [else-branch: 258 | !(bypass2_2@316@01) | live]
(push) ; 24
; [else-branch: 258 | !(bypass2_2@316@01)]
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))))
  $Snap.unit))
; [eval] bypass2_2 ==> tmp2_31 == _loop_check_before_2_0
(push) ; 23
; [then-branch: 259 | bypass2_2@316@01 | dead]
; [else-branch: 259 | !(bypass2_2@316@01) | live]
(push) ; 24
; [else-branch: 259 | !(bypass2_2@316@01)]
(pop) ; 24
(pop) ; 23
; Joined path conditions
(pop) ; 22
(pop) ; 21
(pop) ; 20
(pop) ; 19
(pop) ; 18
(push) ; 18
; Loop head block: Establish invariant
; [eval] p1_5 && !bypass1_2 ==> true
; [eval] p1_5 && !bypass1_2
(push) ; 19
; [then-branch: 260 | !(p1_5@204@01) | live]
; [else-branch: 260 | p1_5@204@01 | live]
(push) ; 20
; [then-branch: 260 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 20
(push) ; 20
; [else-branch: 260 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_2
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(push) ; 19
(push) ; 20
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_2@315@01)))))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_2@315@01))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 261 | p1_5@204@01 && !(bypass1_2@315@01) | live]
; [else-branch: 261 | !(p1_5@204@01 && !(bypass1_2@315@01)) | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 261 | p1_5@204@01 && !(bypass1_2@315@01)]
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
(pop) ; 20
(pop) ; 19
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
; [eval] p2_5 && !bypass2_2 ==> true
; [eval] p2_5 && !bypass2_2
(push) ; 19
; [then-branch: 262 | !(p2_5@205@01) | live]
; [else-branch: 262 | p2_5@205@01 | live]
(push) ; 20
; [then-branch: 262 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 20
(push) ; 20
; [else-branch: 262 | p2_5@205@01]
(assert p2_5@205@01)
; [eval] !bypass2_2
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(assert (or p2_5@205@01 (not p2_5@205@01)))
(push) ; 19
(push) ; 20
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_2@316@01)))))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_2@316@01))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 263 | p2_5@205@01 && !(bypass2_2@316@01) | live]
; [else-branch: 263 | !(p2_5@205@01 && !(bypass2_2@316@01)) | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 263 | p2_5@205@01 && !(bypass2_2@316@01)]
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
(pop) ; 20
(pop) ; 19
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] p1_5 && !bypass1_2 ==> !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) ==> (int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) ==> false) && true
; [eval] p1_5 && !bypass1_2
(push) ; 19
; [then-branch: 264 | !(p1_5@204@01) | live]
; [else-branch: 264 | p1_5@204@01 | live]
(push) ; 20
; [then-branch: 264 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 20
(push) ; 20
; [else-branch: 264 | p1_5@204@01]
; [eval] !bypass1_2
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(push) ; 19
(push) ; 20
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_2@315@01)))))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_2@315@01))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 265 | p1_5@204@01 && !(bypass1_2@315@01) | live]
; [else-branch: 265 | !(p1_5@204@01 && !(bypass1_2@315@01)) | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 265 | p1_5@204@01 && !(bypass1_2@315@01)]
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) ==> (int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) ==> false) && true
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 21
; [eval] _isDefined(id)
(push) ; 22
(pop) ; 22
; Joined path conditions
(pop) ; 21
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 21
(pop) ; 21
; Joined path conditions
(push) ; 21
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 21
; Joined path conditions
(push) ; 21
(push) ; 22
(set-option :timeout 10)
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 22
(set-option :timeout 10)
(assert (not (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 266 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))) | live]
; [else-branch: 266 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) | live]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 266 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
; [eval] (int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) ==> false) && true
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) ==> false
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 23
; [eval] _isDefined(id)
(push) ; 24
(pop) ; 24
; Joined path conditions
(pop) ; 23
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 23
(pop) ; 23
; Joined path conditions
(push) ; 23
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 23
; Joined path conditions
(push) ; 23
; [then-branch: 267 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) | dead]
; [else-branch: 267 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))) | live]
(push) ; 24
; [else-branch: 267 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)))]
(pop) ; 24
(pop) ; 23
; Joined path conditions
(push) ; 23
; [then-branch: 268 | False | live]
; [else-branch: 268 | True | live]
(push) ; 24
; [then-branch: 268 | False]
(assert false)
(pop) ; 24
(push) ; 24
; [else-branch: 268 | True]
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(pop) ; 22
(push) ; 22
; [else-branch: 266 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
(pop) ; 22
(pop) ; 21
; Joined path conditions
; Joined path conditions
(assert (or
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
(pop) ; 20
(pop) ; 19
; Joined path conditions
(assert (=>
  (and p1_5@204@01 (not bypass1_2@315@01))
  (and
    p1_5@204@01
    (not bypass1_2@315@01)
    (or
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))
      (not
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))))
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
; [eval] p2_5 && !bypass2_2 ==> !int___eq__(x_1_0, __prim__int___box__(0)) ==> (int___eq__(x_1_0, __prim__int___box__(0)) ==> false) && true
; [eval] p2_5 && !bypass2_2
(push) ; 19
; [then-branch: 269 | !(p2_5@205@01) | live]
; [else-branch: 269 | p2_5@205@01 | live]
(push) ; 20
; [then-branch: 269 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 20
(push) ; 20
; [else-branch: 269 | p2_5@205@01]
; [eval] !bypass2_2
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(push) ; 19
(push) ; 20
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_2@316@01)))))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_2@316@01))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 270 | p2_5@205@01 && !(bypass2_2@316@01) | live]
; [else-branch: 270 | !(p2_5@205@01 && !(bypass2_2@316@01)) | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 270 | p2_5@205@01 && !(bypass2_2@316@01)]
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] !int___eq__(x_1_0, __prim__int___box__(0)) ==> (int___eq__(x_1_0, __prim__int___box__(0)) ==> false) && true
; [eval] !int___eq__(x_1_0, __prim__int___box__(0))
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 21
(pop) ; 21
; Joined path conditions
(push) ; 21
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 21
; Joined path conditions
(push) ; 21
(push) ; 22
(set-option :timeout 10)
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 22
(set-option :timeout 10)
(assert (not (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 271 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0))) | live]
; [else-branch: 271 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0)) | live]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 271 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0)))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))
; [eval] (int___eq__(x_1_0, __prim__int___box__(0)) ==> false) && true
; [eval] int___eq__(x_1_0, __prim__int___box__(0)) ==> false
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 23
(pop) ; 23
; Joined path conditions
(push) ; 23
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 23
; Joined path conditions
(push) ; 23
; [then-branch: 272 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0)) | dead]
; [else-branch: 272 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0))) | live]
(push) ; 24
; [else-branch: 272 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0)))]
(pop) ; 24
(pop) ; 23
; Joined path conditions
(push) ; 23
; [then-branch: 273 | False | live]
; [else-branch: 273 | True | live]
(push) ; 24
; [then-branch: 273 | False]
(assert false)
(pop) ; 24
(push) ; 24
; [else-branch: 273 | True]
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(pop) ; 22
(push) ; 22
; [else-branch: 271 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0))]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))
(pop) ; 22
(pop) ; 21
; Joined path conditions
; Joined path conditions
(assert (or
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))))
(pop) ; 20
(pop) ; 19
; Joined path conditions
(assert (=>
  (and p2_5@205@01 (not bypass2_2@316@01))
  (and
    p2_5@205@01
    (not bypass2_2@316@01)
    (or
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))
      (not
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))))))
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] p1_5 && !bypass1_2 ==> !idle1_2 ==> _loop_check_before_2 ==> _loop_termination_flag_2 || (!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_15: Ref [MustInvokeBounded(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBounded] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnbounded] :: false)))))
; [eval] p1_5 && !bypass1_2
(push) ; 19
; [then-branch: 274 | !(p1_5@204@01) | live]
; [else-branch: 274 | p1_5@204@01 | live]
(push) ; 20
; [then-branch: 274 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 20
(push) ; 20
; [else-branch: 274 | p1_5@204@01]
; [eval] !bypass1_2
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(push) ; 19
(push) ; 20
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_2@315@01)))))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_2@315@01))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 275 | p1_5@204@01 && !(bypass1_2@315@01) | live]
; [else-branch: 275 | !(p1_5@204@01 && !(bypass1_2@315@01)) | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 275 | p1_5@204@01 && !(bypass1_2@315@01)]
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
; [eval] !idle1_2 ==> _loop_check_before_2 ==> _loop_termination_flag_2 || (!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_15: Ref [MustInvokeBounded(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBounded] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnbounded] :: false)))))
; [eval] !idle1_2
(push) ; 21
(push) ; 22
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 276 | True | live]
; [else-branch: 276 | False | dead]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 276 | True]
; [eval] _loop_check_before_2 ==> _loop_termination_flag_2 || (!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_15: Ref [MustInvokeBounded(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBounded] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnbounded] :: false)))))
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 277 | True | live]
; [else-branch: 277 | False | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 277 | True]
; [eval] _loop_termination_flag_2 || (!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_15: Ref [MustInvokeBounded(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBounded] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnbounded] :: false)))))
(push) ; 25
; [then-branch: 278 | _loop_termination_flag_2@312@01 | live]
; [else-branch: 278 | !(_loop_termination_flag_2@312@01) | live]
(push) ; 26
; [then-branch: 278 | _loop_termination_flag_2@312@01]
(assert _loop_termination_flag_2@312@01)
(pop) ; 26
(push) ; 26
; [else-branch: 278 | !(_loop_termination_flag_2@312@01)]
(assert (not _loop_termination_flag_2@312@01))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 27
; [eval] _isDefined(id)
(push) ; 28
(pop) ; 28
; Joined path conditions
(pop) ; 27
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 27
(pop) ; 27
; Joined path conditions
(push) ; 27
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 27
; Joined path conditions
(push) ; 27
; [then-branch: 279 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))) | live]
; [else-branch: 279 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) | live]
(push) ; 28
; [then-branch: 279 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
(pop) ; 28
(push) ; 28
; [else-branch: 279 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
; [eval] perm(MustTerminate(_cthread_159)) == none && ((forperm _r_15: Ref [MustInvokeBounded(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBounded] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_159)) == none
; [eval] perm(MustTerminate(_cthread_159))
(push) ; 29
; [then-branch: 280 | False | live]
; [else-branch: 280 | True | live]
(push) ; 30
; [then-branch: 280 | False]
(assert false)
(pop) ; 30
(push) ; 30
; [else-branch: 280 | True]
; [eval] (forperm _r_15: Ref [MustInvokeBounded(_r_15)] :: false)
(push) ; 31
; [then-branch: 281 | False | live]
; [else-branch: 281 | True | live]
(push) ; 32
; [then-branch: 281 | False]
(assert false)
(pop) ; 32
(push) ; 32
; [else-branch: 281 | True]
; [eval] (forperm _r_15: Ref [MustInvokeUnbounded(_r_15)] :: false)
(push) ; 33
; [then-branch: 282 | False | live]
; [else-branch: 282 | True | live]
(push) ; 34
; [then-branch: 282 | False]
(assert false)
(pop) ; 34
(push) ; 34
; [else-branch: 282 | True]
; [eval] (forperm _r_15: Ref [_r_15.MustReleaseBounded] :: false)
(push) ; 35
; [then-branch: 283 | False | live]
; [else-branch: 283 | True | live]
(push) ; 36
; [then-branch: 283 | False]
(assert false)
(pop) ; 36
(push) ; 36
; [else-branch: 283 | True]
; [eval] (forperm _r_15: Ref [_r_15.MustReleaseUnbounded] :: false)
(pop) ; 36
(pop) ; 35
; Joined path conditions
; Joined path conditions
(pop) ; 34
(pop) ; 33
; Joined path conditions
; Joined path conditions
(pop) ; 32
(pop) ; 31
; Joined path conditions
; Joined path conditions
(pop) ; 30
(pop) ; 29
; Joined path conditions
; Joined path conditions
(pop) ; 28
(pop) ; 27
; Joined path conditions
; Joined path conditions
(assert (or
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
(pop) ; 26
(pop) ; 25
; Joined path conditions
; Joined path conditions
(assert (=>
  (not _loop_termination_flag_2@312@01)
  (and
    (not _loop_termination_flag_2@312@01)
    (or
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))
      (not
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))))
(assert (or (not _loop_termination_flag_2@312@01) _loop_termination_flag_2@312@01))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (and
  (=>
    (not _loop_termination_flag_2@312@01)
    (and
      (not _loop_termination_flag_2@312@01)
      (or
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))
        (not
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))))
  (or (not _loop_termination_flag_2@312@01) _loop_termination_flag_2@312@01)))
(pop) ; 22
(pop) ; 21
; Joined path conditions
(assert (and
  (=>
    (not _loop_termination_flag_2@312@01)
    (and
      (not _loop_termination_flag_2@312@01)
      (or
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))
        (not
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))))
  (or (not _loop_termination_flag_2@312@01) _loop_termination_flag_2@312@01)))
(pop) ; 20
(pop) ; 19
; Joined path conditions
(assert (=>
  (and p1_5@204@01 (not bypass1_2@315@01))
  (and
    p1_5@204@01
    (not bypass1_2@315@01)
    (=>
      (not _loop_termination_flag_2@312@01)
      (and
        (not _loop_termination_flag_2@312@01)
        (or
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))
          (not
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))))
    (or (not _loop_termination_flag_2@312@01) _loop_termination_flag_2@312@01))))
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
; [eval] p2_5 && !bypass2_2 ==> !idle2_2 ==> _loop_check_before_2_0 ==> _loop_termination_flag_2_0 || (!int___eq__(x_1_0, __prim__int___box__(0)) || perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_15: Ref [MustInvokeBounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBoundedp] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnboundedp] :: false)))))
; [eval] p2_5 && !bypass2_2
(push) ; 19
; [then-branch: 284 | !(p2_5@205@01) | live]
; [else-branch: 284 | p2_5@205@01 | live]
(push) ; 20
; [then-branch: 284 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 20
(push) ; 20
; [else-branch: 284 | p2_5@205@01]
; [eval] !bypass2_2
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(push) ; 19
(push) ; 20
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_2@316@01)))))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_2@316@01))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 285 | p2_5@205@01 && !(bypass2_2@316@01) | live]
; [else-branch: 285 | !(p2_5@205@01 && !(bypass2_2@316@01)) | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 285 | p2_5@205@01 && !(bypass2_2@316@01)]
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] !idle2_2 ==> _loop_check_before_2_0 ==> _loop_termination_flag_2_0 || (!int___eq__(x_1_0, __prim__int___box__(0)) || perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_15: Ref [MustInvokeBounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBoundedp] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnboundedp] :: false)))))
; [eval] !idle2_2
(push) ; 21
(push) ; 22
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 286 | True | live]
; [else-branch: 286 | False | dead]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 286 | True]
; [eval] _loop_check_before_2_0 ==> _loop_termination_flag_2_0 || (!int___eq__(x_1_0, __prim__int___box__(0)) || perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_15: Ref [MustInvokeBounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBoundedp] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnboundedp] :: false)))))
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 287 | True | live]
; [else-branch: 287 | False | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 287 | True]
; [eval] _loop_termination_flag_2_0 || (!int___eq__(x_1_0, __prim__int___box__(0)) || perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_15: Ref [MustInvokeBounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBoundedp] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnboundedp] :: false)))))
(push) ; 25
; [then-branch: 288 | _loop_termination_flag_2_0@314@01 | live]
; [else-branch: 288 | !(_loop_termination_flag_2_0@314@01) | live]
(push) ; 26
; [then-branch: 288 | _loop_termination_flag_2_0@314@01]
(assert _loop_termination_flag_2_0@314@01)
(pop) ; 26
(push) ; 26
; [else-branch: 288 | !(_loop_termination_flag_2_0@314@01)]
(assert (not _loop_termination_flag_2_0@314@01))
; [eval] !int___eq__(x_1_0, __prim__int___box__(0))
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 27
(pop) ; 27
; Joined path conditions
(push) ; 27
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 27
; Joined path conditions
(push) ; 27
; [then-branch: 289 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0))) | live]
; [else-branch: 289 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0)) | live]
(push) ; 28
; [then-branch: 289 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0)))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))
(pop) ; 28
(push) ; 28
; [else-branch: 289 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0))]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))
; [eval] perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_15: Ref [MustInvokeBounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBoundedp] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnboundedp] :: false))))
; [eval] perm(MustTerminate_0(_cthread_159_0)) == none
; [eval] perm(MustTerminate_0(_cthread_159_0))
(push) ; 29
; [then-branch: 290 | False | live]
; [else-branch: 290 | True | live]
(push) ; 30
; [then-branch: 290 | False]
(assert false)
(pop) ; 30
(push) ; 30
; [else-branch: 290 | True]
; [eval] (forperm _r_15: Ref [MustInvokeBounded_0(_r_15)] :: false)
(push) ; 31
; [then-branch: 291 | False | live]
; [else-branch: 291 | True | live]
(push) ; 32
; [then-branch: 291 | False]
(assert false)
(pop) ; 32
(push) ; 32
; [else-branch: 291 | True]
; [eval] (forperm _r_15: Ref [MustInvokeUnbounded_0(_r_15)] :: false)
(push) ; 33
; [then-branch: 292 | False | live]
; [else-branch: 292 | True | live]
(push) ; 34
; [then-branch: 292 | False]
(assert false)
(pop) ; 34
(push) ; 34
; [else-branch: 292 | True]
; [eval] (forperm _r_15: Ref [_r_15.MustReleaseBoundedp] :: false)
(push) ; 35
; [then-branch: 293 | False | live]
; [else-branch: 293 | True | live]
(push) ; 36
; [then-branch: 293 | False]
(assert false)
(pop) ; 36
(push) ; 36
; [else-branch: 293 | True]
; [eval] (forperm _r_15: Ref [_r_15.MustReleaseUnboundedp] :: false)
(pop) ; 36
(pop) ; 35
; Joined path conditions
; Joined path conditions
(pop) ; 34
(pop) ; 33
; Joined path conditions
; Joined path conditions
(pop) ; 32
(pop) ; 31
; Joined path conditions
; Joined path conditions
(pop) ; 30
(pop) ; 29
; Joined path conditions
; Joined path conditions
(pop) ; 28
(pop) ; 27
; Joined path conditions
; Joined path conditions
(assert (or
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))))
(pop) ; 26
(pop) ; 25
; Joined path conditions
; Joined path conditions
(assert (=>
  (not _loop_termination_flag_2_0@314@01)
  (and
    (not _loop_termination_flag_2_0@314@01)
    (or
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))
      (not
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))))))
(assert (or (not _loop_termination_flag_2_0@314@01) _loop_termination_flag_2_0@314@01))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (and
  (=>
    (not _loop_termination_flag_2_0@314@01)
    (and
      (not _loop_termination_flag_2_0@314@01)
      (or
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))
        (not
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))))
  (or (not _loop_termination_flag_2_0@314@01) _loop_termination_flag_2_0@314@01)))
(pop) ; 22
(pop) ; 21
; Joined path conditions
(assert (and
  (=>
    (not _loop_termination_flag_2_0@314@01)
    (and
      (not _loop_termination_flag_2_0@314@01)
      (or
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))
        (not
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))))
  (or (not _loop_termination_flag_2_0@314@01) _loop_termination_flag_2_0@314@01)))
(pop) ; 20
(pop) ; 19
; Joined path conditions
(assert (=>
  (and p2_5@205@01 (not bypass2_2@316@01))
  (and
    p2_5@205@01
    (not bypass2_2@316@01)
    (=>
      (not _loop_termination_flag_2_0@314@01)
      (and
        (not _loop_termination_flag_2_0@314@01)
        (or
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))
          (not
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))))
    (or
      (not _loop_termination_flag_2_0@314@01)
      _loop_termination_flag_2_0@314@01))))
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] p1_5 && !bypass1_2 ==> !idle1_2 ==> !_loop_check_before_2 ==> (forperm _r_15: Ref [MustInvokeBounded(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBounded] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnbounded] :: false)))
; [eval] p1_5 && !bypass1_2
(push) ; 19
; [then-branch: 294 | !(p1_5@204@01) | live]
; [else-branch: 294 | p1_5@204@01 | live]
(push) ; 20
; [then-branch: 294 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 20
(push) ; 20
; [else-branch: 294 | p1_5@204@01]
; [eval] !bypass1_2
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(push) ; 19
(push) ; 20
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_2@315@01)))))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_2@315@01))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 295 | p1_5@204@01 && !(bypass1_2@315@01) | live]
; [else-branch: 295 | !(p1_5@204@01 && !(bypass1_2@315@01)) | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 295 | p1_5@204@01 && !(bypass1_2@315@01)]
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
; [eval] !idle1_2 ==> !_loop_check_before_2 ==> (forperm _r_15: Ref [MustInvokeBounded(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBounded] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnbounded] :: false)))
; [eval] !idle1_2
(push) ; 21
(push) ; 22
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 296 | True | live]
; [else-branch: 296 | False | dead]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 296 | True]
; [eval] !_loop_check_before_2 ==> (forperm _r_15: Ref [MustInvokeBounded(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBounded] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_2
(push) ; 23
; [then-branch: 297 | False | dead]
; [else-branch: 297 | True | live]
(push) ; 24
; [else-branch: 297 | True]
(pop) ; 24
(pop) ; 23
; Joined path conditions
(pop) ; 22
(pop) ; 21
; Joined path conditions
(pop) ; 20
(pop) ; 19
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
; [eval] p2_5 && !bypass2_2 ==> !idle2_2 ==> !_loop_check_before_2_0 ==> (forperm _r_15: Ref [MustInvokeBounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBoundedp] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnboundedp] :: false)))
; [eval] p2_5 && !bypass2_2
(push) ; 19
; [then-branch: 298 | !(p2_5@205@01) | live]
; [else-branch: 298 | p2_5@205@01 | live]
(push) ; 20
; [then-branch: 298 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 20
(push) ; 20
; [else-branch: 298 | p2_5@205@01]
; [eval] !bypass2_2
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(push) ; 19
(push) ; 20
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_2@316@01)))))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_2@316@01))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 299 | p2_5@205@01 && !(bypass2_2@316@01) | live]
; [else-branch: 299 | !(p2_5@205@01 && !(bypass2_2@316@01)) | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 299 | p2_5@205@01 && !(bypass2_2@316@01)]
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] !idle2_2 ==> !_loop_check_before_2_0 ==> (forperm _r_15: Ref [MustInvokeBounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBoundedp] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnboundedp] :: false)))
; [eval] !idle2_2
(push) ; 21
(push) ; 22
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 300 | True | live]
; [else-branch: 300 | False | dead]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 300 | True]
; [eval] !_loop_check_before_2_0 ==> (forperm _r_15: Ref [MustInvokeBounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBoundedp] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnboundedp] :: false)))
; [eval] !_loop_check_before_2_0
(push) ; 23
; [then-branch: 301 | False | dead]
; [else-branch: 301 | True | live]
(push) ; 24
; [else-branch: 301 | True]
(pop) ; 24
(pop) ; 23
; Joined path conditions
(pop) ; 22
(pop) ; 21
; Joined path conditions
(pop) ; 20
(pop) ; 19
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] p1_5 && !bypass1_2 ==> !cond_5 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] p1_5 && !bypass1_2
(push) ; 19
; [then-branch: 302 | !(p1_5@204@01) | live]
; [else-branch: 302 | p1_5@204@01 | live]
(push) ; 20
; [then-branch: 302 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 20
(push) ; 20
; [else-branch: 302 | p1_5@204@01]
; [eval] !bypass1_2
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(push) ; 19
(push) ; 20
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_2@315@01)))))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_2@315@01))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 303 | p1_5@204@01 && !(bypass1_2@315@01) | live]
; [else-branch: 303 | !(p1_5@204@01 && !(bypass1_2@315@01)) | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 303 | p1_5@204@01 && !(bypass1_2@315@01)]
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
; [eval] !cond_5 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] !cond_5
(push) ; 21
(push) ; 22
(set-option :timeout 10)
(assert (not cond_5@317@01))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 22
(set-option :timeout 10)
(assert (not (not cond_5@317@01)))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 304 | !(cond_5@317@01) | live]
; [else-branch: 304 | cond_5@317@01 | live]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 304 | !(cond_5@317@01)]
(assert (not cond_5@317@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 23
; [eval] _isDefined(id)
(push) ; 24
(pop) ; 24
; Joined path conditions
(pop) ; 23
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 23
(pop) ; 23
; Joined path conditions
(push) ; 23
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 23
; Joined path conditions
(pop) ; 22
(push) ; 22
; [else-branch: 304 | cond_5@317@01]
(assert cond_5@317@01)
(pop) ; 22
(pop) ; 21
; Joined path conditions
; Joined path conditions
(assert (or cond_5@317@01 (not cond_5@317@01)))
(pop) ; 20
(pop) ; 19
; Joined path conditions
(assert (=>
  (and p1_5@204@01 (not bypass1_2@315@01))
  (and p1_5@204@01 (not bypass1_2@315@01) (or cond_5@317@01 (not cond_5@317@01)))))
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
(push) ; 19
(assert (not (=>
  (and (and p1_5@204@01 (not bypass1_2@315@01)) (not cond_5@317@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and (and p1_5@204@01 (not bypass1_2@315@01)) (not cond_5@317@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
; [eval] p2_5 && !bypass2_2 ==> !cond_6 ==> int___eq__(x_1_0, __prim__int___box__(0))
; [eval] p2_5 && !bypass2_2
(push) ; 19
; [then-branch: 305 | !(p2_5@205@01) | live]
; [else-branch: 305 | p2_5@205@01 | live]
(push) ; 20
; [then-branch: 305 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 20
(push) ; 20
; [else-branch: 305 | p2_5@205@01]
; [eval] !bypass2_2
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(push) ; 19
(push) ; 20
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_2@316@01)))))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_2@316@01))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 306 | p2_5@205@01 && !(bypass2_2@316@01) | live]
; [else-branch: 306 | !(p2_5@205@01 && !(bypass2_2@316@01)) | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 306 | p2_5@205@01 && !(bypass2_2@316@01)]
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] !cond_6 ==> int___eq__(x_1_0, __prim__int___box__(0))
; [eval] !cond_6
(push) ; 21
(push) ; 22
(set-option :timeout 10)
(assert (not cond_6@318@01))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 22
(set-option :timeout 10)
(assert (not (not cond_6@318@01)))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 307 | !(cond_6@318@01) | live]
; [else-branch: 307 | cond_6@318@01 | live]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 307 | !(cond_6@318@01)]
(assert (not cond_6@318@01))
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 23
(pop) ; 23
; Joined path conditions
(push) ; 23
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 23
; Joined path conditions
(pop) ; 22
(push) ; 22
; [else-branch: 307 | cond_6@318@01]
(assert cond_6@318@01)
(pop) ; 22
(pop) ; 21
; Joined path conditions
; Joined path conditions
(assert (or cond_6@318@01 (not cond_6@318@01)))
(pop) ; 20
(pop) ; 19
; Joined path conditions
(assert (=>
  (and p2_5@205@01 (not bypass2_2@316@01))
  (and p2_5@205@01 (not bypass2_2@316@01) (or cond_6@318@01 (not cond_6@318@01)))))
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
(push) ; 19
(assert (not (=>
  (and (and p2_5@205@01 (not bypass2_2@316@01)) (not cond_6@318@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and (and p2_5@205@01 (not bypass2_2@316@01)) (not cond_6@318@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))
; [eval] bypass1_2 ==> tmp1_30 == _loop_measures_2
(push) ; 19
; [then-branch: 308 | bypass1_2@315@01 | dead]
; [else-branch: 308 | !(bypass1_2@315@01) | live]
(push) ; 20
; [else-branch: 308 | !(bypass1_2@315@01)]
(pop) ; 20
(pop) ; 19
; Joined path conditions
; [eval] bypass1_2 ==> tmp1_31 == _loop_check_before_2
(push) ; 19
; [then-branch: 309 | bypass1_2@315@01 | dead]
; [else-branch: 309 | !(bypass1_2@315@01) | live]
(push) ; 20
; [else-branch: 309 | !(bypass1_2@315@01)]
(pop) ; 20
(pop) ; 19
; Joined path conditions
; [eval] bypass2_2 ==> tmp2_30 == _loop_measures_2_0
(push) ; 19
; [then-branch: 310 | bypass2_2@316@01 | dead]
; [else-branch: 310 | !(bypass2_2@316@01) | live]
(push) ; 20
; [else-branch: 310 | !(bypass2_2@316@01)]
(pop) ; 20
(pop) ; 19
; Joined path conditions
; [eval] bypass2_2 ==> tmp2_31 == _loop_check_before_2_0
(push) ; 19
; [then-branch: 311 | bypass2_2@316@01 | dead]
; [else-branch: 311 | !(bypass2_2@316@01) | live]
(push) ; 20
; [else-branch: 311 | !(bypass2_2@316@01)]
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 19
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@327@01))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))
(assert (=
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))
  $Snap.unit))
(assert (=>
  (and p1_5@204@01 (not bypass1_2@315@01))
  (and p1_5@204@01 (not bypass1_2@315@01) cond_5@317@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))
  $Snap.unit))
(assert (=>
  (and p2_5@205@01 (not bypass2_2@316@01))
  (and p2_5@205@01 (not bypass2_2@316@01) cond_6@318@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))))
  $Snap.unit))
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second $t@327@01)))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@327@01))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@327@01)))))))
(assert (=
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@327@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@327@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@327@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))
(assert (= $t@327@01 ($Snap.combine ($Snap.first $t@327@01) ($Snap.second $t@327@01))))
(assert (= ($Snap.first $t@327@01) $Snap.unit))
(assert (=>
  (and p1_5@204@01 (not bypass1_2@315@01))
  (<= _residue_159@210@01 _residue_163@230@01)))
(assert (=
  ($Snap.second $t@327@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@327@01))
    ($Snap.second ($Snap.second $t@327@01)))))
(assert (= ($Snap.first ($Snap.second $t@327@01)) $Snap.unit))
(assert (=>
  (and p2_5@205@01 (not bypass2_2@316@01))
  (<= _residue_159_0@211@01 _residue_163_0@231@01)))
(assert (=
  ($Snap.second ($Snap.second $t@327@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@327@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 20
; [eval] p1_5 && (!bypass1_2 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))) || p2_5 && (!bypass2_2 && int___eq__(x_1_0, __prim__int___box__(0)))
; [eval] p1_5 && (!bypass1_2 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)))
(push) ; 21
; [then-branch: 312 | !(p1_5@204@01) | live]
; [else-branch: 312 | p1_5@204@01 | live]
(push) ; 22
; [then-branch: 312 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 22
(push) ; 22
; [else-branch: 312 | p1_5@204@01]
; [eval] !bypass1_2
(push) ; 23
; [then-branch: 313 | bypass1_2@315@01 | live]
; [else-branch: 313 | !(bypass1_2@315@01) | live]
(push) ; 24
; [then-branch: 313 | bypass1_2@315@01]
(assert bypass1_2@315@01)
(pop) ; 24
(push) ; 24
; [else-branch: 313 | !(bypass1_2@315@01)]
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 25
; [eval] _isDefined(id)
(push) ; 26
(pop) ; 26
; Joined path conditions
(pop) ; 25
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 25
(pop) ; 25
; Joined path conditions
(push) ; 25
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 25
; Joined path conditions
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_2@315@01) bypass1_2@315@01))
(pop) ; 22
(pop) ; 21
; Joined path conditions
; Joined path conditions
(assert (=> p1_5@204@01 (or (not bypass1_2@315@01) bypass1_2@315@01)))
(push) ; 21
; [then-branch: 314 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) | live]
; [else-branch: 314 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))) | live]
(push) ; 22
; [then-branch: 314 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_2@315@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
(pop) ; 22
(push) ; 22
; [else-branch: 314 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))))
; [eval] p2_5 && (!bypass2_2 && int___eq__(x_1_0, __prim__int___box__(0)))
(push) ; 23
; [then-branch: 315 | !(p2_5@205@01) | live]
; [else-branch: 315 | p2_5@205@01 | live]
(push) ; 24
; [then-branch: 315 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 24
(push) ; 24
; [else-branch: 315 | p2_5@205@01]
; [eval] !bypass2_2
(push) ; 25
; [then-branch: 316 | bypass2_2@316@01 | live]
; [else-branch: 316 | !(bypass2_2@316@01) | live]
(push) ; 26
; [then-branch: 316 | bypass2_2@316@01]
(assert bypass2_2@316@01)
(pop) ; 26
(push) ; 26
; [else-branch: 316 | !(bypass2_2@316@01)]
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 27
(pop) ; 27
; Joined path conditions
(push) ; 27
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 27
; Joined path conditions
(pop) ; 26
(pop) ; 25
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_2@316@01) bypass2_2@316@01))
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (or (not bypass2_2@316@01) bypass2_2@316@01)))
(pop) ; 22
(pop) ; 21
; Joined path conditions
(assert (=>
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
  (and
    p1_5@204@01
    (not bypass1_2@315@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_2@315@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
  (and
    (not
      (and
        p1_5@204@01
        (and
          (not bypass1_2@315@01)
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
    (=> p2_5@205@01 (or (not bypass2_2@316@01) bypass2_2@316@01)))))
(assert (or
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_2@315@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))))
(pop) ; 20
(push) ; 20
; [eval] !(p1_5 && (!bypass1_2 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))) || p2_5 && (!bypass2_2 && int___eq__(x_1_0, __prim__int___box__(0))))
; [eval] p1_5 && (!bypass1_2 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))) || p2_5 && (!bypass2_2 && int___eq__(x_1_0, __prim__int___box__(0)))
; [eval] p1_5 && (!bypass1_2 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)))
(push) ; 21
; [then-branch: 317 | !(p1_5@204@01) | live]
; [else-branch: 317 | p1_5@204@01 | live]
(push) ; 22
; [then-branch: 317 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 22
(push) ; 22
; [else-branch: 317 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_2
(push) ; 23
; [then-branch: 318 | bypass1_2@315@01 | live]
; [else-branch: 318 | !(bypass1_2@315@01) | live]
(push) ; 24
; [then-branch: 318 | bypass1_2@315@01]
(assert bypass1_2@315@01)
(pop) ; 24
(push) ; 24
; [else-branch: 318 | !(bypass1_2@315@01)]
(assert (not bypass1_2@315@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 25
; [eval] _isDefined(id)
(push) ; 26
(pop) ; 26
; Joined path conditions
(pop) ; 25
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 25
(pop) ; 25
; Joined path conditions
(push) ; 25
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 25
; Joined path conditions
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_2@315@01) bypass1_2@315@01))
(pop) ; 22
(pop) ; 21
; Joined path conditions
; Joined path conditions
(assert (=> p1_5@204@01 (and p1_5@204@01 (or (not bypass1_2@315@01) bypass1_2@315@01))))
(push) ; 21
; [then-branch: 319 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) | live]
; [else-branch: 319 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))) | live]
(push) ; 22
; [then-branch: 319 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_2@315@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
(pop) ; 22
(push) ; 22
; [else-branch: 319 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))))
; [eval] p2_5 && (!bypass2_2 && int___eq__(x_1_0, __prim__int___box__(0)))
(push) ; 23
; [then-branch: 320 | !(p2_5@205@01) | live]
; [else-branch: 320 | p2_5@205@01 | live]
(push) ; 24
; [then-branch: 320 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 24
(push) ; 24
; [else-branch: 320 | p2_5@205@01]
; [eval] !bypass2_2
(push) ; 25
; [then-branch: 321 | bypass2_2@316@01 | live]
; [else-branch: 321 | !(bypass2_2@316@01) | live]
(push) ; 26
; [then-branch: 321 | bypass2_2@316@01]
(assert bypass2_2@316@01)
(pop) ; 26
(push) ; 26
; [else-branch: 321 | !(bypass2_2@316@01)]
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 27
(pop) ; 27
; Joined path conditions
(push) ; 27
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 27
; Joined path conditions
(pop) ; 26
(pop) ; 25
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_2@316@01) bypass2_2@316@01))
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (or (not bypass2_2@316@01) bypass2_2@316@01)))
(pop) ; 22
(pop) ; 21
; Joined path conditions
(assert (=>
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
  (and
    p1_5@204@01
    (not bypass1_2@315@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_2@315@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
  (and
    (not
      (and
        p1_5@204@01
        (and
          (not bypass1_2@315@01)
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
    (=> p2_5@205@01 (or (not bypass2_2@316@01) bypass2_2@316@01)))))
(assert (or
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_2@315@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))))
(pop) ; 20
; Loop head block: Follow loop-internal edges
; [eval] p1_5 && (!bypass1_2 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))) || p2_5 && (!bypass2_2 && int___eq__(x_1_0, __prim__int___box__(0)))
; [eval] p1_5 && (!bypass1_2 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)))
(push) ; 20
; [then-branch: 322 | !(p1_5@204@01) | live]
; [else-branch: 322 | p1_5@204@01 | live]
(push) ; 21
; [then-branch: 322 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 21
(push) ; 21
; [else-branch: 322 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_2
(push) ; 22
; [then-branch: 323 | bypass1_2@315@01 | live]
; [else-branch: 323 | !(bypass1_2@315@01) | live]
(push) ; 23
; [then-branch: 323 | bypass1_2@315@01]
(assert bypass1_2@315@01)
(pop) ; 23
(push) ; 23
; [else-branch: 323 | !(bypass1_2@315@01)]
(assert (not bypass1_2@315@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 24
; [eval] _isDefined(id)
(push) ; 25
(pop) ; 25
; Joined path conditions
(pop) ; 24
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 24
(pop) ; 24
; Joined path conditions
(push) ; 24
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 24
; Joined path conditions
(pop) ; 23
(pop) ; 22
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_2@315@01) bypass1_2@315@01))
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(assert (=> p1_5@204@01 (and p1_5@204@01 (or (not bypass1_2@315@01) bypass1_2@315@01))))
(push) ; 20
; [then-branch: 324 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) | live]
; [else-branch: 324 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))) | live]
(push) ; 21
; [then-branch: 324 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_2@315@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
(pop) ; 21
(push) ; 21
; [else-branch: 324 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))))
; [eval] p2_5 && (!bypass2_2 && int___eq__(x_1_0, __prim__int___box__(0)))
(push) ; 22
; [then-branch: 325 | !(p2_5@205@01) | live]
; [else-branch: 325 | p2_5@205@01 | live]
(push) ; 23
; [then-branch: 325 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 23
(push) ; 23
; [else-branch: 325 | p2_5@205@01]
; [eval] !bypass2_2
(push) ; 24
; [then-branch: 326 | bypass2_2@316@01 | live]
; [else-branch: 326 | !(bypass2_2@316@01) | live]
(push) ; 25
; [then-branch: 326 | bypass2_2@316@01]
(assert bypass2_2@316@01)
(pop) ; 25
(push) ; 25
; [else-branch: 326 | !(bypass2_2@316@01)]
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 26
(pop) ; 26
; Joined path conditions
(push) ; 26
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 26
; Joined path conditions
(pop) ; 25
(pop) ; 24
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_2@316@01) bypass2_2@316@01))
(pop) ; 23
(pop) ; 22
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (or (not bypass2_2@316@01) bypass2_2@316@01)))
(pop) ; 21
(pop) ; 20
; Joined path conditions
(assert (=>
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
  (and
    p1_5@204@01
    (not bypass1_2@315@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_2@315@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
  (and
    (not
      (and
        p1_5@204@01
        (and
          (not bypass1_2@315@01)
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
    (=> p2_5@205@01 (or (not bypass2_2@316@01) bypass2_2@316@01)))))
(assert (or
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_2@315@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))))
(push) ; 20
(set-option :timeout 10)
(assert (not (not
  (or
    (and
      p1_5@204@01
      (and
        (not bypass1_2@315@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
    (and
      p2_5@205@01
      (and
        (not bypass2_2@316@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 327 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) || p2_5@205@01 && !(bypass2_2@316@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0)) | dead]
; [else-branch: 327 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) || p2_5@205@01 && !(bypass2_2@316@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0))) | live]
(set-option :timeout 0)
(push) ; 20
; [else-branch: 327 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) || p2_5@205@01 && !(bypass2_2@316@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0)))]
(assert (not
  (or
    (and
      p1_5@204@01
      (and
        (not bypass1_2@315@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
    (and
      p2_5@205@01
      (and
        (not bypass2_2@316@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))))))
(pop) ; 20
; [eval] !(p1_5 && (!bypass1_2 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))) || p2_5 && (!bypass2_2 && int___eq__(x_1_0, __prim__int___box__(0))))
; [eval] p1_5 && (!bypass1_2 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))) || p2_5 && (!bypass2_2 && int___eq__(x_1_0, __prim__int___box__(0)))
; [eval] p1_5 && (!bypass1_2 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)))
(push) ; 20
; [then-branch: 328 | !(p1_5@204@01) | live]
; [else-branch: 328 | p1_5@204@01 | live]
(push) ; 21
; [then-branch: 328 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 21
(push) ; 21
; [else-branch: 328 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_2
(push) ; 22
; [then-branch: 329 | bypass1_2@315@01 | live]
; [else-branch: 329 | !(bypass1_2@315@01) | live]
(push) ; 23
; [then-branch: 329 | bypass1_2@315@01]
(assert bypass1_2@315@01)
(pop) ; 23
(push) ; 23
; [else-branch: 329 | !(bypass1_2@315@01)]
(assert (not bypass1_2@315@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 24
; [eval] _isDefined(id)
(push) ; 25
(pop) ; 25
; Joined path conditions
(pop) ; 24
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 24
(pop) ; 24
; Joined path conditions
(push) ; 24
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 24
; Joined path conditions
(pop) ; 23
(pop) ; 22
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_2@315@01) bypass1_2@315@01))
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(push) ; 20
; [then-branch: 330 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) | live]
; [else-branch: 330 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))) | live]
(push) ; 21
; [then-branch: 330 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_2@315@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
(pop) ; 21
(push) ; 21
; [else-branch: 330 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))))
; [eval] p2_5 && (!bypass2_2 && int___eq__(x_1_0, __prim__int___box__(0)))
(push) ; 22
; [then-branch: 331 | !(p2_5@205@01) | live]
; [else-branch: 331 | p2_5@205@01 | live]
(push) ; 23
; [then-branch: 331 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 23
(push) ; 23
; [else-branch: 331 | p2_5@205@01]
; [eval] !bypass2_2
(push) ; 24
; [then-branch: 332 | bypass2_2@316@01 | live]
; [else-branch: 332 | !(bypass2_2@316@01) | live]
(push) ; 25
; [then-branch: 332 | bypass2_2@316@01]
(assert bypass2_2@316@01)
(pop) ; 25
(push) ; 25
; [else-branch: 332 | !(bypass2_2@316@01)]
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 26
(pop) ; 26
; Joined path conditions
(push) ; 26
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 26
; Joined path conditions
(pop) ; 25
(pop) ; 24
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_2@316@01) bypass2_2@316@01))
(pop) ; 23
(pop) ; 22
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (or (not bypass2_2@316@01) bypass2_2@316@01)))
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(push) ; 20
(set-option :timeout 10)
(assert (not (or
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
  (and
    p2_5@205@01
    (and
      (not bypass2_2@316@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))))))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (not
  (or
    (and
      p1_5@204@01
      (and
        (not bypass1_2@315@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
    (and
      p2_5@205@01
      (and
        (not bypass2_2@316@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 333 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) || p2_5@205@01 && !(bypass2_2@316@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0))) | live]
; [else-branch: 333 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) || p2_5@205@01 && !(bypass2_2@316@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0)) | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 333 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) || p2_5@205@01 && !(bypass2_2@316@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0)))]
(assert (not
  (or
    (and
      p1_5@204@01
      (and
        (not bypass1_2@315@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
    (and
      p2_5@205@01
      (and
        (not bypass2_2@316@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))))))
(push) ; 21
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [then-branch: 334 | p1_5@204@01 | live]
; [else-branch: 334 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 21
; [then-branch: 334 | p1_5@204@01]
(assert p1_5@204@01)
; [exec]
; exhale perm(MustTerminate(_cthread_159)) > none ==>
;   acc(MustTerminate(_cthread_159), perm(MustTerminate(_cthread_159)) -
;   _loop_original_must_terminate_2)
; [eval] perm(MustTerminate(_cthread_159)) > none
; [eval] perm(MustTerminate(_cthread_159))
(push) ; 22
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 335 | True | live]
; [else-branch: 335 | False | dead]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 335 | True]
; [eval] perm(MustTerminate(_cthread_159)) - _loop_original_must_terminate_2
; [eval] perm(MustTerminate(_cthread_159))
(push) ; 23
(assert (not (or
  (= (- $Perm.Write _loop_original_must_terminate_2@311@01) $Perm.No)
  (< $Perm.No (- $Perm.Write _loop_original_must_terminate_2@311@01)))))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
(push) ; 23
(set-option :timeout 10)
(assert (not (=
  (-
    $Perm.Write
    ($Perm.min
      $Perm.Write
      (- $Perm.Write _loop_original_must_terminate_2@311@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 23
(assert (not (or
  (=
    (-
      (- $Perm.Write _loop_original_must_terminate_2@311@01)
      ($Perm.min
        $Perm.Write
        (- $Perm.Write _loop_original_must_terminate_2@311@01)))
    $Perm.No)
  (<
    (-
      (- $Perm.Write _loop_original_must_terminate_2@311@01)
      ($Perm.min
        $Perm.Write
        (- $Perm.Write _loop_original_must_terminate_2@311@01)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
(push) ; 23
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
; [then-branch: 336 | p2_5@205@01 | live]
; [else-branch: 336 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 23
; [then-branch: 336 | p2_5@205@01]
; [exec]
; exhale perm(MustTerminate_0(_cthread_159_0)) > none ==>
;   acc(MustTerminate_0(_cthread_159_0), perm(MustTerminate_0(_cthread_159_0)) -
;   _loop_original_must_terminate_2_0)
; [eval] perm(MustTerminate_0(_cthread_159_0)) > none
; [eval] perm(MustTerminate_0(_cthread_159_0))
(push) ; 24
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 337 | True | live]
; [else-branch: 337 | False | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 337 | True]
; [eval] perm(MustTerminate_0(_cthread_159_0)) - _loop_original_must_terminate_2_0
; [eval] perm(MustTerminate_0(_cthread_159_0))
(push) ; 25
(assert (not (or
  (= (- $Perm.Write _loop_original_must_terminate_2_0@313@01) $Perm.No)
  (< $Perm.No (- $Perm.Write _loop_original_must_terminate_2_0@313@01)))))
(check-sat)
; unsat
(pop) ; 25
; 0.00s
; (get-info :all-statistics)
(push) ; 25
(set-option :timeout 10)
(assert (not (=
  (-
    $Perm.Write
    ($Perm.min
      $Perm.Write
      (- $Perm.Write _loop_original_must_terminate_2_0@313@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 25
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 25
(assert (not (or
  (=
    (-
      (- $Perm.Write _loop_original_must_terminate_2_0@313@01)
      ($Perm.min
        $Perm.Write
        (- $Perm.Write _loop_original_must_terminate_2_0@313@01)))
    $Perm.No)
  (<
    (-
      (- $Perm.Write _loop_original_must_terminate_2_0@313@01)
      ($Perm.min
        $Perm.Write
        (- $Perm.Write _loop_original_must_terminate_2_0@313@01)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 25
; 0.00s
; (get-info :all-statistics)
; [eval] p1_5 || p2_5
(push) ; 25
; [then-branch: 338 | p1_5@204@01 | live]
; [else-branch: 338 | !(p1_5@204@01) | live]
(push) ; 26
; [then-branch: 338 | p1_5@204@01]
(pop) ; 26
(push) ; 26
; [else-branch: 338 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 26
(pop) ; 25
; Joined path conditions
; Joined path conditions
(push) ; 25
(set-option :timeout 10)
(assert (not (not (or p1_5@204@01 p2_5@205@01))))
(check-sat)
; unknown
(pop) ; 25
; 0.00s
; (get-info :all-statistics)
; [then-branch: 339 | p1_5@204@01 || p2_5@205@01 | live]
; [else-branch: 339 | !(p1_5@204@01 || p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 25
; [then-branch: 339 | p1_5@204@01 || p2_5@205@01]
; [exec]
; var tmp1_32: Ref
(declare-const tmp1_32@328@01 $Ref)
; [exec]
; var tmp2_32: Ref
(declare-const tmp2_32@329@01 $Ref)
; [exec]
; var tmp1_33: Seq[Measure$]
(declare-const tmp1_33@330@01 Seq<Measure$>)
; [exec]
; var tmp2_33: Seq[Measure$]
(declare-const tmp2_33@331@01 Seq<Measure$>)
; [exec]
; var tmp1_34: Perm
(declare-const tmp1_34@332@01 $Perm)
; [exec]
; var tmp2_34: Perm
(declare-const tmp2_34@333@01 $Perm)
; [exec]
; var tmp1_35: Ref
(declare-const tmp1_35@334@01 $Ref)
; [exec]
; var tmp2_35: Ref
(declare-const tmp2_35@335@01 $Ref)
; [exec]
; var tmp1_36: Perm
(declare-const tmp1_36@336@01 $Perm)
; [exec]
; var tmp2_36: Perm
(declare-const tmp2_36@337@01 $Perm)
(push) ; 26
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 340 | p1_5@204@01 | live]
; [else-branch: 340 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 26
; [then-branch: 340 | p1_5@204@01]
; [exec]
; tmp1_32 := _cthread_159
; [exec]
; tmp1_33 := _method_measures_159
; [exec]
; tmp1_34 := _residue_159
; [exec]
; tmp1_35 := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 27
(pop) ; 27
; Joined path conditions
(declare-const tmp1_35@338@01 $Ref)
(assert (= tmp1_35@338@01 (__prim__int___box__ $Snap.unit 0)))
(push) ; 27
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 27
; 0.00s
; (get-info :all-statistics)
; [then-branch: 341 | p2_5@205@01 | live]
; [else-branch: 341 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 27
; [then-branch: 341 | p2_5@205@01]
; [exec]
; tmp2_32 := _cthread_159_0
; [exec]
; tmp2_33 := _method_measures_159_0
; [exec]
; tmp2_34 := _residue_159_0
; [exec]
; tmp2_35 := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 28
(pop) ; 28
; Joined path conditions
(declare-const tmp2_35@339@01 $Ref)
(assert (= tmp2_35@339@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; tmp1_36, tmp2_36 := _print(p1_5, p2_5, tmp1_32, tmp2_32, tmp1_33, tmp2_33, tmp1_34,
;   tmp2_34, tmp1_35, tmp2_35)
; [eval] p1 ==> _cthread_156 != null
(push) ; 28
(push) ; 29
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [then-branch: 342 | p1_5@204@01 | live]
; [else-branch: 342 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 342 | p1_5@204@01]
; [eval] _cthread_156 != null
(pop) ; 29
(pop) ; 28
; Joined path conditions
; [eval] p2 ==> _cthread_156_0 != null
(push) ; 28
(push) ; 29
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [then-branch: 343 | p2_5@205@01 | live]
; [else-branch: 343 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 343 | p2_5@205@01]
; [eval] _cthread_156_0 != null
(pop) ; 29
(pop) ; 28
; Joined path conditions
; [eval] p1 ==> issubtype(typeof(_cthread_156), Thread_0())
(push) ; 28
(push) ; 29
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [then-branch: 344 | p1_5@204@01 | live]
; [else-branch: 344 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 344 | p1_5@204@01]
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
(pop) ; 29
(pop) ; 28
; Joined path conditions
; [eval] p2 ==> issubtype(typeof(_cthread_156_0), Thread_0())
(push) ; 28
(push) ; 29
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [then-branch: 345 | p2_5@205@01 | live]
; [else-branch: 345 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 345 | p2_5@205@01]
; [eval] issubtype(typeof(_cthread_156_0), Thread_0())
; [eval] typeof(_cthread_156_0)
; [eval] Thread_0()
(pop) ; 29
(pop) ; 28
; Joined path conditions
; [eval] p1 ==> issubtype(typeof(val), int())
(push) ; 28
(push) ; 29
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [then-branch: 346 | p1_5@204@01 | live]
; [else-branch: 346 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 346 | p1_5@204@01]
; [eval] issubtype(typeof(val), int())
; [eval] typeof(val)
; [eval] int()
(pop) ; 29
(pop) ; 28
; Joined path conditions
(push) ; 28
(assert (not (=>
  p1_5@204@01
  (issubtype<Bool> (typeof<PyType> tmp1_35@338@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p1_5@204@01
  (issubtype<Bool> (typeof<PyType> tmp1_35@338@01) (as int<PyType>  PyType))))
; [eval] p2 ==> issubtype(typeof(val_1), int())
(push) ; 28
(push) ; 29
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [then-branch: 347 | p2_5@205@01 | live]
; [else-branch: 347 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 347 | p2_5@205@01]
; [eval] issubtype(typeof(val_1), int())
; [eval] typeof(val_1)
; [eval] int()
(pop) ; 29
(pop) ; 28
; Joined path conditions
(push) ; 28
(assert (not (=>
  p2_5@205@01
  (issubtype<Bool> (typeof<PyType> tmp2_35@339@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p2_5@205@01
  (issubtype<Bool> (typeof<PyType> tmp2_35@339@01) (as int<PyType>  PyType))))
; [eval] p1 == p2
; [eval] p1 && p2 ==> val == val_1
; [eval] p1 && p2
(push) ; 28
; [then-branch: 348 | !(p1_5@204@01) | live]
; [else-branch: 348 | p1_5@204@01 | live]
(push) ; 29
; [then-branch: 348 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 29
(push) ; 29
; [else-branch: 348 | p1_5@204@01]
(pop) ; 29
(pop) ; 28
; Joined path conditions
; Joined path conditions
(push) ; 28
(push) ; 29
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 p2_5@205@01))))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (and p1_5@204@01 p2_5@205@01)))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [then-branch: 349 | p1_5@204@01 && p2_5@205@01 | live]
; [else-branch: 349 | !(p1_5@204@01 && p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 349 | p1_5@204@01 && p2_5@205@01]
(assert (and p1_5@204@01 p2_5@205@01))
; [eval] val == val_1
(pop) ; 29
(pop) ; 28
; Joined path conditions
(assert (and p1_5@204@01 p2_5@205@01))
(push) ; 28
(assert (not (=> (and p1_5@204@01 p2_5@205@01) (= tmp1_35@338@01 tmp2_35@339@01))))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(assert (=> (and p1_5@204@01 p2_5@205@01) (= tmp1_35@338@01 tmp2_35@339@01)))
; [eval] p1 ==> perm(MustTerminate(_cthread_156)) == none && ((forperm _r_1: Ref [MustInvokeBounded(_r_1)] :: false) && ((forperm _r_1: Ref [MustInvokeUnbounded(_r_1)] :: false) && ((forperm _r_1: Ref [_r_1.MustReleaseBounded] :: false) && (forperm _r_1: Ref [_r_1.MustReleaseUnbounded] :: false))))
(push) ; 28
(push) ; 29
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [then-branch: 350 | p1_5@204@01 | live]
; [else-branch: 350 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 350 | p1_5@204@01]
; [eval] perm(MustTerminate(_cthread_156)) == none && ((forperm _r_1: Ref [MustInvokeBounded(_r_1)] :: false) && ((forperm _r_1: Ref [MustInvokeUnbounded(_r_1)] :: false) && ((forperm _r_1: Ref [_r_1.MustReleaseBounded] :: false) && (forperm _r_1: Ref [_r_1.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_156)) == none
; [eval] perm(MustTerminate(_cthread_156))
(push) ; 30
; [then-branch: 351 | False | live]
; [else-branch: 351 | True | live]
(push) ; 31
; [then-branch: 351 | False]
(assert false)
(pop) ; 31
(push) ; 31
; [else-branch: 351 | True]
; [eval] (forperm _r_1: Ref [MustInvokeBounded(_r_1)] :: false)
(push) ; 32
; [then-branch: 352 | False | live]
; [else-branch: 352 | True | live]
(push) ; 33
; [then-branch: 352 | False]
(assert false)
(pop) ; 33
(push) ; 33
; [else-branch: 352 | True]
; [eval] (forperm _r_1: Ref [MustInvokeUnbounded(_r_1)] :: false)
(push) ; 34
; [then-branch: 353 | False | live]
; [else-branch: 353 | True | live]
(push) ; 35
; [then-branch: 353 | False]
(assert false)
(pop) ; 35
(push) ; 35
; [else-branch: 353 | True]
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseBounded] :: false)
(push) ; 36
; [then-branch: 354 | False | live]
; [else-branch: 354 | True | live]
(push) ; 37
; [then-branch: 354 | False]
(assert false)
(pop) ; 37
(push) ; 37
; [else-branch: 354 | True]
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseUnbounded] :: false)
(pop) ; 37
(pop) ; 36
; Joined path conditions
; Joined path conditions
(pop) ; 35
(pop) ; 34
; Joined path conditions
; Joined path conditions
(pop) ; 33
(pop) ; 32
; Joined path conditions
; Joined path conditions
(pop) ; 31
(pop) ; 30
; Joined path conditions
; Joined path conditions
(pop) ; 29
(pop) ; 28
; Joined path conditions
; [eval] p2 ==> perm(MustTerminate_0(_cthread_156_0)) == none && ((forperm _r_1: Ref [MustInvokeBounded_0(_r_1)] :: false) && ((forperm _r_1: Ref [MustInvokeUnbounded_0(_r_1)] :: false) && ((forperm _r_1: Ref [_r_1.MustReleaseBoundedp] :: false) && (forperm _r_1: Ref [_r_1.MustReleaseUnboundedp] :: false))))
(push) ; 28
(push) ; 29
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [then-branch: 355 | p2_5@205@01 | live]
; [else-branch: 355 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 355 | p2_5@205@01]
; [eval] perm(MustTerminate_0(_cthread_156_0)) == none && ((forperm _r_1: Ref [MustInvokeBounded_0(_r_1)] :: false) && ((forperm _r_1: Ref [MustInvokeUnbounded_0(_r_1)] :: false) && ((forperm _r_1: Ref [_r_1.MustReleaseBoundedp] :: false) && (forperm _r_1: Ref [_r_1.MustReleaseUnboundedp] :: false))))
; [eval] perm(MustTerminate_0(_cthread_156_0)) == none
; [eval] perm(MustTerminate_0(_cthread_156_0))
(push) ; 30
; [then-branch: 356 | False | live]
; [else-branch: 356 | True | live]
(push) ; 31
; [then-branch: 356 | False]
(assert false)
(pop) ; 31
(push) ; 31
; [else-branch: 356 | True]
; [eval] (forperm _r_1: Ref [MustInvokeBounded_0(_r_1)] :: false)
(push) ; 32
; [then-branch: 357 | False | live]
; [else-branch: 357 | True | live]
(push) ; 33
; [then-branch: 357 | False]
(assert false)
(pop) ; 33
(push) ; 33
; [else-branch: 357 | True]
; [eval] (forperm _r_1: Ref [MustInvokeUnbounded_0(_r_1)] :: false)
(push) ; 34
; [then-branch: 358 | False | live]
; [else-branch: 358 | True | live]
(push) ; 35
; [then-branch: 358 | False]
(assert false)
(pop) ; 35
(push) ; 35
; [else-branch: 358 | True]
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseBoundedp] :: false)
(push) ; 36
; [then-branch: 359 | False | live]
; [else-branch: 359 | True | live]
(push) ; 37
; [then-branch: 359 | False]
(assert false)
(pop) ; 37
(push) ; 37
; [else-branch: 359 | True]
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseUnboundedp] :: false)
(pop) ; 37
(pop) ; 36
; Joined path conditions
; Joined path conditions
(pop) ; 35
(pop) ; 34
; Joined path conditions
; Joined path conditions
(pop) ; 33
(pop) ; 32
; Joined path conditions
; Joined path conditions
(pop) ; 31
(pop) ; 30
; Joined path conditions
; Joined path conditions
(pop) ; 29
(pop) ; 28
; Joined path conditions
(declare-const _current_wait_level_156@340@01 $Perm)
(declare-const _current_wait_level_156_0@341@01 $Perm)
(declare-const $t@342@01 $Snap)
(assert (= $t@342@01 ($Snap.combine ($Snap.first $t@342@01) ($Snap.second $t@342@01))))
(assert (= ($Snap.first $t@342@01) $Snap.unit))
; [eval] p1 ==> (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156) && ((forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156) && _residue_156 <= _current_wait_level_156)
(push) ; 28
(push) ; 29
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [then-branch: 360 | p1_5@204@01 | live]
; [else-branch: 360 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 360 | p1_5@204@01]
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156) && ((forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156) && _residue_156 <= _current_wait_level_156)
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156)
(push) ; 30
; [then-branch: 361 | False | live]
; [else-branch: 361 | True | live]
(push) ; 31
; [then-branch: 361 | False]
(assert false)
(pop) ; 31
(push) ; 31
; [else-branch: 361 | True]
; [eval] (forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156)
(push) ; 32
; [then-branch: 362 | False | live]
; [else-branch: 362 | True | live]
(push) ; 33
; [then-branch: 362 | False]
(assert false)
(pop) ; 33
(push) ; 33
; [else-branch: 362 | True]
; [eval] _residue_156 <= _current_wait_level_156
(pop) ; 33
(pop) ; 32
; Joined path conditions
; Joined path conditions
(pop) ; 31
(pop) ; 30
; Joined path conditions
; Joined path conditions
(pop) ; 29
(pop) ; 28
; Joined path conditions
(assert (=> p1_5@204@01 (<= _residue_159@210@01 _current_wait_level_156@340@01)))
(assert (=
  ($Snap.second $t@342@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@342@01))
    ($Snap.second ($Snap.second $t@342@01)))))
(assert (= ($Snap.first ($Snap.second $t@342@01)) $Snap.unit))
; [eval] p2 ==> (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _current_wait_level_156_0) && ((forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _current_wait_level_156_0) && _residue_156_0 <= _current_wait_level_156_0)
(push) ; 28
(push) ; 29
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [then-branch: 363 | p2_5@205@01 | live]
; [else-branch: 363 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 363 | p2_5@205@01]
; [eval] (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _current_wait_level_156_0) && ((forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _current_wait_level_156_0) && _residue_156_0 <= _current_wait_level_156_0)
; [eval] (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _current_wait_level_156_0)
(push) ; 30
; [then-branch: 364 | False | live]
; [else-branch: 364 | True | live]
(push) ; 31
; [then-branch: 364 | False]
(assert false)
(pop) ; 31
(push) ; 31
; [else-branch: 364 | True]
; [eval] (forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _current_wait_level_156_0)
(push) ; 32
; [then-branch: 365 | False | live]
; [else-branch: 365 | True | live]
(push) ; 33
; [then-branch: 365 | False]
(assert false)
(pop) ; 33
(push) ; 33
; [else-branch: 365 | True]
; [eval] _residue_156_0 <= _current_wait_level_156_0
(pop) ; 33
(pop) ; 32
; Joined path conditions
; Joined path conditions
(pop) ; 31
(pop) ; 30
; Joined path conditions
; Joined path conditions
(pop) ; 29
(pop) ; 28
; Joined path conditions
(assert (=> p2_5@205@01 (<= _residue_159_0@211@01 _current_wait_level_156_0@341@01)))
(assert (=
  ($Snap.second ($Snap.second $t@342@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@342@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@342@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@342@01))) $Snap.unit))
; [eval] p1 ==> true
(push) ; 28
(push) ; 29
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [then-branch: 366 | p1_5@204@01 | live]
; [else-branch: 366 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 366 | p1_5@204@01]
(pop) ; 29
(pop) ; 28
; Joined path conditions
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@342@01))) $Snap.unit))
; [eval] p2 ==> true
(push) ; 28
(push) ; 29
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [then-branch: 367 | p2_5@205@01 | live]
; [else-branch: 367 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 367 | p2_5@205@01]
(pop) ; 29
(pop) ; 28
; Joined path conditions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
; [then-branch: 368 | p1_5@204@01 | live]
; [else-branch: 368 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 28
; [then-branch: 368 | p1_5@204@01]
; [exec]
; _cwl_159 := tmp1_36
(push) ; 29
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [then-branch: 369 | p2_5@205@01 | live]
; [else-branch: 369 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 369 | p2_5@205@01]
; [exec]
; _cwl_159_0 := tmp2_36
; [exec]
; inhale p1_5 && p2_5 ==>
;   __prim__bool___box__(int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))) ==
;   __prim__bool___box__(int___eq__(x_1_0, __prim__int___box__(1)))
(declare-const $t@343@01 $Snap)
(assert (= $t@343@01 $Snap.unit))
; [eval] p1_5 && p2_5 ==> __prim__bool___box__(int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))) == __prim__bool___box__(int___eq__(x_1_0, __prim__int___box__(1)))
; [eval] p1_5 && p2_5
(push) ; 30
; [then-branch: 370 | !(p1_5@204@01) | live]
; [else-branch: 370 | p1_5@204@01 | live]
(push) ; 31
; [then-branch: 370 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 31
(push) ; 31
; [else-branch: 370 | p1_5@204@01]
(pop) ; 31
(pop) ; 30
; Joined path conditions
; Joined path conditions
(push) ; 30
(push) ; 31
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 p2_5@205@01))))
(check-sat)
; unknown
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (and p1_5@204@01 p2_5@205@01)))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
; [then-branch: 371 | p1_5@204@01 && p2_5@205@01 | live]
; [else-branch: 371 | !(p1_5@204@01 && p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 31
; [then-branch: 371 | p1_5@204@01 && p2_5@205@01]
(assert (and p1_5@204@01 p2_5@205@01))
; [eval] __prim__bool___box__(int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))) == __prim__bool___box__(int___eq__(x_1_0, __prim__int___box__(1)))
; [eval] __prim__bool___box__(int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 32
; [eval] _isDefined(id)
(push) ; 33
(pop) ; 33
; Joined path conditions
(pop) ; 32
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 32
(assert (__prim__int___box__%precondition $Snap.unit 1))
(pop) ; 32
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 1))
(push) ; 32
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(push) ; 33
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 1)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 1)) (as int<PyType>  PyType)))
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
(pop) ; 32
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 1)) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
(push) ; 32
(assert (__prim__bool___box__%precondition $Snap.unit (int___eq__ ($Snap.combine
  $Snap.unit
  $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
(pop) ; 32
; Joined path conditions
(assert (__prim__bool___box__%precondition $Snap.unit (int___eq__ ($Snap.combine
  $Snap.unit
  $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
; [eval] __prim__bool___box__(int___eq__(x_1_0, __prim__int___box__(1)))
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 32
(pop) ; 32
; Joined path conditions
(push) ; 32
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))
(pop) ; 32
; Joined path conditions
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))
(push) ; 32
(assert (__prim__bool___box__%precondition $Snap.unit (int___eq__ ($Snap.combine
  $Snap.unit
  $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))
(pop) ; 32
; Joined path conditions
(assert (__prim__bool___box__%precondition $Snap.unit (int___eq__ ($Snap.combine
  $Snap.unit
  $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))
(pop) ; 31
(pop) ; 30
; Joined path conditions
(assert (=>
  (and p1_5@204@01 p2_5@205@01)
  (and
    p1_5@204@01
    p2_5@205@01
    (__prim__int___box__%precondition $Snap.unit 1)
    (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 1)) (as int<PyType>  PyType))
    (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))
    (__prim__bool___box__%precondition $Snap.unit (int___eq__ ($Snap.combine
      $Snap.unit
      $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
    (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))
    (__prim__bool___box__%precondition $Snap.unit (int___eq__ ($Snap.combine
      $Snap.unit
      $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))))
(assert (and p1_5@204@01 p2_5@205@01))
(assert (=>
  (and p1_5@204@01 p2_5@205@01)
  (=
    (__prim__bool___box__ $Snap.unit (int___eq__ ($Snap.combine
      $Snap.unit
      $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
    (__prim__bool___box__ $Snap.unit (int___eq__ ($Snap.combine
      $Snap.unit
      $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
; [then-branch: 372 | p1_5@204@01 | live]
; [else-branch: 372 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 30
; [then-branch: 372 | p1_5@204@01]
; [exec]
; _loop_original_must_terminate_3 := perm(MustTerminate(_cthread_159))
; [eval] perm(MustTerminate(_cthread_159))
(declare-const _loop_original_must_terminate_3@344@01 $Perm)
(assert (= _loop_original_must_terminate_3@344@01 $Perm.No))
; [exec]
; _loop_termination_flag_3 := !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 31
; [eval] _isDefined(id)
(push) ; 32
(pop) ; 32
; Joined path conditions
(pop) ; 31
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 31
(assert (__prim__int___box__%precondition $Snap.unit 1))
(pop) ; 31
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 1))
(push) ; 31
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(push) ; 32
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 1)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 1)) (as int<PyType>  PyType)))
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
(pop) ; 31
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 1)) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
(declare-const _loop_termination_flag_3@345@01 Bool)
(assert (=
  _loop_termination_flag_3@345@01
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
; [exec]
; _loop_check_before_3 := true
(push) ; 31
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
; [then-branch: 373 | p2_5@205@01 | live]
; [else-branch: 373 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 31
; [then-branch: 373 | p2_5@205@01]
; [exec]
; _loop_original_must_terminate_3_0 := perm(MustTerminate_0(_cthread_159_0))
; [eval] perm(MustTerminate_0(_cthread_159_0))
(declare-const _loop_original_must_terminate_3_0@346@01 $Perm)
(assert (= _loop_original_must_terminate_3_0@346@01 $Perm.No))
; [exec]
; _loop_termination_flag_3_0 := !int___eq__(x_1_0, __prim__int___box__(1))
; [eval] !int___eq__(x_1_0, __prim__int___box__(1))
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 32
(pop) ; 32
; Joined path conditions
(push) ; 32
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))
(pop) ; 32
; Joined path conditions
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))
(declare-const _loop_termination_flag_3_0@347@01 Bool)
(assert (=
  _loop_termination_flag_3_0@347@01
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))))
; [exec]
; _loop_check_before_3_0 := true
; [exec]
; bypass1_3 := !p1_5
; [eval] !p1_5
(declare-const bypass1_3@348@01 Bool)
(assert (= bypass1_3@348@01 (not p1_5@204@01)))
; [exec]
; bypass2_3 := !p2_5
; [eval] !p2_5
(declare-const bypass2_3@349@01 Bool)
(assert (= bypass2_3@349@01 (not p2_5@205@01)))
(push) ; 32
(set-option :timeout 10)
(assert (not (not bypass1_3@348@01)))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
; [then-branch: 374 | bypass1_3@348@01 | dead]
; [else-branch: 374 | !(bypass1_3@348@01) | live]
(set-option :timeout 0)
(push) ; 32
; [else-branch: 374 | !(bypass1_3@348@01)]
(assert (not bypass1_3@348@01))
(pop) ; 32
; [eval] !bypass1_3
(push) ; 32
(set-option :timeout 10)
(assert (not bypass1_3@348@01))
(check-sat)
; unknown
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (not bypass1_3@348@01)))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
; [then-branch: 375 | !(bypass1_3@348@01) | live]
; [else-branch: 375 | bypass1_3@348@01 | dead]
(set-option :timeout 0)
(push) ; 32
; [then-branch: 375 | !(bypass1_3@348@01)]
(assert (not bypass1_3@348@01))
(push) ; 33
(set-option :timeout 10)
(assert (not (not bypass2_3@349@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
; [then-branch: 376 | bypass2_3@349@01 | dead]
; [else-branch: 376 | !(bypass2_3@349@01) | live]
(set-option :timeout 0)
(push) ; 33
; [else-branch: 376 | !(bypass2_3@349@01)]
(assert (not bypass2_3@349@01))
(pop) ; 33
; [eval] !bypass2_3
(push) ; 33
(set-option :timeout 10)
(assert (not bypass2_3@349@01))
(check-sat)
; unknown
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (not bypass2_3@349@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
; [then-branch: 377 | !(bypass2_3@349@01) | live]
; [else-branch: 377 | bypass2_3@349@01 | dead]
(set-option :timeout 0)
(push) ; 33
; [then-branch: 377 | !(bypass2_3@349@01)]
(assert (not bypass2_3@349@01))
; [exec]
; idle1_3 := false
; [exec]
; idle2_3 := false
; [exec]
; assert (p1_5 ==>
;   !!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))) &&
;   (p2_5 ==> !!int___eq__(x_1_0, __prim__int___box__(1))) ==>
;   p1_5 == p2_5
; [eval] (p1_5 ==> !!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))) && (p2_5 ==> !!int___eq__(x_1_0, __prim__int___box__(1))) ==> p1_5 == p2_5
; [eval] (p1_5 ==> !!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))) && (p2_5 ==> !!int___eq__(x_1_0, __prim__int___box__(1)))
; [eval] p1_5 ==> !!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
(push) ; 34
(push) ; 35
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
; [then-branch: 378 | p1_5@204@01 | live]
; [else-branch: 378 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 35
; [then-branch: 378 | p1_5@204@01]
; [eval] !!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 36
; [eval] _isDefined(id)
(push) ; 37
(pop) ; 37
; Joined path conditions
(pop) ; 36
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 36
(pop) ; 36
; Joined path conditions
(push) ; 36
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 36
; Joined path conditions
(pop) ; 35
(pop) ; 34
; Joined path conditions
(push) ; 34
; [then-branch: 379 | !(p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))) | live]
; [else-branch: 379 | p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) | live]
(push) ; 35
; [then-branch: 379 | !(p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)))]
(assert (not
  (=>
    p1_5@204@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
(pop) ; 35
(push) ; 35
; [else-branch: 379 | p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))]
(assert (=>
  p1_5@204@01
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
; [eval] p2_5 ==> !!int___eq__(x_1_0, __prim__int___box__(1))
(push) ; 36
(push) ; 37
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 37
; 0.00s
; (get-info :all-statistics)
; [then-branch: 380 | p2_5@205@01 | live]
; [else-branch: 380 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 37
; [then-branch: 380 | p2_5@205@01]
; [eval] !!int___eq__(x_1_0, __prim__int___box__(1))
; [eval] !int___eq__(x_1_0, __prim__int___box__(1))
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 38
(pop) ; 38
; Joined path conditions
(push) ; 38
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 38
; Joined path conditions
(pop) ; 37
(pop) ; 36
; Joined path conditions
(pop) ; 35
(pop) ; 34
; Joined path conditions
; Joined path conditions
(assert (=>
  (and
    (=>
      p1_5@204@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
    p1_5@204@01)
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
(assert (or
  (=>
    p1_5@204@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
  (not
    (=>
      p1_5@204@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))))
(push) ; 34
(push) ; 35
(set-option :timeout 10)
(assert (not (not
  (and
    (=>
      p1_5@204@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
    (=>
      p2_5@205@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))))))
(check-sat)
; unknown
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 35
(set-option :timeout 10)
(assert (not (and
  (=>
    p1_5@204@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
  (=>
    p2_5@205@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))))
(check-sat)
; unknown
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
; [then-branch: 381 | p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) && p2_5@205@01 ==> int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1)) | live]
; [else-branch: 381 | !(p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) && p2_5@205@01 ==> int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1))) | live]
(set-option :timeout 0)
(push) ; 35
; [then-branch: 381 | p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) && p2_5@205@01 ==> int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1))]
(assert (and
  (=>
    p1_5@204@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
  (=>
    p2_5@205@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))))
; [eval] p1_5 == p2_5
(pop) ; 35
(push) ; 35
; [else-branch: 381 | !(p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) && p2_5@205@01 ==> int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1)))]
(assert (not
  (and
    (=>
      p1_5@204@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
    (=>
      p2_5@205@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))))
(pop) ; 35
(pop) ; 34
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (=>
        p1_5@204@01
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
      (=>
        p2_5@205@01
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))))
  (and
    (=>
      p1_5@204@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
    (=>
      p2_5@205@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))))
(push) ; 34
(assert (not (=>
  (and
    (=>
      p1_5@204@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
    (=>
      p2_5@205@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))
  (= p1_5@204@01 p2_5@205@01))))
(check-sat)
; unsat
(pop) ; 34
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and
    (=>
      p1_5@204@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
    (=>
      p2_5@205@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))
  (= p1_5@204@01 p2_5@205@01)))
; [exec]
; assert p1_5 && p2_5 ==>
;   !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) ==
;   !int___eq__(x_1_0, __prim__int___box__(1))
; [eval] p1_5 && p2_5 ==> !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) == !int___eq__(x_1_0, __prim__int___box__(1))
; [eval] p1_5 && p2_5
(push) ; 34
; [then-branch: 382 | !(p1_5@204@01) | live]
; [else-branch: 382 | p1_5@204@01 | live]
(push) ; 35
; [then-branch: 382 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 35
(push) ; 35
; [else-branch: 382 | p1_5@204@01]
(pop) ; 35
(pop) ; 34
; Joined path conditions
; Joined path conditions
(push) ; 34
(push) ; 35
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 p2_5@205@01))))
(check-sat)
; unknown
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 35
(set-option :timeout 10)
(assert (not (and p1_5@204@01 p2_5@205@01)))
(check-sat)
; unsat
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
; [then-branch: 383 | p1_5@204@01 && p2_5@205@01 | live]
; [else-branch: 383 | !(p1_5@204@01 && p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 35
; [then-branch: 383 | p1_5@204@01 && p2_5@205@01]
(assert (and p1_5@204@01 p2_5@205@01))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) == !int___eq__(x_1_0, __prim__int___box__(1))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 36
; [eval] _isDefined(id)
(push) ; 37
(pop) ; 37
; Joined path conditions
(pop) ; 36
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 36
(pop) ; 36
; Joined path conditions
(push) ; 36
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 36
; Joined path conditions
; [eval] !int___eq__(x_1_0, __prim__int___box__(1))
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 36
(pop) ; 36
; Joined path conditions
(push) ; 36
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 36
; Joined path conditions
(pop) ; 35
(pop) ; 34
; Joined path conditions
(assert (and p1_5@204@01 p2_5@205@01))
(push) ; 34
(assert (not (=>
  (and p1_5@204@01 p2_5@205@01)
  (=
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))))))
(check-sat)
; unsat
(pop) ; 34
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p1_5@204@01 p2_5@205@01)
  (=
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))))
(push) ; 34
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 34
; 0.00s
; (get-info :all-statistics)
; [then-branch: 384 | p1_5@204@01 | live]
; [else-branch: 384 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 34
; [then-branch: 384 | p1_5@204@01]
; [exec]
; cond_7 := !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 35
; [eval] _isDefined(id)
(push) ; 36
(pop) ; 36
; Joined path conditions
(pop) ; 35
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 35
(pop) ; 35
; Joined path conditions
(push) ; 35
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 35
; Joined path conditions
(declare-const cond_7@350@01 Bool)
(assert (=
  cond_7@350@01
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
(push) ; 35
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
; [then-branch: 385 | p2_5@205@01 | live]
; [else-branch: 385 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 35
; [then-branch: 385 | p2_5@205@01]
; [exec]
; cond_8 := !int___eq__(x_1_0, __prim__int___box__(1))
; [eval] !int___eq__(x_1_0, __prim__int___box__(1))
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 36
(pop) ; 36
; Joined path conditions
(push) ; 36
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 36
; Joined path conditions
(declare-const cond_8@351@01 Bool)
(assert (=
  cond_8@351@01
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))))
(declare-const p1_7@352@01 Bool)
(declare-const p2_7@353@01 Bool)
(declare-const idle1_3@354@01 Bool)
(declare-const idle2_3@355@01 Bool)
(declare-const _loop_measures_3@356@01 Seq<Measure$>)
(declare-const _loop_check_before_3@357@01 Bool)
(declare-const _loop_measures_3_0@358@01 Seq<Measure$>)
(declare-const _loop_check_before_3_0@359@01 Bool)
(push) ; 36
; Loop head block: Check well-definedness of invariant
(declare-const $t@360@01 $Snap)
(assert (= $t@360@01 ($Snap.combine ($Snap.first $t@360@01) ($Snap.second $t@360@01))))
(assert (= ($Snap.first $t@360@01) $Snap.unit))
; [eval] p1_5 && !bypass1_3 ==> (forperm _r_16: Ref [_r_16.MustReleaseBounded] :: Level(_r_16) <= _residue_164) && ((forperm _r_16: Ref [_r_16.MustReleaseUnbounded] :: Level(_r_16) <= _residue_164) && _residue_159 <= _residue_164)
; [eval] p1_5 && !bypass1_3
(push) ; 37
; [then-branch: 386 | !(p1_5@204@01) | live]
; [else-branch: 386 | p1_5@204@01 | live]
(push) ; 38
; [then-branch: 386 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 38
(push) ; 38
; [else-branch: 386 | p1_5@204@01]
; [eval] !bypass1_3
(pop) ; 38
(pop) ; 37
; Joined path conditions
; Joined path conditions
(push) ; 37
(push) ; 38
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_3@348@01)))))
(check-sat)
; unknown
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 38
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_3@348@01))))
(check-sat)
; unsat
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
; [then-branch: 387 | p1_5@204@01 && !(bypass1_3@348@01) | live]
; [else-branch: 387 | !(p1_5@204@01 && !(bypass1_3@348@01)) | dead]
(set-option :timeout 0)
(push) ; 38
; [then-branch: 387 | p1_5@204@01 && !(bypass1_3@348@01)]
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
; [eval] (forperm _r_16: Ref [_r_16.MustReleaseBounded] :: Level(_r_16) <= _residue_164) && ((forperm _r_16: Ref [_r_16.MustReleaseUnbounded] :: Level(_r_16) <= _residue_164) && _residue_159 <= _residue_164)
; [eval] (forperm _r_16: Ref [_r_16.MustReleaseBounded] :: Level(_r_16) <= _residue_164)
(push) ; 39
; [then-branch: 388 | False | live]
; [else-branch: 388 | True | live]
(push) ; 40
; [then-branch: 388 | False]
(assert false)
(pop) ; 40
(push) ; 40
; [else-branch: 388 | True]
; [eval] (forperm _r_16: Ref [_r_16.MustReleaseUnbounded] :: Level(_r_16) <= _residue_164)
(push) ; 41
; [then-branch: 389 | False | live]
; [else-branch: 389 | True | live]
(push) ; 42
; [then-branch: 389 | False]
(assert false)
(pop) ; 42
(push) ; 42
; [else-branch: 389 | True]
; [eval] _residue_159 <= _residue_164
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(pop) ; 40
(pop) ; 39
; Joined path conditions
; Joined path conditions
(pop) ; 38
(pop) ; 37
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
(assert (=>
  (and p1_5@204@01 (not bypass1_3@348@01))
  (<= _residue_159@210@01 _residue_164@240@01)))
(assert (=
  ($Snap.second $t@360@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@360@01))
    ($Snap.second ($Snap.second $t@360@01)))))
(assert (= ($Snap.first ($Snap.second $t@360@01)) $Snap.unit))
; [eval] p2_5 && !bypass2_3 ==> (forperm _r_16: Ref [_r_16.MustReleaseBoundedp] :: Level(_r_16) <= _residue_164_0) && ((forperm _r_16: Ref [_r_16.MustReleaseUnboundedp] :: Level(_r_16) <= _residue_164_0) && _residue_159_0 <= _residue_164_0)
; [eval] p2_5 && !bypass2_3
(push) ; 37
; [then-branch: 390 | !(p2_5@205@01) | live]
; [else-branch: 390 | p2_5@205@01 | live]
(push) ; 38
; [then-branch: 390 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 38
(push) ; 38
; [else-branch: 390 | p2_5@205@01]
; [eval] !bypass2_3
(pop) ; 38
(pop) ; 37
; Joined path conditions
; Joined path conditions
(push) ; 37
(push) ; 38
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_3@349@01)))))
(check-sat)
; unknown
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 38
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_3@349@01))))
(check-sat)
; unsat
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
; [then-branch: 391 | p2_5@205@01 && !(bypass2_3@349@01) | live]
; [else-branch: 391 | !(p2_5@205@01 && !(bypass2_3@349@01)) | dead]
(set-option :timeout 0)
(push) ; 38
; [then-branch: 391 | p2_5@205@01 && !(bypass2_3@349@01)]
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] (forperm _r_16: Ref [_r_16.MustReleaseBoundedp] :: Level(_r_16) <= _residue_164_0) && ((forperm _r_16: Ref [_r_16.MustReleaseUnboundedp] :: Level(_r_16) <= _residue_164_0) && _residue_159_0 <= _residue_164_0)
; [eval] (forperm _r_16: Ref [_r_16.MustReleaseBoundedp] :: Level(_r_16) <= _residue_164_0)
(push) ; 39
; [then-branch: 392 | False | live]
; [else-branch: 392 | True | live]
(push) ; 40
; [then-branch: 392 | False]
(assert false)
(pop) ; 40
(push) ; 40
; [else-branch: 392 | True]
; [eval] (forperm _r_16: Ref [_r_16.MustReleaseUnboundedp] :: Level(_r_16) <= _residue_164_0)
(push) ; 41
; [then-branch: 393 | False | live]
; [else-branch: 393 | True | live]
(push) ; 42
; [then-branch: 393 | False]
(assert false)
(pop) ; 42
(push) ; 42
; [else-branch: 393 | True]
; [eval] _residue_159_0 <= _residue_164_0
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(pop) ; 40
(pop) ; 39
; Joined path conditions
; Joined path conditions
(pop) ; 38
(pop) ; 37
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
(assert (=>
  (and p2_5@205@01 (not bypass2_3@349@01))
  (<= _residue_159_0@211@01 _residue_164_0@241@01)))
(assert (=
  ($Snap.second ($Snap.second $t@360@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@360@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))
; [eval] p1_5 && !bypass1_3
(push) ; 37
; [then-branch: 394 | !(p1_5@204@01) | live]
; [else-branch: 394 | p1_5@204@01 | live]
(push) ; 38
; [then-branch: 394 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 38
(push) ; 38
; [else-branch: 394 | p1_5@204@01]
; [eval] !bypass1_3
(pop) ; 38
(pop) ; 37
; Joined path conditions
; Joined path conditions
(push) ; 37
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_3@348@01)))))
(check-sat)
; unknown
(pop) ; 37
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 37
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_3@348@01))))
(check-sat)
; unsat
(pop) ; 37
; 0.00s
; (get-info :all-statistics)
; [then-branch: 395 | p1_5@204@01 && !(bypass1_3@348@01) | live]
; [else-branch: 395 | !(p1_5@204@01 && !(bypass1_3@348@01)) | dead]
(set-option :timeout 0)
(push) ; 37
; [then-branch: 395 | p1_5@204@01 && !(bypass1_3@348@01)]
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 38
; [eval] _isDefined(id)
(push) ; 39
(pop) ; 39
; Joined path conditions
(pop) ; 38
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 38
(pop) ; 38
; Joined path conditions
(push) ; 38
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 38
; Joined path conditions
(push) ; 38
(set-option :timeout 10)
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
(check-sat)
; unknown
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 38
(set-option :timeout 10)
(assert (not (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
(check-sat)
; unknown
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
; [then-branch: 396 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))) | live]
; [else-branch: 396 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) | live]
(set-option :timeout 0)
(push) ; 38
; [then-branch: 396 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second $t@360@01)))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@360@01))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@360@01)))))))
(assert (=
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@360@01))))
  $Snap.unit))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) ==> false
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 39
; [eval] _isDefined(id)
(push) ; 40
(pop) ; 40
; Joined path conditions
(pop) ; 39
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 39
(pop) ; 39
; Joined path conditions
(push) ; 39
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 39
; Joined path conditions
(push) ; 39
; [then-branch: 397 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) | dead]
; [else-branch: 397 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))) | live]
(push) ; 40
; [else-branch: 397 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)))]
(pop) ; 40
(pop) ; 39
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@360@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@360@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))
; [eval] p2_5 && !bypass2_3
(push) ; 39
; [then-branch: 398 | !(p2_5@205@01) | live]
; [else-branch: 398 | p2_5@205@01 | live]
(push) ; 40
; [then-branch: 398 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 40
(push) ; 40
; [else-branch: 398 | p2_5@205@01]
; [eval] !bypass2_3
(pop) ; 40
(pop) ; 39
; Joined path conditions
; Joined path conditions
(push) ; 39
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_3@349@01)))))
(check-sat)
; unknown
(pop) ; 39
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 39
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_3@349@01))))
(check-sat)
; unsat
(pop) ; 39
; 0.00s
; (get-info :all-statistics)
; [then-branch: 399 | p2_5@205@01 && !(bypass2_3@349@01) | live]
; [else-branch: 399 | !(p2_5@205@01 && !(bypass2_3@349@01)) | dead]
(set-option :timeout 0)
(push) ; 39
; [then-branch: 399 | p2_5@205@01 && !(bypass2_3@349@01)]
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] !int___eq__(x_1_0, __prim__int___box__(1))
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 40
(pop) ; 40
; Joined path conditions
(push) ; 40
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 40
; Joined path conditions
(push) ; 40
(set-option :timeout 10)
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))
(check-sat)
; unknown
(pop) ; 40
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 40
(set-option :timeout 10)
(assert (not (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))))
(check-sat)
; unsat
(pop) ; 40
; 0.00s
; (get-info :all-statistics)
; [then-branch: 400 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1))) | live]
; [else-branch: 400 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1)) | dead]
(set-option :timeout 0)
(push) ; 40
; [then-branch: 400 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1)))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@360@01))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))
(assert (=
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))
  $Snap.unit))
; [eval] int___eq__(x_1_0, __prim__int___box__(1)) ==> false
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 41
(pop) ; 41
; Joined path conditions
(push) ; 41
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 41
; Joined path conditions
(push) ; 41
; [then-branch: 401 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1)) | dead]
; [else-branch: 401 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1))) | live]
(push) ; 42
; [else-branch: 401 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1)))]
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))
  $Snap.unit))
; [eval] p1_5 && !bypass1_3 ==> true
; [eval] p1_5 && !bypass1_3
(push) ; 41
; [then-branch: 402 | !(p1_5@204@01) | live]
; [else-branch: 402 | p1_5@204@01 | live]
(push) ; 42
; [then-branch: 402 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 42
(push) ; 42
; [else-branch: 402 | p1_5@204@01]
; [eval] !bypass1_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_3@348@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_3@348@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 403 | p1_5@204@01 && !(bypass1_3@348@01) | live]
; [else-branch: 403 | !(p1_5@204@01 && !(bypass1_3@348@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 403 | p1_5@204@01 && !(bypass1_3@348@01)]
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))
  $Snap.unit))
; [eval] p2_5 && !bypass2_3 ==> true
; [eval] p2_5 && !bypass2_3
(push) ; 41
; [then-branch: 404 | !(p2_5@205@01) | live]
; [else-branch: 404 | p2_5@205@01 | live]
(push) ; 42
; [then-branch: 404 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 42
(push) ; 42
; [else-branch: 404 | p2_5@205@01]
; [eval] !bypass2_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_3@349@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_3@349@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 405 | p2_5@205@01 && !(bypass2_3@349@01) | live]
; [else-branch: 405 | !(p2_5@205@01 && !(bypass2_3@349@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 405 | p2_5@205@01 && !(bypass2_3@349@01)]
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))
  $Snap.unit))
; [eval] p1_5 && !bypass1_3 ==> true
; [eval] p1_5 && !bypass1_3
(push) ; 41
; [then-branch: 406 | !(p1_5@204@01) | live]
; [else-branch: 406 | p1_5@204@01 | live]
(push) ; 42
; [then-branch: 406 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 42
(push) ; 42
; [else-branch: 406 | p1_5@204@01]
; [eval] !bypass1_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_3@348@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_3@348@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 407 | p1_5@204@01 && !(bypass1_3@348@01) | live]
; [else-branch: 407 | !(p1_5@204@01 && !(bypass1_3@348@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 407 | p1_5@204@01 && !(bypass1_3@348@01)]
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))
  $Snap.unit))
; [eval] p2_5 && !bypass2_3 ==> true
; [eval] p2_5 && !bypass2_3
(push) ; 41
; [then-branch: 408 | !(p2_5@205@01) | live]
; [else-branch: 408 | p2_5@205@01 | live]
(push) ; 42
; [then-branch: 408 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 42
(push) ; 42
; [else-branch: 408 | p2_5@205@01]
; [eval] !bypass2_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_3@349@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_3@349@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 409 | p2_5@205@01 && !(bypass2_3@349@01) | live]
; [else-branch: 409 | !(p2_5@205@01 && !(bypass2_3@349@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 409 | p2_5@205@01 && !(bypass2_3@349@01)]
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))
  $Snap.unit))
; [eval] p1_5 && !bypass1_3 ==> !cond_7 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] p1_5 && !bypass1_3
(push) ; 41
; [then-branch: 410 | !(p1_5@204@01) | live]
; [else-branch: 410 | p1_5@204@01 | live]
(push) ; 42
; [then-branch: 410 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 42
(push) ; 42
; [else-branch: 410 | p1_5@204@01]
; [eval] !bypass1_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_3@348@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_3@348@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 411 | p1_5@204@01 && !(bypass1_3@348@01) | live]
; [else-branch: 411 | !(p1_5@204@01 && !(bypass1_3@348@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 411 | p1_5@204@01 && !(bypass1_3@348@01)]
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
; [eval] !cond_7 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] !cond_7
(push) ; 43
(push) ; 44
(set-option :timeout 10)
(assert (not cond_7@350@01))
(check-sat)
; unsat
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
; [then-branch: 412 | !(cond_7@350@01) | dead]
; [else-branch: 412 | cond_7@350@01 | live]
(set-option :timeout 0)
(push) ; 44
; [else-branch: 412 | cond_7@350@01]
(assert cond_7@350@01)
(pop) ; 44
(pop) ; 43
; Joined path conditions
(assert cond_7@350@01)
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (=>
  (and p1_5@204@01 (not bypass1_3@348@01))
  (and p1_5@204@01 (not bypass1_3@348@01) cond_7@350@01)))
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))
  $Snap.unit))
; [eval] p2_5 && !bypass2_3 ==> !cond_8 ==> int___eq__(x_1_0, __prim__int___box__(1))
; [eval] p2_5 && !bypass2_3
(push) ; 41
; [then-branch: 413 | !(p2_5@205@01) | live]
; [else-branch: 413 | p2_5@205@01 | live]
(push) ; 42
; [then-branch: 413 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 42
(push) ; 42
; [else-branch: 413 | p2_5@205@01]
; [eval] !bypass2_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_3@349@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_3@349@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 414 | p2_5@205@01 && !(bypass2_3@349@01) | live]
; [else-branch: 414 | !(p2_5@205@01 && !(bypass2_3@349@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 414 | p2_5@205@01 && !(bypass2_3@349@01)]
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] !cond_8 ==> int___eq__(x_1_0, __prim__int___box__(1))
; [eval] !cond_8
(push) ; 43
(push) ; 44
(set-option :timeout 10)
(assert (not cond_8@351@01))
(check-sat)
; unsat
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
; [then-branch: 415 | !(cond_8@351@01) | dead]
; [else-branch: 415 | cond_8@351@01 | live]
(set-option :timeout 0)
(push) ; 44
; [else-branch: 415 | cond_8@351@01]
(assert cond_8@351@01)
(pop) ; 44
(pop) ; 43
; Joined path conditions
(assert cond_8@351@01)
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (=>
  (and p2_5@205@01 (not bypass2_3@349@01))
  (and p2_5@205@01 (not bypass2_3@349@01) cond_8@351@01)))
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))
  $Snap.unit))
; [eval] bypass1_3 ==> tmp1_37 == _loop_measures_3
(push) ; 41
; [then-branch: 416 | bypass1_3@348@01 | dead]
; [else-branch: 416 | !(bypass1_3@348@01) | live]
(push) ; 42
; [else-branch: 416 | !(bypass1_3@348@01)]
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))
  $Snap.unit))
; [eval] bypass1_3 ==> tmp1_38 == _loop_check_before_3
(push) ; 41
; [then-branch: 417 | bypass1_3@348@01 | dead]
; [else-branch: 417 | !(bypass1_3@348@01) | live]
(push) ; 42
; [else-branch: 417 | !(bypass1_3@348@01)]
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))))
  $Snap.unit))
; [eval] bypass2_3 ==> tmp2_37 == _loop_measures_3_0
(push) ; 41
; [then-branch: 418 | bypass2_3@349@01 | dead]
; [else-branch: 418 | !(bypass2_3@349@01) | live]
(push) ; 42
; [else-branch: 418 | !(bypass2_3@349@01)]
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))))
  $Snap.unit))
; [eval] bypass2_3 ==> tmp2_38 == _loop_check_before_3_0
(push) ; 41
; [then-branch: 419 | bypass2_3@349@01 | dead]
; [else-branch: 419 | !(bypass2_3@349@01) | live]
(push) ; 42
; [else-branch: 419 | !(bypass2_3@349@01)]
(pop) ; 42
(pop) ; 41
; Joined path conditions
(pop) ; 40
(pop) ; 39
(pop) ; 38
(push) ; 38
; [else-branch: 396 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@360@01))) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@360@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@360@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))
; [eval] p2_5 && !bypass2_3
(push) ; 39
; [then-branch: 420 | !(p2_5@205@01) | live]
; [else-branch: 420 | p2_5@205@01 | live]
(push) ; 40
; [then-branch: 420 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 40
(push) ; 40
; [else-branch: 420 | p2_5@205@01]
(assert p2_5@205@01)
; [eval] !bypass2_3
(pop) ; 40
(pop) ; 39
; Joined path conditions
; Joined path conditions
(push) ; 39
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_3@349@01)))))
(check-sat)
; unknown
(pop) ; 39
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 39
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_3@349@01))))
(check-sat)
; unsat
(pop) ; 39
; 0.00s
; (get-info :all-statistics)
; [then-branch: 421 | p2_5@205@01 && !(bypass2_3@349@01) | live]
; [else-branch: 421 | !(p2_5@205@01 && !(bypass2_3@349@01)) | dead]
(set-option :timeout 0)
(push) ; 39
; [then-branch: 421 | p2_5@205@01 && !(bypass2_3@349@01)]
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] !int___eq__(x_1_0, __prim__int___box__(1))
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 40
(pop) ; 40
; Joined path conditions
(push) ; 40
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 40
; Joined path conditions
(push) ; 40
(set-option :timeout 10)
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))
(check-sat)
; unsat
(pop) ; 40
; 0.00s
; (get-info :all-statistics)
; [then-branch: 422 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1))) | dead]
; [else-branch: 422 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1)) | live]
(set-option :timeout 0)
(push) ; 40
; [else-branch: 422 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1))]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@360@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))
  $Snap.unit))
; [eval] p1_5 && !bypass1_3 ==> true
; [eval] p1_5 && !bypass1_3
(push) ; 41
; [then-branch: 423 | !(p1_5@204@01) | live]
; [else-branch: 423 | p1_5@204@01 | live]
(push) ; 42
; [then-branch: 423 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 42
(push) ; 42
; [else-branch: 423 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_3@348@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_3@348@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 424 | p1_5@204@01 && !(bypass1_3@348@01) | live]
; [else-branch: 424 | !(p1_5@204@01 && !(bypass1_3@348@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 424 | p1_5@204@01 && !(bypass1_3@348@01)]
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))
  $Snap.unit))
; [eval] p2_5 && !bypass2_3 ==> true
; [eval] p2_5 && !bypass2_3
(push) ; 41
; [then-branch: 425 | !(p2_5@205@01) | live]
; [else-branch: 425 | p2_5@205@01 | live]
(push) ; 42
; [then-branch: 425 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 42
(push) ; 42
; [else-branch: 425 | p2_5@205@01]
; [eval] !bypass2_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_3@349@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_3@349@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 426 | p2_5@205@01 && !(bypass2_3@349@01) | live]
; [else-branch: 426 | !(p2_5@205@01 && !(bypass2_3@349@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 426 | p2_5@205@01 && !(bypass2_3@349@01)]
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))
  $Snap.unit))
; [eval] p1_5 && !bypass1_3 ==> true
; [eval] p1_5 && !bypass1_3
(push) ; 41
; [then-branch: 427 | !(p1_5@204@01) | live]
; [else-branch: 427 | p1_5@204@01 | live]
(push) ; 42
; [then-branch: 427 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 42
(push) ; 42
; [else-branch: 427 | p1_5@204@01]
; [eval] !bypass1_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_3@348@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_3@348@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 428 | p1_5@204@01 && !(bypass1_3@348@01) | live]
; [else-branch: 428 | !(p1_5@204@01 && !(bypass1_3@348@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 428 | p1_5@204@01 && !(bypass1_3@348@01)]
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))
  $Snap.unit))
; [eval] p2_5 && !bypass2_3 ==> true
; [eval] p2_5 && !bypass2_3
(push) ; 41
; [then-branch: 429 | !(p2_5@205@01) | live]
; [else-branch: 429 | p2_5@205@01 | live]
(push) ; 42
; [then-branch: 429 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 42
(push) ; 42
; [else-branch: 429 | p2_5@205@01]
; [eval] !bypass2_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_3@349@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_3@349@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 430 | p2_5@205@01 && !(bypass2_3@349@01) | live]
; [else-branch: 430 | !(p2_5@205@01 && !(bypass2_3@349@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 430 | p2_5@205@01 && !(bypass2_3@349@01)]
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))
  $Snap.unit))
; [eval] p1_5 && !bypass1_3 ==> !cond_7 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] p1_5 && !bypass1_3
(push) ; 41
; [then-branch: 431 | !(p1_5@204@01) | live]
; [else-branch: 431 | p1_5@204@01 | live]
(push) ; 42
; [then-branch: 431 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 42
(push) ; 42
; [else-branch: 431 | p1_5@204@01]
; [eval] !bypass1_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_3@348@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_3@348@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 432 | p1_5@204@01 && !(bypass1_3@348@01) | live]
; [else-branch: 432 | !(p1_5@204@01 && !(bypass1_3@348@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 432 | p1_5@204@01 && !(bypass1_3@348@01)]
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
; [eval] !cond_7 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] !cond_7
(push) ; 43
(push) ; 44
(set-option :timeout 10)
(assert (not cond_7@350@01))
(check-sat)
; unknown
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 44
(set-option :timeout 10)
(assert (not (not cond_7@350@01)))
(check-sat)
; unsat
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
; [then-branch: 433 | !(cond_7@350@01) | live]
; [else-branch: 433 | cond_7@350@01 | dead]
(set-option :timeout 0)
(push) ; 44
; [then-branch: 433 | !(cond_7@350@01)]
(assert (not cond_7@350@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 45
; [eval] _isDefined(id)
(push) ; 46
(pop) ; 46
; Joined path conditions
(pop) ; 45
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 45
(pop) ; 45
; Joined path conditions
(push) ; 45
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 45
; Joined path conditions
(pop) ; 44
(pop) ; 43
; Joined path conditions
(assert (not cond_7@350@01))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (=>
  (and p1_5@204@01 (not bypass1_3@348@01))
  (and p1_5@204@01 (not bypass1_3@348@01) (not cond_7@350@01))))
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
(assert (=>
  (and (and p1_5@204@01 (not bypass1_3@348@01)) (not cond_7@350@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))
  $Snap.unit))
; [eval] p2_5 && !bypass2_3 ==> !cond_8 ==> int___eq__(x_1_0, __prim__int___box__(1))
; [eval] p2_5 && !bypass2_3
(push) ; 41
; [then-branch: 434 | !(p2_5@205@01) | live]
; [else-branch: 434 | p2_5@205@01 | live]
(push) ; 42
; [then-branch: 434 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 42
(push) ; 42
; [else-branch: 434 | p2_5@205@01]
; [eval] !bypass2_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_3@349@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_3@349@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 435 | p2_5@205@01 && !(bypass2_3@349@01) | live]
; [else-branch: 435 | !(p2_5@205@01 && !(bypass2_3@349@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 435 | p2_5@205@01 && !(bypass2_3@349@01)]
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] !cond_8 ==> int___eq__(x_1_0, __prim__int___box__(1))
; [eval] !cond_8
(push) ; 43
(push) ; 44
(set-option :timeout 10)
(assert (not cond_8@351@01))
(check-sat)
; unknown
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 44
(set-option :timeout 10)
(assert (not (not cond_8@351@01)))
(check-sat)
; unsat
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
; [then-branch: 436 | !(cond_8@351@01) | live]
; [else-branch: 436 | cond_8@351@01 | dead]
(set-option :timeout 0)
(push) ; 44
; [then-branch: 436 | !(cond_8@351@01)]
(assert (not cond_8@351@01))
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 45
(pop) ; 45
; Joined path conditions
(push) ; 45
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 45
; Joined path conditions
(pop) ; 44
(pop) ; 43
; Joined path conditions
(assert (not cond_8@351@01))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (=>
  (and p2_5@205@01 (not bypass2_3@349@01))
  (and p2_5@205@01 (not bypass2_3@349@01) (not cond_8@351@01))))
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
(assert (=>
  (and (and p2_5@205@01 (not bypass2_3@349@01)) (not cond_8@351@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))
  $Snap.unit))
; [eval] bypass1_3 ==> tmp1_37 == _loop_measures_3
(push) ; 41
; [then-branch: 437 | bypass1_3@348@01 | dead]
; [else-branch: 437 | !(bypass1_3@348@01) | live]
(push) ; 42
; [else-branch: 437 | !(bypass1_3@348@01)]
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))
  $Snap.unit))
; [eval] bypass1_3 ==> tmp1_38 == _loop_check_before_3
(push) ; 41
; [then-branch: 438 | bypass1_3@348@01 | dead]
; [else-branch: 438 | !(bypass1_3@348@01) | live]
(push) ; 42
; [else-branch: 438 | !(bypass1_3@348@01)]
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))))
  $Snap.unit))
; [eval] bypass2_3 ==> tmp2_37 == _loop_measures_3_0
(push) ; 41
; [then-branch: 439 | bypass2_3@349@01 | dead]
; [else-branch: 439 | !(bypass2_3@349@01) | live]
(push) ; 42
; [else-branch: 439 | !(bypass2_3@349@01)]
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))))
  $Snap.unit))
; [eval] bypass2_3 ==> tmp2_38 == _loop_check_before_3_0
(push) ; 41
; [then-branch: 440 | bypass2_3@349@01 | dead]
; [else-branch: 440 | !(bypass2_3@349@01) | live]
(push) ; 42
; [else-branch: 440 | !(bypass2_3@349@01)]
(pop) ; 42
(pop) ; 41
; Joined path conditions
(pop) ; 40
(pop) ; 39
(pop) ; 38
(pop) ; 37
(pop) ; 36
(push) ; 36
; Loop head block: Establish invariant
; [eval] p1_5 && !bypass1_3 ==> true
; [eval] p1_5 && !bypass1_3
(push) ; 37
; [then-branch: 441 | !(p1_5@204@01) | live]
; [else-branch: 441 | p1_5@204@01 | live]
(push) ; 38
; [then-branch: 441 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 38
(push) ; 38
; [else-branch: 441 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_3
(pop) ; 38
(pop) ; 37
; Joined path conditions
; Joined path conditions
(push) ; 37
(push) ; 38
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_3@348@01)))))
(check-sat)
; unknown
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 38
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_3@348@01))))
(check-sat)
; unsat
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
; [then-branch: 442 | p1_5@204@01 && !(bypass1_3@348@01) | live]
; [else-branch: 442 | !(p1_5@204@01 && !(bypass1_3@348@01)) | dead]
(set-option :timeout 0)
(push) ; 38
; [then-branch: 442 | p1_5@204@01 && !(bypass1_3@348@01)]
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
(pop) ; 38
(pop) ; 37
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
; [eval] p2_5 && !bypass2_3 ==> true
; [eval] p2_5 && !bypass2_3
(push) ; 37
; [then-branch: 443 | !(p2_5@205@01) | live]
; [else-branch: 443 | p2_5@205@01 | live]
(push) ; 38
; [then-branch: 443 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 38
(push) ; 38
; [else-branch: 443 | p2_5@205@01]
(assert p2_5@205@01)
; [eval] !bypass2_3
(pop) ; 38
(pop) ; 37
; Joined path conditions
; Joined path conditions
(push) ; 37
(push) ; 38
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_3@349@01)))))
(check-sat)
; unknown
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 38
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_3@349@01))))
(check-sat)
; unsat
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
; [then-branch: 444 | p2_5@205@01 && !(bypass2_3@349@01) | live]
; [else-branch: 444 | !(p2_5@205@01 && !(bypass2_3@349@01)) | dead]
(set-option :timeout 0)
(push) ; 38
; [then-branch: 444 | p2_5@205@01 && !(bypass2_3@349@01)]
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
(pop) ; 38
(pop) ; 37
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] p1_5 && !bypass1_3 ==> !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) ==> (int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) ==> false) && true
; [eval] p1_5 && !bypass1_3
(push) ; 37
; [then-branch: 445 | !(p1_5@204@01) | live]
; [else-branch: 445 | p1_5@204@01 | live]
(push) ; 38
; [then-branch: 445 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 38
(push) ; 38
; [else-branch: 445 | p1_5@204@01]
; [eval] !bypass1_3
(pop) ; 38
(pop) ; 37
; Joined path conditions
; Joined path conditions
(push) ; 37
(push) ; 38
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_3@348@01)))))
(check-sat)
; unknown
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 38
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_3@348@01))))
(check-sat)
; unsat
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
; [then-branch: 446 | p1_5@204@01 && !(bypass1_3@348@01) | live]
; [else-branch: 446 | !(p1_5@204@01 && !(bypass1_3@348@01)) | dead]
(set-option :timeout 0)
(push) ; 38
; [then-branch: 446 | p1_5@204@01 && !(bypass1_3@348@01)]
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) ==> (int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) ==> false) && true
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 39
; [eval] _isDefined(id)
(push) ; 40
(pop) ; 40
; Joined path conditions
(pop) ; 39
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 39
(pop) ; 39
; Joined path conditions
(push) ; 39
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 39
; Joined path conditions
(push) ; 39
(push) ; 40
(set-option :timeout 10)
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
(check-sat)
; unknown
(pop) ; 40
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 40
(set-option :timeout 10)
(assert (not (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
(check-sat)
; unknown
(pop) ; 40
; 0.00s
; (get-info :all-statistics)
; [then-branch: 447 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))) | live]
; [else-branch: 447 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) | live]
(set-option :timeout 0)
(push) ; 40
; [then-branch: 447 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
; [eval] (int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) ==> false) && true
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) ==> false
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 41
; [eval] _isDefined(id)
(push) ; 42
(pop) ; 42
; Joined path conditions
(pop) ; 41
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 41
(pop) ; 41
; Joined path conditions
(push) ; 41
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 41
; Joined path conditions
(push) ; 41
; [then-branch: 448 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) | dead]
; [else-branch: 448 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))) | live]
(push) ; 42
; [else-branch: 448 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)))]
(pop) ; 42
(pop) ; 41
; Joined path conditions
(push) ; 41
; [then-branch: 449 | False | live]
; [else-branch: 449 | True | live]
(push) ; 42
; [then-branch: 449 | False]
(assert false)
(pop) ; 42
(push) ; 42
; [else-branch: 449 | True]
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(pop) ; 40
(push) ; 40
; [else-branch: 447 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
(pop) ; 40
(pop) ; 39
; Joined path conditions
; Joined path conditions
(assert (or
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
(pop) ; 38
(pop) ; 37
; Joined path conditions
(assert (=>
  (and p1_5@204@01 (not bypass1_3@348@01))
  (and
    p1_5@204@01
    (not bypass1_3@348@01)
    (or
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))
      (not
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))))
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
; [eval] p2_5 && !bypass2_3 ==> !int___eq__(x_1_0, __prim__int___box__(1)) ==> (int___eq__(x_1_0, __prim__int___box__(1)) ==> false) && true
; [eval] p2_5 && !bypass2_3
(push) ; 37
; [then-branch: 450 | !(p2_5@205@01) | live]
; [else-branch: 450 | p2_5@205@01 | live]
(push) ; 38
; [then-branch: 450 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 38
(push) ; 38
; [else-branch: 450 | p2_5@205@01]
; [eval] !bypass2_3
(pop) ; 38
(pop) ; 37
; Joined path conditions
; Joined path conditions
(push) ; 37
(push) ; 38
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_3@349@01)))))
(check-sat)
; unknown
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 38
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_3@349@01))))
(check-sat)
; unsat
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
; [then-branch: 451 | p2_5@205@01 && !(bypass2_3@349@01) | live]
; [else-branch: 451 | !(p2_5@205@01 && !(bypass2_3@349@01)) | dead]
(set-option :timeout 0)
(push) ; 38
; [then-branch: 451 | p2_5@205@01 && !(bypass2_3@349@01)]
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] !int___eq__(x_1_0, __prim__int___box__(1)) ==> (int___eq__(x_1_0, __prim__int___box__(1)) ==> false) && true
; [eval] !int___eq__(x_1_0, __prim__int___box__(1))
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 39
(pop) ; 39
; Joined path conditions
(push) ; 39
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 39
; Joined path conditions
(push) ; 39
(push) ; 40
(set-option :timeout 10)
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))
(check-sat)
; unknown
(pop) ; 40
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 40
(set-option :timeout 10)
(assert (not (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))))
(check-sat)
; unknown
(pop) ; 40
; 0.00s
; (get-info :all-statistics)
; [then-branch: 452 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1))) | live]
; [else-branch: 452 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1)) | live]
(set-option :timeout 0)
(push) ; 40
; [then-branch: 452 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1)))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))
; [eval] (int___eq__(x_1_0, __prim__int___box__(1)) ==> false) && true
; [eval] int___eq__(x_1_0, __prim__int___box__(1)) ==> false
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 41
(pop) ; 41
; Joined path conditions
(push) ; 41
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 41
; Joined path conditions
(push) ; 41
; [then-branch: 453 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1)) | dead]
; [else-branch: 453 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1))) | live]
(push) ; 42
; [else-branch: 453 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1)))]
(pop) ; 42
(pop) ; 41
; Joined path conditions
(push) ; 41
; [then-branch: 454 | False | live]
; [else-branch: 454 | True | live]
(push) ; 42
; [then-branch: 454 | False]
(assert false)
(pop) ; 42
(push) ; 42
; [else-branch: 454 | True]
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(pop) ; 40
(push) ; 40
; [else-branch: 452 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1))]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))
(pop) ; 40
(pop) ; 39
; Joined path conditions
; Joined path conditions
(assert (or
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))))
(pop) ; 38
(pop) ; 37
; Joined path conditions
(assert (=>
  (and p2_5@205@01 (not bypass2_3@349@01))
  (and
    p2_5@205@01
    (not bypass2_3@349@01)
    (or
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))
      (not
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))))))
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] p1_5 && !bypass1_3 ==> !idle1_3 ==> _loop_check_before_3 ==> _loop_termination_flag_3 || (!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_17: Ref [MustInvokeBounded(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBounded] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: false)))))
; [eval] p1_5 && !bypass1_3
(push) ; 37
; [then-branch: 455 | !(p1_5@204@01) | live]
; [else-branch: 455 | p1_5@204@01 | live]
(push) ; 38
; [then-branch: 455 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 38
(push) ; 38
; [else-branch: 455 | p1_5@204@01]
; [eval] !bypass1_3
(pop) ; 38
(pop) ; 37
; Joined path conditions
; Joined path conditions
(push) ; 37
(push) ; 38
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_3@348@01)))))
(check-sat)
; unknown
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 38
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_3@348@01))))
(check-sat)
; unsat
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
; [then-branch: 456 | p1_5@204@01 && !(bypass1_3@348@01) | live]
; [else-branch: 456 | !(p1_5@204@01 && !(bypass1_3@348@01)) | dead]
(set-option :timeout 0)
(push) ; 38
; [then-branch: 456 | p1_5@204@01 && !(bypass1_3@348@01)]
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
; [eval] !idle1_3 ==> _loop_check_before_3 ==> _loop_termination_flag_3 || (!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_17: Ref [MustInvokeBounded(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBounded] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: false)))))
; [eval] !idle1_3
(push) ; 39
(push) ; 40
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 40
; 0.00s
; (get-info :all-statistics)
; [then-branch: 457 | True | live]
; [else-branch: 457 | False | dead]
(set-option :timeout 0)
(push) ; 40
; [then-branch: 457 | True]
; [eval] _loop_check_before_3 ==> _loop_termination_flag_3 || (!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_17: Ref [MustInvokeBounded(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBounded] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: false)))))
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 458 | True | live]
; [else-branch: 458 | False | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 458 | True]
; [eval] _loop_termination_flag_3 || (!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_17: Ref [MustInvokeBounded(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBounded] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: false)))))
(push) ; 43
; [then-branch: 459 | _loop_termination_flag_3@345@01 | live]
; [else-branch: 459 | !(_loop_termination_flag_3@345@01) | live]
(push) ; 44
; [then-branch: 459 | _loop_termination_flag_3@345@01]
(assert _loop_termination_flag_3@345@01)
(pop) ; 44
(push) ; 44
; [else-branch: 459 | !(_loop_termination_flag_3@345@01)]
(assert (not _loop_termination_flag_3@345@01))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 45
; [eval] _isDefined(id)
(push) ; 46
(pop) ; 46
; Joined path conditions
(pop) ; 45
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 45
(pop) ; 45
; Joined path conditions
(push) ; 45
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 45
; Joined path conditions
(push) ; 45
; [then-branch: 460 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))) | live]
; [else-branch: 460 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) | live]
(push) ; 46
; [then-branch: 460 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
(pop) ; 46
(push) ; 46
; [else-branch: 460 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
; [eval] perm(MustTerminate(_cthread_159)) == none && ((forperm _r_17: Ref [MustInvokeBounded(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBounded] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_159)) == none
; [eval] perm(MustTerminate(_cthread_159))
(push) ; 47
; [then-branch: 461 | False | live]
; [else-branch: 461 | True | live]
(push) ; 48
; [then-branch: 461 | False]
(assert false)
(pop) ; 48
(push) ; 48
; [else-branch: 461 | True]
; [eval] (forperm _r_17: Ref [MustInvokeBounded(_r_17)] :: false)
(push) ; 49
; [then-branch: 462 | False | live]
; [else-branch: 462 | True | live]
(push) ; 50
; [then-branch: 462 | False]
(assert false)
(pop) ; 50
(push) ; 50
; [else-branch: 462 | True]
; [eval] (forperm _r_17: Ref [MustInvokeUnbounded(_r_17)] :: false)
(push) ; 51
; [then-branch: 463 | False | live]
; [else-branch: 463 | True | live]
(push) ; 52
; [then-branch: 463 | False]
(assert false)
(pop) ; 52
(push) ; 52
; [else-branch: 463 | True]
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseBounded] :: false)
(push) ; 53
; [then-branch: 464 | False | live]
; [else-branch: 464 | True | live]
(push) ; 54
; [then-branch: 464 | False]
(assert false)
(pop) ; 54
(push) ; 54
; [else-branch: 464 | True]
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: false)
(pop) ; 54
(pop) ; 53
; Joined path conditions
; Joined path conditions
(pop) ; 52
(pop) ; 51
; Joined path conditions
; Joined path conditions
(pop) ; 50
(pop) ; 49
; Joined path conditions
; Joined path conditions
(pop) ; 48
(pop) ; 47
; Joined path conditions
; Joined path conditions
(pop) ; 46
(pop) ; 45
; Joined path conditions
; Joined path conditions
(assert (or
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
(pop) ; 44
(pop) ; 43
; Joined path conditions
; Joined path conditions
(assert (=>
  (not _loop_termination_flag_3@345@01)
  (and
    (not _loop_termination_flag_3@345@01)
    (or
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))
      (not
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))))
(assert (or (not _loop_termination_flag_3@345@01) _loop_termination_flag_3@345@01))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (and
  (=>
    (not _loop_termination_flag_3@345@01)
    (and
      (not _loop_termination_flag_3@345@01)
      (or
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))
        (not
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))))
  (or (not _loop_termination_flag_3@345@01) _loop_termination_flag_3@345@01)))
(pop) ; 40
(pop) ; 39
; Joined path conditions
(assert (and
  (=>
    (not _loop_termination_flag_3@345@01)
    (and
      (not _loop_termination_flag_3@345@01)
      (or
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))
        (not
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))))
  (or (not _loop_termination_flag_3@345@01) _loop_termination_flag_3@345@01)))
(pop) ; 38
(pop) ; 37
; Joined path conditions
(assert (=>
  (and p1_5@204@01 (not bypass1_3@348@01))
  (and
    p1_5@204@01
    (not bypass1_3@348@01)
    (=>
      (not _loop_termination_flag_3@345@01)
      (and
        (not _loop_termination_flag_3@345@01)
        (or
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))
          (not
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))))
    (or (not _loop_termination_flag_3@345@01) _loop_termination_flag_3@345@01))))
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
; [eval] p2_5 && !bypass2_3 ==> !idle2_3 ==> _loop_check_before_3_0 ==> _loop_termination_flag_3_0 || (!int___eq__(x_1_0, __prim__int___box__(1)) || perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_17: Ref [MustInvokeBounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBoundedp] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnboundedp] :: false)))))
; [eval] p2_5 && !bypass2_3
(push) ; 37
; [then-branch: 465 | !(p2_5@205@01) | live]
; [else-branch: 465 | p2_5@205@01 | live]
(push) ; 38
; [then-branch: 465 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 38
(push) ; 38
; [else-branch: 465 | p2_5@205@01]
; [eval] !bypass2_3
(pop) ; 38
(pop) ; 37
; Joined path conditions
; Joined path conditions
(push) ; 37
(push) ; 38
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_3@349@01)))))
(check-sat)
; unknown
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 38
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_3@349@01))))
(check-sat)
; unsat
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
; [then-branch: 466 | p2_5@205@01 && !(bypass2_3@349@01) | live]
; [else-branch: 466 | !(p2_5@205@01 && !(bypass2_3@349@01)) | dead]
(set-option :timeout 0)
(push) ; 38
; [then-branch: 466 | p2_5@205@01 && !(bypass2_3@349@01)]
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] !idle2_3 ==> _loop_check_before_3_0 ==> _loop_termination_flag_3_0 || (!int___eq__(x_1_0, __prim__int___box__(1)) || perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_17: Ref [MustInvokeBounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBoundedp] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnboundedp] :: false)))))
; [eval] !idle2_3
(push) ; 39
(push) ; 40
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 40
; 0.00s
; (get-info :all-statistics)
; [then-branch: 467 | True | live]
; [else-branch: 467 | False | dead]
(set-option :timeout 0)
(push) ; 40
; [then-branch: 467 | True]
; [eval] _loop_check_before_3_0 ==> _loop_termination_flag_3_0 || (!int___eq__(x_1_0, __prim__int___box__(1)) || perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_17: Ref [MustInvokeBounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBoundedp] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnboundedp] :: false)))))
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 468 | True | live]
; [else-branch: 468 | False | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 468 | True]
; [eval] _loop_termination_flag_3_0 || (!int___eq__(x_1_0, __prim__int___box__(1)) || perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_17: Ref [MustInvokeBounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBoundedp] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnboundedp] :: false)))))
(push) ; 43
; [then-branch: 469 | _loop_termination_flag_3_0@347@01 | live]
; [else-branch: 469 | !(_loop_termination_flag_3_0@347@01) | live]
(push) ; 44
; [then-branch: 469 | _loop_termination_flag_3_0@347@01]
(assert _loop_termination_flag_3_0@347@01)
(pop) ; 44
(push) ; 44
; [else-branch: 469 | !(_loop_termination_flag_3_0@347@01)]
(assert (not _loop_termination_flag_3_0@347@01))
; [eval] !int___eq__(x_1_0, __prim__int___box__(1))
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 45
(pop) ; 45
; Joined path conditions
(push) ; 45
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 45
; Joined path conditions
(push) ; 45
; [then-branch: 470 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1))) | live]
; [else-branch: 470 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1)) | live]
(push) ; 46
; [then-branch: 470 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1)))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))
(pop) ; 46
(push) ; 46
; [else-branch: 470 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1))]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))
; [eval] perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_17: Ref [MustInvokeBounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBoundedp] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnboundedp] :: false))))
; [eval] perm(MustTerminate_0(_cthread_159_0)) == none
; [eval] perm(MustTerminate_0(_cthread_159_0))
(push) ; 47
; [then-branch: 471 | False | live]
; [else-branch: 471 | True | live]
(push) ; 48
; [then-branch: 471 | False]
(assert false)
(pop) ; 48
(push) ; 48
; [else-branch: 471 | True]
; [eval] (forperm _r_17: Ref [MustInvokeBounded_0(_r_17)] :: false)
(push) ; 49
; [then-branch: 472 | False | live]
; [else-branch: 472 | True | live]
(push) ; 50
; [then-branch: 472 | False]
(assert false)
(pop) ; 50
(push) ; 50
; [else-branch: 472 | True]
; [eval] (forperm _r_17: Ref [MustInvokeUnbounded_0(_r_17)] :: false)
(push) ; 51
; [then-branch: 473 | False | live]
; [else-branch: 473 | True | live]
(push) ; 52
; [then-branch: 473 | False]
(assert false)
(pop) ; 52
(push) ; 52
; [else-branch: 473 | True]
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseBoundedp] :: false)
(push) ; 53
; [then-branch: 474 | False | live]
; [else-branch: 474 | True | live]
(push) ; 54
; [then-branch: 474 | False]
(assert false)
(pop) ; 54
(push) ; 54
; [else-branch: 474 | True]
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseUnboundedp] :: false)
(pop) ; 54
(pop) ; 53
; Joined path conditions
; Joined path conditions
(pop) ; 52
(pop) ; 51
; Joined path conditions
; Joined path conditions
(pop) ; 50
(pop) ; 49
; Joined path conditions
; Joined path conditions
(pop) ; 48
(pop) ; 47
; Joined path conditions
; Joined path conditions
(pop) ; 46
(pop) ; 45
; Joined path conditions
; Joined path conditions
(assert (or
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))))
(pop) ; 44
(pop) ; 43
; Joined path conditions
; Joined path conditions
(assert (=>
  (not _loop_termination_flag_3_0@347@01)
  (and
    (not _loop_termination_flag_3_0@347@01)
    (or
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))
      (not
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))))))
(assert (or (not _loop_termination_flag_3_0@347@01) _loop_termination_flag_3_0@347@01))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (and
  (=>
    (not _loop_termination_flag_3_0@347@01)
    (and
      (not _loop_termination_flag_3_0@347@01)
      (or
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))
        (not
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))))
  (or (not _loop_termination_flag_3_0@347@01) _loop_termination_flag_3_0@347@01)))
(pop) ; 40
(pop) ; 39
; Joined path conditions
(assert (and
  (=>
    (not _loop_termination_flag_3_0@347@01)
    (and
      (not _loop_termination_flag_3_0@347@01)
      (or
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))
        (not
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))))
  (or (not _loop_termination_flag_3_0@347@01) _loop_termination_flag_3_0@347@01)))
(pop) ; 38
(pop) ; 37
; Joined path conditions
(assert (=>
  (and p2_5@205@01 (not bypass2_3@349@01))
  (and
    p2_5@205@01
    (not bypass2_3@349@01)
    (=>
      (not _loop_termination_flag_3_0@347@01)
      (and
        (not _loop_termination_flag_3_0@347@01)
        (or
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))
          (not
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))))
    (or
      (not _loop_termination_flag_3_0@347@01)
      _loop_termination_flag_3_0@347@01))))
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] p1_5 && !bypass1_3 ==> !idle1_3 ==> !_loop_check_before_3 ==> (forperm _r_17: Ref [MustInvokeBounded(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBounded] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: false)))
; [eval] p1_5 && !bypass1_3
(push) ; 37
; [then-branch: 475 | !(p1_5@204@01) | live]
; [else-branch: 475 | p1_5@204@01 | live]
(push) ; 38
; [then-branch: 475 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 38
(push) ; 38
; [else-branch: 475 | p1_5@204@01]
; [eval] !bypass1_3
(pop) ; 38
(pop) ; 37
; Joined path conditions
; Joined path conditions
(push) ; 37
(push) ; 38
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_3@348@01)))))
(check-sat)
; unknown
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 38
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_3@348@01))))
(check-sat)
; unsat
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
; [then-branch: 476 | p1_5@204@01 && !(bypass1_3@348@01) | live]
; [else-branch: 476 | !(p1_5@204@01 && !(bypass1_3@348@01)) | dead]
(set-option :timeout 0)
(push) ; 38
; [then-branch: 476 | p1_5@204@01 && !(bypass1_3@348@01)]
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
; [eval] !idle1_3 ==> !_loop_check_before_3 ==> (forperm _r_17: Ref [MustInvokeBounded(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBounded] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: false)))
; [eval] !idle1_3
(push) ; 39
(push) ; 40
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 40
; 0.00s
; (get-info :all-statistics)
; [then-branch: 477 | True | live]
; [else-branch: 477 | False | dead]
(set-option :timeout 0)
(push) ; 40
; [then-branch: 477 | True]
; [eval] !_loop_check_before_3 ==> (forperm _r_17: Ref [MustInvokeBounded(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBounded] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_3
(push) ; 41
; [then-branch: 478 | False | dead]
; [else-branch: 478 | True | live]
(push) ; 42
; [else-branch: 478 | True]
(pop) ; 42
(pop) ; 41
; Joined path conditions
(pop) ; 40
(pop) ; 39
; Joined path conditions
(pop) ; 38
(pop) ; 37
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
; [eval] p2_5 && !bypass2_3 ==> !idle2_3 ==> !_loop_check_before_3_0 ==> (forperm _r_17: Ref [MustInvokeBounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBoundedp] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnboundedp] :: false)))
; [eval] p2_5 && !bypass2_3
(push) ; 37
; [then-branch: 479 | !(p2_5@205@01) | live]
; [else-branch: 479 | p2_5@205@01 | live]
(push) ; 38
; [then-branch: 479 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 38
(push) ; 38
; [else-branch: 479 | p2_5@205@01]
; [eval] !bypass2_3
(pop) ; 38
(pop) ; 37
; Joined path conditions
; Joined path conditions
(push) ; 37
(push) ; 38
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_3@349@01)))))
(check-sat)
; unknown
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 38
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_3@349@01))))
(check-sat)
; unsat
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
; [then-branch: 480 | p2_5@205@01 && !(bypass2_3@349@01) | live]
; [else-branch: 480 | !(p2_5@205@01 && !(bypass2_3@349@01)) | dead]
(set-option :timeout 0)
(push) ; 38
; [then-branch: 480 | p2_5@205@01 && !(bypass2_3@349@01)]
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] !idle2_3 ==> !_loop_check_before_3_0 ==> (forperm _r_17: Ref [MustInvokeBounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBoundedp] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnboundedp] :: false)))
; [eval] !idle2_3
(push) ; 39
(push) ; 40
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 40
; 0.00s
; (get-info :all-statistics)
; [then-branch: 481 | True | live]
; [else-branch: 481 | False | dead]
(set-option :timeout 0)
(push) ; 40
; [then-branch: 481 | True]
; [eval] !_loop_check_before_3_0 ==> (forperm _r_17: Ref [MustInvokeBounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBoundedp] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnboundedp] :: false)))
; [eval] !_loop_check_before_3_0
(push) ; 41
; [then-branch: 482 | False | dead]
; [else-branch: 482 | True | live]
(push) ; 42
; [else-branch: 482 | True]
(pop) ; 42
(pop) ; 41
; Joined path conditions
(pop) ; 40
(pop) ; 39
; Joined path conditions
(pop) ; 38
(pop) ; 37
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] p1_5 && !bypass1_3 ==> !cond_7 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] p1_5 && !bypass1_3
(push) ; 37
; [then-branch: 483 | !(p1_5@204@01) | live]
; [else-branch: 483 | p1_5@204@01 | live]
(push) ; 38
; [then-branch: 483 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 38
(push) ; 38
; [else-branch: 483 | p1_5@204@01]
; [eval] !bypass1_3
(pop) ; 38
(pop) ; 37
; Joined path conditions
; Joined path conditions
(push) ; 37
(push) ; 38
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_3@348@01)))))
(check-sat)
; unknown
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 38
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_3@348@01))))
(check-sat)
; unsat
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
; [then-branch: 484 | p1_5@204@01 && !(bypass1_3@348@01) | live]
; [else-branch: 484 | !(p1_5@204@01 && !(bypass1_3@348@01)) | dead]
(set-option :timeout 0)
(push) ; 38
; [then-branch: 484 | p1_5@204@01 && !(bypass1_3@348@01)]
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
; [eval] !cond_7 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] !cond_7
(push) ; 39
(push) ; 40
(set-option :timeout 10)
(assert (not cond_7@350@01))
(check-sat)
; unknown
(pop) ; 40
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 40
(set-option :timeout 10)
(assert (not (not cond_7@350@01)))
(check-sat)
; unknown
(pop) ; 40
; 0.00s
; (get-info :all-statistics)
; [then-branch: 485 | !(cond_7@350@01) | live]
; [else-branch: 485 | cond_7@350@01 | live]
(set-option :timeout 0)
(push) ; 40
; [then-branch: 485 | !(cond_7@350@01)]
(assert (not cond_7@350@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 41
; [eval] _isDefined(id)
(push) ; 42
(pop) ; 42
; Joined path conditions
(pop) ; 41
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 41
(pop) ; 41
; Joined path conditions
(push) ; 41
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 41
; Joined path conditions
(pop) ; 40
(push) ; 40
; [else-branch: 485 | cond_7@350@01]
(assert cond_7@350@01)
(pop) ; 40
(pop) ; 39
; Joined path conditions
; Joined path conditions
(assert (or cond_7@350@01 (not cond_7@350@01)))
(pop) ; 38
(pop) ; 37
; Joined path conditions
(assert (=>
  (and p1_5@204@01 (not bypass1_3@348@01))
  (and p1_5@204@01 (not bypass1_3@348@01) (or cond_7@350@01 (not cond_7@350@01)))))
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
(push) ; 37
(assert (not (=>
  (and (and p1_5@204@01 (not bypass1_3@348@01)) (not cond_7@350@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
(check-sat)
; unsat
(pop) ; 37
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and (and p1_5@204@01 (not bypass1_3@348@01)) (not cond_7@350@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
; [eval] p2_5 && !bypass2_3 ==> !cond_8 ==> int___eq__(x_1_0, __prim__int___box__(1))
; [eval] p2_5 && !bypass2_3
(push) ; 37
; [then-branch: 486 | !(p2_5@205@01) | live]
; [else-branch: 486 | p2_5@205@01 | live]
(push) ; 38
; [then-branch: 486 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 38
(push) ; 38
; [else-branch: 486 | p2_5@205@01]
; [eval] !bypass2_3
(pop) ; 38
(pop) ; 37
; Joined path conditions
; Joined path conditions
(push) ; 37
(push) ; 38
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_3@349@01)))))
(check-sat)
; unknown
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 38
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_3@349@01))))
(check-sat)
; unsat
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
; [then-branch: 487 | p2_5@205@01 && !(bypass2_3@349@01) | live]
; [else-branch: 487 | !(p2_5@205@01 && !(bypass2_3@349@01)) | dead]
(set-option :timeout 0)
(push) ; 38
; [then-branch: 487 | p2_5@205@01 && !(bypass2_3@349@01)]
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] !cond_8 ==> int___eq__(x_1_0, __prim__int___box__(1))
; [eval] !cond_8
(push) ; 39
(push) ; 40
(set-option :timeout 10)
(assert (not cond_8@351@01))
(check-sat)
; unknown
(pop) ; 40
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 40
(set-option :timeout 10)
(assert (not (not cond_8@351@01)))
(check-sat)
; unknown
(pop) ; 40
; 0.00s
; (get-info :all-statistics)
; [then-branch: 488 | !(cond_8@351@01) | live]
; [else-branch: 488 | cond_8@351@01 | live]
(set-option :timeout 0)
(push) ; 40
; [then-branch: 488 | !(cond_8@351@01)]
(assert (not cond_8@351@01))
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 41
(pop) ; 41
; Joined path conditions
(push) ; 41
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 41
; Joined path conditions
(pop) ; 40
(push) ; 40
; [else-branch: 488 | cond_8@351@01]
(assert cond_8@351@01)
(pop) ; 40
(pop) ; 39
; Joined path conditions
; Joined path conditions
(assert (or cond_8@351@01 (not cond_8@351@01)))
(pop) ; 38
(pop) ; 37
; Joined path conditions
(assert (=>
  (and p2_5@205@01 (not bypass2_3@349@01))
  (and p2_5@205@01 (not bypass2_3@349@01) (or cond_8@351@01 (not cond_8@351@01)))))
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
(push) ; 37
(assert (not (=>
  (and (and p2_5@205@01 (not bypass2_3@349@01)) (not cond_8@351@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))))
(check-sat)
; unsat
(pop) ; 37
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and (and p2_5@205@01 (not bypass2_3@349@01)) (not cond_8@351@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))
; [eval] bypass1_3 ==> tmp1_37 == _loop_measures_3
(push) ; 37
; [then-branch: 489 | bypass1_3@348@01 | dead]
; [else-branch: 489 | !(bypass1_3@348@01) | live]
(push) ; 38
; [else-branch: 489 | !(bypass1_3@348@01)]
(pop) ; 38
(pop) ; 37
; Joined path conditions
; [eval] bypass1_3 ==> tmp1_38 == _loop_check_before_3
(push) ; 37
; [then-branch: 490 | bypass1_3@348@01 | dead]
; [else-branch: 490 | !(bypass1_3@348@01) | live]
(push) ; 38
; [else-branch: 490 | !(bypass1_3@348@01)]
(pop) ; 38
(pop) ; 37
; Joined path conditions
; [eval] bypass2_3 ==> tmp2_37 == _loop_measures_3_0
(push) ; 37
; [then-branch: 491 | bypass2_3@349@01 | dead]
; [else-branch: 491 | !(bypass2_3@349@01) | live]
(push) ; 38
; [else-branch: 491 | !(bypass2_3@349@01)]
(pop) ; 38
(pop) ; 37
; Joined path conditions
; [eval] bypass2_3 ==> tmp2_38 == _loop_check_before_3_0
(push) ; 37
; [then-branch: 492 | bypass2_3@349@01 | dead]
; [else-branch: 492 | !(bypass2_3@349@01) | live]
(push) ; 38
; [else-branch: 492 | !(bypass2_3@349@01)]
(pop) ; 38
(pop) ; 37
; Joined path conditions
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 37
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@360@01))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))
(assert (=
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))
  $Snap.unit))
(assert (=>
  (and p1_5@204@01 (not bypass1_3@348@01))
  (and p1_5@204@01 (not bypass1_3@348@01) cond_7@350@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))
  $Snap.unit))
(assert (=>
  (and p2_5@205@01 (not bypass2_3@349@01))
  (and p2_5@205@01 (not bypass2_3@349@01) cond_8@351@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))))
  $Snap.unit))
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second $t@360@01)))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@360@01))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@360@01)))))))
(assert (=
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@360@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@360@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@360@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))
(assert (= $t@360@01 ($Snap.combine ($Snap.first $t@360@01) ($Snap.second $t@360@01))))
(assert (= ($Snap.first $t@360@01) $Snap.unit))
(assert (=>
  (and p1_5@204@01 (not bypass1_3@348@01))
  (<= _residue_159@210@01 _residue_164@240@01)))
(assert (=
  ($Snap.second $t@360@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@360@01))
    ($Snap.second ($Snap.second $t@360@01)))))
(assert (= ($Snap.first ($Snap.second $t@360@01)) $Snap.unit))
(assert (=>
  (and p2_5@205@01 (not bypass2_3@349@01))
  (<= _residue_159_0@211@01 _residue_164_0@241@01)))
(assert (=
  ($Snap.second ($Snap.second $t@360@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@360@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 38
; [eval] p1_5 && (!bypass1_3 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))) || p2_5 && (!bypass2_3 && int___eq__(x_1_0, __prim__int___box__(1)))
; [eval] p1_5 && (!bypass1_3 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)))
(push) ; 39
; [then-branch: 493 | !(p1_5@204@01) | live]
; [else-branch: 493 | p1_5@204@01 | live]
(push) ; 40
; [then-branch: 493 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 40
(push) ; 40
; [else-branch: 493 | p1_5@204@01]
; [eval] !bypass1_3
(push) ; 41
; [then-branch: 494 | bypass1_3@348@01 | live]
; [else-branch: 494 | !(bypass1_3@348@01) | live]
(push) ; 42
; [then-branch: 494 | bypass1_3@348@01]
(assert bypass1_3@348@01)
(pop) ; 42
(push) ; 42
; [else-branch: 494 | !(bypass1_3@348@01)]
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 43
; [eval] _isDefined(id)
(push) ; 44
(pop) ; 44
; Joined path conditions
(pop) ; 43
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 43
(pop) ; 43
; Joined path conditions
(push) ; 43
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 43
; Joined path conditions
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_3@348@01) bypass1_3@348@01))
(pop) ; 40
(pop) ; 39
; Joined path conditions
; Joined path conditions
(assert (=> p1_5@204@01 (or (not bypass1_3@348@01) bypass1_3@348@01)))
(push) ; 39
; [then-branch: 495 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) | live]
; [else-branch: 495 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))) | live]
(push) ; 40
; [then-branch: 495 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_3@348@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
(pop) ; 40
(push) ; 40
; [else-branch: 495 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))))
; [eval] p2_5 && (!bypass2_3 && int___eq__(x_1_0, __prim__int___box__(1)))
(push) ; 41
; [then-branch: 496 | !(p2_5@205@01) | live]
; [else-branch: 496 | p2_5@205@01 | live]
(push) ; 42
; [then-branch: 496 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 42
(push) ; 42
; [else-branch: 496 | p2_5@205@01]
; [eval] !bypass2_3
(push) ; 43
; [then-branch: 497 | bypass2_3@349@01 | live]
; [else-branch: 497 | !(bypass2_3@349@01) | live]
(push) ; 44
; [then-branch: 497 | bypass2_3@349@01]
(assert bypass2_3@349@01)
(pop) ; 44
(push) ; 44
; [else-branch: 497 | !(bypass2_3@349@01)]
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 45
(pop) ; 45
; Joined path conditions
(push) ; 45
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 45
; Joined path conditions
(pop) ; 44
(pop) ; 43
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_3@349@01) bypass2_3@349@01))
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (or (not bypass2_3@349@01) bypass2_3@349@01)))
(pop) ; 40
(pop) ; 39
; Joined path conditions
(assert (=>
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
  (and
    p1_5@204@01
    (not bypass1_3@348@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_3@348@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
  (and
    (not
      (and
        p1_5@204@01
        (and
          (not bypass1_3@348@01)
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
    (=> p2_5@205@01 (or (not bypass2_3@349@01) bypass2_3@349@01)))))
(assert (or
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_3@348@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))))
(pop) ; 38
(push) ; 38
; [eval] !(p1_5 && (!bypass1_3 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))) || p2_5 && (!bypass2_3 && int___eq__(x_1_0, __prim__int___box__(1))))
; [eval] p1_5 && (!bypass1_3 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))) || p2_5 && (!bypass2_3 && int___eq__(x_1_0, __prim__int___box__(1)))
; [eval] p1_5 && (!bypass1_3 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)))
(push) ; 39
; [then-branch: 498 | !(p1_5@204@01) | live]
; [else-branch: 498 | p1_5@204@01 | live]
(push) ; 40
; [then-branch: 498 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 40
(push) ; 40
; [else-branch: 498 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_3
(push) ; 41
; [then-branch: 499 | bypass1_3@348@01 | live]
; [else-branch: 499 | !(bypass1_3@348@01) | live]
(push) ; 42
; [then-branch: 499 | bypass1_3@348@01]
(assert bypass1_3@348@01)
(pop) ; 42
(push) ; 42
; [else-branch: 499 | !(bypass1_3@348@01)]
(assert (not bypass1_3@348@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 43
; [eval] _isDefined(id)
(push) ; 44
(pop) ; 44
; Joined path conditions
(pop) ; 43
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 43
(pop) ; 43
; Joined path conditions
(push) ; 43
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 43
; Joined path conditions
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_3@348@01) bypass1_3@348@01))
(pop) ; 40
(pop) ; 39
; Joined path conditions
; Joined path conditions
(assert (=> p1_5@204@01 (and p1_5@204@01 (or (not bypass1_3@348@01) bypass1_3@348@01))))
(push) ; 39
; [then-branch: 500 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) | live]
; [else-branch: 500 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))) | live]
(push) ; 40
; [then-branch: 500 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_3@348@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
(pop) ; 40
(push) ; 40
; [else-branch: 500 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))))
; [eval] p2_5 && (!bypass2_3 && int___eq__(x_1_0, __prim__int___box__(1)))
(push) ; 41
; [then-branch: 501 | !(p2_5@205@01) | live]
; [else-branch: 501 | p2_5@205@01 | live]
(push) ; 42
; [then-branch: 501 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 42
(push) ; 42
; [else-branch: 501 | p2_5@205@01]
; [eval] !bypass2_3
(push) ; 43
; [then-branch: 502 | bypass2_3@349@01 | live]
; [else-branch: 502 | !(bypass2_3@349@01) | live]
(push) ; 44
; [then-branch: 502 | bypass2_3@349@01]
(assert bypass2_3@349@01)
(pop) ; 44
(push) ; 44
; [else-branch: 502 | !(bypass2_3@349@01)]
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 45
(pop) ; 45
; Joined path conditions
(push) ; 45
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 45
; Joined path conditions
(pop) ; 44
(pop) ; 43
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_3@349@01) bypass2_3@349@01))
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (or (not bypass2_3@349@01) bypass2_3@349@01)))
(pop) ; 40
(pop) ; 39
; Joined path conditions
(assert (=>
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
  (and
    p1_5@204@01
    (not bypass1_3@348@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_3@348@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
  (and
    (not
      (and
        p1_5@204@01
        (and
          (not bypass1_3@348@01)
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
    (=> p2_5@205@01 (or (not bypass2_3@349@01) bypass2_3@349@01)))))
(assert (or
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_3@348@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))))
(pop) ; 38
; Loop head block: Follow loop-internal edges
; [eval] p1_5 && (!bypass1_3 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))) || p2_5 && (!bypass2_3 && int___eq__(x_1_0, __prim__int___box__(1)))
; [eval] p1_5 && (!bypass1_3 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)))
(push) ; 38
; [then-branch: 503 | !(p1_5@204@01) | live]
; [else-branch: 503 | p1_5@204@01 | live]
(push) ; 39
; [then-branch: 503 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 39
(push) ; 39
; [else-branch: 503 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_3
(push) ; 40
; [then-branch: 504 | bypass1_3@348@01 | live]
; [else-branch: 504 | !(bypass1_3@348@01) | live]
(push) ; 41
; [then-branch: 504 | bypass1_3@348@01]
(assert bypass1_3@348@01)
(pop) ; 41
(push) ; 41
; [else-branch: 504 | !(bypass1_3@348@01)]
(assert (not bypass1_3@348@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 42
; [eval] _isDefined(id)
(push) ; 43
(pop) ; 43
; Joined path conditions
(pop) ; 42
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 42
(pop) ; 42
; Joined path conditions
(push) ; 42
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 42
; Joined path conditions
(pop) ; 41
(pop) ; 40
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_3@348@01) bypass1_3@348@01))
(pop) ; 39
(pop) ; 38
; Joined path conditions
; Joined path conditions
(assert (=> p1_5@204@01 (and p1_5@204@01 (or (not bypass1_3@348@01) bypass1_3@348@01))))
(push) ; 38
; [then-branch: 505 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) | live]
; [else-branch: 505 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))) | live]
(push) ; 39
; [then-branch: 505 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_3@348@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
(pop) ; 39
(push) ; 39
; [else-branch: 505 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))))
; [eval] p2_5 && (!bypass2_3 && int___eq__(x_1_0, __prim__int___box__(1)))
(push) ; 40
; [then-branch: 506 | !(p2_5@205@01) | live]
; [else-branch: 506 | p2_5@205@01 | live]
(push) ; 41
; [then-branch: 506 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 41
(push) ; 41
; [else-branch: 506 | p2_5@205@01]
; [eval] !bypass2_3
(push) ; 42
; [then-branch: 507 | bypass2_3@349@01 | live]
; [else-branch: 507 | !(bypass2_3@349@01) | live]
(push) ; 43
; [then-branch: 507 | bypass2_3@349@01]
(assert bypass2_3@349@01)
(pop) ; 43
(push) ; 43
; [else-branch: 507 | !(bypass2_3@349@01)]
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 44
(pop) ; 44
; Joined path conditions
(push) ; 44
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 44
; Joined path conditions
(pop) ; 43
(pop) ; 42
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_3@349@01) bypass2_3@349@01))
(pop) ; 41
(pop) ; 40
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (or (not bypass2_3@349@01) bypass2_3@349@01)))
(pop) ; 39
(pop) ; 38
; Joined path conditions
(assert (=>
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
  (and
    p1_5@204@01
    (not bypass1_3@348@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_3@348@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
  (and
    (not
      (and
        p1_5@204@01
        (and
          (not bypass1_3@348@01)
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
    (=> p2_5@205@01 (or (not bypass2_3@349@01) bypass2_3@349@01)))))
(assert (or
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_3@348@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))))
(push) ; 38
(set-option :timeout 10)
(assert (not (not
  (or
    (and
      p1_5@204@01
      (and
        (not bypass1_3@348@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
    (and
      p2_5@205@01
      (and
        (not bypass2_3@349@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))))))
(check-sat)
; unsat
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
; [then-branch: 508 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) || p2_5@205@01 && !(bypass2_3@349@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1)) | dead]
; [else-branch: 508 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) || p2_5@205@01 && !(bypass2_3@349@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1))) | live]
(set-option :timeout 0)
(push) ; 38
; [else-branch: 508 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) || p2_5@205@01 && !(bypass2_3@349@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1)))]
(assert (not
  (or
    (and
      p1_5@204@01
      (and
        (not bypass1_3@348@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
    (and
      p2_5@205@01
      (and
        (not bypass2_3@349@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))))))
(pop) ; 38
; [eval] !(p1_5 && (!bypass1_3 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))) || p2_5 && (!bypass2_3 && int___eq__(x_1_0, __prim__int___box__(1))))
; [eval] p1_5 && (!bypass1_3 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))) || p2_5 && (!bypass2_3 && int___eq__(x_1_0, __prim__int___box__(1)))
; [eval] p1_5 && (!bypass1_3 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)))
(push) ; 38
; [then-branch: 509 | !(p1_5@204@01) | live]
; [else-branch: 509 | p1_5@204@01 | live]
(push) ; 39
; [then-branch: 509 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 39
(push) ; 39
; [else-branch: 509 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_3
(push) ; 40
; [then-branch: 510 | bypass1_3@348@01 | live]
; [else-branch: 510 | !(bypass1_3@348@01) | live]
(push) ; 41
; [then-branch: 510 | bypass1_3@348@01]
(assert bypass1_3@348@01)
(pop) ; 41
(push) ; 41
; [else-branch: 510 | !(bypass1_3@348@01)]
(assert (not bypass1_3@348@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 42
; [eval] _isDefined(id)
(push) ; 43
(pop) ; 43
; Joined path conditions
(pop) ; 42
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 42
(pop) ; 42
; Joined path conditions
(push) ; 42
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 42
; Joined path conditions
(pop) ; 41
(pop) ; 40
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_3@348@01) bypass1_3@348@01))
(pop) ; 39
(pop) ; 38
; Joined path conditions
; Joined path conditions
(push) ; 38
; [then-branch: 511 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) | live]
; [else-branch: 511 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))) | live]
(push) ; 39
; [then-branch: 511 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_3@348@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
(pop) ; 39
(push) ; 39
; [else-branch: 511 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))))
; [eval] p2_5 && (!bypass2_3 && int___eq__(x_1_0, __prim__int___box__(1)))
(push) ; 40
; [then-branch: 512 | !(p2_5@205@01) | live]
; [else-branch: 512 | p2_5@205@01 | live]
(push) ; 41
; [then-branch: 512 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 41
(push) ; 41
; [else-branch: 512 | p2_5@205@01]
; [eval] !bypass2_3
(push) ; 42
; [then-branch: 513 | bypass2_3@349@01 | live]
; [else-branch: 513 | !(bypass2_3@349@01) | live]
(push) ; 43
; [then-branch: 513 | bypass2_3@349@01]
(assert bypass2_3@349@01)
(pop) ; 43
(push) ; 43
; [else-branch: 513 | !(bypass2_3@349@01)]
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 44
(pop) ; 44
; Joined path conditions
(push) ; 44
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 44
; Joined path conditions
(pop) ; 43
(pop) ; 42
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_3@349@01) bypass2_3@349@01))
(pop) ; 41
(pop) ; 40
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (or (not bypass2_3@349@01) bypass2_3@349@01)))
(pop) ; 39
(pop) ; 38
; Joined path conditions
; Joined path conditions
(push) ; 38
(set-option :timeout 10)
(assert (not (or
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
  (and
    p2_5@205@01
    (and
      (not bypass2_3@349@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))))))
(check-sat)
; unknown
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 38
(set-option :timeout 10)
(assert (not (not
  (or
    (and
      p1_5@204@01
      (and
        (not bypass1_3@348@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
    (and
      p2_5@205@01
      (and
        (not bypass2_3@349@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))))))
(check-sat)
; unsat
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
; [then-branch: 514 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) || p2_5@205@01 && !(bypass2_3@349@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1))) | live]
; [else-branch: 514 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) || p2_5@205@01 && !(bypass2_3@349@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1)) | dead]
(set-option :timeout 0)
(push) ; 38
; [then-branch: 514 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) || p2_5@205@01 && !(bypass2_3@349@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1)))]
(assert (not
  (or
    (and
      p1_5@204@01
      (and
        (not bypass1_3@348@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
    (and
      p2_5@205@01
      (and
        (not bypass2_3@349@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))))))
(push) ; 39
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 39
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 39
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unsat
(pop) ; 39
; 0.00s
; (get-info :all-statistics)
; [then-branch: 515 | p1_5@204@01 | live]
; [else-branch: 515 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 39
; [then-branch: 515 | p1_5@204@01]
(assert p1_5@204@01)
; [exec]
; exhale perm(MustTerminate(_cthread_159)) > none ==>
;   acc(MustTerminate(_cthread_159), perm(MustTerminate(_cthread_159)) -
;   _loop_original_must_terminate_3)
; [eval] perm(MustTerminate(_cthread_159)) > none
; [eval] perm(MustTerminate(_cthread_159))
(push) ; 40
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 40
; 0.00s
; (get-info :all-statistics)
; [then-branch: 516 | True | live]
; [else-branch: 516 | False | dead]
(set-option :timeout 0)
(push) ; 40
; [then-branch: 516 | True]
; [eval] perm(MustTerminate(_cthread_159)) - _loop_original_must_terminate_3
; [eval] perm(MustTerminate(_cthread_159))
(push) ; 41
(assert (not (or
  (= (- $Perm.Write _loop_original_must_terminate_3@344@01) $Perm.No)
  (< $Perm.No (- $Perm.Write _loop_original_must_terminate_3@344@01)))))
(check-sat)
; unsat
(pop) ; 41
; 0.00s
; (get-info :all-statistics)
(push) ; 41
(set-option :timeout 10)
(assert (not (=
  (-
    $Perm.Write
    ($Perm.min
      $Perm.Write
      (- $Perm.Write _loop_original_must_terminate_3@344@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 41
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 41
(assert (not (or
  (=
    (-
      (- $Perm.Write _loop_original_must_terminate_3@344@01)
      ($Perm.min
        $Perm.Write
        (- $Perm.Write _loop_original_must_terminate_3@344@01)))
    $Perm.No)
  (<
    (-
      (- $Perm.Write _loop_original_must_terminate_3@344@01)
      ($Perm.min
        $Perm.Write
        (- $Perm.Write _loop_original_must_terminate_3@344@01)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 41
; 0.00s
; (get-info :all-statistics)
(push) ; 41
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 41
; 0.00s
; (get-info :all-statistics)
; [then-branch: 517 | p2_5@205@01 | live]
; [else-branch: 517 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 41
; [then-branch: 517 | p2_5@205@01]
; [exec]
; exhale perm(MustTerminate_0(_cthread_159_0)) > none ==>
;   acc(MustTerminate_0(_cthread_159_0), perm(MustTerminate_0(_cthread_159_0)) -
;   _loop_original_must_terminate_3_0)
; [eval] perm(MustTerminate_0(_cthread_159_0)) > none
; [eval] perm(MustTerminate_0(_cthread_159_0))
(push) ; 42
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 518 | True | live]
; [else-branch: 518 | False | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 518 | True]
; [eval] perm(MustTerminate_0(_cthread_159_0)) - _loop_original_must_terminate_3_0
; [eval] perm(MustTerminate_0(_cthread_159_0))
(push) ; 43
(assert (not (or
  (= (- $Perm.Write _loop_original_must_terminate_3_0@346@01) $Perm.No)
  (< $Perm.No (- $Perm.Write _loop_original_must_terminate_3_0@346@01)))))
(check-sat)
; unsat
(pop) ; 43
; 0.00s
; (get-info :all-statistics)
(push) ; 43
(set-option :timeout 10)
(assert (not (=
  (-
    $Perm.Write
    ($Perm.min
      $Perm.Write
      (- $Perm.Write _loop_original_must_terminate_3_0@346@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 43
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 43
(assert (not (or
  (=
    (-
      (- $Perm.Write _loop_original_must_terminate_3_0@346@01)
      ($Perm.min
        $Perm.Write
        (- $Perm.Write _loop_original_must_terminate_3_0@346@01)))
    $Perm.No)
  (<
    (-
      (- $Perm.Write _loop_original_must_terminate_3_0@346@01)
      ($Perm.min
        $Perm.Write
        (- $Perm.Write _loop_original_must_terminate_3_0@346@01)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 43
; 0.00s
; (get-info :all-statistics)
; [eval] p1_5 || p2_5
(push) ; 43
; [then-branch: 519 | p1_5@204@01 | live]
; [else-branch: 519 | !(p1_5@204@01) | live]
(push) ; 44
; [then-branch: 519 | p1_5@204@01]
(pop) ; 44
(push) ; 44
; [else-branch: 519 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 44
(pop) ; 43
; Joined path conditions
; Joined path conditions
(push) ; 43
(set-option :timeout 10)
(assert (not (not (or p1_5@204@01 p2_5@205@01))))
(check-sat)
; unknown
(pop) ; 43
; 0.00s
; (get-info :all-statistics)
; [then-branch: 520 | p1_5@204@01 || p2_5@205@01 | live]
; [else-branch: 520 | !(p1_5@204@01 || p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 43
; [then-branch: 520 | p1_5@204@01 || p2_5@205@01]
; [exec]
; var tmp1_39: Ref
(declare-const tmp1_39@361@01 $Ref)
; [exec]
; var tmp2_39: Ref
(declare-const tmp2_39@362@01 $Ref)
; [exec]
; var tmp1_40: Seq[Measure$]
(declare-const tmp1_40@363@01 Seq<Measure$>)
; [exec]
; var tmp2_40: Seq[Measure$]
(declare-const tmp2_40@364@01 Seq<Measure$>)
; [exec]
; var tmp1_41: Perm
(declare-const tmp1_41@365@01 $Perm)
; [exec]
; var tmp2_41: Perm
(declare-const tmp2_41@366@01 $Perm)
; [exec]
; var tmp1_42: Ref
(declare-const tmp1_42@367@01 $Ref)
; [exec]
; var tmp2_42: Ref
(declare-const tmp2_42@368@01 $Ref)
; [exec]
; var tmp1_43: Perm
(declare-const tmp1_43@369@01 $Perm)
; [exec]
; var tmp2_43: Perm
(declare-const tmp2_43@370@01 $Perm)
(push) ; 44
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
; [then-branch: 521 | p1_5@204@01 | live]
; [else-branch: 521 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 44
; [then-branch: 521 | p1_5@204@01]
; [exec]
; tmp1_39 := _cthread_159
; [exec]
; tmp1_40 := _method_measures_159
; [exec]
; tmp1_41 := _residue_159
; [exec]
; tmp1_42 := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 45
(pop) ; 45
; Joined path conditions
(declare-const tmp1_42@371@01 $Ref)
(assert (= tmp1_42@371@01 (__prim__int___box__ $Snap.unit 0)))
(push) ; 45
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 45
; 0.00s
; (get-info :all-statistics)
; [then-branch: 522 | p2_5@205@01 | live]
; [else-branch: 522 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 45
; [then-branch: 522 | p2_5@205@01]
; [exec]
; tmp2_39 := _cthread_159_0
; [exec]
; tmp2_40 := _method_measures_159_0
; [exec]
; tmp2_41 := _residue_159_0
; [exec]
; tmp2_42 := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 46
(pop) ; 46
; Joined path conditions
(declare-const tmp2_42@372@01 $Ref)
(assert (= tmp2_42@372@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; tmp1_43, tmp2_43 := _print(p1_5, p2_5, tmp1_39, tmp2_39, tmp1_40, tmp2_40, tmp1_41,
;   tmp2_41, tmp1_42, tmp2_42)
; [eval] p1 ==> _cthread_156 != null
(push) ; 46
(push) ; 47
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 47
; 0.00s
; (get-info :all-statistics)
; [then-branch: 523 | p1_5@204@01 | live]
; [else-branch: 523 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 47
; [then-branch: 523 | p1_5@204@01]
; [eval] _cthread_156 != null
(pop) ; 47
(pop) ; 46
; Joined path conditions
; [eval] p2 ==> _cthread_156_0 != null
(push) ; 46
(push) ; 47
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 47
; 0.00s
; (get-info :all-statistics)
; [then-branch: 524 | p2_5@205@01 | live]
; [else-branch: 524 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 47
; [then-branch: 524 | p2_5@205@01]
; [eval] _cthread_156_0 != null
(pop) ; 47
(pop) ; 46
; Joined path conditions
; [eval] p1 ==> issubtype(typeof(_cthread_156), Thread_0())
(push) ; 46
(push) ; 47
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 47
; 0.00s
; (get-info :all-statistics)
; [then-branch: 525 | p1_5@204@01 | live]
; [else-branch: 525 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 47
; [then-branch: 525 | p1_5@204@01]
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
(pop) ; 47
(pop) ; 46
; Joined path conditions
; [eval] p2 ==> issubtype(typeof(_cthread_156_0), Thread_0())
(push) ; 46
(push) ; 47
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 47
; 0.00s
; (get-info :all-statistics)
; [then-branch: 526 | p2_5@205@01 | live]
; [else-branch: 526 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 47
; [then-branch: 526 | p2_5@205@01]
; [eval] issubtype(typeof(_cthread_156_0), Thread_0())
; [eval] typeof(_cthread_156_0)
; [eval] Thread_0()
(pop) ; 47
(pop) ; 46
; Joined path conditions
; [eval] p1 ==> issubtype(typeof(val), int())
(push) ; 46
(push) ; 47
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 47
; 0.00s
; (get-info :all-statistics)
; [then-branch: 527 | p1_5@204@01 | live]
; [else-branch: 527 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 47
; [then-branch: 527 | p1_5@204@01]
; [eval] issubtype(typeof(val), int())
; [eval] typeof(val)
; [eval] int()
(pop) ; 47
(pop) ; 46
; Joined path conditions
(push) ; 46
(assert (not (=>
  p1_5@204@01
  (issubtype<Bool> (typeof<PyType> tmp1_42@371@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 46
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p1_5@204@01
  (issubtype<Bool> (typeof<PyType> tmp1_42@371@01) (as int<PyType>  PyType))))
; [eval] p2 ==> issubtype(typeof(val_1), int())
(push) ; 46
(push) ; 47
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 47
; 0.00s
; (get-info :all-statistics)
; [then-branch: 528 | p2_5@205@01 | live]
; [else-branch: 528 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 47
; [then-branch: 528 | p2_5@205@01]
; [eval] issubtype(typeof(val_1), int())
; [eval] typeof(val_1)
; [eval] int()
(pop) ; 47
(pop) ; 46
; Joined path conditions
(push) ; 46
(assert (not (=>
  p2_5@205@01
  (issubtype<Bool> (typeof<PyType> tmp2_42@372@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 46
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p2_5@205@01
  (issubtype<Bool> (typeof<PyType> tmp2_42@372@01) (as int<PyType>  PyType))))
; [eval] p1 == p2
; [eval] p1 && p2 ==> val == val_1
; [eval] p1 && p2
(push) ; 46
; [then-branch: 529 | !(p1_5@204@01) | live]
; [else-branch: 529 | p1_5@204@01 | live]
(push) ; 47
; [then-branch: 529 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 47
(push) ; 47
; [else-branch: 529 | p1_5@204@01]
(pop) ; 47
(pop) ; 46
; Joined path conditions
; Joined path conditions
(push) ; 46
(push) ; 47
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 p2_5@205@01))))
(check-sat)
; unknown
(pop) ; 47
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 47
(set-option :timeout 10)
(assert (not (and p1_5@204@01 p2_5@205@01)))
(check-sat)
; unsat
(pop) ; 47
; 0.00s
; (get-info :all-statistics)
; [then-branch: 530 | p1_5@204@01 && p2_5@205@01 | live]
; [else-branch: 530 | !(p1_5@204@01 && p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 47
; [then-branch: 530 | p1_5@204@01 && p2_5@205@01]
(assert (and p1_5@204@01 p2_5@205@01))
; [eval] val == val_1
(pop) ; 47
(pop) ; 46
; Joined path conditions
(assert (and p1_5@204@01 p2_5@205@01))
(push) ; 46
(assert (not (=> (and p1_5@204@01 p2_5@205@01) (= tmp1_42@371@01 tmp2_42@372@01))))
(check-sat)
; unsat
(pop) ; 46
; 0.00s
; (get-info :all-statistics)
(assert (=> (and p1_5@204@01 p2_5@205@01) (= tmp1_42@371@01 tmp2_42@372@01)))
; [eval] p1 ==> perm(MustTerminate(_cthread_156)) == none && ((forperm _r_1: Ref [MustInvokeBounded(_r_1)] :: false) && ((forperm _r_1: Ref [MustInvokeUnbounded(_r_1)] :: false) && ((forperm _r_1: Ref [_r_1.MustReleaseBounded] :: false) && (forperm _r_1: Ref [_r_1.MustReleaseUnbounded] :: false))))
(push) ; 46
(push) ; 47
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 47
; 0.00s
; (get-info :all-statistics)
; [then-branch: 531 | p1_5@204@01 | live]
; [else-branch: 531 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 47
; [then-branch: 531 | p1_5@204@01]
; [eval] perm(MustTerminate(_cthread_156)) == none && ((forperm _r_1: Ref [MustInvokeBounded(_r_1)] :: false) && ((forperm _r_1: Ref [MustInvokeUnbounded(_r_1)] :: false) && ((forperm _r_1: Ref [_r_1.MustReleaseBounded] :: false) && (forperm _r_1: Ref [_r_1.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_156)) == none
; [eval] perm(MustTerminate(_cthread_156))
(push) ; 48
; [then-branch: 532 | False | live]
; [else-branch: 532 | True | live]
(push) ; 49
; [then-branch: 532 | False]
(assert false)
(pop) ; 49
(push) ; 49
; [else-branch: 532 | True]
; [eval] (forperm _r_1: Ref [MustInvokeBounded(_r_1)] :: false)
(push) ; 50
; [then-branch: 533 | False | live]
; [else-branch: 533 | True | live]
(push) ; 51
; [then-branch: 533 | False]
(assert false)
(pop) ; 51
(push) ; 51
; [else-branch: 533 | True]
; [eval] (forperm _r_1: Ref [MustInvokeUnbounded(_r_1)] :: false)
(push) ; 52
; [then-branch: 534 | False | live]
; [else-branch: 534 | True | live]
(push) ; 53
; [then-branch: 534 | False]
(assert false)
(pop) ; 53
(push) ; 53
; [else-branch: 534 | True]
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseBounded] :: false)
(push) ; 54
; [then-branch: 535 | False | live]
; [else-branch: 535 | True | live]
(push) ; 55
; [then-branch: 535 | False]
(assert false)
(pop) ; 55
(push) ; 55
; [else-branch: 535 | True]
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseUnbounded] :: false)
(pop) ; 55
(pop) ; 54
; Joined path conditions
; Joined path conditions
(pop) ; 53
(pop) ; 52
; Joined path conditions
; Joined path conditions
(pop) ; 51
(pop) ; 50
; Joined path conditions
; Joined path conditions
(pop) ; 49
(pop) ; 48
; Joined path conditions
; Joined path conditions
(pop) ; 47
(pop) ; 46
; Joined path conditions
; [eval] p2 ==> perm(MustTerminate_0(_cthread_156_0)) == none && ((forperm _r_1: Ref [MustInvokeBounded_0(_r_1)] :: false) && ((forperm _r_1: Ref [MustInvokeUnbounded_0(_r_1)] :: false) && ((forperm _r_1: Ref [_r_1.MustReleaseBoundedp] :: false) && (forperm _r_1: Ref [_r_1.MustReleaseUnboundedp] :: false))))
(push) ; 46
(push) ; 47
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 47
; 0.00s
; (get-info :all-statistics)
; [then-branch: 536 | p2_5@205@01 | live]
; [else-branch: 536 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 47
; [then-branch: 536 | p2_5@205@01]
; [eval] perm(MustTerminate_0(_cthread_156_0)) == none && ((forperm _r_1: Ref [MustInvokeBounded_0(_r_1)] :: false) && ((forperm _r_1: Ref [MustInvokeUnbounded_0(_r_1)] :: false) && ((forperm _r_1: Ref [_r_1.MustReleaseBoundedp] :: false) && (forperm _r_1: Ref [_r_1.MustReleaseUnboundedp] :: false))))
; [eval] perm(MustTerminate_0(_cthread_156_0)) == none
; [eval] perm(MustTerminate_0(_cthread_156_0))
(push) ; 48
; [then-branch: 537 | False | live]
; [else-branch: 537 | True | live]
(push) ; 49
; [then-branch: 537 | False]
(assert false)
(pop) ; 49
(push) ; 49
; [else-branch: 537 | True]
; [eval] (forperm _r_1: Ref [MustInvokeBounded_0(_r_1)] :: false)
(push) ; 50
; [then-branch: 538 | False | live]
; [else-branch: 538 | True | live]
(push) ; 51
; [then-branch: 538 | False]
(assert false)
(pop) ; 51
(push) ; 51
; [else-branch: 538 | True]
; [eval] (forperm _r_1: Ref [MustInvokeUnbounded_0(_r_1)] :: false)
(push) ; 52
; [then-branch: 539 | False | live]
; [else-branch: 539 | True | live]
(push) ; 53
; [then-branch: 539 | False]
(assert false)
(pop) ; 53
(push) ; 53
; [else-branch: 539 | True]
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseBoundedp] :: false)
(push) ; 54
; [then-branch: 540 | False | live]
; [else-branch: 540 | True | live]
(push) ; 55
; [then-branch: 540 | False]
(assert false)
(pop) ; 55
(push) ; 55
; [else-branch: 540 | True]
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseUnboundedp] :: false)
(pop) ; 55
(pop) ; 54
; Joined path conditions
; Joined path conditions
(pop) ; 53
(pop) ; 52
; Joined path conditions
; Joined path conditions
(pop) ; 51
(pop) ; 50
; Joined path conditions
; Joined path conditions
(pop) ; 49
(pop) ; 48
; Joined path conditions
; Joined path conditions
(pop) ; 47
(pop) ; 46
; Joined path conditions
(declare-const _current_wait_level_156@373@01 $Perm)
(declare-const _current_wait_level_156_0@374@01 $Perm)
(declare-const $t@375@01 $Snap)
(assert (= $t@375@01 ($Snap.combine ($Snap.first $t@375@01) ($Snap.second $t@375@01))))
(assert (= ($Snap.first $t@375@01) $Snap.unit))
; [eval] p1 ==> (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156) && ((forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156) && _residue_156 <= _current_wait_level_156)
(push) ; 46
(push) ; 47
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 47
; 0.00s
; (get-info :all-statistics)
; [then-branch: 541 | p1_5@204@01 | live]
; [else-branch: 541 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 47
; [then-branch: 541 | p1_5@204@01]
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156) && ((forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156) && _residue_156 <= _current_wait_level_156)
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156)
(push) ; 48
; [then-branch: 542 | False | live]
; [else-branch: 542 | True | live]
(push) ; 49
; [then-branch: 542 | False]
(assert false)
(pop) ; 49
(push) ; 49
; [else-branch: 542 | True]
; [eval] (forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156)
(push) ; 50
; [then-branch: 543 | False | live]
; [else-branch: 543 | True | live]
(push) ; 51
; [then-branch: 543 | False]
(assert false)
(pop) ; 51
(push) ; 51
; [else-branch: 543 | True]
; [eval] _residue_156 <= _current_wait_level_156
(pop) ; 51
(pop) ; 50
; Joined path conditions
; Joined path conditions
(pop) ; 49
(pop) ; 48
; Joined path conditions
; Joined path conditions
(pop) ; 47
(pop) ; 46
; Joined path conditions
(assert (=> p1_5@204@01 (<= _residue_159@210@01 _current_wait_level_156@373@01)))
(assert (=
  ($Snap.second $t@375@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@375@01))
    ($Snap.second ($Snap.second $t@375@01)))))
(assert (= ($Snap.first ($Snap.second $t@375@01)) $Snap.unit))
; [eval] p2 ==> (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _current_wait_level_156_0) && ((forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _current_wait_level_156_0) && _residue_156_0 <= _current_wait_level_156_0)
(push) ; 46
(push) ; 47
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 47
; 0.00s
; (get-info :all-statistics)
; [then-branch: 544 | p2_5@205@01 | live]
; [else-branch: 544 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 47
; [then-branch: 544 | p2_5@205@01]
; [eval] (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _current_wait_level_156_0) && ((forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _current_wait_level_156_0) && _residue_156_0 <= _current_wait_level_156_0)
; [eval] (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _current_wait_level_156_0)
(push) ; 48
; [then-branch: 545 | False | live]
; [else-branch: 545 | True | live]
(push) ; 49
; [then-branch: 545 | False]
(assert false)
(pop) ; 49
(push) ; 49
; [else-branch: 545 | True]
; [eval] (forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _current_wait_level_156_0)
(push) ; 50
; [then-branch: 546 | False | live]
; [else-branch: 546 | True | live]
(push) ; 51
; [then-branch: 546 | False]
(assert false)
(pop) ; 51
(push) ; 51
; [else-branch: 546 | True]
; [eval] _residue_156_0 <= _current_wait_level_156_0
(pop) ; 51
(pop) ; 50
; Joined path conditions
; Joined path conditions
(pop) ; 49
(pop) ; 48
; Joined path conditions
; Joined path conditions
(pop) ; 47
(pop) ; 46
; Joined path conditions
(assert (=> p2_5@205@01 (<= _residue_159_0@211@01 _current_wait_level_156_0@374@01)))
(assert (=
  ($Snap.second ($Snap.second $t@375@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@375@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@375@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@375@01))) $Snap.unit))
; [eval] p1 ==> true
(push) ; 46
(push) ; 47
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 47
; 0.00s
; (get-info :all-statistics)
; [then-branch: 547 | p1_5@204@01 | live]
; [else-branch: 547 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 47
; [then-branch: 547 | p1_5@204@01]
(pop) ; 47
(pop) ; 46
; Joined path conditions
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@375@01))) $Snap.unit))
; [eval] p2 ==> true
(push) ; 46
(push) ; 47
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 47
; 0.00s
; (get-info :all-statistics)
; [then-branch: 548 | p2_5@205@01 | live]
; [else-branch: 548 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 47
; [then-branch: 548 | p2_5@205@01]
(pop) ; 47
(pop) ; 46
; Joined path conditions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 46
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 46
; 0.00s
; (get-info :all-statistics)
; [then-branch: 549 | p1_5@204@01 | live]
; [else-branch: 549 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 46
; [then-branch: 549 | p1_5@204@01]
; [exec]
; _cwl_159 := tmp1_43
(push) ; 47
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 47
; 0.00s
; (get-info :all-statistics)
; [then-branch: 550 | p2_5@205@01 | live]
; [else-branch: 550 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 47
; [then-branch: 550 | p2_5@205@01]
; [exec]
; _cwl_159_0 := tmp2_43
; [exec]
; inhale p1_5 && p2_5 ==>
;   __prim__bool___box__(int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))) ==
;   __prim__bool___box__(int___eq__(x_1_0, __prim__int___box__(2)))
(declare-const $t@376@01 $Snap)
(assert (= $t@376@01 $Snap.unit))
; [eval] p1_5 && p2_5 ==> __prim__bool___box__(int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))) == __prim__bool___box__(int___eq__(x_1_0, __prim__int___box__(2)))
; [eval] p1_5 && p2_5
(push) ; 48
; [then-branch: 551 | !(p1_5@204@01) | live]
; [else-branch: 551 | p1_5@204@01 | live]
(push) ; 49
; [then-branch: 551 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 49
(push) ; 49
; [else-branch: 551 | p1_5@204@01]
(pop) ; 49
(pop) ; 48
; Joined path conditions
; Joined path conditions
(push) ; 48
(push) ; 49
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 p2_5@205@01))))
(check-sat)
; unknown
(pop) ; 49
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 49
(set-option :timeout 10)
(assert (not (and p1_5@204@01 p2_5@205@01)))
(check-sat)
; unsat
(pop) ; 49
; 0.00s
; (get-info :all-statistics)
; [then-branch: 552 | p1_5@204@01 && p2_5@205@01 | live]
; [else-branch: 552 | !(p1_5@204@01 && p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 49
; [then-branch: 552 | p1_5@204@01 && p2_5@205@01]
(assert (and p1_5@204@01 p2_5@205@01))
; [eval] __prim__bool___box__(int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))) == __prim__bool___box__(int___eq__(x_1_0, __prim__int___box__(2)))
; [eval] __prim__bool___box__(int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 50
; [eval] _isDefined(id)
(push) ; 51
(pop) ; 51
; Joined path conditions
(pop) ; 50
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 50
(assert (__prim__int___box__%precondition $Snap.unit 2))
(pop) ; 50
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 2))
(push) ; 50
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(push) ; 51
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 2)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 51
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 2)) (as int<PyType>  PyType)))
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
(pop) ; 50
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 2)) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
(push) ; 50
(assert (__prim__bool___box__%precondition $Snap.unit (int___eq__ ($Snap.combine
  $Snap.unit
  $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
(pop) ; 50
; Joined path conditions
(assert (__prim__bool___box__%precondition $Snap.unit (int___eq__ ($Snap.combine
  $Snap.unit
  $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
; [eval] __prim__bool___box__(int___eq__(x_1_0, __prim__int___box__(2)))
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 50
(pop) ; 50
; Joined path conditions
(push) ; 50
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))
(pop) ; 50
; Joined path conditions
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))
(push) ; 50
(assert (__prim__bool___box__%precondition $Snap.unit (int___eq__ ($Snap.combine
  $Snap.unit
  $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))
(pop) ; 50
; Joined path conditions
(assert (__prim__bool___box__%precondition $Snap.unit (int___eq__ ($Snap.combine
  $Snap.unit
  $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))
(pop) ; 49
(pop) ; 48
; Joined path conditions
(assert (=>
  (and p1_5@204@01 p2_5@205@01)
  (and
    p1_5@204@01
    p2_5@205@01
    (__prim__int___box__%precondition $Snap.unit 2)
    (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 2)) (as int<PyType>  PyType))
    (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))
    (__prim__bool___box__%precondition $Snap.unit (int___eq__ ($Snap.combine
      $Snap.unit
      $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
    (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))
    (__prim__bool___box__%precondition $Snap.unit (int___eq__ ($Snap.combine
      $Snap.unit
      $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))))
(assert (and p1_5@204@01 p2_5@205@01))
(assert (=>
  (and p1_5@204@01 p2_5@205@01)
  (=
    (__prim__bool___box__ $Snap.unit (int___eq__ ($Snap.combine
      $Snap.unit
      $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
    (__prim__bool___box__ $Snap.unit (int___eq__ ($Snap.combine
      $Snap.unit
      $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 48
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 48
; 0.00s
; (get-info :all-statistics)
; [then-branch: 553 | p1_5@204@01 | live]
; [else-branch: 553 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 48
; [then-branch: 553 | p1_5@204@01]
; [exec]
; _loop_original_must_terminate_4 := perm(MustTerminate(_cthread_159))
; [eval] perm(MustTerminate(_cthread_159))
(declare-const _loop_original_must_terminate_4@377@01 $Perm)
(assert (= _loop_original_must_terminate_4@377@01 $Perm.No))
; [exec]
; _loop_termination_flag_4 := !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 49
; [eval] _isDefined(id)
(push) ; 50
(pop) ; 50
; Joined path conditions
(pop) ; 49
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 49
(assert (__prim__int___box__%precondition $Snap.unit 2))
(pop) ; 49
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 2))
(push) ; 49
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(push) ; 50
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 2)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 50
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 2)) (as int<PyType>  PyType)))
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
(pop) ; 49
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 2)) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
(declare-const _loop_termination_flag_4@378@01 Bool)
(assert (=
  _loop_termination_flag_4@378@01
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
; [exec]
; _loop_check_before_4 := true
(push) ; 49
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 49
; 0.00s
; (get-info :all-statistics)
; [then-branch: 554 | p2_5@205@01 | live]
; [else-branch: 554 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 49
; [then-branch: 554 | p2_5@205@01]
; [exec]
; _loop_original_must_terminate_4_0 := perm(MustTerminate_0(_cthread_159_0))
; [eval] perm(MustTerminate_0(_cthread_159_0))
(declare-const _loop_original_must_terminate_4_0@379@01 $Perm)
(assert (= _loop_original_must_terminate_4_0@379@01 $Perm.No))
; [exec]
; _loop_termination_flag_4_0 := !int___eq__(x_1_0, __prim__int___box__(2))
; [eval] !int___eq__(x_1_0, __prim__int___box__(2))
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 50
(pop) ; 50
; Joined path conditions
(push) ; 50
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))
(pop) ; 50
; Joined path conditions
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))
(declare-const _loop_termination_flag_4_0@380@01 Bool)
(assert (=
  _loop_termination_flag_4_0@380@01
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))))
; [exec]
; _loop_check_before_4_0 := true
; [exec]
; bypass1_4 := !p1_5
; [eval] !p1_5
(declare-const bypass1_4@381@01 Bool)
(assert (= bypass1_4@381@01 (not p1_5@204@01)))
; [exec]
; bypass2_4 := !p2_5
; [eval] !p2_5
(declare-const bypass2_4@382@01 Bool)
(assert (= bypass2_4@382@01 (not p2_5@205@01)))
(push) ; 50
(set-option :timeout 10)
(assert (not (not bypass1_4@381@01)))
(check-sat)
; unsat
(pop) ; 50
; 0.00s
; (get-info :all-statistics)
; [then-branch: 555 | bypass1_4@381@01 | dead]
; [else-branch: 555 | !(bypass1_4@381@01) | live]
(set-option :timeout 0)
(push) ; 50
; [else-branch: 555 | !(bypass1_4@381@01)]
(assert (not bypass1_4@381@01))
(pop) ; 50
; [eval] !bypass1_4
(push) ; 50
(set-option :timeout 10)
(assert (not bypass1_4@381@01))
(check-sat)
; unknown
(pop) ; 50
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 50
(set-option :timeout 10)
(assert (not (not bypass1_4@381@01)))
(check-sat)
; unsat
(pop) ; 50
; 0.00s
; (get-info :all-statistics)
; [then-branch: 556 | !(bypass1_4@381@01) | live]
; [else-branch: 556 | bypass1_4@381@01 | dead]
(set-option :timeout 0)
(push) ; 50
; [then-branch: 556 | !(bypass1_4@381@01)]
(assert (not bypass1_4@381@01))
(push) ; 51
(set-option :timeout 10)
(assert (not (not bypass2_4@382@01)))
(check-sat)
; unsat
(pop) ; 51
; 0.00s
; (get-info :all-statistics)
; [then-branch: 557 | bypass2_4@382@01 | dead]
; [else-branch: 557 | !(bypass2_4@382@01) | live]
(set-option :timeout 0)
(push) ; 51
; [else-branch: 557 | !(bypass2_4@382@01)]
(assert (not bypass2_4@382@01))
(pop) ; 51
; [eval] !bypass2_4
(push) ; 51
(set-option :timeout 10)
(assert (not bypass2_4@382@01))
(check-sat)
; unknown
(pop) ; 51
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 51
(set-option :timeout 10)
(assert (not (not bypass2_4@382@01)))
(check-sat)
; unsat
(pop) ; 51
; 0.00s
; (get-info :all-statistics)
; [then-branch: 558 | !(bypass2_4@382@01) | live]
; [else-branch: 558 | bypass2_4@382@01 | dead]
(set-option :timeout 0)
(push) ; 51
; [then-branch: 558 | !(bypass2_4@382@01)]
(assert (not bypass2_4@382@01))
; [exec]
; idle1_4 := false
; [exec]
; idle2_4 := false
; [exec]
; assert (p1_5 ==>
;   !!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))) &&
;   (p2_5 ==> !!int___eq__(x_1_0, __prim__int___box__(2))) ==>
;   p1_5 == p2_5
; [eval] (p1_5 ==> !!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))) && (p2_5 ==> !!int___eq__(x_1_0, __prim__int___box__(2))) ==> p1_5 == p2_5
; [eval] (p1_5 ==> !!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))) && (p2_5 ==> !!int___eq__(x_1_0, __prim__int___box__(2)))
; [eval] p1_5 ==> !!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
(push) ; 52
(push) ; 53
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 53
; 0.00s
; (get-info :all-statistics)
; [then-branch: 559 | p1_5@204@01 | live]
; [else-branch: 559 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 53
; [then-branch: 559 | p1_5@204@01]
; [eval] !!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 54
; [eval] _isDefined(id)
(push) ; 55
(pop) ; 55
; Joined path conditions
(pop) ; 54
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 54
(pop) ; 54
; Joined path conditions
(push) ; 54
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 54
; Joined path conditions
(pop) ; 53
(pop) ; 52
; Joined path conditions
(push) ; 52
; [then-branch: 560 | !(p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))) | live]
; [else-branch: 560 | p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) | live]
(push) ; 53
; [then-branch: 560 | !(p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)))]
(assert (not
  (=>
    p1_5@204@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
(pop) ; 53
(push) ; 53
; [else-branch: 560 | p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))]
(assert (=>
  p1_5@204@01
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
; [eval] p2_5 ==> !!int___eq__(x_1_0, __prim__int___box__(2))
(push) ; 54
(push) ; 55
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 55
; 0.00s
; (get-info :all-statistics)
; [then-branch: 561 | p2_5@205@01 | live]
; [else-branch: 561 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 55
; [then-branch: 561 | p2_5@205@01]
; [eval] !!int___eq__(x_1_0, __prim__int___box__(2))
; [eval] !int___eq__(x_1_0, __prim__int___box__(2))
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 56
(pop) ; 56
; Joined path conditions
(push) ; 56
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 56
; Joined path conditions
(pop) ; 55
(pop) ; 54
; Joined path conditions
(pop) ; 53
(pop) ; 52
; Joined path conditions
; Joined path conditions
(assert (=>
  (and
    (=>
      p1_5@204@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
    p1_5@204@01)
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
(assert (or
  (=>
    p1_5@204@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
  (not
    (=>
      p1_5@204@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))))
(push) ; 52
(push) ; 53
(set-option :timeout 10)
(assert (not (not
  (and
    (=>
      p1_5@204@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
    (=>
      p2_5@205@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))))))
(check-sat)
; unknown
(pop) ; 53
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 53
(set-option :timeout 10)
(assert (not (and
  (=>
    p1_5@204@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
  (=>
    p2_5@205@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))))
(check-sat)
; unknown
(pop) ; 53
; 0.00s
; (get-info :all-statistics)
; [then-branch: 562 | p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) && p2_5@205@01 ==> int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2)) | live]
; [else-branch: 562 | !(p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) && p2_5@205@01 ==> int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2))) | live]
(set-option :timeout 0)
(push) ; 53
; [then-branch: 562 | p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) && p2_5@205@01 ==> int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2))]
(assert (and
  (=>
    p1_5@204@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
  (=>
    p2_5@205@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))))
; [eval] p1_5 == p2_5
(pop) ; 53
(push) ; 53
; [else-branch: 562 | !(p1_5@204@01 ==> int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) && p2_5@205@01 ==> int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2)))]
(assert (not
  (and
    (=>
      p1_5@204@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
    (=>
      p2_5@205@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))))
(pop) ; 53
(pop) ; 52
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (=>
        p1_5@204@01
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
      (=>
        p2_5@205@01
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))))
  (and
    (=>
      p1_5@204@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
    (=>
      p2_5@205@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))))
(push) ; 52
(assert (not (=>
  (and
    (=>
      p1_5@204@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
    (=>
      p2_5@205@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))
  (= p1_5@204@01 p2_5@205@01))))
(check-sat)
; unsat
(pop) ; 52
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and
    (=>
      p1_5@204@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
    (=>
      p2_5@205@01
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))
  (= p1_5@204@01 p2_5@205@01)))
; [exec]
; assert p1_5 && p2_5 ==>
;   !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) ==
;   !int___eq__(x_1_0, __prim__int___box__(2))
; [eval] p1_5 && p2_5 ==> !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) == !int___eq__(x_1_0, __prim__int___box__(2))
; [eval] p1_5 && p2_5
(push) ; 52
; [then-branch: 563 | !(p1_5@204@01) | live]
; [else-branch: 563 | p1_5@204@01 | live]
(push) ; 53
; [then-branch: 563 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 53
(push) ; 53
; [else-branch: 563 | p1_5@204@01]
(pop) ; 53
(pop) ; 52
; Joined path conditions
; Joined path conditions
(push) ; 52
(push) ; 53
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 p2_5@205@01))))
(check-sat)
; unknown
(pop) ; 53
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 53
(set-option :timeout 10)
(assert (not (and p1_5@204@01 p2_5@205@01)))
(check-sat)
; unsat
(pop) ; 53
; 0.00s
; (get-info :all-statistics)
; [then-branch: 564 | p1_5@204@01 && p2_5@205@01 | live]
; [else-branch: 564 | !(p1_5@204@01 && p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 53
; [then-branch: 564 | p1_5@204@01 && p2_5@205@01]
(assert (and p1_5@204@01 p2_5@205@01))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) == !int___eq__(x_1_0, __prim__int___box__(2))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 54
; [eval] _isDefined(id)
(push) ; 55
(pop) ; 55
; Joined path conditions
(pop) ; 54
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 54
(pop) ; 54
; Joined path conditions
(push) ; 54
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 54
; Joined path conditions
; [eval] !int___eq__(x_1_0, __prim__int___box__(2))
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 54
(pop) ; 54
; Joined path conditions
(push) ; 54
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 54
; Joined path conditions
(pop) ; 53
(pop) ; 52
; Joined path conditions
(assert (and p1_5@204@01 p2_5@205@01))
(push) ; 52
(assert (not (=>
  (and p1_5@204@01 p2_5@205@01)
  (=
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))))))
(check-sat)
; unsat
(pop) ; 52
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p1_5@204@01 p2_5@205@01)
  (=
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))))
(push) ; 52
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 52
; 0.00s
; (get-info :all-statistics)
; [then-branch: 565 | p1_5@204@01 | live]
; [else-branch: 565 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 52
; [then-branch: 565 | p1_5@204@01]
; [exec]
; cond_9 := !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 53
; [eval] _isDefined(id)
(push) ; 54
(pop) ; 54
; Joined path conditions
(pop) ; 53
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 53
(pop) ; 53
; Joined path conditions
(push) ; 53
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 53
; Joined path conditions
(declare-const cond_9@383@01 Bool)
(assert (=
  cond_9@383@01
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
(push) ; 53
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 53
; 0.00s
; (get-info :all-statistics)
; [then-branch: 566 | p2_5@205@01 | live]
; [else-branch: 566 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 53
; [then-branch: 566 | p2_5@205@01]
; [exec]
; cond_10 := !int___eq__(x_1_0, __prim__int___box__(2))
; [eval] !int___eq__(x_1_0, __prim__int___box__(2))
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 54
(pop) ; 54
; Joined path conditions
(push) ; 54
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 54
; Joined path conditions
(declare-const cond_10@384@01 Bool)
(assert (=
  cond_10@384@01
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))))
(declare-const p1_8@385@01 Bool)
(declare-const p2_8@386@01 Bool)
(declare-const idle1_4@387@01 Bool)
(declare-const idle2_4@388@01 Bool)
(declare-const _loop_measures_4@389@01 Seq<Measure$>)
(declare-const _loop_check_before_4@390@01 Bool)
(declare-const _loop_measures_4_0@391@01 Seq<Measure$>)
(declare-const _loop_check_before_4_0@392@01 Bool)
(push) ; 54
; Loop head block: Check well-definedness of invariant
(declare-const $t@393@01 $Snap)
(assert (= $t@393@01 ($Snap.combine ($Snap.first $t@393@01) ($Snap.second $t@393@01))))
(assert (= ($Snap.first $t@393@01) $Snap.unit))
; [eval] p1_5 && !bypass1_4 ==> (forperm _r_18: Ref [_r_18.MustReleaseBounded] :: Level(_r_18) <= _residue_165) && ((forperm _r_18: Ref [_r_18.MustReleaseUnbounded] :: Level(_r_18) <= _residue_165) && _residue_159 <= _residue_165)
; [eval] p1_5 && !bypass1_4
(push) ; 55
; [then-branch: 567 | !(p1_5@204@01) | live]
; [else-branch: 567 | p1_5@204@01 | live]
(push) ; 56
; [then-branch: 567 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 56
(push) ; 56
; [else-branch: 567 | p1_5@204@01]
; [eval] !bypass1_4
(pop) ; 56
(pop) ; 55
; Joined path conditions
; Joined path conditions
(push) ; 55
(push) ; 56
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_4@381@01)))))
(check-sat)
; unknown
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 56
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_4@381@01))))
(check-sat)
; unsat
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
; [then-branch: 568 | p1_5@204@01 && !(bypass1_4@381@01) | live]
; [else-branch: 568 | !(p1_5@204@01 && !(bypass1_4@381@01)) | dead]
(set-option :timeout 0)
(push) ; 56
; [then-branch: 568 | p1_5@204@01 && !(bypass1_4@381@01)]
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
; [eval] (forperm _r_18: Ref [_r_18.MustReleaseBounded] :: Level(_r_18) <= _residue_165) && ((forperm _r_18: Ref [_r_18.MustReleaseUnbounded] :: Level(_r_18) <= _residue_165) && _residue_159 <= _residue_165)
; [eval] (forperm _r_18: Ref [_r_18.MustReleaseBounded] :: Level(_r_18) <= _residue_165)
(push) ; 57
; [then-branch: 569 | False | live]
; [else-branch: 569 | True | live]
(push) ; 58
; [then-branch: 569 | False]
(assert false)
(pop) ; 58
(push) ; 58
; [else-branch: 569 | True]
; [eval] (forperm _r_18: Ref [_r_18.MustReleaseUnbounded] :: Level(_r_18) <= _residue_165)
(push) ; 59
; [then-branch: 570 | False | live]
; [else-branch: 570 | True | live]
(push) ; 60
; [then-branch: 570 | False]
(assert false)
(pop) ; 60
(push) ; 60
; [else-branch: 570 | True]
; [eval] _residue_159 <= _residue_165
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(pop) ; 58
(pop) ; 57
; Joined path conditions
; Joined path conditions
(pop) ; 56
(pop) ; 55
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
(assert (=>
  (and p1_5@204@01 (not bypass1_4@381@01))
  (<= _residue_159@210@01 _residue_165@250@01)))
(assert (=
  ($Snap.second $t@393@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@393@01))
    ($Snap.second ($Snap.second $t@393@01)))))
(assert (= ($Snap.first ($Snap.second $t@393@01)) $Snap.unit))
; [eval] p2_5 && !bypass2_4 ==> (forperm _r_18: Ref [_r_18.MustReleaseBoundedp] :: Level(_r_18) <= _residue_165_0) && ((forperm _r_18: Ref [_r_18.MustReleaseUnboundedp] :: Level(_r_18) <= _residue_165_0) && _residue_159_0 <= _residue_165_0)
; [eval] p2_5 && !bypass2_4
(push) ; 55
; [then-branch: 571 | !(p2_5@205@01) | live]
; [else-branch: 571 | p2_5@205@01 | live]
(push) ; 56
; [then-branch: 571 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 56
(push) ; 56
; [else-branch: 571 | p2_5@205@01]
; [eval] !bypass2_4
(pop) ; 56
(pop) ; 55
; Joined path conditions
; Joined path conditions
(push) ; 55
(push) ; 56
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_4@382@01)))))
(check-sat)
; unknown
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 56
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_4@382@01))))
(check-sat)
; unsat
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
; [then-branch: 572 | p2_5@205@01 && !(bypass2_4@382@01) | live]
; [else-branch: 572 | !(p2_5@205@01 && !(bypass2_4@382@01)) | dead]
(set-option :timeout 0)
(push) ; 56
; [then-branch: 572 | p2_5@205@01 && !(bypass2_4@382@01)]
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] (forperm _r_18: Ref [_r_18.MustReleaseBoundedp] :: Level(_r_18) <= _residue_165_0) && ((forperm _r_18: Ref [_r_18.MustReleaseUnboundedp] :: Level(_r_18) <= _residue_165_0) && _residue_159_0 <= _residue_165_0)
; [eval] (forperm _r_18: Ref [_r_18.MustReleaseBoundedp] :: Level(_r_18) <= _residue_165_0)
(push) ; 57
; [then-branch: 573 | False | live]
; [else-branch: 573 | True | live]
(push) ; 58
; [then-branch: 573 | False]
(assert false)
(pop) ; 58
(push) ; 58
; [else-branch: 573 | True]
; [eval] (forperm _r_18: Ref [_r_18.MustReleaseUnboundedp] :: Level(_r_18) <= _residue_165_0)
(push) ; 59
; [then-branch: 574 | False | live]
; [else-branch: 574 | True | live]
(push) ; 60
; [then-branch: 574 | False]
(assert false)
(pop) ; 60
(push) ; 60
; [else-branch: 574 | True]
; [eval] _residue_159_0 <= _residue_165_0
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(pop) ; 58
(pop) ; 57
; Joined path conditions
; Joined path conditions
(pop) ; 56
(pop) ; 55
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
(assert (=>
  (and p2_5@205@01 (not bypass2_4@382@01))
  (<= _residue_159_0@211@01 _residue_165_0@251@01)))
(assert (=
  ($Snap.second ($Snap.second $t@393@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@393@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))
; [eval] p1_5 && !bypass1_4
(push) ; 55
; [then-branch: 575 | !(p1_5@204@01) | live]
; [else-branch: 575 | p1_5@204@01 | live]
(push) ; 56
; [then-branch: 575 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 56
(push) ; 56
; [else-branch: 575 | p1_5@204@01]
; [eval] !bypass1_4
(pop) ; 56
(pop) ; 55
; Joined path conditions
; Joined path conditions
(push) ; 55
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_4@381@01)))))
(check-sat)
; unknown
(pop) ; 55
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 55
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_4@381@01))))
(check-sat)
; unsat
(pop) ; 55
; 0.00s
; (get-info :all-statistics)
; [then-branch: 576 | p1_5@204@01 && !(bypass1_4@381@01) | live]
; [else-branch: 576 | !(p1_5@204@01 && !(bypass1_4@381@01)) | dead]
(set-option :timeout 0)
(push) ; 55
; [then-branch: 576 | p1_5@204@01 && !(bypass1_4@381@01)]
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 56
; [eval] _isDefined(id)
(push) ; 57
(pop) ; 57
; Joined path conditions
(pop) ; 56
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 56
(pop) ; 56
; Joined path conditions
(push) ; 56
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 56
; Joined path conditions
(push) ; 56
(set-option :timeout 10)
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
(check-sat)
; unknown
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 56
(set-option :timeout 10)
(assert (not (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
(check-sat)
; unknown
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
; [then-branch: 577 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))) | live]
; [else-branch: 577 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) | live]
(set-option :timeout 0)
(push) ; 56
; [then-branch: 577 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second $t@393@01)))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@393@01))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@393@01)))))))
(assert (=
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@393@01))))
  $Snap.unit))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) ==> false
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 57
; [eval] _isDefined(id)
(push) ; 58
(pop) ; 58
; Joined path conditions
(pop) ; 57
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 57
(pop) ; 57
; Joined path conditions
(push) ; 57
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 57
; Joined path conditions
(push) ; 57
; [then-branch: 578 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) | dead]
; [else-branch: 578 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))) | live]
(push) ; 58
; [else-branch: 578 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)))]
(pop) ; 58
(pop) ; 57
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@393@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@393@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))
; [eval] p2_5 && !bypass2_4
(push) ; 57
; [then-branch: 579 | !(p2_5@205@01) | live]
; [else-branch: 579 | p2_5@205@01 | live]
(push) ; 58
; [then-branch: 579 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 58
(push) ; 58
; [else-branch: 579 | p2_5@205@01]
; [eval] !bypass2_4
(pop) ; 58
(pop) ; 57
; Joined path conditions
; Joined path conditions
(push) ; 57
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_4@382@01)))))
(check-sat)
; unknown
(pop) ; 57
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 57
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_4@382@01))))
(check-sat)
; unsat
(pop) ; 57
; 0.00s
; (get-info :all-statistics)
; [then-branch: 580 | p2_5@205@01 && !(bypass2_4@382@01) | live]
; [else-branch: 580 | !(p2_5@205@01 && !(bypass2_4@382@01)) | dead]
(set-option :timeout 0)
(push) ; 57
; [then-branch: 580 | p2_5@205@01 && !(bypass2_4@382@01)]
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] !int___eq__(x_1_0, __prim__int___box__(2))
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 58
(pop) ; 58
; Joined path conditions
(push) ; 58
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 58
; Joined path conditions
(push) ; 58
(set-option :timeout 10)
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))
(check-sat)
; unknown
(pop) ; 58
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 58
(set-option :timeout 10)
(assert (not (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))))
(check-sat)
; unsat
(pop) ; 58
; 0.00s
; (get-info :all-statistics)
; [then-branch: 581 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2))) | live]
; [else-branch: 581 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2)) | dead]
(set-option :timeout 0)
(push) ; 58
; [then-branch: 581 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2)))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@393@01))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))
(assert (=
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))
  $Snap.unit))
; [eval] int___eq__(x_1_0, __prim__int___box__(2)) ==> false
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 59
(pop) ; 59
; Joined path conditions
(push) ; 59
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 59
; Joined path conditions
(push) ; 59
; [then-branch: 582 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2)) | dead]
; [else-branch: 582 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2))) | live]
(push) ; 60
; [else-branch: 582 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2)))]
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))
  $Snap.unit))
; [eval] p1_5 && !bypass1_4 ==> true
; [eval] p1_5 && !bypass1_4
(push) ; 59
; [then-branch: 583 | !(p1_5@204@01) | live]
; [else-branch: 583 | p1_5@204@01 | live]
(push) ; 60
; [then-branch: 583 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 60
(push) ; 60
; [else-branch: 583 | p1_5@204@01]
; [eval] !bypass1_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_4@381@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_4@381@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 584 | p1_5@204@01 && !(bypass1_4@381@01) | live]
; [else-branch: 584 | !(p1_5@204@01 && !(bypass1_4@381@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 584 | p1_5@204@01 && !(bypass1_4@381@01)]
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))
  $Snap.unit))
; [eval] p2_5 && !bypass2_4 ==> true
; [eval] p2_5 && !bypass2_4
(push) ; 59
; [then-branch: 585 | !(p2_5@205@01) | live]
; [else-branch: 585 | p2_5@205@01 | live]
(push) ; 60
; [then-branch: 585 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 60
(push) ; 60
; [else-branch: 585 | p2_5@205@01]
; [eval] !bypass2_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_4@382@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_4@382@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 586 | p2_5@205@01 && !(bypass2_4@382@01) | live]
; [else-branch: 586 | !(p2_5@205@01 && !(bypass2_4@382@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 586 | p2_5@205@01 && !(bypass2_4@382@01)]
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))
  $Snap.unit))
; [eval] p1_5 && !bypass1_4 ==> true
; [eval] p1_5 && !bypass1_4
(push) ; 59
; [then-branch: 587 | !(p1_5@204@01) | live]
; [else-branch: 587 | p1_5@204@01 | live]
(push) ; 60
; [then-branch: 587 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 60
(push) ; 60
; [else-branch: 587 | p1_5@204@01]
; [eval] !bypass1_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_4@381@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_4@381@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 588 | p1_5@204@01 && !(bypass1_4@381@01) | live]
; [else-branch: 588 | !(p1_5@204@01 && !(bypass1_4@381@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 588 | p1_5@204@01 && !(bypass1_4@381@01)]
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))
  $Snap.unit))
; [eval] p2_5 && !bypass2_4 ==> true
; [eval] p2_5 && !bypass2_4
(push) ; 59
; [then-branch: 589 | !(p2_5@205@01) | live]
; [else-branch: 589 | p2_5@205@01 | live]
(push) ; 60
; [then-branch: 589 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 60
(push) ; 60
; [else-branch: 589 | p2_5@205@01]
; [eval] !bypass2_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_4@382@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_4@382@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 590 | p2_5@205@01 && !(bypass2_4@382@01) | live]
; [else-branch: 590 | !(p2_5@205@01 && !(bypass2_4@382@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 590 | p2_5@205@01 && !(bypass2_4@382@01)]
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))
  $Snap.unit))
; [eval] p1_5 && !bypass1_4 ==> !cond_9 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] p1_5 && !bypass1_4
(push) ; 59
; [then-branch: 591 | !(p1_5@204@01) | live]
; [else-branch: 591 | p1_5@204@01 | live]
(push) ; 60
; [then-branch: 591 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 60
(push) ; 60
; [else-branch: 591 | p1_5@204@01]
; [eval] !bypass1_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_4@381@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_4@381@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 592 | p1_5@204@01 && !(bypass1_4@381@01) | live]
; [else-branch: 592 | !(p1_5@204@01 && !(bypass1_4@381@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 592 | p1_5@204@01 && !(bypass1_4@381@01)]
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
; [eval] !cond_9 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] !cond_9
(push) ; 61
(push) ; 62
(set-option :timeout 10)
(assert (not cond_9@383@01))
(check-sat)
; unsat
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
; [then-branch: 593 | !(cond_9@383@01) | dead]
; [else-branch: 593 | cond_9@383@01 | live]
(set-option :timeout 0)
(push) ; 62
; [else-branch: 593 | cond_9@383@01]
(assert cond_9@383@01)
(pop) ; 62
(pop) ; 61
; Joined path conditions
(assert cond_9@383@01)
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (=>
  (and p1_5@204@01 (not bypass1_4@381@01))
  (and p1_5@204@01 (not bypass1_4@381@01) cond_9@383@01)))
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))
  $Snap.unit))
; [eval] p2_5 && !bypass2_4 ==> !cond_10 ==> int___eq__(x_1_0, __prim__int___box__(2))
; [eval] p2_5 && !bypass2_4
(push) ; 59
; [then-branch: 594 | !(p2_5@205@01) | live]
; [else-branch: 594 | p2_5@205@01 | live]
(push) ; 60
; [then-branch: 594 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 60
(push) ; 60
; [else-branch: 594 | p2_5@205@01]
; [eval] !bypass2_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_4@382@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_4@382@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 595 | p2_5@205@01 && !(bypass2_4@382@01) | live]
; [else-branch: 595 | !(p2_5@205@01 && !(bypass2_4@382@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 595 | p2_5@205@01 && !(bypass2_4@382@01)]
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] !cond_10 ==> int___eq__(x_1_0, __prim__int___box__(2))
; [eval] !cond_10
(push) ; 61
(push) ; 62
(set-option :timeout 10)
(assert (not cond_10@384@01))
(check-sat)
; unsat
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
; [then-branch: 596 | !(cond_10@384@01) | dead]
; [else-branch: 596 | cond_10@384@01 | live]
(set-option :timeout 0)
(push) ; 62
; [else-branch: 596 | cond_10@384@01]
(assert cond_10@384@01)
(pop) ; 62
(pop) ; 61
; Joined path conditions
(assert cond_10@384@01)
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (=>
  (and p2_5@205@01 (not bypass2_4@382@01))
  (and p2_5@205@01 (not bypass2_4@382@01) cond_10@384@01)))
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))
  $Snap.unit))
; [eval] bypass1_4 ==> tmp1_44 == _loop_measures_4
(push) ; 59
; [then-branch: 597 | bypass1_4@381@01 | dead]
; [else-branch: 597 | !(bypass1_4@381@01) | live]
(push) ; 60
; [else-branch: 597 | !(bypass1_4@381@01)]
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))
  $Snap.unit))
; [eval] bypass1_4 ==> tmp1_45 == _loop_check_before_4
(push) ; 59
; [then-branch: 598 | bypass1_4@381@01 | dead]
; [else-branch: 598 | !(bypass1_4@381@01) | live]
(push) ; 60
; [else-branch: 598 | !(bypass1_4@381@01)]
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))))
  $Snap.unit))
; [eval] bypass2_4 ==> tmp2_44 == _loop_measures_4_0
(push) ; 59
; [then-branch: 599 | bypass2_4@382@01 | dead]
; [else-branch: 599 | !(bypass2_4@382@01) | live]
(push) ; 60
; [else-branch: 599 | !(bypass2_4@382@01)]
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))))
  $Snap.unit))
; [eval] bypass2_4 ==> tmp2_45 == _loop_check_before_4_0
(push) ; 59
; [then-branch: 600 | bypass2_4@382@01 | dead]
; [else-branch: 600 | !(bypass2_4@382@01) | live]
(push) ; 60
; [else-branch: 600 | !(bypass2_4@382@01)]
(pop) ; 60
(pop) ; 59
; Joined path conditions
(pop) ; 58
(pop) ; 57
(pop) ; 56
(push) ; 56
; [else-branch: 577 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@393@01))) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@393@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@393@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))
; [eval] p2_5 && !bypass2_4
(push) ; 57
; [then-branch: 601 | !(p2_5@205@01) | live]
; [else-branch: 601 | p2_5@205@01 | live]
(push) ; 58
; [then-branch: 601 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 58
(push) ; 58
; [else-branch: 601 | p2_5@205@01]
(assert p2_5@205@01)
; [eval] !bypass2_4
(pop) ; 58
(pop) ; 57
; Joined path conditions
; Joined path conditions
(push) ; 57
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_4@382@01)))))
(check-sat)
; unknown
(pop) ; 57
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 57
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_4@382@01))))
(check-sat)
; unsat
(pop) ; 57
; 0.00s
; (get-info :all-statistics)
; [then-branch: 602 | p2_5@205@01 && !(bypass2_4@382@01) | live]
; [else-branch: 602 | !(p2_5@205@01 && !(bypass2_4@382@01)) | dead]
(set-option :timeout 0)
(push) ; 57
; [then-branch: 602 | p2_5@205@01 && !(bypass2_4@382@01)]
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] !int___eq__(x_1_0, __prim__int___box__(2))
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 58
(pop) ; 58
; Joined path conditions
(push) ; 58
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 58
; Joined path conditions
(push) ; 58
(set-option :timeout 10)
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))
(check-sat)
; unsat
(pop) ; 58
; 0.00s
; (get-info :all-statistics)
; [then-branch: 603 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2))) | dead]
; [else-branch: 603 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2)) | live]
(set-option :timeout 0)
(push) ; 58
; [else-branch: 603 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2))]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@393@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))
  $Snap.unit))
; [eval] p1_5 && !bypass1_4 ==> true
; [eval] p1_5 && !bypass1_4
(push) ; 59
; [then-branch: 604 | !(p1_5@204@01) | live]
; [else-branch: 604 | p1_5@204@01 | live]
(push) ; 60
; [then-branch: 604 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 60
(push) ; 60
; [else-branch: 604 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_4@381@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_4@381@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 605 | p1_5@204@01 && !(bypass1_4@381@01) | live]
; [else-branch: 605 | !(p1_5@204@01 && !(bypass1_4@381@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 605 | p1_5@204@01 && !(bypass1_4@381@01)]
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))
  $Snap.unit))
; [eval] p2_5 && !bypass2_4 ==> true
; [eval] p2_5 && !bypass2_4
(push) ; 59
; [then-branch: 606 | !(p2_5@205@01) | live]
; [else-branch: 606 | p2_5@205@01 | live]
(push) ; 60
; [then-branch: 606 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 60
(push) ; 60
; [else-branch: 606 | p2_5@205@01]
; [eval] !bypass2_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_4@382@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_4@382@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 607 | p2_5@205@01 && !(bypass2_4@382@01) | live]
; [else-branch: 607 | !(p2_5@205@01 && !(bypass2_4@382@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 607 | p2_5@205@01 && !(bypass2_4@382@01)]
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))
  $Snap.unit))
; [eval] p1_5 && !bypass1_4 ==> true
; [eval] p1_5 && !bypass1_4
(push) ; 59
; [then-branch: 608 | !(p1_5@204@01) | live]
; [else-branch: 608 | p1_5@204@01 | live]
(push) ; 60
; [then-branch: 608 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 60
(push) ; 60
; [else-branch: 608 | p1_5@204@01]
; [eval] !bypass1_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_4@381@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_4@381@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 609 | p1_5@204@01 && !(bypass1_4@381@01) | live]
; [else-branch: 609 | !(p1_5@204@01 && !(bypass1_4@381@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 609 | p1_5@204@01 && !(bypass1_4@381@01)]
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))
  $Snap.unit))
; [eval] p2_5 && !bypass2_4 ==> true
; [eval] p2_5 && !bypass2_4
(push) ; 59
; [then-branch: 610 | !(p2_5@205@01) | live]
; [else-branch: 610 | p2_5@205@01 | live]
(push) ; 60
; [then-branch: 610 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 60
(push) ; 60
; [else-branch: 610 | p2_5@205@01]
; [eval] !bypass2_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_4@382@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_4@382@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 611 | p2_5@205@01 && !(bypass2_4@382@01) | live]
; [else-branch: 611 | !(p2_5@205@01 && !(bypass2_4@382@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 611 | p2_5@205@01 && !(bypass2_4@382@01)]
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))
  $Snap.unit))
; [eval] p1_5 && !bypass1_4 ==> !cond_9 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] p1_5 && !bypass1_4
(push) ; 59
; [then-branch: 612 | !(p1_5@204@01) | live]
; [else-branch: 612 | p1_5@204@01 | live]
(push) ; 60
; [then-branch: 612 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 60
(push) ; 60
; [else-branch: 612 | p1_5@204@01]
; [eval] !bypass1_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_4@381@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_4@381@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 613 | p1_5@204@01 && !(bypass1_4@381@01) | live]
; [else-branch: 613 | !(p1_5@204@01 && !(bypass1_4@381@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 613 | p1_5@204@01 && !(bypass1_4@381@01)]
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
; [eval] !cond_9 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] !cond_9
(push) ; 61
(push) ; 62
(set-option :timeout 10)
(assert (not cond_9@383@01))
(check-sat)
; unknown
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 62
(set-option :timeout 10)
(assert (not (not cond_9@383@01)))
(check-sat)
; unsat
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
; [then-branch: 614 | !(cond_9@383@01) | live]
; [else-branch: 614 | cond_9@383@01 | dead]
(set-option :timeout 0)
(push) ; 62
; [then-branch: 614 | !(cond_9@383@01)]
(assert (not cond_9@383@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 63
; [eval] _isDefined(id)
(push) ; 64
(pop) ; 64
; Joined path conditions
(pop) ; 63
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 63
(pop) ; 63
; Joined path conditions
(push) ; 63
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 63
; Joined path conditions
(pop) ; 62
(pop) ; 61
; Joined path conditions
(assert (not cond_9@383@01))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (=>
  (and p1_5@204@01 (not bypass1_4@381@01))
  (and p1_5@204@01 (not bypass1_4@381@01) (not cond_9@383@01))))
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
(assert (=>
  (and (and p1_5@204@01 (not bypass1_4@381@01)) (not cond_9@383@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))
  $Snap.unit))
; [eval] p2_5 && !bypass2_4 ==> !cond_10 ==> int___eq__(x_1_0, __prim__int___box__(2))
; [eval] p2_5 && !bypass2_4
(push) ; 59
; [then-branch: 615 | !(p2_5@205@01) | live]
; [else-branch: 615 | p2_5@205@01 | live]
(push) ; 60
; [then-branch: 615 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 60
(push) ; 60
; [else-branch: 615 | p2_5@205@01]
; [eval] !bypass2_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_4@382@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_4@382@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 616 | p2_5@205@01 && !(bypass2_4@382@01) | live]
; [else-branch: 616 | !(p2_5@205@01 && !(bypass2_4@382@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 616 | p2_5@205@01 && !(bypass2_4@382@01)]
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] !cond_10 ==> int___eq__(x_1_0, __prim__int___box__(2))
; [eval] !cond_10
(push) ; 61
(push) ; 62
(set-option :timeout 10)
(assert (not cond_10@384@01))
(check-sat)
; unknown
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 62
(set-option :timeout 10)
(assert (not (not cond_10@384@01)))
(check-sat)
; unsat
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
; [then-branch: 617 | !(cond_10@384@01) | live]
; [else-branch: 617 | cond_10@384@01 | dead]
(set-option :timeout 0)
(push) ; 62
; [then-branch: 617 | !(cond_10@384@01)]
(assert (not cond_10@384@01))
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 63
(pop) ; 63
; Joined path conditions
(push) ; 63
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 63
; Joined path conditions
(pop) ; 62
(pop) ; 61
; Joined path conditions
(assert (not cond_10@384@01))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (=>
  (and p2_5@205@01 (not bypass2_4@382@01))
  (and p2_5@205@01 (not bypass2_4@382@01) (not cond_10@384@01))))
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
(assert (=>
  (and (and p2_5@205@01 (not bypass2_4@382@01)) (not cond_10@384@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))
  $Snap.unit))
; [eval] bypass1_4 ==> tmp1_44 == _loop_measures_4
(push) ; 59
; [then-branch: 618 | bypass1_4@381@01 | dead]
; [else-branch: 618 | !(bypass1_4@381@01) | live]
(push) ; 60
; [else-branch: 618 | !(bypass1_4@381@01)]
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))
  $Snap.unit))
; [eval] bypass1_4 ==> tmp1_45 == _loop_check_before_4
(push) ; 59
; [then-branch: 619 | bypass1_4@381@01 | dead]
; [else-branch: 619 | !(bypass1_4@381@01) | live]
(push) ; 60
; [else-branch: 619 | !(bypass1_4@381@01)]
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))))
  $Snap.unit))
; [eval] bypass2_4 ==> tmp2_44 == _loop_measures_4_0
(push) ; 59
; [then-branch: 620 | bypass2_4@382@01 | dead]
; [else-branch: 620 | !(bypass2_4@382@01) | live]
(push) ; 60
; [else-branch: 620 | !(bypass2_4@382@01)]
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))))
  $Snap.unit))
; [eval] bypass2_4 ==> tmp2_45 == _loop_check_before_4_0
(push) ; 59
; [then-branch: 621 | bypass2_4@382@01 | dead]
; [else-branch: 621 | !(bypass2_4@382@01) | live]
(push) ; 60
; [else-branch: 621 | !(bypass2_4@382@01)]
(pop) ; 60
(pop) ; 59
; Joined path conditions
(pop) ; 58
(pop) ; 57
(pop) ; 56
(pop) ; 55
(pop) ; 54
(push) ; 54
; Loop head block: Establish invariant
; [eval] p1_5 && !bypass1_4 ==> true
; [eval] p1_5 && !bypass1_4
(push) ; 55
; [then-branch: 622 | !(p1_5@204@01) | live]
; [else-branch: 622 | p1_5@204@01 | live]
(push) ; 56
; [then-branch: 622 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 56
(push) ; 56
; [else-branch: 622 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_4
(pop) ; 56
(pop) ; 55
; Joined path conditions
; Joined path conditions
(push) ; 55
(push) ; 56
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_4@381@01)))))
(check-sat)
; unknown
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 56
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_4@381@01))))
(check-sat)
; unsat
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
; [then-branch: 623 | p1_5@204@01 && !(bypass1_4@381@01) | live]
; [else-branch: 623 | !(p1_5@204@01 && !(bypass1_4@381@01)) | dead]
(set-option :timeout 0)
(push) ; 56
; [then-branch: 623 | p1_5@204@01 && !(bypass1_4@381@01)]
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
(pop) ; 56
(pop) ; 55
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
; [eval] p2_5 && !bypass2_4 ==> true
; [eval] p2_5 && !bypass2_4
(push) ; 55
; [then-branch: 624 | !(p2_5@205@01) | live]
; [else-branch: 624 | p2_5@205@01 | live]
(push) ; 56
; [then-branch: 624 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 56
(push) ; 56
; [else-branch: 624 | p2_5@205@01]
(assert p2_5@205@01)
; [eval] !bypass2_4
(pop) ; 56
(pop) ; 55
; Joined path conditions
; Joined path conditions
(push) ; 55
(push) ; 56
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_4@382@01)))))
(check-sat)
; unknown
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 56
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_4@382@01))))
(check-sat)
; unsat
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
; [then-branch: 625 | p2_5@205@01 && !(bypass2_4@382@01) | live]
; [else-branch: 625 | !(p2_5@205@01 && !(bypass2_4@382@01)) | dead]
(set-option :timeout 0)
(push) ; 56
; [then-branch: 625 | p2_5@205@01 && !(bypass2_4@382@01)]
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
(pop) ; 56
(pop) ; 55
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] p1_5 && !bypass1_4 ==> !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) ==> (int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) ==> false) && true
; [eval] p1_5 && !bypass1_4
(push) ; 55
; [then-branch: 626 | !(p1_5@204@01) | live]
; [else-branch: 626 | p1_5@204@01 | live]
(push) ; 56
; [then-branch: 626 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 56
(push) ; 56
; [else-branch: 626 | p1_5@204@01]
; [eval] !bypass1_4
(pop) ; 56
(pop) ; 55
; Joined path conditions
; Joined path conditions
(push) ; 55
(push) ; 56
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_4@381@01)))))
(check-sat)
; unknown
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 56
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_4@381@01))))
(check-sat)
; unsat
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
; [then-branch: 627 | p1_5@204@01 && !(bypass1_4@381@01) | live]
; [else-branch: 627 | !(p1_5@204@01 && !(bypass1_4@381@01)) | dead]
(set-option :timeout 0)
(push) ; 56
; [then-branch: 627 | p1_5@204@01 && !(bypass1_4@381@01)]
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) ==> (int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) ==> false) && true
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 57
; [eval] _isDefined(id)
(push) ; 58
(pop) ; 58
; Joined path conditions
(pop) ; 57
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 57
(pop) ; 57
; Joined path conditions
(push) ; 57
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 57
; Joined path conditions
(push) ; 57
(push) ; 58
(set-option :timeout 10)
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
(check-sat)
; unknown
(pop) ; 58
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 58
(set-option :timeout 10)
(assert (not (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
(check-sat)
; unknown
(pop) ; 58
; 0.00s
; (get-info :all-statistics)
; [then-branch: 628 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))) | live]
; [else-branch: 628 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) | live]
(set-option :timeout 0)
(push) ; 58
; [then-branch: 628 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
; [eval] (int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) ==> false) && true
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) ==> false
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 59
; [eval] _isDefined(id)
(push) ; 60
(pop) ; 60
; Joined path conditions
(pop) ; 59
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 59
(pop) ; 59
; Joined path conditions
(push) ; 59
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 59
; Joined path conditions
(push) ; 59
; [then-branch: 629 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) | dead]
; [else-branch: 629 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))) | live]
(push) ; 60
; [else-branch: 629 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)))]
(pop) ; 60
(pop) ; 59
; Joined path conditions
(push) ; 59
; [then-branch: 630 | False | live]
; [else-branch: 630 | True | live]
(push) ; 60
; [then-branch: 630 | False]
(assert false)
(pop) ; 60
(push) ; 60
; [else-branch: 630 | True]
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(pop) ; 58
(push) ; 58
; [else-branch: 628 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
(pop) ; 58
(pop) ; 57
; Joined path conditions
; Joined path conditions
(assert (or
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
(pop) ; 56
(pop) ; 55
; Joined path conditions
(assert (=>
  (and p1_5@204@01 (not bypass1_4@381@01))
  (and
    p1_5@204@01
    (not bypass1_4@381@01)
    (or
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))
      (not
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))))
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
; [eval] p2_5 && !bypass2_4 ==> !int___eq__(x_1_0, __prim__int___box__(2)) ==> (int___eq__(x_1_0, __prim__int___box__(2)) ==> false) && true
; [eval] p2_5 && !bypass2_4
(push) ; 55
; [then-branch: 631 | !(p2_5@205@01) | live]
; [else-branch: 631 | p2_5@205@01 | live]
(push) ; 56
; [then-branch: 631 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 56
(push) ; 56
; [else-branch: 631 | p2_5@205@01]
; [eval] !bypass2_4
(pop) ; 56
(pop) ; 55
; Joined path conditions
; Joined path conditions
(push) ; 55
(push) ; 56
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_4@382@01)))))
(check-sat)
; unknown
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 56
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_4@382@01))))
(check-sat)
; unsat
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
; [then-branch: 632 | p2_5@205@01 && !(bypass2_4@382@01) | live]
; [else-branch: 632 | !(p2_5@205@01 && !(bypass2_4@382@01)) | dead]
(set-option :timeout 0)
(push) ; 56
; [then-branch: 632 | p2_5@205@01 && !(bypass2_4@382@01)]
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] !int___eq__(x_1_0, __prim__int___box__(2)) ==> (int___eq__(x_1_0, __prim__int___box__(2)) ==> false) && true
; [eval] !int___eq__(x_1_0, __prim__int___box__(2))
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 57
(pop) ; 57
; Joined path conditions
(push) ; 57
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 57
; Joined path conditions
(push) ; 57
(push) ; 58
(set-option :timeout 10)
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))
(check-sat)
; unknown
(pop) ; 58
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 58
(set-option :timeout 10)
(assert (not (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))))
(check-sat)
; unknown
(pop) ; 58
; 0.00s
; (get-info :all-statistics)
; [then-branch: 633 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2))) | live]
; [else-branch: 633 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2)) | live]
(set-option :timeout 0)
(push) ; 58
; [then-branch: 633 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2)))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))
; [eval] (int___eq__(x_1_0, __prim__int___box__(2)) ==> false) && true
; [eval] int___eq__(x_1_0, __prim__int___box__(2)) ==> false
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 59
(pop) ; 59
; Joined path conditions
(push) ; 59
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 59
; Joined path conditions
(push) ; 59
; [then-branch: 634 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2)) | dead]
; [else-branch: 634 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2))) | live]
(push) ; 60
; [else-branch: 634 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2)))]
(pop) ; 60
(pop) ; 59
; Joined path conditions
(push) ; 59
; [then-branch: 635 | False | live]
; [else-branch: 635 | True | live]
(push) ; 60
; [then-branch: 635 | False]
(assert false)
(pop) ; 60
(push) ; 60
; [else-branch: 635 | True]
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(pop) ; 58
(push) ; 58
; [else-branch: 633 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2))]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))
(pop) ; 58
(pop) ; 57
; Joined path conditions
; Joined path conditions
(assert (or
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))))
(pop) ; 56
(pop) ; 55
; Joined path conditions
(assert (=>
  (and p2_5@205@01 (not bypass2_4@382@01))
  (and
    p2_5@205@01
    (not bypass2_4@382@01)
    (or
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))
      (not
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))))))
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] p1_5 && !bypass1_4 ==> !idle1_4 ==> _loop_check_before_4 ==> _loop_termination_flag_4 || (!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)))))
; [eval] p1_5 && !bypass1_4
(push) ; 55
; [then-branch: 636 | !(p1_5@204@01) | live]
; [else-branch: 636 | p1_5@204@01 | live]
(push) ; 56
; [then-branch: 636 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 56
(push) ; 56
; [else-branch: 636 | p1_5@204@01]
; [eval] !bypass1_4
(pop) ; 56
(pop) ; 55
; Joined path conditions
; Joined path conditions
(push) ; 55
(push) ; 56
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_4@381@01)))))
(check-sat)
; unknown
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 56
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_4@381@01))))
(check-sat)
; unsat
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
; [then-branch: 637 | p1_5@204@01 && !(bypass1_4@381@01) | live]
; [else-branch: 637 | !(p1_5@204@01 && !(bypass1_4@381@01)) | dead]
(set-option :timeout 0)
(push) ; 56
; [then-branch: 637 | p1_5@204@01 && !(bypass1_4@381@01)]
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
; [eval] !idle1_4 ==> _loop_check_before_4 ==> _loop_termination_flag_4 || (!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)))))
; [eval] !idle1_4
(push) ; 57
(push) ; 58
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 58
; 0.00s
; (get-info :all-statistics)
; [then-branch: 638 | True | live]
; [else-branch: 638 | False | dead]
(set-option :timeout 0)
(push) ; 58
; [then-branch: 638 | True]
; [eval] _loop_check_before_4 ==> _loop_termination_flag_4 || (!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)))))
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 639 | True | live]
; [else-branch: 639 | False | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 639 | True]
; [eval] _loop_termination_flag_4 || (!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)))))
(push) ; 61
; [then-branch: 640 | _loop_termination_flag_4@378@01 | live]
; [else-branch: 640 | !(_loop_termination_flag_4@378@01) | live]
(push) ; 62
; [then-branch: 640 | _loop_termination_flag_4@378@01]
(assert _loop_termination_flag_4@378@01)
(pop) ; 62
(push) ; 62
; [else-branch: 640 | !(_loop_termination_flag_4@378@01)]
(assert (not _loop_termination_flag_4@378@01))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 63
; [eval] _isDefined(id)
(push) ; 64
(pop) ; 64
; Joined path conditions
(pop) ; 63
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 63
(pop) ; 63
; Joined path conditions
(push) ; 63
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 63
; Joined path conditions
(push) ; 63
; [then-branch: 641 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))) | live]
; [else-branch: 641 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) | live]
(push) ; 64
; [then-branch: 641 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
(pop) ; 64
(push) ; 64
; [else-branch: 641 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
; [eval] perm(MustTerminate(_cthread_159)) == none && ((forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_159)) == none
; [eval] perm(MustTerminate(_cthread_159))
(push) ; 65
; [then-branch: 642 | False | live]
; [else-branch: 642 | True | live]
(push) ; 66
; [then-branch: 642 | False]
(assert false)
(pop) ; 66
(push) ; 66
; [else-branch: 642 | True]
; [eval] (forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false)
(push) ; 67
; [then-branch: 643 | False | live]
; [else-branch: 643 | True | live]
(push) ; 68
; [then-branch: 643 | False]
(assert false)
(pop) ; 68
(push) ; 68
; [else-branch: 643 | True]
; [eval] (forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false)
(push) ; 69
; [then-branch: 644 | False | live]
; [else-branch: 644 | True | live]
(push) ; 70
; [then-branch: 644 | False]
(assert false)
(pop) ; 70
(push) ; 70
; [else-branch: 644 | True]
; [eval] (forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false)
(push) ; 71
; [then-branch: 645 | False | live]
; [else-branch: 645 | True | live]
(push) ; 72
; [then-branch: 645 | False]
(assert false)
(pop) ; 72
(push) ; 72
; [else-branch: 645 | True]
; [eval] (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)
(pop) ; 72
(pop) ; 71
; Joined path conditions
; Joined path conditions
(pop) ; 70
(pop) ; 69
; Joined path conditions
; Joined path conditions
(pop) ; 68
(pop) ; 67
; Joined path conditions
; Joined path conditions
(pop) ; 66
(pop) ; 65
; Joined path conditions
; Joined path conditions
(pop) ; 64
(pop) ; 63
; Joined path conditions
; Joined path conditions
(assert (or
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
(pop) ; 62
(pop) ; 61
; Joined path conditions
; Joined path conditions
(assert (=>
  (not _loop_termination_flag_4@378@01)
  (and
    (not _loop_termination_flag_4@378@01)
    (or
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))
      (not
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))))
(assert (or (not _loop_termination_flag_4@378@01) _loop_termination_flag_4@378@01))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (and
  (=>
    (not _loop_termination_flag_4@378@01)
    (and
      (not _loop_termination_flag_4@378@01)
      (or
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))
        (not
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))))
  (or (not _loop_termination_flag_4@378@01) _loop_termination_flag_4@378@01)))
(pop) ; 58
(pop) ; 57
; Joined path conditions
(assert (and
  (=>
    (not _loop_termination_flag_4@378@01)
    (and
      (not _loop_termination_flag_4@378@01)
      (or
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))
        (not
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))))
  (or (not _loop_termination_flag_4@378@01) _loop_termination_flag_4@378@01)))
(pop) ; 56
(pop) ; 55
; Joined path conditions
(assert (=>
  (and p1_5@204@01 (not bypass1_4@381@01))
  (and
    p1_5@204@01
    (not bypass1_4@381@01)
    (=>
      (not _loop_termination_flag_4@378@01)
      (and
        (not _loop_termination_flag_4@378@01)
        (or
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))
          (not
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))))
    (or (not _loop_termination_flag_4@378@01) _loop_termination_flag_4@378@01))))
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
; [eval] p2_5 && !bypass2_4 ==> !idle2_4 ==> _loop_check_before_4_0 ==> _loop_termination_flag_4_0 || (!int___eq__(x_1_0, __prim__int___box__(2)) || perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_19: Ref [MustInvokeBounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBoundedp] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnboundedp] :: false)))))
; [eval] p2_5 && !bypass2_4
(push) ; 55
; [then-branch: 646 | !(p2_5@205@01) | live]
; [else-branch: 646 | p2_5@205@01 | live]
(push) ; 56
; [then-branch: 646 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 56
(push) ; 56
; [else-branch: 646 | p2_5@205@01]
; [eval] !bypass2_4
(pop) ; 56
(pop) ; 55
; Joined path conditions
; Joined path conditions
(push) ; 55
(push) ; 56
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_4@382@01)))))
(check-sat)
; unknown
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 56
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_4@382@01))))
(check-sat)
; unsat
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
; [then-branch: 647 | p2_5@205@01 && !(bypass2_4@382@01) | live]
; [else-branch: 647 | !(p2_5@205@01 && !(bypass2_4@382@01)) | dead]
(set-option :timeout 0)
(push) ; 56
; [then-branch: 647 | p2_5@205@01 && !(bypass2_4@382@01)]
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] !idle2_4 ==> _loop_check_before_4_0 ==> _loop_termination_flag_4_0 || (!int___eq__(x_1_0, __prim__int___box__(2)) || perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_19: Ref [MustInvokeBounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBoundedp] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnboundedp] :: false)))))
; [eval] !idle2_4
(push) ; 57
(push) ; 58
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 58
; 0.00s
; (get-info :all-statistics)
; [then-branch: 648 | True | live]
; [else-branch: 648 | False | dead]
(set-option :timeout 0)
(push) ; 58
; [then-branch: 648 | True]
; [eval] _loop_check_before_4_0 ==> _loop_termination_flag_4_0 || (!int___eq__(x_1_0, __prim__int___box__(2)) || perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_19: Ref [MustInvokeBounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBoundedp] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnboundedp] :: false)))))
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 649 | True | live]
; [else-branch: 649 | False | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 649 | True]
; [eval] _loop_termination_flag_4_0 || (!int___eq__(x_1_0, __prim__int___box__(2)) || perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_19: Ref [MustInvokeBounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBoundedp] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnboundedp] :: false)))))
(push) ; 61
; [then-branch: 650 | _loop_termination_flag_4_0@380@01 | live]
; [else-branch: 650 | !(_loop_termination_flag_4_0@380@01) | live]
(push) ; 62
; [then-branch: 650 | _loop_termination_flag_4_0@380@01]
(assert _loop_termination_flag_4_0@380@01)
(pop) ; 62
(push) ; 62
; [else-branch: 650 | !(_loop_termination_flag_4_0@380@01)]
(assert (not _loop_termination_flag_4_0@380@01))
; [eval] !int___eq__(x_1_0, __prim__int___box__(2))
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 63
(pop) ; 63
; Joined path conditions
(push) ; 63
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 63
; Joined path conditions
(push) ; 63
; [then-branch: 651 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2))) | live]
; [else-branch: 651 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2)) | live]
(push) ; 64
; [then-branch: 651 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2)))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))
(pop) ; 64
(push) ; 64
; [else-branch: 651 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2))]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))
; [eval] perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_19: Ref [MustInvokeBounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBoundedp] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnboundedp] :: false))))
; [eval] perm(MustTerminate_0(_cthread_159_0)) == none
; [eval] perm(MustTerminate_0(_cthread_159_0))
(push) ; 65
; [then-branch: 652 | False | live]
; [else-branch: 652 | True | live]
(push) ; 66
; [then-branch: 652 | False]
(assert false)
(pop) ; 66
(push) ; 66
; [else-branch: 652 | True]
; [eval] (forperm _r_19: Ref [MustInvokeBounded_0(_r_19)] :: false)
(push) ; 67
; [then-branch: 653 | False | live]
; [else-branch: 653 | True | live]
(push) ; 68
; [then-branch: 653 | False]
(assert false)
(pop) ; 68
(push) ; 68
; [else-branch: 653 | True]
; [eval] (forperm _r_19: Ref [MustInvokeUnbounded_0(_r_19)] :: false)
(push) ; 69
; [then-branch: 654 | False | live]
; [else-branch: 654 | True | live]
(push) ; 70
; [then-branch: 654 | False]
(assert false)
(pop) ; 70
(push) ; 70
; [else-branch: 654 | True]
; [eval] (forperm _r_19: Ref [_r_19.MustReleaseBoundedp] :: false)
(push) ; 71
; [then-branch: 655 | False | live]
; [else-branch: 655 | True | live]
(push) ; 72
; [then-branch: 655 | False]
(assert false)
(pop) ; 72
(push) ; 72
; [else-branch: 655 | True]
; [eval] (forperm _r_19: Ref [_r_19.MustReleaseUnboundedp] :: false)
(pop) ; 72
(pop) ; 71
; Joined path conditions
; Joined path conditions
(pop) ; 70
(pop) ; 69
; Joined path conditions
; Joined path conditions
(pop) ; 68
(pop) ; 67
; Joined path conditions
; Joined path conditions
(pop) ; 66
(pop) ; 65
; Joined path conditions
; Joined path conditions
(pop) ; 64
(pop) ; 63
; Joined path conditions
; Joined path conditions
(assert (or
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))))
(pop) ; 62
(pop) ; 61
; Joined path conditions
; Joined path conditions
(assert (=>
  (not _loop_termination_flag_4_0@380@01)
  (and
    (not _loop_termination_flag_4_0@380@01)
    (or
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))
      (not
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))))))
(assert (or (not _loop_termination_flag_4_0@380@01) _loop_termination_flag_4_0@380@01))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (and
  (=>
    (not _loop_termination_flag_4_0@380@01)
    (and
      (not _loop_termination_flag_4_0@380@01)
      (or
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))
        (not
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))))
  (or (not _loop_termination_flag_4_0@380@01) _loop_termination_flag_4_0@380@01)))
(pop) ; 58
(pop) ; 57
; Joined path conditions
(assert (and
  (=>
    (not _loop_termination_flag_4_0@380@01)
    (and
      (not _loop_termination_flag_4_0@380@01)
      (or
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))
        (not
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))))
  (or (not _loop_termination_flag_4_0@380@01) _loop_termination_flag_4_0@380@01)))
(pop) ; 56
(pop) ; 55
; Joined path conditions
(assert (=>
  (and p2_5@205@01 (not bypass2_4@382@01))
  (and
    p2_5@205@01
    (not bypass2_4@382@01)
    (=>
      (not _loop_termination_flag_4_0@380@01)
      (and
        (not _loop_termination_flag_4_0@380@01)
        (or
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))
          (not
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))))
    (or
      (not _loop_termination_flag_4_0@380@01)
      _loop_termination_flag_4_0@380@01))))
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] p1_5 && !bypass1_4 ==> !idle1_4 ==> !_loop_check_before_4 ==> (forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)))
; [eval] p1_5 && !bypass1_4
(push) ; 55
; [then-branch: 656 | !(p1_5@204@01) | live]
; [else-branch: 656 | p1_5@204@01 | live]
(push) ; 56
; [then-branch: 656 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 56
(push) ; 56
; [else-branch: 656 | p1_5@204@01]
; [eval] !bypass1_4
(pop) ; 56
(pop) ; 55
; Joined path conditions
; Joined path conditions
(push) ; 55
(push) ; 56
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_4@381@01)))))
(check-sat)
; unknown
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 56
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_4@381@01))))
(check-sat)
; unsat
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
; [then-branch: 657 | p1_5@204@01 && !(bypass1_4@381@01) | live]
; [else-branch: 657 | !(p1_5@204@01 && !(bypass1_4@381@01)) | dead]
(set-option :timeout 0)
(push) ; 56
; [then-branch: 657 | p1_5@204@01 && !(bypass1_4@381@01)]
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
; [eval] !idle1_4 ==> !_loop_check_before_4 ==> (forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)))
; [eval] !idle1_4
(push) ; 57
(push) ; 58
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 58
; 0.00s
; (get-info :all-statistics)
; [then-branch: 658 | True | live]
; [else-branch: 658 | False | dead]
(set-option :timeout 0)
(push) ; 58
; [then-branch: 658 | True]
; [eval] !_loop_check_before_4 ==> (forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_4
(push) ; 59
; [then-branch: 659 | False | dead]
; [else-branch: 659 | True | live]
(push) ; 60
; [else-branch: 659 | True]
(pop) ; 60
(pop) ; 59
; Joined path conditions
(pop) ; 58
(pop) ; 57
; Joined path conditions
(pop) ; 56
(pop) ; 55
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
; [eval] p2_5 && !bypass2_4 ==> !idle2_4 ==> !_loop_check_before_4_0 ==> (forperm _r_19: Ref [MustInvokeBounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBoundedp] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnboundedp] :: false)))
; [eval] p2_5 && !bypass2_4
(push) ; 55
; [then-branch: 660 | !(p2_5@205@01) | live]
; [else-branch: 660 | p2_5@205@01 | live]
(push) ; 56
; [then-branch: 660 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 56
(push) ; 56
; [else-branch: 660 | p2_5@205@01]
; [eval] !bypass2_4
(pop) ; 56
(pop) ; 55
; Joined path conditions
; Joined path conditions
(push) ; 55
(push) ; 56
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_4@382@01)))))
(check-sat)
; unknown
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 56
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_4@382@01))))
(check-sat)
; unsat
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
; [then-branch: 661 | p2_5@205@01 && !(bypass2_4@382@01) | live]
; [else-branch: 661 | !(p2_5@205@01 && !(bypass2_4@382@01)) | dead]
(set-option :timeout 0)
(push) ; 56
; [then-branch: 661 | p2_5@205@01 && !(bypass2_4@382@01)]
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] !idle2_4 ==> !_loop_check_before_4_0 ==> (forperm _r_19: Ref [MustInvokeBounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBoundedp] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnboundedp] :: false)))
; [eval] !idle2_4
(push) ; 57
(push) ; 58
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 58
; 0.00s
; (get-info :all-statistics)
; [then-branch: 662 | True | live]
; [else-branch: 662 | False | dead]
(set-option :timeout 0)
(push) ; 58
; [then-branch: 662 | True]
; [eval] !_loop_check_before_4_0 ==> (forperm _r_19: Ref [MustInvokeBounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBoundedp] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnboundedp] :: false)))
; [eval] !_loop_check_before_4_0
(push) ; 59
; [then-branch: 663 | False | dead]
; [else-branch: 663 | True | live]
(push) ; 60
; [else-branch: 663 | True]
(pop) ; 60
(pop) ; 59
; Joined path conditions
(pop) ; 58
(pop) ; 57
; Joined path conditions
(pop) ; 56
(pop) ; 55
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] p1_5 && !bypass1_4 ==> !cond_9 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] p1_5 && !bypass1_4
(push) ; 55
; [then-branch: 664 | !(p1_5@204@01) | live]
; [else-branch: 664 | p1_5@204@01 | live]
(push) ; 56
; [then-branch: 664 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 56
(push) ; 56
; [else-branch: 664 | p1_5@204@01]
; [eval] !bypass1_4
(pop) ; 56
(pop) ; 55
; Joined path conditions
; Joined path conditions
(push) ; 55
(push) ; 56
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_4@381@01)))))
(check-sat)
; unknown
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 56
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_4@381@01))))
(check-sat)
; unsat
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
; [then-branch: 665 | p1_5@204@01 && !(bypass1_4@381@01) | live]
; [else-branch: 665 | !(p1_5@204@01 && !(bypass1_4@381@01)) | dead]
(set-option :timeout 0)
(push) ; 56
; [then-branch: 665 | p1_5@204@01 && !(bypass1_4@381@01)]
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
; [eval] !cond_9 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] !cond_9
(push) ; 57
(push) ; 58
(set-option :timeout 10)
(assert (not cond_9@383@01))
(check-sat)
; unknown
(pop) ; 58
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 58
(set-option :timeout 10)
(assert (not (not cond_9@383@01)))
(check-sat)
; unknown
(pop) ; 58
; 0.00s
; (get-info :all-statistics)
; [then-branch: 666 | !(cond_9@383@01) | live]
; [else-branch: 666 | cond_9@383@01 | live]
(set-option :timeout 0)
(push) ; 58
; [then-branch: 666 | !(cond_9@383@01)]
(assert (not cond_9@383@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 59
; [eval] _isDefined(id)
(push) ; 60
(pop) ; 60
; Joined path conditions
(pop) ; 59
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 59
(pop) ; 59
; Joined path conditions
(push) ; 59
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 59
; Joined path conditions
(pop) ; 58
(push) ; 58
; [else-branch: 666 | cond_9@383@01]
(assert cond_9@383@01)
(pop) ; 58
(pop) ; 57
; Joined path conditions
; Joined path conditions
(assert (or cond_9@383@01 (not cond_9@383@01)))
(pop) ; 56
(pop) ; 55
; Joined path conditions
(assert (=>
  (and p1_5@204@01 (not bypass1_4@381@01))
  (and p1_5@204@01 (not bypass1_4@381@01) (or cond_9@383@01 (not cond_9@383@01)))))
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
(push) ; 55
(assert (not (=>
  (and (and p1_5@204@01 (not bypass1_4@381@01)) (not cond_9@383@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
(check-sat)
; unsat
(pop) ; 55
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and (and p1_5@204@01 (not bypass1_4@381@01)) (not cond_9@383@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
; [eval] p2_5 && !bypass2_4 ==> !cond_10 ==> int___eq__(x_1_0, __prim__int___box__(2))
; [eval] p2_5 && !bypass2_4
(push) ; 55
; [then-branch: 667 | !(p2_5@205@01) | live]
; [else-branch: 667 | p2_5@205@01 | live]
(push) ; 56
; [then-branch: 667 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 56
(push) ; 56
; [else-branch: 667 | p2_5@205@01]
; [eval] !bypass2_4
(pop) ; 56
(pop) ; 55
; Joined path conditions
; Joined path conditions
(push) ; 55
(push) ; 56
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_4@382@01)))))
(check-sat)
; unknown
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 56
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_4@382@01))))
(check-sat)
; unsat
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
; [then-branch: 668 | p2_5@205@01 && !(bypass2_4@382@01) | live]
; [else-branch: 668 | !(p2_5@205@01 && !(bypass2_4@382@01)) | dead]
(set-option :timeout 0)
(push) ; 56
; [then-branch: 668 | p2_5@205@01 && !(bypass2_4@382@01)]
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] !cond_10 ==> int___eq__(x_1_0, __prim__int___box__(2))
; [eval] !cond_10
(push) ; 57
(push) ; 58
(set-option :timeout 10)
(assert (not cond_10@384@01))
(check-sat)
; unknown
(pop) ; 58
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 58
(set-option :timeout 10)
(assert (not (not cond_10@384@01)))
(check-sat)
; unknown
(pop) ; 58
; 0.00s
; (get-info :all-statistics)
; [then-branch: 669 | !(cond_10@384@01) | live]
; [else-branch: 669 | cond_10@384@01 | live]
(set-option :timeout 0)
(push) ; 58
; [then-branch: 669 | !(cond_10@384@01)]
(assert (not cond_10@384@01))
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 59
(pop) ; 59
; Joined path conditions
(push) ; 59
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 59
; Joined path conditions
(pop) ; 58
(push) ; 58
; [else-branch: 669 | cond_10@384@01]
(assert cond_10@384@01)
(pop) ; 58
(pop) ; 57
; Joined path conditions
; Joined path conditions
(assert (or cond_10@384@01 (not cond_10@384@01)))
(pop) ; 56
(pop) ; 55
; Joined path conditions
(assert (=>
  (and p2_5@205@01 (not bypass2_4@382@01))
  (and
    p2_5@205@01
    (not bypass2_4@382@01)
    (or cond_10@384@01 (not cond_10@384@01)))))
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
(push) ; 55
(assert (not (=>
  (and (and p2_5@205@01 (not bypass2_4@382@01)) (not cond_10@384@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))))
(check-sat)
; unsat
(pop) ; 55
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and (and p2_5@205@01 (not bypass2_4@382@01)) (not cond_10@384@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))
; [eval] bypass1_4 ==> tmp1_44 == _loop_measures_4
(push) ; 55
; [then-branch: 670 | bypass1_4@381@01 | dead]
; [else-branch: 670 | !(bypass1_4@381@01) | live]
(push) ; 56
; [else-branch: 670 | !(bypass1_4@381@01)]
(pop) ; 56
(pop) ; 55
; Joined path conditions
; [eval] bypass1_4 ==> tmp1_45 == _loop_check_before_4
(push) ; 55
; [then-branch: 671 | bypass1_4@381@01 | dead]
; [else-branch: 671 | !(bypass1_4@381@01) | live]
(push) ; 56
; [else-branch: 671 | !(bypass1_4@381@01)]
(pop) ; 56
(pop) ; 55
; Joined path conditions
; [eval] bypass2_4 ==> tmp2_44 == _loop_measures_4_0
(push) ; 55
; [then-branch: 672 | bypass2_4@382@01 | dead]
; [else-branch: 672 | !(bypass2_4@382@01) | live]
(push) ; 56
; [else-branch: 672 | !(bypass2_4@382@01)]
(pop) ; 56
(pop) ; 55
; Joined path conditions
; [eval] bypass2_4 ==> tmp2_45 == _loop_check_before_4_0
(push) ; 55
; [then-branch: 673 | bypass2_4@382@01 | dead]
; [else-branch: 673 | !(bypass2_4@382@01) | live]
(push) ; 56
; [else-branch: 673 | !(bypass2_4@382@01)]
(pop) ; 56
(pop) ; 55
; Joined path conditions
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 55
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@393@01))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))
(assert (=
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))
  $Snap.unit))
(assert (=>
  (and p1_5@204@01 (not bypass1_4@381@01))
  (and p1_5@204@01 (not bypass1_4@381@01) cond_9@383@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))
  $Snap.unit))
(assert (=>
  (and p2_5@205@01 (not bypass2_4@382@01))
  (and p2_5@205@01 (not bypass2_4@382@01) cond_10@384@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))))
  $Snap.unit))
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second $t@393@01)))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@393@01))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@393@01)))))))
(assert (=
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@393@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@393@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@393@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))
(assert (= $t@393@01 ($Snap.combine ($Snap.first $t@393@01) ($Snap.second $t@393@01))))
(assert (= ($Snap.first $t@393@01) $Snap.unit))
(assert (=>
  (and p1_5@204@01 (not bypass1_4@381@01))
  (<= _residue_159@210@01 _residue_165@250@01)))
(assert (=
  ($Snap.second $t@393@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@393@01))
    ($Snap.second ($Snap.second $t@393@01)))))
(assert (= ($Snap.first ($Snap.second $t@393@01)) $Snap.unit))
(assert (=>
  (and p2_5@205@01 (not bypass2_4@382@01))
  (<= _residue_159_0@211@01 _residue_165_0@251@01)))
(assert (=
  ($Snap.second ($Snap.second $t@393@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@393@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 56
; [eval] p1_5 && (!bypass1_4 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))) || p2_5 && (!bypass2_4 && int___eq__(x_1_0, __prim__int___box__(2)))
; [eval] p1_5 && (!bypass1_4 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)))
(push) ; 57
; [then-branch: 674 | !(p1_5@204@01) | live]
; [else-branch: 674 | p1_5@204@01 | live]
(push) ; 58
; [then-branch: 674 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 58
(push) ; 58
; [else-branch: 674 | p1_5@204@01]
; [eval] !bypass1_4
(push) ; 59
; [then-branch: 675 | bypass1_4@381@01 | live]
; [else-branch: 675 | !(bypass1_4@381@01) | live]
(push) ; 60
; [then-branch: 675 | bypass1_4@381@01]
(assert bypass1_4@381@01)
(pop) ; 60
(push) ; 60
; [else-branch: 675 | !(bypass1_4@381@01)]
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 61
; [eval] _isDefined(id)
(push) ; 62
(pop) ; 62
; Joined path conditions
(pop) ; 61
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 61
(pop) ; 61
; Joined path conditions
(push) ; 61
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 61
; Joined path conditions
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_4@381@01) bypass1_4@381@01))
(pop) ; 58
(pop) ; 57
; Joined path conditions
; Joined path conditions
(assert (=> p1_5@204@01 (or (not bypass1_4@381@01) bypass1_4@381@01)))
(push) ; 57
; [then-branch: 676 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) | live]
; [else-branch: 676 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))) | live]
(push) ; 58
; [then-branch: 676 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_4@381@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
(pop) ; 58
(push) ; 58
; [else-branch: 676 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))))
; [eval] p2_5 && (!bypass2_4 && int___eq__(x_1_0, __prim__int___box__(2)))
(push) ; 59
; [then-branch: 677 | !(p2_5@205@01) | live]
; [else-branch: 677 | p2_5@205@01 | live]
(push) ; 60
; [then-branch: 677 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 60
(push) ; 60
; [else-branch: 677 | p2_5@205@01]
; [eval] !bypass2_4
(push) ; 61
; [then-branch: 678 | bypass2_4@382@01 | live]
; [else-branch: 678 | !(bypass2_4@382@01) | live]
(push) ; 62
; [then-branch: 678 | bypass2_4@382@01]
(assert bypass2_4@382@01)
(pop) ; 62
(push) ; 62
; [else-branch: 678 | !(bypass2_4@382@01)]
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 63
(pop) ; 63
; Joined path conditions
(push) ; 63
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 63
; Joined path conditions
(pop) ; 62
(pop) ; 61
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_4@382@01) bypass2_4@382@01))
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (or (not bypass2_4@382@01) bypass2_4@382@01)))
(pop) ; 58
(pop) ; 57
; Joined path conditions
(assert (=>
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
  (and
    p1_5@204@01
    (not bypass1_4@381@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_4@381@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
  (and
    (not
      (and
        p1_5@204@01
        (and
          (not bypass1_4@381@01)
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
    (=> p2_5@205@01 (or (not bypass2_4@382@01) bypass2_4@382@01)))))
(assert (or
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_4@381@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))))
(pop) ; 56
(push) ; 56
; [eval] !(p1_5 && (!bypass1_4 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))) || p2_5 && (!bypass2_4 && int___eq__(x_1_0, __prim__int___box__(2))))
; [eval] p1_5 && (!bypass1_4 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))) || p2_5 && (!bypass2_4 && int___eq__(x_1_0, __prim__int___box__(2)))
; [eval] p1_5 && (!bypass1_4 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)))
(push) ; 57
; [then-branch: 679 | !(p1_5@204@01) | live]
; [else-branch: 679 | p1_5@204@01 | live]
(push) ; 58
; [then-branch: 679 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 58
(push) ; 58
; [else-branch: 679 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_4
(push) ; 59
; [then-branch: 680 | bypass1_4@381@01 | live]
; [else-branch: 680 | !(bypass1_4@381@01) | live]
(push) ; 60
; [then-branch: 680 | bypass1_4@381@01]
(assert bypass1_4@381@01)
(pop) ; 60
(push) ; 60
; [else-branch: 680 | !(bypass1_4@381@01)]
(assert (not bypass1_4@381@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 61
; [eval] _isDefined(id)
(push) ; 62
(pop) ; 62
; Joined path conditions
(pop) ; 61
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 61
(pop) ; 61
; Joined path conditions
(push) ; 61
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 61
; Joined path conditions
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_4@381@01) bypass1_4@381@01))
(pop) ; 58
(pop) ; 57
; Joined path conditions
; Joined path conditions
(assert (=> p1_5@204@01 (and p1_5@204@01 (or (not bypass1_4@381@01) bypass1_4@381@01))))
(push) ; 57
; [then-branch: 681 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) | live]
; [else-branch: 681 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))) | live]
(push) ; 58
; [then-branch: 681 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_4@381@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
(pop) ; 58
(push) ; 58
; [else-branch: 681 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))))
; [eval] p2_5 && (!bypass2_4 && int___eq__(x_1_0, __prim__int___box__(2)))
(push) ; 59
; [then-branch: 682 | !(p2_5@205@01) | live]
; [else-branch: 682 | p2_5@205@01 | live]
(push) ; 60
; [then-branch: 682 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 60
(push) ; 60
; [else-branch: 682 | p2_5@205@01]
; [eval] !bypass2_4
(push) ; 61
; [then-branch: 683 | bypass2_4@382@01 | live]
; [else-branch: 683 | !(bypass2_4@382@01) | live]
(push) ; 62
; [then-branch: 683 | bypass2_4@382@01]
(assert bypass2_4@382@01)
(pop) ; 62
(push) ; 62
; [else-branch: 683 | !(bypass2_4@382@01)]
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 63
(pop) ; 63
; Joined path conditions
(push) ; 63
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 63
; Joined path conditions
(pop) ; 62
(pop) ; 61
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_4@382@01) bypass2_4@382@01))
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (or (not bypass2_4@382@01) bypass2_4@382@01)))
(pop) ; 58
(pop) ; 57
; Joined path conditions
(assert (=>
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
  (and
    p1_5@204@01
    (not bypass1_4@381@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_4@381@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
  (and
    (not
      (and
        p1_5@204@01
        (and
          (not bypass1_4@381@01)
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
    (=> p2_5@205@01 (or (not bypass2_4@382@01) bypass2_4@382@01)))))
(assert (or
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_4@381@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))))
(pop) ; 56
; Loop head block: Follow loop-internal edges
; [eval] p1_5 && (!bypass1_4 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))) || p2_5 && (!bypass2_4 && int___eq__(x_1_0, __prim__int___box__(2)))
; [eval] p1_5 && (!bypass1_4 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)))
(push) ; 56
; [then-branch: 684 | !(p1_5@204@01) | live]
; [else-branch: 684 | p1_5@204@01 | live]
(push) ; 57
; [then-branch: 684 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 57
(push) ; 57
; [else-branch: 684 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_4
(push) ; 58
; [then-branch: 685 | bypass1_4@381@01 | live]
; [else-branch: 685 | !(bypass1_4@381@01) | live]
(push) ; 59
; [then-branch: 685 | bypass1_4@381@01]
(assert bypass1_4@381@01)
(pop) ; 59
(push) ; 59
; [else-branch: 685 | !(bypass1_4@381@01)]
(assert (not bypass1_4@381@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 60
; [eval] _isDefined(id)
(push) ; 61
(pop) ; 61
; Joined path conditions
(pop) ; 60
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 60
(pop) ; 60
; Joined path conditions
(push) ; 60
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 60
; Joined path conditions
(pop) ; 59
(pop) ; 58
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_4@381@01) bypass1_4@381@01))
(pop) ; 57
(pop) ; 56
; Joined path conditions
; Joined path conditions
(assert (=> p1_5@204@01 (and p1_5@204@01 (or (not bypass1_4@381@01) bypass1_4@381@01))))
(push) ; 56
; [then-branch: 686 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) | live]
; [else-branch: 686 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))) | live]
(push) ; 57
; [then-branch: 686 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_4@381@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
(pop) ; 57
(push) ; 57
; [else-branch: 686 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))))
; [eval] p2_5 && (!bypass2_4 && int___eq__(x_1_0, __prim__int___box__(2)))
(push) ; 58
; [then-branch: 687 | !(p2_5@205@01) | live]
; [else-branch: 687 | p2_5@205@01 | live]
(push) ; 59
; [then-branch: 687 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 59
(push) ; 59
; [else-branch: 687 | p2_5@205@01]
; [eval] !bypass2_4
(push) ; 60
; [then-branch: 688 | bypass2_4@382@01 | live]
; [else-branch: 688 | !(bypass2_4@382@01) | live]
(push) ; 61
; [then-branch: 688 | bypass2_4@382@01]
(assert bypass2_4@382@01)
(pop) ; 61
(push) ; 61
; [else-branch: 688 | !(bypass2_4@382@01)]
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 62
(pop) ; 62
; Joined path conditions
(push) ; 62
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 62
; Joined path conditions
(pop) ; 61
(pop) ; 60
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_4@382@01) bypass2_4@382@01))
(pop) ; 59
(pop) ; 58
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (or (not bypass2_4@382@01) bypass2_4@382@01)))
(pop) ; 57
(pop) ; 56
; Joined path conditions
(assert (=>
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
  (and
    p1_5@204@01
    (not bypass1_4@381@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_4@381@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
  (and
    (not
      (and
        p1_5@204@01
        (and
          (not bypass1_4@381@01)
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
    (=> p2_5@205@01 (or (not bypass2_4@382@01) bypass2_4@382@01)))))
(assert (or
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_4@381@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))))
(push) ; 56
(set-option :timeout 10)
(assert (not (not
  (or
    (and
      p1_5@204@01
      (and
        (not bypass1_4@381@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
    (and
      p2_5@205@01
      (and
        (not bypass2_4@382@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))))))
(check-sat)
; unsat
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
; [then-branch: 689 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) || p2_5@205@01 && !(bypass2_4@382@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2)) | dead]
; [else-branch: 689 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) || p2_5@205@01 && !(bypass2_4@382@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2))) | live]
(set-option :timeout 0)
(push) ; 56
; [else-branch: 689 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) || p2_5@205@01 && !(bypass2_4@382@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2)))]
(assert (not
  (or
    (and
      p1_5@204@01
      (and
        (not bypass1_4@381@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
    (and
      p2_5@205@01
      (and
        (not bypass2_4@382@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))))))
(pop) ; 56
; [eval] !(p1_5 && (!bypass1_4 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))) || p2_5 && (!bypass2_4 && int___eq__(x_1_0, __prim__int___box__(2))))
; [eval] p1_5 && (!bypass1_4 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))) || p2_5 && (!bypass2_4 && int___eq__(x_1_0, __prim__int___box__(2)))
; [eval] p1_5 && (!bypass1_4 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)))
(push) ; 56
; [then-branch: 690 | !(p1_5@204@01) | live]
; [else-branch: 690 | p1_5@204@01 | live]
(push) ; 57
; [then-branch: 690 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 57
(push) ; 57
; [else-branch: 690 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_4
(push) ; 58
; [then-branch: 691 | bypass1_4@381@01 | live]
; [else-branch: 691 | !(bypass1_4@381@01) | live]
(push) ; 59
; [then-branch: 691 | bypass1_4@381@01]
(assert bypass1_4@381@01)
(pop) ; 59
(push) ; 59
; [else-branch: 691 | !(bypass1_4@381@01)]
(assert (not bypass1_4@381@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 60
; [eval] _isDefined(id)
(push) ; 61
(pop) ; 61
; Joined path conditions
(pop) ; 60
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 60
(pop) ; 60
; Joined path conditions
(push) ; 60
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 60
; Joined path conditions
(pop) ; 59
(pop) ; 58
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_4@381@01) bypass1_4@381@01))
(pop) ; 57
(pop) ; 56
; Joined path conditions
; Joined path conditions
(push) ; 56
; [then-branch: 692 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) | live]
; [else-branch: 692 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))) | live]
(push) ; 57
; [then-branch: 692 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_4@381@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
(pop) ; 57
(push) ; 57
; [else-branch: 692 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))))
; [eval] p2_5 && (!bypass2_4 && int___eq__(x_1_0, __prim__int___box__(2)))
(push) ; 58
; [then-branch: 693 | !(p2_5@205@01) | live]
; [else-branch: 693 | p2_5@205@01 | live]
(push) ; 59
; [then-branch: 693 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 59
(push) ; 59
; [else-branch: 693 | p2_5@205@01]
; [eval] !bypass2_4
(push) ; 60
; [then-branch: 694 | bypass2_4@382@01 | live]
; [else-branch: 694 | !(bypass2_4@382@01) | live]
(push) ; 61
; [then-branch: 694 | bypass2_4@382@01]
(assert bypass2_4@382@01)
(pop) ; 61
(push) ; 61
; [else-branch: 694 | !(bypass2_4@382@01)]
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 62
(pop) ; 62
; Joined path conditions
(push) ; 62
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 62
; Joined path conditions
(pop) ; 61
(pop) ; 60
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_4@382@01) bypass2_4@382@01))
(pop) ; 59
(pop) ; 58
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (or (not bypass2_4@382@01) bypass2_4@382@01)))
(pop) ; 57
(pop) ; 56
; Joined path conditions
; Joined path conditions
(push) ; 56
(set-option :timeout 10)
(assert (not (or
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
  (and
    p2_5@205@01
    (and
      (not bypass2_4@382@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))))))
(check-sat)
; unknown
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 56
(set-option :timeout 10)
(assert (not (not
  (or
    (and
      p1_5@204@01
      (and
        (not bypass1_4@381@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
    (and
      p2_5@205@01
      (and
        (not bypass2_4@382@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))))))
(check-sat)
; unsat
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
; [then-branch: 695 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) || p2_5@205@01 && !(bypass2_4@382@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2))) | live]
; [else-branch: 695 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) || p2_5@205@01 && !(bypass2_4@382@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2)) | dead]
(set-option :timeout 0)
(push) ; 56
; [then-branch: 695 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) || p2_5@205@01 && !(bypass2_4@382@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2)))]
(assert (not
  (or
    (and
      p1_5@204@01
      (and
        (not bypass1_4@381@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
    (and
      p2_5@205@01
      (and
        (not bypass2_4@382@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))))))
(push) ; 57
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 57
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 57
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unsat
(pop) ; 57
; 0.00s
; (get-info :all-statistics)
; [then-branch: 696 | p1_5@204@01 | live]
; [else-branch: 696 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 57
; [then-branch: 696 | p1_5@204@01]
(assert p1_5@204@01)
; [exec]
; exhale perm(MustTerminate(_cthread_159)) > none ==>
;   acc(MustTerminate(_cthread_159), perm(MustTerminate(_cthread_159)) -
;   _loop_original_must_terminate_4)
; [eval] perm(MustTerminate(_cthread_159)) > none
; [eval] perm(MustTerminate(_cthread_159))
(push) ; 58
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 58
; 0.00s
; (get-info :all-statistics)
; [then-branch: 697 | True | live]
; [else-branch: 697 | False | dead]
(set-option :timeout 0)
(push) ; 58
; [then-branch: 697 | True]
; [eval] perm(MustTerminate(_cthread_159)) - _loop_original_must_terminate_4
; [eval] perm(MustTerminate(_cthread_159))
(push) ; 59
(assert (not (or
  (= (- $Perm.Write _loop_original_must_terminate_4@377@01) $Perm.No)
  (< $Perm.No (- $Perm.Write _loop_original_must_terminate_4@377@01)))))
(check-sat)
; unsat
(pop) ; 59
; 0.00s
; (get-info :all-statistics)
(push) ; 59
(set-option :timeout 10)
(assert (not (=
  (-
    $Perm.Write
    ($Perm.min
      $Perm.Write
      (- $Perm.Write _loop_original_must_terminate_4@377@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 59
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 59
(assert (not (or
  (=
    (-
      (- $Perm.Write _loop_original_must_terminate_4@377@01)
      ($Perm.min
        $Perm.Write
        (- $Perm.Write _loop_original_must_terminate_4@377@01)))
    $Perm.No)
  (<
    (-
      (- $Perm.Write _loop_original_must_terminate_4@377@01)
      ($Perm.min
        $Perm.Write
        (- $Perm.Write _loop_original_must_terminate_4@377@01)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 59
; 0.00s
; (get-info :all-statistics)
(push) ; 59
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 59
; 0.00s
; (get-info :all-statistics)
; [then-branch: 698 | p2_5@205@01 | live]
; [else-branch: 698 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 59
; [then-branch: 698 | p2_5@205@01]
; [exec]
; exhale perm(MustTerminate_0(_cthread_159_0)) > none ==>
;   acc(MustTerminate_0(_cthread_159_0), perm(MustTerminate_0(_cthread_159_0)) -
;   _loop_original_must_terminate_4_0)
; [eval] perm(MustTerminate_0(_cthread_159_0)) > none
; [eval] perm(MustTerminate_0(_cthread_159_0))
(push) ; 60
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 699 | True | live]
; [else-branch: 699 | False | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 699 | True]
; [eval] perm(MustTerminate_0(_cthread_159_0)) - _loop_original_must_terminate_4_0
; [eval] perm(MustTerminate_0(_cthread_159_0))
(push) ; 61
(assert (not (or
  (= (- $Perm.Write _loop_original_must_terminate_4_0@379@01) $Perm.No)
  (< $Perm.No (- $Perm.Write _loop_original_must_terminate_4_0@379@01)))))
(check-sat)
; unsat
(pop) ; 61
; 0.00s
; (get-info :all-statistics)
(push) ; 61
(set-option :timeout 10)
(assert (not (=
  (-
    $Perm.Write
    ($Perm.min
      $Perm.Write
      (- $Perm.Write _loop_original_must_terminate_4_0@379@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 61
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 61
(assert (not (or
  (=
    (-
      (- $Perm.Write _loop_original_must_terminate_4_0@379@01)
      ($Perm.min
        $Perm.Write
        (- $Perm.Write _loop_original_must_terminate_4_0@379@01)))
    $Perm.No)
  (<
    (-
      (- $Perm.Write _loop_original_must_terminate_4_0@379@01)
      ($Perm.min
        $Perm.Write
        (- $Perm.Write _loop_original_must_terminate_4_0@379@01)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 61
; 0.00s
; (get-info :all-statistics)
; [eval] p1_5 || p2_5
(push) ; 61
; [then-branch: 700 | p1_5@204@01 | live]
; [else-branch: 700 | !(p1_5@204@01) | live]
(push) ; 62
; [then-branch: 700 | p1_5@204@01]
(pop) ; 62
(push) ; 62
; [else-branch: 700 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 62
(pop) ; 61
; Joined path conditions
; Joined path conditions
(push) ; 61
(set-option :timeout 10)
(assert (not (not (or p1_5@204@01 p2_5@205@01))))
(check-sat)
; unknown
(pop) ; 61
; 0.00s
; (get-info :all-statistics)
; [then-branch: 701 | p1_5@204@01 || p2_5@205@01 | live]
; [else-branch: 701 | !(p1_5@204@01 || p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 61
; [then-branch: 701 | p1_5@204@01 || p2_5@205@01]
; [exec]
; var tmp1_46: Ref
(declare-const tmp1_46@394@01 $Ref)
; [exec]
; var tmp2_46: Ref
(declare-const tmp2_46@395@01 $Ref)
; [exec]
; var tmp1_47: Seq[Measure$]
(declare-const tmp1_47@396@01 Seq<Measure$>)
; [exec]
; var tmp2_47: Seq[Measure$]
(declare-const tmp2_47@397@01 Seq<Measure$>)
; [exec]
; var tmp1_48: Perm
(declare-const tmp1_48@398@01 $Perm)
; [exec]
; var tmp2_48: Perm
(declare-const tmp2_48@399@01 $Perm)
; [exec]
; var tmp1_49: Ref
(declare-const tmp1_49@400@01 $Ref)
; [exec]
; var tmp2_49: Ref
(declare-const tmp2_49@401@01 $Ref)
; [exec]
; var tmp1_50: Perm
(declare-const tmp1_50@402@01 $Perm)
; [exec]
; var tmp2_50: Perm
(declare-const tmp2_50@403@01 $Perm)
(push) ; 62
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
; [then-branch: 702 | p1_5@204@01 | live]
; [else-branch: 702 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 62
; [then-branch: 702 | p1_5@204@01]
; [exec]
; tmp1_46 := _cthread_159
; [exec]
; tmp1_47 := _method_measures_159
; [exec]
; tmp1_48 := _residue_159
; [exec]
; tmp1_49 := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 63
(pop) ; 63
; Joined path conditions
(declare-const tmp1_49@404@01 $Ref)
(assert (= tmp1_49@404@01 (__prim__int___box__ $Snap.unit 0)))
(push) ; 63
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 63
; 0.00s
; (get-info :all-statistics)
; [then-branch: 703 | p2_5@205@01 | live]
; [else-branch: 703 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 63
; [then-branch: 703 | p2_5@205@01]
; [exec]
; tmp2_46 := _cthread_159_0
; [exec]
; tmp2_47 := _method_measures_159_0
; [exec]
; tmp2_48 := _residue_159_0
; [exec]
; tmp2_49 := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 64
(pop) ; 64
; Joined path conditions
(declare-const tmp2_49@405@01 $Ref)
(assert (= tmp2_49@405@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; tmp1_50, tmp2_50 := _print(p1_5, p2_5, tmp1_46, tmp2_46, tmp1_47, tmp2_47, tmp1_48,
;   tmp2_48, tmp1_49, tmp2_49)
; [eval] p1 ==> _cthread_156 != null
(push) ; 64
(push) ; 65
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 65
; 0.00s
; (get-info :all-statistics)
; [then-branch: 704 | p1_5@204@01 | live]
; [else-branch: 704 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 65
; [then-branch: 704 | p1_5@204@01]
; [eval] _cthread_156 != null
(pop) ; 65
(pop) ; 64
; Joined path conditions
; [eval] p2 ==> _cthread_156_0 != null
(push) ; 64
(push) ; 65
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 65
; 0.00s
; (get-info :all-statistics)
; [then-branch: 705 | p2_5@205@01 | live]
; [else-branch: 705 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 65
; [then-branch: 705 | p2_5@205@01]
; [eval] _cthread_156_0 != null
(pop) ; 65
(pop) ; 64
; Joined path conditions
; [eval] p1 ==> issubtype(typeof(_cthread_156), Thread_0())
(push) ; 64
(push) ; 65
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 65
; 0.00s
; (get-info :all-statistics)
; [then-branch: 706 | p1_5@204@01 | live]
; [else-branch: 706 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 65
; [then-branch: 706 | p1_5@204@01]
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
(pop) ; 65
(pop) ; 64
; Joined path conditions
; [eval] p2 ==> issubtype(typeof(_cthread_156_0), Thread_0())
(push) ; 64
(push) ; 65
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 65
; 0.00s
; (get-info :all-statistics)
; [then-branch: 707 | p2_5@205@01 | live]
; [else-branch: 707 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 65
; [then-branch: 707 | p2_5@205@01]
; [eval] issubtype(typeof(_cthread_156_0), Thread_0())
; [eval] typeof(_cthread_156_0)
; [eval] Thread_0()
(pop) ; 65
(pop) ; 64
; Joined path conditions
; [eval] p1 ==> issubtype(typeof(val), int())
(push) ; 64
(push) ; 65
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 65
; 0.00s
; (get-info :all-statistics)
; [then-branch: 708 | p1_5@204@01 | live]
; [else-branch: 708 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 65
; [then-branch: 708 | p1_5@204@01]
; [eval] issubtype(typeof(val), int())
; [eval] typeof(val)
; [eval] int()
(pop) ; 65
(pop) ; 64
; Joined path conditions
(push) ; 64
(assert (not (=>
  p1_5@204@01
  (issubtype<Bool> (typeof<PyType> tmp1_49@404@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 64
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p1_5@204@01
  (issubtype<Bool> (typeof<PyType> tmp1_49@404@01) (as int<PyType>  PyType))))
; [eval] p2 ==> issubtype(typeof(val_1), int())
(push) ; 64
(push) ; 65
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 65
; 0.00s
; (get-info :all-statistics)
; [then-branch: 709 | p2_5@205@01 | live]
; [else-branch: 709 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 65
; [then-branch: 709 | p2_5@205@01]
; [eval] issubtype(typeof(val_1), int())
; [eval] typeof(val_1)
; [eval] int()
(pop) ; 65
(pop) ; 64
; Joined path conditions
(push) ; 64
(assert (not (=>
  p2_5@205@01
  (issubtype<Bool> (typeof<PyType> tmp2_49@405@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 64
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p2_5@205@01
  (issubtype<Bool> (typeof<PyType> tmp2_49@405@01) (as int<PyType>  PyType))))
; [eval] p1 == p2
; [eval] p1 && p2 ==> val == val_1
; [eval] p1 && p2
(push) ; 64
; [then-branch: 710 | !(p1_5@204@01) | live]
; [else-branch: 710 | p1_5@204@01 | live]
(push) ; 65
; [then-branch: 710 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 65
(push) ; 65
; [else-branch: 710 | p1_5@204@01]
(pop) ; 65
(pop) ; 64
; Joined path conditions
; Joined path conditions
(push) ; 64
(push) ; 65
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 p2_5@205@01))))
(check-sat)
; unknown
(pop) ; 65
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 65
(set-option :timeout 10)
(assert (not (and p1_5@204@01 p2_5@205@01)))
(check-sat)
; unsat
(pop) ; 65
; 0.00s
; (get-info :all-statistics)
; [then-branch: 711 | p1_5@204@01 && p2_5@205@01 | live]
; [else-branch: 711 | !(p1_5@204@01 && p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 65
; [then-branch: 711 | p1_5@204@01 && p2_5@205@01]
(assert (and p1_5@204@01 p2_5@205@01))
; [eval] val == val_1
(pop) ; 65
(pop) ; 64
; Joined path conditions
(assert (and p1_5@204@01 p2_5@205@01))
(push) ; 64
(assert (not (=> (and p1_5@204@01 p2_5@205@01) (= tmp1_49@404@01 tmp2_49@405@01))))
(check-sat)
; unsat
(pop) ; 64
; 0.00s
; (get-info :all-statistics)
(assert (=> (and p1_5@204@01 p2_5@205@01) (= tmp1_49@404@01 tmp2_49@405@01)))
; [eval] p1 ==> perm(MustTerminate(_cthread_156)) == none && ((forperm _r_1: Ref [MustInvokeBounded(_r_1)] :: false) && ((forperm _r_1: Ref [MustInvokeUnbounded(_r_1)] :: false) && ((forperm _r_1: Ref [_r_1.MustReleaseBounded] :: false) && (forperm _r_1: Ref [_r_1.MustReleaseUnbounded] :: false))))
(push) ; 64
(push) ; 65
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 65
; 0.00s
; (get-info :all-statistics)
; [then-branch: 712 | p1_5@204@01 | live]
; [else-branch: 712 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 65
; [then-branch: 712 | p1_5@204@01]
; [eval] perm(MustTerminate(_cthread_156)) == none && ((forperm _r_1: Ref [MustInvokeBounded(_r_1)] :: false) && ((forperm _r_1: Ref [MustInvokeUnbounded(_r_1)] :: false) && ((forperm _r_1: Ref [_r_1.MustReleaseBounded] :: false) && (forperm _r_1: Ref [_r_1.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_156)) == none
; [eval] perm(MustTerminate(_cthread_156))
(push) ; 66
; [then-branch: 713 | False | live]
; [else-branch: 713 | True | live]
(push) ; 67
; [then-branch: 713 | False]
(assert false)
(pop) ; 67
(push) ; 67
; [else-branch: 713 | True]
; [eval] (forperm _r_1: Ref [MustInvokeBounded(_r_1)] :: false)
(push) ; 68
; [then-branch: 714 | False | live]
; [else-branch: 714 | True | live]
(push) ; 69
; [then-branch: 714 | False]
(assert false)
(pop) ; 69
(push) ; 69
; [else-branch: 714 | True]
; [eval] (forperm _r_1: Ref [MustInvokeUnbounded(_r_1)] :: false)
(push) ; 70
; [then-branch: 715 | False | live]
; [else-branch: 715 | True | live]
(push) ; 71
; [then-branch: 715 | False]
(assert false)
(pop) ; 71
(push) ; 71
; [else-branch: 715 | True]
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseBounded] :: false)
(push) ; 72
; [then-branch: 716 | False | live]
; [else-branch: 716 | True | live]
(push) ; 73
; [then-branch: 716 | False]
(assert false)
(pop) ; 73
(push) ; 73
; [else-branch: 716 | True]
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseUnbounded] :: false)
(pop) ; 73
(pop) ; 72
; Joined path conditions
; Joined path conditions
(pop) ; 71
(pop) ; 70
; Joined path conditions
; Joined path conditions
(pop) ; 69
(pop) ; 68
; Joined path conditions
; Joined path conditions
(pop) ; 67
(pop) ; 66
; Joined path conditions
; Joined path conditions
(pop) ; 65
(pop) ; 64
; Joined path conditions
; [eval] p2 ==> perm(MustTerminate_0(_cthread_156_0)) == none && ((forperm _r_1: Ref [MustInvokeBounded_0(_r_1)] :: false) && ((forperm _r_1: Ref [MustInvokeUnbounded_0(_r_1)] :: false) && ((forperm _r_1: Ref [_r_1.MustReleaseBoundedp] :: false) && (forperm _r_1: Ref [_r_1.MustReleaseUnboundedp] :: false))))
(push) ; 64
(push) ; 65
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 65
; 0.00s
; (get-info :all-statistics)
; [then-branch: 717 | p2_5@205@01 | live]
; [else-branch: 717 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 65
; [then-branch: 717 | p2_5@205@01]
; [eval] perm(MustTerminate_0(_cthread_156_0)) == none && ((forperm _r_1: Ref [MustInvokeBounded_0(_r_1)] :: false) && ((forperm _r_1: Ref [MustInvokeUnbounded_0(_r_1)] :: false) && ((forperm _r_1: Ref [_r_1.MustReleaseBoundedp] :: false) && (forperm _r_1: Ref [_r_1.MustReleaseUnboundedp] :: false))))
; [eval] perm(MustTerminate_0(_cthread_156_0)) == none
; [eval] perm(MustTerminate_0(_cthread_156_0))
(push) ; 66
; [then-branch: 718 | False | live]
; [else-branch: 718 | True | live]
(push) ; 67
; [then-branch: 718 | False]
(assert false)
(pop) ; 67
(push) ; 67
; [else-branch: 718 | True]
; [eval] (forperm _r_1: Ref [MustInvokeBounded_0(_r_1)] :: false)
(push) ; 68
; [then-branch: 719 | False | live]
; [else-branch: 719 | True | live]
(push) ; 69
; [then-branch: 719 | False]
(assert false)
(pop) ; 69
(push) ; 69
; [else-branch: 719 | True]
; [eval] (forperm _r_1: Ref [MustInvokeUnbounded_0(_r_1)] :: false)
(push) ; 70
; [then-branch: 720 | False | live]
; [else-branch: 720 | True | live]
(push) ; 71
; [then-branch: 720 | False]
(assert false)
(pop) ; 71
(push) ; 71
; [else-branch: 720 | True]
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseBoundedp] :: false)
(push) ; 72
; [then-branch: 721 | False | live]
; [else-branch: 721 | True | live]
(push) ; 73
; [then-branch: 721 | False]
(assert false)
(pop) ; 73
(push) ; 73
; [else-branch: 721 | True]
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseUnboundedp] :: false)
(pop) ; 73
(pop) ; 72
; Joined path conditions
; Joined path conditions
(pop) ; 71
(pop) ; 70
; Joined path conditions
; Joined path conditions
(pop) ; 69
(pop) ; 68
; Joined path conditions
; Joined path conditions
(pop) ; 67
(pop) ; 66
; Joined path conditions
; Joined path conditions
(pop) ; 65
(pop) ; 64
; Joined path conditions
(declare-const _current_wait_level_156@406@01 $Perm)
(declare-const _current_wait_level_156_0@407@01 $Perm)
(declare-const $t@408@01 $Snap)
(assert (= $t@408@01 ($Snap.combine ($Snap.first $t@408@01) ($Snap.second $t@408@01))))
(assert (= ($Snap.first $t@408@01) $Snap.unit))
; [eval] p1 ==> (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156) && ((forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156) && _residue_156 <= _current_wait_level_156)
(push) ; 64
(push) ; 65
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 65
; 0.00s
; (get-info :all-statistics)
; [then-branch: 722 | p1_5@204@01 | live]
; [else-branch: 722 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 65
; [then-branch: 722 | p1_5@204@01]
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156) && ((forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156) && _residue_156 <= _current_wait_level_156)
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156)
(push) ; 66
; [then-branch: 723 | False | live]
; [else-branch: 723 | True | live]
(push) ; 67
; [then-branch: 723 | False]
(assert false)
(pop) ; 67
(push) ; 67
; [else-branch: 723 | True]
; [eval] (forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156)
(push) ; 68
; [then-branch: 724 | False | live]
; [else-branch: 724 | True | live]
(push) ; 69
; [then-branch: 724 | False]
(assert false)
(pop) ; 69
(push) ; 69
; [else-branch: 724 | True]
; [eval] _residue_156 <= _current_wait_level_156
(pop) ; 69
(pop) ; 68
; Joined path conditions
; Joined path conditions
(pop) ; 67
(pop) ; 66
; Joined path conditions
; Joined path conditions
(pop) ; 65
(pop) ; 64
; Joined path conditions
(assert (=> p1_5@204@01 (<= _residue_159@210@01 _current_wait_level_156@406@01)))
(assert (=
  ($Snap.second $t@408@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@408@01))
    ($Snap.second ($Snap.second $t@408@01)))))
(assert (= ($Snap.first ($Snap.second $t@408@01)) $Snap.unit))
; [eval] p2 ==> (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _current_wait_level_156_0) && ((forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _current_wait_level_156_0) && _residue_156_0 <= _current_wait_level_156_0)
(push) ; 64
(push) ; 65
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 65
; 0.00s
; (get-info :all-statistics)
; [then-branch: 725 | p2_5@205@01 | live]
; [else-branch: 725 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 65
; [then-branch: 725 | p2_5@205@01]
; [eval] (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _current_wait_level_156_0) && ((forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _current_wait_level_156_0) && _residue_156_0 <= _current_wait_level_156_0)
; [eval] (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _current_wait_level_156_0)
(push) ; 66
; [then-branch: 726 | False | live]
; [else-branch: 726 | True | live]
(push) ; 67
; [then-branch: 726 | False]
(assert false)
(pop) ; 67
(push) ; 67
; [else-branch: 726 | True]
; [eval] (forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _current_wait_level_156_0)
(push) ; 68
; [then-branch: 727 | False | live]
; [else-branch: 727 | True | live]
(push) ; 69
; [then-branch: 727 | False]
(assert false)
(pop) ; 69
(push) ; 69
; [else-branch: 727 | True]
; [eval] _residue_156_0 <= _current_wait_level_156_0
(pop) ; 69
(pop) ; 68
; Joined path conditions
; Joined path conditions
(pop) ; 67
(pop) ; 66
; Joined path conditions
; Joined path conditions
(pop) ; 65
(pop) ; 64
; Joined path conditions
(assert (=> p2_5@205@01 (<= _residue_159_0@211@01 _current_wait_level_156_0@407@01)))
(assert (=
  ($Snap.second ($Snap.second $t@408@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@408@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@408@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@408@01))) $Snap.unit))
; [eval] p1 ==> true
(push) ; 64
(push) ; 65
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 65
; 0.00s
; (get-info :all-statistics)
; [then-branch: 728 | p1_5@204@01 | live]
; [else-branch: 728 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 65
; [then-branch: 728 | p1_5@204@01]
(pop) ; 65
(pop) ; 64
; Joined path conditions
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@408@01))) $Snap.unit))
; [eval] p2 ==> true
(push) ; 64
(push) ; 65
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 65
; 0.00s
; (get-info :all-statistics)
; [then-branch: 729 | p2_5@205@01 | live]
; [else-branch: 729 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 65
; [then-branch: 729 | p2_5@205@01]
(pop) ; 65
(pop) ; 64
; Joined path conditions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 64
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 64
; 0.00s
; (get-info :all-statistics)
; [then-branch: 730 | p1_5@204@01 | live]
; [else-branch: 730 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 64
; [then-branch: 730 | p1_5@204@01]
; [exec]
; _cwl_159 := tmp1_50
(push) ; 65
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 65
; 0.00s
; (get-info :all-statistics)
; [then-branch: 731 | p2_5@205@01 | live]
; [else-branch: 731 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 65
; [then-branch: 731 | p2_5@205@01]
; [exec]
; _cwl_159_0 := tmp2_50
; [exec]
; assert true
; [eval] p1_5 ==> true
(push) ; 66
(push) ; 67
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 67
; 0.00s
; (get-info :all-statistics)
; [then-branch: 732 | p1_5@204@01 | live]
; [else-branch: 732 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 67
; [then-branch: 732 | p1_5@204@01]
(pop) ; 67
(pop) ; 66
; Joined path conditions
; [eval] p2_5 ==> true
(push) ; 66
(push) ; 67
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 67
; 0.00s
; (get-info :all-statistics)
; [then-branch: 733 | p2_5@205@01 | live]
; [else-branch: 733 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 67
; [then-branch: 733 | p2_5@205@01]
(pop) ; 67
(pop) ; 66
; Joined path conditions
; [eval] p1_5 ==> (forperm _r_21: Ref [MustInvokeBounded(_r_21)] :: false) && ((forperm _r_21: Ref [MustInvokeUnbounded(_r_21)] :: false) && ((forperm _r_21: Ref [_r_21.MustReleaseBounded] :: false) && (forperm _r_21: Ref [_r_21.MustReleaseUnbounded] :: false)))
(push) ; 66
(push) ; 67
(set-option :timeout 10)
(assert (not (not p1_5@204@01)))
(check-sat)
; unknown
(pop) ; 67
; 0.00s
; (get-info :all-statistics)
; [then-branch: 734 | p1_5@204@01 | live]
; [else-branch: 734 | !(p1_5@204@01) | dead]
(set-option :timeout 0)
(push) ; 67
; [then-branch: 734 | p1_5@204@01]
; [eval] (forperm _r_21: Ref [MustInvokeBounded(_r_21)] :: false) && ((forperm _r_21: Ref [MustInvokeUnbounded(_r_21)] :: false) && ((forperm _r_21: Ref [_r_21.MustReleaseBounded] :: false) && (forperm _r_21: Ref [_r_21.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_21: Ref [MustInvokeBounded(_r_21)] :: false)
(push) ; 68
; [then-branch: 735 | False | live]
; [else-branch: 735 | True | live]
(push) ; 69
; [then-branch: 735 | False]
(assert false)
(pop) ; 69
(push) ; 69
; [else-branch: 735 | True]
; [eval] (forperm _r_21: Ref [MustInvokeUnbounded(_r_21)] :: false)
(push) ; 70
; [then-branch: 736 | False | live]
; [else-branch: 736 | True | live]
(push) ; 71
; [then-branch: 736 | False]
(assert false)
(pop) ; 71
(push) ; 71
; [else-branch: 736 | True]
; [eval] (forperm _r_21: Ref [_r_21.MustReleaseBounded] :: false)
(push) ; 72
; [then-branch: 737 | False | live]
; [else-branch: 737 | True | live]
(push) ; 73
; [then-branch: 737 | False]
(assert false)
(pop) ; 73
(push) ; 73
; [else-branch: 737 | True]
; [eval] (forperm _r_21: Ref [_r_21.MustReleaseUnbounded] :: false)
(pop) ; 73
(pop) ; 72
; Joined path conditions
; Joined path conditions
(pop) ; 71
(pop) ; 70
; Joined path conditions
; Joined path conditions
(pop) ; 69
(pop) ; 68
; Joined path conditions
; Joined path conditions
(pop) ; 67
(pop) ; 66
; Joined path conditions
; [eval] p2_5 ==> (forperm _r_21: Ref [MustInvokeBounded_0(_r_21)] :: false) && ((forperm _r_21: Ref [MustInvokeUnbounded_0(_r_21)] :: false) && ((forperm _r_21: Ref [_r_21.MustReleaseBoundedp] :: false) && (forperm _r_21: Ref [_r_21.MustReleaseUnboundedp] :: false)))
(push) ; 66
(push) ; 67
(set-option :timeout 10)
(assert (not (not p2_5@205@01)))
(check-sat)
; unknown
(pop) ; 67
; 0.00s
; (get-info :all-statistics)
; [then-branch: 738 | p2_5@205@01 | live]
; [else-branch: 738 | !(p2_5@205@01) | dead]
(set-option :timeout 0)
(push) ; 67
; [then-branch: 738 | p2_5@205@01]
; [eval] (forperm _r_21: Ref [MustInvokeBounded_0(_r_21)] :: false) && ((forperm _r_21: Ref [MustInvokeUnbounded_0(_r_21)] :: false) && ((forperm _r_21: Ref [_r_21.MustReleaseBoundedp] :: false) && (forperm _r_21: Ref [_r_21.MustReleaseUnboundedp] :: false)))
; [eval] (forperm _r_21: Ref [MustInvokeBounded_0(_r_21)] :: false)
(push) ; 68
; [then-branch: 739 | False | live]
; [else-branch: 739 | True | live]
(push) ; 69
; [then-branch: 739 | False]
(assert false)
(pop) ; 69
(push) ; 69
; [else-branch: 739 | True]
; [eval] (forperm _r_21: Ref [MustInvokeUnbounded_0(_r_21)] :: false)
(push) ; 70
; [then-branch: 740 | False | live]
; [else-branch: 740 | True | live]
(push) ; 71
; [then-branch: 740 | False]
(assert false)
(pop) ; 71
(push) ; 71
; [else-branch: 740 | True]
; [eval] (forperm _r_21: Ref [_r_21.MustReleaseBoundedp] :: false)
(push) ; 72
; [then-branch: 741 | False | live]
; [else-branch: 741 | True | live]
(push) ; 73
; [then-branch: 741 | False]
(assert false)
(pop) ; 73
(push) ; 73
; [else-branch: 741 | True]
; [eval] (forperm _r_21: Ref [_r_21.MustReleaseUnboundedp] :: false)
(pop) ; 73
(pop) ; 72
; Joined path conditions
; Joined path conditions
(pop) ; 71
(pop) ; 70
; Joined path conditions
; Joined path conditions
(pop) ; 69
(pop) ; 68
; Joined path conditions
; Joined path conditions
(pop) ; 67
(pop) ; 66
; Joined path conditions
(pop) ; 65
; [eval] !p2_5
; [then-branch: 742 | !(p2_5@205@01) | dead]
; [else-branch: 742 | p2_5@205@01 | live]
(push) ; 65
; [else-branch: 742 | p2_5@205@01]
(pop) ; 65
(pop) ; 64
; [eval] !p1_5
; [then-branch: 743 | !(p1_5@204@01) | dead]
; [else-branch: 743 | p1_5@204@01 | live]
(push) ; 64
; [else-branch: 743 | p1_5@204@01]
(pop) ; 64
(pop) ; 63
; [eval] !p2_5
(push) ; 63
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unsat
(pop) ; 63
; 0.00s
; (get-info :all-statistics)
; [then-branch: 744 | !(p2_5@205@01) | dead]
; [else-branch: 744 | p2_5@205@01 | live]
(set-option :timeout 0)
(push) ; 63
; [else-branch: 744 | p2_5@205@01]
(assert p2_5@205@01)
(pop) ; 63
(pop) ; 62
; [eval] !p1_5
(push) ; 62
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unsat
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
; [then-branch: 745 | !(p1_5@204@01) | dead]
; [else-branch: 745 | p1_5@204@01 | live]
(set-option :timeout 0)
(push) ; 62
; [else-branch: 745 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 62
(pop) ; 61
; [eval] !(p1_5 || p2_5)
; [eval] p1_5 || p2_5
(push) ; 61
; [then-branch: 746 | p1_5@204@01 | live]
; [else-branch: 746 | !(p1_5@204@01) | live]
(push) ; 62
; [then-branch: 746 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 62
(push) ; 62
; [else-branch: 746 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 62
(pop) ; 61
; Joined path conditions
; Joined path conditions
; [then-branch: 747 | !(p1_5@204@01 || p2_5@205@01) | dead]
; [else-branch: 747 | p1_5@204@01 || p2_5@205@01 | live]
(push) ; 61
; [else-branch: 747 | p1_5@204@01 || p2_5@205@01]
(pop) ; 61
(pop) ; 60
(pop) ; 59
; [eval] !p2_5
(push) ; 59
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unsat
(pop) ; 59
; 0.00s
; (get-info :all-statistics)
; [then-branch: 748 | !(p2_5@205@01) | dead]
; [else-branch: 748 | p2_5@205@01 | live]
(set-option :timeout 0)
(push) ; 59
; [else-branch: 748 | p2_5@205@01]
(assert p2_5@205@01)
(pop) ; 59
(pop) ; 58
(pop) ; 57
; [eval] !p1_5
(push) ; 57
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unsat
(pop) ; 57
; 0.00s
; (get-info :all-statistics)
; [then-branch: 749 | !(p1_5@204@01) | dead]
; [else-branch: 749 | p1_5@204@01 | live]
(set-option :timeout 0)
(push) ; 57
; [else-branch: 749 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 57
(pop) ; 56
(pop) ; 55
(push) ; 55
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@393@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))
  $Snap.unit))
(assert p1_5@204@01)
(assert (not bypass1_4@381@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))
  $Snap.unit))
(assert p2_5@205@01)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))
  $Snap.unit))
(assert (=>
  (and p1_5@204@01 (not bypass1_4@381@01))
  (and p1_5@204@01 (not bypass1_4@381@01) (not cond_9@383@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))
  $Snap.unit))
(assert (=>
  (and p2_5@205@01 (not bypass2_4@382@01))
  (and p2_5@205@01 (not bypass2_4@382@01) (not cond_10@384@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))))))))
  $Snap.unit))
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@393@01))) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@393@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@393@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))
(assert (= $t@393@01 ($Snap.combine ($Snap.first $t@393@01) ($Snap.second $t@393@01))))
(assert (= ($Snap.first $t@393@01) $Snap.unit))
(assert (=>
  (and p1_5@204@01 (not bypass1_4@381@01))
  (<= _residue_159@210@01 _residue_165@250@01)))
(assert (=
  ($Snap.second $t@393@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@393@01))
    ($Snap.second ($Snap.second $t@393@01)))))
(assert (= ($Snap.first ($Snap.second $t@393@01)) $Snap.unit))
(assert (=>
  (and p2_5@205@01 (not bypass2_4@382@01))
  (<= _residue_159_0@211@01 _residue_165_0@251@01)))
(assert (=
  ($Snap.second ($Snap.second $t@393@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@393@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 56
; [eval] p1_5 && (!bypass1_4 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))) || p2_5 && (!bypass2_4 && int___eq__(x_1_0, __prim__int___box__(2)))
; [eval] p1_5 && (!bypass1_4 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)))
(push) ; 57
; [then-branch: 750 | !(p1_5@204@01) | live]
; [else-branch: 750 | p1_5@204@01 | live]
(push) ; 58
; [then-branch: 750 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 58
(push) ; 58
; [else-branch: 750 | p1_5@204@01]
; [eval] !bypass1_4
(push) ; 59
; [then-branch: 751 | bypass1_4@381@01 | live]
; [else-branch: 751 | !(bypass1_4@381@01) | live]
(push) ; 60
; [then-branch: 751 | bypass1_4@381@01]
(assert bypass1_4@381@01)
(pop) ; 60
(push) ; 60
; [else-branch: 751 | !(bypass1_4@381@01)]
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 61
; [eval] _isDefined(id)
(push) ; 62
(pop) ; 62
; Joined path conditions
(pop) ; 61
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 61
(pop) ; 61
; Joined path conditions
(push) ; 61
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 61
; Joined path conditions
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_4@381@01) bypass1_4@381@01))
(pop) ; 58
(pop) ; 57
; Joined path conditions
; Joined path conditions
(assert (=> p1_5@204@01 (or (not bypass1_4@381@01) bypass1_4@381@01)))
(push) ; 57
; [then-branch: 752 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) | live]
; [else-branch: 752 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))) | live]
(push) ; 58
; [then-branch: 752 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_4@381@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
(pop) ; 58
(push) ; 58
; [else-branch: 752 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))))
; [eval] p2_5 && (!bypass2_4 && int___eq__(x_1_0, __prim__int___box__(2)))
(push) ; 59
; [then-branch: 753 | !(p2_5@205@01) | live]
; [else-branch: 753 | p2_5@205@01 | live]
(push) ; 60
; [then-branch: 753 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 60
(push) ; 60
; [else-branch: 753 | p2_5@205@01]
; [eval] !bypass2_4
(push) ; 61
; [then-branch: 754 | bypass2_4@382@01 | live]
; [else-branch: 754 | !(bypass2_4@382@01) | live]
(push) ; 62
; [then-branch: 754 | bypass2_4@382@01]
(assert bypass2_4@382@01)
(pop) ; 62
(push) ; 62
; [else-branch: 754 | !(bypass2_4@382@01)]
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 63
(pop) ; 63
; Joined path conditions
(push) ; 63
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 63
; Joined path conditions
(pop) ; 62
(pop) ; 61
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_4@382@01) bypass2_4@382@01))
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (or (not bypass2_4@382@01) bypass2_4@382@01)))
(pop) ; 58
(pop) ; 57
; Joined path conditions
(assert (=>
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
  (and
    p1_5@204@01
    (not bypass1_4@381@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_4@381@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
  (and
    (not
      (and
        p1_5@204@01
        (and
          (not bypass1_4@381@01)
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
    (=> p2_5@205@01 (or (not bypass2_4@382@01) bypass2_4@382@01)))))
(assert (or
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_4@381@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))))
(pop) ; 56
(push) ; 56
; [eval] !(p1_5 && (!bypass1_4 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))) || p2_5 && (!bypass2_4 && int___eq__(x_1_0, __prim__int___box__(2))))
; [eval] p1_5 && (!bypass1_4 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))) || p2_5 && (!bypass2_4 && int___eq__(x_1_0, __prim__int___box__(2)))
; [eval] p1_5 && (!bypass1_4 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)))
(push) ; 57
; [then-branch: 755 | !(p1_5@204@01) | live]
; [else-branch: 755 | p1_5@204@01 | live]
(push) ; 58
; [then-branch: 755 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 58
(push) ; 58
; [else-branch: 755 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_4
(push) ; 59
; [then-branch: 756 | bypass1_4@381@01 | live]
; [else-branch: 756 | !(bypass1_4@381@01) | live]
(push) ; 60
; [then-branch: 756 | bypass1_4@381@01]
(assert bypass1_4@381@01)
(pop) ; 60
(push) ; 60
; [else-branch: 756 | !(bypass1_4@381@01)]
(assert (not bypass1_4@381@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 61
; [eval] _isDefined(id)
(push) ; 62
(pop) ; 62
; Joined path conditions
(pop) ; 61
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 61
(pop) ; 61
; Joined path conditions
(push) ; 61
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 61
; Joined path conditions
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_4@381@01) bypass1_4@381@01))
(pop) ; 58
(pop) ; 57
; Joined path conditions
; Joined path conditions
(assert (=> p1_5@204@01 (and p1_5@204@01 (or (not bypass1_4@381@01) bypass1_4@381@01))))
(push) ; 57
; [then-branch: 757 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) | live]
; [else-branch: 757 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))) | live]
(push) ; 58
; [then-branch: 757 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_4@381@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
(pop) ; 58
(push) ; 58
; [else-branch: 757 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))))
; [eval] p2_5 && (!bypass2_4 && int___eq__(x_1_0, __prim__int___box__(2)))
(push) ; 59
; [then-branch: 758 | !(p2_5@205@01) | live]
; [else-branch: 758 | p2_5@205@01 | live]
(push) ; 60
; [then-branch: 758 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 60
(push) ; 60
; [else-branch: 758 | p2_5@205@01]
; [eval] !bypass2_4
(push) ; 61
; [then-branch: 759 | bypass2_4@382@01 | live]
; [else-branch: 759 | !(bypass2_4@382@01) | live]
(push) ; 62
; [then-branch: 759 | bypass2_4@382@01]
(assert bypass2_4@382@01)
(pop) ; 62
(push) ; 62
; [else-branch: 759 | !(bypass2_4@382@01)]
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 63
(pop) ; 63
; Joined path conditions
(push) ; 63
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 63
; Joined path conditions
(pop) ; 62
(pop) ; 61
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_4@382@01) bypass2_4@382@01))
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (or (not bypass2_4@382@01) bypass2_4@382@01)))
(pop) ; 58
(pop) ; 57
; Joined path conditions
(assert (=>
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
  (and
    p1_5@204@01
    (not bypass1_4@381@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_4@381@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
  (and
    (not
      (and
        p1_5@204@01
        (and
          (not bypass1_4@381@01)
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
    (=> p2_5@205@01 (or (not bypass2_4@382@01) bypass2_4@382@01)))))
(assert (or
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_4@381@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))))
(pop) ; 56
; Loop head block: Follow loop-internal edges
; [eval] p1_5 && (!bypass1_4 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))) || p2_5 && (!bypass2_4 && int___eq__(x_1_0, __prim__int___box__(2)))
; [eval] p1_5 && (!bypass1_4 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)))
(push) ; 56
; [then-branch: 760 | !(p1_5@204@01) | live]
; [else-branch: 760 | p1_5@204@01 | live]
(push) ; 57
; [then-branch: 760 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 57
(push) ; 57
; [else-branch: 760 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_4
(push) ; 58
; [then-branch: 761 | bypass1_4@381@01 | live]
; [else-branch: 761 | !(bypass1_4@381@01) | live]
(push) ; 59
; [then-branch: 761 | bypass1_4@381@01]
(assert bypass1_4@381@01)
(pop) ; 59
(push) ; 59
; [else-branch: 761 | !(bypass1_4@381@01)]
(assert (not bypass1_4@381@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 60
; [eval] _isDefined(id)
(push) ; 61
(pop) ; 61
; Joined path conditions
(pop) ; 60
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 60
(pop) ; 60
; Joined path conditions
(push) ; 60
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 60
; Joined path conditions
(pop) ; 59
(pop) ; 58
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_4@381@01) bypass1_4@381@01))
(pop) ; 57
(pop) ; 56
; Joined path conditions
; Joined path conditions
(assert (=> p1_5@204@01 (and p1_5@204@01 (or (not bypass1_4@381@01) bypass1_4@381@01))))
(push) ; 56
; [then-branch: 762 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) | live]
; [else-branch: 762 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))) | live]
(push) ; 57
; [then-branch: 762 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_4@381@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
(pop) ; 57
(push) ; 57
; [else-branch: 762 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))))
; [eval] p2_5 && (!bypass2_4 && int___eq__(x_1_0, __prim__int___box__(2)))
(push) ; 58
; [then-branch: 763 | !(p2_5@205@01) | live]
; [else-branch: 763 | p2_5@205@01 | live]
(push) ; 59
; [then-branch: 763 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 59
(push) ; 59
; [else-branch: 763 | p2_5@205@01]
; [eval] !bypass2_4
(push) ; 60
; [then-branch: 764 | bypass2_4@382@01 | live]
; [else-branch: 764 | !(bypass2_4@382@01) | live]
(push) ; 61
; [then-branch: 764 | bypass2_4@382@01]
(assert bypass2_4@382@01)
(pop) ; 61
(push) ; 61
; [else-branch: 764 | !(bypass2_4@382@01)]
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 62
(pop) ; 62
; Joined path conditions
(push) ; 62
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 62
; Joined path conditions
(pop) ; 61
(pop) ; 60
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_4@382@01) bypass2_4@382@01))
(pop) ; 59
(pop) ; 58
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (or (not bypass2_4@382@01) bypass2_4@382@01)))
(pop) ; 57
(pop) ; 56
; Joined path conditions
(assert (=>
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
  (and
    p1_5@204@01
    (not bypass1_4@381@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_4@381@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
  (and
    (not
      (and
        p1_5@204@01
        (and
          (not bypass1_4@381@01)
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
    (=> p2_5@205@01 (or (not bypass2_4@382@01) bypass2_4@382@01)))))
(assert (or
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_4@381@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))))
(push) ; 56
(set-option :timeout 10)
(assert (not (not
  (or
    (and
      p1_5@204@01
      (and
        (not bypass1_4@381@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
    (and
      p2_5@205@01
      (and
        (not bypass2_4@382@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))))))
(check-sat)
; unknown
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 56
(set-option :timeout 10)
(assert (not (or
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
  (and
    p2_5@205@01
    (and
      (not bypass2_4@382@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))))))
(check-sat)
; unsat
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
; [then-branch: 765 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) || p2_5@205@01 && !(bypass2_4@382@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2)) | live]
; [else-branch: 765 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) || p2_5@205@01 && !(bypass2_4@382@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2))) | dead]
(set-option :timeout 0)
(push) ; 56
; [then-branch: 765 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) || p2_5@205@01 && !(bypass2_4@382@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2))]
(assert (or
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
  (and
    p2_5@205@01
    (and
      (not bypass2_4@382@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))))
; [exec]
; p1_8 := p1_5 &&
;   int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] p1_5 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
(push) ; 57
; [then-branch: 766 | !(p1_5@204@01) | live]
; [else-branch: 766 | p1_5@204@01 | live]
(push) ; 58
; [then-branch: 766 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 58
(push) ; 58
; [else-branch: 766 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 59
; [eval] _isDefined(id)
(push) ; 60
(pop) ; 60
; Joined path conditions
(pop) ; 59
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 59
(pop) ; 59
; Joined path conditions
(push) ; 59
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 59
; Joined path conditions
(pop) ; 58
(pop) ; 57
; Joined path conditions
; Joined path conditions
(declare-const p1_8@409@01 Bool)
(assert (=
  p1_8@409@01
  (and
    p1_5@204@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
; [exec]
; p2_8 := p2_5 && int___eq__(x_1_0, __prim__int___box__(2))
; [eval] p2_5 && int___eq__(x_1_0, __prim__int___box__(2))
(push) ; 57
; [then-branch: 767 | !(p2_5@205@01) | live]
; [else-branch: 767 | p2_5@205@01 | live]
(push) ; 58
; [then-branch: 767 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 58
(push) ; 58
; [else-branch: 767 | p2_5@205@01]
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 59
(pop) ; 59
; Joined path conditions
(push) ; 59
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 59
; Joined path conditions
(pop) ; 58
(pop) ; 57
; Joined path conditions
; Joined path conditions
(declare-const p2_8@410@01 Bool)
(assert (=
  p2_8@410@01
  (and
    p2_5@205@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))))
; [exec]
; idle1_4 := p1_5 &&
;   !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] p1_5 && !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
(push) ; 57
; [then-branch: 768 | !(p1_5@204@01) | live]
; [else-branch: 768 | p1_5@204@01 | live]
(push) ; 58
; [then-branch: 768 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 58
(push) ; 58
; [else-branch: 768 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 59
; [eval] _isDefined(id)
(push) ; 60
(pop) ; 60
; Joined path conditions
(pop) ; 59
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 59
(pop) ; 59
; Joined path conditions
(push) ; 59
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 59
; Joined path conditions
(pop) ; 58
(pop) ; 57
; Joined path conditions
; Joined path conditions
(declare-const idle1_4@411@01 Bool)
(assert (=
  idle1_4@411@01
  (and
    p1_5@204@01
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))))
; [exec]
; idle2_4 := p2_5 && !int___eq__(x_1_0, __prim__int___box__(2))
; [eval] p2_5 && !int___eq__(x_1_0, __prim__int___box__(2))
(push) ; 57
; [then-branch: 769 | !(p2_5@205@01) | live]
; [else-branch: 769 | p2_5@205@01 | live]
(push) ; 58
; [then-branch: 769 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 58
(push) ; 58
; [else-branch: 769 | p2_5@205@01]
; [eval] !int___eq__(x_1_0, __prim__int___box__(2))
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 59
(pop) ; 59
; Joined path conditions
(push) ; 59
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 59
; Joined path conditions
(pop) ; 58
(pop) ; 57
; Joined path conditions
; Joined path conditions
(declare-const idle2_4@412@01 Bool)
(assert (=
  idle2_4@412@01
  (and
    p2_5@205@01
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))))
(push) ; 57
(set-option :timeout 10)
(assert (not (not p1_8@409@01)))
(check-sat)
; unknown
(pop) ; 57
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 57
(set-option :timeout 10)
(assert (not p1_8@409@01))
(check-sat)
; unsat
(pop) ; 57
; 0.00s
; (get-info :all-statistics)
; [then-branch: 770 | p1_8@409@01 | live]
; [else-branch: 770 | !(p1_8@409@01) | dead]
(set-option :timeout 0)
(push) ; 57
; [then-branch: 770 | p1_8@409@01]
(assert p1_8@409@01)
; [exec]
; _loop_measures_4 := Seq(Measure$create(!int___eq__(_checkDefined(x_1, 3235704),
;   __prim__int___box__(2)), _cthread_159, 0))
; [eval] Seq(Measure$create(!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)), _cthread_159, 0))
; [eval] Measure$create(!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)), _cthread_159, 0)
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 58
; [eval] _isDefined(id)
(push) ; 59
(pop) ; 59
; Joined path conditions
(pop) ; 58
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 58
(pop) ; 58
; Joined path conditions
(push) ; 58
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 58
; Joined path conditions
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))) _cthread_159@206@01 0)))
  1))
(declare-const _loop_measures_4@413@01 Seq<Measure$>)
(assert (=
  _loop_measures_4@413@01
  (Seq_singleton (Measure$create<Measure$> (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))) _cthread_159@206@01 0))))
; [exec]
; _loop_check_before_4 := false
(push) ; 58
(set-option :timeout 10)
(assert (not (not p2_8@410@01)))
(check-sat)
; unknown
(pop) ; 58
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 58
(set-option :timeout 10)
(assert (not p2_8@410@01))
(check-sat)
; unsat
(pop) ; 58
; 0.00s
; (get-info :all-statistics)
; [then-branch: 771 | p2_8@410@01 | live]
; [else-branch: 771 | !(p2_8@410@01) | dead]
(set-option :timeout 0)
(push) ; 58
; [then-branch: 771 | p2_8@410@01]
(assert p2_8@410@01)
; [exec]
; _loop_measures_4_0 := Seq(Measure$create(!int___eq__(x_1_0, __prim__int___box__(2)),
;   _cthread_159_0, 0))
; [eval] Seq(Measure$create(!int___eq__(x_1_0, __prim__int___box__(2)), _cthread_159_0, 0))
; [eval] Measure$create(!int___eq__(x_1_0, __prim__int___box__(2)), _cthread_159_0, 0)
; [eval] !int___eq__(x_1_0, __prim__int___box__(2))
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 59
(pop) ; 59
; Joined path conditions
(push) ; 59
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 59
; Joined path conditions
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))) _cthread_159_0@207@01 0)))
  1))
(declare-const _loop_measures_4_0@414@01 Seq<Measure$>)
(assert (=
  _loop_measures_4_0@414@01
  (Seq_singleton (Measure$create<Measure$> (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))) _cthread_159_0@207@01 0))))
; [exec]
; _loop_check_before_4_0 := false
; [exec]
; assert (p1_8 ==>
;   _loop_termination_flag_4 ==>
;   !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) ||
;   !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) &&
;   Measure$check(_loop_measures_4, _cthread_159, 0)) &&
;   (p2_8 ==>
;   _loop_termination_flag_4_0 ==>
;   !int___eq__(x_1_0, __prim__int___box__(2)) ||
;   !int___eq__(x_1_0, __prim__int___box__(2)) &&
;   Measure$check(_loop_measures_4_0, _cthread_159_0, 0))
; [eval] p1_8 ==> _loop_termination_flag_4 ==> !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) || !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) && Measure$check(_loop_measures_4, _cthread_159, 0)
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not p1_8@409@01)))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 772 | p1_8@409@01 | live]
; [else-branch: 772 | !(p1_8@409@01) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 772 | p1_8@409@01]
; [eval] _loop_termination_flag_4 ==> !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) || !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) && Measure$check(_loop_measures_4, _cthread_159, 0)
(push) ; 61
(push) ; 62
(set-option :timeout 10)
(assert (not (not _loop_termination_flag_4@378@01)))
(check-sat)
; unsat
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
; [then-branch: 773 | _loop_termination_flag_4@378@01 | dead]
; [else-branch: 773 | !(_loop_termination_flag_4@378@01) | live]
(set-option :timeout 0)
(push) ; 62
; [else-branch: 773 | !(_loop_termination_flag_4@378@01)]
(assert (not _loop_termination_flag_4@378@01))
(pop) ; 62
(pop) ; 61
; Joined path conditions
(assert (not _loop_termination_flag_4@378@01))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (=> p1_8@409@01 (not _loop_termination_flag_4@378@01)))
; [eval] p2_8 ==> _loop_termination_flag_4_0 ==> !int___eq__(x_1_0, __prim__int___box__(2)) || !int___eq__(x_1_0, __prim__int___box__(2)) && Measure$check(_loop_measures_4_0, _cthread_159_0, 0)
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not p2_8@410@01)))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 774 | p2_8@410@01 | live]
; [else-branch: 774 | !(p2_8@410@01) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 774 | p2_8@410@01]
; [eval] _loop_termination_flag_4_0 ==> !int___eq__(x_1_0, __prim__int___box__(2)) || !int___eq__(x_1_0, __prim__int___box__(2)) && Measure$check(_loop_measures_4_0, _cthread_159_0, 0)
(push) ; 61
(push) ; 62
(set-option :timeout 10)
(assert (not (not _loop_termination_flag_4_0@380@01)))
(check-sat)
; unsat
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
; [then-branch: 775 | _loop_termination_flag_4_0@380@01 | dead]
; [else-branch: 775 | !(_loop_termination_flag_4_0@380@01) | live]
(set-option :timeout 0)
(push) ; 62
; [else-branch: 775 | !(_loop_termination_flag_4_0@380@01)]
(assert (not _loop_termination_flag_4_0@380@01))
(pop) ; 62
(pop) ; 61
; Joined path conditions
(assert (not _loop_termination_flag_4_0@380@01))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (=> p2_8@410@01 (not _loop_termination_flag_4_0@380@01)))
; Loop head block: Re-establish invariant
; [eval] p1_5 && !bypass1_4 ==> true
; [eval] p1_5 && !bypass1_4
(push) ; 59
; [then-branch: 776 | !(p1_5@204@01) | live]
; [else-branch: 776 | p1_5@204@01 | live]
(push) ; 60
; [then-branch: 776 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 60
(push) ; 60
; [else-branch: 776 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_4@381@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_4@381@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 777 | p1_5@204@01 && !(bypass1_4@381@01) | live]
; [else-branch: 777 | !(p1_5@204@01 && !(bypass1_4@381@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 777 | p1_5@204@01 && !(bypass1_4@381@01)]
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
; [eval] p2_5 && !bypass2_4 ==> true
; [eval] p2_5 && !bypass2_4
(push) ; 59
; [then-branch: 778 | !(p2_5@205@01) | live]
; [else-branch: 778 | p2_5@205@01 | live]
(push) ; 60
; [then-branch: 778 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 60
(push) ; 60
; [else-branch: 778 | p2_5@205@01]
; [eval] !bypass2_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_4@382@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_4@382@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 779 | p2_5@205@01 && !(bypass2_4@382@01) | live]
; [else-branch: 779 | !(p2_5@205@01 && !(bypass2_4@382@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 779 | p2_5@205@01 && !(bypass2_4@382@01)]
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] p1_5 && !bypass1_4 ==> !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) ==> (int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) ==> false) && true
; [eval] p1_5 && !bypass1_4
(push) ; 59
; [then-branch: 780 | !(p1_5@204@01) | live]
; [else-branch: 780 | p1_5@204@01 | live]
(push) ; 60
; [then-branch: 780 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 60
(push) ; 60
; [else-branch: 780 | p1_5@204@01]
; [eval] !bypass1_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_4@381@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_4@381@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 781 | p1_5@204@01 && !(bypass1_4@381@01) | live]
; [else-branch: 781 | !(p1_5@204@01 && !(bypass1_4@381@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 781 | p1_5@204@01 && !(bypass1_4@381@01)]
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) ==> (int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) ==> false) && true
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 61
; [eval] _isDefined(id)
(push) ; 62
(pop) ; 62
; Joined path conditions
(pop) ; 61
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 61
(pop) ; 61
; Joined path conditions
(push) ; 61
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 61
; Joined path conditions
(push) ; 61
(push) ; 62
(set-option :timeout 10)
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
(check-sat)
; unsat
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
; [then-branch: 782 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))) | dead]
; [else-branch: 782 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) | live]
(set-option :timeout 0)
(push) ; 62
; [else-branch: 782 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
(pop) ; 62
(pop) ; 61
; Joined path conditions
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (=>
  (and p1_5@204@01 (not bypass1_4@381@01))
  (and
    p1_5@204@01
    (not bypass1_4@381@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
; [eval] p2_5 && !bypass2_4 ==> !int___eq__(x_1_0, __prim__int___box__(2)) ==> (int___eq__(x_1_0, __prim__int___box__(2)) ==> false) && true
; [eval] p2_5 && !bypass2_4
(push) ; 59
; [then-branch: 783 | !(p2_5@205@01) | live]
; [else-branch: 783 | p2_5@205@01 | live]
(push) ; 60
; [then-branch: 783 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 60
(push) ; 60
; [else-branch: 783 | p2_5@205@01]
; [eval] !bypass2_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_4@382@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_4@382@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 784 | p2_5@205@01 && !(bypass2_4@382@01) | live]
; [else-branch: 784 | !(p2_5@205@01 && !(bypass2_4@382@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 784 | p2_5@205@01 && !(bypass2_4@382@01)]
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] !int___eq__(x_1_0, __prim__int___box__(2)) ==> (int___eq__(x_1_0, __prim__int___box__(2)) ==> false) && true
; [eval] !int___eq__(x_1_0, __prim__int___box__(2))
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 61
(pop) ; 61
; Joined path conditions
(push) ; 61
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 61
; Joined path conditions
(push) ; 61
; [then-branch: 785 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2))) | dead]
; [else-branch: 785 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2)) | live]
(push) ; 62
; [else-branch: 785 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2))]
(pop) ; 62
(pop) ; 61
; Joined path conditions
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] p1_5 && !bypass1_4 ==> !idle1_4 ==> _loop_check_before_4 ==> _loop_termination_flag_4 || (!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)))))
; [eval] p1_5 && !bypass1_4
(push) ; 59
; [then-branch: 786 | !(p1_5@204@01) | live]
; [else-branch: 786 | p1_5@204@01 | live]
(push) ; 60
; [then-branch: 786 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 60
(push) ; 60
; [else-branch: 786 | p1_5@204@01]
; [eval] !bypass1_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_4@381@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_4@381@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 787 | p1_5@204@01 && !(bypass1_4@381@01) | live]
; [else-branch: 787 | !(p1_5@204@01 && !(bypass1_4@381@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 787 | p1_5@204@01 && !(bypass1_4@381@01)]
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
; [eval] !idle1_4 ==> _loop_check_before_4 ==> _loop_termination_flag_4 || (!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)))))
; [eval] !idle1_4
(push) ; 61
(push) ; 62
(set-option :timeout 10)
(assert (not idle1_4@411@01))
(check-sat)
; unknown
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 62
(set-option :timeout 10)
(assert (not (not idle1_4@411@01)))
(check-sat)
; unsat
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
; [then-branch: 788 | !(idle1_4@411@01) | live]
; [else-branch: 788 | idle1_4@411@01 | dead]
(set-option :timeout 0)
(push) ; 62
; [then-branch: 788 | !(idle1_4@411@01)]
(assert (not idle1_4@411@01))
; [eval] _loop_check_before_4 ==> _loop_termination_flag_4 || (!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)) || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)))))
(push) ; 63
; [then-branch: 789 | False | dead]
; [else-branch: 789 | True | live]
(push) ; 64
; [else-branch: 789 | True]
(pop) ; 64
(pop) ; 63
; Joined path conditions
(pop) ; 62
(pop) ; 61
; Joined path conditions
(assert (not idle1_4@411@01))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (=>
  (and p1_5@204@01 (not bypass1_4@381@01))
  (and p1_5@204@01 (not bypass1_4@381@01) (not idle1_4@411@01))))
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
; [eval] p2_5 && !bypass2_4 ==> !idle2_4 ==> _loop_check_before_4_0 ==> _loop_termination_flag_4_0 || (!int___eq__(x_1_0, __prim__int___box__(2)) || perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_19: Ref [MustInvokeBounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBoundedp] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnboundedp] :: false)))))
; [eval] p2_5 && !bypass2_4
(push) ; 59
; [then-branch: 790 | !(p2_5@205@01) | live]
; [else-branch: 790 | p2_5@205@01 | live]
(push) ; 60
; [then-branch: 790 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 60
(push) ; 60
; [else-branch: 790 | p2_5@205@01]
; [eval] !bypass2_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_4@382@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_4@382@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 791 | p2_5@205@01 && !(bypass2_4@382@01) | live]
; [else-branch: 791 | !(p2_5@205@01 && !(bypass2_4@382@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 791 | p2_5@205@01 && !(bypass2_4@382@01)]
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] !idle2_4 ==> _loop_check_before_4_0 ==> _loop_termination_flag_4_0 || (!int___eq__(x_1_0, __prim__int___box__(2)) || perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_19: Ref [MustInvokeBounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBoundedp] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnboundedp] :: false)))))
; [eval] !idle2_4
(push) ; 61
(push) ; 62
(set-option :timeout 10)
(assert (not idle2_4@412@01))
(check-sat)
; unknown
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 62
(set-option :timeout 10)
(assert (not (not idle2_4@412@01)))
(check-sat)
; unsat
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
; [then-branch: 792 | !(idle2_4@412@01) | live]
; [else-branch: 792 | idle2_4@412@01 | dead]
(set-option :timeout 0)
(push) ; 62
; [then-branch: 792 | !(idle2_4@412@01)]
(assert (not idle2_4@412@01))
; [eval] _loop_check_before_4_0 ==> _loop_termination_flag_4_0 || (!int___eq__(x_1_0, __prim__int___box__(2)) || perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_19: Ref [MustInvokeBounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBoundedp] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnboundedp] :: false)))))
(push) ; 63
; [then-branch: 793 | False | dead]
; [else-branch: 793 | True | live]
(push) ; 64
; [else-branch: 793 | True]
(pop) ; 64
(pop) ; 63
; Joined path conditions
(pop) ; 62
(pop) ; 61
; Joined path conditions
(assert (not idle2_4@412@01))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (=>
  (and p2_5@205@01 (not bypass2_4@382@01))
  (and p2_5@205@01 (not bypass2_4@382@01) (not idle2_4@412@01))))
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] p1_5 && !bypass1_4 ==> !idle1_4 ==> !_loop_check_before_4 ==> (forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)))
; [eval] p1_5 && !bypass1_4
(push) ; 59
; [then-branch: 794 | !(p1_5@204@01) | live]
; [else-branch: 794 | p1_5@204@01 | live]
(push) ; 60
; [then-branch: 794 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 60
(push) ; 60
; [else-branch: 794 | p1_5@204@01]
; [eval] !bypass1_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_4@381@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_4@381@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 795 | p1_5@204@01 && !(bypass1_4@381@01) | live]
; [else-branch: 795 | !(p1_5@204@01 && !(bypass1_4@381@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 795 | p1_5@204@01 && !(bypass1_4@381@01)]
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
; [eval] !idle1_4 ==> !_loop_check_before_4 ==> (forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)))
; [eval] !idle1_4
(push) ; 61
(push) ; 62
(set-option :timeout 10)
(assert (not idle1_4@411@01))
(check-sat)
; unknown
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 62
(set-option :timeout 10)
(assert (not (not idle1_4@411@01)))
(check-sat)
; unsat
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
; [then-branch: 796 | !(idle1_4@411@01) | live]
; [else-branch: 796 | idle1_4@411@01 | dead]
(set-option :timeout 0)
(push) ; 62
; [then-branch: 796 | !(idle1_4@411@01)]
(assert (not idle1_4@411@01))
; [eval] !_loop_check_before_4 ==> (forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_4
(push) ; 63
(push) ; 64
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 64
; 0.00s
; (get-info :all-statistics)
; [then-branch: 797 | True | live]
; [else-branch: 797 | False | dead]
(set-option :timeout 0)
(push) ; 64
; [then-branch: 797 | True]
; [eval] (forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false)
(push) ; 65
; [then-branch: 798 | False | live]
; [else-branch: 798 | True | live]
(push) ; 66
; [then-branch: 798 | False]
(assert false)
(pop) ; 66
(push) ; 66
; [else-branch: 798 | True]
; [eval] (forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false)
(push) ; 67
; [then-branch: 799 | False | live]
; [else-branch: 799 | True | live]
(push) ; 68
; [then-branch: 799 | False]
(assert false)
(pop) ; 68
(push) ; 68
; [else-branch: 799 | True]
; [eval] (forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false)
(push) ; 69
; [then-branch: 800 | False | live]
; [else-branch: 800 | True | live]
(push) ; 70
; [then-branch: 800 | False]
(assert false)
(pop) ; 70
(push) ; 70
; [else-branch: 800 | True]
; [eval] (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)
(pop) ; 70
(pop) ; 69
; Joined path conditions
; Joined path conditions
(pop) ; 68
(pop) ; 67
; Joined path conditions
; Joined path conditions
(pop) ; 66
(pop) ; 65
; Joined path conditions
; Joined path conditions
(pop) ; 64
(pop) ; 63
; Joined path conditions
(pop) ; 62
(pop) ; 61
; Joined path conditions
(assert (not idle1_4@411@01))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
; [eval] p2_5 && !bypass2_4 ==> !idle2_4 ==> !_loop_check_before_4_0 ==> (forperm _r_19: Ref [MustInvokeBounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBoundedp] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnboundedp] :: false)))
; [eval] p2_5 && !bypass2_4
(push) ; 59
; [then-branch: 801 | !(p2_5@205@01) | live]
; [else-branch: 801 | p2_5@205@01 | live]
(push) ; 60
; [then-branch: 801 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 60
(push) ; 60
; [else-branch: 801 | p2_5@205@01]
; [eval] !bypass2_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_4@382@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_4@382@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 802 | p2_5@205@01 && !(bypass2_4@382@01) | live]
; [else-branch: 802 | !(p2_5@205@01 && !(bypass2_4@382@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 802 | p2_5@205@01 && !(bypass2_4@382@01)]
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] !idle2_4 ==> !_loop_check_before_4_0 ==> (forperm _r_19: Ref [MustInvokeBounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBoundedp] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnboundedp] :: false)))
; [eval] !idle2_4
(push) ; 61
(push) ; 62
(set-option :timeout 10)
(assert (not idle2_4@412@01))
(check-sat)
; unknown
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 62
(set-option :timeout 10)
(assert (not (not idle2_4@412@01)))
(check-sat)
; unsat
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
; [then-branch: 803 | !(idle2_4@412@01) | live]
; [else-branch: 803 | idle2_4@412@01 | dead]
(set-option :timeout 0)
(push) ; 62
; [then-branch: 803 | !(idle2_4@412@01)]
(assert (not idle2_4@412@01))
; [eval] !_loop_check_before_4_0 ==> (forperm _r_19: Ref [MustInvokeBounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBoundedp] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnboundedp] :: false)))
; [eval] !_loop_check_before_4_0
(push) ; 63
(push) ; 64
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 64
; 0.00s
; (get-info :all-statistics)
; [then-branch: 804 | True | live]
; [else-branch: 804 | False | dead]
(set-option :timeout 0)
(push) ; 64
; [then-branch: 804 | True]
; [eval] (forperm _r_19: Ref [MustInvokeBounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded_0(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBoundedp] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnboundedp] :: false)))
; [eval] (forperm _r_19: Ref [MustInvokeBounded_0(_r_19)] :: false)
(push) ; 65
; [then-branch: 805 | False | live]
; [else-branch: 805 | True | live]
(push) ; 66
; [then-branch: 805 | False]
(assert false)
(pop) ; 66
(push) ; 66
; [else-branch: 805 | True]
; [eval] (forperm _r_19: Ref [MustInvokeUnbounded_0(_r_19)] :: false)
(push) ; 67
; [then-branch: 806 | False | live]
; [else-branch: 806 | True | live]
(push) ; 68
; [then-branch: 806 | False]
(assert false)
(pop) ; 68
(push) ; 68
; [else-branch: 806 | True]
; [eval] (forperm _r_19: Ref [_r_19.MustReleaseBoundedp] :: false)
(push) ; 69
; [then-branch: 807 | False | live]
; [else-branch: 807 | True | live]
(push) ; 70
; [then-branch: 807 | False]
(assert false)
(pop) ; 70
(push) ; 70
; [else-branch: 807 | True]
; [eval] (forperm _r_19: Ref [_r_19.MustReleaseUnboundedp] :: false)
(pop) ; 70
(pop) ; 69
; Joined path conditions
; Joined path conditions
(pop) ; 68
(pop) ; 67
; Joined path conditions
; Joined path conditions
(pop) ; 66
(pop) ; 65
; Joined path conditions
; Joined path conditions
(pop) ; 64
(pop) ; 63
; Joined path conditions
(pop) ; 62
(pop) ; 61
; Joined path conditions
(assert (not idle2_4@412@01))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] p1_5 && !bypass1_4 ==> !cond_9 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] p1_5 && !bypass1_4
(push) ; 59
; [then-branch: 808 | !(p1_5@204@01) | live]
; [else-branch: 808 | p1_5@204@01 | live]
(push) ; 60
; [then-branch: 808 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 60
(push) ; 60
; [else-branch: 808 | p1_5@204@01]
; [eval] !bypass1_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_4@381@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_4@381@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 809 | p1_5@204@01 && !(bypass1_4@381@01) | live]
; [else-branch: 809 | !(p1_5@204@01 && !(bypass1_4@381@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 809 | p1_5@204@01 && !(bypass1_4@381@01)]
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
; [eval] !cond_9 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] !cond_9
(push) ; 61
(push) ; 62
(set-option :timeout 10)
(assert (not cond_9@383@01))
(check-sat)
; unknown
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 62
(set-option :timeout 10)
(assert (not (not cond_9@383@01)))
(check-sat)
; unsat
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
; [then-branch: 810 | !(cond_9@383@01) | live]
; [else-branch: 810 | cond_9@383@01 | dead]
(set-option :timeout 0)
(push) ; 62
; [then-branch: 810 | !(cond_9@383@01)]
(assert (not cond_9@383@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 63
; [eval] _isDefined(id)
(push) ; 64
(pop) ; 64
; Joined path conditions
(pop) ; 63
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 63
(pop) ; 63
; Joined path conditions
(push) ; 63
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 63
; Joined path conditions
(pop) ; 62
(pop) ; 61
; Joined path conditions
(assert (not cond_9@383@01))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_4@381@01)))
; [eval] p2_5 && !bypass2_4 ==> !cond_10 ==> int___eq__(x_1_0, __prim__int___box__(2))
; [eval] p2_5 && !bypass2_4
(push) ; 59
; [then-branch: 811 | !(p2_5@205@01) | live]
; [else-branch: 811 | p2_5@205@01 | live]
(push) ; 60
; [then-branch: 811 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 60
(push) ; 60
; [else-branch: 811 | p2_5@205@01]
; [eval] !bypass2_4
(pop) ; 60
(pop) ; 59
; Joined path conditions
; Joined path conditions
(push) ; 59
(push) ; 60
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_4@382@01)))))
(check-sat)
; unknown
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 60
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_4@382@01))))
(check-sat)
; unsat
(pop) ; 60
; 0.00s
; (get-info :all-statistics)
; [then-branch: 812 | p2_5@205@01 && !(bypass2_4@382@01) | live]
; [else-branch: 812 | !(p2_5@205@01 && !(bypass2_4@382@01)) | dead]
(set-option :timeout 0)
(push) ; 60
; [then-branch: 812 | p2_5@205@01 && !(bypass2_4@382@01)]
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] !cond_10 ==> int___eq__(x_1_0, __prim__int___box__(2))
; [eval] !cond_10
(push) ; 61
(push) ; 62
(set-option :timeout 10)
(assert (not cond_10@384@01))
(check-sat)
; unknown
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 62
(set-option :timeout 10)
(assert (not (not cond_10@384@01)))
(check-sat)
; unsat
(pop) ; 62
; 0.00s
; (get-info :all-statistics)
; [then-branch: 813 | !(cond_10@384@01) | live]
; [else-branch: 813 | cond_10@384@01 | dead]
(set-option :timeout 0)
(push) ; 62
; [then-branch: 813 | !(cond_10@384@01)]
(assert (not cond_10@384@01))
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 63
(pop) ; 63
; Joined path conditions
(push) ; 63
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 63
; Joined path conditions
(pop) ; 62
(pop) ; 61
; Joined path conditions
(assert (not cond_10@384@01))
(pop) ; 60
(pop) ; 59
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_4@382@01)))
; [eval] bypass1_4 ==> tmp1_44 == _loop_measures_4
(push) ; 59
; [then-branch: 814 | bypass1_4@381@01 | dead]
; [else-branch: 814 | !(bypass1_4@381@01) | live]
(push) ; 60
; [else-branch: 814 | !(bypass1_4@381@01)]
(pop) ; 60
(pop) ; 59
; Joined path conditions
; [eval] bypass1_4 ==> tmp1_45 == _loop_check_before_4
(push) ; 59
; [then-branch: 815 | bypass1_4@381@01 | dead]
; [else-branch: 815 | !(bypass1_4@381@01) | live]
(push) ; 60
; [else-branch: 815 | !(bypass1_4@381@01)]
(pop) ; 60
(pop) ; 59
; Joined path conditions
; [eval] bypass2_4 ==> tmp2_44 == _loop_measures_4_0
(push) ; 59
; [then-branch: 816 | bypass2_4@382@01 | dead]
; [else-branch: 816 | !(bypass2_4@382@01) | live]
(push) ; 60
; [else-branch: 816 | !(bypass2_4@382@01)]
(pop) ; 60
(pop) ; 59
; Joined path conditions
; [eval] bypass2_4 ==> tmp2_45 == _loop_check_before_4_0
(push) ; 59
; [then-branch: 817 | bypass2_4@382@01 | dead]
; [else-branch: 817 | !(bypass2_4@382@01) | live]
(push) ; 60
; [else-branch: 817 | !(bypass2_4@382@01)]
(pop) ; 60
(pop) ; 59
; Joined path conditions
(pop) ; 58
; [eval] !p2_8
(push) ; 58
(set-option :timeout 10)
(assert (not p2_8@410@01))
(check-sat)
; unsat
(pop) ; 58
; 0.00s
; (get-info :all-statistics)
; [then-branch: 818 | !(p2_8@410@01) | dead]
; [else-branch: 818 | p2_8@410@01 | live]
(set-option :timeout 0)
(push) ; 58
; [else-branch: 818 | p2_8@410@01]
(assert p2_8@410@01)
(pop) ; 58
(pop) ; 57
; [eval] !p1_8
(push) ; 57
(set-option :timeout 10)
(assert (not p1_8@409@01))
(check-sat)
; unsat
(pop) ; 57
; 0.00s
; (get-info :all-statistics)
; [then-branch: 819 | !(p1_8@409@01) | dead]
; [else-branch: 819 | p1_8@409@01 | live]
(set-option :timeout 0)
(push) ; 57
; [else-branch: 819 | p1_8@409@01]
(assert p1_8@409@01)
(pop) ; 57
(pop) ; 56
; [eval] !(p1_5 && (!bypass1_4 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))) || p2_5 && (!bypass2_4 && int___eq__(x_1_0, __prim__int___box__(2))))
; [eval] p1_5 && (!bypass1_4 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))) || p2_5 && (!bypass2_4 && int___eq__(x_1_0, __prim__int___box__(2)))
; [eval] p1_5 && (!bypass1_4 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2)))
(push) ; 56
; [then-branch: 820 | !(p1_5@204@01) | live]
; [else-branch: 820 | p1_5@204@01 | live]
(push) ; 57
; [then-branch: 820 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 57
(push) ; 57
; [else-branch: 820 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_4
(push) ; 58
; [then-branch: 821 | bypass1_4@381@01 | live]
; [else-branch: 821 | !(bypass1_4@381@01) | live]
(push) ; 59
; [then-branch: 821 | bypass1_4@381@01]
(assert bypass1_4@381@01)
(pop) ; 59
(push) ; 59
; [else-branch: 821 | !(bypass1_4@381@01)]
(assert (not bypass1_4@381@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(2))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 60
; [eval] _isDefined(id)
(push) ; 61
(pop) ; 61
; Joined path conditions
(pop) ; 60
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 60
(pop) ; 60
; Joined path conditions
(push) ; 60
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 60
; Joined path conditions
(pop) ; 59
(pop) ; 58
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_4@381@01) bypass1_4@381@01))
(pop) ; 57
(pop) ; 56
; Joined path conditions
; Joined path conditions
(push) ; 56
; [then-branch: 822 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) | live]
; [else-branch: 822 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))) | live]
(push) ; 57
; [then-branch: 822 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_4@381@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
(pop) ; 57
(push) ; 57
; [else-branch: 822 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))))
; [eval] p2_5 && (!bypass2_4 && int___eq__(x_1_0, __prim__int___box__(2)))
(push) ; 58
; [then-branch: 823 | !(p2_5@205@01) | live]
; [else-branch: 823 | p2_5@205@01 | live]
(push) ; 59
; [then-branch: 823 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 59
(push) ; 59
; [else-branch: 823 | p2_5@205@01]
(assert p2_5@205@01)
; [eval] !bypass2_4
(push) ; 60
; [then-branch: 824 | bypass2_4@382@01 | live]
; [else-branch: 824 | !(bypass2_4@382@01) | live]
(push) ; 61
; [then-branch: 824 | bypass2_4@382@01]
(assert bypass2_4@382@01)
(pop) ; 61
(push) ; 61
; [else-branch: 824 | !(bypass2_4@382@01)]
(assert (not bypass2_4@382@01))
; [eval] int___eq__(x_1_0, __prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 62
(pop) ; 62
; Joined path conditions
(push) ; 62
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 62
; Joined path conditions
(pop) ; 61
(pop) ; 60
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_4@382@01) bypass2_4@382@01))
(pop) ; 59
(pop) ; 58
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (and p2_5@205@01 (or (not bypass2_4@382@01) bypass2_4@382@01))))
(pop) ; 57
(pop) ; 56
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_4@381@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
  (and
    (not
      (and
        p1_5@204@01
        (and
          (not bypass1_4@381@01)
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2)))))
    (=>
      p2_5@205@01
      (and p2_5@205@01 (or (not bypass2_4@382@01) bypass2_4@382@01))))))
(push) ; 56
(set-option :timeout 10)
(assert (not (or
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
  (and
    p2_5@205@01
    (and
      (not bypass2_4@382@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2)))))))
(check-sat)
; unsat
(pop) ; 56
; 0.00s
; (get-info :all-statistics)
; [then-branch: 825 | !(p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) || p2_5@205@01 && !(bypass2_4@382@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2))) | dead]
; [else-branch: 825 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) || p2_5@205@01 && !(bypass2_4@382@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2)) | live]
(set-option :timeout 0)
(push) ; 56
; [else-branch: 825 | p1_5@204@01 && !(bypass1_4@381@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 2)) || p2_5@205@01 && !(bypass2_4@382@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 2))]
(assert (or
  (and
    p1_5@204@01
    (and
      (not bypass1_4@381@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 2))))
  (and
    p2_5@205@01
    (and
      (not bypass2_4@382@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 2))))))
(pop) ; 56
(pop) ; 55
(pop) ; 54
(pop) ; 53
; [eval] !p2_5
(push) ; 53
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unsat
(pop) ; 53
; 0.00s
; (get-info :all-statistics)
; [then-branch: 826 | !(p2_5@205@01) | dead]
; [else-branch: 826 | p2_5@205@01 | live]
(set-option :timeout 0)
(push) ; 53
; [else-branch: 826 | p2_5@205@01]
(assert p2_5@205@01)
(pop) ; 53
(pop) ; 52
; [eval] !p1_5
(push) ; 52
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unsat
(pop) ; 52
; 0.00s
; (get-info :all-statistics)
; [then-branch: 827 | !(p1_5@204@01) | dead]
; [else-branch: 827 | p1_5@204@01 | live]
(set-option :timeout 0)
(push) ; 52
; [else-branch: 827 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 52
(pop) ; 51
(pop) ; 50
(pop) ; 49
; [eval] !p2_5
(push) ; 49
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unsat
(pop) ; 49
; 0.00s
; (get-info :all-statistics)
; [then-branch: 828 | !(p2_5@205@01) | dead]
; [else-branch: 828 | p2_5@205@01 | live]
(set-option :timeout 0)
(push) ; 49
; [else-branch: 828 | p2_5@205@01]
(assert p2_5@205@01)
(pop) ; 49
(pop) ; 48
; [eval] !p1_5
(push) ; 48
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unsat
(pop) ; 48
; 0.00s
; (get-info :all-statistics)
; [then-branch: 829 | !(p1_5@204@01) | dead]
; [else-branch: 829 | p1_5@204@01 | live]
(set-option :timeout 0)
(push) ; 48
; [else-branch: 829 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 48
(pop) ; 47
; [eval] !p2_5
(push) ; 47
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unsat
(pop) ; 47
; 0.00s
; (get-info :all-statistics)
; [then-branch: 830 | !(p2_5@205@01) | dead]
; [else-branch: 830 | p2_5@205@01 | live]
(set-option :timeout 0)
(push) ; 47
; [else-branch: 830 | p2_5@205@01]
(assert p2_5@205@01)
(pop) ; 47
(pop) ; 46
; [eval] !p1_5
(push) ; 46
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unsat
(pop) ; 46
; 0.00s
; (get-info :all-statistics)
; [then-branch: 831 | !(p1_5@204@01) | dead]
; [else-branch: 831 | p1_5@204@01 | live]
(set-option :timeout 0)
(push) ; 46
; [else-branch: 831 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 46
(pop) ; 45
; [eval] !p2_5
(push) ; 45
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unsat
(pop) ; 45
; 0.00s
; (get-info :all-statistics)
; [then-branch: 832 | !(p2_5@205@01) | dead]
; [else-branch: 832 | p2_5@205@01 | live]
(set-option :timeout 0)
(push) ; 45
; [else-branch: 832 | p2_5@205@01]
(assert p2_5@205@01)
(pop) ; 45
(pop) ; 44
; [eval] !p1_5
(push) ; 44
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unsat
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
; [then-branch: 833 | !(p1_5@204@01) | dead]
; [else-branch: 833 | p1_5@204@01 | live]
(set-option :timeout 0)
(push) ; 44
; [else-branch: 833 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 44
(pop) ; 43
; [eval] !(p1_5 || p2_5)
; [eval] p1_5 || p2_5
(push) ; 43
; [then-branch: 834 | p1_5@204@01 | live]
; [else-branch: 834 | !(p1_5@204@01) | live]
(push) ; 44
; [then-branch: 834 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 44
(push) ; 44
; [else-branch: 834 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 44
(pop) ; 43
; Joined path conditions
; Joined path conditions
; [then-branch: 835 | !(p1_5@204@01 || p2_5@205@01) | dead]
; [else-branch: 835 | p1_5@204@01 || p2_5@205@01 | live]
(push) ; 43
; [else-branch: 835 | p1_5@204@01 || p2_5@205@01]
(pop) ; 43
(pop) ; 42
(pop) ; 41
; [eval] !p2_5
(push) ; 41
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unsat
(pop) ; 41
; 0.00s
; (get-info :all-statistics)
; [then-branch: 836 | !(p2_5@205@01) | dead]
; [else-branch: 836 | p2_5@205@01 | live]
(set-option :timeout 0)
(push) ; 41
; [else-branch: 836 | p2_5@205@01]
(assert p2_5@205@01)
(pop) ; 41
(pop) ; 40
(pop) ; 39
; [eval] !p1_5
(push) ; 39
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unsat
(pop) ; 39
; 0.00s
; (get-info :all-statistics)
; [then-branch: 837 | !(p1_5@204@01) | dead]
; [else-branch: 837 | p1_5@204@01 | live]
(set-option :timeout 0)
(push) ; 39
; [else-branch: 837 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 39
(pop) ; 38
(pop) ; 37
(push) ; 37
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@360@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))
  $Snap.unit))
(assert p1_5@204@01)
(assert (not bypass1_3@348@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))
  $Snap.unit))
(assert p2_5@205@01)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))
  $Snap.unit))
(assert (=>
  (and p1_5@204@01 (not bypass1_3@348@01))
  (and p1_5@204@01 (not bypass1_3@348@01) (not cond_7@350@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))
  $Snap.unit))
(assert (=>
  (and p2_5@205@01 (not bypass2_3@349@01))
  (and p2_5@205@01 (not bypass2_3@349@01) (not cond_8@351@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))))))))))
  $Snap.unit))
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@360@01))) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@360@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@360@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@360@01)))))))
(assert (= $t@360@01 ($Snap.combine ($Snap.first $t@360@01) ($Snap.second $t@360@01))))
(assert (= ($Snap.first $t@360@01) $Snap.unit))
(assert (=>
  (and p1_5@204@01 (not bypass1_3@348@01))
  (<= _residue_159@210@01 _residue_164@240@01)))
(assert (=
  ($Snap.second $t@360@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@360@01))
    ($Snap.second ($Snap.second $t@360@01)))))
(assert (= ($Snap.first ($Snap.second $t@360@01)) $Snap.unit))
(assert (=>
  (and p2_5@205@01 (not bypass2_3@349@01))
  (<= _residue_159_0@211@01 _residue_164_0@241@01)))
(assert (=
  ($Snap.second ($Snap.second $t@360@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@360@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@360@01))))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 38
; [eval] p1_5 && (!bypass1_3 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))) || p2_5 && (!bypass2_3 && int___eq__(x_1_0, __prim__int___box__(1)))
; [eval] p1_5 && (!bypass1_3 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)))
(push) ; 39
; [then-branch: 838 | !(p1_5@204@01) | live]
; [else-branch: 838 | p1_5@204@01 | live]
(push) ; 40
; [then-branch: 838 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 40
(push) ; 40
; [else-branch: 838 | p1_5@204@01]
; [eval] !bypass1_3
(push) ; 41
; [then-branch: 839 | bypass1_3@348@01 | live]
; [else-branch: 839 | !(bypass1_3@348@01) | live]
(push) ; 42
; [then-branch: 839 | bypass1_3@348@01]
(assert bypass1_3@348@01)
(pop) ; 42
(push) ; 42
; [else-branch: 839 | !(bypass1_3@348@01)]
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 43
; [eval] _isDefined(id)
(push) ; 44
(pop) ; 44
; Joined path conditions
(pop) ; 43
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 43
(pop) ; 43
; Joined path conditions
(push) ; 43
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 43
; Joined path conditions
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_3@348@01) bypass1_3@348@01))
(pop) ; 40
(pop) ; 39
; Joined path conditions
; Joined path conditions
(assert (=> p1_5@204@01 (or (not bypass1_3@348@01) bypass1_3@348@01)))
(push) ; 39
; [then-branch: 840 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) | live]
; [else-branch: 840 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))) | live]
(push) ; 40
; [then-branch: 840 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_3@348@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
(pop) ; 40
(push) ; 40
; [else-branch: 840 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))))
; [eval] p2_5 && (!bypass2_3 && int___eq__(x_1_0, __prim__int___box__(1)))
(push) ; 41
; [then-branch: 841 | !(p2_5@205@01) | live]
; [else-branch: 841 | p2_5@205@01 | live]
(push) ; 42
; [then-branch: 841 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 42
(push) ; 42
; [else-branch: 841 | p2_5@205@01]
; [eval] !bypass2_3
(push) ; 43
; [then-branch: 842 | bypass2_3@349@01 | live]
; [else-branch: 842 | !(bypass2_3@349@01) | live]
(push) ; 44
; [then-branch: 842 | bypass2_3@349@01]
(assert bypass2_3@349@01)
(pop) ; 44
(push) ; 44
; [else-branch: 842 | !(bypass2_3@349@01)]
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 45
(pop) ; 45
; Joined path conditions
(push) ; 45
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 45
; Joined path conditions
(pop) ; 44
(pop) ; 43
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_3@349@01) bypass2_3@349@01))
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (or (not bypass2_3@349@01) bypass2_3@349@01)))
(pop) ; 40
(pop) ; 39
; Joined path conditions
(assert (=>
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
  (and
    p1_5@204@01
    (not bypass1_3@348@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_3@348@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
  (and
    (not
      (and
        p1_5@204@01
        (and
          (not bypass1_3@348@01)
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
    (=> p2_5@205@01 (or (not bypass2_3@349@01) bypass2_3@349@01)))))
(assert (or
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_3@348@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))))
(pop) ; 38
(push) ; 38
; [eval] !(p1_5 && (!bypass1_3 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))) || p2_5 && (!bypass2_3 && int___eq__(x_1_0, __prim__int___box__(1))))
; [eval] p1_5 && (!bypass1_3 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))) || p2_5 && (!bypass2_3 && int___eq__(x_1_0, __prim__int___box__(1)))
; [eval] p1_5 && (!bypass1_3 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)))
(push) ; 39
; [then-branch: 843 | !(p1_5@204@01) | live]
; [else-branch: 843 | p1_5@204@01 | live]
(push) ; 40
; [then-branch: 843 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 40
(push) ; 40
; [else-branch: 843 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_3
(push) ; 41
; [then-branch: 844 | bypass1_3@348@01 | live]
; [else-branch: 844 | !(bypass1_3@348@01) | live]
(push) ; 42
; [then-branch: 844 | bypass1_3@348@01]
(assert bypass1_3@348@01)
(pop) ; 42
(push) ; 42
; [else-branch: 844 | !(bypass1_3@348@01)]
(assert (not bypass1_3@348@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 43
; [eval] _isDefined(id)
(push) ; 44
(pop) ; 44
; Joined path conditions
(pop) ; 43
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 43
(pop) ; 43
; Joined path conditions
(push) ; 43
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 43
; Joined path conditions
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_3@348@01) bypass1_3@348@01))
(pop) ; 40
(pop) ; 39
; Joined path conditions
; Joined path conditions
(assert (=> p1_5@204@01 (and p1_5@204@01 (or (not bypass1_3@348@01) bypass1_3@348@01))))
(push) ; 39
; [then-branch: 845 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) | live]
; [else-branch: 845 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))) | live]
(push) ; 40
; [then-branch: 845 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_3@348@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
(pop) ; 40
(push) ; 40
; [else-branch: 845 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))))
; [eval] p2_5 && (!bypass2_3 && int___eq__(x_1_0, __prim__int___box__(1)))
(push) ; 41
; [then-branch: 846 | !(p2_5@205@01) | live]
; [else-branch: 846 | p2_5@205@01 | live]
(push) ; 42
; [then-branch: 846 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 42
(push) ; 42
; [else-branch: 846 | p2_5@205@01]
; [eval] !bypass2_3
(push) ; 43
; [then-branch: 847 | bypass2_3@349@01 | live]
; [else-branch: 847 | !(bypass2_3@349@01) | live]
(push) ; 44
; [then-branch: 847 | bypass2_3@349@01]
(assert bypass2_3@349@01)
(pop) ; 44
(push) ; 44
; [else-branch: 847 | !(bypass2_3@349@01)]
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 45
(pop) ; 45
; Joined path conditions
(push) ; 45
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 45
; Joined path conditions
(pop) ; 44
(pop) ; 43
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_3@349@01) bypass2_3@349@01))
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (or (not bypass2_3@349@01) bypass2_3@349@01)))
(pop) ; 40
(pop) ; 39
; Joined path conditions
(assert (=>
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
  (and
    p1_5@204@01
    (not bypass1_3@348@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_3@348@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
  (and
    (not
      (and
        p1_5@204@01
        (and
          (not bypass1_3@348@01)
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
    (=> p2_5@205@01 (or (not bypass2_3@349@01) bypass2_3@349@01)))))
(assert (or
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_3@348@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))))
(pop) ; 38
; Loop head block: Follow loop-internal edges
; [eval] p1_5 && (!bypass1_3 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))) || p2_5 && (!bypass2_3 && int___eq__(x_1_0, __prim__int___box__(1)))
; [eval] p1_5 && (!bypass1_3 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)))
(push) ; 38
; [then-branch: 848 | !(p1_5@204@01) | live]
; [else-branch: 848 | p1_5@204@01 | live]
(push) ; 39
; [then-branch: 848 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 39
(push) ; 39
; [else-branch: 848 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_3
(push) ; 40
; [then-branch: 849 | bypass1_3@348@01 | live]
; [else-branch: 849 | !(bypass1_3@348@01) | live]
(push) ; 41
; [then-branch: 849 | bypass1_3@348@01]
(assert bypass1_3@348@01)
(pop) ; 41
(push) ; 41
; [else-branch: 849 | !(bypass1_3@348@01)]
(assert (not bypass1_3@348@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 42
; [eval] _isDefined(id)
(push) ; 43
(pop) ; 43
; Joined path conditions
(pop) ; 42
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 42
(pop) ; 42
; Joined path conditions
(push) ; 42
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 42
; Joined path conditions
(pop) ; 41
(pop) ; 40
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_3@348@01) bypass1_3@348@01))
(pop) ; 39
(pop) ; 38
; Joined path conditions
; Joined path conditions
(assert (=> p1_5@204@01 (and p1_5@204@01 (or (not bypass1_3@348@01) bypass1_3@348@01))))
(push) ; 38
; [then-branch: 850 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) | live]
; [else-branch: 850 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))) | live]
(push) ; 39
; [then-branch: 850 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_3@348@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
(pop) ; 39
(push) ; 39
; [else-branch: 850 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))))
; [eval] p2_5 && (!bypass2_3 && int___eq__(x_1_0, __prim__int___box__(1)))
(push) ; 40
; [then-branch: 851 | !(p2_5@205@01) | live]
; [else-branch: 851 | p2_5@205@01 | live]
(push) ; 41
; [then-branch: 851 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 41
(push) ; 41
; [else-branch: 851 | p2_5@205@01]
; [eval] !bypass2_3
(push) ; 42
; [then-branch: 852 | bypass2_3@349@01 | live]
; [else-branch: 852 | !(bypass2_3@349@01) | live]
(push) ; 43
; [then-branch: 852 | bypass2_3@349@01]
(assert bypass2_3@349@01)
(pop) ; 43
(push) ; 43
; [else-branch: 852 | !(bypass2_3@349@01)]
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 44
(pop) ; 44
; Joined path conditions
(push) ; 44
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 44
; Joined path conditions
(pop) ; 43
(pop) ; 42
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_3@349@01) bypass2_3@349@01))
(pop) ; 41
(pop) ; 40
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (or (not bypass2_3@349@01) bypass2_3@349@01)))
(pop) ; 39
(pop) ; 38
; Joined path conditions
(assert (=>
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
  (and
    p1_5@204@01
    (not bypass1_3@348@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_3@348@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
  (and
    (not
      (and
        p1_5@204@01
        (and
          (not bypass1_3@348@01)
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
    (=> p2_5@205@01 (or (not bypass2_3@349@01) bypass2_3@349@01)))))
(assert (or
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_3@348@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))))
(push) ; 38
(set-option :timeout 10)
(assert (not (not
  (or
    (and
      p1_5@204@01
      (and
        (not bypass1_3@348@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
    (and
      p2_5@205@01
      (and
        (not bypass2_3@349@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))))))
(check-sat)
; unknown
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 38
(set-option :timeout 10)
(assert (not (or
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
  (and
    p2_5@205@01
    (and
      (not bypass2_3@349@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))))))
(check-sat)
; unsat
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
; [then-branch: 853 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) || p2_5@205@01 && !(bypass2_3@349@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1)) | live]
; [else-branch: 853 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) || p2_5@205@01 && !(bypass2_3@349@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1))) | dead]
(set-option :timeout 0)
(push) ; 38
; [then-branch: 853 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) || p2_5@205@01 && !(bypass2_3@349@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1))]
(assert (or
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
  (and
    p2_5@205@01
    (and
      (not bypass2_3@349@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))))
; [exec]
; p1_7 := p1_5 &&
;   int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] p1_5 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
(push) ; 39
; [then-branch: 854 | !(p1_5@204@01) | live]
; [else-branch: 854 | p1_5@204@01 | live]
(push) ; 40
; [then-branch: 854 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 40
(push) ; 40
; [else-branch: 854 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 41
; [eval] _isDefined(id)
(push) ; 42
(pop) ; 42
; Joined path conditions
(pop) ; 41
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 41
(pop) ; 41
; Joined path conditions
(push) ; 41
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 41
; Joined path conditions
(pop) ; 40
(pop) ; 39
; Joined path conditions
; Joined path conditions
(declare-const p1_7@415@01 Bool)
(assert (=
  p1_7@415@01
  (and
    p1_5@204@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
; [exec]
; p2_7 := p2_5 && int___eq__(x_1_0, __prim__int___box__(1))
; [eval] p2_5 && int___eq__(x_1_0, __prim__int___box__(1))
(push) ; 39
; [then-branch: 855 | !(p2_5@205@01) | live]
; [else-branch: 855 | p2_5@205@01 | live]
(push) ; 40
; [then-branch: 855 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 40
(push) ; 40
; [else-branch: 855 | p2_5@205@01]
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 41
(pop) ; 41
; Joined path conditions
(push) ; 41
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 41
; Joined path conditions
(pop) ; 40
(pop) ; 39
; Joined path conditions
; Joined path conditions
(declare-const p2_7@416@01 Bool)
(assert (=
  p2_7@416@01
  (and
    p2_5@205@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))))
; [exec]
; idle1_3 := p1_5 &&
;   !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] p1_5 && !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
(push) ; 39
; [then-branch: 856 | !(p1_5@204@01) | live]
; [else-branch: 856 | p1_5@204@01 | live]
(push) ; 40
; [then-branch: 856 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 40
(push) ; 40
; [else-branch: 856 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 41
; [eval] _isDefined(id)
(push) ; 42
(pop) ; 42
; Joined path conditions
(pop) ; 41
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 41
(pop) ; 41
; Joined path conditions
(push) ; 41
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 41
; Joined path conditions
(pop) ; 40
(pop) ; 39
; Joined path conditions
; Joined path conditions
(declare-const idle1_3@417@01 Bool)
(assert (=
  idle1_3@417@01
  (and
    p1_5@204@01
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))))
; [exec]
; idle2_3 := p2_5 && !int___eq__(x_1_0, __prim__int___box__(1))
; [eval] p2_5 && !int___eq__(x_1_0, __prim__int___box__(1))
(push) ; 39
; [then-branch: 857 | !(p2_5@205@01) | live]
; [else-branch: 857 | p2_5@205@01 | live]
(push) ; 40
; [then-branch: 857 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 40
(push) ; 40
; [else-branch: 857 | p2_5@205@01]
; [eval] !int___eq__(x_1_0, __prim__int___box__(1))
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 41
(pop) ; 41
; Joined path conditions
(push) ; 41
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 41
; Joined path conditions
(pop) ; 40
(pop) ; 39
; Joined path conditions
; Joined path conditions
(declare-const idle2_3@418@01 Bool)
(assert (=
  idle2_3@418@01
  (and
    p2_5@205@01
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))))
(push) ; 39
(set-option :timeout 10)
(assert (not (not p1_7@415@01)))
(check-sat)
; unknown
(pop) ; 39
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 39
(set-option :timeout 10)
(assert (not p1_7@415@01))
(check-sat)
; unsat
(pop) ; 39
; 0.00s
; (get-info :all-statistics)
; [then-branch: 858 | p1_7@415@01 | live]
; [else-branch: 858 | !(p1_7@415@01) | dead]
(set-option :timeout 0)
(push) ; 39
; [then-branch: 858 | p1_7@415@01]
(assert p1_7@415@01)
; [exec]
; _loop_measures_3 := Seq(Measure$create(!int___eq__(_checkDefined(x_1, 3235704),
;   __prim__int___box__(1)), _cthread_159, 0))
; [eval] Seq(Measure$create(!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)), _cthread_159, 0))
; [eval] Measure$create(!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)), _cthread_159, 0)
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 40
; [eval] _isDefined(id)
(push) ; 41
(pop) ; 41
; Joined path conditions
(pop) ; 40
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 40
(pop) ; 40
; Joined path conditions
(push) ; 40
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 40
; Joined path conditions
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))) _cthread_159@206@01 0)))
  1))
(declare-const _loop_measures_3@419@01 Seq<Measure$>)
(assert (=
  _loop_measures_3@419@01
  (Seq_singleton (Measure$create<Measure$> (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))) _cthread_159@206@01 0))))
; [exec]
; _loop_check_before_3 := false
(push) ; 40
(set-option :timeout 10)
(assert (not (not p2_7@416@01)))
(check-sat)
; unknown
(pop) ; 40
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 40
(set-option :timeout 10)
(assert (not p2_7@416@01))
(check-sat)
; unsat
(pop) ; 40
; 0.00s
; (get-info :all-statistics)
; [then-branch: 859 | p2_7@416@01 | live]
; [else-branch: 859 | !(p2_7@416@01) | dead]
(set-option :timeout 0)
(push) ; 40
; [then-branch: 859 | p2_7@416@01]
(assert p2_7@416@01)
; [exec]
; _loop_measures_3_0 := Seq(Measure$create(!int___eq__(x_1_0, __prim__int___box__(1)),
;   _cthread_159_0, 0))
; [eval] Seq(Measure$create(!int___eq__(x_1_0, __prim__int___box__(1)), _cthread_159_0, 0))
; [eval] Measure$create(!int___eq__(x_1_0, __prim__int___box__(1)), _cthread_159_0, 0)
; [eval] !int___eq__(x_1_0, __prim__int___box__(1))
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 41
(pop) ; 41
; Joined path conditions
(push) ; 41
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 41
; Joined path conditions
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))) _cthread_159_0@207@01 0)))
  1))
(declare-const _loop_measures_3_0@420@01 Seq<Measure$>)
(assert (=
  _loop_measures_3_0@420@01
  (Seq_singleton (Measure$create<Measure$> (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))) _cthread_159_0@207@01 0))))
; [exec]
; _loop_check_before_3_0 := false
; [exec]
; assert (p1_7 ==>
;   _loop_termination_flag_3 ==>
;   !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) ||
;   !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) &&
;   Measure$check(_loop_measures_3, _cthread_159, 0)) &&
;   (p2_7 ==>
;   _loop_termination_flag_3_0 ==>
;   !int___eq__(x_1_0, __prim__int___box__(1)) ||
;   !int___eq__(x_1_0, __prim__int___box__(1)) &&
;   Measure$check(_loop_measures_3_0, _cthread_159_0, 0))
; [eval] p1_7 ==> _loop_termination_flag_3 ==> !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) || !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) && Measure$check(_loop_measures_3, _cthread_159, 0)
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not p1_7@415@01)))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 860 | p1_7@415@01 | live]
; [else-branch: 860 | !(p1_7@415@01) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 860 | p1_7@415@01]
; [eval] _loop_termination_flag_3 ==> !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) || !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) && Measure$check(_loop_measures_3, _cthread_159, 0)
(push) ; 43
(push) ; 44
(set-option :timeout 10)
(assert (not (not _loop_termination_flag_3@345@01)))
(check-sat)
; unsat
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
; [then-branch: 861 | _loop_termination_flag_3@345@01 | dead]
; [else-branch: 861 | !(_loop_termination_flag_3@345@01) | live]
(set-option :timeout 0)
(push) ; 44
; [else-branch: 861 | !(_loop_termination_flag_3@345@01)]
(assert (not _loop_termination_flag_3@345@01))
(pop) ; 44
(pop) ; 43
; Joined path conditions
(assert (not _loop_termination_flag_3@345@01))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (=> p1_7@415@01 (not _loop_termination_flag_3@345@01)))
; [eval] p2_7 ==> _loop_termination_flag_3_0 ==> !int___eq__(x_1_0, __prim__int___box__(1)) || !int___eq__(x_1_0, __prim__int___box__(1)) && Measure$check(_loop_measures_3_0, _cthread_159_0, 0)
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not p2_7@416@01)))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 862 | p2_7@416@01 | live]
; [else-branch: 862 | !(p2_7@416@01) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 862 | p2_7@416@01]
; [eval] _loop_termination_flag_3_0 ==> !int___eq__(x_1_0, __prim__int___box__(1)) || !int___eq__(x_1_0, __prim__int___box__(1)) && Measure$check(_loop_measures_3_0, _cthread_159_0, 0)
(push) ; 43
(push) ; 44
(set-option :timeout 10)
(assert (not (not _loop_termination_flag_3_0@347@01)))
(check-sat)
; unsat
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
; [then-branch: 863 | _loop_termination_flag_3_0@347@01 | dead]
; [else-branch: 863 | !(_loop_termination_flag_3_0@347@01) | live]
(set-option :timeout 0)
(push) ; 44
; [else-branch: 863 | !(_loop_termination_flag_3_0@347@01)]
(assert (not _loop_termination_flag_3_0@347@01))
(pop) ; 44
(pop) ; 43
; Joined path conditions
(assert (not _loop_termination_flag_3_0@347@01))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (=> p2_7@416@01 (not _loop_termination_flag_3_0@347@01)))
; Loop head block: Re-establish invariant
; [eval] p1_5 && !bypass1_3 ==> true
; [eval] p1_5 && !bypass1_3
(push) ; 41
; [then-branch: 864 | !(p1_5@204@01) | live]
; [else-branch: 864 | p1_5@204@01 | live]
(push) ; 42
; [then-branch: 864 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 42
(push) ; 42
; [else-branch: 864 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_3@348@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_3@348@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 865 | p1_5@204@01 && !(bypass1_3@348@01) | live]
; [else-branch: 865 | !(p1_5@204@01 && !(bypass1_3@348@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 865 | p1_5@204@01 && !(bypass1_3@348@01)]
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
; [eval] p2_5 && !bypass2_3 ==> true
; [eval] p2_5 && !bypass2_3
(push) ; 41
; [then-branch: 866 | !(p2_5@205@01) | live]
; [else-branch: 866 | p2_5@205@01 | live]
(push) ; 42
; [then-branch: 866 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 42
(push) ; 42
; [else-branch: 866 | p2_5@205@01]
; [eval] !bypass2_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_3@349@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_3@349@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 867 | p2_5@205@01 && !(bypass2_3@349@01) | live]
; [else-branch: 867 | !(p2_5@205@01 && !(bypass2_3@349@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 867 | p2_5@205@01 && !(bypass2_3@349@01)]
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] p1_5 && !bypass1_3 ==> !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) ==> (int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) ==> false) && true
; [eval] p1_5 && !bypass1_3
(push) ; 41
; [then-branch: 868 | !(p1_5@204@01) | live]
; [else-branch: 868 | p1_5@204@01 | live]
(push) ; 42
; [then-branch: 868 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 42
(push) ; 42
; [else-branch: 868 | p1_5@204@01]
; [eval] !bypass1_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_3@348@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_3@348@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 869 | p1_5@204@01 && !(bypass1_3@348@01) | live]
; [else-branch: 869 | !(p1_5@204@01 && !(bypass1_3@348@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 869 | p1_5@204@01 && !(bypass1_3@348@01)]
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) ==> (int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) ==> false) && true
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 43
; [eval] _isDefined(id)
(push) ; 44
(pop) ; 44
; Joined path conditions
(pop) ; 43
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 43
(pop) ; 43
; Joined path conditions
(push) ; 43
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 43
; Joined path conditions
(push) ; 43
(push) ; 44
(set-option :timeout 10)
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
(check-sat)
; unsat
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
; [then-branch: 870 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))) | dead]
; [else-branch: 870 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) | live]
(set-option :timeout 0)
(push) ; 44
; [else-branch: 870 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
(pop) ; 44
(pop) ; 43
; Joined path conditions
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (=>
  (and p1_5@204@01 (not bypass1_3@348@01))
  (and
    p1_5@204@01
    (not bypass1_3@348@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
; [eval] p2_5 && !bypass2_3 ==> !int___eq__(x_1_0, __prim__int___box__(1)) ==> (int___eq__(x_1_0, __prim__int___box__(1)) ==> false) && true
; [eval] p2_5 && !bypass2_3
(push) ; 41
; [then-branch: 871 | !(p2_5@205@01) | live]
; [else-branch: 871 | p2_5@205@01 | live]
(push) ; 42
; [then-branch: 871 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 42
(push) ; 42
; [else-branch: 871 | p2_5@205@01]
; [eval] !bypass2_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_3@349@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_3@349@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 872 | p2_5@205@01 && !(bypass2_3@349@01) | live]
; [else-branch: 872 | !(p2_5@205@01 && !(bypass2_3@349@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 872 | p2_5@205@01 && !(bypass2_3@349@01)]
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] !int___eq__(x_1_0, __prim__int___box__(1)) ==> (int___eq__(x_1_0, __prim__int___box__(1)) ==> false) && true
; [eval] !int___eq__(x_1_0, __prim__int___box__(1))
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 43
(pop) ; 43
; Joined path conditions
(push) ; 43
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 43
; Joined path conditions
(push) ; 43
; [then-branch: 873 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1))) | dead]
; [else-branch: 873 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1)) | live]
(push) ; 44
; [else-branch: 873 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1))]
(pop) ; 44
(pop) ; 43
; Joined path conditions
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] p1_5 && !bypass1_3 ==> !idle1_3 ==> _loop_check_before_3 ==> _loop_termination_flag_3 || (!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_17: Ref [MustInvokeBounded(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBounded] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: false)))))
; [eval] p1_5 && !bypass1_3
(push) ; 41
; [then-branch: 874 | !(p1_5@204@01) | live]
; [else-branch: 874 | p1_5@204@01 | live]
(push) ; 42
; [then-branch: 874 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 42
(push) ; 42
; [else-branch: 874 | p1_5@204@01]
; [eval] !bypass1_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_3@348@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_3@348@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 875 | p1_5@204@01 && !(bypass1_3@348@01) | live]
; [else-branch: 875 | !(p1_5@204@01 && !(bypass1_3@348@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 875 | p1_5@204@01 && !(bypass1_3@348@01)]
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
; [eval] !idle1_3 ==> _loop_check_before_3 ==> _loop_termination_flag_3 || (!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_17: Ref [MustInvokeBounded(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBounded] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: false)))))
; [eval] !idle1_3
(push) ; 43
(push) ; 44
(set-option :timeout 10)
(assert (not idle1_3@417@01))
(check-sat)
; unknown
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 44
(set-option :timeout 10)
(assert (not (not idle1_3@417@01)))
(check-sat)
; unsat
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
; [then-branch: 876 | !(idle1_3@417@01) | live]
; [else-branch: 876 | idle1_3@417@01 | dead]
(set-option :timeout 0)
(push) ; 44
; [then-branch: 876 | !(idle1_3@417@01)]
(assert (not idle1_3@417@01))
; [eval] _loop_check_before_3 ==> _loop_termination_flag_3 || (!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)) || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_17: Ref [MustInvokeBounded(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBounded] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: false)))))
(push) ; 45
; [then-branch: 877 | False | dead]
; [else-branch: 877 | True | live]
(push) ; 46
; [else-branch: 877 | True]
(pop) ; 46
(pop) ; 45
; Joined path conditions
(pop) ; 44
(pop) ; 43
; Joined path conditions
(assert (not idle1_3@417@01))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (=>
  (and p1_5@204@01 (not bypass1_3@348@01))
  (and p1_5@204@01 (not bypass1_3@348@01) (not idle1_3@417@01))))
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
; [eval] p2_5 && !bypass2_3 ==> !idle2_3 ==> _loop_check_before_3_0 ==> _loop_termination_flag_3_0 || (!int___eq__(x_1_0, __prim__int___box__(1)) || perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_17: Ref [MustInvokeBounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBoundedp] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnboundedp] :: false)))))
; [eval] p2_5 && !bypass2_3
(push) ; 41
; [then-branch: 878 | !(p2_5@205@01) | live]
; [else-branch: 878 | p2_5@205@01 | live]
(push) ; 42
; [then-branch: 878 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 42
(push) ; 42
; [else-branch: 878 | p2_5@205@01]
; [eval] !bypass2_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_3@349@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_3@349@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 879 | p2_5@205@01 && !(bypass2_3@349@01) | live]
; [else-branch: 879 | !(p2_5@205@01 && !(bypass2_3@349@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 879 | p2_5@205@01 && !(bypass2_3@349@01)]
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] !idle2_3 ==> _loop_check_before_3_0 ==> _loop_termination_flag_3_0 || (!int___eq__(x_1_0, __prim__int___box__(1)) || perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_17: Ref [MustInvokeBounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBoundedp] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnboundedp] :: false)))))
; [eval] !idle2_3
(push) ; 43
(push) ; 44
(set-option :timeout 10)
(assert (not idle2_3@418@01))
(check-sat)
; unknown
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 44
(set-option :timeout 10)
(assert (not (not idle2_3@418@01)))
(check-sat)
; unsat
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
; [then-branch: 880 | !(idle2_3@418@01) | live]
; [else-branch: 880 | idle2_3@418@01 | dead]
(set-option :timeout 0)
(push) ; 44
; [then-branch: 880 | !(idle2_3@418@01)]
(assert (not idle2_3@418@01))
; [eval] _loop_check_before_3_0 ==> _loop_termination_flag_3_0 || (!int___eq__(x_1_0, __prim__int___box__(1)) || perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_17: Ref [MustInvokeBounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBoundedp] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnboundedp] :: false)))))
(push) ; 45
; [then-branch: 881 | False | dead]
; [else-branch: 881 | True | live]
(push) ; 46
; [else-branch: 881 | True]
(pop) ; 46
(pop) ; 45
; Joined path conditions
(pop) ; 44
(pop) ; 43
; Joined path conditions
(assert (not idle2_3@418@01))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (=>
  (and p2_5@205@01 (not bypass2_3@349@01))
  (and p2_5@205@01 (not bypass2_3@349@01) (not idle2_3@418@01))))
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] p1_5 && !bypass1_3 ==> !idle1_3 ==> !_loop_check_before_3 ==> (forperm _r_17: Ref [MustInvokeBounded(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBounded] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: false)))
; [eval] p1_5 && !bypass1_3
(push) ; 41
; [then-branch: 882 | !(p1_5@204@01) | live]
; [else-branch: 882 | p1_5@204@01 | live]
(push) ; 42
; [then-branch: 882 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 42
(push) ; 42
; [else-branch: 882 | p1_5@204@01]
; [eval] !bypass1_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_3@348@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_3@348@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 883 | p1_5@204@01 && !(bypass1_3@348@01) | live]
; [else-branch: 883 | !(p1_5@204@01 && !(bypass1_3@348@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 883 | p1_5@204@01 && !(bypass1_3@348@01)]
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
; [eval] !idle1_3 ==> !_loop_check_before_3 ==> (forperm _r_17: Ref [MustInvokeBounded(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBounded] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: false)))
; [eval] !idle1_3
(push) ; 43
(push) ; 44
(set-option :timeout 10)
(assert (not idle1_3@417@01))
(check-sat)
; unknown
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 44
(set-option :timeout 10)
(assert (not (not idle1_3@417@01)))
(check-sat)
; unsat
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
; [then-branch: 884 | !(idle1_3@417@01) | live]
; [else-branch: 884 | idle1_3@417@01 | dead]
(set-option :timeout 0)
(push) ; 44
; [then-branch: 884 | !(idle1_3@417@01)]
(assert (not idle1_3@417@01))
; [eval] !_loop_check_before_3 ==> (forperm _r_17: Ref [MustInvokeBounded(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBounded] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_3
(push) ; 45
(push) ; 46
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 46
; 0.00s
; (get-info :all-statistics)
; [then-branch: 885 | True | live]
; [else-branch: 885 | False | dead]
(set-option :timeout 0)
(push) ; 46
; [then-branch: 885 | True]
; [eval] (forperm _r_17: Ref [MustInvokeBounded(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBounded] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_17: Ref [MustInvokeBounded(_r_17)] :: false)
(push) ; 47
; [then-branch: 886 | False | live]
; [else-branch: 886 | True | live]
(push) ; 48
; [then-branch: 886 | False]
(assert false)
(pop) ; 48
(push) ; 48
; [else-branch: 886 | True]
; [eval] (forperm _r_17: Ref [MustInvokeUnbounded(_r_17)] :: false)
(push) ; 49
; [then-branch: 887 | False | live]
; [else-branch: 887 | True | live]
(push) ; 50
; [then-branch: 887 | False]
(assert false)
(pop) ; 50
(push) ; 50
; [else-branch: 887 | True]
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseBounded] :: false)
(push) ; 51
; [then-branch: 888 | False | live]
; [else-branch: 888 | True | live]
(push) ; 52
; [then-branch: 888 | False]
(assert false)
(pop) ; 52
(push) ; 52
; [else-branch: 888 | True]
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: false)
(pop) ; 52
(pop) ; 51
; Joined path conditions
; Joined path conditions
(pop) ; 50
(pop) ; 49
; Joined path conditions
; Joined path conditions
(pop) ; 48
(pop) ; 47
; Joined path conditions
; Joined path conditions
(pop) ; 46
(pop) ; 45
; Joined path conditions
(pop) ; 44
(pop) ; 43
; Joined path conditions
(assert (not idle1_3@417@01))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
; [eval] p2_5 && !bypass2_3 ==> !idle2_3 ==> !_loop_check_before_3_0 ==> (forperm _r_17: Ref [MustInvokeBounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBoundedp] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnboundedp] :: false)))
; [eval] p2_5 && !bypass2_3
(push) ; 41
; [then-branch: 889 | !(p2_5@205@01) | live]
; [else-branch: 889 | p2_5@205@01 | live]
(push) ; 42
; [then-branch: 889 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 42
(push) ; 42
; [else-branch: 889 | p2_5@205@01]
; [eval] !bypass2_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_3@349@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_3@349@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 890 | p2_5@205@01 && !(bypass2_3@349@01) | live]
; [else-branch: 890 | !(p2_5@205@01 && !(bypass2_3@349@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 890 | p2_5@205@01 && !(bypass2_3@349@01)]
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] !idle2_3 ==> !_loop_check_before_3_0 ==> (forperm _r_17: Ref [MustInvokeBounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBoundedp] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnboundedp] :: false)))
; [eval] !idle2_3
(push) ; 43
(push) ; 44
(set-option :timeout 10)
(assert (not idle2_3@418@01))
(check-sat)
; unknown
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 44
(set-option :timeout 10)
(assert (not (not idle2_3@418@01)))
(check-sat)
; unsat
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
; [then-branch: 891 | !(idle2_3@418@01) | live]
; [else-branch: 891 | idle2_3@418@01 | dead]
(set-option :timeout 0)
(push) ; 44
; [then-branch: 891 | !(idle2_3@418@01)]
(assert (not idle2_3@418@01))
; [eval] !_loop_check_before_3_0 ==> (forperm _r_17: Ref [MustInvokeBounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBoundedp] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnboundedp] :: false)))
; [eval] !_loop_check_before_3_0
(push) ; 45
(push) ; 46
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 46
; 0.00s
; (get-info :all-statistics)
; [then-branch: 892 | True | live]
; [else-branch: 892 | False | dead]
(set-option :timeout 0)
(push) ; 46
; [then-branch: 892 | True]
; [eval] (forperm _r_17: Ref [MustInvokeBounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [MustInvokeUnbounded_0(_r_17)] :: false) && ((forperm _r_17: Ref [_r_17.MustReleaseBoundedp] :: false) && (forperm _r_17: Ref [_r_17.MustReleaseUnboundedp] :: false)))
; [eval] (forperm _r_17: Ref [MustInvokeBounded_0(_r_17)] :: false)
(push) ; 47
; [then-branch: 893 | False | live]
; [else-branch: 893 | True | live]
(push) ; 48
; [then-branch: 893 | False]
(assert false)
(pop) ; 48
(push) ; 48
; [else-branch: 893 | True]
; [eval] (forperm _r_17: Ref [MustInvokeUnbounded_0(_r_17)] :: false)
(push) ; 49
; [then-branch: 894 | False | live]
; [else-branch: 894 | True | live]
(push) ; 50
; [then-branch: 894 | False]
(assert false)
(pop) ; 50
(push) ; 50
; [else-branch: 894 | True]
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseBoundedp] :: false)
(push) ; 51
; [then-branch: 895 | False | live]
; [else-branch: 895 | True | live]
(push) ; 52
; [then-branch: 895 | False]
(assert false)
(pop) ; 52
(push) ; 52
; [else-branch: 895 | True]
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseUnboundedp] :: false)
(pop) ; 52
(pop) ; 51
; Joined path conditions
; Joined path conditions
(pop) ; 50
(pop) ; 49
; Joined path conditions
; Joined path conditions
(pop) ; 48
(pop) ; 47
; Joined path conditions
; Joined path conditions
(pop) ; 46
(pop) ; 45
; Joined path conditions
(pop) ; 44
(pop) ; 43
; Joined path conditions
(assert (not idle2_3@418@01))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] p1_5 && !bypass1_3 ==> !cond_7 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] p1_5 && !bypass1_3
(push) ; 41
; [then-branch: 896 | !(p1_5@204@01) | live]
; [else-branch: 896 | p1_5@204@01 | live]
(push) ; 42
; [then-branch: 896 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 42
(push) ; 42
; [else-branch: 896 | p1_5@204@01]
; [eval] !bypass1_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_3@348@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_3@348@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 897 | p1_5@204@01 && !(bypass1_3@348@01) | live]
; [else-branch: 897 | !(p1_5@204@01 && !(bypass1_3@348@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 897 | p1_5@204@01 && !(bypass1_3@348@01)]
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
; [eval] !cond_7 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] !cond_7
(push) ; 43
(push) ; 44
(set-option :timeout 10)
(assert (not cond_7@350@01))
(check-sat)
; unknown
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 44
(set-option :timeout 10)
(assert (not (not cond_7@350@01)))
(check-sat)
; unsat
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
; [then-branch: 898 | !(cond_7@350@01) | live]
; [else-branch: 898 | cond_7@350@01 | dead]
(set-option :timeout 0)
(push) ; 44
; [then-branch: 898 | !(cond_7@350@01)]
(assert (not cond_7@350@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 45
; [eval] _isDefined(id)
(push) ; 46
(pop) ; 46
; Joined path conditions
(pop) ; 45
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 45
(pop) ; 45
; Joined path conditions
(push) ; 45
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 45
; Joined path conditions
(pop) ; 44
(pop) ; 43
; Joined path conditions
(assert (not cond_7@350@01))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_3@348@01)))
; [eval] p2_5 && !bypass2_3 ==> !cond_8 ==> int___eq__(x_1_0, __prim__int___box__(1))
; [eval] p2_5 && !bypass2_3
(push) ; 41
; [then-branch: 899 | !(p2_5@205@01) | live]
; [else-branch: 899 | p2_5@205@01 | live]
(push) ; 42
; [then-branch: 899 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 42
(push) ; 42
; [else-branch: 899 | p2_5@205@01]
; [eval] !bypass2_3
(pop) ; 42
(pop) ; 41
; Joined path conditions
; Joined path conditions
(push) ; 41
(push) ; 42
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_3@349@01)))))
(check-sat)
; unknown
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 42
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_3@349@01))))
(check-sat)
; unsat
(pop) ; 42
; 0.00s
; (get-info :all-statistics)
; [then-branch: 900 | p2_5@205@01 && !(bypass2_3@349@01) | live]
; [else-branch: 900 | !(p2_5@205@01 && !(bypass2_3@349@01)) | dead]
(set-option :timeout 0)
(push) ; 42
; [then-branch: 900 | p2_5@205@01 && !(bypass2_3@349@01)]
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] !cond_8 ==> int___eq__(x_1_0, __prim__int___box__(1))
; [eval] !cond_8
(push) ; 43
(push) ; 44
(set-option :timeout 10)
(assert (not cond_8@351@01))
(check-sat)
; unknown
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 44
(set-option :timeout 10)
(assert (not (not cond_8@351@01)))
(check-sat)
; unsat
(pop) ; 44
; 0.00s
; (get-info :all-statistics)
; [then-branch: 901 | !(cond_8@351@01) | live]
; [else-branch: 901 | cond_8@351@01 | dead]
(set-option :timeout 0)
(push) ; 44
; [then-branch: 901 | !(cond_8@351@01)]
(assert (not cond_8@351@01))
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 45
(pop) ; 45
; Joined path conditions
(push) ; 45
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 45
; Joined path conditions
(pop) ; 44
(pop) ; 43
; Joined path conditions
(assert (not cond_8@351@01))
(pop) ; 42
(pop) ; 41
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_3@349@01)))
; [eval] bypass1_3 ==> tmp1_37 == _loop_measures_3
(push) ; 41
; [then-branch: 902 | bypass1_3@348@01 | dead]
; [else-branch: 902 | !(bypass1_3@348@01) | live]
(push) ; 42
; [else-branch: 902 | !(bypass1_3@348@01)]
(pop) ; 42
(pop) ; 41
; Joined path conditions
; [eval] bypass1_3 ==> tmp1_38 == _loop_check_before_3
(push) ; 41
; [then-branch: 903 | bypass1_3@348@01 | dead]
; [else-branch: 903 | !(bypass1_3@348@01) | live]
(push) ; 42
; [else-branch: 903 | !(bypass1_3@348@01)]
(pop) ; 42
(pop) ; 41
; Joined path conditions
; [eval] bypass2_3 ==> tmp2_37 == _loop_measures_3_0
(push) ; 41
; [then-branch: 904 | bypass2_3@349@01 | dead]
; [else-branch: 904 | !(bypass2_3@349@01) | live]
(push) ; 42
; [else-branch: 904 | !(bypass2_3@349@01)]
(pop) ; 42
(pop) ; 41
; Joined path conditions
; [eval] bypass2_3 ==> tmp2_38 == _loop_check_before_3_0
(push) ; 41
; [then-branch: 905 | bypass2_3@349@01 | dead]
; [else-branch: 905 | !(bypass2_3@349@01) | live]
(push) ; 42
; [else-branch: 905 | !(bypass2_3@349@01)]
(pop) ; 42
(pop) ; 41
; Joined path conditions
(pop) ; 40
; [eval] !p2_7
(push) ; 40
(set-option :timeout 10)
(assert (not p2_7@416@01))
(check-sat)
; unsat
(pop) ; 40
; 0.00s
; (get-info :all-statistics)
; [then-branch: 906 | !(p2_7@416@01) | dead]
; [else-branch: 906 | p2_7@416@01 | live]
(set-option :timeout 0)
(push) ; 40
; [else-branch: 906 | p2_7@416@01]
(assert p2_7@416@01)
(pop) ; 40
(pop) ; 39
; [eval] !p1_7
(push) ; 39
(set-option :timeout 10)
(assert (not p1_7@415@01))
(check-sat)
; unsat
(pop) ; 39
; 0.00s
; (get-info :all-statistics)
; [then-branch: 907 | !(p1_7@415@01) | dead]
; [else-branch: 907 | p1_7@415@01 | live]
(set-option :timeout 0)
(push) ; 39
; [else-branch: 907 | p1_7@415@01]
(assert p1_7@415@01)
(pop) ; 39
(pop) ; 38
; [eval] !(p1_5 && (!bypass1_3 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))) || p2_5 && (!bypass2_3 && int___eq__(x_1_0, __prim__int___box__(1))))
; [eval] p1_5 && (!bypass1_3 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))) || p2_5 && (!bypass2_3 && int___eq__(x_1_0, __prim__int___box__(1)))
; [eval] p1_5 && (!bypass1_3 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1)))
(push) ; 38
; [then-branch: 908 | !(p1_5@204@01) | live]
; [else-branch: 908 | p1_5@204@01 | live]
(push) ; 39
; [then-branch: 908 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 39
(push) ; 39
; [else-branch: 908 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_3
(push) ; 40
; [then-branch: 909 | bypass1_3@348@01 | live]
; [else-branch: 909 | !(bypass1_3@348@01) | live]
(push) ; 41
; [then-branch: 909 | bypass1_3@348@01]
(assert bypass1_3@348@01)
(pop) ; 41
(push) ; 41
; [else-branch: 909 | !(bypass1_3@348@01)]
(assert (not bypass1_3@348@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(1))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 42
; [eval] _isDefined(id)
(push) ; 43
(pop) ; 43
; Joined path conditions
(pop) ; 42
; Joined path conditions
; [eval] __prim__int___box__(1)
(push) ; 42
(pop) ; 42
; Joined path conditions
(push) ; 42
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 42
; Joined path conditions
(pop) ; 41
(pop) ; 40
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_3@348@01) bypass1_3@348@01))
(pop) ; 39
(pop) ; 38
; Joined path conditions
; Joined path conditions
(push) ; 38
; [then-branch: 910 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) | live]
; [else-branch: 910 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))) | live]
(push) ; 39
; [then-branch: 910 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_3@348@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
(pop) ; 39
(push) ; 39
; [else-branch: 910 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))))
; [eval] p2_5 && (!bypass2_3 && int___eq__(x_1_0, __prim__int___box__(1)))
(push) ; 40
; [then-branch: 911 | !(p2_5@205@01) | live]
; [else-branch: 911 | p2_5@205@01 | live]
(push) ; 41
; [then-branch: 911 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 41
(push) ; 41
; [else-branch: 911 | p2_5@205@01]
(assert p2_5@205@01)
; [eval] !bypass2_3
(push) ; 42
; [then-branch: 912 | bypass2_3@349@01 | live]
; [else-branch: 912 | !(bypass2_3@349@01) | live]
(push) ; 43
; [then-branch: 912 | bypass2_3@349@01]
(assert bypass2_3@349@01)
(pop) ; 43
(push) ; 43
; [else-branch: 912 | !(bypass2_3@349@01)]
(assert (not bypass2_3@349@01))
; [eval] int___eq__(x_1_0, __prim__int___box__(1))
; [eval] __prim__int___box__(1)
(push) ; 44
(pop) ; 44
; Joined path conditions
(push) ; 44
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 44
; Joined path conditions
(pop) ; 43
(pop) ; 42
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_3@349@01) bypass2_3@349@01))
(pop) ; 41
(pop) ; 40
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (and p2_5@205@01 (or (not bypass2_3@349@01) bypass2_3@349@01))))
(pop) ; 39
(pop) ; 38
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_3@348@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
  (and
    (not
      (and
        p1_5@204@01
        (and
          (not bypass1_3@348@01)
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1)))))
    (=>
      p2_5@205@01
      (and p2_5@205@01 (or (not bypass2_3@349@01) bypass2_3@349@01))))))
(push) ; 38
(set-option :timeout 10)
(assert (not (or
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
  (and
    p2_5@205@01
    (and
      (not bypass2_3@349@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1)))))))
(check-sat)
; unsat
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
; [then-branch: 913 | !(p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) || p2_5@205@01 && !(bypass2_3@349@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1))) | dead]
; [else-branch: 913 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) || p2_5@205@01 && !(bypass2_3@349@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1)) | live]
(set-option :timeout 0)
(push) ; 38
; [else-branch: 913 | p1_5@204@01 && !(bypass1_3@348@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 1)) || p2_5@205@01 && !(bypass2_3@349@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 1))]
(assert (or
  (and
    p1_5@204@01
    (and
      (not bypass1_3@348@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 1))))
  (and
    p2_5@205@01
    (and
      (not bypass2_3@349@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 1))))))
(pop) ; 38
(pop) ; 37
(pop) ; 36
(pop) ; 35
; [eval] !p2_5
(push) ; 35
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unsat
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
; [then-branch: 914 | !(p2_5@205@01) | dead]
; [else-branch: 914 | p2_5@205@01 | live]
(set-option :timeout 0)
(push) ; 35
; [else-branch: 914 | p2_5@205@01]
(assert p2_5@205@01)
(pop) ; 35
(pop) ; 34
; [eval] !p1_5
(push) ; 34
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unsat
(pop) ; 34
; 0.00s
; (get-info :all-statistics)
; [then-branch: 915 | !(p1_5@204@01) | dead]
; [else-branch: 915 | p1_5@204@01 | live]
(set-option :timeout 0)
(push) ; 34
; [else-branch: 915 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 34
(pop) ; 33
(pop) ; 32
(pop) ; 31
; [eval] !p2_5
(push) ; 31
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
; [then-branch: 916 | !(p2_5@205@01) | dead]
; [else-branch: 916 | p2_5@205@01 | live]
(set-option :timeout 0)
(push) ; 31
; [else-branch: 916 | p2_5@205@01]
(assert p2_5@205@01)
(pop) ; 31
(pop) ; 30
; [eval] !p1_5
(push) ; 30
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
; [then-branch: 917 | !(p1_5@204@01) | dead]
; [else-branch: 917 | p1_5@204@01 | live]
(set-option :timeout 0)
(push) ; 30
; [else-branch: 917 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 30
(pop) ; 29
; [eval] !p2_5
(push) ; 29
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [then-branch: 918 | !(p2_5@205@01) | dead]
; [else-branch: 918 | p2_5@205@01 | live]
(set-option :timeout 0)
(push) ; 29
; [else-branch: 918 | p2_5@205@01]
(assert p2_5@205@01)
(pop) ; 29
(pop) ; 28
; [eval] !p1_5
(push) ; 28
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
; [then-branch: 919 | !(p1_5@204@01) | dead]
; [else-branch: 919 | p1_5@204@01 | live]
(set-option :timeout 0)
(push) ; 28
; [else-branch: 919 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 28
(pop) ; 27
; [eval] !p2_5
(push) ; 27
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unsat
(pop) ; 27
; 0.00s
; (get-info :all-statistics)
; [then-branch: 920 | !(p2_5@205@01) | dead]
; [else-branch: 920 | p2_5@205@01 | live]
(set-option :timeout 0)
(push) ; 27
; [else-branch: 920 | p2_5@205@01]
(assert p2_5@205@01)
(pop) ; 27
(pop) ; 26
; [eval] !p1_5
(push) ; 26
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 921 | !(p1_5@204@01) | dead]
; [else-branch: 921 | p1_5@204@01 | live]
(set-option :timeout 0)
(push) ; 26
; [else-branch: 921 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 26
(pop) ; 25
; [eval] !(p1_5 || p2_5)
; [eval] p1_5 || p2_5
(push) ; 25
; [then-branch: 922 | p1_5@204@01 | live]
; [else-branch: 922 | !(p1_5@204@01) | live]
(push) ; 26
; [then-branch: 922 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 26
(push) ; 26
; [else-branch: 922 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 26
(pop) ; 25
; Joined path conditions
; Joined path conditions
; [then-branch: 923 | !(p1_5@204@01 || p2_5@205@01) | dead]
; [else-branch: 923 | p1_5@204@01 || p2_5@205@01 | live]
(push) ; 25
; [else-branch: 923 | p1_5@204@01 || p2_5@205@01]
(pop) ; 25
(pop) ; 24
(pop) ; 23
; [eval] !p2_5
(push) ; 23
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
; [then-branch: 924 | !(p2_5@205@01) | dead]
; [else-branch: 924 | p2_5@205@01 | live]
(set-option :timeout 0)
(push) ; 23
; [else-branch: 924 | p2_5@205@01]
(assert p2_5@205@01)
(pop) ; 23
(pop) ; 22
(pop) ; 21
; [eval] !p1_5
(push) ; 21
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [then-branch: 925 | !(p1_5@204@01) | dead]
; [else-branch: 925 | p1_5@204@01 | live]
(set-option :timeout 0)
(push) ; 21
; [else-branch: 925 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 21
(pop) ; 20
(pop) ; 19
(push) ; 19
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@327@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))
  $Snap.unit))
(assert p1_5@204@01)
(assert (not bypass1_2@315@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))
  $Snap.unit))
(assert p2_5@205@01)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))
  $Snap.unit))
(assert (=>
  (and p1_5@204@01 (not bypass1_2@315@01))
  (and p1_5@204@01 (not bypass1_2@315@01) (not cond_5@317@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))
  $Snap.unit))
(assert (=>
  (and p2_5@205@01 (not bypass2_2@316@01))
  (and p2_5@205@01 (not bypass2_2@316@01) (not cond_6@318@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))))))))))
  $Snap.unit))
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@327@01))) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@327@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@327@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@327@01)))))))
(assert (= $t@327@01 ($Snap.combine ($Snap.first $t@327@01) ($Snap.second $t@327@01))))
(assert (= ($Snap.first $t@327@01) $Snap.unit))
(assert (=>
  (and p1_5@204@01 (not bypass1_2@315@01))
  (<= _residue_159@210@01 _residue_163@230@01)))
(assert (=
  ($Snap.second $t@327@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@327@01))
    ($Snap.second ($Snap.second $t@327@01)))))
(assert (= ($Snap.first ($Snap.second $t@327@01)) $Snap.unit))
(assert (=>
  (and p2_5@205@01 (not bypass2_2@316@01))
  (<= _residue_159_0@211@01 _residue_163_0@231@01)))
(assert (=
  ($Snap.second ($Snap.second $t@327@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@327@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@327@01))))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 20
; [eval] p1_5 && (!bypass1_2 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))) || p2_5 && (!bypass2_2 && int___eq__(x_1_0, __prim__int___box__(0)))
; [eval] p1_5 && (!bypass1_2 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)))
(push) ; 21
; [then-branch: 926 | !(p1_5@204@01) | live]
; [else-branch: 926 | p1_5@204@01 | live]
(push) ; 22
; [then-branch: 926 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 22
(push) ; 22
; [else-branch: 926 | p1_5@204@01]
; [eval] !bypass1_2
(push) ; 23
; [then-branch: 927 | bypass1_2@315@01 | live]
; [else-branch: 927 | !(bypass1_2@315@01) | live]
(push) ; 24
; [then-branch: 927 | bypass1_2@315@01]
(assert bypass1_2@315@01)
(pop) ; 24
(push) ; 24
; [else-branch: 927 | !(bypass1_2@315@01)]
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 25
; [eval] _isDefined(id)
(push) ; 26
(pop) ; 26
; Joined path conditions
(pop) ; 25
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 25
(pop) ; 25
; Joined path conditions
(push) ; 25
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 25
; Joined path conditions
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_2@315@01) bypass1_2@315@01))
(pop) ; 22
(pop) ; 21
; Joined path conditions
; Joined path conditions
(assert (=> p1_5@204@01 (or (not bypass1_2@315@01) bypass1_2@315@01)))
(push) ; 21
; [then-branch: 928 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) | live]
; [else-branch: 928 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))) | live]
(push) ; 22
; [then-branch: 928 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_2@315@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
(pop) ; 22
(push) ; 22
; [else-branch: 928 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))))
; [eval] p2_5 && (!bypass2_2 && int___eq__(x_1_0, __prim__int___box__(0)))
(push) ; 23
; [then-branch: 929 | !(p2_5@205@01) | live]
; [else-branch: 929 | p2_5@205@01 | live]
(push) ; 24
; [then-branch: 929 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 24
(push) ; 24
; [else-branch: 929 | p2_5@205@01]
; [eval] !bypass2_2
(push) ; 25
; [then-branch: 930 | bypass2_2@316@01 | live]
; [else-branch: 930 | !(bypass2_2@316@01) | live]
(push) ; 26
; [then-branch: 930 | bypass2_2@316@01]
(assert bypass2_2@316@01)
(pop) ; 26
(push) ; 26
; [else-branch: 930 | !(bypass2_2@316@01)]
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 27
(pop) ; 27
; Joined path conditions
(push) ; 27
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 27
; Joined path conditions
(pop) ; 26
(pop) ; 25
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_2@316@01) bypass2_2@316@01))
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (or (not bypass2_2@316@01) bypass2_2@316@01)))
(pop) ; 22
(pop) ; 21
; Joined path conditions
(assert (=>
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
  (and
    p1_5@204@01
    (not bypass1_2@315@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_2@315@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
  (and
    (not
      (and
        p1_5@204@01
        (and
          (not bypass1_2@315@01)
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
    (=> p2_5@205@01 (or (not bypass2_2@316@01) bypass2_2@316@01)))))
(assert (or
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_2@315@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))))
(pop) ; 20
(push) ; 20
; [eval] !(p1_5 && (!bypass1_2 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))) || p2_5 && (!bypass2_2 && int___eq__(x_1_0, __prim__int___box__(0))))
; [eval] p1_5 && (!bypass1_2 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))) || p2_5 && (!bypass2_2 && int___eq__(x_1_0, __prim__int___box__(0)))
; [eval] p1_5 && (!bypass1_2 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)))
(push) ; 21
; [then-branch: 931 | !(p1_5@204@01) | live]
; [else-branch: 931 | p1_5@204@01 | live]
(push) ; 22
; [then-branch: 931 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 22
(push) ; 22
; [else-branch: 931 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_2
(push) ; 23
; [then-branch: 932 | bypass1_2@315@01 | live]
; [else-branch: 932 | !(bypass1_2@315@01) | live]
(push) ; 24
; [then-branch: 932 | bypass1_2@315@01]
(assert bypass1_2@315@01)
(pop) ; 24
(push) ; 24
; [else-branch: 932 | !(bypass1_2@315@01)]
(assert (not bypass1_2@315@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 25
; [eval] _isDefined(id)
(push) ; 26
(pop) ; 26
; Joined path conditions
(pop) ; 25
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 25
(pop) ; 25
; Joined path conditions
(push) ; 25
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 25
; Joined path conditions
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_2@315@01) bypass1_2@315@01))
(pop) ; 22
(pop) ; 21
; Joined path conditions
; Joined path conditions
(assert (=> p1_5@204@01 (and p1_5@204@01 (or (not bypass1_2@315@01) bypass1_2@315@01))))
(push) ; 21
; [then-branch: 933 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) | live]
; [else-branch: 933 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))) | live]
(push) ; 22
; [then-branch: 933 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_2@315@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
(pop) ; 22
(push) ; 22
; [else-branch: 933 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))))
; [eval] p2_5 && (!bypass2_2 && int___eq__(x_1_0, __prim__int___box__(0)))
(push) ; 23
; [then-branch: 934 | !(p2_5@205@01) | live]
; [else-branch: 934 | p2_5@205@01 | live]
(push) ; 24
; [then-branch: 934 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 24
(push) ; 24
; [else-branch: 934 | p2_5@205@01]
; [eval] !bypass2_2
(push) ; 25
; [then-branch: 935 | bypass2_2@316@01 | live]
; [else-branch: 935 | !(bypass2_2@316@01) | live]
(push) ; 26
; [then-branch: 935 | bypass2_2@316@01]
(assert bypass2_2@316@01)
(pop) ; 26
(push) ; 26
; [else-branch: 935 | !(bypass2_2@316@01)]
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 27
(pop) ; 27
; Joined path conditions
(push) ; 27
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 27
; Joined path conditions
(pop) ; 26
(pop) ; 25
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_2@316@01) bypass2_2@316@01))
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (or (not bypass2_2@316@01) bypass2_2@316@01)))
(pop) ; 22
(pop) ; 21
; Joined path conditions
(assert (=>
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
  (and
    p1_5@204@01
    (not bypass1_2@315@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_2@315@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
  (and
    (not
      (and
        p1_5@204@01
        (and
          (not bypass1_2@315@01)
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
    (=> p2_5@205@01 (or (not bypass2_2@316@01) bypass2_2@316@01)))))
(assert (or
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_2@315@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))))
(pop) ; 20
; Loop head block: Follow loop-internal edges
; [eval] p1_5 && (!bypass1_2 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))) || p2_5 && (!bypass2_2 && int___eq__(x_1_0, __prim__int___box__(0)))
; [eval] p1_5 && (!bypass1_2 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)))
(push) ; 20
; [then-branch: 936 | !(p1_5@204@01) | live]
; [else-branch: 936 | p1_5@204@01 | live]
(push) ; 21
; [then-branch: 936 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 21
(push) ; 21
; [else-branch: 936 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_2
(push) ; 22
; [then-branch: 937 | bypass1_2@315@01 | live]
; [else-branch: 937 | !(bypass1_2@315@01) | live]
(push) ; 23
; [then-branch: 937 | bypass1_2@315@01]
(assert bypass1_2@315@01)
(pop) ; 23
(push) ; 23
; [else-branch: 937 | !(bypass1_2@315@01)]
(assert (not bypass1_2@315@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 24
; [eval] _isDefined(id)
(push) ; 25
(pop) ; 25
; Joined path conditions
(pop) ; 24
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 24
(pop) ; 24
; Joined path conditions
(push) ; 24
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 24
; Joined path conditions
(pop) ; 23
(pop) ; 22
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_2@315@01) bypass1_2@315@01))
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(assert (=> p1_5@204@01 (and p1_5@204@01 (or (not bypass1_2@315@01) bypass1_2@315@01))))
(push) ; 20
; [then-branch: 938 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) | live]
; [else-branch: 938 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))) | live]
(push) ; 21
; [then-branch: 938 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_2@315@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
(pop) ; 21
(push) ; 21
; [else-branch: 938 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))))
; [eval] p2_5 && (!bypass2_2 && int___eq__(x_1_0, __prim__int___box__(0)))
(push) ; 22
; [then-branch: 939 | !(p2_5@205@01) | live]
; [else-branch: 939 | p2_5@205@01 | live]
(push) ; 23
; [then-branch: 939 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 23
(push) ; 23
; [else-branch: 939 | p2_5@205@01]
; [eval] !bypass2_2
(push) ; 24
; [then-branch: 940 | bypass2_2@316@01 | live]
; [else-branch: 940 | !(bypass2_2@316@01) | live]
(push) ; 25
; [then-branch: 940 | bypass2_2@316@01]
(assert bypass2_2@316@01)
(pop) ; 25
(push) ; 25
; [else-branch: 940 | !(bypass2_2@316@01)]
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 26
(pop) ; 26
; Joined path conditions
(push) ; 26
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 26
; Joined path conditions
(pop) ; 25
(pop) ; 24
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_2@316@01) bypass2_2@316@01))
(pop) ; 23
(pop) ; 22
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (or (not bypass2_2@316@01) bypass2_2@316@01)))
(pop) ; 21
(pop) ; 20
; Joined path conditions
(assert (=>
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
  (and
    p1_5@204@01
    (not bypass1_2@315@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_2@315@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
  (and
    (not
      (and
        p1_5@204@01
        (and
          (not bypass1_2@315@01)
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
    (=> p2_5@205@01 (or (not bypass2_2@316@01) bypass2_2@316@01)))))
(assert (or
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_2@315@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))))
(push) ; 20
(set-option :timeout 10)
(assert (not (not
  (or
    (and
      p1_5@204@01
      (and
        (not bypass1_2@315@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
    (and
      p2_5@205@01
      (and
        (not bypass2_2@316@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))))))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 20
(set-option :timeout 10)
(assert (not (or
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
  (and
    p2_5@205@01
    (and
      (not bypass2_2@316@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 941 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) || p2_5@205@01 && !(bypass2_2@316@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0)) | live]
; [else-branch: 941 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) || p2_5@205@01 && !(bypass2_2@316@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0))) | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 941 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) || p2_5@205@01 && !(bypass2_2@316@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0))]
(assert (or
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
  (and
    p2_5@205@01
    (and
      (not bypass2_2@316@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))))
; [exec]
; p1_6 := p1_5 &&
;   int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] p1_5 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
(push) ; 21
; [then-branch: 942 | !(p1_5@204@01) | live]
; [else-branch: 942 | p1_5@204@01 | live]
(push) ; 22
; [then-branch: 942 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 22
(push) ; 22
; [else-branch: 942 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 23
; [eval] _isDefined(id)
(push) ; 24
(pop) ; 24
; Joined path conditions
(pop) ; 23
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 23
(pop) ; 23
; Joined path conditions
(push) ; 23
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 23
; Joined path conditions
(pop) ; 22
(pop) ; 21
; Joined path conditions
; Joined path conditions
(declare-const p1_6@421@01 Bool)
(assert (=
  p1_6@421@01
  (and
    p1_5@204@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
; [exec]
; p2_6 := p2_5 && int___eq__(x_1_0, __prim__int___box__(0))
; [eval] p2_5 && int___eq__(x_1_0, __prim__int___box__(0))
(push) ; 21
; [then-branch: 943 | !(p2_5@205@01) | live]
; [else-branch: 943 | p2_5@205@01 | live]
(push) ; 22
; [then-branch: 943 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 22
(push) ; 22
; [else-branch: 943 | p2_5@205@01]
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 23
(pop) ; 23
; Joined path conditions
(push) ; 23
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 23
; Joined path conditions
(pop) ; 22
(pop) ; 21
; Joined path conditions
; Joined path conditions
(declare-const p2_6@422@01 Bool)
(assert (=
  p2_6@422@01
  (and
    p2_5@205@01
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))))
; [exec]
; idle1_2 := p1_5 &&
;   !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] p1_5 && !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
(push) ; 21
; [then-branch: 944 | !(p1_5@204@01) | live]
; [else-branch: 944 | p1_5@204@01 | live]
(push) ; 22
; [then-branch: 944 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 22
(push) ; 22
; [else-branch: 944 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 23
; [eval] _isDefined(id)
(push) ; 24
(pop) ; 24
; Joined path conditions
(pop) ; 23
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 23
(pop) ; 23
; Joined path conditions
(push) ; 23
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 23
; Joined path conditions
(pop) ; 22
(pop) ; 21
; Joined path conditions
; Joined path conditions
(declare-const idle1_2@423@01 Bool)
(assert (=
  idle1_2@423@01
  (and
    p1_5@204@01
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))))
; [exec]
; idle2_2 := p2_5 && !int___eq__(x_1_0, __prim__int___box__(0))
; [eval] p2_5 && !int___eq__(x_1_0, __prim__int___box__(0))
(push) ; 21
; [then-branch: 945 | !(p2_5@205@01) | live]
; [else-branch: 945 | p2_5@205@01 | live]
(push) ; 22
; [then-branch: 945 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 22
(push) ; 22
; [else-branch: 945 | p2_5@205@01]
; [eval] !int___eq__(x_1_0, __prim__int___box__(0))
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 23
(pop) ; 23
; Joined path conditions
(push) ; 23
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 23
; Joined path conditions
(pop) ; 22
(pop) ; 21
; Joined path conditions
; Joined path conditions
(declare-const idle2_2@424@01 Bool)
(assert (=
  idle2_2@424@01
  (and
    p2_5@205@01
    (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))))
(push) ; 21
(set-option :timeout 10)
(assert (not (not p1_6@421@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not p1_6@421@01))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [then-branch: 946 | p1_6@421@01 | live]
; [else-branch: 946 | !(p1_6@421@01) | dead]
(set-option :timeout 0)
(push) ; 21
; [then-branch: 946 | p1_6@421@01]
(assert p1_6@421@01)
; [exec]
; _loop_measures_2 := Seq(Measure$create(!int___eq__(_checkDefined(x_1, 3235704),
;   __prim__int___box__(0)), _cthread_159, 0))
; [eval] Seq(Measure$create(!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)), _cthread_159, 0))
; [eval] Measure$create(!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)), _cthread_159, 0)
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 22
; [eval] _isDefined(id)
(push) ; 23
(pop) ; 23
; Joined path conditions
(pop) ; 22
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 22
(pop) ; 22
; Joined path conditions
(push) ; 22
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 22
; Joined path conditions
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))) _cthread_159@206@01 0)))
  1))
(declare-const _loop_measures_2@425@01 Seq<Measure$>)
(assert (=
  _loop_measures_2@425@01
  (Seq_singleton (Measure$create<Measure$> (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))) _cthread_159@206@01 0))))
; [exec]
; _loop_check_before_2 := false
(push) ; 22
(set-option :timeout 10)
(assert (not (not p2_6@422@01)))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 22
(set-option :timeout 10)
(assert (not p2_6@422@01))
(check-sat)
; unsat
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 947 | p2_6@422@01 | live]
; [else-branch: 947 | !(p2_6@422@01) | dead]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 947 | p2_6@422@01]
(assert p2_6@422@01)
; [exec]
; _loop_measures_2_0 := Seq(Measure$create(!int___eq__(x_1_0, __prim__int___box__(0)),
;   _cthread_159_0, 0))
; [eval] Seq(Measure$create(!int___eq__(x_1_0, __prim__int___box__(0)), _cthread_159_0, 0))
; [eval] Measure$create(!int___eq__(x_1_0, __prim__int___box__(0)), _cthread_159_0, 0)
; [eval] !int___eq__(x_1_0, __prim__int___box__(0))
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 23
(pop) ; 23
; Joined path conditions
(push) ; 23
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 23
; Joined path conditions
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> (not
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))) _cthread_159_0@207@01 0)))
  1))
(declare-const _loop_measures_2_0@426@01 Seq<Measure$>)
(assert (=
  _loop_measures_2_0@426@01
  (Seq_singleton (Measure$create<Measure$> (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))) _cthread_159_0@207@01 0))))
; [exec]
; _loop_check_before_2_0 := false
; [exec]
; assert (p1_6 ==>
;   _loop_termination_flag_2 ==>
;   !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) ||
;   !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) &&
;   Measure$check(_loop_measures_2, _cthread_159, 0)) &&
;   (p2_6 ==>
;   _loop_termination_flag_2_0 ==>
;   !int___eq__(x_1_0, __prim__int___box__(0)) ||
;   !int___eq__(x_1_0, __prim__int___box__(0)) &&
;   Measure$check(_loop_measures_2_0, _cthread_159_0, 0))
; [eval] p1_6 ==> _loop_termination_flag_2 ==> !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) || !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) && Measure$check(_loop_measures_2, _cthread_159, 0)
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not p1_6@421@01)))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 948 | p1_6@421@01 | live]
; [else-branch: 948 | !(p1_6@421@01) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 948 | p1_6@421@01]
; [eval] _loop_termination_flag_2 ==> !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) || !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) && Measure$check(_loop_measures_2, _cthread_159, 0)
(push) ; 25
(push) ; 26
(set-option :timeout 10)
(assert (not (not _loop_termination_flag_2@312@01)))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 949 | _loop_termination_flag_2@312@01 | dead]
; [else-branch: 949 | !(_loop_termination_flag_2@312@01) | live]
(set-option :timeout 0)
(push) ; 26
; [else-branch: 949 | !(_loop_termination_flag_2@312@01)]
(assert (not _loop_termination_flag_2@312@01))
(pop) ; 26
(pop) ; 25
; Joined path conditions
(assert (not _loop_termination_flag_2@312@01))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=> p1_6@421@01 (not _loop_termination_flag_2@312@01)))
; [eval] p2_6 ==> _loop_termination_flag_2_0 ==> !int___eq__(x_1_0, __prim__int___box__(0)) || !int___eq__(x_1_0, __prim__int___box__(0)) && Measure$check(_loop_measures_2_0, _cthread_159_0, 0)
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not p2_6@422@01)))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 950 | p2_6@422@01 | live]
; [else-branch: 950 | !(p2_6@422@01) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 950 | p2_6@422@01]
; [eval] _loop_termination_flag_2_0 ==> !int___eq__(x_1_0, __prim__int___box__(0)) || !int___eq__(x_1_0, __prim__int___box__(0)) && Measure$check(_loop_measures_2_0, _cthread_159_0, 0)
(push) ; 25
(push) ; 26
(set-option :timeout 10)
(assert (not (not _loop_termination_flag_2_0@314@01)))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 951 | _loop_termination_flag_2_0@314@01 | dead]
; [else-branch: 951 | !(_loop_termination_flag_2_0@314@01) | live]
(set-option :timeout 0)
(push) ; 26
; [else-branch: 951 | !(_loop_termination_flag_2_0@314@01)]
(assert (not _loop_termination_flag_2_0@314@01))
(pop) ; 26
(pop) ; 25
; Joined path conditions
(assert (not _loop_termination_flag_2_0@314@01))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=> p2_6@422@01 (not _loop_termination_flag_2_0@314@01)))
; Loop head block: Re-establish invariant
; [eval] p1_5 && !bypass1_2 ==> true
; [eval] p1_5 && !bypass1_2
(push) ; 23
; [then-branch: 952 | !(p1_5@204@01) | live]
; [else-branch: 952 | p1_5@204@01 | live]
(push) ; 24
; [then-branch: 952 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 24
(push) ; 24
; [else-branch: 952 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_2@315@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_2@315@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 953 | p1_5@204@01 && !(bypass1_2@315@01) | live]
; [else-branch: 953 | !(p1_5@204@01 && !(bypass1_2@315@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 953 | p1_5@204@01 && !(bypass1_2@315@01)]
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
; [eval] p2_5 && !bypass2_2 ==> true
; [eval] p2_5 && !bypass2_2
(push) ; 23
; [then-branch: 954 | !(p2_5@205@01) | live]
; [else-branch: 954 | p2_5@205@01 | live]
(push) ; 24
; [then-branch: 954 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 24
(push) ; 24
; [else-branch: 954 | p2_5@205@01]
; [eval] !bypass2_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_2@316@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_2@316@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 955 | p2_5@205@01 && !(bypass2_2@316@01) | live]
; [else-branch: 955 | !(p2_5@205@01 && !(bypass2_2@316@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 955 | p2_5@205@01 && !(bypass2_2@316@01)]
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] p1_5 && !bypass1_2 ==> !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) ==> (int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) ==> false) && true
; [eval] p1_5 && !bypass1_2
(push) ; 23
; [then-branch: 956 | !(p1_5@204@01) | live]
; [else-branch: 956 | p1_5@204@01 | live]
(push) ; 24
; [then-branch: 956 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 24
(push) ; 24
; [else-branch: 956 | p1_5@204@01]
; [eval] !bypass1_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_2@315@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_2@315@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 957 | p1_5@204@01 && !(bypass1_2@315@01) | live]
; [else-branch: 957 | !(p1_5@204@01 && !(bypass1_2@315@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 957 | p1_5@204@01 && !(bypass1_2@315@01)]
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) ==> (int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) ==> false) && true
; [eval] !int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 25
; [eval] _isDefined(id)
(push) ; 26
(pop) ; 26
; Joined path conditions
(pop) ; 25
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 25
(pop) ; 25
; Joined path conditions
(push) ; 25
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 25
; Joined path conditions
(push) ; 25
(push) ; 26
(set-option :timeout 10)
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 958 | !(int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))) | dead]
; [else-branch: 958 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) | live]
(set-option :timeout 0)
(push) ; 26
; [else-branch: 958 | int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
(pop) ; 26
(pop) ; 25
; Joined path conditions
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=>
  (and p1_5@204@01 (not bypass1_2@315@01))
  (and
    p1_5@204@01
    (not bypass1_2@315@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
; [eval] p2_5 && !bypass2_2 ==> !int___eq__(x_1_0, __prim__int___box__(0)) ==> (int___eq__(x_1_0, __prim__int___box__(0)) ==> false) && true
; [eval] p2_5 && !bypass2_2
(push) ; 23
; [then-branch: 959 | !(p2_5@205@01) | live]
; [else-branch: 959 | p2_5@205@01 | live]
(push) ; 24
; [then-branch: 959 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 24
(push) ; 24
; [else-branch: 959 | p2_5@205@01]
; [eval] !bypass2_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_2@316@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_2@316@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 960 | p2_5@205@01 && !(bypass2_2@316@01) | live]
; [else-branch: 960 | !(p2_5@205@01 && !(bypass2_2@316@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 960 | p2_5@205@01 && !(bypass2_2@316@01)]
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] !int___eq__(x_1_0, __prim__int___box__(0)) ==> (int___eq__(x_1_0, __prim__int___box__(0)) ==> false) && true
; [eval] !int___eq__(x_1_0, __prim__int___box__(0))
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 25
(pop) ; 25
; Joined path conditions
(push) ; 25
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 25
; Joined path conditions
(push) ; 25
; [then-branch: 961 | !(int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0))) | dead]
; [else-branch: 961 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0)) | live]
(push) ; 26
; [else-branch: 961 | int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0))]
(pop) ; 26
(pop) ; 25
; Joined path conditions
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] p1_5 && !bypass1_2 ==> !idle1_2 ==> _loop_check_before_2 ==> _loop_termination_flag_2 || (!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_15: Ref [MustInvokeBounded(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBounded] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnbounded] :: false)))))
; [eval] p1_5 && !bypass1_2
(push) ; 23
; [then-branch: 962 | !(p1_5@204@01) | live]
; [else-branch: 962 | p1_5@204@01 | live]
(push) ; 24
; [then-branch: 962 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 24
(push) ; 24
; [else-branch: 962 | p1_5@204@01]
; [eval] !bypass1_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_2@315@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_2@315@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 963 | p1_5@204@01 && !(bypass1_2@315@01) | live]
; [else-branch: 963 | !(p1_5@204@01 && !(bypass1_2@315@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 963 | p1_5@204@01 && !(bypass1_2@315@01)]
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
; [eval] !idle1_2 ==> _loop_check_before_2 ==> _loop_termination_flag_2 || (!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_15: Ref [MustInvokeBounded(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBounded] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnbounded] :: false)))))
; [eval] !idle1_2
(push) ; 25
(push) ; 26
(set-option :timeout 10)
(assert (not idle1_2@423@01))
(check-sat)
; unknown
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (not idle1_2@423@01)))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 964 | !(idle1_2@423@01) | live]
; [else-branch: 964 | idle1_2@423@01 | dead]
(set-option :timeout 0)
(push) ; 26
; [then-branch: 964 | !(idle1_2@423@01)]
(assert (not idle1_2@423@01))
; [eval] _loop_check_before_2 ==> _loop_termination_flag_2 || (!int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)) || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_15: Ref [MustInvokeBounded(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBounded] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnbounded] :: false)))))
(push) ; 27
; [then-branch: 965 | False | dead]
; [else-branch: 965 | True | live]
(push) ; 28
; [else-branch: 965 | True]
(pop) ; 28
(pop) ; 27
; Joined path conditions
(pop) ; 26
(pop) ; 25
; Joined path conditions
(assert (not idle1_2@423@01))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=>
  (and p1_5@204@01 (not bypass1_2@315@01))
  (and p1_5@204@01 (not bypass1_2@315@01) (not idle1_2@423@01))))
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
; [eval] p2_5 && !bypass2_2 ==> !idle2_2 ==> _loop_check_before_2_0 ==> _loop_termination_flag_2_0 || (!int___eq__(x_1_0, __prim__int___box__(0)) || perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_15: Ref [MustInvokeBounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBoundedp] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnboundedp] :: false)))))
; [eval] p2_5 && !bypass2_2
(push) ; 23
; [then-branch: 966 | !(p2_5@205@01) | live]
; [else-branch: 966 | p2_5@205@01 | live]
(push) ; 24
; [then-branch: 966 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 24
(push) ; 24
; [else-branch: 966 | p2_5@205@01]
; [eval] !bypass2_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_2@316@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_2@316@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 967 | p2_5@205@01 && !(bypass2_2@316@01) | live]
; [else-branch: 967 | !(p2_5@205@01 && !(bypass2_2@316@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 967 | p2_5@205@01 && !(bypass2_2@316@01)]
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] !idle2_2 ==> _loop_check_before_2_0 ==> _loop_termination_flag_2_0 || (!int___eq__(x_1_0, __prim__int___box__(0)) || perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_15: Ref [MustInvokeBounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBoundedp] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnboundedp] :: false)))))
; [eval] !idle2_2
(push) ; 25
(push) ; 26
(set-option :timeout 10)
(assert (not idle2_2@424@01))
(check-sat)
; unknown
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (not idle2_2@424@01)))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 968 | !(idle2_2@424@01) | live]
; [else-branch: 968 | idle2_2@424@01 | dead]
(set-option :timeout 0)
(push) ; 26
; [then-branch: 968 | !(idle2_2@424@01)]
(assert (not idle2_2@424@01))
; [eval] _loop_check_before_2_0 ==> _loop_termination_flag_2_0 || (!int___eq__(x_1_0, __prim__int___box__(0)) || perm(MustTerminate_0(_cthread_159_0)) == none && ((forperm _r_15: Ref [MustInvokeBounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBoundedp] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnboundedp] :: false)))))
(push) ; 27
; [then-branch: 969 | False | dead]
; [else-branch: 969 | True | live]
(push) ; 28
; [else-branch: 969 | True]
(pop) ; 28
(pop) ; 27
; Joined path conditions
(pop) ; 26
(pop) ; 25
; Joined path conditions
(assert (not idle2_2@424@01))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=>
  (and p2_5@205@01 (not bypass2_2@316@01))
  (and p2_5@205@01 (not bypass2_2@316@01) (not idle2_2@424@01))))
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] p1_5 && !bypass1_2 ==> !idle1_2 ==> !_loop_check_before_2 ==> (forperm _r_15: Ref [MustInvokeBounded(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBounded] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnbounded] :: false)))
; [eval] p1_5 && !bypass1_2
(push) ; 23
; [then-branch: 970 | !(p1_5@204@01) | live]
; [else-branch: 970 | p1_5@204@01 | live]
(push) ; 24
; [then-branch: 970 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 24
(push) ; 24
; [else-branch: 970 | p1_5@204@01]
; [eval] !bypass1_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_2@315@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_2@315@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 971 | p1_5@204@01 && !(bypass1_2@315@01) | live]
; [else-branch: 971 | !(p1_5@204@01 && !(bypass1_2@315@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 971 | p1_5@204@01 && !(bypass1_2@315@01)]
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
; [eval] !idle1_2 ==> !_loop_check_before_2 ==> (forperm _r_15: Ref [MustInvokeBounded(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBounded] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnbounded] :: false)))
; [eval] !idle1_2
(push) ; 25
(push) ; 26
(set-option :timeout 10)
(assert (not idle1_2@423@01))
(check-sat)
; unknown
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (not idle1_2@423@01)))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 972 | !(idle1_2@423@01) | live]
; [else-branch: 972 | idle1_2@423@01 | dead]
(set-option :timeout 0)
(push) ; 26
; [then-branch: 972 | !(idle1_2@423@01)]
(assert (not idle1_2@423@01))
; [eval] !_loop_check_before_2 ==> (forperm _r_15: Ref [MustInvokeBounded(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBounded] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_2
(push) ; 27
(push) ; 28
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
; [then-branch: 973 | True | live]
; [else-branch: 973 | False | dead]
(set-option :timeout 0)
(push) ; 28
; [then-branch: 973 | True]
; [eval] (forperm _r_15: Ref [MustInvokeBounded(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBounded] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_15: Ref [MustInvokeBounded(_r_15)] :: false)
(push) ; 29
; [then-branch: 974 | False | live]
; [else-branch: 974 | True | live]
(push) ; 30
; [then-branch: 974 | False]
(assert false)
(pop) ; 30
(push) ; 30
; [else-branch: 974 | True]
; [eval] (forperm _r_15: Ref [MustInvokeUnbounded(_r_15)] :: false)
(push) ; 31
; [then-branch: 975 | False | live]
; [else-branch: 975 | True | live]
(push) ; 32
; [then-branch: 975 | False]
(assert false)
(pop) ; 32
(push) ; 32
; [else-branch: 975 | True]
; [eval] (forperm _r_15: Ref [_r_15.MustReleaseBounded] :: false)
(push) ; 33
; [then-branch: 976 | False | live]
; [else-branch: 976 | True | live]
(push) ; 34
; [then-branch: 976 | False]
(assert false)
(pop) ; 34
(push) ; 34
; [else-branch: 976 | True]
; [eval] (forperm _r_15: Ref [_r_15.MustReleaseUnbounded] :: false)
(pop) ; 34
(pop) ; 33
; Joined path conditions
; Joined path conditions
(pop) ; 32
(pop) ; 31
; Joined path conditions
; Joined path conditions
(pop) ; 30
(pop) ; 29
; Joined path conditions
; Joined path conditions
(pop) ; 28
(pop) ; 27
; Joined path conditions
(pop) ; 26
(pop) ; 25
; Joined path conditions
(assert (not idle1_2@423@01))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
; [eval] p2_5 && !bypass2_2 ==> !idle2_2 ==> !_loop_check_before_2_0 ==> (forperm _r_15: Ref [MustInvokeBounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBoundedp] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnboundedp] :: false)))
; [eval] p2_5 && !bypass2_2
(push) ; 23
; [then-branch: 977 | !(p2_5@205@01) | live]
; [else-branch: 977 | p2_5@205@01 | live]
(push) ; 24
; [then-branch: 977 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 24
(push) ; 24
; [else-branch: 977 | p2_5@205@01]
; [eval] !bypass2_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_2@316@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_2@316@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 978 | p2_5@205@01 && !(bypass2_2@316@01) | live]
; [else-branch: 978 | !(p2_5@205@01 && !(bypass2_2@316@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 978 | p2_5@205@01 && !(bypass2_2@316@01)]
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] !idle2_2 ==> !_loop_check_before_2_0 ==> (forperm _r_15: Ref [MustInvokeBounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBoundedp] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnboundedp] :: false)))
; [eval] !idle2_2
(push) ; 25
(push) ; 26
(set-option :timeout 10)
(assert (not idle2_2@424@01))
(check-sat)
; unknown
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (not idle2_2@424@01)))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 979 | !(idle2_2@424@01) | live]
; [else-branch: 979 | idle2_2@424@01 | dead]
(set-option :timeout 0)
(push) ; 26
; [then-branch: 979 | !(idle2_2@424@01)]
(assert (not idle2_2@424@01))
; [eval] !_loop_check_before_2_0 ==> (forperm _r_15: Ref [MustInvokeBounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBoundedp] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnboundedp] :: false)))
; [eval] !_loop_check_before_2_0
(push) ; 27
(push) ; 28
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
; [then-branch: 980 | True | live]
; [else-branch: 980 | False | dead]
(set-option :timeout 0)
(push) ; 28
; [then-branch: 980 | True]
; [eval] (forperm _r_15: Ref [MustInvokeBounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [MustInvokeUnbounded_0(_r_15)] :: false) && ((forperm _r_15: Ref [_r_15.MustReleaseBoundedp] :: false) && (forperm _r_15: Ref [_r_15.MustReleaseUnboundedp] :: false)))
; [eval] (forperm _r_15: Ref [MustInvokeBounded_0(_r_15)] :: false)
(push) ; 29
; [then-branch: 981 | False | live]
; [else-branch: 981 | True | live]
(push) ; 30
; [then-branch: 981 | False]
(assert false)
(pop) ; 30
(push) ; 30
; [else-branch: 981 | True]
; [eval] (forperm _r_15: Ref [MustInvokeUnbounded_0(_r_15)] :: false)
(push) ; 31
; [then-branch: 982 | False | live]
; [else-branch: 982 | True | live]
(push) ; 32
; [then-branch: 982 | False]
(assert false)
(pop) ; 32
(push) ; 32
; [else-branch: 982 | True]
; [eval] (forperm _r_15: Ref [_r_15.MustReleaseBoundedp] :: false)
(push) ; 33
; [then-branch: 983 | False | live]
; [else-branch: 983 | True | live]
(push) ; 34
; [then-branch: 983 | False]
(assert false)
(pop) ; 34
(push) ; 34
; [else-branch: 983 | True]
; [eval] (forperm _r_15: Ref [_r_15.MustReleaseUnboundedp] :: false)
(pop) ; 34
(pop) ; 33
; Joined path conditions
; Joined path conditions
(pop) ; 32
(pop) ; 31
; Joined path conditions
; Joined path conditions
(pop) ; 30
(pop) ; 29
; Joined path conditions
; Joined path conditions
(pop) ; 28
(pop) ; 27
; Joined path conditions
(pop) ; 26
(pop) ; 25
; Joined path conditions
(assert (not idle2_2@424@01))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] p1_5 && !bypass1_2 ==> !cond_5 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] p1_5 && !bypass1_2
(push) ; 23
; [then-branch: 984 | !(p1_5@204@01) | live]
; [else-branch: 984 | p1_5@204@01 | live]
(push) ; 24
; [then-branch: 984 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 24
(push) ; 24
; [else-branch: 984 | p1_5@204@01]
; [eval] !bypass1_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p1_5@204@01 (not bypass1_2@315@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p1_5@204@01 (not bypass1_2@315@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 985 | p1_5@204@01 && !(bypass1_2@315@01) | live]
; [else-branch: 985 | !(p1_5@204@01 && !(bypass1_2@315@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 985 | p1_5@204@01 && !(bypass1_2@315@01)]
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
; [eval] !cond_5 ==> int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] !cond_5
(push) ; 25
(push) ; 26
(set-option :timeout 10)
(assert (not cond_5@317@01))
(check-sat)
; unknown
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (not cond_5@317@01)))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 986 | !(cond_5@317@01) | live]
; [else-branch: 986 | cond_5@317@01 | dead]
(set-option :timeout 0)
(push) ; 26
; [then-branch: 986 | !(cond_5@317@01)]
(assert (not cond_5@317@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 27
; [eval] _isDefined(id)
(push) ; 28
(pop) ; 28
; Joined path conditions
(pop) ; 27
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 27
(pop) ; 27
; Joined path conditions
(push) ; 27
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 27
; Joined path conditions
(pop) ; 26
(pop) ; 25
; Joined path conditions
(assert (not cond_5@317@01))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (and p1_5@204@01 (not bypass1_2@315@01)))
; [eval] p2_5 && !bypass2_2 ==> !cond_6 ==> int___eq__(x_1_0, __prim__int___box__(0))
; [eval] p2_5 && !bypass2_2
(push) ; 23
; [then-branch: 987 | !(p2_5@205@01) | live]
; [else-branch: 987 | p2_5@205@01 | live]
(push) ; 24
; [then-branch: 987 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 24
(push) ; 24
; [else-branch: 987 | p2_5@205@01]
; [eval] !bypass2_2
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not (and p2_5@205@01 (not bypass2_2@316@01)))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (and p2_5@205@01 (not bypass2_2@316@01))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 988 | p2_5@205@01 && !(bypass2_2@316@01) | live]
; [else-branch: 988 | !(p2_5@205@01 && !(bypass2_2@316@01)) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 988 | p2_5@205@01 && !(bypass2_2@316@01)]
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] !cond_6 ==> int___eq__(x_1_0, __prim__int___box__(0))
; [eval] !cond_6
(push) ; 25
(push) ; 26
(set-option :timeout 10)
(assert (not cond_6@318@01))
(check-sat)
; unknown
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (not cond_6@318@01)))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 989 | !(cond_6@318@01) | live]
; [else-branch: 989 | cond_6@318@01 | dead]
(set-option :timeout 0)
(push) ; 26
; [then-branch: 989 | !(cond_6@318@01)]
(assert (not cond_6@318@01))
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 27
(pop) ; 27
; Joined path conditions
(push) ; 27
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 27
; Joined path conditions
(pop) ; 26
(pop) ; 25
; Joined path conditions
(assert (not cond_6@318@01))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (and p2_5@205@01 (not bypass2_2@316@01)))
; [eval] bypass1_2 ==> tmp1_30 == _loop_measures_2
(push) ; 23
; [then-branch: 990 | bypass1_2@315@01 | dead]
; [else-branch: 990 | !(bypass1_2@315@01) | live]
(push) ; 24
; [else-branch: 990 | !(bypass1_2@315@01)]
(pop) ; 24
(pop) ; 23
; Joined path conditions
; [eval] bypass1_2 ==> tmp1_31 == _loop_check_before_2
(push) ; 23
; [then-branch: 991 | bypass1_2@315@01 | dead]
; [else-branch: 991 | !(bypass1_2@315@01) | live]
(push) ; 24
; [else-branch: 991 | !(bypass1_2@315@01)]
(pop) ; 24
(pop) ; 23
; Joined path conditions
; [eval] bypass2_2 ==> tmp2_30 == _loop_measures_2_0
(push) ; 23
; [then-branch: 992 | bypass2_2@316@01 | dead]
; [else-branch: 992 | !(bypass2_2@316@01) | live]
(push) ; 24
; [else-branch: 992 | !(bypass2_2@316@01)]
(pop) ; 24
(pop) ; 23
; Joined path conditions
; [eval] bypass2_2 ==> tmp2_31 == _loop_check_before_2_0
(push) ; 23
; [then-branch: 993 | bypass2_2@316@01 | dead]
; [else-branch: 993 | !(bypass2_2@316@01) | live]
(push) ; 24
; [else-branch: 993 | !(bypass2_2@316@01)]
(pop) ; 24
(pop) ; 23
; Joined path conditions
(pop) ; 22
; [eval] !p2_6
(push) ; 22
(set-option :timeout 10)
(assert (not p2_6@422@01))
(check-sat)
; unsat
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 994 | !(p2_6@422@01) | dead]
; [else-branch: 994 | p2_6@422@01 | live]
(set-option :timeout 0)
(push) ; 22
; [else-branch: 994 | p2_6@422@01]
(assert p2_6@422@01)
(pop) ; 22
(pop) ; 21
; [eval] !p1_6
(push) ; 21
(set-option :timeout 10)
(assert (not p1_6@421@01))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [then-branch: 995 | !(p1_6@421@01) | dead]
; [else-branch: 995 | p1_6@421@01 | live]
(set-option :timeout 0)
(push) ; 21
; [else-branch: 995 | p1_6@421@01]
(assert p1_6@421@01)
(pop) ; 21
(pop) ; 20
; [eval] !(p1_5 && (!bypass1_2 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))) || p2_5 && (!bypass2_2 && int___eq__(x_1_0, __prim__int___box__(0))))
; [eval] p1_5 && (!bypass1_2 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))) || p2_5 && (!bypass2_2 && int___eq__(x_1_0, __prim__int___box__(0)))
; [eval] p1_5 && (!bypass1_2 && int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0)))
(push) ; 20
; [then-branch: 996 | !(p1_5@204@01) | live]
; [else-branch: 996 | p1_5@204@01 | live]
(push) ; 21
; [then-branch: 996 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 21
(push) ; 21
; [else-branch: 996 | p1_5@204@01]
(assert p1_5@204@01)
; [eval] !bypass1_2
(push) ; 22
; [then-branch: 997 | bypass1_2@315@01 | live]
; [else-branch: 997 | !(bypass1_2@315@01) | live]
(push) ; 23
; [then-branch: 997 | bypass1_2@315@01]
(assert bypass1_2@315@01)
(pop) ; 23
(push) ; 23
; [else-branch: 997 | !(bypass1_2@315@01)]
(assert (not bypass1_2@315@01))
; [eval] int___eq__(_checkDefined(x_1, 3235704), __prim__int___box__(0))
; [eval] _checkDefined(x_1, 3235704)
(push) ; 24
; [eval] _isDefined(id)
(push) ; 25
(pop) ; 25
; Joined path conditions
(pop) ; 24
; Joined path conditions
; [eval] __prim__int___box__(0)
(push) ; 24
(pop) ; 24
; Joined path conditions
(push) ; 24
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 24
; Joined path conditions
(pop) ; 23
(pop) ; 22
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1_2@315@01) bypass1_2@315@01))
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(push) ; 20
; [then-branch: 998 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) | live]
; [else-branch: 998 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))) | live]
(push) ; 21
; [then-branch: 998 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0))]
(assert (and
  p1_5@204@01
  (and
    (not bypass1_2@315@01)
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
(pop) ; 21
(push) ; 21
; [else-branch: 998 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)))]
(assert (not
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))))
; [eval] p2_5 && (!bypass2_2 && int___eq__(x_1_0, __prim__int___box__(0)))
(push) ; 22
; [then-branch: 999 | !(p2_5@205@01) | live]
; [else-branch: 999 | p2_5@205@01 | live]
(push) ; 23
; [then-branch: 999 | !(p2_5@205@01)]
(assert (not p2_5@205@01))
(pop) ; 23
(push) ; 23
; [else-branch: 999 | p2_5@205@01]
(assert p2_5@205@01)
; [eval] !bypass2_2
(push) ; 24
; [then-branch: 1000 | bypass2_2@316@01 | live]
; [else-branch: 1000 | !(bypass2_2@316@01) | live]
(push) ; 25
; [then-branch: 1000 | bypass2_2@316@01]
(assert bypass2_2@316@01)
(pop) ; 25
(push) ; 25
; [else-branch: 1000 | !(bypass2_2@316@01)]
(assert (not bypass2_2@316@01))
; [eval] int___eq__(x_1_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 26
(pop) ; 26
; Joined path conditions
(push) ; 26
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 26
; Joined path conditions
(pop) ; 25
(pop) ; 24
; Joined path conditions
; Joined path conditions
(assert (or (not bypass2_2@316@01) bypass2_2@316@01))
(pop) ; 23
(pop) ; 22
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@205@01 (and p2_5@205@01 (or (not bypass2_2@316@01) bypass2_2@316@01))))
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (and
      p1_5@204@01
      (and
        (not bypass1_2@315@01)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
  (and
    (not
      (and
        p1_5@204@01
        (and
          (not bypass1_2@315@01)
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0)))))
    (=>
      p2_5@205@01
      (and p2_5@205@01 (or (not bypass2_2@316@01) bypass2_2@316@01))))))
(push) ; 20
(set-option :timeout 10)
(assert (not (or
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
  (and
    p2_5@205@01
    (and
      (not bypass2_2@316@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0)))))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1001 | !(p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) || p2_5@205@01 && !(bypass2_2@316@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0))) | dead]
; [else-branch: 1001 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) || p2_5@205@01 && !(bypass2_2@316@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0)) | live]
(set-option :timeout 0)
(push) ; 20
; [else-branch: 1001 | p1_5@204@01 && !(bypass1_2@315@01) && int___eq__((_, _), _checkDefined(_, _res@305@01, 3235704), __prim__int___box__(_, 0)) || p2_5@205@01 && !(bypass2_2@316@01) && int___eq__((_, _), _res_0@306@01, __prim__int___box__(_, 0))]
(assert (or
  (and
    p1_5@204@01
    (and
      (not bypass1_2@315@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (_checkDefined $Snap.unit _res@305@01 3235704) (__prim__int___box__ $Snap.unit 0))))
  (and
    p2_5@205@01
    (and
      (not bypass2_2@316@01)
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@306@01 (__prim__int___box__ $Snap.unit 0))))))
(pop) ; 20
(pop) ; 19
(pop) ; 18
(pop) ; 17
; [eval] !p2_5
(push) ; 17
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1002 | !(p2_5@205@01) | dead]
; [else-branch: 1002 | p2_5@205@01 | live]
(set-option :timeout 0)
(push) ; 17
; [else-branch: 1002 | p2_5@205@01]
(assert p2_5@205@01)
(pop) ; 17
(pop) ; 16
; [eval] !p1_5
(push) ; 16
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1003 | !(p1_5@204@01) | dead]
; [else-branch: 1003 | p1_5@204@01 | live]
(set-option :timeout 0)
(push) ; 16
; [else-branch: 1003 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 16
(pop) ; 15
(pop) ; 14
(pop) ; 13
; [eval] !p2_5
(push) ; 13
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1004 | !(p2_5@205@01) | dead]
; [else-branch: 1004 | p2_5@205@01 | live]
(set-option :timeout 0)
(push) ; 13
; [else-branch: 1004 | p2_5@205@01]
(assert p2_5@205@01)
(pop) ; 13
(pop) ; 12
; [eval] !p1_5
(push) ; 12
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1005 | !(p1_5@204@01) | dead]
; [else-branch: 1005 | p1_5@204@01 | live]
(set-option :timeout 0)
(push) ; 12
; [else-branch: 1005 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 12
(pop) ; 11
; [eval] !p2_5
(push) ; 11
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1006 | !(p2_5@205@01) | dead]
; [else-branch: 1006 | p2_5@205@01 | live]
(set-option :timeout 0)
(push) ; 11
; [else-branch: 1006 | p2_5@205@01]
(assert p2_5@205@01)
(pop) ; 11
(pop) ; 10
; [eval] !p1_5
(push) ; 10
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1007 | !(p1_5@204@01) | dead]
; [else-branch: 1007 | p1_5@204@01 | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 1007 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 10
(pop) ; 9
; [eval] !p2_5
(push) ; 9
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1008 | !(p2_5@205@01) | dead]
; [else-branch: 1008 | p2_5@205@01 | live]
(set-option :timeout 0)
(push) ; 9
; [else-branch: 1008 | p2_5@205@01]
(assert p2_5@205@01)
(pop) ; 9
(pop) ; 8
; [eval] !p1_5
(push) ; 8
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1009 | !(p1_5@204@01) | dead]
; [else-branch: 1009 | p1_5@204@01 | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 1009 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 8
(pop) ; 7
; [eval] !p2_5
(push) ; 7
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1010 | !(p2_5@205@01) | dead]
; [else-branch: 1010 | p2_5@205@01 | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 1010 | p2_5@205@01]
(assert p2_5@205@01)
(pop) ; 7
(pop) ; 6
; [eval] !p1_5
(push) ; 6
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1011 | !(p1_5@204@01) | dead]
; [else-branch: 1011 | p1_5@204@01 | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 1011 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 6
(pop) ; 5
; [eval] !(p1_5 || p2_5)
; [eval] p1_5 || p2_5
(push) ; 5
; [then-branch: 1012 | p1_5@204@01 | live]
; [else-branch: 1012 | !(p1_5@204@01) | live]
(push) ; 6
; [then-branch: 1012 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 6
(push) ; 6
; [else-branch: 1012 | !(p1_5@204@01)]
(assert (not p1_5@204@01))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (or p1_5@204@01 p2_5@205@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1013 | !(p1_5@204@01 || p2_5@205@01) | dead]
; [else-branch: 1013 | p1_5@204@01 || p2_5@205@01 | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 1013 | p1_5@204@01 || p2_5@205@01]
(assert (or p1_5@204@01 p2_5@205@01))
(pop) ; 5
(pop) ; 4
; [eval] !p2_5
(push) ; 4
(set-option :timeout 10)
(assert (not p2_5@205@01))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1014 | !(p2_5@205@01) | dead]
; [else-branch: 1014 | p2_5@205@01 | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 1014 | p2_5@205@01]
(assert p2_5@205@01)
(pop) ; 4
(pop) ; 3
; [eval] !p1_5
(push) ; 3
(set-option :timeout 10)
(assert (not p1_5@204@01))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1015 | !(p1_5@204@01) | dead]
; [else-branch: 1015 | p1_5@204@01 | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 1015 | p1_5@204@01]
(assert p1_5@204@01)
(pop) ; 3
(pop) ; 2
(pop) ; 1
