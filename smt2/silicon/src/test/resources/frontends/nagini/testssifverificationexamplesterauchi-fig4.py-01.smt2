(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-27 02:52:09
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
(declare-fun Level ($Snap $Ref) $Perm)
(declare-fun Level%limited ($Snap $Ref) $Perm)
(declare-fun Level%stateless ($Ref) Bool)
(declare-fun Level%precondition ($Snap $Ref) Bool)
(declare-fun int___gt__ ($Snap Int Int) Bool)
(declare-fun int___gt__%limited ($Snap Int Int) Bool)
(declare-fun int___gt__%stateless (Int Int) Bool)
(declare-fun int___gt__%precondition ($Snap Int Int) Bool)
(declare-fun int___add__ ($Snap Int Int) Int)
(declare-fun int___add__%limited ($Snap Int Int) Int)
(declare-fun int___add__%stateless (Int Int) Bool)
(declare-fun int___add__%precondition ($Snap Int Int) Bool)
(declare-fun int___sub__ ($Snap Int Int) Int)
(declare-fun int___sub__%limited ($Snap Int Int) Int)
(declare-fun int___sub__%stateless (Int Int) Bool)
(declare-fun int___sub__%precondition ($Snap Int Int) Bool)
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
(declare-fun _checkDefined ($Snap $Ref Int) $Ref)
(declare-fun _checkDefined%limited ($Snap $Ref Int) $Ref)
(declare-fun _checkDefined%stateless ($Ref Int) Bool)
(declare-fun _checkDefined%precondition ($Snap $Ref Int) Bool)
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
  :qid |quant-u-2960|)))
(assert (forall ((s@$ $Snap) (id@0@00 Int)) (!
  (_isDefined%stateless id@0@00)
  :pattern ((_isDefined%limited s@$ id@0@00))
  :qid |quant-u-2961|)))
(assert (forall ((s@$ $Snap) (r@2@00 $Ref)) (!
  (= (Level%limited s@$ r@2@00) (Level s@$ r@2@00))
  :pattern ((Level s@$ r@2@00))
  :qid |quant-u-2962|)))
(assert (forall ((s@$ $Snap) (r@2@00 $Ref)) (!
  (Level%stateless r@2@00)
  :pattern ((Level%limited s@$ r@2@00))
  :qid |quant-u-2963|)))
(assert (forall ((s@$ $Snap) (self@4@00 Int) (other@5@00 Int)) (!
  (=
    (int___gt__%limited s@$ self@4@00 other@5@00)
    (int___gt__ s@$ self@4@00 other@5@00))
  :pattern ((int___gt__ s@$ self@4@00 other@5@00))
  :qid |quant-u-2964|)))
(assert (forall ((s@$ $Snap) (self@4@00 Int) (other@5@00 Int)) (!
  (int___gt__%stateless self@4@00 other@5@00)
  :pattern ((int___gt__%limited s@$ self@4@00 other@5@00))
  :qid |quant-u-2965|)))
(assert (forall ((s@$ $Snap) (self@4@00 Int) (other@5@00 Int)) (!
  (=>
    (int___gt__%precondition s@$ self@4@00 other@5@00)
    (= (int___gt__ s@$ self@4@00 other@5@00) (> self@4@00 other@5@00)))
  :pattern ((int___gt__ s@$ self@4@00 other@5@00))
  :qid |quant-u-2980|)))
(assert (forall ((s@$ $Snap) (self@4@00 Int) (other@5@00 Int)) (!
  true
  :pattern ((int___gt__ s@$ self@4@00 other@5@00))
  :qid |quant-u-2981|)))
(assert (forall ((s@$ $Snap) (self@7@00 Int) (other@8@00 Int)) (!
  (=
    (int___add__%limited s@$ self@7@00 other@8@00)
    (int___add__ s@$ self@7@00 other@8@00))
  :pattern ((int___add__ s@$ self@7@00 other@8@00))
  :qid |quant-u-2966|)))
(assert (forall ((s@$ $Snap) (self@7@00 Int) (other@8@00 Int)) (!
  (int___add__%stateless self@7@00 other@8@00)
  :pattern ((int___add__%limited s@$ self@7@00 other@8@00))
  :qid |quant-u-2967|)))
(assert (forall ((s@$ $Snap) (self@7@00 Int) (other@8@00 Int)) (!
  (=>
    (int___add__%precondition s@$ self@7@00 other@8@00)
    (= (int___add__ s@$ self@7@00 other@8@00) (+ self@7@00 other@8@00)))
  :pattern ((int___add__ s@$ self@7@00 other@8@00))
  :qid |quant-u-2982|)))
(assert (forall ((s@$ $Snap) (self@7@00 Int) (other@8@00 Int)) (!
  true
  :pattern ((int___add__ s@$ self@7@00 other@8@00))
  :qid |quant-u-2983|)))
(assert (forall ((s@$ $Snap) (self@10@00 Int) (other@11@00 Int)) (!
  (=
    (int___sub__%limited s@$ self@10@00 other@11@00)
    (int___sub__ s@$ self@10@00 other@11@00))
  :pattern ((int___sub__ s@$ self@10@00 other@11@00))
  :qid |quant-u-2968|)))
(assert (forall ((s@$ $Snap) (self@10@00 Int) (other@11@00 Int)) (!
  (int___sub__%stateless self@10@00 other@11@00)
  :pattern ((int___sub__%limited s@$ self@10@00 other@11@00))
  :qid |quant-u-2969|)))
(assert (forall ((s@$ $Snap) (self@10@00 Int) (other@11@00 Int)) (!
  (=>
    (int___sub__%precondition s@$ self@10@00 other@11@00)
    (= (int___sub__ s@$ self@10@00 other@11@00) (- self@10@00 other@11@00)))
  :pattern ((int___sub__ s@$ self@10@00 other@11@00))
  :qid |quant-u-2984|)))
(assert (forall ((s@$ $Snap) (self@10@00 Int) (other@11@00 Int)) (!
  true
  :pattern ((int___sub__ s@$ self@10@00 other@11@00))
  :qid |quant-u-2985|)))
(assert (forall ((s@$ $Snap) (prim@13@00 Bool)) (!
  (=
    (__prim__bool___box__%limited s@$ prim@13@00)
    (__prim__bool___box__ s@$ prim@13@00))
  :pattern ((__prim__bool___box__ s@$ prim@13@00))
  :qid |quant-u-2970|)))
(assert (forall ((s@$ $Snap) (prim@13@00 Bool)) (!
  (__prim__bool___box__%stateless prim@13@00)
  :pattern ((__prim__bool___box__%limited s@$ prim@13@00))
  :qid |quant-u-2971|)))
(assert (forall ((s@$ $Snap) (prim@13@00 Bool)) (!
  (let ((result@14@00 (__prim__bool___box__%limited s@$ prim@13@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@13@00)
    (and
      (= (typeof<PyType> result@14@00) (as bool<PyType>  PyType))
      (= (bool___unbox__%limited $Snap.unit result@14@00) prim@13@00)
      (= (int___unbox__%limited $Snap.unit result@14@00) (ite prim@13@00 1 0)))))
  :pattern ((__prim__bool___box__%limited s@$ prim@13@00))
  :qid |quant-u-2986|)))
(assert (forall ((s@$ $Snap) (prim@13@00 Bool)) (!
  (let ((result@14@00 (__prim__bool___box__%limited s@$ prim@13@00))) true)
  :pattern ((__prim__bool___box__%limited s@$ prim@13@00))
  :qid |quant-u-2987|)))
(assert (forall ((s@$ $Snap) (prim@13@00 Bool)) (!
  (let ((result@14@00 (__prim__bool___box__%limited s@$ prim@13@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@13@00)
    (bool___unbox__%precondition $Snap.unit result@14@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@13@00))
  :qid |quant-u-2988|)))
(assert (forall ((s@$ $Snap) (prim@13@00 Bool)) (!
  (let ((result@14@00 (__prim__bool___box__%limited s@$ prim@13@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@13@00)
    (int___unbox__%precondition $Snap.unit result@14@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@13@00))
  :qid |quant-u-2989|)))
(assert (forall ((s@$ $Snap) (box@15@00 $Ref)) (!
  (= (int___unbox__%limited s@$ box@15@00) (int___unbox__ s@$ box@15@00))
  :pattern ((int___unbox__ s@$ box@15@00))
  :qid |quant-u-2972|)))
(assert (forall ((s@$ $Snap) (box@15@00 $Ref)) (!
  (int___unbox__%stateless box@15@00)
  :pattern ((int___unbox__%limited s@$ box@15@00))
  :qid |quant-u-2973|)))
(assert (forall ((s@$ $Snap) (box@15@00 $Ref)) (!
  (let ((result@16@00 (int___unbox__%limited s@$ box@15@00))) (=>
    (int___unbox__%precondition s@$ box@15@00)
    (and
      (=>
        (not
          (issubtype<Bool> (typeof<PyType> box@15@00) (as bool<PyType>  PyType)))
        (= (__prim__int___box__%limited $Snap.unit result@16@00) box@15@00))
      (=>
        (issubtype<Bool> (typeof<PyType> box@15@00) (as bool<PyType>  PyType))
        (=
          (__prim__bool___box__%limited $Snap.unit (not (= result@16@00 0)))
          box@15@00)))))
  :pattern ((int___unbox__%limited s@$ box@15@00))
  :qid |quant-u-2990|)))
(assert (forall ((s@$ $Snap) (box@15@00 $Ref)) (!
  (let ((result@16@00 (int___unbox__%limited s@$ box@15@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@15@00)
      (not
        (issubtype<Bool> (typeof<PyType> box@15@00) (as bool<PyType>  PyType))))
    (__prim__int___box__%precondition $Snap.unit result@16@00)))
  :pattern ((int___unbox__%limited s@$ box@15@00))
  :qid |quant-u-2991|)))
(assert (forall ((s@$ $Snap) (box@15@00 $Ref)) (!
  (let ((result@16@00 (int___unbox__%limited s@$ box@15@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@15@00)
      (issubtype<Bool> (typeof<PyType> box@15@00) (as bool<PyType>  PyType)))
    (__prim__bool___box__%precondition $Snap.unit (not (= result@16@00 0)))))
  :pattern ((int___unbox__%limited s@$ box@15@00))
  :qid |quant-u-2992|)))
(assert (forall ((s@$ $Snap) (box@17@00 $Ref)) (!
  (= (bool___unbox__%limited s@$ box@17@00) (bool___unbox__ s@$ box@17@00))
  :pattern ((bool___unbox__ s@$ box@17@00))
  :qid |quant-u-2974|)))
(assert (forall ((s@$ $Snap) (box@17@00 $Ref)) (!
  (bool___unbox__%stateless box@17@00)
  :pattern ((bool___unbox__%limited s@$ box@17@00))
  :qid |quant-u-2975|)))
(assert (forall ((s@$ $Snap) (box@17@00 $Ref)) (!
  (let ((result@18@00 (bool___unbox__%limited s@$ box@17@00))) (=>
    (bool___unbox__%precondition s@$ box@17@00)
    (= (__prim__bool___box__%limited $Snap.unit result@18@00) box@17@00)))
  :pattern ((bool___unbox__%limited s@$ box@17@00))
  :qid |quant-u-2993|)))
(assert (forall ((s@$ $Snap) (box@17@00 $Ref)) (!
  (let ((result@18@00 (bool___unbox__%limited s@$ box@17@00))) (=>
    (bool___unbox__%precondition s@$ box@17@00)
    (__prim__bool___box__%precondition $Snap.unit result@18@00)))
  :pattern ((bool___unbox__%limited s@$ box@17@00))
  :qid |quant-u-2994|)))
(assert (forall ((s@$ $Snap) (prim@19@00 Int)) (!
  (=
    (__prim__int___box__%limited s@$ prim@19@00)
    (__prim__int___box__ s@$ prim@19@00))
  :pattern ((__prim__int___box__ s@$ prim@19@00))
  :qid |quant-u-2976|)))
(assert (forall ((s@$ $Snap) (prim@19@00 Int)) (!
  (__prim__int___box__%stateless prim@19@00)
  :pattern ((__prim__int___box__%limited s@$ prim@19@00))
  :qid |quant-u-2977|)))
(assert (forall ((s@$ $Snap) (prim@19@00 Int)) (!
  (let ((result@20@00 (__prim__int___box__%limited s@$ prim@19@00))) (=>
    (__prim__int___box__%precondition s@$ prim@19@00)
    (and
      (= (typeof<PyType> result@20@00) (as int<PyType>  PyType))
      (= (int___unbox__%limited $Snap.unit result@20@00) prim@19@00))))
  :pattern ((__prim__int___box__%limited s@$ prim@19@00))
  :qid |quant-u-2995|)))
(assert (forall ((s@$ $Snap) (prim@19@00 Int)) (!
  (let ((result@20@00 (__prim__int___box__%limited s@$ prim@19@00))) true)
  :pattern ((__prim__int___box__%limited s@$ prim@19@00))
  :qid |quant-u-2996|)))
(assert (forall ((s@$ $Snap) (prim@19@00 Int)) (!
  (let ((result@20@00 (__prim__int___box__%limited s@$ prim@19@00))) (=>
    (__prim__int___box__%precondition s@$ prim@19@00)
    (int___unbox__%precondition $Snap.unit result@20@00)))
  :pattern ((__prim__int___box__%limited s@$ prim@19@00))
  :qid |quant-u-2997|)))
(assert (forall ((s@$ $Snap) (val@21@00 $Ref) (id@22@00 Int)) (!
  (=
    (_checkDefined%limited s@$ val@21@00 id@22@00)
    (_checkDefined s@$ val@21@00 id@22@00))
  :pattern ((_checkDefined s@$ val@21@00 id@22@00))
  :qid |quant-u-2978|)))
(assert (forall ((s@$ $Snap) (val@21@00 $Ref) (id@22@00 Int)) (!
  (_checkDefined%stateless val@21@00 id@22@00)
  :pattern ((_checkDefined%limited s@$ val@21@00 id@22@00))
  :qid |quant-u-2979|)))
(assert (forall ((s@$ $Snap) (val@21@00 $Ref) (id@22@00 Int)) (!
  (=>
    (_checkDefined%precondition s@$ val@21@00 id@22@00)
    (= (_checkDefined s@$ val@21@00 id@22@00) val@21@00))
  :pattern ((_checkDefined s@$ val@21@00 id@22@00))
  :qid |quant-u-2998|)))
(assert (forall ((s@$ $Snap) (val@21@00 $Ref) (id@22@00 Int)) (!
  true
  :pattern ((_checkDefined s@$ val@21@00 id@22@00))
  :qid |quant-u-2999|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- main ----------
(declare-const p1@0@01 Bool)
(declare-const p2@1@01 Bool)
(declare-const _cthread_156@2@01 $Ref)
(declare-const _cthread_156_0@3@01 $Ref)
(declare-const _caller_measures_156@4@01 Seq<Measure$>)
(declare-const _caller_measures_156_0@5@01 Seq<Measure$>)
(declare-const _residue_156@6@01 $Perm)
(declare-const _residue_156_0@7@01 $Perm)
(declare-const n_0@8@01 $Ref)
(declare-const n_0_0@9@01 $Ref)
(declare-const k@10@01 $Ref)
(declare-const k_1@11@01 $Ref)
(declare-const _current_wait_level_156@12@01 $Perm)
(declare-const _current_wait_level_156_0@13@01 $Perm)
(declare-const _res@14@01 $Ref)
(declare-const _res_0@15@01 $Ref)
(declare-const p1@16@01 Bool)
(declare-const p2@17@01 Bool)
(declare-const _cthread_156@18@01 $Ref)
(declare-const _cthread_156_0@19@01 $Ref)
(declare-const _caller_measures_156@20@01 Seq<Measure$>)
(declare-const _caller_measures_156_0@21@01 Seq<Measure$>)
(declare-const _residue_156@22@01 $Perm)
(declare-const _residue_156_0@23@01 $Perm)
(declare-const n_0@24@01 $Ref)
(declare-const n_0_0@25@01 $Ref)
(declare-const k@26@01 $Ref)
(declare-const k_1@27@01 $Ref)
(declare-const _current_wait_level_156@28@01 $Perm)
(declare-const _current_wait_level_156_0@29@01 $Perm)
(declare-const _res@30@01 $Ref)
(declare-const _res_0@31@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@32@01 $Snap)
(assert (= $t@32@01 ($Snap.combine ($Snap.first $t@32@01) ($Snap.second $t@32@01))))
(assert (= ($Snap.first $t@32@01) $Snap.unit))
; [eval] p1 ==> _cthread_156 != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1@16@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | p1@16@01 | live]
; [else-branch: 0 | !(p1@16@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | p1@16@01]
(assert p1@16@01)
; [eval] _cthread_156 != null
(pop) ; 3
(push) ; 3
; [else-branch: 0 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not p1@16@01) p1@16@01))
(assert (=> p1@16@01 (not (= _cthread_156@18@01 $Ref.null))))
(assert (=
  ($Snap.second $t@32@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@32@01))
    ($Snap.second ($Snap.second $t@32@01)))))
(assert (= ($Snap.first ($Snap.second $t@32@01)) $Snap.unit))
; [eval] p2 ==> _cthread_156_0 != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2@17@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2@17@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | p2@17@01 | live]
; [else-branch: 1 | !(p2@17@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | p2@17@01]
(assert p2@17@01)
; [eval] _cthread_156_0 != null
(pop) ; 3
(push) ; 3
; [else-branch: 1 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not p2@17@01) p2@17@01))
(assert (=> p2@17@01 (not (= _cthread_156_0@19@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@32@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@32@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@32@01))) $Snap.unit))
; [eval] p1 ==> issubtype(typeof(_cthread_156), Thread_0())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1@16@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | p1@16@01 | live]
; [else-branch: 2 | !(p1@16@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 2 | p1@16@01]
(assert p1@16@01)
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
(pop) ; 3
(push) ; 3
; [else-branch: 2 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p1@16@01
  (issubtype<Bool> (typeof<PyType> _cthread_156@18@01) (as Thread_0<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@32@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@32@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@32@01))))
  $Snap.unit))
; [eval] p2 ==> issubtype(typeof(_cthread_156_0), Thread_0())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2@17@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2@17@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | p2@17@01 | live]
; [else-branch: 3 | !(p2@17@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 3 | p2@17@01]
(assert p2@17@01)
; [eval] issubtype(typeof(_cthread_156_0), Thread_0())
; [eval] typeof(_cthread_156_0)
; [eval] Thread_0()
(pop) ; 3
(push) ; 3
; [else-branch: 3 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p2@17@01
  (issubtype<Bool> (typeof<PyType> _cthread_156_0@19@01) (as Thread_0<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))
  $Snap.unit))
; [eval] p1 ==> issubtype(typeof(n_0), int())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1@16@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | p1@16@01 | live]
; [else-branch: 4 | !(p1@16@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 4 | p1@16@01]
(assert p1@16@01)
; [eval] issubtype(typeof(n_0), int())
; [eval] typeof(n_0)
; [eval] int()
(pop) ; 3
(push) ; 3
; [else-branch: 4 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p1@16@01
  (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))
  $Snap.unit))
; [eval] p2 ==> issubtype(typeof(n_0_0), int())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2@17@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2@17@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | p2@17@01 | live]
; [else-branch: 5 | !(p2@17@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 5 | p2@17@01]
(assert p2@17@01)
; [eval] issubtype(typeof(n_0_0), int())
; [eval] typeof(n_0_0)
; [eval] int()
(pop) ; 3
(push) ; 3
; [else-branch: 5 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p2@17@01
  (issubtype<Bool> (typeof<PyType> n_0_0@25@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))
  $Snap.unit))
; [eval] p1 ==> issubtype(typeof(k), int())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1@16@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | p1@16@01 | live]
; [else-branch: 6 | !(p1@16@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 6 | p1@16@01]
(assert p1@16@01)
; [eval] issubtype(typeof(k), int())
; [eval] typeof(k)
; [eval] int()
(pop) ; 3
(push) ; 3
; [else-branch: 6 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=> p1@16@01 (issubtype<Bool> (typeof<PyType> k@26@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))
  $Snap.unit))
; [eval] p2 ==> issubtype(typeof(k_1), int())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2@17@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2@17@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | p2@17@01 | live]
; [else-branch: 7 | !(p2@17@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 7 | p2@17@01]
(assert p2@17@01)
; [eval] issubtype(typeof(k_1), int())
; [eval] typeof(k_1)
; [eval] int()
(pop) ; 3
(push) ; 3
; [else-branch: 7 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p2@17@01
  (issubtype<Bool> (typeof<PyType> k_1@27@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))))
  $Snap.unit))
; [eval] p1 ==> int___gt__(int___unbox__(n_0), 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1@16@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | p1@16@01 | live]
; [else-branch: 8 | !(p1@16@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 8 | p1@16@01]
(assert p1@16@01)
; [eval] int___gt__(int___unbox__(n_0), 0)
; [eval] int___unbox__(n_0)
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_0@24@01))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_0@24@01)))
(push) ; 4
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0))
(pop) ; 4
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0))
(pop) ; 3
(push) ; 3
; [else-branch: 8 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (=>
  p1@16@01
  (and
    p1@16@01
    (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_0@24@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0))))
; Joined path conditions
(assert (=> p1@16@01 (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))))
  $Snap.unit))
; [eval] p2 ==> int___gt__(int___unbox__(n_0_0), 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2@17@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2@17@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | p2@17@01 | live]
; [else-branch: 9 | !(p2@17@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 9 | p2@17@01]
(assert p2@17@01)
; [eval] int___gt__(int___unbox__(n_0_0), 0)
; [eval] int___unbox__(n_0_0)
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> n_0_0@25@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_0_0@25@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_0_0@25@01))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_0_0@25@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_0_0@25@01)))
(push) ; 4
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0))
(pop) ; 4
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0))
(pop) ; 3
(push) ; 3
; [else-branch: 9 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (=>
  p2@17@01
  (and
    p2@17@01
    (issubtype<Bool> (typeof<PyType> n_0_0@25@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_0_0@25@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0))))
; Joined path conditions
(assert (=> p2@17@01 (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))))))
  $Snap.unit))
; [eval] p1 && p2 ==> n_0 == n_0_0
; [eval] p1 && p2
(push) ; 2
; [then-branch: 10 | !(p1@16@01) | live]
; [else-branch: 10 | p1@16@01 | live]
(push) ; 3
; [then-branch: 10 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 3
(push) ; 3
; [else-branch: 10 | p1@16@01]
(assert p1@16@01)
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or p1@16@01 (not p1@16@01)))
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (and p1@16@01 p2@17@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and p1@16@01 p2@17@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | p1@16@01 && p2@17@01 | live]
; [else-branch: 11 | !(p1@16@01 && p2@17@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 11 | p1@16@01 && p2@17@01]
(assert (and p1@16@01 p2@17@01))
; [eval] n_0 == n_0_0
(pop) ; 3
(push) ; 3
; [else-branch: 11 | !(p1@16@01 && p2@17@01)]
(assert (not (and p1@16@01 p2@17@01)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not (and p1@16@01 p2@17@01)) (and p1@16@01 p2@17@01)))
(assert (=> (and p1@16@01 p2@17@01) (= n_0@24@01 n_0_0@25@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))))))
  $Snap.unit))
; [eval] p1 && p2 ==> k == k_1
; [eval] p1 && p2
(push) ; 2
; [then-branch: 12 | !(p1@16@01) | live]
; [else-branch: 12 | p1@16@01 | live]
(push) ; 3
; [then-branch: 12 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 3
(push) ; 3
; [else-branch: 12 | p1@16@01]
(assert p1@16@01)
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (and p1@16@01 p2@17@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and p1@16@01 p2@17@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | p1@16@01 && p2@17@01 | live]
; [else-branch: 13 | !(p1@16@01 && p2@17@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 13 | p1@16@01 && p2@17@01]
(assert (and p1@16@01 p2@17@01))
; [eval] k == k_1
(pop) ; 3
(push) ; 3
; [else-branch: 13 | !(p1@16@01 && p2@17@01)]
(assert (not (and p1@16@01 p2@17@01)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=> (and p1@16@01 p2@17@01) (= k@26@01 k_1@27@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))))))))
  $Snap.unit))
; [eval] p1 ==> true
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1@16@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | p1@16@01 | live]
; [else-branch: 14 | !(p1@16@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 14 | p1@16@01]
(assert p1@16@01)
(pop) ; 3
(push) ; 3
; [else-branch: 14 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))))))))
  $Snap.unit))
; [eval] p2 ==> true
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2@17@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2@17@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | p2@17@01 | live]
; [else-branch: 15 | !(p2@17@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 15 | p2@17@01]
(assert p2@17@01)
(pop) ; 3
(push) ; 3
; [else-branch: 15 | !(p2@17@01)]
(assert (not p2@17@01))
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
(declare-const $t@33@01 $Snap)
(assert (= $t@33@01 ($Snap.combine ($Snap.first $t@33@01) ($Snap.second $t@33@01))))
(assert (= ($Snap.first $t@33@01) $Snap.unit))
; [eval] p1 ==> (forperm _r_1: Ref [_r_1.MustReleaseBounded] :: Level(_r_1) <= _current_wait_level_156) && ((forperm _r_1: Ref [_r_1.MustReleaseUnbounded] :: Level(_r_1) <= _current_wait_level_156) && _residue_156 <= _current_wait_level_156)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p1@16@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | p1@16@01 | live]
; [else-branch: 16 | !(p1@16@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 16 | p1@16@01]
(assert p1@16@01)
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseBounded] :: Level(_r_1) <= _current_wait_level_156) && ((forperm _r_1: Ref [_r_1.MustReleaseUnbounded] :: Level(_r_1) <= _current_wait_level_156) && _residue_156 <= _current_wait_level_156)
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseBounded] :: Level(_r_1) <= _current_wait_level_156)
(push) ; 5
; [then-branch: 17 | False | live]
; [else-branch: 17 | True | live]
(push) ; 6
; [then-branch: 17 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 17 | True]
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseUnbounded] :: Level(_r_1) <= _current_wait_level_156)
(push) ; 7
; [then-branch: 18 | False | live]
; [else-branch: 18 | True | live]
(push) ; 8
; [then-branch: 18 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 18 | True]
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
; [else-branch: 16 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=> p1@16@01 (<= _residue_156@22@01 _current_wait_level_156@28@01)))
(assert (=
  ($Snap.second $t@33@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@33@01))
    ($Snap.second ($Snap.second $t@33@01)))))
(assert (= ($Snap.first ($Snap.second $t@33@01)) $Snap.unit))
; [eval] p2 ==> (forperm _r_1: Ref [_r_1.MustReleaseBoundedp] :: Level(_r_1) <= _current_wait_level_156_0) && ((forperm _r_1: Ref [_r_1.MustReleaseUnboundedp] :: Level(_r_1) <= _current_wait_level_156_0) && _residue_156_0 <= _current_wait_level_156_0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2@17@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p2@17@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 19 | p2@17@01 | live]
; [else-branch: 19 | !(p2@17@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 19 | p2@17@01]
(assert p2@17@01)
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseBoundedp] :: Level(_r_1) <= _current_wait_level_156_0) && ((forperm _r_1: Ref [_r_1.MustReleaseUnboundedp] :: Level(_r_1) <= _current_wait_level_156_0) && _residue_156_0 <= _current_wait_level_156_0)
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseBoundedp] :: Level(_r_1) <= _current_wait_level_156_0)
(push) ; 5
; [then-branch: 20 | False | live]
; [else-branch: 20 | True | live]
(push) ; 6
; [then-branch: 20 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 20 | True]
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseUnboundedp] :: Level(_r_1) <= _current_wait_level_156_0)
(push) ; 7
; [then-branch: 21 | False | live]
; [else-branch: 21 | True | live]
(push) ; 8
; [then-branch: 21 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 21 | True]
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
; [else-branch: 19 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=> p2@17@01 (<= _residue_156_0@23@01 _current_wait_level_156_0@29@01)))
(assert (=
  ($Snap.second ($Snap.second $t@33@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@33@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@33@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@33@01))) $Snap.unit))
; [eval] p1 ==> issubtype(typeof(_res), int())
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p1@16@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | p1@16@01 | live]
; [else-branch: 22 | !(p1@16@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 22 | p1@16@01]
(assert p1@16@01)
; [eval] issubtype(typeof(_res), int())
; [eval] typeof(_res)
; [eval] int()
(pop) ; 4
(push) ; 4
; [else-branch: 22 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  p1@16@01
  (issubtype<Bool> (typeof<PyType> _res@30@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@33@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@33@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@33@01))))
  $Snap.unit))
; [eval] p2 ==> issubtype(typeof(_res_0), int())
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2@17@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p2@17@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | p2@17@01 | live]
; [else-branch: 23 | !(p2@17@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 23 | p2@17@01]
(assert p2@17@01)
; [eval] issubtype(typeof(_res_0), int())
; [eval] typeof(_res_0)
; [eval] int()
(pop) ; 4
(push) ; 4
; [else-branch: 23 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  p2@17@01
  (issubtype<Bool> (typeof<PyType> _res_0@31@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01)))))
  $Snap.unit))
; [eval] p1 && p2 ==> _res == _res_0
; [eval] p1 && p2
(push) ; 3
; [then-branch: 24 | !(p1@16@01) | live]
; [else-branch: 24 | p1@16@01 | live]
(push) ; 4
; [then-branch: 24 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 4
(push) ; 4
; [else-branch: 24 | p1@16@01]
(assert p1@16@01)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (and p1@16@01 p2@17@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (and p1@16@01 p2@17@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | p1@16@01 && p2@17@01 | live]
; [else-branch: 25 | !(p1@16@01 && p2@17@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 25 | p1@16@01 && p2@17@01]
(assert (and p1@16@01 p2@17@01))
; [eval] _res == _res_0
(pop) ; 4
(push) ; 4
; [else-branch: 25 | !(p1@16@01 && p2@17@01)]
(assert (not (and p1@16@01 p2@17@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=> (and p1@16@01 p2@17@01) (= _res@30@01 _res_0@31@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01))))))
  $Snap.unit))
; [eval] p1 ==> true
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p1@16@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 26 | p1@16@01 | live]
; [else-branch: 26 | !(p1@16@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 26 | p1@16@01]
(assert p1@16@01)
(pop) ; 4
(push) ; 4
; [else-branch: 26 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01))))))
  $Snap.unit))
; [eval] p2 ==> true
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2@17@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p2@17@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 27 | p2@17@01 | live]
; [else-branch: 27 | !(p2@17@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 27 | p2@17@01]
(assert p2@17@01)
(pop) ; 4
(push) ; 4
; [else-branch: 27 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(pop) ; 2
(push) ; 2
; [exec]
; var ret1: Bool
(declare-const ret1@34@01 Bool)
; [exec]
; var ret2: Bool
(declare-const ret2@35@01 Bool)
; [exec]
; var _err: Ref
(declare-const _err@36@01 $Ref)
; [exec]
; var _err_0: Ref
(declare-const _err_0@37@01 $Ref)
; [exec]
; var f1: Ref
(declare-const f1@38@01 $Ref)
; [exec]
; var f1_0: Ref
(declare-const f1_0@39@01 $Ref)
; [exec]
; var f2: Ref
(declare-const f2@40@01 $Ref)
; [exec]
; var f2_0: Ref
(declare-const f2_0@41@01 $Ref)
; [exec]
; var n_1: Ref
(declare-const n_1@42@01 $Ref)
; [exec]
; var n_1_0: Ref
(declare-const n_1_0@43@01 $Ref)
; [exec]
; var k_0: Ref
(declare-const k_0@44@01 $Ref)
; [exec]
; var k_0_0: Ref
(declare-const k_0_0@45@01 $Ref)
; [exec]
; var _loop_measures: Seq[Measure$]
(declare-const _loop_measures@46@01 Seq<Measure$>)
; [exec]
; var _loop_measures_0: Seq[Measure$]
(declare-const _loop_measures_0@47@01 Seq<Measure$>)
; [exec]
; var _loop_check_before: Bool
(declare-const _loop_check_before@48@01 Bool)
; [exec]
; var _loop_check_before_0: Bool
(declare-const _loop_check_before_0@49@01 Bool)
; [exec]
; var _loop_termination_flag: Bool
(declare-const _loop_termination_flag@50@01 Bool)
; [exec]
; var _loop_termination_flag_0: Bool
(declare-const _loop_termination_flag_0@51@01 Bool)
; [exec]
; var _loop_original_must_terminate: Perm
(declare-const _loop_original_must_terminate@52@01 $Perm)
; [exec]
; var _loop_original_must_terminate_0: Perm
(declare-const _loop_original_must_terminate_0@53@01 $Perm)
; [exec]
; var _residue_157: Perm
(declare-const _residue_157@54@01 $Perm)
; [exec]
; var _residue_157_0: Perm
(declare-const _residue_157_0@55@01 $Perm)
; [exec]
; var _cwl_156: Perm
(declare-const _cwl_156@56@01 $Perm)
; [exec]
; var _cwl_156_0: Perm
(declare-const _cwl_156_0@57@01 $Perm)
; [exec]
; var _method_measures_156: Seq[Measure$]
(declare-const _method_measures_156@58@01 Seq<Measure$>)
; [exec]
; var _method_measures_156_0: Seq[Measure$]
(declare-const _method_measures_156_0@59@01 Seq<Measure$>)
; [exec]
; var bypass1: Bool
(declare-const bypass1@60@01 Bool)
; [exec]
; var bypass2: Bool
(declare-const bypass2@61@01 Bool)
; [exec]
; var tmp1: Seq[Measure$]
(declare-const tmp1@62@01 Seq<Measure$>)
; [exec]
; var tmp2: Seq[Measure$]
(declare-const tmp2@63@01 Seq<Measure$>)
; [exec]
; var tmp1_0: Ref
(declare-const tmp1_0@64@01 $Ref)
; [exec]
; var tmp2_0: Ref
(declare-const tmp2_0@65@01 $Ref)
; [exec]
; var tmp1_1: Ref
(declare-const tmp1_1@66@01 $Ref)
; [exec]
; var tmp2_1: Ref
(declare-const tmp2_1@67@01 $Ref)
; [exec]
; var tmp1_2: Ref
(declare-const tmp1_2@68@01 $Ref)
; [exec]
; var tmp2_2: Ref
(declare-const tmp2_2@69@01 $Ref)
; [exec]
; var tmp1_3: Bool
(declare-const tmp1_3@70@01 Bool)
; [exec]
; var tmp2_3: Bool
(declare-const tmp2_3@71@01 Bool)
; [exec]
; var p1_0: Bool
(declare-const p1_0@72@01 Bool)
; [exec]
; var p2_0: Bool
(declare-const p2_0@73@01 Bool)
; [exec]
; var idle1: Bool
(declare-const idle1@74@01 Bool)
; [exec]
; var idle2: Bool
(declare-const idle2@75@01 Bool)
; [exec]
; var p1_1: Bool
(declare-const p1_1@76@01 Bool)
; [exec]
; var p2_1: Bool
(declare-const p2_1@77@01 Bool)
; [exec]
; var p3: Bool
(declare-const p3@78@01 Bool)
; [exec]
; var p4: Bool
(declare-const p4@79@01 Bool)
; [exec]
; inhale p1
(declare-const $t@80@01 $Snap)
(assert (= $t@80@01 $Snap.unit))
(assert p1@16@01)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; ret1 := false
; [exec]
; ret2 := false
; [eval] p1 && !ret1
(set-option :timeout 0)
(push) ; 3
; [then-branch: 28 | !(p1@16@01) | live]
; [else-branch: 28 | p1@16@01 | live]
(push) ; 4
; [then-branch: 28 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 4
(push) ; 4
; [else-branch: 28 | p1@16@01]
; [eval] !ret1
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 29 | p1@16@01 | live]
; [else-branch: 29 | !(p1@16@01) | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 29 | p1@16@01]
; [exec]
; _method_measures_156 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _res := null
; [exec]
; _err := null
; [exec]
; n_1 := n_0
; [exec]
; k_0 := k
; [exec]
; f1 := __prim__int___box__(1)
; [eval] __prim__int___box__(1)
(push) ; 4
(assert (__prim__int___box__%precondition $Snap.unit 1))
(pop) ; 4
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 1))
(declare-const f1@81@01 $Ref)
(assert (= f1@81@01 (__prim__int___box__ $Snap.unit 1)))
; [exec]
; inhale _isDefined(12646)
(declare-const $t@82@01 $Snap)
(assert (= $t@82@01 $Snap.unit))
; [eval] _isDefined(12646)
(push) ; 4
(assert (_isDefined%precondition $Snap.unit 12646))
(pop) ; 4
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 12646))
(assert (_isDefined $Snap.unit 12646))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; f2 := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(set-option :timeout 0)
(push) ; 4
(assert (__prim__int___box__%precondition $Snap.unit 0))
(pop) ; 4
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 0))
(declare-const f2@83@01 $Ref)
(assert (= f2@83@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; inhale _isDefined(12902)
(declare-const $t@84@01 $Snap)
(assert (= $t@84@01 $Snap.unit))
; [eval] _isDefined(12902)
(push) ; 4
(assert (_isDefined%precondition $Snap.unit 12902))
(pop) ; 4
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 12902))
(assert (_isDefined $Snap.unit 12902))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _loop_original_must_terminate := perm(MustTerminate(_cthread_156))
; [eval] perm(MustTerminate(_cthread_156))
(declare-const _loop_original_must_terminate@85@01 $Perm)
(assert (= _loop_original_must_terminate@85@01 $Perm.No))
; [exec]
; _loop_termination_flag := false
; [exec]
; _loop_check_before := true
; [eval] p2 && !ret2
(set-option :timeout 0)
(push) ; 4
; [then-branch: 30 | !(p2@17@01) | live]
; [else-branch: 30 | p2@17@01 | live]
(push) ; 5
; [then-branch: 30 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 5
(push) ; 5
; [else-branch: 30 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or p2@17@01 (not p2@17@01)))
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2@17@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p2@17@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 31 | p2@17@01 | live]
; [else-branch: 31 | !(p2@17@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 31 | p2@17@01]
(assert p2@17@01)
; [exec]
; _method_measures_156_0 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _res_0 := null
; [exec]
; _err_0 := null
; [exec]
; n_1_0 := n_0_0
; [exec]
; k_0_0 := k_1
; [exec]
; f1_0 := __prim__int___box__(1)
; [eval] __prim__int___box__(1)
(push) ; 5
(pop) ; 5
; Joined path conditions
(declare-const f1_0@86@01 $Ref)
(assert (= f1_0@86@01 (__prim__int___box__ $Snap.unit 1)))
; [exec]
; inhale true
(declare-const $t@87@01 $Snap)
(assert (= $t@87@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; f2_0 := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(set-option :timeout 0)
(push) ; 5
(pop) ; 5
; Joined path conditions
(declare-const f2_0@88@01 $Ref)
(assert (= f2_0@88@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; inhale true
(declare-const $t@89@01 $Snap)
(assert (= $t@89@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _loop_original_must_terminate_0 := perm(MustTerminate_0(_cthread_156_0))
; [eval] perm(MustTerminate_0(_cthread_156_0))
(declare-const _loop_original_must_terminate_0@90@01 $Perm)
(assert (= _loop_original_must_terminate_0@90@01 $Perm.No))
; [exec]
; _loop_termination_flag_0 := false
; [exec]
; _loop_check_before_0 := true
; [exec]
; bypass1 := !(p1 && !ret1)
; [eval] !(p1 && !ret1)
; [eval] p1 && !ret1
(set-option :timeout 0)
(push) ; 5
; [then-branch: 32 | !(p1@16@01) | live]
; [else-branch: 32 | p1@16@01 | live]
(push) ; 6
; [then-branch: 32 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 6
(push) ; 6
; [else-branch: 32 | p1@16@01]
; [eval] !ret1
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(declare-const bypass1@91@01 Bool)
(assert (= bypass1@91@01 (not p1@16@01)))
; [exec]
; bypass2 := !(p2 && !ret2)
; [eval] !(p2 && !ret2)
; [eval] p2 && !ret2
(push) ; 5
; [then-branch: 33 | !(p2@17@01) | live]
; [else-branch: 33 | p2@17@01 | live]
(push) ; 6
; [then-branch: 33 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 6
(push) ; 6
; [else-branch: 33 | p2@17@01]
; [eval] !ret2
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(declare-const bypass2@92@01 Bool)
(assert (= bypass2@92@01 (not p2@17@01)))
(push) ; 5
(set-option :timeout 10)
(assert (not (not bypass1@91@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 34 | bypass1@91@01 | dead]
; [else-branch: 34 | !(bypass1@91@01) | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 34 | !(bypass1@91@01)]
(assert (not bypass1@91@01))
(pop) ; 5
; [eval] !bypass1
(push) ; 5
(set-option :timeout 10)
(assert (not bypass1@91@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not bypass1@91@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 35 | !(bypass1@91@01) | live]
; [else-branch: 35 | bypass1@91@01 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 35 | !(bypass1@91@01)]
(assert (not bypass1@91@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (not bypass2@92@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 36 | bypass2@92@01 | dead]
; [else-branch: 36 | !(bypass2@92@01) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 36 | !(bypass2@92@01)]
(assert (not bypass2@92@01))
(pop) ; 6
; [eval] !bypass2
(push) ; 6
(set-option :timeout 10)
(assert (not bypass2@92@01))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not bypass2@92@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 37 | !(bypass2@92@01) | live]
; [else-branch: 37 | bypass2@92@01 | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 37 | !(bypass2@92@01)]
(assert (not bypass2@92@01))
; [exec]
; idle1 := false
; [exec]
; idle2 := false
(declare-const p1_0@93@01 Bool)
(declare-const p2_0@94@01 Bool)
(declare-const idle1@95@01 Bool)
(declare-const idle2@96@01 Bool)
(declare-const _loop_measures@97@01 Seq<Measure$>)
(declare-const f1@98@01 $Ref)
(declare-const f2@99@01 $Ref)
(declare-const n_1@100@01 $Ref)
(declare-const _loop_check_before@101@01 Bool)
(declare-const _loop_measures_0@102@01 Seq<Measure$>)
(declare-const f1_0@103@01 $Ref)
(declare-const f2_0@104@01 $Ref)
(declare-const n_1_0@105@01 $Ref)
(declare-const _loop_check_before_0@106@01 Bool)
(push) ; 7
; Loop head block: Check well-definedness of invariant
(declare-const $t@107@01 $Snap)
(assert (= $t@107@01 ($Snap.combine ($Snap.first $t@107@01) ($Snap.second $t@107@01))))
(assert (= ($Snap.first $t@107@01) $Snap.unit))
; [eval] p1 && !bypass1 ==> (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _residue_157) && ((forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _residue_157) && _residue_156 <= _residue_157)
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 38 | !(p1@16@01) | live]
; [else-branch: 38 | p1@16@01 | live]
(push) ; 9
; [then-branch: 38 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 38 | p1@16@01]
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@91@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@91@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 39 | p1@16@01 && !(bypass1@91@01) | live]
; [else-branch: 39 | !(p1@16@01 && !(bypass1@91@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 39 | p1@16@01 && !(bypass1@91@01)]
(assert (and p1@16@01 (not bypass1@91@01)))
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _residue_157) && ((forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _residue_157) && _residue_156 <= _residue_157)
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _residue_157)
(push) ; 10
; [then-branch: 40 | False | live]
; [else-branch: 40 | True | live]
(push) ; 11
; [then-branch: 40 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 40 | True]
; [eval] (forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _residue_157)
(push) ; 12
; [then-branch: 41 | False | live]
; [else-branch: 41 | True | live]
(push) ; 13
; [then-branch: 41 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 41 | True]
; [eval] _residue_156 <= _residue_157
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
(assert (and p1@16@01 (not bypass1@91@01)))
(assert (=>
  (and p1@16@01 (not bypass1@91@01))
  (<= _residue_156@22@01 _residue_157@54@01)))
(assert (=
  ($Snap.second $t@107@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@107@01))
    ($Snap.second ($Snap.second $t@107@01)))))
(assert (= ($Snap.first ($Snap.second $t@107@01)) $Snap.unit))
; [eval] p2 && !bypass2 ==> (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _residue_157_0) && ((forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _residue_157_0) && _residue_156_0 <= _residue_157_0)
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 42 | !(p2@17@01) | live]
; [else-branch: 42 | p2@17@01 | live]
(push) ; 9
; [then-branch: 42 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 9
(push) ; 9
; [else-branch: 42 | p2@17@01]
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p2@17@01 (not bypass2@92@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p2@17@01 (not bypass2@92@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 43 | p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 43 | !(p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 43 | p2@17@01 && !(bypass2@92@01)]
(assert (and p2@17@01 (not bypass2@92@01)))
; [eval] (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _residue_157_0) && ((forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _residue_157_0) && _residue_156_0 <= _residue_157_0)
; [eval] (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _residue_157_0)
(push) ; 10
; [then-branch: 44 | False | live]
; [else-branch: 44 | True | live]
(push) ; 11
; [then-branch: 44 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 44 | True]
; [eval] (forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _residue_157_0)
(push) ; 12
; [then-branch: 45 | False | live]
; [else-branch: 45 | True | live]
(push) ; 13
; [then-branch: 45 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 45 | True]
; [eval] _residue_156_0 <= _residue_157_0
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
(assert (and p2@17@01 (not bypass2@92@01)))
(assert (=>
  (and p2@17@01 (not bypass2@92@01))
  (<= _residue_156_0@23@01 _residue_157_0@55@01)))
(assert (=
  ($Snap.second ($Snap.second $t@107@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@107@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@107@01))) $Snap.unit))
; [eval] p1 && !bypass1 ==> issubtype(typeof(f1), int())
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 46 | !(p1@16@01) | live]
; [else-branch: 46 | p1@16@01 | live]
(push) ; 9
; [then-branch: 46 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 46 | p1@16@01]
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@91@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@91@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 47 | p1@16@01 && !(bypass1@91@01) | live]
; [else-branch: 47 | !(p1@16@01 && !(bypass1@91@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 47 | p1@16@01 && !(bypass1@91@01)]
(assert (and p1@16@01 (not bypass1@91@01)))
; [eval] issubtype(typeof(f1), int())
; [eval] typeof(f1)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p1@16@01 (not bypass1@91@01)))
(assert (=>
  (and p1@16@01 (not bypass1@91@01))
  (issubtype<Bool> (typeof<PyType> f1@98@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@107@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@107@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@107@01))))
  $Snap.unit))
; [eval] p2 && !bypass2 ==> issubtype(typeof(f1_0), int())
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 48 | !(p2@17@01) | live]
; [else-branch: 48 | p2@17@01 | live]
(push) ; 9
; [then-branch: 48 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 9
(push) ; 9
; [else-branch: 48 | p2@17@01]
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p2@17@01 (not bypass2@92@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p2@17@01 (not bypass2@92@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 49 | p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 49 | !(p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 49 | p2@17@01 && !(bypass2@92@01)]
(assert (and p2@17@01 (not bypass2@92@01)))
; [eval] issubtype(typeof(f1_0), int())
; [eval] typeof(f1_0)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p2@17@01 (not bypass2@92@01)))
(assert (=>
  (and p2@17@01 (not bypass2@92@01))
  (issubtype<Bool> (typeof<PyType> f1_0@103@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))
  $Snap.unit))
; [eval] p1 && !bypass1 ==> issubtype(typeof(f2), int())
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 50 | !(p1@16@01) | live]
; [else-branch: 50 | p1@16@01 | live]
(push) ; 9
; [then-branch: 50 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 50 | p1@16@01]
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@91@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@91@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 51 | p1@16@01 && !(bypass1@91@01) | live]
; [else-branch: 51 | !(p1@16@01 && !(bypass1@91@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 51 | p1@16@01 && !(bypass1@91@01)]
(assert (and p1@16@01 (not bypass1@91@01)))
; [eval] issubtype(typeof(f2), int())
; [eval] typeof(f2)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p1@16@01 (not bypass1@91@01)))
(assert (=>
  (and p1@16@01 (not bypass1@91@01))
  (issubtype<Bool> (typeof<PyType> f2@99@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  $Snap.unit))
; [eval] p2 && !bypass2 ==> issubtype(typeof(f2_0), int())
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 52 | !(p2@17@01) | live]
; [else-branch: 52 | p2@17@01 | live]
(push) ; 9
; [then-branch: 52 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 9
(push) ; 9
; [else-branch: 52 | p2@17@01]
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p2@17@01 (not bypass2@92@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p2@17@01 (not bypass2@92@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 53 | p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 53 | !(p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 53 | p2@17@01 && !(bypass2@92@01)]
(assert (and p2@17@01 (not bypass2@92@01)))
; [eval] issubtype(typeof(f2_0), int())
; [eval] typeof(f2_0)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p2@17@01 (not bypass2@92@01)))
(assert (=>
  (and p2@17@01 (not bypass2@92@01))
  (issubtype<Bool> (typeof<PyType> f2_0@104@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))
  $Snap.unit))
; [eval] p1 && !bypass1 ==> issubtype(typeof(n_1), int())
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 54 | !(p1@16@01) | live]
; [else-branch: 54 | p1@16@01 | live]
(push) ; 9
; [then-branch: 54 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 54 | p1@16@01]
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@91@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@91@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 55 | p1@16@01 && !(bypass1@91@01) | live]
; [else-branch: 55 | !(p1@16@01 && !(bypass1@91@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 55 | p1@16@01 && !(bypass1@91@01)]
(assert (and p1@16@01 (not bypass1@91@01)))
; [eval] issubtype(typeof(n_1), int())
; [eval] typeof(n_1)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p1@16@01 (not bypass1@91@01)))
(assert (=>
  (and p1@16@01 (not bypass1@91@01))
  (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
  $Snap.unit))
; [eval] p2 && !bypass2 ==> issubtype(typeof(n_1_0), int())
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 56 | !(p2@17@01) | live]
; [else-branch: 56 | p2@17@01 | live]
(push) ; 9
; [then-branch: 56 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 9
(push) ; 9
; [else-branch: 56 | p2@17@01]
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p2@17@01 (not bypass2@92@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p2@17@01 (not bypass2@92@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 57 | p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 57 | !(p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 57 | p2@17@01 && !(bypass2@92@01)]
(assert (and p2@17@01 (not bypass2@92@01)))
; [eval] issubtype(typeof(n_1_0), int())
; [eval] typeof(n_1_0)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p2@17@01 (not bypass2@92@01)))
(assert (=>
  (and p2@17@01 (not bypass2@92@01))
  (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))
  $Snap.unit))
; [eval] p1 && (!bypass1 && (p2 && !bypass2)) ==> n_1 == n_1_0
; [eval] p1 && (!bypass1 && (p2 && !bypass2))
(push) ; 8
; [then-branch: 58 | !(p1@16@01) | live]
; [else-branch: 58 | p1@16@01 | live]
(push) ; 9
; [then-branch: 58 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 58 | p1@16@01]
; [eval] !bypass1
(push) ; 10
; [then-branch: 59 | bypass1@91@01 | live]
; [else-branch: 59 | !(bypass1@91@01) | live]
(push) ; 11
; [then-branch: 59 | bypass1@91@01]
(assert bypass1@91@01)
(pop) ; 11
(push) ; 11
; [else-branch: 59 | !(bypass1@91@01)]
(push) ; 12
; [then-branch: 60 | !(p2@17@01) | live]
; [else-branch: 60 | p2@17@01 | live]
(push) ; 13
; [then-branch: 60 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 13
(push) ; 13
; [else-branch: 60 | p2@17@01]
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1@91@01) bypass1@91@01))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=> p1@16@01 (or (not bypass1@91@01) bypass1@91@01)))
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 61 | p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 61 | !(p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 61 | p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01)]
(assert (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))
; [eval] n_1 == n_1_0
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (and p1@16@01 (not bypass1@91@01) p2@17@01 (not bypass2@92@01))))
(assert (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))
(assert (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (= n_1@100@01 n_1_0@105@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
  $Snap.unit))
; [eval] p1 && (!bypass1 && (p2 && !bypass2)) ==> _checkDefined(f1, 12646) == f1_0
; [eval] p1 && (!bypass1 && (p2 && !bypass2))
(push) ; 8
; [then-branch: 62 | !(p1@16@01) | live]
; [else-branch: 62 | p1@16@01 | live]
(push) ; 9
; [then-branch: 62 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 62 | p1@16@01]
; [eval] !bypass1
(push) ; 10
; [then-branch: 63 | bypass1@91@01 | live]
; [else-branch: 63 | !(bypass1@91@01) | live]
(push) ; 11
; [then-branch: 63 | bypass1@91@01]
(assert bypass1@91@01)
(pop) ; 11
(push) ; 11
; [else-branch: 63 | !(bypass1@91@01)]
(push) ; 12
; [then-branch: 64 | !(p2@17@01) | live]
; [else-branch: 64 | p2@17@01 | live]
(push) ; 13
; [then-branch: 64 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 13
(push) ; 13
; [else-branch: 64 | p2@17@01]
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1@91@01) bypass1@91@01))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 65 | p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 65 | !(p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 65 | p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01)]
(assert (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))
; [eval] _checkDefined(f1, 12646) == f1_0
; [eval] _checkDefined(f1, 12646)
(push) ; 10
; [eval] _isDefined(id)
(push) ; 11
(pop) ; 11
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f1@98@01 12646))
(pop) ; 10
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f1@98@01 12646))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (and
    p1@16@01
    (not bypass1@91@01)
    p2@17@01
    (not bypass2@92@01)
    (_checkDefined%precondition $Snap.unit f1@98@01 12646))))
(assert (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))
(assert (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (= (_checkDefined $Snap.unit f1@98@01 12646) f1_0@103@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))
  $Snap.unit))
; [eval] p1 && (!bypass1 && (p2 && !bypass2)) ==> _checkDefined(f2, 12902) == f2_0
; [eval] p1 && (!bypass1 && (p2 && !bypass2))
(push) ; 8
; [then-branch: 66 | !(p1@16@01) | live]
; [else-branch: 66 | p1@16@01 | live]
(push) ; 9
; [then-branch: 66 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 66 | p1@16@01]
; [eval] !bypass1
(push) ; 10
; [then-branch: 67 | bypass1@91@01 | live]
; [else-branch: 67 | !(bypass1@91@01) | live]
(push) ; 11
; [then-branch: 67 | bypass1@91@01]
(assert bypass1@91@01)
(pop) ; 11
(push) ; 11
; [else-branch: 67 | !(bypass1@91@01)]
(push) ; 12
; [then-branch: 68 | !(p2@17@01) | live]
; [else-branch: 68 | p2@17@01 | live]
(push) ; 13
; [then-branch: 68 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 13
(push) ; 13
; [else-branch: 68 | p2@17@01]
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1@91@01) bypass1@91@01))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 69 | p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 69 | !(p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 69 | p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01)]
(assert (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))
; [eval] _checkDefined(f2, 12902) == f2_0
; [eval] _checkDefined(f2, 12902)
(push) ; 10
; [eval] _isDefined(id)
(push) ; 11
(pop) ; 11
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f2@99@01 12902))
(pop) ; 10
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f2@99@01 12902))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (and
    p1@16@01
    (not bypass1@91@01)
    p2@17@01
    (not bypass2@92@01)
    (_checkDefined%precondition $Snap.unit f2@99@01 12902))))
(assert (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))
(assert (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (= (_checkDefined $Snap.unit f2@99@01 12902) f2_0@104@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))
  $Snap.unit))
; [eval] p1 && !bypass1 ==> true
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 70 | !(p1@16@01) | live]
; [else-branch: 70 | p1@16@01 | live]
(push) ; 9
; [then-branch: 70 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 70 | p1@16@01]
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@91@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@91@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 71 | p1@16@01 && !(bypass1@91@01) | live]
; [else-branch: 71 | !(p1@16@01 && !(bypass1@91@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 71 | p1@16@01 && !(bypass1@91@01)]
(assert (and p1@16@01 (not bypass1@91@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p1@16@01 (not bypass1@91@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))
  $Snap.unit))
; [eval] p2 && !bypass2 ==> true
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 72 | !(p2@17@01) | live]
; [else-branch: 72 | p2@17@01 | live]
(push) ; 9
; [then-branch: 72 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 9
(push) ; 9
; [else-branch: 72 | p2@17@01]
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p2@17@01 (not bypass2@92@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p2@17@01 (not bypass2@92@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 73 | p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 73 | !(p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 73 | p2@17@01 && !(bypass2@92@01)]
(assert (and p2@17@01 (not bypass2@92@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p2@17@01 (not bypass2@92@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))
  $Snap.unit))
; [eval] p1 && !bypass1 ==> true
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 74 | !(p1@16@01) | live]
; [else-branch: 74 | p1@16@01 | live]
(push) ; 9
; [then-branch: 74 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 74 | p1@16@01]
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@91@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@91@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 75 | p1@16@01 && !(bypass1@91@01) | live]
; [else-branch: 75 | !(p1@16@01 && !(bypass1@91@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 75 | p1@16@01 && !(bypass1@91@01)]
(assert (and p1@16@01 (not bypass1@91@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p1@16@01 (not bypass1@91@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))
  $Snap.unit))
; [eval] p2 && !bypass2 ==> true
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 76 | !(p2@17@01) | live]
; [else-branch: 76 | p2@17@01 | live]
(push) ; 9
; [then-branch: 76 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 9
(push) ; 9
; [else-branch: 76 | p2@17@01]
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p2@17@01 (not bypass2@92@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p2@17@01 (not bypass2@92@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 77 | p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 77 | !(p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 77 | p2@17@01 && !(bypass2@92@01)]
(assert (and p2@17@01 (not bypass2@92@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p2@17@01 (not bypass2@92@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))
  $Snap.unit))
; [eval] bypass1 ==> tmp1_2 == n_1
(push) ; 8
; [then-branch: 78 | bypass1@91@01 | dead]
; [else-branch: 78 | !(bypass1@91@01) | live]
(push) ; 9
; [else-branch: 78 | !(bypass1@91@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))
  $Snap.unit))
; [eval] bypass1 ==> tmp1_1 == f2
(push) ; 8
; [then-branch: 79 | bypass1@91@01 | dead]
; [else-branch: 79 | !(bypass1@91@01) | live]
(push) ; 9
; [else-branch: 79 | !(bypass1@91@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))
  $Snap.unit))
; [eval] bypass1 ==> tmp1_0 == f1
(push) ; 8
; [then-branch: 80 | bypass1@91@01 | dead]
; [else-branch: 80 | !(bypass1@91@01) | live]
(push) ; 9
; [else-branch: 80 | !(bypass1@91@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))
  $Snap.unit))
; [eval] bypass1 ==> tmp1_3 == _loop_check_before
(push) ; 8
; [then-branch: 81 | bypass1@91@01 | dead]
; [else-branch: 81 | !(bypass1@91@01) | live]
(push) ; 9
; [else-branch: 81 | !(bypass1@91@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))
  $Snap.unit))
; [eval] bypass1 ==> tmp1 == _loop_measures
(push) ; 8
; [then-branch: 82 | bypass1@91@01 | dead]
; [else-branch: 82 | !(bypass1@91@01) | live]
(push) ; 9
; [else-branch: 82 | !(bypass1@91@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))))
  $Snap.unit))
; [eval] bypass2 ==> tmp2_1 == f2_0
(push) ; 8
; [then-branch: 83 | bypass2@92@01 | dead]
; [else-branch: 83 | !(bypass2@92@01) | live]
(push) ; 9
; [else-branch: 83 | !(bypass2@92@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))))
  $Snap.unit))
; [eval] bypass2 ==> tmp2_0 == f1_0
(push) ; 8
; [then-branch: 84 | bypass2@92@01 | dead]
; [else-branch: 84 | !(bypass2@92@01) | live]
(push) ; 9
; [else-branch: 84 | !(bypass2@92@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))))))
  $Snap.unit))
; [eval] bypass2 ==> tmp2_2 == n_1_0
(push) ; 8
; [then-branch: 85 | bypass2@92@01 | dead]
; [else-branch: 85 | !(bypass2@92@01) | live]
(push) ; 9
; [else-branch: 85 | !(bypass2@92@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))))))
  $Snap.unit))
; [eval] bypass2 ==> tmp2_3 == _loop_check_before_0
(push) ; 8
; [then-branch: 86 | bypass2@92@01 | dead]
; [else-branch: 86 | !(bypass2@92@01) | live]
(push) ; 9
; [else-branch: 86 | !(bypass2@92@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))))))
  $Snap.unit))
; [eval] bypass2 ==> tmp2 == _loop_measures_0
(push) ; 8
; [then-branch: 87 | bypass2@92@01 | dead]
; [else-branch: 87 | !(bypass2@92@01) | live]
(push) ; 9
; [else-branch: 87 | !(bypass2@92@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(pop) ; 7
(push) ; 7
; Loop head block: Establish invariant
; [eval] p1 && !bypass1 ==> true
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 88 | !(p1@16@01) | live]
; [else-branch: 88 | p1@16@01 | live]
(push) ; 9
; [then-branch: 88 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 88 | p1@16@01]
(assert p1@16@01)
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@91@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@91@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 89 | p1@16@01 && !(bypass1@91@01) | live]
; [else-branch: 89 | !(p1@16@01 && !(bypass1@91@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 89 | p1@16@01 && !(bypass1@91@01)]
(assert (and p1@16@01 (not bypass1@91@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p1@16@01 (not bypass1@91@01)))
; [eval] p2 && !bypass2 ==> true
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 90 | !(p2@17@01) | live]
; [else-branch: 90 | p2@17@01 | live]
(push) ; 9
; [then-branch: 90 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 9
(push) ; 9
; [else-branch: 90 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p2@17@01 (not bypass2@92@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p2@17@01 (not bypass2@92@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 91 | p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 91 | !(p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 91 | p2@17@01 && !(bypass2@92@01)]
(assert (and p2@17@01 (not bypass2@92@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p2@17@01 (not bypass2@92@01)))
; [eval] p1 && !bypass1 ==> issubtype(typeof(f1), int())
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 92 | !(p1@16@01) | live]
; [else-branch: 92 | p1@16@01 | live]
(push) ; 9
; [then-branch: 92 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 92 | p1@16@01]
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@91@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@91@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 93 | p1@16@01 && !(bypass1@91@01) | live]
; [else-branch: 93 | !(p1@16@01 && !(bypass1@91@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 93 | p1@16@01 && !(bypass1@91@01)]
(assert (and p1@16@01 (not bypass1@91@01)))
; [eval] issubtype(typeof(f1), int())
; [eval] typeof(f1)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p1@16@01 (not bypass1@91@01)))
(push) ; 8
(assert (not (=>
  (and p1@16@01 (not bypass1@91@01))
  (issubtype<Bool> (typeof<PyType> f1@81@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p1@16@01 (not bypass1@91@01))
  (issubtype<Bool> (typeof<PyType> f1@81@01) (as int<PyType>  PyType))))
; [eval] p2 && !bypass2 ==> issubtype(typeof(f1_0), int())
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 94 | !(p2@17@01) | live]
; [else-branch: 94 | p2@17@01 | live]
(push) ; 9
; [then-branch: 94 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 9
(push) ; 9
; [else-branch: 94 | p2@17@01]
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p2@17@01 (not bypass2@92@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p2@17@01 (not bypass2@92@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 95 | p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 95 | !(p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 95 | p2@17@01 && !(bypass2@92@01)]
(assert (and p2@17@01 (not bypass2@92@01)))
; [eval] issubtype(typeof(f1_0), int())
; [eval] typeof(f1_0)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p2@17@01 (not bypass2@92@01)))
(push) ; 8
(assert (not (=>
  (and p2@17@01 (not bypass2@92@01))
  (issubtype<Bool> (typeof<PyType> f1_0@86@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p2@17@01 (not bypass2@92@01))
  (issubtype<Bool> (typeof<PyType> f1_0@86@01) (as int<PyType>  PyType))))
; [eval] p1 && !bypass1 ==> issubtype(typeof(f2), int())
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 96 | !(p1@16@01) | live]
; [else-branch: 96 | p1@16@01 | live]
(push) ; 9
; [then-branch: 96 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 96 | p1@16@01]
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@91@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@91@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 97 | p1@16@01 && !(bypass1@91@01) | live]
; [else-branch: 97 | !(p1@16@01 && !(bypass1@91@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 97 | p1@16@01 && !(bypass1@91@01)]
(assert (and p1@16@01 (not bypass1@91@01)))
; [eval] issubtype(typeof(f2), int())
; [eval] typeof(f2)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p1@16@01 (not bypass1@91@01)))
(push) ; 8
(assert (not (=>
  (and p1@16@01 (not bypass1@91@01))
  (issubtype<Bool> (typeof<PyType> f2@83@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p1@16@01 (not bypass1@91@01))
  (issubtype<Bool> (typeof<PyType> f2@83@01) (as int<PyType>  PyType))))
; [eval] p2 && !bypass2 ==> issubtype(typeof(f2_0), int())
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 98 | !(p2@17@01) | live]
; [else-branch: 98 | p2@17@01 | live]
(push) ; 9
; [then-branch: 98 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 9
(push) ; 9
; [else-branch: 98 | p2@17@01]
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p2@17@01 (not bypass2@92@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p2@17@01 (not bypass2@92@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 99 | p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 99 | !(p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 99 | p2@17@01 && !(bypass2@92@01)]
(assert (and p2@17@01 (not bypass2@92@01)))
; [eval] issubtype(typeof(f2_0), int())
; [eval] typeof(f2_0)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p2@17@01 (not bypass2@92@01)))
(push) ; 8
(assert (not (=>
  (and p2@17@01 (not bypass2@92@01))
  (issubtype<Bool> (typeof<PyType> f2_0@88@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p2@17@01 (not bypass2@92@01))
  (issubtype<Bool> (typeof<PyType> f2_0@88@01) (as int<PyType>  PyType))))
; [eval] p1 && !bypass1 ==> issubtype(typeof(n_1), int())
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 100 | !(p1@16@01) | live]
; [else-branch: 100 | p1@16@01 | live]
(push) ; 9
; [then-branch: 100 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 100 | p1@16@01]
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@91@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@91@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 101 | p1@16@01 && !(bypass1@91@01) | live]
; [else-branch: 101 | !(p1@16@01 && !(bypass1@91@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 101 | p1@16@01 && !(bypass1@91@01)]
(assert (and p1@16@01 (not bypass1@91@01)))
; [eval] issubtype(typeof(n_1), int())
; [eval] typeof(n_1)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p1@16@01 (not bypass1@91@01)))
(push) ; 8
(assert (not (=>
  (and p1@16@01 (not bypass1@91@01))
  (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p1@16@01 (not bypass1@91@01))
  (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType))))
; [eval] p2 && !bypass2 ==> issubtype(typeof(n_1_0), int())
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 102 | !(p2@17@01) | live]
; [else-branch: 102 | p2@17@01 | live]
(push) ; 9
; [then-branch: 102 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 9
(push) ; 9
; [else-branch: 102 | p2@17@01]
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p2@17@01 (not bypass2@92@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p2@17@01 (not bypass2@92@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 103 | p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 103 | !(p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 103 | p2@17@01 && !(bypass2@92@01)]
(assert (and p2@17@01 (not bypass2@92@01)))
; [eval] issubtype(typeof(n_1_0), int())
; [eval] typeof(n_1_0)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p2@17@01 (not bypass2@92@01)))
(push) ; 8
(assert (not (=>
  (and p2@17@01 (not bypass2@92@01))
  (issubtype<Bool> (typeof<PyType> n_0_0@25@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p2@17@01 (not bypass2@92@01))
  (issubtype<Bool> (typeof<PyType> n_0_0@25@01) (as int<PyType>  PyType))))
; [eval] p1 && (!bypass1 && (p2 && !bypass2)) ==> n_1 == n_1_0
; [eval] p1 && (!bypass1 && (p2 && !bypass2))
(push) ; 8
; [then-branch: 104 | !(p1@16@01) | live]
; [else-branch: 104 | p1@16@01 | live]
(push) ; 9
; [then-branch: 104 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 104 | p1@16@01]
; [eval] !bypass1
(push) ; 10
; [then-branch: 105 | bypass1@91@01 | live]
; [else-branch: 105 | !(bypass1@91@01) | live]
(push) ; 11
; [then-branch: 105 | bypass1@91@01]
(assert bypass1@91@01)
(pop) ; 11
(push) ; 11
; [else-branch: 105 | !(bypass1@91@01)]
(push) ; 12
; [then-branch: 106 | !(p2@17@01) | live]
; [else-branch: 106 | p2@17@01 | live]
(push) ; 13
; [then-branch: 106 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 13
(push) ; 13
; [else-branch: 106 | p2@17@01]
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1@91@01) bypass1@91@01))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=> p1@16@01 (or (not bypass1@91@01) bypass1@91@01)))
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 107 | p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 107 | !(p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 107 | p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01)]
(assert (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))
; [eval] n_1 == n_1_0
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (and p1@16@01 (not bypass1@91@01) p2@17@01 (not bypass2@92@01))))
(assert (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))
(push) ; 8
(assert (not (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (= n_0@24@01 n_0_0@25@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (= n_0@24@01 n_0_0@25@01)))
; [eval] p1 && (!bypass1 && (p2 && !bypass2)) ==> _checkDefined(f1, 12646) == f1_0
; [eval] p1 && (!bypass1 && (p2 && !bypass2))
(push) ; 8
; [then-branch: 108 | !(p1@16@01) | live]
; [else-branch: 108 | p1@16@01 | live]
(push) ; 9
; [then-branch: 108 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 108 | p1@16@01]
; [eval] !bypass1
(push) ; 10
; [then-branch: 109 | bypass1@91@01 | live]
; [else-branch: 109 | !(bypass1@91@01) | live]
(push) ; 11
; [then-branch: 109 | bypass1@91@01]
(assert bypass1@91@01)
(pop) ; 11
(push) ; 11
; [else-branch: 109 | !(bypass1@91@01)]
(push) ; 12
; [then-branch: 110 | !(p2@17@01) | live]
; [else-branch: 110 | p2@17@01 | live]
(push) ; 13
; [then-branch: 110 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 13
(push) ; 13
; [else-branch: 110 | p2@17@01]
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1@91@01) bypass1@91@01))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 111 | p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 111 | !(p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 111 | p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01)]
(assert (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))
; [eval] _checkDefined(f1, 12646) == f1_0
; [eval] _checkDefined(f1, 12646)
(push) ; 10
; [eval] _isDefined(id)
(push) ; 11
(pop) ; 11
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f1@81@01 12646))
(pop) ; 10
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f1@81@01 12646))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (and
    p1@16@01
    (not bypass1@91@01)
    p2@17@01
    (not bypass2@92@01)
    (_checkDefined%precondition $Snap.unit f1@81@01 12646))))
(assert (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))
(push) ; 8
(assert (not (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (= (_checkDefined $Snap.unit f1@81@01 12646) f1_0@86@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (= (_checkDefined $Snap.unit f1@81@01 12646) f1_0@86@01)))
; [eval] p1 && (!bypass1 && (p2 && !bypass2)) ==> _checkDefined(f2, 12902) == f2_0
; [eval] p1 && (!bypass1 && (p2 && !bypass2))
(push) ; 8
; [then-branch: 112 | !(p1@16@01) | live]
; [else-branch: 112 | p1@16@01 | live]
(push) ; 9
; [then-branch: 112 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 112 | p1@16@01]
; [eval] !bypass1
(push) ; 10
; [then-branch: 113 | bypass1@91@01 | live]
; [else-branch: 113 | !(bypass1@91@01) | live]
(push) ; 11
; [then-branch: 113 | bypass1@91@01]
(assert bypass1@91@01)
(pop) ; 11
(push) ; 11
; [else-branch: 113 | !(bypass1@91@01)]
(push) ; 12
; [then-branch: 114 | !(p2@17@01) | live]
; [else-branch: 114 | p2@17@01 | live]
(push) ; 13
; [then-branch: 114 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 13
(push) ; 13
; [else-branch: 114 | p2@17@01]
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1@91@01) bypass1@91@01))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 115 | p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 115 | !(p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 115 | p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01)]
(assert (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))
; [eval] _checkDefined(f2, 12902) == f2_0
; [eval] _checkDefined(f2, 12902)
(push) ; 10
; [eval] _isDefined(id)
(push) ; 11
(pop) ; 11
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f2@83@01 12902))
(pop) ; 10
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f2@83@01 12902))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (and
    p1@16@01
    (not bypass1@91@01)
    p2@17@01
    (not bypass2@92@01)
    (_checkDefined%precondition $Snap.unit f2@83@01 12902))))
(assert (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))
(push) ; 8
(assert (not (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (= (_checkDefined $Snap.unit f2@83@01 12902) f2_0@88@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (= (_checkDefined $Snap.unit f2@83@01 12902) f2_0@88@01)))
; [eval] p1 && !bypass1 ==> !idle1 ==> _loop_check_before ==> _loop_termination_flag || (!int___gt__(int___unbox__(n_1), 0) || perm(MustTerminate(_cthread_156)) == none && ((forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))))
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 116 | !(p1@16@01) | live]
; [else-branch: 116 | p1@16@01 | live]
(push) ; 9
; [then-branch: 116 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 116 | p1@16@01]
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@91@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@91@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 117 | p1@16@01 && !(bypass1@91@01) | live]
; [else-branch: 117 | !(p1@16@01 && !(bypass1@91@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 117 | p1@16@01 && !(bypass1@91@01)]
(assert (and p1@16@01 (not bypass1@91@01)))
; [eval] !idle1 ==> _loop_check_before ==> _loop_termination_flag || (!int___gt__(int___unbox__(n_1), 0) || perm(MustTerminate(_cthread_156)) == none && ((forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))))
; [eval] !idle1
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 118 | True | live]
; [else-branch: 118 | False | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 118 | True]
; [eval] _loop_check_before ==> _loop_termination_flag || (!int___gt__(int___unbox__(n_1), 0) || perm(MustTerminate(_cthread_156)) == none && ((forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))))
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 119 | True | live]
; [else-branch: 119 | False | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 119 | True]
; [eval] _loop_termination_flag || (!int___gt__(int___unbox__(n_1), 0) || perm(MustTerminate(_cthread_156)) == none && ((forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))))
(push) ; 14
; [then-branch: 120 | False | live]
; [else-branch: 120 | True | live]
(push) ; 15
; [then-branch: 120 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 120 | True]
; [eval] !int___gt__(int___unbox__(n_1), 0)
; [eval] int___gt__(int___unbox__(n_1), 0)
; [eval] int___unbox__(n_1)
(push) ; 16
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 17
(assert (not (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_0@24@01))
(pop) ; 16
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_0@24@01)))
(push) ; 16
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0))
(pop) ; 16
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0))
(push) ; 16
; [then-branch: 121 | !(int___gt__(_, int___unbox__(_, n_0@24@01), 0)) | live]
; [else-branch: 121 | int___gt__(_, int___unbox__(_, n_0@24@01), 0) | live]
(push) ; 17
; [then-branch: 121 | !(int___gt__(_, int___unbox__(_, n_0@24@01), 0))]
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)))
(pop) ; 17
(push) ; 17
; [else-branch: 121 | int___gt__(_, int___unbox__(_, n_0@24@01), 0)]
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0))
; [eval] perm(MustTerminate(_cthread_156)) == none && ((forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_156)) == none
; [eval] perm(MustTerminate(_cthread_156))
(push) ; 18
; [then-branch: 122 | False | live]
; [else-branch: 122 | True | live]
(push) ; 19
; [then-branch: 122 | False]
(assert false)
(pop) ; 19
(push) ; 19
; [else-branch: 122 | True]
; [eval] (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false)
(push) ; 20
; [then-branch: 123 | False | live]
; [else-branch: 123 | True | live]
(push) ; 21
; [then-branch: 123 | False]
(assert false)
(pop) ; 21
(push) ; 21
; [else-branch: 123 | True]
; [eval] (forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false)
(push) ; 22
; [then-branch: 124 | False | live]
; [else-branch: 124 | True | live]
(push) ; 23
; [then-branch: 124 | False]
(assert false)
(pop) ; 23
(push) ; 23
; [else-branch: 124 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false)
(push) ; 24
; [then-branch: 125 | False | live]
; [else-branch: 125 | True | live]
(push) ; 25
; [then-branch: 125 | False]
(assert false)
(pop) ; 25
(push) ; 25
; [else-branch: 125 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)
(pop) ; 25
(pop) ; 24
; Joined path conditions
; Joined path conditions
(pop) ; 23
(pop) ; 22
; Joined path conditions
; Joined path conditions
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (or
  (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)
  (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0))))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_0@24@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)
  (or
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)
    (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_0@24@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)
  (or
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)
    (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_0@24@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)
  (or
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)
    (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (and p1@16@01 (not bypass1@91@01))
  (and
    p1@16@01
    (not bypass1@91@01)
    (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_0@24@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)
    (or
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)
      (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0))))))
(assert (and p1@16@01 (not bypass1@91@01)))
; [eval] p2 && !bypass2 ==> !idle2 ==> _loop_check_before_0 ==> _loop_termination_flag_0 || (!int___gt__(int___unbox__(n_1_0), 0) || perm(MustTerminate_0(_cthread_156_0)) == none && ((forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))))
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 126 | !(p2@17@01) | live]
; [else-branch: 126 | p2@17@01 | live]
(push) ; 9
; [then-branch: 126 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 9
(push) ; 9
; [else-branch: 126 | p2@17@01]
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p2@17@01 (not bypass2@92@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p2@17@01 (not bypass2@92@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 127 | p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 127 | !(p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 127 | p2@17@01 && !(bypass2@92@01)]
(assert (and p2@17@01 (not bypass2@92@01)))
; [eval] !idle2 ==> _loop_check_before_0 ==> _loop_termination_flag_0 || (!int___gt__(int___unbox__(n_1_0), 0) || perm(MustTerminate_0(_cthread_156_0)) == none && ((forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))))
; [eval] !idle2
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 128 | True | live]
; [else-branch: 128 | False | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 128 | True]
; [eval] _loop_check_before_0 ==> _loop_termination_flag_0 || (!int___gt__(int___unbox__(n_1_0), 0) || perm(MustTerminate_0(_cthread_156_0)) == none && ((forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))))
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 129 | True | live]
; [else-branch: 129 | False | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 129 | True]
; [eval] _loop_termination_flag_0 || (!int___gt__(int___unbox__(n_1_0), 0) || perm(MustTerminate_0(_cthread_156_0)) == none && ((forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))))
(push) ; 14
; [then-branch: 130 | False | live]
; [else-branch: 130 | True | live]
(push) ; 15
; [then-branch: 130 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 130 | True]
; [eval] !int___gt__(int___unbox__(n_1_0), 0)
; [eval] int___gt__(int___unbox__(n_1_0), 0)
; [eval] int___unbox__(n_1_0)
(push) ; 16
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 17
(assert (not (issubtype<Bool> (typeof<PyType> n_0_0@25@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_0_0@25@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_0_0@25@01))
(pop) ; 16
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_0_0@25@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_0_0@25@01)))
(push) ; 16
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0))
(pop) ; 16
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0))
(push) ; 16
; [then-branch: 131 | !(int___gt__(_, int___unbox__(_, n_0_0@25@01), 0)) | live]
; [else-branch: 131 | int___gt__(_, int___unbox__(_, n_0_0@25@01), 0) | live]
(push) ; 17
; [then-branch: 131 | !(int___gt__(_, int___unbox__(_, n_0_0@25@01), 0))]
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0)))
(pop) ; 17
(push) ; 17
; [else-branch: 131 | int___gt__(_, int___unbox__(_, n_0_0@25@01), 0)]
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0))
; [eval] perm(MustTerminate_0(_cthread_156_0)) == none && ((forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false))))
; [eval] perm(MustTerminate_0(_cthread_156_0)) == none
; [eval] perm(MustTerminate_0(_cthread_156_0))
(push) ; 18
; [then-branch: 132 | False | live]
; [else-branch: 132 | True | live]
(push) ; 19
; [then-branch: 132 | False]
(assert false)
(pop) ; 19
(push) ; 19
; [else-branch: 132 | True]
; [eval] (forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false)
(push) ; 20
; [then-branch: 133 | False | live]
; [else-branch: 133 | True | live]
(push) ; 21
; [then-branch: 133 | False]
(assert false)
(pop) ; 21
(push) ; 21
; [else-branch: 133 | True]
; [eval] (forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false)
(push) ; 22
; [then-branch: 134 | False | live]
; [else-branch: 134 | True | live]
(push) ; 23
; [then-branch: 134 | False]
(assert false)
(pop) ; 23
(push) ; 23
; [else-branch: 134 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false)
(push) ; 24
; [then-branch: 135 | False | live]
; [else-branch: 135 | True | live]
(push) ; 25
; [then-branch: 135 | False]
(assert false)
(pop) ; 25
(push) ; 25
; [else-branch: 135 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)
(pop) ; 25
(pop) ; 24
; Joined path conditions
; Joined path conditions
(pop) ; 23
(pop) ; 22
; Joined path conditions
; Joined path conditions
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (or
  (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0)
  (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0))))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_0_0@25@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_0_0@25@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0)
  (or
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0)
    (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_0_0@25@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_0_0@25@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0)
  (or
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0)
    (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0)))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_0_0@25@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_0_0@25@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0)
  (or
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0)
    (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (and p2@17@01 (not bypass2@92@01))
  (and
    p2@17@01
    (not bypass2@92@01)
    (issubtype<Bool> (typeof<PyType> n_0_0@25@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_0_0@25@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0)
    (or
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0)
      (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0_0@25@01) 0))))))
(assert (and p2@17@01 (not bypass2@92@01)))
; [eval] p1 && !bypass1 ==> !idle1 ==> !_loop_check_before ==> (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 136 | !(p1@16@01) | live]
; [else-branch: 136 | p1@16@01 | live]
(push) ; 9
; [then-branch: 136 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 136 | p1@16@01]
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@91@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@91@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 137 | p1@16@01 && !(bypass1@91@01) | live]
; [else-branch: 137 | !(p1@16@01 && !(bypass1@91@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 137 | p1@16@01 && !(bypass1@91@01)]
(assert (and p1@16@01 (not bypass1@91@01)))
; [eval] !idle1 ==> !_loop_check_before ==> (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))
; [eval] !idle1
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 138 | True | live]
; [else-branch: 138 | False | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 138 | True]
; [eval] !_loop_check_before ==> (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before
(push) ; 12
; [then-branch: 139 | False | dead]
; [else-branch: 139 | True | live]
(push) ; 13
; [else-branch: 139 | True]
(pop) ; 13
(pop) ; 12
; Joined path conditions
(pop) ; 11
(pop) ; 10
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p1@16@01 (not bypass1@91@01)))
; [eval] p2 && !bypass2 ==> !idle2 ==> !_loop_check_before_0 ==> (forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 140 | !(p2@17@01) | live]
; [else-branch: 140 | p2@17@01 | live]
(push) ; 9
; [then-branch: 140 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 9
(push) ; 9
; [else-branch: 140 | p2@17@01]
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p2@17@01 (not bypass2@92@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p2@17@01 (not bypass2@92@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 141 | p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 141 | !(p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 141 | p2@17@01 && !(bypass2@92@01)]
(assert (and p2@17@01 (not bypass2@92@01)))
; [eval] !idle2 ==> !_loop_check_before_0 ==> (forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))
; [eval] !idle2
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 142 | True | live]
; [else-branch: 142 | False | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 142 | True]
; [eval] !_loop_check_before_0 ==> (forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))
; [eval] !_loop_check_before_0
(push) ; 12
; [then-branch: 143 | False | dead]
; [else-branch: 143 | True | live]
(push) ; 13
; [else-branch: 143 | True]
(pop) ; 13
(pop) ; 12
; Joined path conditions
(pop) ; 11
(pop) ; 10
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p2@17@01 (not bypass2@92@01)))
; [eval] bypass1 ==> tmp1_2 == n_1
(push) ; 8
; [then-branch: 144 | bypass1@91@01 | dead]
; [else-branch: 144 | !(bypass1@91@01) | live]
(push) ; 9
; [else-branch: 144 | !(bypass1@91@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] bypass1 ==> tmp1_1 == f2
(push) ; 8
; [then-branch: 145 | bypass1@91@01 | dead]
; [else-branch: 145 | !(bypass1@91@01) | live]
(push) ; 9
; [else-branch: 145 | !(bypass1@91@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] bypass1 ==> tmp1_0 == f1
(push) ; 8
; [then-branch: 146 | bypass1@91@01 | dead]
; [else-branch: 146 | !(bypass1@91@01) | live]
(push) ; 9
; [else-branch: 146 | !(bypass1@91@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] bypass1 ==> tmp1_3 == _loop_check_before
(push) ; 8
; [then-branch: 147 | bypass1@91@01 | dead]
; [else-branch: 147 | !(bypass1@91@01) | live]
(push) ; 9
; [else-branch: 147 | !(bypass1@91@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] bypass1 ==> tmp1 == _loop_measures
(push) ; 8
; [then-branch: 148 | bypass1@91@01 | dead]
; [else-branch: 148 | !(bypass1@91@01) | live]
(push) ; 9
; [else-branch: 148 | !(bypass1@91@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] bypass2 ==> tmp2_1 == f2_0
(push) ; 8
; [then-branch: 149 | bypass2@92@01 | dead]
; [else-branch: 149 | !(bypass2@92@01) | live]
(push) ; 9
; [else-branch: 149 | !(bypass2@92@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] bypass2 ==> tmp2_0 == f1_0
(push) ; 8
; [then-branch: 150 | bypass2@92@01 | dead]
; [else-branch: 150 | !(bypass2@92@01) | live]
(push) ; 9
; [else-branch: 150 | !(bypass2@92@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] bypass2 ==> tmp2_2 == n_1_0
(push) ; 8
; [then-branch: 151 | bypass2@92@01 | dead]
; [else-branch: 151 | !(bypass2@92@01) | live]
(push) ; 9
; [else-branch: 151 | !(bypass2@92@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] bypass2 ==> tmp2_3 == _loop_check_before_0
(push) ; 8
; [then-branch: 152 | bypass2@92@01 | dead]
; [else-branch: 152 | !(bypass2@92@01) | live]
(push) ; 9
; [else-branch: 152 | !(bypass2@92@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] bypass2 ==> tmp2 == _loop_measures_0
(push) ; 8
; [then-branch: 153 | bypass2@92@01 | dead]
; [else-branch: 153 | !(bypass2@92@01) | live]
(push) ; 9
; [else-branch: 153 | !(bypass2@92@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 8
(assert (= $t@107@01 ($Snap.combine ($Snap.first $t@107@01) ($Snap.second $t@107@01))))
(assert (= ($Snap.first $t@107@01) $Snap.unit))
(assert (=>
  (and p1@16@01 (not bypass1@91@01))
  (<= _residue_156@22@01 _residue_157@54@01)))
(assert (=
  ($Snap.second $t@107@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@107@01))
    ($Snap.second ($Snap.second $t@107@01)))))
(assert (= ($Snap.first ($Snap.second $t@107@01)) $Snap.unit))
(assert (=>
  (and p2@17@01 (not bypass2@92@01))
  (<= _residue_156_0@23@01 _residue_157_0@55@01)))
(assert (=
  ($Snap.second ($Snap.second $t@107@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@107@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@107@01))) $Snap.unit))
(assert (=>
  (and p1@16@01 (not bypass1@91@01))
  (issubtype<Bool> (typeof<PyType> f1@98@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@107@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@107@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@107@01))))
  $Snap.unit))
(assert (=>
  (and p2@17@01 (not bypass2@92@01))
  (issubtype<Bool> (typeof<PyType> f1_0@103@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))
  $Snap.unit))
(assert (=>
  (and p1@16@01 (not bypass1@91@01))
  (issubtype<Bool> (typeof<PyType> f2@99@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  $Snap.unit))
(assert (=>
  (and p2@17@01 (not bypass2@92@01))
  (issubtype<Bool> (typeof<PyType> f2_0@104@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))
  $Snap.unit))
(assert (=>
  (and p1@16@01 (not bypass1@91@01))
  (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
  $Snap.unit))
(assert (=>
  (and p2@17@01 (not bypass2@92@01))
  (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))
  $Snap.unit))
(assert (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (= n_1@100@01 n_1_0@105@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
  $Snap.unit))
(assert (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (and
    p1@16@01
    (not bypass1@91@01)
    p2@17@01
    (not bypass2@92@01)
    (_checkDefined%precondition $Snap.unit f1@98@01 12646))))
(assert (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (= (_checkDefined $Snap.unit f1@98@01 12646) f1_0@103@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))
  $Snap.unit))
(assert (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (and
    p1@16@01
    (not bypass1@91@01)
    p2@17@01
    (not bypass2@92@01)
    (_checkDefined%precondition $Snap.unit f2@99@01 12902))))
(assert (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (= (_checkDefined $Snap.unit f2@99@01 12902) f2_0@104@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))))))))))))))
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
(push) ; 9
; [eval] p1 && (!ret1 && (!bypass1 && int___gt__(int___unbox__(n_1), 0))) || p2 && (!ret2 && (!bypass2 && int___gt__(int___unbox__(n_1_0), 0)))
; [eval] p1 && (!ret1 && (!bypass1 && int___gt__(int___unbox__(n_1), 0)))
(push) ; 10
; [then-branch: 154 | !(p1@16@01) | live]
; [else-branch: 154 | p1@16@01 | live]
(push) ; 11
; [then-branch: 154 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 11
(push) ; 11
; [else-branch: 154 | p1@16@01]
; [eval] !ret1
(push) ; 12
; [then-branch: 155 | False | live]
; [else-branch: 155 | True | live]
(push) ; 13
; [then-branch: 155 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 155 | True]
; [eval] !bypass1
(push) ; 14
; [then-branch: 156 | bypass1@91@01 | live]
; [else-branch: 156 | !(bypass1@91@01) | live]
(push) ; 15
; [then-branch: 156 | bypass1@91@01]
(assert bypass1@91@01)
(pop) ; 15
(push) ; 15
; [else-branch: 156 | !(bypass1@91@01)]
; [eval] int___gt__(int___unbox__(n_1), 0)
; [eval] int___unbox__(n_1)
(push) ; 16
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 17
(assert (not (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1@100@01))
(pop) ; 16
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1@100@01)))
(push) ; 16
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))
(pop) ; 16
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (=>
  (not bypass1@91@01)
  (and
    (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_1@100@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
(assert (or (not bypass1@91@01) bypass1@91@01))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (and
  (=>
    (not bypass1@91@01)
    (and
      (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))
      (int___unbox__%precondition $Snap.unit n_1@100@01)
      (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))
  (or (not bypass1@91@01) bypass1@91@01)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  p1@16@01
  (and
    (=>
      (not bypass1@91@01)
      (and
        (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))
        (int___unbox__%precondition $Snap.unit n_1@100@01)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))
    (or (not bypass1@91@01) bypass1@91@01))))
(push) ; 10
; [then-branch: 157 | p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0) | live]
; [else-branch: 157 | !(p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0)) | live]
(push) ; 11
; [then-branch: 157 | p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0)]
(assert (and
  p1@16@01
  (and
    (not bypass1@91@01)
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
(pop) ; 11
(push) ; 11
; [else-branch: 157 | !(p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0))]
(assert (not
  (and
    p1@16@01
    (and
      (not bypass1@91@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))))
; [eval] p2 && (!ret2 && (!bypass2 && int___gt__(int___unbox__(n_1_0), 0)))
(push) ; 12
; [then-branch: 158 | !(p2@17@01) | live]
; [else-branch: 158 | p2@17@01 | live]
(push) ; 13
; [then-branch: 158 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 13
(push) ; 13
; [else-branch: 158 | p2@17@01]
; [eval] !ret2
(push) ; 14
; [then-branch: 159 | False | live]
; [else-branch: 159 | True | live]
(push) ; 15
; [then-branch: 159 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 159 | True]
; [eval] !bypass2
(push) ; 16
; [then-branch: 160 | bypass2@92@01 | live]
; [else-branch: 160 | !(bypass2@92@01) | live]
(push) ; 17
; [then-branch: 160 | bypass2@92@01]
(assert bypass2@92@01)
(pop) ; 17
(push) ; 17
; [else-branch: 160 | !(bypass2@92@01)]
; [eval] int___gt__(int___unbox__(n_1_0), 0)
; [eval] int___unbox__(n_1_0)
(push) ; 18
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 19
(assert (not (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1_0@105@01))
(pop) ; 18
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1_0@105@01)))
(push) ; 18
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))
(pop) ; 18
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (=>
  (not bypass2@92@01)
  (and
    (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_1_0@105@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))))
(assert (or (not bypass2@92@01) bypass2@92@01))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (and
  (=>
    (not bypass2@92@01)
    (and
      (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
      (int___unbox__%precondition $Snap.unit n_1_0@105@01)
      (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0)))
  (or (not bypass2@92@01) bypass2@92@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  p2@17@01
  (and
    (=>
      (not bypass2@92@01)
      (and
        (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
        (int___unbox__%precondition $Snap.unit n_1_0@105@01)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0)))
    (or (not bypass2@92@01) bypass2@92@01))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (=>
  (and
    p1@16@01
    (and
      (not bypass1@91@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))
  (and
    p1@16@01
    (not bypass1@91@01)
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1@16@01
      (and
        (not bypass1@91@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
  (and
    (not
      (and
        p1@16@01
        (and
          (not bypass1@91@01)
          (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
    (=>
      p2@17@01
      (and
        (=>
          (not bypass2@92@01)
          (and
            (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
            (int___unbox__%precondition $Snap.unit n_1_0@105@01)
            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0)))
        (or (not bypass2@92@01) bypass2@92@01))))))
(assert (or
  (not
    (and
      p1@16@01
      (and
        (not bypass1@91@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
  (and
    p1@16@01
    (and
      (not bypass1@91@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))))
(pop) ; 9
(push) ; 9
; [eval] !(p1 && (!ret1 && (!bypass1 && int___gt__(int___unbox__(n_1), 0))) || p2 && (!ret2 && (!bypass2 && int___gt__(int___unbox__(n_1_0), 0))))
; [eval] p1 && (!ret1 && (!bypass1 && int___gt__(int___unbox__(n_1), 0))) || p2 && (!ret2 && (!bypass2 && int___gt__(int___unbox__(n_1_0), 0)))
; [eval] p1 && (!ret1 && (!bypass1 && int___gt__(int___unbox__(n_1), 0)))
(push) ; 10
; [then-branch: 161 | !(p1@16@01) | live]
; [else-branch: 161 | p1@16@01 | live]
(push) ; 11
; [then-branch: 161 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 11
(push) ; 11
; [else-branch: 161 | p1@16@01]
(assert p1@16@01)
; [eval] !ret1
(push) ; 12
; [then-branch: 162 | False | live]
; [else-branch: 162 | True | live]
(push) ; 13
; [then-branch: 162 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 162 | True]
; [eval] !bypass1
(push) ; 14
; [then-branch: 163 | bypass1@91@01 | live]
; [else-branch: 163 | !(bypass1@91@01) | live]
(push) ; 15
; [then-branch: 163 | bypass1@91@01]
(assert bypass1@91@01)
(pop) ; 15
(push) ; 15
; [else-branch: 163 | !(bypass1@91@01)]
(assert (not bypass1@91@01))
; [eval] int___gt__(int___unbox__(n_1), 0)
; [eval] int___unbox__(n_1)
(push) ; 16
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 17
(assert (not (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1@100@01))
(pop) ; 16
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1@100@01)))
(push) ; 16
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))
(pop) ; 16
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (=>
  (not bypass1@91@01)
  (and
    (not bypass1@91@01)
    (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_1@100@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
(assert (or (not bypass1@91@01) bypass1@91@01))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (and
  (=>
    (not bypass1@91@01)
    (and
      (not bypass1@91@01)
      (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))
      (int___unbox__%precondition $Snap.unit n_1@100@01)
      (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))
  (or (not bypass1@91@01) bypass1@91@01)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  p1@16@01
  (and
    p1@16@01
    (=>
      (not bypass1@91@01)
      (and
        (not bypass1@91@01)
        (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))
        (int___unbox__%precondition $Snap.unit n_1@100@01)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))
    (or (not bypass1@91@01) bypass1@91@01))))
(push) ; 10
; [then-branch: 164 | p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0) | live]
; [else-branch: 164 | !(p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0)) | live]
(push) ; 11
; [then-branch: 164 | p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0)]
(assert (and
  p1@16@01
  (and
    (not bypass1@91@01)
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
(pop) ; 11
(push) ; 11
; [else-branch: 164 | !(p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0))]
(assert (not
  (and
    p1@16@01
    (and
      (not bypass1@91@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))))
; [eval] p2 && (!ret2 && (!bypass2 && int___gt__(int___unbox__(n_1_0), 0)))
(push) ; 12
; [then-branch: 165 | !(p2@17@01) | live]
; [else-branch: 165 | p2@17@01 | live]
(push) ; 13
; [then-branch: 165 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 13
(push) ; 13
; [else-branch: 165 | p2@17@01]
; [eval] !ret2
(push) ; 14
; [then-branch: 166 | False | live]
; [else-branch: 166 | True | live]
(push) ; 15
; [then-branch: 166 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 166 | True]
; [eval] !bypass2
(push) ; 16
; [then-branch: 167 | bypass2@92@01 | live]
; [else-branch: 167 | !(bypass2@92@01) | live]
(push) ; 17
; [then-branch: 167 | bypass2@92@01]
(assert bypass2@92@01)
(pop) ; 17
(push) ; 17
; [else-branch: 167 | !(bypass2@92@01)]
; [eval] int___gt__(int___unbox__(n_1_0), 0)
; [eval] int___unbox__(n_1_0)
(push) ; 18
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 19
(assert (not (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1_0@105@01))
(pop) ; 18
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1_0@105@01)))
(push) ; 18
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))
(pop) ; 18
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (=>
  (not bypass2@92@01)
  (and
    (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_1_0@105@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))))
(assert (or (not bypass2@92@01) bypass2@92@01))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (and
  (=>
    (not bypass2@92@01)
    (and
      (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
      (int___unbox__%precondition $Snap.unit n_1_0@105@01)
      (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0)))
  (or (not bypass2@92@01) bypass2@92@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  p2@17@01
  (and
    (=>
      (not bypass2@92@01)
      (and
        (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
        (int___unbox__%precondition $Snap.unit n_1_0@105@01)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0)))
    (or (not bypass2@92@01) bypass2@92@01))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (=>
  (and
    p1@16@01
    (and
      (not bypass1@91@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))
  (and
    p1@16@01
    (not bypass1@91@01)
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1@16@01
      (and
        (not bypass1@91@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
  (and
    (not
      (and
        p1@16@01
        (and
          (not bypass1@91@01)
          (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
    (=>
      p2@17@01
      (and
        (=>
          (not bypass2@92@01)
          (and
            (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
            (int___unbox__%precondition $Snap.unit n_1_0@105@01)
            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0)))
        (or (not bypass2@92@01) bypass2@92@01))))))
(assert (or
  (not
    (and
      p1@16@01
      (and
        (not bypass1@91@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
  (and
    p1@16@01
    (and
      (not bypass1@91@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))))
(pop) ; 9
; Loop head block: Follow loop-internal edges
; [eval] p1 && (!ret1 && (!bypass1 && int___gt__(int___unbox__(n_1), 0))) || p2 && (!ret2 && (!bypass2 && int___gt__(int___unbox__(n_1_0), 0)))
; [eval] p1 && (!ret1 && (!bypass1 && int___gt__(int___unbox__(n_1), 0)))
(push) ; 9
; [then-branch: 168 | !(p1@16@01) | live]
; [else-branch: 168 | p1@16@01 | live]
(push) ; 10
; [then-branch: 168 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 10
(push) ; 10
; [else-branch: 168 | p1@16@01]
(assert p1@16@01)
; [eval] !ret1
(push) ; 11
; [then-branch: 169 | False | live]
; [else-branch: 169 | True | live]
(push) ; 12
; [then-branch: 169 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 169 | True]
; [eval] !bypass1
(push) ; 13
; [then-branch: 170 | bypass1@91@01 | live]
; [else-branch: 170 | !(bypass1@91@01) | live]
(push) ; 14
; [then-branch: 170 | bypass1@91@01]
(assert bypass1@91@01)
(pop) ; 14
(push) ; 14
; [else-branch: 170 | !(bypass1@91@01)]
(assert (not bypass1@91@01))
; [eval] int___gt__(int___unbox__(n_1), 0)
; [eval] int___unbox__(n_1)
(push) ; 15
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 16
(assert (not (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1@100@01))
(pop) ; 15
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1@100@01)))
(push) ; 15
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))
(pop) ; 15
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (=>
  (not bypass1@91@01)
  (and
    (not bypass1@91@01)
    (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_1@100@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
(assert (or (not bypass1@91@01) bypass1@91@01))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (and
  (=>
    (not bypass1@91@01)
    (and
      (not bypass1@91@01)
      (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))
      (int___unbox__%precondition $Snap.unit n_1@100@01)
      (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))
  (or (not bypass1@91@01) bypass1@91@01)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  p1@16@01
  (and
    p1@16@01
    (=>
      (not bypass1@91@01)
      (and
        (not bypass1@91@01)
        (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))
        (int___unbox__%precondition $Snap.unit n_1@100@01)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))
    (or (not bypass1@91@01) bypass1@91@01))))
(push) ; 9
; [then-branch: 171 | p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0) | live]
; [else-branch: 171 | !(p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0)) | live]
(push) ; 10
; [then-branch: 171 | p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0)]
(assert (and
  p1@16@01
  (and
    (not bypass1@91@01)
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
(pop) ; 10
(push) ; 10
; [else-branch: 171 | !(p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0))]
(assert (not
  (and
    p1@16@01
    (and
      (not bypass1@91@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))))
; [eval] p2 && (!ret2 && (!bypass2 && int___gt__(int___unbox__(n_1_0), 0)))
(push) ; 11
; [then-branch: 172 | !(p2@17@01) | live]
; [else-branch: 172 | p2@17@01 | live]
(push) ; 12
; [then-branch: 172 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 12
(push) ; 12
; [else-branch: 172 | p2@17@01]
; [eval] !ret2
(push) ; 13
; [then-branch: 173 | False | live]
; [else-branch: 173 | True | live]
(push) ; 14
; [then-branch: 173 | False]
(assert false)
(pop) ; 14
(push) ; 14
; [else-branch: 173 | True]
; [eval] !bypass2
(push) ; 15
; [then-branch: 174 | bypass2@92@01 | live]
; [else-branch: 174 | !(bypass2@92@01) | live]
(push) ; 16
; [then-branch: 174 | bypass2@92@01]
(assert bypass2@92@01)
(pop) ; 16
(push) ; 16
; [else-branch: 174 | !(bypass2@92@01)]
; [eval] int___gt__(int___unbox__(n_1_0), 0)
; [eval] int___unbox__(n_1_0)
(push) ; 17
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 18
(assert (not (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1_0@105@01))
(pop) ; 17
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1_0@105@01)))
(push) ; 17
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))
(pop) ; 17
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (=>
  (not bypass2@92@01)
  (and
    (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_1_0@105@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))))
(assert (or (not bypass2@92@01) bypass2@92@01))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (and
  (=>
    (not bypass2@92@01)
    (and
      (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
      (int___unbox__%precondition $Snap.unit n_1_0@105@01)
      (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0)))
  (or (not bypass2@92@01) bypass2@92@01)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  p2@17@01
  (and
    (=>
      (not bypass2@92@01)
      (and
        (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
        (int___unbox__%precondition $Snap.unit n_1_0@105@01)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0)))
    (or (not bypass2@92@01) bypass2@92@01))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (and
    p1@16@01
    (and
      (not bypass1@91@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))
  (and
    p1@16@01
    (not bypass1@91@01)
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1@16@01
      (and
        (not bypass1@91@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
  (and
    (not
      (and
        p1@16@01
        (and
          (not bypass1@91@01)
          (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
    (=>
      p2@17@01
      (and
        (=>
          (not bypass2@92@01)
          (and
            (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
            (int___unbox__%precondition $Snap.unit n_1_0@105@01)
            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0)))
        (or (not bypass2@92@01) bypass2@92@01))))))
(assert (or
  (not
    (and
      p1@16@01
      (and
        (not bypass1@91@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
  (and
    p1@16@01
    (and
      (not bypass1@91@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))))
(push) ; 9
(set-option :timeout 10)
(assert (not (not
  (or
    (and
      p1@16@01
      (and
        (not bypass1@91@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))
    (and
      p2@17@01
      (and
        (not bypass2@92@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (or
  (and
    p1@16@01
    (and
      (not bypass1@91@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))
  (and
    p2@17@01
    (and
      (not bypass2@92@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 175 | p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0) || p2@17@01 && !(bypass2@92@01) && int___gt__(_, int___unbox__(_, n_1_0@105@01), 0) | live]
; [else-branch: 175 | !(p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0) || p2@17@01 && !(bypass2@92@01) && int___gt__(_, int___unbox__(_, n_1_0@105@01), 0)) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 175 | p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0) || p2@17@01 && !(bypass2@92@01) && int___gt__(_, int___unbox__(_, n_1_0@105@01), 0)]
(assert (or
  (and
    p1@16@01
    (and
      (not bypass1@91@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))
  (and
    p2@17@01
    (and
      (not bypass2@92@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0)))))
; [exec]
; p1_0 := p1 && (!ret1 && int___gt__(int___unbox__(n_1), 0))
; [eval] p1 && (!ret1 && int___gt__(int___unbox__(n_1), 0))
(push) ; 10
; [then-branch: 176 | !(p1@16@01) | live]
; [else-branch: 176 | p1@16@01 | live]
(push) ; 11
; [then-branch: 176 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 11
(push) ; 11
; [else-branch: 176 | p1@16@01]
(assert p1@16@01)
; [eval] !ret1
(push) ; 12
; [then-branch: 177 | False | live]
; [else-branch: 177 | True | live]
(push) ; 13
; [then-branch: 177 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 177 | True]
; [eval] int___gt__(int___unbox__(n_1), 0)
; [eval] int___unbox__(n_1)
(push) ; 14
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 15
(assert (not (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1@100@01))
(pop) ; 14
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1@100@01)))
(push) ; 14
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))
(pop) ; 14
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1@100@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  p1@16@01
  (and
    p1@16@01
    (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_1@100@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
(declare-const p1_0@108@01 Bool)
(assert (=
  p1_0@108@01
  (and p1@16@01 (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
; [exec]
; p2_0 := p2 && (!ret2 && int___gt__(int___unbox__(n_1_0), 0))
; [eval] p2 && (!ret2 && int___gt__(int___unbox__(n_1_0), 0))
(push) ; 10
; [then-branch: 178 | !(p2@17@01) | live]
; [else-branch: 178 | p2@17@01 | live]
(push) ; 11
; [then-branch: 178 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 11
(push) ; 11
; [else-branch: 178 | p2@17@01]
; [eval] !ret2
(push) ; 12
; [then-branch: 179 | False | live]
; [else-branch: 179 | True | live]
(push) ; 13
; [then-branch: 179 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 179 | True]
; [eval] int___gt__(int___unbox__(n_1_0), 0)
; [eval] int___unbox__(n_1_0)
(push) ; 14
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 15
(assert (not (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1_0@105@01))
(pop) ; 14
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1_0@105@01)))
(push) ; 14
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))
(pop) ; 14
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1_0@105@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  p2@17@01
  (and
    (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_1_0@105@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))))
(declare-const p2_0@109@01 Bool)
(assert (=
  p2_0@109@01
  (and
    p2@17@01
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))))
; [exec]
; idle1 := p1 && (!ret1 && !int___gt__(int___unbox__(n_1), 0))
; [eval] p1 && (!ret1 && !int___gt__(int___unbox__(n_1), 0))
(push) ; 10
; [then-branch: 180 | !(p1@16@01) | live]
; [else-branch: 180 | p1@16@01 | live]
(push) ; 11
; [then-branch: 180 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 11
(push) ; 11
; [else-branch: 180 | p1@16@01]
(assert p1@16@01)
; [eval] !ret1
(push) ; 12
; [then-branch: 181 | False | live]
; [else-branch: 181 | True | live]
(push) ; 13
; [then-branch: 181 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 181 | True]
; [eval] !int___gt__(int___unbox__(n_1), 0)
; [eval] int___gt__(int___unbox__(n_1), 0)
; [eval] int___unbox__(n_1)
(push) ; 14
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 15
(assert (not (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1@100@01))
(pop) ; 14
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1@100@01)))
(push) ; 14
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))
(pop) ; 14
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1@100@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(declare-const idle1@110@01 Bool)
(assert (=
  idle1@110@01
  (and
    p1@16@01
    (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))))
; [exec]
; idle2 := p2 && (!ret2 && !int___gt__(int___unbox__(n_1_0), 0))
; [eval] p2 && (!ret2 && !int___gt__(int___unbox__(n_1_0), 0))
(push) ; 10
; [then-branch: 182 | !(p2@17@01) | live]
; [else-branch: 182 | p2@17@01 | live]
(push) ; 11
; [then-branch: 182 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 11
(push) ; 11
; [else-branch: 182 | p2@17@01]
; [eval] !ret2
(push) ; 12
; [then-branch: 183 | False | live]
; [else-branch: 183 | True | live]
(push) ; 13
; [then-branch: 183 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 183 | True]
; [eval] !int___gt__(int___unbox__(n_1_0), 0)
; [eval] int___gt__(int___unbox__(n_1_0), 0)
; [eval] int___unbox__(n_1_0)
(push) ; 14
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 15
(assert (not (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1_0@105@01))
(pop) ; 14
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1_0@105@01)))
(push) ; 14
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))
(pop) ; 14
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1_0@105@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(declare-const idle2@111@01 Bool)
(assert (=
  idle2@111@01
  (and
    p2@17@01
    (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0)))))
; [eval] p1_0 && !ret1
(push) ; 10
; [then-branch: 184 | !(p1_0@108@01) | live]
; [else-branch: 184 | p1_0@108@01 | live]
(push) ; 11
; [then-branch: 184 | !(p1_0@108@01)]
(assert (not p1_0@108@01))
(pop) ; 11
(push) ; 11
; [else-branch: 184 | p1_0@108@01]
(assert p1_0@108@01)
; [eval] !ret1
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or p1_0@108@01 (not p1_0@108@01)))
(push) ; 10
(set-option :timeout 10)
(assert (not (not p1_0@108@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not p1_0@108@01))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 185 | p1_0@108@01 | live]
; [else-branch: 185 | !(p1_0@108@01) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 185 | p1_0@108@01]
(assert p1_0@108@01)
; [exec]
; _loop_measures := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; f1 := __prim__int___box__(int___add__(int___unbox__(_checkDefined(f1, 12646)),
;   int___unbox__(_checkDefined(f2, 12902))))
; [eval] __prim__int___box__(int___add__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(_checkDefined(f2, 12902))))
; [eval] int___add__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(_checkDefined(f2, 12902)))
; [eval] int___unbox__(_checkDefined(f1, 12646))
; [eval] _checkDefined(f1, 12646)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f1@98@01 12646))
(pop) ; 11
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f1@98@01 12646))
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 12
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@98@01 12646)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@98@01 12646)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646)))
(pop) ; 11
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@98@01 12646)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646))))
; [eval] int___unbox__(_checkDefined(f2, 12902))
; [eval] _checkDefined(f2, 12902)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f2@99@01 12902))
(pop) ; 11
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f2@99@01 12902))
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 12
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f2@99@01 12902)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f2@99@01 12902)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f2@99@01 12902)))
(pop) ; 11
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f2@99@01 12902)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f2@99@01 12902))))
(push) ; 11
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f2@99@01 12902))))
(pop) ; 11
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f2@99@01 12902))))
(push) ; 11
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f2@99@01 12902)))))
(pop) ; 11
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f2@99@01 12902)))))
(declare-const f1@112@01 $Ref)
(assert (=
  f1@112@01
  (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f2@99@01 12902))))))
; [exec]
; inhale _isDefined(12646)
(declare-const $t@113@01 $Snap)
(assert (= $t@113@01 $Snap.unit))
; [eval] _isDefined(12646)
(push) ; 11
(pop) ; 11
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; f2 := __prim__int___box__(int___sub__(int___unbox__(_checkDefined(f1, 12646)),
;   int___unbox__(_checkDefined(f2, 12902))))
; [eval] __prim__int___box__(int___sub__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(_checkDefined(f2, 12902))))
; [eval] int___sub__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(_checkDefined(f2, 12902)))
; [eval] int___unbox__(_checkDefined(f1, 12646))
; [eval] _checkDefined(f1, 12646)
(set-option :timeout 0)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f1@112@01 12646))
(pop) ; 11
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f1@112@01 12646))
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 12
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@112@01 12646)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@112@01 12646)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@112@01 12646)))
(pop) ; 11
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@112@01 12646)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@112@01 12646))))
; [eval] int___unbox__(_checkDefined(f2, 12902))
; [eval] _checkDefined(f2, 12902)
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
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@112@01 12646)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f2@99@01 12902))))
(pop) ; 11
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@112@01 12646)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f2@99@01 12902))))
(push) ; 11
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@112@01 12646)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f2@99@01 12902)))))
(pop) ; 11
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@112@01 12646)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f2@99@01 12902)))))
(declare-const f2@114@01 $Ref)
(assert (=
  f2@114@01
  (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@112@01 12646)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f2@99@01 12902))))))
; [exec]
; inhale _isDefined(12902)
(declare-const $t@115@01 $Snap)
(assert (= $t@115@01 $Snap.unit))
; [eval] _isDefined(12902)
(push) ; 11
(pop) ; 11
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; n_1 := __prim__int___box__(int___sub__(int___unbox__(n_1), 1))
; [eval] __prim__int___box__(int___sub__(int___unbox__(n_1), 1))
; [eval] int___sub__(int___unbox__(n_1), 1)
; [eval] int___unbox__(n_1)
(set-option :timeout 0)
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 12
(assert (not (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1@100@01))
(pop) ; 11
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1@100@01)))
(push) ; 11
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 1))
(pop) ; 11
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 1))
(push) ; 11
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 1)))
(pop) ; 11
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 1)))
(declare-const n_1@116@01 $Ref)
(assert (=
  n_1@116@01
  (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 1))))
; [exec]
; _loop_check_before := false
; [eval] p2_0 && !ret2
(push) ; 11
; [then-branch: 186 | !(p2_0@109@01) | live]
; [else-branch: 186 | p2_0@109@01 | live]
(push) ; 12
; [then-branch: 186 | !(p2_0@109@01)]
(assert (not p2_0@109@01))
(pop) ; 12
(push) ; 12
; [else-branch: 186 | p2_0@109@01]
(assert p2_0@109@01)
; [eval] !ret2
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or p2_0@109@01 (not p2_0@109@01)))
(push) ; 11
(set-option :timeout 10)
(assert (not (not p2_0@109@01)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not p2_0@109@01))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 187 | p2_0@109@01 | live]
; [else-branch: 187 | !(p2_0@109@01) | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 187 | p2_0@109@01]
(assert p2_0@109@01)
; [exec]
; _loop_measures_0 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; f1_0 := __prim__int___box__(int___add__(int___unbox__(f1_0), int___unbox__(f2_0)))
; [eval] __prim__int___box__(int___add__(int___unbox__(f1_0), int___unbox__(f2_0)))
; [eval] int___add__(int___unbox__(f1_0), int___unbox__(f2_0))
; [eval] int___unbox__(f1_0)
(push) ; 12
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 13
(assert (not (issubtype<Bool> (typeof<PyType> f1_0@103@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> f1_0@103@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit f1_0@103@01))
(pop) ; 12
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> f1_0@103@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit f1_0@103@01)))
; [eval] int___unbox__(f2_0)
(push) ; 12
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 13
(assert (not (issubtype<Bool> (typeof<PyType> f2_0@104@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> f2_0@104@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit f2_0@104@01))
(pop) ; 12
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> f2_0@104@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit f2_0@104@01)))
(push) ; 12
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit f1_0@103@01) (int___unbox__ $Snap.unit f2_0@104@01)))
(pop) ; 12
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit f1_0@103@01) (int___unbox__ $Snap.unit f2_0@104@01)))
(push) ; 12
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit f1_0@103@01) (int___unbox__ $Snap.unit f2_0@104@01))))
(pop) ; 12
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit f1_0@103@01) (int___unbox__ $Snap.unit f2_0@104@01))))
(declare-const f1_0@117@01 $Ref)
(assert (=
  f1_0@117@01
  (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit f1_0@103@01) (int___unbox__ $Snap.unit f2_0@104@01)))))
; [exec]
; inhale true
(declare-const $t@118@01 $Snap)
(assert (= $t@118@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; f2_0 := __prim__int___box__(int___sub__(int___unbox__(f1_0), int___unbox__(f2_0)))
; [eval] __prim__int___box__(int___sub__(int___unbox__(f1_0), int___unbox__(f2_0)))
; [eval] int___sub__(int___unbox__(f1_0), int___unbox__(f2_0))
; [eval] int___unbox__(f1_0)
(set-option :timeout 0)
(push) ; 12
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 13
(assert (not (issubtype<Bool> (typeof<PyType> f1_0@117@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> f1_0@117@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit f1_0@117@01))
(pop) ; 12
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> f1_0@117@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit f1_0@117@01)))
; [eval] int___unbox__(f2_0)
(push) ; 12
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 12
; Joined path conditions
(push) ; 12
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit f1_0@117@01) (int___unbox__ $Snap.unit f2_0@104@01)))
(pop) ; 12
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit f1_0@117@01) (int___unbox__ $Snap.unit f2_0@104@01)))
(push) ; 12
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit f1_0@117@01) (int___unbox__ $Snap.unit f2_0@104@01))))
(pop) ; 12
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit f1_0@117@01) (int___unbox__ $Snap.unit f2_0@104@01))))
(declare-const f2_0@119@01 $Ref)
(assert (=
  f2_0@119@01
  (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit f1_0@117@01) (int___unbox__ $Snap.unit f2_0@104@01)))))
; [exec]
; inhale true
(declare-const $t@120@01 $Snap)
(assert (= $t@120@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; n_1_0 := __prim__int___box__(int___sub__(int___unbox__(n_1_0), 1))
; [eval] __prim__int___box__(int___sub__(int___unbox__(n_1_0), 1))
; [eval] int___sub__(int___unbox__(n_1_0), 1)
; [eval] int___unbox__(n_1_0)
(set-option :timeout 0)
(push) ; 12
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 13
(assert (not (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1_0@105@01))
(pop) ; 12
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1_0@105@01)))
(push) ; 12
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 1))
(pop) ; 12
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 1))
(push) ; 12
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 1)))
(pop) ; 12
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 1)))
(declare-const n_1_0@121@01 $Ref)
(assert (=
  n_1_0@121@01
  (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 1))))
; [exec]
; _loop_check_before_0 := false
; [exec]
; assert (p1_0 && !ret1 ==>
;   _loop_termination_flag ==> !int___gt__(int___unbox__(n_1), 0)) &&
;   (p2_0 && !ret2 ==>
;   _loop_termination_flag_0 ==> !int___gt__(int___unbox__(n_1_0), 0))
; [eval] p1_0 && !ret1 ==> _loop_termination_flag ==> !int___gt__(int___unbox__(n_1), 0)
; [eval] p1_0 && !ret1
(push) ; 12
; [then-branch: 188 | !(p1_0@108@01) | live]
; [else-branch: 188 | p1_0@108@01 | live]
(push) ; 13
; [then-branch: 188 | !(p1_0@108@01)]
(assert (not p1_0@108@01))
(pop) ; 13
(push) ; 13
; [else-branch: 188 | p1_0@108@01]
; [eval] !ret1
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not p1_0@108@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 189 | p1_0@108@01 | live]
; [else-branch: 189 | !(p1_0@108@01) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 189 | p1_0@108@01]
; [eval] _loop_termination_flag ==> !int___gt__(int___unbox__(n_1), 0)
(push) ; 14
; [then-branch: 190 | False | dead]
; [else-branch: 190 | True | live]
(push) ; 15
; [else-branch: 190 | True]
(pop) ; 15
(pop) ; 14
; Joined path conditions
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] p2_0 && !ret2 ==> _loop_termination_flag_0 ==> !int___gt__(int___unbox__(n_1_0), 0)
; [eval] p2_0 && !ret2
(push) ; 12
; [then-branch: 191 | !(p2_0@109@01) | live]
; [else-branch: 191 | p2_0@109@01 | live]
(push) ; 13
; [then-branch: 191 | !(p2_0@109@01)]
(assert (not p2_0@109@01))
(pop) ; 13
(push) ; 13
; [else-branch: 191 | p2_0@109@01]
; [eval] !ret2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not p2_0@109@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 192 | p2_0@109@01 | live]
; [else-branch: 192 | !(p2_0@109@01) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 192 | p2_0@109@01]
; [eval] _loop_termination_flag_0 ==> !int___gt__(int___unbox__(n_1_0), 0)
(push) ; 14
; [then-branch: 193 | False | dead]
; [else-branch: 193 | True | live]
(push) ; 15
; [else-branch: 193 | True]
(pop) ; 15
(pop) ; 14
; Joined path conditions
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Loop head block: Re-establish invariant
; [eval] p1 && !bypass1 ==> true
; [eval] p1 && !bypass1
(push) ; 12
; [then-branch: 194 | !(p1@16@01) | live]
; [else-branch: 194 | p1@16@01 | live]
(push) ; 13
; [then-branch: 194 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 13
(push) ; 13
; [else-branch: 194 | p1@16@01]
(assert p1@16@01)
; [eval] !bypass1
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@91@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@91@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 195 | p1@16@01 && !(bypass1@91@01) | live]
; [else-branch: 195 | !(p1@16@01 && !(bypass1@91@01)) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 195 | p1@16@01 && !(bypass1@91@01)]
(assert (and p1@16@01 (not bypass1@91@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (and p1@16@01 (not bypass1@91@01)))
; [eval] p2 && !bypass2 ==> true
; [eval] p2 && !bypass2
(push) ; 12
; [then-branch: 196 | !(p2@17@01) | live]
; [else-branch: 196 | p2@17@01 | live]
(push) ; 13
; [then-branch: 196 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 13
(push) ; 13
; [else-branch: 196 | p2@17@01]
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p2@17@01 (not bypass2@92@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p2@17@01 (not bypass2@92@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 197 | p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 197 | !(p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 197 | p2@17@01 && !(bypass2@92@01)]
(assert (and p2@17@01 (not bypass2@92@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (and p2@17@01 (not bypass2@92@01)))
; [eval] p1 && !bypass1 ==> issubtype(typeof(f1), int())
; [eval] p1 && !bypass1
(push) ; 12
; [then-branch: 198 | !(p1@16@01) | live]
; [else-branch: 198 | p1@16@01 | live]
(push) ; 13
; [then-branch: 198 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 13
(push) ; 13
; [else-branch: 198 | p1@16@01]
; [eval] !bypass1
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@91@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@91@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 199 | p1@16@01 && !(bypass1@91@01) | live]
; [else-branch: 199 | !(p1@16@01 && !(bypass1@91@01)) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 199 | p1@16@01 && !(bypass1@91@01)]
(assert (and p1@16@01 (not bypass1@91@01)))
; [eval] issubtype(typeof(f1), int())
; [eval] typeof(f1)
; [eval] int()
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (and p1@16@01 (not bypass1@91@01)))
(push) ; 12
(assert (not (=>
  (and p1@16@01 (not bypass1@91@01))
  (issubtype<Bool> (typeof<PyType> f1@112@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p1@16@01 (not bypass1@91@01))
  (issubtype<Bool> (typeof<PyType> f1@112@01) (as int<PyType>  PyType))))
; [eval] p2 && !bypass2 ==> issubtype(typeof(f1_0), int())
; [eval] p2 && !bypass2
(push) ; 12
; [then-branch: 200 | !(p2@17@01) | live]
; [else-branch: 200 | p2@17@01 | live]
(push) ; 13
; [then-branch: 200 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 13
(push) ; 13
; [else-branch: 200 | p2@17@01]
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p2@17@01 (not bypass2@92@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p2@17@01 (not bypass2@92@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 201 | p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 201 | !(p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 201 | p2@17@01 && !(bypass2@92@01)]
(assert (and p2@17@01 (not bypass2@92@01)))
; [eval] issubtype(typeof(f1_0), int())
; [eval] typeof(f1_0)
; [eval] int()
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (and p2@17@01 (not bypass2@92@01)))
(push) ; 12
(assert (not (=>
  (and p2@17@01 (not bypass2@92@01))
  (issubtype<Bool> (typeof<PyType> f1_0@117@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p2@17@01 (not bypass2@92@01))
  (issubtype<Bool> (typeof<PyType> f1_0@117@01) (as int<PyType>  PyType))))
; [eval] p1 && !bypass1 ==> issubtype(typeof(f2), int())
; [eval] p1 && !bypass1
(push) ; 12
; [then-branch: 202 | !(p1@16@01) | live]
; [else-branch: 202 | p1@16@01 | live]
(push) ; 13
; [then-branch: 202 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 13
(push) ; 13
; [else-branch: 202 | p1@16@01]
; [eval] !bypass1
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@91@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@91@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 203 | p1@16@01 && !(bypass1@91@01) | live]
; [else-branch: 203 | !(p1@16@01 && !(bypass1@91@01)) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 203 | p1@16@01 && !(bypass1@91@01)]
(assert (and p1@16@01 (not bypass1@91@01)))
; [eval] issubtype(typeof(f2), int())
; [eval] typeof(f2)
; [eval] int()
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (and p1@16@01 (not bypass1@91@01)))
(push) ; 12
(assert (not (=>
  (and p1@16@01 (not bypass1@91@01))
  (issubtype<Bool> (typeof<PyType> f2@114@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p1@16@01 (not bypass1@91@01))
  (issubtype<Bool> (typeof<PyType> f2@114@01) (as int<PyType>  PyType))))
; [eval] p2 && !bypass2 ==> issubtype(typeof(f2_0), int())
; [eval] p2 && !bypass2
(push) ; 12
; [then-branch: 204 | !(p2@17@01) | live]
; [else-branch: 204 | p2@17@01 | live]
(push) ; 13
; [then-branch: 204 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 13
(push) ; 13
; [else-branch: 204 | p2@17@01]
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p2@17@01 (not bypass2@92@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p2@17@01 (not bypass2@92@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 205 | p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 205 | !(p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 205 | p2@17@01 && !(bypass2@92@01)]
(assert (and p2@17@01 (not bypass2@92@01)))
; [eval] issubtype(typeof(f2_0), int())
; [eval] typeof(f2_0)
; [eval] int()
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (and p2@17@01 (not bypass2@92@01)))
(push) ; 12
(assert (not (=>
  (and p2@17@01 (not bypass2@92@01))
  (issubtype<Bool> (typeof<PyType> f2_0@119@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p2@17@01 (not bypass2@92@01))
  (issubtype<Bool> (typeof<PyType> f2_0@119@01) (as int<PyType>  PyType))))
; [eval] p1 && !bypass1 ==> issubtype(typeof(n_1), int())
; [eval] p1 && !bypass1
(push) ; 12
; [then-branch: 206 | !(p1@16@01) | live]
; [else-branch: 206 | p1@16@01 | live]
(push) ; 13
; [then-branch: 206 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 13
(push) ; 13
; [else-branch: 206 | p1@16@01]
; [eval] !bypass1
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@91@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@91@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 207 | p1@16@01 && !(bypass1@91@01) | live]
; [else-branch: 207 | !(p1@16@01 && !(bypass1@91@01)) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 207 | p1@16@01 && !(bypass1@91@01)]
(assert (and p1@16@01 (not bypass1@91@01)))
; [eval] issubtype(typeof(n_1), int())
; [eval] typeof(n_1)
; [eval] int()
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (and p1@16@01 (not bypass1@91@01)))
(push) ; 12
(assert (not (=>
  (and p1@16@01 (not bypass1@91@01))
  (issubtype<Bool> (typeof<PyType> n_1@116@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p1@16@01 (not bypass1@91@01))
  (issubtype<Bool> (typeof<PyType> n_1@116@01) (as int<PyType>  PyType))))
; [eval] p2 && !bypass2 ==> issubtype(typeof(n_1_0), int())
; [eval] p2 && !bypass2
(push) ; 12
; [then-branch: 208 | !(p2@17@01) | live]
; [else-branch: 208 | p2@17@01 | live]
(push) ; 13
; [then-branch: 208 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 13
(push) ; 13
; [else-branch: 208 | p2@17@01]
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p2@17@01 (not bypass2@92@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p2@17@01 (not bypass2@92@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 209 | p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 209 | !(p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 209 | p2@17@01 && !(bypass2@92@01)]
(assert (and p2@17@01 (not bypass2@92@01)))
; [eval] issubtype(typeof(n_1_0), int())
; [eval] typeof(n_1_0)
; [eval] int()
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (and p2@17@01 (not bypass2@92@01)))
(push) ; 12
(assert (not (=>
  (and p2@17@01 (not bypass2@92@01))
  (issubtype<Bool> (typeof<PyType> n_1_0@121@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p2@17@01 (not bypass2@92@01))
  (issubtype<Bool> (typeof<PyType> n_1_0@121@01) (as int<PyType>  PyType))))
; [eval] p1 && (!bypass1 && (p2 && !bypass2)) ==> n_1 == n_1_0
; [eval] p1 && (!bypass1 && (p2 && !bypass2))
(push) ; 12
; [then-branch: 210 | !(p1@16@01) | live]
; [else-branch: 210 | p1@16@01 | live]
(push) ; 13
; [then-branch: 210 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 13
(push) ; 13
; [else-branch: 210 | p1@16@01]
; [eval] !bypass1
(push) ; 14
; [then-branch: 211 | bypass1@91@01 | live]
; [else-branch: 211 | !(bypass1@91@01) | live]
(push) ; 15
; [then-branch: 211 | bypass1@91@01]
(assert bypass1@91@01)
(pop) ; 15
(push) ; 15
; [else-branch: 211 | !(bypass1@91@01)]
(push) ; 16
; [then-branch: 212 | !(p2@17@01) | live]
; [else-branch: 212 | p2@17@01 | live]
(push) ; 17
; [then-branch: 212 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 17
(push) ; 17
; [else-branch: 212 | p2@17@01]
; [eval] !bypass2
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1@91@01) bypass1@91@01))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 213 | p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 213 | !(p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 213 | p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01)]
(assert (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))
; [eval] n_1 == n_1_0
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))
(push) ; 12
(assert (not (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (= n_1@116@01 n_1_0@121@01))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (= n_1@116@01 n_1_0@121@01)))
; [eval] p1 && (!bypass1 && (p2 && !bypass2)) ==> _checkDefined(f1, 12646) == f1_0
; [eval] p1 && (!bypass1 && (p2 && !bypass2))
(push) ; 12
; [then-branch: 214 | !(p1@16@01) | live]
; [else-branch: 214 | p1@16@01 | live]
(push) ; 13
; [then-branch: 214 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 13
(push) ; 13
; [else-branch: 214 | p1@16@01]
; [eval] !bypass1
(push) ; 14
; [then-branch: 215 | bypass1@91@01 | live]
; [else-branch: 215 | !(bypass1@91@01) | live]
(push) ; 15
; [then-branch: 215 | bypass1@91@01]
(assert bypass1@91@01)
(pop) ; 15
(push) ; 15
; [else-branch: 215 | !(bypass1@91@01)]
(push) ; 16
; [then-branch: 216 | !(p2@17@01) | live]
; [else-branch: 216 | p2@17@01 | live]
(push) ; 17
; [then-branch: 216 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 17
(push) ; 17
; [else-branch: 216 | p2@17@01]
; [eval] !bypass2
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1@91@01) bypass1@91@01))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 217 | p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 217 | !(p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 217 | p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01)]
(assert (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))
; [eval] _checkDefined(f1, 12646) == f1_0
; [eval] _checkDefined(f1, 12646)
(push) ; 14
; [eval] _isDefined(id)
(push) ; 15
(pop) ; 15
; Joined path conditions
(pop) ; 14
; Joined path conditions
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))
(push) ; 12
(assert (not (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (= (_checkDefined $Snap.unit f1@112@01 12646) f1_0@117@01))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (= (_checkDefined $Snap.unit f1@112@01 12646) f1_0@117@01)))
; [eval] p1 && (!bypass1 && (p2 && !bypass2)) ==> _checkDefined(f2, 12902) == f2_0
; [eval] p1 && (!bypass1 && (p2 && !bypass2))
(push) ; 12
; [then-branch: 218 | !(p1@16@01) | live]
; [else-branch: 218 | p1@16@01 | live]
(push) ; 13
; [then-branch: 218 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 13
(push) ; 13
; [else-branch: 218 | p1@16@01]
; [eval] !bypass1
(push) ; 14
; [then-branch: 219 | bypass1@91@01 | live]
; [else-branch: 219 | !(bypass1@91@01) | live]
(push) ; 15
; [then-branch: 219 | bypass1@91@01]
(assert bypass1@91@01)
(pop) ; 15
(push) ; 15
; [else-branch: 219 | !(bypass1@91@01)]
(push) ; 16
; [then-branch: 220 | !(p2@17@01) | live]
; [else-branch: 220 | p2@17@01 | live]
(push) ; 17
; [then-branch: 220 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 17
(push) ; 17
; [else-branch: 220 | p2@17@01]
; [eval] !bypass2
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1@91@01) bypass1@91@01))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 221 | p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 221 | !(p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 221 | p1@16@01 && !(bypass1@91@01) && p2@17@01 && !(bypass2@92@01)]
(assert (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))
; [eval] _checkDefined(f2, 12902) == f2_0
; [eval] _checkDefined(f2, 12902)
(push) ; 14
; [eval] _isDefined(id)
(push) ; 15
(pop) ; 15
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f2@114@01 12902))
(pop) ; 14
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f2@114@01 12902))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (and
    p1@16@01
    (not bypass1@91@01)
    p2@17@01
    (not bypass2@92@01)
    (_checkDefined%precondition $Snap.unit f2@114@01 12902))))
(assert (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01)))))
(push) ; 12
(assert (not (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (= (_checkDefined $Snap.unit f2@114@01 12902) f2_0@119@01))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p1@16@01 (and (not bypass1@91@01) (and p2@17@01 (not bypass2@92@01))))
  (= (_checkDefined $Snap.unit f2@114@01 12902) f2_0@119@01)))
; [eval] p1 && !bypass1 ==> !idle1 ==> _loop_check_before ==> _loop_termination_flag || (!int___gt__(int___unbox__(n_1), 0) || perm(MustTerminate(_cthread_156)) == none && ((forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))))
; [eval] p1 && !bypass1
(push) ; 12
; [then-branch: 222 | !(p1@16@01) | live]
; [else-branch: 222 | p1@16@01 | live]
(push) ; 13
; [then-branch: 222 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 13
(push) ; 13
; [else-branch: 222 | p1@16@01]
; [eval] !bypass1
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@91@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@91@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 223 | p1@16@01 && !(bypass1@91@01) | live]
; [else-branch: 223 | !(p1@16@01 && !(bypass1@91@01)) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 223 | p1@16@01 && !(bypass1@91@01)]
(assert (and p1@16@01 (not bypass1@91@01)))
; [eval] !idle1 ==> _loop_check_before ==> _loop_termination_flag || (!int___gt__(int___unbox__(n_1), 0) || perm(MustTerminate(_cthread_156)) == none && ((forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))))
; [eval] !idle1
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not idle1@110@01))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (not idle1@110@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 224 | !(idle1@110@01) | live]
; [else-branch: 224 | idle1@110@01 | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 224 | !(idle1@110@01)]
(assert (not idle1@110@01))
; [eval] _loop_check_before ==> _loop_termination_flag || (!int___gt__(int___unbox__(n_1), 0) || perm(MustTerminate(_cthread_156)) == none && ((forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))))
(push) ; 16
; [then-branch: 225 | False | dead]
; [else-branch: 225 | True | live]
(push) ; 17
; [else-branch: 225 | True]
(pop) ; 17
(pop) ; 16
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
(assert (not idle1@110@01))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  (and p1@16@01 (not bypass1@91@01))
  (and p1@16@01 (not bypass1@91@01) (not idle1@110@01))))
(assert (and p1@16@01 (not bypass1@91@01)))
; [eval] p2 && !bypass2 ==> !idle2 ==> _loop_check_before_0 ==> _loop_termination_flag_0 || (!int___gt__(int___unbox__(n_1_0), 0) || perm(MustTerminate_0(_cthread_156_0)) == none && ((forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))))
; [eval] p2 && !bypass2
(push) ; 12
; [then-branch: 226 | !(p2@17@01) | live]
; [else-branch: 226 | p2@17@01 | live]
(push) ; 13
; [then-branch: 226 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 13
(push) ; 13
; [else-branch: 226 | p2@17@01]
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p2@17@01 (not bypass2@92@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p2@17@01 (not bypass2@92@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 227 | p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 227 | !(p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 227 | p2@17@01 && !(bypass2@92@01)]
(assert (and p2@17@01 (not bypass2@92@01)))
; [eval] !idle2 ==> _loop_check_before_0 ==> _loop_termination_flag_0 || (!int___gt__(int___unbox__(n_1_0), 0) || perm(MustTerminate_0(_cthread_156_0)) == none && ((forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))))
; [eval] !idle2
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not idle2@111@01))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (not idle2@111@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 228 | !(idle2@111@01) | live]
; [else-branch: 228 | idle2@111@01 | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 228 | !(idle2@111@01)]
(assert (not idle2@111@01))
; [eval] _loop_check_before_0 ==> _loop_termination_flag_0 || (!int___gt__(int___unbox__(n_1_0), 0) || perm(MustTerminate_0(_cthread_156_0)) == none && ((forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))))
(push) ; 16
; [then-branch: 229 | False | dead]
; [else-branch: 229 | True | live]
(push) ; 17
; [else-branch: 229 | True]
(pop) ; 17
(pop) ; 16
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
(assert (not idle2@111@01))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  (and p2@17@01 (not bypass2@92@01))
  (and p2@17@01 (not bypass2@92@01) (not idle2@111@01))))
(assert (and p2@17@01 (not bypass2@92@01)))
; [eval] p1 && !bypass1 ==> !idle1 ==> !_loop_check_before ==> (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))
; [eval] p1 && !bypass1
(push) ; 12
; [then-branch: 230 | !(p1@16@01) | live]
; [else-branch: 230 | p1@16@01 | live]
(push) ; 13
; [then-branch: 230 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 13
(push) ; 13
; [else-branch: 230 | p1@16@01]
; [eval] !bypass1
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@91@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@91@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 231 | p1@16@01 && !(bypass1@91@01) | live]
; [else-branch: 231 | !(p1@16@01 && !(bypass1@91@01)) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 231 | p1@16@01 && !(bypass1@91@01)]
(assert (and p1@16@01 (not bypass1@91@01)))
; [eval] !idle1 ==> !_loop_check_before ==> (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))
; [eval] !idle1
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not idle1@110@01))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (not idle1@110@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 232 | !(idle1@110@01) | live]
; [else-branch: 232 | idle1@110@01 | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 232 | !(idle1@110@01)]
(assert (not idle1@110@01))
; [eval] !_loop_check_before ==> (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 233 | True | live]
; [else-branch: 233 | False | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 233 | True]
; [eval] (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false)
(push) ; 18
; [then-branch: 234 | False | live]
; [else-branch: 234 | True | live]
(push) ; 19
; [then-branch: 234 | False]
(assert false)
(pop) ; 19
(push) ; 19
; [else-branch: 234 | True]
; [eval] (forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false)
(push) ; 20
; [then-branch: 235 | False | live]
; [else-branch: 235 | True | live]
(push) ; 21
; [then-branch: 235 | False]
(assert false)
(pop) ; 21
(push) ; 21
; [else-branch: 235 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false)
(push) ; 22
; [then-branch: 236 | False | live]
; [else-branch: 236 | True | live]
(push) ; 23
; [then-branch: 236 | False]
(assert false)
(pop) ; 23
(push) ; 23
; [else-branch: 236 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)
(pop) ; 23
(pop) ; 22
; Joined path conditions
; Joined path conditions
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(pop) ; 17
(pop) ; 16
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
(assert (not idle1@110@01))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (and p1@16@01 (not bypass1@91@01)))
; [eval] p2 && !bypass2 ==> !idle2 ==> !_loop_check_before_0 ==> (forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))
; [eval] p2 && !bypass2
(push) ; 12
; [then-branch: 237 | !(p2@17@01) | live]
; [else-branch: 237 | p2@17@01 | live]
(push) ; 13
; [then-branch: 237 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 13
(push) ; 13
; [else-branch: 237 | p2@17@01]
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p2@17@01 (not bypass2@92@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p2@17@01 (not bypass2@92@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 238 | p2@17@01 && !(bypass2@92@01) | live]
; [else-branch: 238 | !(p2@17@01 && !(bypass2@92@01)) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 238 | p2@17@01 && !(bypass2@92@01)]
(assert (and p2@17@01 (not bypass2@92@01)))
; [eval] !idle2 ==> !_loop_check_before_0 ==> (forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))
; [eval] !idle2
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not idle2@111@01))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (not idle2@111@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 239 | !(idle2@111@01) | live]
; [else-branch: 239 | idle2@111@01 | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 239 | !(idle2@111@01)]
(assert (not idle2@111@01))
; [eval] !_loop_check_before_0 ==> (forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))
; [eval] !_loop_check_before_0
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 240 | True | live]
; [else-branch: 240 | False | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 240 | True]
; [eval] (forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))
; [eval] (forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false)
(push) ; 18
; [then-branch: 241 | False | live]
; [else-branch: 241 | True | live]
(push) ; 19
; [then-branch: 241 | False]
(assert false)
(pop) ; 19
(push) ; 19
; [else-branch: 241 | True]
; [eval] (forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false)
(push) ; 20
; [then-branch: 242 | False | live]
; [else-branch: 242 | True | live]
(push) ; 21
; [then-branch: 242 | False]
(assert false)
(pop) ; 21
(push) ; 21
; [else-branch: 242 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false)
(push) ; 22
; [then-branch: 243 | False | live]
; [else-branch: 243 | True | live]
(push) ; 23
; [then-branch: 243 | False]
(assert false)
(pop) ; 23
(push) ; 23
; [else-branch: 243 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)
(pop) ; 23
(pop) ; 22
; Joined path conditions
; Joined path conditions
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(pop) ; 17
(pop) ; 16
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
(assert (not idle2@111@01))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (and p2@17@01 (not bypass2@92@01)))
; [eval] bypass1 ==> tmp1_2 == n_1
(push) ; 12
; [then-branch: 244 | bypass1@91@01 | dead]
; [else-branch: 244 | !(bypass1@91@01) | live]
(push) ; 13
; [else-branch: 244 | !(bypass1@91@01)]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] bypass1 ==> tmp1_1 == f2
(push) ; 12
; [then-branch: 245 | bypass1@91@01 | dead]
; [else-branch: 245 | !(bypass1@91@01) | live]
(push) ; 13
; [else-branch: 245 | !(bypass1@91@01)]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] bypass1 ==> tmp1_0 == f1
(push) ; 12
; [then-branch: 246 | bypass1@91@01 | dead]
; [else-branch: 246 | !(bypass1@91@01) | live]
(push) ; 13
; [else-branch: 246 | !(bypass1@91@01)]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] bypass1 ==> tmp1_3 == _loop_check_before
(push) ; 12
; [then-branch: 247 | bypass1@91@01 | dead]
; [else-branch: 247 | !(bypass1@91@01) | live]
(push) ; 13
; [else-branch: 247 | !(bypass1@91@01)]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] bypass1 ==> tmp1 == _loop_measures
(push) ; 12
; [then-branch: 248 | bypass1@91@01 | dead]
; [else-branch: 248 | !(bypass1@91@01) | live]
(push) ; 13
; [else-branch: 248 | !(bypass1@91@01)]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] bypass2 ==> tmp2_1 == f2_0
(push) ; 12
; [then-branch: 249 | bypass2@92@01 | dead]
; [else-branch: 249 | !(bypass2@92@01) | live]
(push) ; 13
; [else-branch: 249 | !(bypass2@92@01)]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] bypass2 ==> tmp2_0 == f1_0
(push) ; 12
; [then-branch: 250 | bypass2@92@01 | dead]
; [else-branch: 250 | !(bypass2@92@01) | live]
(push) ; 13
; [else-branch: 250 | !(bypass2@92@01)]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] bypass2 ==> tmp2_2 == n_1_0
(push) ; 12
; [then-branch: 251 | bypass2@92@01 | dead]
; [else-branch: 251 | !(bypass2@92@01) | live]
(push) ; 13
; [else-branch: 251 | !(bypass2@92@01)]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] bypass2 ==> tmp2_3 == _loop_check_before_0
(push) ; 12
; [then-branch: 252 | bypass2@92@01 | dead]
; [else-branch: 252 | !(bypass2@92@01) | live]
(push) ; 13
; [else-branch: 252 | !(bypass2@92@01)]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] bypass2 ==> tmp2 == _loop_measures_0
(push) ; 12
; [then-branch: 253 | bypass2@92@01 | dead]
; [else-branch: 253 | !(bypass2@92@01) | live]
(push) ; 13
; [else-branch: 253 | !(bypass2@92@01)]
(pop) ; 13
(pop) ; 12
; Joined path conditions
(pop) ; 11
; [eval] !(p2_0 && !ret2)
; [eval] p2_0 && !ret2
(push) ; 11
; [then-branch: 254 | !(p2_0@109@01) | live]
; [else-branch: 254 | p2_0@109@01 | live]
(push) ; 12
; [then-branch: 254 | !(p2_0@109@01)]
(assert (not p2_0@109@01))
(pop) ; 12
(push) ; 12
; [else-branch: 254 | p2_0@109@01]
(assert p2_0@109@01)
; [eval] !ret2
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(push) ; 11
(set-option :timeout 10)
(assert (not p2_0@109@01))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 255 | !(p2_0@109@01) | dead]
; [else-branch: 255 | p2_0@109@01 | live]
(set-option :timeout 0)
(push) ; 11
; [else-branch: 255 | p2_0@109@01]
(assert p2_0@109@01)
(pop) ; 11
(pop) ; 10
; [eval] !(p1_0 && !ret1)
; [eval] p1_0 && !ret1
(push) ; 10
; [then-branch: 256 | !(p1_0@108@01) | live]
; [else-branch: 256 | p1_0@108@01 | live]
(push) ; 11
; [then-branch: 256 | !(p1_0@108@01)]
(assert (not p1_0@108@01))
(pop) ; 11
(push) ; 11
; [else-branch: 256 | p1_0@108@01]
(assert p1_0@108@01)
; [eval] !ret1
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(push) ; 10
(set-option :timeout 10)
(assert (not p1_0@108@01))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 257 | !(p1_0@108@01) | dead]
; [else-branch: 257 | p1_0@108@01 | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 257 | p1_0@108@01]
(assert p1_0@108@01)
(pop) ; 10
(pop) ; 9
(push) ; 9
; [else-branch: 175 | !(p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0) || p2@17@01 && !(bypass2@92@01) && int___gt__(_, int___unbox__(_, n_1_0@105@01), 0))]
(assert (not
  (or
    (and
      p1@16@01
      (and
        (not bypass1@91@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))
    (and
      p2@17@01
      (and
        (not bypass2@92@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))))))
(pop) ; 9
; [eval] !(p1 && (!ret1 && (!bypass1 && int___gt__(int___unbox__(n_1), 0))) || p2 && (!ret2 && (!bypass2 && int___gt__(int___unbox__(n_1_0), 0))))
; [eval] p1 && (!ret1 && (!bypass1 && int___gt__(int___unbox__(n_1), 0))) || p2 && (!ret2 && (!bypass2 && int___gt__(int___unbox__(n_1_0), 0)))
; [eval] p1 && (!ret1 && (!bypass1 && int___gt__(int___unbox__(n_1), 0)))
(push) ; 9
; [then-branch: 258 | !(p1@16@01) | live]
; [else-branch: 258 | p1@16@01 | live]
(push) ; 10
; [then-branch: 258 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 10
(push) ; 10
; [else-branch: 258 | p1@16@01]
(assert p1@16@01)
; [eval] !ret1
(push) ; 11
; [then-branch: 259 | False | live]
; [else-branch: 259 | True | live]
(push) ; 12
; [then-branch: 259 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 259 | True]
; [eval] !bypass1
(push) ; 13
; [then-branch: 260 | bypass1@91@01 | live]
; [else-branch: 260 | !(bypass1@91@01) | live]
(push) ; 14
; [then-branch: 260 | bypass1@91@01]
(assert bypass1@91@01)
(pop) ; 14
(push) ; 14
; [else-branch: 260 | !(bypass1@91@01)]
(assert (not bypass1@91@01))
; [eval] int___gt__(int___unbox__(n_1), 0)
; [eval] int___unbox__(n_1)
(push) ; 15
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 16
(assert (not (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1@100@01))
(pop) ; 15
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1@100@01)))
(push) ; 15
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))
(pop) ; 15
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (=>
  (not bypass1@91@01)
  (and
    (not bypass1@91@01)
    (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_1@100@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
(assert (or (not bypass1@91@01) bypass1@91@01))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (and
  (=>
    (not bypass1@91@01)
    (and
      (not bypass1@91@01)
      (issubtype<Bool> (typeof<PyType> n_1@100@01) (as int<PyType>  PyType))
      (int___unbox__%precondition $Snap.unit n_1@100@01)
      (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))
  (or (not bypass1@91@01) bypass1@91@01)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(push) ; 9
; [then-branch: 261 | p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0) | live]
; [else-branch: 261 | !(p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0)) | live]
(push) ; 10
; [then-branch: 261 | p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0)]
(assert (and
  p1@16@01
  (and
    (not bypass1@91@01)
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
(pop) ; 10
(push) ; 10
; [else-branch: 261 | !(p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0))]
(assert (not
  (and
    p1@16@01
    (and
      (not bypass1@91@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))))
; [eval] p2 && (!ret2 && (!bypass2 && int___gt__(int___unbox__(n_1_0), 0)))
(push) ; 11
; [then-branch: 262 | !(p2@17@01) | live]
; [else-branch: 262 | p2@17@01 | live]
(push) ; 12
; [then-branch: 262 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 12
(push) ; 12
; [else-branch: 262 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(push) ; 13
; [then-branch: 263 | False | live]
; [else-branch: 263 | True | live]
(push) ; 14
; [then-branch: 263 | False]
(assert false)
(pop) ; 14
(push) ; 14
; [else-branch: 263 | True]
; [eval] !bypass2
(push) ; 15
; [then-branch: 264 | bypass2@92@01 | live]
; [else-branch: 264 | !(bypass2@92@01) | live]
(push) ; 16
; [then-branch: 264 | bypass2@92@01]
(assert bypass2@92@01)
(pop) ; 16
(push) ; 16
; [else-branch: 264 | !(bypass2@92@01)]
(assert (not bypass2@92@01))
; [eval] int___gt__(int___unbox__(n_1_0), 0)
; [eval] int___unbox__(n_1_0)
(push) ; 17
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 18
(assert (not (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1_0@105@01))
(pop) ; 17
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1_0@105@01)))
(push) ; 17
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))
(pop) ; 17
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (=>
  (not bypass2@92@01)
  (and
    (not bypass2@92@01)
    (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_1_0@105@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))))
(assert (or (not bypass2@92@01) bypass2@92@01))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (and
  (=>
    (not bypass2@92@01)
    (and
      (not bypass2@92@01)
      (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
      (int___unbox__%precondition $Snap.unit n_1_0@105@01)
      (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0)))
  (or (not bypass2@92@01) bypass2@92@01)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  p2@17@01
  (and
    p2@17@01
    (=>
      (not bypass2@92@01)
      (and
        (not bypass2@92@01)
        (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
        (int___unbox__%precondition $Snap.unit n_1_0@105@01)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0)))
    (or (not bypass2@92@01) bypass2@92@01))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (not
    (and
      p1@16@01
      (and
        (not bypass1@91@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
  (and
    (not
      (and
        p1@16@01
        (and
          (not bypass1@91@01)
          (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0))))
    (=>
      p2@17@01
      (and
        p2@17@01
        (=>
          (not bypass2@92@01)
          (and
            (not bypass2@92@01)
            (issubtype<Bool> (typeof<PyType> n_1_0@105@01) (as int<PyType>  PyType))
            (int___unbox__%precondition $Snap.unit n_1_0@105@01)
            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0)))
        (or (not bypass2@92@01) bypass2@92@01))))))
(push) ; 9
(set-option :timeout 10)
(assert (not (or
  (and
    p1@16@01
    (and
      (not bypass1@91@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))
  (and
    p2@17@01
    (and
      (not bypass2@92@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not
  (or
    (and
      p1@16@01
      (and
        (not bypass1@91@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))
    (and
      p2@17@01
      (and
        (not bypass2@92@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 265 | !(p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0) || p2@17@01 && !(bypass2@92@01) && int___gt__(_, int___unbox__(_, n_1_0@105@01), 0)) | live]
; [else-branch: 265 | p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0) || p2@17@01 && !(bypass2@92@01) && int___gt__(_, int___unbox__(_, n_1_0@105@01), 0) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 265 | !(p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0) || p2@17@01 && !(bypass2@92@01) && int___gt__(_, int___unbox__(_, n_1_0@105@01), 0))]
(assert (not
  (or
    (and
      p1@16@01
      (and
        (not bypass1@91@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))
    (and
      p2@17@01
      (and
        (not bypass2@92@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0))))))
; [eval] p1 && !ret1
(push) ; 10
; [then-branch: 266 | !(p1@16@01) | live]
; [else-branch: 266 | p1@16@01 | live]
(push) ; 11
; [then-branch: 266 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 11
(push) ; 11
; [else-branch: 266 | p1@16@01]
(assert p1@16@01)
; [eval] !ret1
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(push) ; 10
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not p1@16@01))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 267 | p1@16@01 | live]
; [else-branch: 267 | !(p1@16@01) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 267 | p1@16@01]
(assert p1@16@01)
; [exec]
; exhale perm(MustTerminate(_cthread_156)) > none ==>
;   acc(MustTerminate(_cthread_156), perm(MustTerminate(_cthread_156)) -
;   _loop_original_must_terminate)
; [eval] perm(MustTerminate(_cthread_156)) > none
; [eval] perm(MustTerminate(_cthread_156))
; [then-branch: 268 | False | dead]
; [else-branch: 268 | True | live]
(push) ; 11
; [else-branch: 268 | True]
; [exec]
; _res := null
; [eval] p2 && !ret2
(push) ; 12
; [then-branch: 269 | !(p2@17@01) | live]
; [else-branch: 269 | p2@17@01 | live]
(push) ; 13
; [then-branch: 269 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 13
(push) ; 13
; [else-branch: 269 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(set-option :timeout 10)
(assert (not (not p2@17@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not p2@17@01))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 270 | p2@17@01 | live]
; [else-branch: 270 | !(p2@17@01) | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 270 | p2@17@01]
(assert p2@17@01)
; [exec]
; exhale perm(MustTerminate_0(_cthread_156_0)) > none ==>
;   acc(MustTerminate_0(_cthread_156_0), perm(MustTerminate_0(_cthread_156_0)) -
;   _loop_original_must_terminate_0)
; [eval] perm(MustTerminate_0(_cthread_156_0)) > none
; [eval] perm(MustTerminate_0(_cthread_156_0))
; [then-branch: 271 | False | dead]
; [else-branch: 271 | True | live]
(push) ; 13
; [else-branch: 271 | True]
; [exec]
; _res_0 := null
; [exec]
; p1_1 := p1 &&
;   (!ret1 &&
;   int___gt__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(k_0)))
; [eval] p1 && (!ret1 && int___gt__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(k_0)))
(push) ; 14
; [then-branch: 272 | !(p1@16@01) | live]
; [else-branch: 272 | p1@16@01 | live]
(push) ; 15
; [then-branch: 272 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 15
(push) ; 15
; [else-branch: 272 | p1@16@01]
; [eval] !ret1
(push) ; 16
; [then-branch: 273 | False | live]
; [else-branch: 273 | True | live]
(push) ; 17
; [then-branch: 273 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 273 | True]
; [eval] int___gt__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(k_0))
; [eval] int___unbox__(_checkDefined(f1, 12646))
; [eval] _checkDefined(f1, 12646)
(push) ; 18
; [eval] _isDefined(id)
(push) ; 19
(pop) ; 19
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f1@98@01 12646))
(pop) ; 18
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f1@98@01 12646))
(push) ; 18
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 19
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@98@01 12646)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@98@01 12646)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646)))
(pop) ; 18
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@98@01 12646)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646))))
; [eval] int___unbox__(k_0)
(push) ; 18
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 19
(assert (not (issubtype<Bool> (typeof<PyType> k@26@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> k@26@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit k@26@01))
(pop) ; 18
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> k@26@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit k@26@01)))
(push) ; 18
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646)) (int___unbox__ $Snap.unit k@26@01)))
(pop) ; 18
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646)) (int___unbox__ $Snap.unit k@26@01)))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit f1@98@01 12646)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@98@01 12646)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646))
  (issubtype<Bool> (typeof<PyType> k@26@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit k@26@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646)) (int___unbox__ $Snap.unit k@26@01))))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (=>
  p1@16@01
  (and
    (_checkDefined%precondition $Snap.unit f1@98@01 12646)
    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@98@01 12646)) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646))
    (issubtype<Bool> (typeof<PyType> k@26@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit k@26@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646)) (int___unbox__ $Snap.unit k@26@01)))))
(declare-const p1_1@122@01 Bool)
(assert (=
  p1_1@122@01
  (and
    p1@16@01
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646)) (int___unbox__ $Snap.unit k@26@01)))))
; [exec]
; p2_1 := p2 &&
;   (!ret2 && int___gt__(int___unbox__(f1_0), int___unbox__(k_0_0)))
; [eval] p2 && (!ret2 && int___gt__(int___unbox__(f1_0), int___unbox__(k_0_0)))
(push) ; 14
; [then-branch: 274 | !(p2@17@01) | live]
; [else-branch: 274 | p2@17@01 | live]
(push) ; 15
; [then-branch: 274 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 15
(push) ; 15
; [else-branch: 274 | p2@17@01]
; [eval] !ret2
(push) ; 16
; [then-branch: 275 | False | live]
; [else-branch: 275 | True | live]
(push) ; 17
; [then-branch: 275 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 275 | True]
; [eval] int___gt__(int___unbox__(f1_0), int___unbox__(k_0_0))
; [eval] int___unbox__(f1_0)
(push) ; 18
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 19
(assert (not (issubtype<Bool> (typeof<PyType> f1_0@103@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> f1_0@103@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit f1_0@103@01))
(pop) ; 18
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> f1_0@103@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit f1_0@103@01)))
; [eval] int___unbox__(k_0_0)
(push) ; 18
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 19
(assert (not (issubtype<Bool> (typeof<PyType> k_1@27@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> k_1@27@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit k_1@27@01))
(pop) ; 18
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> k_1@27@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit k_1@27@01)))
(push) ; 18
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit f1_0@103@01) (int___unbox__ $Snap.unit k_1@27@01)))
(pop) ; 18
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit f1_0@103@01) (int___unbox__ $Snap.unit k_1@27@01)))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> f1_0@103@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit f1_0@103@01)
  (issubtype<Bool> (typeof<PyType> k_1@27@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit k_1@27@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit f1_0@103@01) (int___unbox__ $Snap.unit k_1@27@01))))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (=>
  p2@17@01
  (and
    (issubtype<Bool> (typeof<PyType> f1_0@103@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit f1_0@103@01)
    (issubtype<Bool> (typeof<PyType> k_1@27@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit k_1@27@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit f1_0@103@01) (int___unbox__ $Snap.unit k_1@27@01)))))
(declare-const p2_1@123@01 Bool)
(assert (=
  p2_1@123@01
  (and
    p2@17@01
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit f1_0@103@01) (int___unbox__ $Snap.unit k_1@27@01)))))
; [exec]
; p3 := p1 &&
;   (!ret1 &&
;   !int___gt__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(k_0)))
; [eval] p1 && (!ret1 && !int___gt__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(k_0)))
(push) ; 14
; [then-branch: 276 | !(p1@16@01) | live]
; [else-branch: 276 | p1@16@01 | live]
(push) ; 15
; [then-branch: 276 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 15
(push) ; 15
; [else-branch: 276 | p1@16@01]
; [eval] !ret1
(push) ; 16
; [then-branch: 277 | False | live]
; [else-branch: 277 | True | live]
(push) ; 17
; [then-branch: 277 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 277 | True]
; [eval] !int___gt__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(k_0))
; [eval] int___gt__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(k_0))
; [eval] int___unbox__(_checkDefined(f1, 12646))
; [eval] _checkDefined(f1, 12646)
(push) ; 18
; [eval] _isDefined(id)
(push) ; 19
(pop) ; 19
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f1@98@01 12646))
(pop) ; 18
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f1@98@01 12646))
(push) ; 18
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 19
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@98@01 12646)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@98@01 12646)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646)))
(pop) ; 18
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@98@01 12646)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646))))
; [eval] int___unbox__(k_0)
(push) ; 18
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 19
(assert (not (issubtype<Bool> (typeof<PyType> k@26@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> k@26@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit k@26@01))
(pop) ; 18
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> k@26@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit k@26@01)))
(push) ; 18
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646)) (int___unbox__ $Snap.unit k@26@01)))
(pop) ; 18
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646)) (int___unbox__ $Snap.unit k@26@01)))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit f1@98@01 12646)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@98@01 12646)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646))
  (issubtype<Bool> (typeof<PyType> k@26@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit k@26@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646)) (int___unbox__ $Snap.unit k@26@01))))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(declare-const p3@124@01 Bool)
(assert (=
  p3@124@01
  (and
    p1@16@01
    (not
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@98@01 12646)) (int___unbox__ $Snap.unit k@26@01))))))
; [exec]
; p4 := p2 &&
;   (!ret2 && !int___gt__(int___unbox__(f1_0), int___unbox__(k_0_0)))
; [eval] p2 && (!ret2 && !int___gt__(int___unbox__(f1_0), int___unbox__(k_0_0)))
(push) ; 14
; [then-branch: 278 | !(p2@17@01) | live]
; [else-branch: 278 | p2@17@01 | live]
(push) ; 15
; [then-branch: 278 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 15
(push) ; 15
; [else-branch: 278 | p2@17@01]
; [eval] !ret2
(push) ; 16
; [then-branch: 279 | False | live]
; [else-branch: 279 | True | live]
(push) ; 17
; [then-branch: 279 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 279 | True]
; [eval] !int___gt__(int___unbox__(f1_0), int___unbox__(k_0_0))
; [eval] int___gt__(int___unbox__(f1_0), int___unbox__(k_0_0))
; [eval] int___unbox__(f1_0)
(push) ; 18
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 19
(assert (not (issubtype<Bool> (typeof<PyType> f1_0@103@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> f1_0@103@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit f1_0@103@01))
(pop) ; 18
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> f1_0@103@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit f1_0@103@01)))
; [eval] int___unbox__(k_0_0)
(push) ; 18
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 19
(assert (not (issubtype<Bool> (typeof<PyType> k_1@27@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> k_1@27@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit k_1@27@01))
(pop) ; 18
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> k_1@27@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit k_1@27@01)))
(push) ; 18
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit f1_0@103@01) (int___unbox__ $Snap.unit k_1@27@01)))
(pop) ; 18
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit f1_0@103@01) (int___unbox__ $Snap.unit k_1@27@01)))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> f1_0@103@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit f1_0@103@01)
  (issubtype<Bool> (typeof<PyType> k_1@27@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit k_1@27@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit f1_0@103@01) (int___unbox__ $Snap.unit k_1@27@01))))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(declare-const p4@125@01 Bool)
(assert (=
  p4@125@01
  (and
    p2@17@01
    (not
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit f1_0@103@01) (int___unbox__ $Snap.unit k_1@27@01))))))
; [eval] p1_1 && !ret1
(push) ; 14
; [then-branch: 280 | !(p1_1@122@01) | live]
; [else-branch: 280 | p1_1@122@01 | live]
(push) ; 15
; [then-branch: 280 | !(p1_1@122@01)]
(assert (not p1_1@122@01))
(pop) ; 15
(push) ; 15
; [else-branch: 280 | p1_1@122@01]
(assert p1_1@122@01)
; [eval] !ret1
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or p1_1@122@01 (not p1_1@122@01)))
(push) ; 14
(set-option :timeout 10)
(assert (not (not p1_1@122@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not p1_1@122@01))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 281 | p1_1@122@01 | live]
; [else-branch: 281 | !(p1_1@122@01) | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 281 | p1_1@122@01]
(assert p1_1@122@01)
; [exec]
; _res := __prim__int___box__(1)
; [eval] __prim__int___box__(1)
(push) ; 15
(pop) ; 15
; Joined path conditions
(declare-const _res@126@01 $Ref)
(assert (= _res@126@01 (__prim__int___box__ $Snap.unit 1)))
; [exec]
; ret1 := true
; [eval] p2_1 && !ret2
(push) ; 15
; [then-branch: 282 | !(p2_1@123@01) | live]
; [else-branch: 282 | p2_1@123@01 | live]
(push) ; 16
; [then-branch: 282 | !(p2_1@123@01)]
(assert (not p2_1@123@01))
(pop) ; 16
(push) ; 16
; [else-branch: 282 | p2_1@123@01]
(assert p2_1@123@01)
; [eval] !ret2
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (or p2_1@123@01 (not p2_1@123@01)))
(push) ; 15
(set-option :timeout 10)
(assert (not (not p2_1@123@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not p2_1@123@01))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 283 | p2_1@123@01 | live]
; [else-branch: 283 | !(p2_1@123@01) | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 283 | p2_1@123@01]
(assert p2_1@123@01)
; [exec]
; _res_0 := __prim__int___box__(1)
; [eval] __prim__int___box__(1)
(push) ; 16
(pop) ; 16
; Joined path conditions
(declare-const _res_0@127@01 $Ref)
(assert (= _res_0@127@01 (__prim__int___box__ $Snap.unit 1)))
; [exec]
; ret2 := true
; [eval] p1 && !ret1
(push) ; 16
; [then-branch: 284 | !(p1@16@01) | live]
; [else-branch: 284 | p1@16@01 | live]
(push) ; 17
; [then-branch: 284 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 17
(push) ; 17
; [else-branch: 284 | p1@16@01]
; [eval] !ret1
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
; [then-branch: 285 | False | dead]
; [else-branch: 285 | True | live]
(push) ; 16
; [else-branch: 285 | True]
(pop) ; 16
; [eval] !(p1 && !ret1)
; [eval] p1 && !ret1
(push) ; 16
; [then-branch: 286 | !(p1@16@01) | live]
; [else-branch: 286 | p1@16@01 | live]
(push) ; 17
; [then-branch: 286 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 17
(push) ; 17
; [else-branch: 286 | p1@16@01]
; [eval] !ret1
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(push) ; 16
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 287 | True | live]
; [else-branch: 287 | False | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 287 | True]
; [eval] p2 && !ret2
(push) ; 17
; [then-branch: 288 | !(p2@17@01) | live]
; [else-branch: 288 | p2@17@01 | live]
(push) ; 18
; [then-branch: 288 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 18
(push) ; 18
; [else-branch: 288 | p2@17@01]
; [eval] !ret2
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
; [then-branch: 289 | False | dead]
; [else-branch: 289 | True | live]
(push) ; 17
; [else-branch: 289 | True]
(pop) ; 17
; [eval] !(p2 && !ret2)
; [eval] p2 && !ret2
(push) ; 17
; [then-branch: 290 | !(p2@17@01) | live]
; [else-branch: 290 | p2@17@01 | live]
(push) ; 18
; [then-branch: 290 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 18
(push) ; 18
; [else-branch: 290 | p2@17@01]
; [eval] !ret2
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(push) ; 17
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 291 | True | live]
; [else-branch: 291 | False | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 291 | True]
; [exec]
; assert true
; [eval] p1 ==> true
(push) ; 18
(push) ; 19
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 292 | p1@16@01 | live]
; [else-branch: 292 | !(p1@16@01) | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 292 | p1@16@01]
(pop) ; 19
(pop) ; 18
; Joined path conditions
; [eval] p2 ==> true
(push) ; 18
(push) ; 19
(set-option :timeout 10)
(assert (not (not p2@17@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 293 | p2@17@01 | live]
; [else-branch: 293 | !(p2@17@01) | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 293 | p2@17@01]
(pop) ; 19
(pop) ; 18
; Joined path conditions
; [eval] p1 ==> issubtype(typeof(_res), int())
(push) ; 18
(push) ; 19
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 294 | p1@16@01 | live]
; [else-branch: 294 | !(p1@16@01) | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 294 | p1@16@01]
; [eval] issubtype(typeof(_res), int())
; [eval] typeof(_res)
; [eval] int()
(pop) ; 19
(pop) ; 18
; Joined path conditions
(push) ; 18
(assert (not (=>
  p1@16@01
  (issubtype<Bool> (typeof<PyType> _res@126@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p1@16@01
  (issubtype<Bool> (typeof<PyType> _res@126@01) (as int<PyType>  PyType))))
; [eval] p2 ==> issubtype(typeof(_res_0), int())
(push) ; 18
(push) ; 19
(set-option :timeout 10)
(assert (not (not p2@17@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 295 | p2@17@01 | live]
; [else-branch: 295 | !(p2@17@01) | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 295 | p2@17@01]
; [eval] issubtype(typeof(_res_0), int())
; [eval] typeof(_res_0)
; [eval] int()
(pop) ; 19
(pop) ; 18
; Joined path conditions
(push) ; 18
(assert (not (=>
  p2@17@01
  (issubtype<Bool> (typeof<PyType> _res_0@127@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p2@17@01
  (issubtype<Bool> (typeof<PyType> _res_0@127@01) (as int<PyType>  PyType))))
; [eval] p1 && p2 ==> _res == _res_0
; [eval] p1 && p2
(push) ; 18
; [then-branch: 296 | !(p1@16@01) | live]
; [else-branch: 296 | p1@16@01 | live]
(push) ; 19
; [then-branch: 296 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 19
(push) ; 19
; [else-branch: 296 | p1@16@01]
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(push) ; 18
(push) ; 19
(set-option :timeout 10)
(assert (not (not (and p1@16@01 p2@17@01))))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (and p1@16@01 p2@17@01)))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 297 | p1@16@01 && p2@17@01 | live]
; [else-branch: 297 | !(p1@16@01 && p2@17@01) | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 297 | p1@16@01 && p2@17@01]
(assert (and p1@16@01 p2@17@01))
; [eval] _res == _res_0
(pop) ; 19
(pop) ; 18
; Joined path conditions
(assert (and p1@16@01 p2@17@01))
(push) ; 18
(assert (not (=> (and p1@16@01 p2@17@01) (= _res@126@01 _res_0@127@01))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (=> (and p1@16@01 p2@17@01) (= _res@126@01 _res_0@127@01)))
; [eval] p1 ==> (forperm _r_2: Ref [MustInvokeBounded(_r_2)] :: false) && ((forperm _r_2: Ref [MustInvokeUnbounded(_r_2)] :: false) && ((forperm _r_2: Ref [_r_2.MustReleaseBounded] :: false) && (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: false)))
(push) ; 18
(push) ; 19
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 298 | p1@16@01 | live]
; [else-branch: 298 | !(p1@16@01) | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 298 | p1@16@01]
; [eval] (forperm _r_2: Ref [MustInvokeBounded(_r_2)] :: false) && ((forperm _r_2: Ref [MustInvokeUnbounded(_r_2)] :: false) && ((forperm _r_2: Ref [_r_2.MustReleaseBounded] :: false) && (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_2: Ref [MustInvokeBounded(_r_2)] :: false)
(push) ; 20
; [then-branch: 299 | False | live]
; [else-branch: 299 | True | live]
(push) ; 21
; [then-branch: 299 | False]
(assert false)
(pop) ; 21
(push) ; 21
; [else-branch: 299 | True]
; [eval] (forperm _r_2: Ref [MustInvokeUnbounded(_r_2)] :: false)
(push) ; 22
; [then-branch: 300 | False | live]
; [else-branch: 300 | True | live]
(push) ; 23
; [then-branch: 300 | False]
(assert false)
(pop) ; 23
(push) ; 23
; [else-branch: 300 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: false)
(push) ; 24
; [then-branch: 301 | False | live]
; [else-branch: 301 | True | live]
(push) ; 25
; [then-branch: 301 | False]
(assert false)
(pop) ; 25
(push) ; 25
; [else-branch: 301 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: false)
(pop) ; 25
(pop) ; 24
; Joined path conditions
; Joined path conditions
(pop) ; 23
(pop) ; 22
; Joined path conditions
; Joined path conditions
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(pop) ; 19
(pop) ; 18
; Joined path conditions
; [eval] p2 ==> (forperm _r_2: Ref [MustInvokeBounded_0(_r_2)] :: false) && ((forperm _r_2: Ref [MustInvokeUnbounded_0(_r_2)] :: false) && ((forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: false) && (forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: false)))
(push) ; 18
(push) ; 19
(set-option :timeout 10)
(assert (not (not p2@17@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 302 | p2@17@01 | live]
; [else-branch: 302 | !(p2@17@01) | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 302 | p2@17@01]
; [eval] (forperm _r_2: Ref [MustInvokeBounded_0(_r_2)] :: false) && ((forperm _r_2: Ref [MustInvokeUnbounded_0(_r_2)] :: false) && ((forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: false) && (forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: false)))
; [eval] (forperm _r_2: Ref [MustInvokeBounded_0(_r_2)] :: false)
(push) ; 20
; [then-branch: 303 | False | live]
; [else-branch: 303 | True | live]
(push) ; 21
; [then-branch: 303 | False]
(assert false)
(pop) ; 21
(push) ; 21
; [else-branch: 303 | True]
; [eval] (forperm _r_2: Ref [MustInvokeUnbounded_0(_r_2)] :: false)
(push) ; 22
; [then-branch: 304 | False | live]
; [else-branch: 304 | True | live]
(push) ; 23
; [then-branch: 304 | False]
(assert false)
(pop) ; 23
(push) ; 23
; [else-branch: 304 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: false)
(push) ; 24
; [then-branch: 305 | False | live]
; [else-branch: 305 | True | live]
(push) ; 25
; [then-branch: 305 | False]
(assert false)
(pop) ; 25
(push) ; 25
; [else-branch: 305 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: false)
(pop) ; 25
(pop) ; 24
; Joined path conditions
; Joined path conditions
(pop) ; 23
(pop) ; 22
; Joined path conditions
; Joined path conditions
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(pop) ; 19
(pop) ; 18
; Joined path conditions
(pop) ; 17
(pop) ; 16
(pop) ; 15
; [eval] !(p2_1 && !ret2)
; [eval] p2_1 && !ret2
(push) ; 15
; [then-branch: 306 | !(p2_1@123@01) | live]
; [else-branch: 306 | p2_1@123@01 | live]
(push) ; 16
; [then-branch: 306 | !(p2_1@123@01)]
(assert (not p2_1@123@01))
(pop) ; 16
(push) ; 16
; [else-branch: 306 | p2_1@123@01]
(assert p2_1@123@01)
; [eval] !ret2
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(push) ; 15
(set-option :timeout 10)
(assert (not p2_1@123@01))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 307 | !(p2_1@123@01) | dead]
; [else-branch: 307 | p2_1@123@01 | live]
(set-option :timeout 0)
(push) ; 15
; [else-branch: 307 | p2_1@123@01]
(assert p2_1@123@01)
(pop) ; 15
(pop) ; 14
(push) ; 14
; [else-branch: 281 | !(p1_1@122@01)]
(assert (not p1_1@122@01))
(pop) ; 14
; [eval] !(p1_1 && !ret1)
; [eval] p1_1 && !ret1
(push) ; 14
; [then-branch: 308 | !(p1_1@122@01) | live]
; [else-branch: 308 | p1_1@122@01 | live]
(push) ; 15
; [then-branch: 308 | !(p1_1@122@01)]
(assert (not p1_1@122@01))
(pop) ; 15
(push) ; 15
; [else-branch: 308 | p1_1@122@01]
(assert p1_1@122@01)
; [eval] !ret1
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(push) ; 14
(set-option :timeout 10)
(assert (not p1_1@122@01))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (not p1_1@122@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 309 | !(p1_1@122@01) | live]
; [else-branch: 309 | p1_1@122@01 | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 309 | !(p1_1@122@01)]
(assert (not p1_1@122@01))
; [eval] p2_1 && !ret2
(push) ; 15
; [then-branch: 310 | !(p2_1@123@01) | live]
; [else-branch: 310 | p2_1@123@01 | live]
(push) ; 16
; [then-branch: 310 | !(p2_1@123@01)]
(assert (not p2_1@123@01))
(pop) ; 16
(push) ; 16
; [else-branch: 310 | p2_1@123@01]
(assert p2_1@123@01)
; [eval] !ret2
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (or p2_1@123@01 (not p2_1@123@01)))
(push) ; 15
(set-option :timeout 10)
(assert (not (not p2_1@123@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 311 | p2_1@123@01 | dead]
; [else-branch: 311 | !(p2_1@123@01) | live]
(set-option :timeout 0)
(push) ; 15
; [else-branch: 311 | !(p2_1@123@01)]
(assert (not p2_1@123@01))
(pop) ; 15
; [eval] !(p2_1 && !ret2)
; [eval] p2_1 && !ret2
(push) ; 15
; [then-branch: 312 | !(p2_1@123@01) | live]
; [else-branch: 312 | p2_1@123@01 | live]
(push) ; 16
; [then-branch: 312 | !(p2_1@123@01)]
(assert (not p2_1@123@01))
(pop) ; 16
(push) ; 16
; [else-branch: 312 | p2_1@123@01]
(assert p2_1@123@01)
; [eval] !ret2
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(push) ; 15
(set-option :timeout 10)
(assert (not p2_1@123@01))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (not p2_1@123@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 313 | !(p2_1@123@01) | live]
; [else-branch: 313 | p2_1@123@01 | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 313 | !(p2_1@123@01)]
(assert (not p2_1@123@01))
; [eval] p1 && !ret1
(push) ; 16
; [then-branch: 314 | !(p1@16@01) | live]
; [else-branch: 314 | p1@16@01 | live]
(push) ; 17
; [then-branch: 314 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 17
(push) ; 17
; [else-branch: 314 | p1@16@01]
(assert p1@16@01)
; [eval] !ret1
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(push) ; 16
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not p1@16@01))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 315 | p1@16@01 | live]
; [else-branch: 315 | !(p1@16@01) | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 315 | p1@16@01]
(assert p1@16@01)
; [exec]
; _res := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 17
(pop) ; 17
; Joined path conditions
(declare-const _res@128@01 $Ref)
(assert (= _res@128@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; ret1 := true
; [eval] p2 && !ret2
(push) ; 17
; [then-branch: 316 | !(p2@17@01) | live]
; [else-branch: 316 | p2@17@01 | live]
(push) ; 18
; [then-branch: 316 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 18
(push) ; 18
; [else-branch: 316 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(push) ; 17
(set-option :timeout 10)
(assert (not (not p2@17@01)))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not p2@17@01))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 317 | p2@17@01 | live]
; [else-branch: 317 | !(p2@17@01) | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 317 | p2@17@01]
(assert p2@17@01)
; [exec]
; _res_0 := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 18
(pop) ; 18
; Joined path conditions
(declare-const _res_0@129@01 $Ref)
(assert (= _res_0@129@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; ret2 := true
; [exec]
; assert true
; [eval] p1 ==> true
(push) ; 18
(push) ; 19
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 318 | p1@16@01 | live]
; [else-branch: 318 | !(p1@16@01) | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 318 | p1@16@01]
(pop) ; 19
(pop) ; 18
; Joined path conditions
; [eval] p2 ==> true
(push) ; 18
(push) ; 19
(set-option :timeout 10)
(assert (not (not p2@17@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 319 | p2@17@01 | live]
; [else-branch: 319 | !(p2@17@01) | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 319 | p2@17@01]
(pop) ; 19
(pop) ; 18
; Joined path conditions
; [eval] p1 ==> issubtype(typeof(_res), int())
(push) ; 18
(push) ; 19
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 320 | p1@16@01 | live]
; [else-branch: 320 | !(p1@16@01) | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 320 | p1@16@01]
; [eval] issubtype(typeof(_res), int())
; [eval] typeof(_res)
; [eval] int()
(pop) ; 19
(pop) ; 18
; Joined path conditions
(push) ; 18
(assert (not (=>
  p1@16@01
  (issubtype<Bool> (typeof<PyType> _res@128@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p1@16@01
  (issubtype<Bool> (typeof<PyType> _res@128@01) (as int<PyType>  PyType))))
; [eval] p2 ==> issubtype(typeof(_res_0), int())
(push) ; 18
(push) ; 19
(set-option :timeout 10)
(assert (not (not p2@17@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 321 | p2@17@01 | live]
; [else-branch: 321 | !(p2@17@01) | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 321 | p2@17@01]
; [eval] issubtype(typeof(_res_0), int())
; [eval] typeof(_res_0)
; [eval] int()
(pop) ; 19
(pop) ; 18
; Joined path conditions
(push) ; 18
(assert (not (=>
  p2@17@01
  (issubtype<Bool> (typeof<PyType> _res_0@129@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p2@17@01
  (issubtype<Bool> (typeof<PyType> _res_0@129@01) (as int<PyType>  PyType))))
; [eval] p1 && p2 ==> _res == _res_0
; [eval] p1 && p2
(push) ; 18
; [then-branch: 322 | !(p1@16@01) | live]
; [else-branch: 322 | p1@16@01 | live]
(push) ; 19
; [then-branch: 322 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 19
(push) ; 19
; [else-branch: 322 | p1@16@01]
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(push) ; 18
(push) ; 19
(set-option :timeout 10)
(assert (not (not (and p1@16@01 p2@17@01))))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (and p1@16@01 p2@17@01)))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 323 | p1@16@01 && p2@17@01 | live]
; [else-branch: 323 | !(p1@16@01 && p2@17@01) | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 323 | p1@16@01 && p2@17@01]
(assert (and p1@16@01 p2@17@01))
; [eval] _res == _res_0
(pop) ; 19
(pop) ; 18
; Joined path conditions
(assert (and p1@16@01 p2@17@01))
(push) ; 18
(assert (not (=> (and p1@16@01 p2@17@01) (= _res@128@01 _res_0@129@01))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (=> (and p1@16@01 p2@17@01) (= _res@128@01 _res_0@129@01)))
; [eval] p1 ==> (forperm _r_2: Ref [MustInvokeBounded(_r_2)] :: false) && ((forperm _r_2: Ref [MustInvokeUnbounded(_r_2)] :: false) && ((forperm _r_2: Ref [_r_2.MustReleaseBounded] :: false) && (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: false)))
(push) ; 18
(push) ; 19
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 324 | p1@16@01 | live]
; [else-branch: 324 | !(p1@16@01) | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 324 | p1@16@01]
; [eval] (forperm _r_2: Ref [MustInvokeBounded(_r_2)] :: false) && ((forperm _r_2: Ref [MustInvokeUnbounded(_r_2)] :: false) && ((forperm _r_2: Ref [_r_2.MustReleaseBounded] :: false) && (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_2: Ref [MustInvokeBounded(_r_2)] :: false)
(push) ; 20
; [then-branch: 325 | False | live]
; [else-branch: 325 | True | live]
(push) ; 21
; [then-branch: 325 | False]
(assert false)
(pop) ; 21
(push) ; 21
; [else-branch: 325 | True]
; [eval] (forperm _r_2: Ref [MustInvokeUnbounded(_r_2)] :: false)
(push) ; 22
; [then-branch: 326 | False | live]
; [else-branch: 326 | True | live]
(push) ; 23
; [then-branch: 326 | False]
(assert false)
(pop) ; 23
(push) ; 23
; [else-branch: 326 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: false)
(push) ; 24
; [then-branch: 327 | False | live]
; [else-branch: 327 | True | live]
(push) ; 25
; [then-branch: 327 | False]
(assert false)
(pop) ; 25
(push) ; 25
; [else-branch: 327 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: false)
(pop) ; 25
(pop) ; 24
; Joined path conditions
; Joined path conditions
(pop) ; 23
(pop) ; 22
; Joined path conditions
; Joined path conditions
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(pop) ; 19
(pop) ; 18
; Joined path conditions
; [eval] p2 ==> (forperm _r_2: Ref [MustInvokeBounded_0(_r_2)] :: false) && ((forperm _r_2: Ref [MustInvokeUnbounded_0(_r_2)] :: false) && ((forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: false) && (forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: false)))
(push) ; 18
(push) ; 19
(set-option :timeout 10)
(assert (not (not p2@17@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 328 | p2@17@01 | live]
; [else-branch: 328 | !(p2@17@01) | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 328 | p2@17@01]
; [eval] (forperm _r_2: Ref [MustInvokeBounded_0(_r_2)] :: false) && ((forperm _r_2: Ref [MustInvokeUnbounded_0(_r_2)] :: false) && ((forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: false) && (forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: false)))
; [eval] (forperm _r_2: Ref [MustInvokeBounded_0(_r_2)] :: false)
(push) ; 20
; [then-branch: 329 | False | live]
; [else-branch: 329 | True | live]
(push) ; 21
; [then-branch: 329 | False]
(assert false)
(pop) ; 21
(push) ; 21
; [else-branch: 329 | True]
; [eval] (forperm _r_2: Ref [MustInvokeUnbounded_0(_r_2)] :: false)
(push) ; 22
; [then-branch: 330 | False | live]
; [else-branch: 330 | True | live]
(push) ; 23
; [then-branch: 330 | False]
(assert false)
(pop) ; 23
(push) ; 23
; [else-branch: 330 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: false)
(push) ; 24
; [then-branch: 331 | False | live]
; [else-branch: 331 | True | live]
(push) ; 25
; [then-branch: 331 | False]
(assert false)
(pop) ; 25
(push) ; 25
; [else-branch: 331 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: false)
(pop) ; 25
(pop) ; 24
; Joined path conditions
; Joined path conditions
(pop) ; 23
(pop) ; 22
; Joined path conditions
; Joined path conditions
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(pop) ; 19
(pop) ; 18
; Joined path conditions
(pop) ; 17
; [eval] !(p2 && !ret2)
; [eval] p2 && !ret2
(push) ; 17
; [then-branch: 332 | !(p2@17@01) | live]
; [else-branch: 332 | p2@17@01 | live]
(push) ; 18
; [then-branch: 332 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 18
(push) ; 18
; [else-branch: 332 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(push) ; 17
(set-option :timeout 10)
(assert (not p2@17@01))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 333 | !(p2@17@01) | dead]
; [else-branch: 333 | p2@17@01 | live]
(set-option :timeout 0)
(push) ; 17
; [else-branch: 333 | p2@17@01]
(assert p2@17@01)
(pop) ; 17
(pop) ; 16
; [eval] !(p1 && !ret1)
; [eval] p1 && !ret1
(push) ; 16
; [then-branch: 334 | !(p1@16@01) | live]
; [else-branch: 334 | p1@16@01 | live]
(push) ; 17
; [then-branch: 334 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 17
(push) ; 17
; [else-branch: 334 | p1@16@01]
(assert p1@16@01)
; [eval] !ret1
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(push) ; 16
(set-option :timeout 10)
(assert (not p1@16@01))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 335 | !(p1@16@01) | dead]
; [else-branch: 335 | p1@16@01 | live]
(set-option :timeout 0)
(push) ; 16
; [else-branch: 335 | p1@16@01]
(assert p1@16@01)
(pop) ; 16
(pop) ; 15
(pop) ; 14
(push) ; 14
; [else-branch: 309 | p1_1@122@01]
(assert p1_1@122@01)
(pop) ; 14
(pop) ; 13
(pop) ; 12
; [eval] !(p2 && !ret2)
; [eval] p2 && !ret2
(push) ; 12
; [then-branch: 336 | !(p2@17@01) | live]
; [else-branch: 336 | p2@17@01 | live]
(push) ; 13
; [then-branch: 336 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 13
(push) ; 13
; [else-branch: 336 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(set-option :timeout 10)
(assert (not p2@17@01))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 337 | !(p2@17@01) | dead]
; [else-branch: 337 | p2@17@01 | live]
(set-option :timeout 0)
(push) ; 12
; [else-branch: 337 | p2@17@01]
(assert p2@17@01)
(pop) ; 12
(pop) ; 11
(pop) ; 10
; [eval] !(p1 && !ret1)
; [eval] p1 && !ret1
(push) ; 10
; [then-branch: 338 | !(p1@16@01) | live]
; [else-branch: 338 | p1@16@01 | live]
(push) ; 11
; [then-branch: 338 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 11
(push) ; 11
; [else-branch: 338 | p1@16@01]
(assert p1@16@01)
; [eval] !ret1
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(push) ; 10
(set-option :timeout 10)
(assert (not p1@16@01))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 339 | !(p1@16@01) | dead]
; [else-branch: 339 | p1@16@01 | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 339 | p1@16@01]
(assert p1@16@01)
(pop) ; 10
(pop) ; 9
(push) ; 9
; [else-branch: 265 | p1@16@01 && !(bypass1@91@01) && int___gt__(_, int___unbox__(_, n_1@100@01), 0) || p2@17@01 && !(bypass2@92@01) && int___gt__(_, int___unbox__(_, n_1_0@105@01), 0)]
(assert (or
  (and
    p1@16@01
    (and
      (not bypass1@91@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@100@01) 0)))
  (and
    p2@17@01
    (and
      (not bypass2@92@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@105@01) 0)))))
(pop) ; 9
(pop) ; 8
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 31 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 4
; [eval] !(p2 && !ret2)
; [eval] p2 && !ret2
(push) ; 4
; [then-branch: 340 | !(p2@17@01) | live]
; [else-branch: 340 | p2@17@01 | live]
(push) ; 5
; [then-branch: 340 | !(p2@17@01)]
(assert (not p2@17@01))
(pop) ; 5
(push) ; 5
; [else-branch: 340 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(set-option :timeout 10)
(assert (not p2@17@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2@17@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 341 | !(p2@17@01) | live]
; [else-branch: 341 | p2@17@01 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 341 | !(p2@17@01)]
(assert (not p2@17@01))
; [exec]
; bypass1 := !(p1 && !ret1)
; [eval] !(p1 && !ret1)
; [eval] p1 && !ret1
(push) ; 5
; [then-branch: 342 | !(p1@16@01) | live]
; [else-branch: 342 | p1@16@01 | live]
(push) ; 6
; [then-branch: 342 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 6
(push) ; 6
; [else-branch: 342 | p1@16@01]
(assert p1@16@01)
; [eval] !ret1
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(declare-const bypass1@130@01 Bool)
(assert (= bypass1@130@01 (not p1@16@01)))
; [exec]
; bypass2 := !(p2 && !ret2)
; [eval] !(p2 && !ret2)
; [eval] p2 && !ret2
(push) ; 5
; [then-branch: 343 | !(p2@17@01) | live]
; [else-branch: 343 | p2@17@01 | live]
(push) ; 6
; [then-branch: 343 | !(p2@17@01)]
(pop) ; 6
(push) ; 6
; [else-branch: 343 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(declare-const bypass2@131@01 Bool)
(assert (= bypass2@131@01 (not p2@17@01)))
(push) ; 5
(set-option :timeout 10)
(assert (not (not bypass1@130@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 344 | bypass1@130@01 | dead]
; [else-branch: 344 | !(bypass1@130@01) | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 344 | !(bypass1@130@01)]
(assert (not bypass1@130@01))
(pop) ; 5
; [eval] !bypass1
(push) ; 5
(set-option :timeout 10)
(assert (not bypass1@130@01))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not bypass1@130@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 345 | !(bypass1@130@01) | live]
; [else-branch: 345 | bypass1@130@01 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 345 | !(bypass1@130@01)]
(assert (not bypass1@130@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (not bypass2@131@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not bypass2@131@01))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 346 | bypass2@131@01 | live]
; [else-branch: 346 | !(bypass2@131@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 346 | bypass2@131@01]
(assert bypass2@131@01)
; [exec]
; tmp2 := _loop_measures_0
; [exec]
; tmp2_0 := f1_0
; [exec]
; tmp2_1 := f2_0
; [exec]
; tmp2_2 := n_1_0
; [exec]
; tmp2_3 := _loop_check_before_0
; [exec]
; idle1 := false
; [exec]
; idle2 := false
(declare-const p1_0@132@01 Bool)
(declare-const p2_0@133@01 Bool)
(declare-const idle1@134@01 Bool)
(declare-const idle2@135@01 Bool)
(declare-const _loop_measures@136@01 Seq<Measure$>)
(declare-const f1@137@01 $Ref)
(declare-const f2@138@01 $Ref)
(declare-const n_1@139@01 $Ref)
(declare-const _loop_check_before@140@01 Bool)
(declare-const _loop_measures_0@141@01 Seq<Measure$>)
(declare-const f1_0@142@01 $Ref)
(declare-const f2_0@143@01 $Ref)
(declare-const n_1_0@144@01 $Ref)
(declare-const _loop_check_before_0@145@01 Bool)
(push) ; 7
; Loop head block: Check well-definedness of invariant
(declare-const $t@146@01 $Snap)
(assert (= $t@146@01 ($Snap.combine ($Snap.first $t@146@01) ($Snap.second $t@146@01))))
(assert (= ($Snap.first $t@146@01) $Snap.unit))
; [eval] p1 && !bypass1 ==> (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _residue_157) && ((forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _residue_157) && _residue_156 <= _residue_157)
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 347 | !(p1@16@01) | live]
; [else-branch: 347 | p1@16@01 | live]
(push) ; 9
; [then-branch: 347 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 347 | p1@16@01]
(assert p1@16@01)
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@130@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@130@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 348 | p1@16@01 && !(bypass1@130@01) | live]
; [else-branch: 348 | !(p1@16@01 && !(bypass1@130@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 348 | p1@16@01 && !(bypass1@130@01)]
(assert (and p1@16@01 (not bypass1@130@01)))
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _residue_157) && ((forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _residue_157) && _residue_156 <= _residue_157)
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _residue_157)
(push) ; 10
; [then-branch: 349 | False | live]
; [else-branch: 349 | True | live]
(push) ; 11
; [then-branch: 349 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 349 | True]
; [eval] (forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _residue_157)
(push) ; 12
; [then-branch: 350 | False | live]
; [else-branch: 350 | True | live]
(push) ; 13
; [then-branch: 350 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 350 | True]
; [eval] _residue_156 <= _residue_157
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
(assert (and p1@16@01 (not bypass1@130@01)))
(assert (=>
  (and p1@16@01 (not bypass1@130@01))
  (<= _residue_156@22@01 _residue_157@54@01)))
(assert (=
  ($Snap.second $t@146@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@146@01))
    ($Snap.second ($Snap.second $t@146@01)))))
(assert (= ($Snap.first ($Snap.second $t@146@01)) $Snap.unit))
; [eval] p2 && !bypass2 ==> (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _residue_157_0) && ((forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _residue_157_0) && _residue_156_0 <= _residue_157_0)
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 351 | !(p2@17@01) | live]
; [else-branch: 351 | p2@17@01 | live]
(push) ; 9
; [then-branch: 351 | !(p2@17@01)]
(pop) ; 9
(push) ; 9
; [else-branch: 351 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p2@17@01 (not bypass2@131@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 352 | p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 352 | !(p2@17@01 && !(bypass2@131@01)) | live]
(set-option :timeout 0)
(push) ; 9
; [else-branch: 352 | !(p2@17@01 && !(bypass2@131@01))]
(assert (not (and p2@17@01 (not bypass2@131@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (not (and p2@17@01 (not bypass2@131@01))))
(assert (=
  ($Snap.second ($Snap.second $t@146@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@146@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@146@01))) $Snap.unit))
; [eval] p1 && !bypass1 ==> issubtype(typeof(f1), int())
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 353 | !(p1@16@01) | live]
; [else-branch: 353 | p1@16@01 | live]
(push) ; 9
; [then-branch: 353 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 353 | p1@16@01]
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@130@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@130@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 354 | p1@16@01 && !(bypass1@130@01) | live]
; [else-branch: 354 | !(p1@16@01 && !(bypass1@130@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 354 | p1@16@01 && !(bypass1@130@01)]
(assert (and p1@16@01 (not bypass1@130@01)))
; [eval] issubtype(typeof(f1), int())
; [eval] typeof(f1)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p1@16@01 (not bypass1@130@01)))
(assert (=>
  (and p1@16@01 (not bypass1@130@01))
  (issubtype<Bool> (typeof<PyType> f1@137@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@146@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@146@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@146@01))))
  $Snap.unit))
; [eval] p2 && !bypass2 ==> issubtype(typeof(f1_0), int())
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 355 | !(p2@17@01) | live]
; [else-branch: 355 | p2@17@01 | live]
(push) ; 9
; [then-branch: 355 | !(p2@17@01)]
(pop) ; 9
(push) ; 9
; [else-branch: 355 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
; [then-branch: 356 | p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 356 | !(p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 9
; [else-branch: 356 | !(p2@17@01 && !(bypass2@131@01))]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))
  $Snap.unit))
; [eval] p1 && !bypass1 ==> issubtype(typeof(f2), int())
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 357 | !(p1@16@01) | live]
; [else-branch: 357 | p1@16@01 | live]
(push) ; 9
; [then-branch: 357 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 357 | p1@16@01]
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@130@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@130@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 358 | p1@16@01 && !(bypass1@130@01) | live]
; [else-branch: 358 | !(p1@16@01 && !(bypass1@130@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 358 | p1@16@01 && !(bypass1@130@01)]
(assert (and p1@16@01 (not bypass1@130@01)))
; [eval] issubtype(typeof(f2), int())
; [eval] typeof(f2)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p1@16@01 (not bypass1@130@01)))
(assert (=>
  (and p1@16@01 (not bypass1@130@01))
  (issubtype<Bool> (typeof<PyType> f2@138@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))
  $Snap.unit))
; [eval] p2 && !bypass2 ==> issubtype(typeof(f2_0), int())
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 359 | !(p2@17@01) | live]
; [else-branch: 359 | p2@17@01 | live]
(push) ; 9
; [then-branch: 359 | !(p2@17@01)]
(pop) ; 9
(push) ; 9
; [else-branch: 359 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
; [then-branch: 360 | p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 360 | !(p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 9
; [else-branch: 360 | !(p2@17@01 && !(bypass2@131@01))]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))
  $Snap.unit))
; [eval] p1 && !bypass1 ==> issubtype(typeof(n_1), int())
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 361 | !(p1@16@01) | live]
; [else-branch: 361 | p1@16@01 | live]
(push) ; 9
; [then-branch: 361 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 361 | p1@16@01]
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@130@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@130@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 362 | p1@16@01 && !(bypass1@130@01) | live]
; [else-branch: 362 | !(p1@16@01 && !(bypass1@130@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 362 | p1@16@01 && !(bypass1@130@01)]
(assert (and p1@16@01 (not bypass1@130@01)))
; [eval] issubtype(typeof(n_1), int())
; [eval] typeof(n_1)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p1@16@01 (not bypass1@130@01)))
(assert (=>
  (and p1@16@01 (not bypass1@130@01))
  (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))
  $Snap.unit))
; [eval] p2 && !bypass2 ==> issubtype(typeof(n_1_0), int())
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 363 | !(p2@17@01) | live]
; [else-branch: 363 | p2@17@01 | live]
(push) ; 9
; [then-branch: 363 | !(p2@17@01)]
(pop) ; 9
(push) ; 9
; [else-branch: 363 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
; [then-branch: 364 | p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 364 | !(p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 9
; [else-branch: 364 | !(p2@17@01 && !(bypass2@131@01))]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))
  $Snap.unit))
; [eval] p1 && (!bypass1 && (p2 && !bypass2)) ==> n_1 == n_1_0
; [eval] p1 && (!bypass1 && (p2 && !bypass2))
(push) ; 8
; [then-branch: 365 | !(p1@16@01) | live]
; [else-branch: 365 | p1@16@01 | live]
(push) ; 9
; [then-branch: 365 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 365 | p1@16@01]
; [eval] !bypass1
(push) ; 10
; [then-branch: 366 | bypass1@130@01 | live]
; [else-branch: 366 | !(bypass1@130@01) | live]
(push) ; 11
; [then-branch: 366 | bypass1@130@01]
(assert bypass1@130@01)
(pop) ; 11
(push) ; 11
; [else-branch: 366 | !(bypass1@130@01)]
(push) ; 12
; [then-branch: 367 | !(p2@17@01) | live]
; [else-branch: 367 | p2@17@01 | live]
(push) ; 13
; [then-branch: 367 | !(p2@17@01)]
(pop) ; 13
(push) ; 13
; [else-branch: 367 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1@130@01) bypass1@130@01))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=> p1@16@01 (or (not bypass1@130@01) bypass1@130@01)))
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not
  (and p1@16@01 (and (not bypass1@130@01) (and p2@17@01 (not bypass2@131@01)))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 368 | p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 368 | !(p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01)) | live]
(set-option :timeout 0)
(push) ; 9
; [else-branch: 368 | !(p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01))]
(assert (not
  (and p1@16@01 (and (not bypass1@130@01) (and p2@17@01 (not bypass2@131@01))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (not
  (and p1@16@01 (and (not bypass1@130@01) (and p2@17@01 (not bypass2@131@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))
  $Snap.unit))
; [eval] p1 && (!bypass1 && (p2 && !bypass2)) ==> _checkDefined(f1, 12646) == f1_0
; [eval] p1 && (!bypass1 && (p2 && !bypass2))
(push) ; 8
; [then-branch: 369 | !(p1@16@01) | live]
; [else-branch: 369 | p1@16@01 | live]
(push) ; 9
; [then-branch: 369 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 369 | p1@16@01]
; [eval] !bypass1
(push) ; 10
; [then-branch: 370 | bypass1@130@01 | live]
; [else-branch: 370 | !(bypass1@130@01) | live]
(push) ; 11
; [then-branch: 370 | bypass1@130@01]
(assert bypass1@130@01)
(pop) ; 11
(push) ; 11
; [else-branch: 370 | !(bypass1@130@01)]
(push) ; 12
; [then-branch: 371 | !(p2@17@01) | live]
; [else-branch: 371 | p2@17@01 | live]
(push) ; 13
; [then-branch: 371 | !(p2@17@01)]
(pop) ; 13
(push) ; 13
; [else-branch: 371 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1@130@01) bypass1@130@01))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
; [then-branch: 372 | p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 372 | !(p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 9
; [else-branch: 372 | !(p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01))]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))
  $Snap.unit))
; [eval] p1 && (!bypass1 && (p2 && !bypass2)) ==> _checkDefined(f2, 12902) == f2_0
; [eval] p1 && (!bypass1 && (p2 && !bypass2))
(push) ; 8
; [then-branch: 373 | !(p1@16@01) | live]
; [else-branch: 373 | p1@16@01 | live]
(push) ; 9
; [then-branch: 373 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 373 | p1@16@01]
; [eval] !bypass1
(push) ; 10
; [then-branch: 374 | bypass1@130@01 | live]
; [else-branch: 374 | !(bypass1@130@01) | live]
(push) ; 11
; [then-branch: 374 | bypass1@130@01]
(assert bypass1@130@01)
(pop) ; 11
(push) ; 11
; [else-branch: 374 | !(bypass1@130@01)]
(push) ; 12
; [then-branch: 375 | !(p2@17@01) | live]
; [else-branch: 375 | p2@17@01 | live]
(push) ; 13
; [then-branch: 375 | !(p2@17@01)]
(pop) ; 13
(push) ; 13
; [else-branch: 375 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1@130@01) bypass1@130@01))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
; [then-branch: 376 | p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 376 | !(p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 9
; [else-branch: 376 | !(p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01))]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))
  $Snap.unit))
; [eval] p1 && !bypass1 ==> true
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 377 | !(p1@16@01) | live]
; [else-branch: 377 | p1@16@01 | live]
(push) ; 9
; [then-branch: 377 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 377 | p1@16@01]
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@130@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@130@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 378 | p1@16@01 && !(bypass1@130@01) | live]
; [else-branch: 378 | !(p1@16@01 && !(bypass1@130@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 378 | p1@16@01 && !(bypass1@130@01)]
(assert (and p1@16@01 (not bypass1@130@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p1@16@01 (not bypass1@130@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))
  $Snap.unit))
; [eval] p2 && !bypass2 ==> true
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 379 | !(p2@17@01) | live]
; [else-branch: 379 | p2@17@01 | live]
(push) ; 9
; [then-branch: 379 | !(p2@17@01)]
(pop) ; 9
(push) ; 9
; [else-branch: 379 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
; [then-branch: 380 | p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 380 | !(p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 9
; [else-branch: 380 | !(p2@17@01 && !(bypass2@131@01))]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))
  $Snap.unit))
; [eval] p1 && !bypass1 ==> true
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 381 | !(p1@16@01) | live]
; [else-branch: 381 | p1@16@01 | live]
(push) ; 9
; [then-branch: 381 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 381 | p1@16@01]
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@130@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@130@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 382 | p1@16@01 && !(bypass1@130@01) | live]
; [else-branch: 382 | !(p1@16@01 && !(bypass1@130@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 382 | p1@16@01 && !(bypass1@130@01)]
(assert (and p1@16@01 (not bypass1@130@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p1@16@01 (not bypass1@130@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))
  $Snap.unit))
; [eval] p2 && !bypass2 ==> true
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 383 | !(p2@17@01) | live]
; [else-branch: 383 | p2@17@01 | live]
(push) ; 9
; [then-branch: 383 | !(p2@17@01)]
(pop) ; 9
(push) ; 9
; [else-branch: 383 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
; [then-branch: 384 | p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 384 | !(p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 9
; [else-branch: 384 | !(p2@17@01 && !(bypass2@131@01))]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))
  $Snap.unit))
; [eval] bypass1 ==> tmp1_2 == n_1
(push) ; 8
; [then-branch: 385 | bypass1@130@01 | dead]
; [else-branch: 385 | !(bypass1@130@01) | live]
(push) ; 9
; [else-branch: 385 | !(bypass1@130@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))
  $Snap.unit))
; [eval] bypass1 ==> tmp1_1 == f2
(push) ; 8
; [then-branch: 386 | bypass1@130@01 | dead]
; [else-branch: 386 | !(bypass1@130@01) | live]
(push) ; 9
; [else-branch: 386 | !(bypass1@130@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))
  $Snap.unit))
; [eval] bypass1 ==> tmp1_0 == f1
(push) ; 8
; [then-branch: 387 | bypass1@130@01 | dead]
; [else-branch: 387 | !(bypass1@130@01) | live]
(push) ; 9
; [else-branch: 387 | !(bypass1@130@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))
  $Snap.unit))
; [eval] bypass1 ==> tmp1_3 == _loop_check_before
(push) ; 8
; [then-branch: 388 | bypass1@130@01 | dead]
; [else-branch: 388 | !(bypass1@130@01) | live]
(push) ; 9
; [else-branch: 388 | !(bypass1@130@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))
  $Snap.unit))
; [eval] bypass1 ==> tmp1 == _loop_measures
(push) ; 8
; [then-branch: 389 | bypass1@130@01 | dead]
; [else-branch: 389 | !(bypass1@130@01) | live]
(push) ; 9
; [else-branch: 389 | !(bypass1@130@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))))
  $Snap.unit))
; [eval] bypass2 ==> tmp2_1 == f2_0
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not bypass2@131@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 390 | bypass2@131@01 | live]
; [else-branch: 390 | !(bypass2@131@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 390 | bypass2@131@01]
; [eval] tmp2_1 == f2_0
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=> bypass2@131@01 (= f2_0@41@01 f2_0@143@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))))
  $Snap.unit))
; [eval] bypass2 ==> tmp2_0 == f1_0
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not bypass2@131@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 391 | bypass2@131@01 | live]
; [else-branch: 391 | !(bypass2@131@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 391 | bypass2@131@01]
; [eval] tmp2_0 == f1_0
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=> bypass2@131@01 (= f1_0@39@01 f1_0@142@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))))))
  $Snap.unit))
; [eval] bypass2 ==> tmp2_2 == n_1_0
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not bypass2@131@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 392 | bypass2@131@01 | live]
; [else-branch: 392 | !(bypass2@131@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 392 | bypass2@131@01]
; [eval] tmp2_2 == n_1_0
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=> bypass2@131@01 (= n_1_0@43@01 n_1_0@144@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))))))
  $Snap.unit))
; [eval] bypass2 ==> tmp2_3 == _loop_check_before_0
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not bypass2@131@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 393 | bypass2@131@01 | live]
; [else-branch: 393 | !(bypass2@131@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 393 | bypass2@131@01]
; [eval] tmp2_3 == _loop_check_before_0
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=> bypass2@131@01 (= _loop_check_before_0@49@01 _loop_check_before_0@145@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))))))
  $Snap.unit))
; [eval] bypass2 ==> tmp2 == _loop_measures_0
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not bypass2@131@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 394 | bypass2@131@01 | live]
; [else-branch: 394 | !(bypass2@131@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 394 | bypass2@131@01]
; [eval] tmp2 == _loop_measures_0
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=> bypass2@131@01 (Seq_equal _loop_measures_0@47@01 _loop_measures_0@141@01)))
(pop) ; 7
(push) ; 7
; Loop head block: Establish invariant
; [eval] p1 && !bypass1 ==> true
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 395 | !(p1@16@01) | live]
; [else-branch: 395 | p1@16@01 | live]
(push) ; 9
; [then-branch: 395 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 395 | p1@16@01]
(assert p1@16@01)
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@130@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@130@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 396 | p1@16@01 && !(bypass1@130@01) | live]
; [else-branch: 396 | !(p1@16@01 && !(bypass1@130@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 396 | p1@16@01 && !(bypass1@130@01)]
(assert (and p1@16@01 (not bypass1@130@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p1@16@01 (not bypass1@130@01)))
; [eval] p2 && !bypass2 ==> true
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 397 | !(p2@17@01) | live]
; [else-branch: 397 | p2@17@01 | live]
(push) ; 9
; [then-branch: 397 | !(p2@17@01)]
(pop) ; 9
(push) ; 9
; [else-branch: 397 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p2@17@01 (not bypass2@131@01)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 398 | p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 398 | !(p2@17@01 && !(bypass2@131@01)) | live]
(set-option :timeout 0)
(push) ; 9
; [else-branch: 398 | !(p2@17@01 && !(bypass2@131@01))]
(assert (not (and p2@17@01 (not bypass2@131@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (not (and p2@17@01 (not bypass2@131@01))))
; [eval] p1 && !bypass1 ==> issubtype(typeof(f1), int())
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 399 | !(p1@16@01) | live]
; [else-branch: 399 | p1@16@01 | live]
(push) ; 9
; [then-branch: 399 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 399 | p1@16@01]
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@130@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@130@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 400 | p1@16@01 && !(bypass1@130@01) | live]
; [else-branch: 400 | !(p1@16@01 && !(bypass1@130@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 400 | p1@16@01 && !(bypass1@130@01)]
(assert (and p1@16@01 (not bypass1@130@01)))
; [eval] issubtype(typeof(f1), int())
; [eval] typeof(f1)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p1@16@01 (not bypass1@130@01)))
(push) ; 8
(assert (not (=>
  (and p1@16@01 (not bypass1@130@01))
  (issubtype<Bool> (typeof<PyType> f1@81@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p1@16@01 (not bypass1@130@01))
  (issubtype<Bool> (typeof<PyType> f1@81@01) (as int<PyType>  PyType))))
; [eval] p2 && !bypass2 ==> issubtype(typeof(f1_0), int())
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 401 | !(p2@17@01) | live]
; [else-branch: 401 | p2@17@01 | live]
(push) ; 9
; [then-branch: 401 | !(p2@17@01)]
(pop) ; 9
(push) ; 9
; [else-branch: 401 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
; [then-branch: 402 | p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 402 | !(p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 9
; [else-branch: 402 | !(p2@17@01 && !(bypass2@131@01))]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] p1 && !bypass1 ==> issubtype(typeof(f2), int())
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 403 | !(p1@16@01) | live]
; [else-branch: 403 | p1@16@01 | live]
(push) ; 9
; [then-branch: 403 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 403 | p1@16@01]
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@130@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@130@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 404 | p1@16@01 && !(bypass1@130@01) | live]
; [else-branch: 404 | !(p1@16@01 && !(bypass1@130@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 404 | p1@16@01 && !(bypass1@130@01)]
(assert (and p1@16@01 (not bypass1@130@01)))
; [eval] issubtype(typeof(f2), int())
; [eval] typeof(f2)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p1@16@01 (not bypass1@130@01)))
(push) ; 8
(assert (not (=>
  (and p1@16@01 (not bypass1@130@01))
  (issubtype<Bool> (typeof<PyType> f2@83@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p1@16@01 (not bypass1@130@01))
  (issubtype<Bool> (typeof<PyType> f2@83@01) (as int<PyType>  PyType))))
; [eval] p2 && !bypass2 ==> issubtype(typeof(f2_0), int())
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 405 | !(p2@17@01) | live]
; [else-branch: 405 | p2@17@01 | live]
(push) ; 9
; [then-branch: 405 | !(p2@17@01)]
(pop) ; 9
(push) ; 9
; [else-branch: 405 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
; [then-branch: 406 | p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 406 | !(p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 9
; [else-branch: 406 | !(p2@17@01 && !(bypass2@131@01))]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] p1 && !bypass1 ==> issubtype(typeof(n_1), int())
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 407 | !(p1@16@01) | live]
; [else-branch: 407 | p1@16@01 | live]
(push) ; 9
; [then-branch: 407 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 407 | p1@16@01]
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@130@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@130@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 408 | p1@16@01 && !(bypass1@130@01) | live]
; [else-branch: 408 | !(p1@16@01 && !(bypass1@130@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 408 | p1@16@01 && !(bypass1@130@01)]
(assert (and p1@16@01 (not bypass1@130@01)))
; [eval] issubtype(typeof(n_1), int())
; [eval] typeof(n_1)
; [eval] int()
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p1@16@01 (not bypass1@130@01)))
(push) ; 8
(assert (not (=>
  (and p1@16@01 (not bypass1@130@01))
  (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p1@16@01 (not bypass1@130@01))
  (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType))))
; [eval] p2 && !bypass2 ==> issubtype(typeof(n_1_0), int())
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 409 | !(p2@17@01) | live]
; [else-branch: 409 | p2@17@01 | live]
(push) ; 9
; [then-branch: 409 | !(p2@17@01)]
(pop) ; 9
(push) ; 9
; [else-branch: 409 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
; [then-branch: 410 | p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 410 | !(p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 9
; [else-branch: 410 | !(p2@17@01 && !(bypass2@131@01))]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] p1 && (!bypass1 && (p2 && !bypass2)) ==> n_1 == n_1_0
; [eval] p1 && (!bypass1 && (p2 && !bypass2))
(push) ; 8
; [then-branch: 411 | !(p1@16@01) | live]
; [else-branch: 411 | p1@16@01 | live]
(push) ; 9
; [then-branch: 411 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 411 | p1@16@01]
; [eval] !bypass1
(push) ; 10
; [then-branch: 412 | bypass1@130@01 | live]
; [else-branch: 412 | !(bypass1@130@01) | live]
(push) ; 11
; [then-branch: 412 | bypass1@130@01]
(assert bypass1@130@01)
(pop) ; 11
(push) ; 11
; [else-branch: 412 | !(bypass1@130@01)]
(push) ; 12
; [then-branch: 413 | !(p2@17@01) | live]
; [else-branch: 413 | p2@17@01 | live]
(push) ; 13
; [then-branch: 413 | !(p2@17@01)]
(pop) ; 13
(push) ; 13
; [else-branch: 413 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1@130@01) bypass1@130@01))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=> p1@16@01 (or (not bypass1@130@01) bypass1@130@01)))
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not
  (and p1@16@01 (and (not bypass1@130@01) (and p2@17@01 (not bypass2@131@01)))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 414 | p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 414 | !(p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01)) | live]
(set-option :timeout 0)
(push) ; 9
; [else-branch: 414 | !(p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01))]
(assert (not
  (and p1@16@01 (and (not bypass1@130@01) (and p2@17@01 (not bypass2@131@01))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (not
  (and p1@16@01 (and (not bypass1@130@01) (and p2@17@01 (not bypass2@131@01))))))
; [eval] p1 && (!bypass1 && (p2 && !bypass2)) ==> _checkDefined(f1, 12646) == f1_0
; [eval] p1 && (!bypass1 && (p2 && !bypass2))
(push) ; 8
; [then-branch: 415 | !(p1@16@01) | live]
; [else-branch: 415 | p1@16@01 | live]
(push) ; 9
; [then-branch: 415 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 415 | p1@16@01]
; [eval] !bypass1
(push) ; 10
; [then-branch: 416 | bypass1@130@01 | live]
; [else-branch: 416 | !(bypass1@130@01) | live]
(push) ; 11
; [then-branch: 416 | bypass1@130@01]
(assert bypass1@130@01)
(pop) ; 11
(push) ; 11
; [else-branch: 416 | !(bypass1@130@01)]
(push) ; 12
; [then-branch: 417 | !(p2@17@01) | live]
; [else-branch: 417 | p2@17@01 | live]
(push) ; 13
; [then-branch: 417 | !(p2@17@01)]
(pop) ; 13
(push) ; 13
; [else-branch: 417 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1@130@01) bypass1@130@01))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
; [then-branch: 418 | p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 418 | !(p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 9
; [else-branch: 418 | !(p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01))]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] p1 && (!bypass1 && (p2 && !bypass2)) ==> _checkDefined(f2, 12902) == f2_0
; [eval] p1 && (!bypass1 && (p2 && !bypass2))
(push) ; 8
; [then-branch: 419 | !(p1@16@01) | live]
; [else-branch: 419 | p1@16@01 | live]
(push) ; 9
; [then-branch: 419 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 419 | p1@16@01]
; [eval] !bypass1
(push) ; 10
; [then-branch: 420 | bypass1@130@01 | live]
; [else-branch: 420 | !(bypass1@130@01) | live]
(push) ; 11
; [then-branch: 420 | bypass1@130@01]
(assert bypass1@130@01)
(pop) ; 11
(push) ; 11
; [else-branch: 420 | !(bypass1@130@01)]
(push) ; 12
; [then-branch: 421 | !(p2@17@01) | live]
; [else-branch: 421 | p2@17@01 | live]
(push) ; 13
; [then-branch: 421 | !(p2@17@01)]
(pop) ; 13
(push) ; 13
; [else-branch: 421 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1@130@01) bypass1@130@01))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
; [then-branch: 422 | p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 422 | !(p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 9
; [else-branch: 422 | !(p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01))]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] p1 && !bypass1 ==> !idle1 ==> _loop_check_before ==> _loop_termination_flag || (!int___gt__(int___unbox__(n_1), 0) || perm(MustTerminate(_cthread_156)) == none && ((forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))))
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 423 | !(p1@16@01) | live]
; [else-branch: 423 | p1@16@01 | live]
(push) ; 9
; [then-branch: 423 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 423 | p1@16@01]
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@130@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@130@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 424 | p1@16@01 && !(bypass1@130@01) | live]
; [else-branch: 424 | !(p1@16@01 && !(bypass1@130@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 424 | p1@16@01 && !(bypass1@130@01)]
(assert (and p1@16@01 (not bypass1@130@01)))
; [eval] !idle1 ==> _loop_check_before ==> _loop_termination_flag || (!int___gt__(int___unbox__(n_1), 0) || perm(MustTerminate(_cthread_156)) == none && ((forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))))
; [eval] !idle1
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 425 | True | live]
; [else-branch: 425 | False | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 425 | True]
; [eval] _loop_check_before ==> _loop_termination_flag || (!int___gt__(int___unbox__(n_1), 0) || perm(MustTerminate(_cthread_156)) == none && ((forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))))
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 426 | True | live]
; [else-branch: 426 | False | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 426 | True]
; [eval] _loop_termination_flag || (!int___gt__(int___unbox__(n_1), 0) || perm(MustTerminate(_cthread_156)) == none && ((forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))))
(push) ; 14
; [then-branch: 427 | False | live]
; [else-branch: 427 | True | live]
(push) ; 15
; [then-branch: 427 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 427 | True]
; [eval] !int___gt__(int___unbox__(n_1), 0)
; [eval] int___gt__(int___unbox__(n_1), 0)
; [eval] int___unbox__(n_1)
(push) ; 16
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 17
(assert (not (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_0@24@01))
(pop) ; 16
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_0@24@01)))
(push) ; 16
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0))
(pop) ; 16
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0))
(push) ; 16
; [then-branch: 428 | !(int___gt__(_, int___unbox__(_, n_0@24@01), 0)) | live]
; [else-branch: 428 | int___gt__(_, int___unbox__(_, n_0@24@01), 0) | live]
(push) ; 17
; [then-branch: 428 | !(int___gt__(_, int___unbox__(_, n_0@24@01), 0))]
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)))
(pop) ; 17
(push) ; 17
; [else-branch: 428 | int___gt__(_, int___unbox__(_, n_0@24@01), 0)]
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0))
; [eval] perm(MustTerminate(_cthread_156)) == none && ((forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_156)) == none
; [eval] perm(MustTerminate(_cthread_156))
(push) ; 18
; [then-branch: 429 | False | live]
; [else-branch: 429 | True | live]
(push) ; 19
; [then-branch: 429 | False]
(assert false)
(pop) ; 19
(push) ; 19
; [else-branch: 429 | True]
; [eval] (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false)
(push) ; 20
; [then-branch: 430 | False | live]
; [else-branch: 430 | True | live]
(push) ; 21
; [then-branch: 430 | False]
(assert false)
(pop) ; 21
(push) ; 21
; [else-branch: 430 | True]
; [eval] (forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false)
(push) ; 22
; [then-branch: 431 | False | live]
; [else-branch: 431 | True | live]
(push) ; 23
; [then-branch: 431 | False]
(assert false)
(pop) ; 23
(push) ; 23
; [else-branch: 431 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false)
(push) ; 24
; [then-branch: 432 | False | live]
; [else-branch: 432 | True | live]
(push) ; 25
; [then-branch: 432 | False]
(assert false)
(pop) ; 25
(push) ; 25
; [else-branch: 432 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)
(pop) ; 25
(pop) ; 24
; Joined path conditions
; Joined path conditions
(pop) ; 23
(pop) ; 22
; Joined path conditions
; Joined path conditions
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (or
  (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)
  (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0))))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_0@24@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)
  (or
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)
    (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_0@24@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)
  (or
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)
    (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_0@24@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)
  (or
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)
    (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (and p1@16@01 (not bypass1@130@01))
  (and
    p1@16@01
    (not bypass1@130@01)
    (issubtype<Bool> (typeof<PyType> n_0@24@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_0@24@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)
    (or
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0)
      (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_0@24@01) 0))))))
(assert (and p1@16@01 (not bypass1@130@01)))
; [eval] p2 && !bypass2 ==> !idle2 ==> _loop_check_before_0 ==> _loop_termination_flag_0 || (!int___gt__(int___unbox__(n_1_0), 0) || perm(MustTerminate_0(_cthread_156_0)) == none && ((forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))))
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 433 | !(p2@17@01) | live]
; [else-branch: 433 | p2@17@01 | live]
(push) ; 9
; [then-branch: 433 | !(p2@17@01)]
(pop) ; 9
(push) ; 9
; [else-branch: 433 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
; [then-branch: 434 | p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 434 | !(p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 9
; [else-branch: 434 | !(p2@17@01 && !(bypass2@131@01))]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] p1 && !bypass1 ==> !idle1 ==> !_loop_check_before ==> (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))
; [eval] p1 && !bypass1
(push) ; 8
; [then-branch: 435 | !(p1@16@01) | live]
; [else-branch: 435 | p1@16@01 | live]
(push) ; 9
; [then-branch: 435 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 9
(push) ; 9
; [else-branch: 435 | p1@16@01]
; [eval] !bypass1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@130@01)))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@130@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 436 | p1@16@01 && !(bypass1@130@01) | live]
; [else-branch: 436 | !(p1@16@01 && !(bypass1@130@01)) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 436 | p1@16@01 && !(bypass1@130@01)]
(assert (and p1@16@01 (not bypass1@130@01)))
; [eval] !idle1 ==> !_loop_check_before ==> (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))
; [eval] !idle1
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 437 | True | live]
; [else-branch: 437 | False | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 437 | True]
; [eval] !_loop_check_before ==> (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before
(push) ; 12
; [then-branch: 438 | False | dead]
; [else-branch: 438 | True | live]
(push) ; 13
; [else-branch: 438 | True]
(pop) ; 13
(pop) ; 12
; Joined path conditions
(pop) ; 11
(pop) ; 10
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and p1@16@01 (not bypass1@130@01)))
; [eval] p2 && !bypass2 ==> !idle2 ==> !_loop_check_before_0 ==> (forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))
; [eval] p2 && !bypass2
(push) ; 8
; [then-branch: 439 | !(p2@17@01) | live]
; [else-branch: 439 | p2@17@01 | live]
(push) ; 9
; [then-branch: 439 | !(p2@17@01)]
(pop) ; 9
(push) ; 9
; [else-branch: 439 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
; [then-branch: 440 | p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 440 | !(p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 9
; [else-branch: 440 | !(p2@17@01 && !(bypass2@131@01))]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] bypass1 ==> tmp1_2 == n_1
(push) ; 8
; [then-branch: 441 | bypass1@130@01 | dead]
; [else-branch: 441 | !(bypass1@130@01) | live]
(push) ; 9
; [else-branch: 441 | !(bypass1@130@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] bypass1 ==> tmp1_1 == f2
(push) ; 8
; [then-branch: 442 | bypass1@130@01 | dead]
; [else-branch: 442 | !(bypass1@130@01) | live]
(push) ; 9
; [else-branch: 442 | !(bypass1@130@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] bypass1 ==> tmp1_0 == f1
(push) ; 8
; [then-branch: 443 | bypass1@130@01 | dead]
; [else-branch: 443 | !(bypass1@130@01) | live]
(push) ; 9
; [else-branch: 443 | !(bypass1@130@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] bypass1 ==> tmp1_3 == _loop_check_before
(push) ; 8
; [then-branch: 444 | bypass1@130@01 | dead]
; [else-branch: 444 | !(bypass1@130@01) | live]
(push) ; 9
; [else-branch: 444 | !(bypass1@130@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] bypass1 ==> tmp1 == _loop_measures
(push) ; 8
; [then-branch: 445 | bypass1@130@01 | dead]
; [else-branch: 445 | !(bypass1@130@01) | live]
(push) ; 9
; [else-branch: 445 | !(bypass1@130@01)]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] bypass2 ==> tmp2_1 == f2_0
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not bypass2@131@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 446 | bypass2@131@01 | live]
; [else-branch: 446 | !(bypass2@131@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 446 | bypass2@131@01]
; [eval] tmp2_1 == f2_0
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] bypass2 ==> tmp2_0 == f1_0
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not bypass2@131@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 447 | bypass2@131@01 | live]
; [else-branch: 447 | !(bypass2@131@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 447 | bypass2@131@01]
; [eval] tmp2_0 == f1_0
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] bypass2 ==> tmp2_2 == n_1_0
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not bypass2@131@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 448 | bypass2@131@01 | live]
; [else-branch: 448 | !(bypass2@131@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 448 | bypass2@131@01]
; [eval] tmp2_2 == n_1_0
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] bypass2 ==> tmp2_3 == _loop_check_before_0
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not bypass2@131@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 449 | bypass2@131@01 | live]
; [else-branch: 449 | !(bypass2@131@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 449 | bypass2@131@01]
; [eval] tmp2_3 == _loop_check_before_0
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] bypass2 ==> tmp2 == _loop_measures_0
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not bypass2@131@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 450 | bypass2@131@01 | live]
; [else-branch: 450 | !(bypass2@131@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 450 | bypass2@131@01]
; [eval] tmp2 == _loop_measures_0
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 8
(assert (= $t@146@01 ($Snap.combine ($Snap.first $t@146@01) ($Snap.second $t@146@01))))
(assert (= ($Snap.first $t@146@01) $Snap.unit))
(assert (=>
  (and p1@16@01 (not bypass1@130@01))
  (<= _residue_156@22@01 _residue_157@54@01)))
(assert (=
  ($Snap.second $t@146@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@146@01))
    ($Snap.second ($Snap.second $t@146@01)))))
(assert (= ($Snap.first ($Snap.second $t@146@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@146@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@146@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@146@01))) $Snap.unit))
(assert (=>
  (and p1@16@01 (not bypass1@130@01))
  (issubtype<Bool> (typeof<PyType> f1@137@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@146@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@146@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@146@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))
  $Snap.unit))
(assert (=>
  (and p1@16@01 (not bypass1@130@01))
  (issubtype<Bool> (typeof<PyType> f2@138@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))
  $Snap.unit))
(assert (=>
  (and p1@16@01 (not bypass1@130@01))
  (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))))
  $Snap.unit))
(assert (=> bypass2@131@01 (= f2_0@41@01 f2_0@143@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))))
  $Snap.unit))
(assert (=> bypass2@131@01 (= f1_0@39@01 f1_0@142@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))))))
  $Snap.unit))
(assert (=> bypass2@131@01 (= n_1_0@43@01 n_1_0@144@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01)))))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))))))
  $Snap.unit))
(assert (=> bypass2@131@01 (= _loop_check_before_0@49@01 _loop_check_before_0@145@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))))))))))))))))))))
  $Snap.unit))
(assert (=> bypass2@131@01 (Seq_equal _loop_measures_0@47@01 _loop_measures_0@141@01)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 9
; [eval] p1 && (!ret1 && (!bypass1 && int___gt__(int___unbox__(n_1), 0))) || p2 && (!ret2 && (!bypass2 && int___gt__(int___unbox__(n_1_0), 0)))
; [eval] p1 && (!ret1 && (!bypass1 && int___gt__(int___unbox__(n_1), 0)))
(push) ; 10
; [then-branch: 451 | !(p1@16@01) | live]
; [else-branch: 451 | p1@16@01 | live]
(push) ; 11
; [then-branch: 451 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 11
(push) ; 11
; [else-branch: 451 | p1@16@01]
; [eval] !ret1
(push) ; 12
; [then-branch: 452 | False | live]
; [else-branch: 452 | True | live]
(push) ; 13
; [then-branch: 452 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 452 | True]
; [eval] !bypass1
(push) ; 14
; [then-branch: 453 | bypass1@130@01 | live]
; [else-branch: 453 | !(bypass1@130@01) | live]
(push) ; 15
; [then-branch: 453 | bypass1@130@01]
(assert bypass1@130@01)
(pop) ; 15
(push) ; 15
; [else-branch: 453 | !(bypass1@130@01)]
; [eval] int___gt__(int___unbox__(n_1), 0)
; [eval] int___unbox__(n_1)
(push) ; 16
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 17
(assert (not (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1@139@01))
(pop) ; 16
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1@139@01)))
(push) ; 16
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))
(pop) ; 16
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (=>
  (not bypass1@130@01)
  (and
    (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_1@139@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
(assert (or (not bypass1@130@01) bypass1@130@01))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (and
  (=>
    (not bypass1@130@01)
    (and
      (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))
      (int___unbox__%precondition $Snap.unit n_1@139@01)
      (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))
  (or (not bypass1@130@01) bypass1@130@01)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  p1@16@01
  (and
    (=>
      (not bypass1@130@01)
      (and
        (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))
        (int___unbox__%precondition $Snap.unit n_1@139@01)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))
    (or (not bypass1@130@01) bypass1@130@01))))
(push) ; 10
; [then-branch: 454 | p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0) | live]
; [else-branch: 454 | !(p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0)) | live]
(push) ; 11
; [then-branch: 454 | p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0)]
(assert (and
  p1@16@01
  (and
    (not bypass1@130@01)
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
(pop) ; 11
(push) ; 11
; [else-branch: 454 | !(p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0))]
(assert (not
  (and
    p1@16@01
    (and
      (not bypass1@130@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))))
; [eval] p2 && (!ret2 && (!bypass2 && int___gt__(int___unbox__(n_1_0), 0)))
(push) ; 12
; [then-branch: 455 | !(p2@17@01) | live]
; [else-branch: 455 | p2@17@01 | live]
(push) ; 13
; [then-branch: 455 | !(p2@17@01)]
(pop) ; 13
(push) ; 13
; [else-branch: 455 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(push) ; 14
; [then-branch: 456 | False | live]
; [else-branch: 456 | True | live]
(push) ; 15
; [then-branch: 456 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 456 | True]
; [eval] !bypass2
(push) ; 16
; [then-branch: 457 | bypass2@131@01 | live]
; [else-branch: 457 | !(bypass2@131@01) | live]
(push) ; 17
; [then-branch: 457 | bypass2@131@01]
(pop) ; 17
(push) ; 17
; [else-branch: 457 | !(bypass2@131@01)]
(assert (not bypass2@131@01))
; [eval] int___gt__(int___unbox__(n_1_0), 0)
; [eval] int___unbox__(n_1_0)
(push) ; 18
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 19
(assert (not (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1_0@144@01))
(pop) ; 18
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1_0@144@01)))
(push) ; 18
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))
(pop) ; 18
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (=>
  (not bypass2@131@01)
  (and
    (not bypass2@131@01)
    (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_1_0@144@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))))
(assert (or (not bypass2@131@01) bypass2@131@01))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (and
  (=>
    (not bypass2@131@01)
    (and
      (not bypass2@131@01)
      (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
      (int___unbox__%precondition $Snap.unit n_1_0@144@01)
      (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0)))
  (or (not bypass2@131@01) bypass2@131@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  p2@17@01
  (and
    p2@17@01
    (=>
      (not bypass2@131@01)
      (and
        (not bypass2@131@01)
        (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
        (int___unbox__%precondition $Snap.unit n_1_0@144@01)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0)))
    (or (not bypass2@131@01) bypass2@131@01))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (=>
  (and
    p1@16@01
    (and
      (not bypass1@130@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))
  (and
    p1@16@01
    (not bypass1@130@01)
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1@16@01
      (and
        (not bypass1@130@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
  (and
    (not
      (and
        p1@16@01
        (and
          (not bypass1@130@01)
          (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
    (=>
      p2@17@01
      (and
        p2@17@01
        (=>
          (not bypass2@131@01)
          (and
            (not bypass2@131@01)
            (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
            (int___unbox__%precondition $Snap.unit n_1_0@144@01)
            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0)))
        (or (not bypass2@131@01) bypass2@131@01))))))
(assert (or
  (not
    (and
      p1@16@01
      (and
        (not bypass1@130@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
  (and
    p1@16@01
    (and
      (not bypass1@130@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))))
(pop) ; 9
(push) ; 9
; [eval] !(p1 && (!ret1 && (!bypass1 && int___gt__(int___unbox__(n_1), 0))) || p2 && (!ret2 && (!bypass2 && int___gt__(int___unbox__(n_1_0), 0))))
; [eval] p1 && (!ret1 && (!bypass1 && int___gt__(int___unbox__(n_1), 0))) || p2 && (!ret2 && (!bypass2 && int___gt__(int___unbox__(n_1_0), 0)))
; [eval] p1 && (!ret1 && (!bypass1 && int___gt__(int___unbox__(n_1), 0)))
(push) ; 10
; [then-branch: 458 | !(p1@16@01) | live]
; [else-branch: 458 | p1@16@01 | live]
(push) ; 11
; [then-branch: 458 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 11
(push) ; 11
; [else-branch: 458 | p1@16@01]
(assert p1@16@01)
; [eval] !ret1
(push) ; 12
; [then-branch: 459 | False | live]
; [else-branch: 459 | True | live]
(push) ; 13
; [then-branch: 459 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 459 | True]
; [eval] !bypass1
(push) ; 14
; [then-branch: 460 | bypass1@130@01 | live]
; [else-branch: 460 | !(bypass1@130@01) | live]
(push) ; 15
; [then-branch: 460 | bypass1@130@01]
(assert bypass1@130@01)
(pop) ; 15
(push) ; 15
; [else-branch: 460 | !(bypass1@130@01)]
(assert (not bypass1@130@01))
; [eval] int___gt__(int___unbox__(n_1), 0)
; [eval] int___unbox__(n_1)
(push) ; 16
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 17
(assert (not (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1@139@01))
(pop) ; 16
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1@139@01)))
(push) ; 16
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))
(pop) ; 16
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (=>
  (not bypass1@130@01)
  (and
    (not bypass1@130@01)
    (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_1@139@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
(assert (or (not bypass1@130@01) bypass1@130@01))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (and
  (=>
    (not bypass1@130@01)
    (and
      (not bypass1@130@01)
      (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))
      (int___unbox__%precondition $Snap.unit n_1@139@01)
      (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))
  (or (not bypass1@130@01) bypass1@130@01)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  p1@16@01
  (and
    p1@16@01
    (=>
      (not bypass1@130@01)
      (and
        (not bypass1@130@01)
        (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))
        (int___unbox__%precondition $Snap.unit n_1@139@01)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))
    (or (not bypass1@130@01) bypass1@130@01))))
(push) ; 10
; [then-branch: 461 | p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0) | live]
; [else-branch: 461 | !(p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0)) | live]
(push) ; 11
; [then-branch: 461 | p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0)]
(assert (and
  p1@16@01
  (and
    (not bypass1@130@01)
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
(pop) ; 11
(push) ; 11
; [else-branch: 461 | !(p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0))]
(assert (not
  (and
    p1@16@01
    (and
      (not bypass1@130@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))))
; [eval] p2 && (!ret2 && (!bypass2 && int___gt__(int___unbox__(n_1_0), 0)))
(push) ; 12
; [then-branch: 462 | !(p2@17@01) | live]
; [else-branch: 462 | p2@17@01 | live]
(push) ; 13
; [then-branch: 462 | !(p2@17@01)]
(pop) ; 13
(push) ; 13
; [else-branch: 462 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(push) ; 14
; [then-branch: 463 | False | live]
; [else-branch: 463 | True | live]
(push) ; 15
; [then-branch: 463 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 463 | True]
; [eval] !bypass2
(push) ; 16
; [then-branch: 464 | bypass2@131@01 | live]
; [else-branch: 464 | !(bypass2@131@01) | live]
(push) ; 17
; [then-branch: 464 | bypass2@131@01]
(pop) ; 17
(push) ; 17
; [else-branch: 464 | !(bypass2@131@01)]
(assert (not bypass2@131@01))
; [eval] int___gt__(int___unbox__(n_1_0), 0)
; [eval] int___unbox__(n_1_0)
(push) ; 18
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 19
(assert (not (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1_0@144@01))
(pop) ; 18
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1_0@144@01)))
(push) ; 18
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))
(pop) ; 18
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (=>
  (not bypass2@131@01)
  (and
    (not bypass2@131@01)
    (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_1_0@144@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))))
(assert (or (not bypass2@131@01) bypass2@131@01))
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (and
  (=>
    (not bypass2@131@01)
    (and
      (not bypass2@131@01)
      (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
      (int___unbox__%precondition $Snap.unit n_1_0@144@01)
      (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0)))
  (or (not bypass2@131@01) bypass2@131@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  p2@17@01
  (and
    p2@17@01
    (=>
      (not bypass2@131@01)
      (and
        (not bypass2@131@01)
        (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
        (int___unbox__%precondition $Snap.unit n_1_0@144@01)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0)))
    (or (not bypass2@131@01) bypass2@131@01))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (=>
  (and
    p1@16@01
    (and
      (not bypass1@130@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))
  (and
    p1@16@01
    (not bypass1@130@01)
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1@16@01
      (and
        (not bypass1@130@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
  (and
    (not
      (and
        p1@16@01
        (and
          (not bypass1@130@01)
          (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
    (=>
      p2@17@01
      (and
        p2@17@01
        (=>
          (not bypass2@131@01)
          (and
            (not bypass2@131@01)
            (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
            (int___unbox__%precondition $Snap.unit n_1_0@144@01)
            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0)))
        (or (not bypass2@131@01) bypass2@131@01))))))
(assert (or
  (not
    (and
      p1@16@01
      (and
        (not bypass1@130@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
  (and
    p1@16@01
    (and
      (not bypass1@130@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))))
(pop) ; 9
; Loop head block: Follow loop-internal edges
; [eval] p1 && (!ret1 && (!bypass1 && int___gt__(int___unbox__(n_1), 0))) || p2 && (!ret2 && (!bypass2 && int___gt__(int___unbox__(n_1_0), 0)))
; [eval] p1 && (!ret1 && (!bypass1 && int___gt__(int___unbox__(n_1), 0)))
(push) ; 9
; [then-branch: 465 | !(p1@16@01) | live]
; [else-branch: 465 | p1@16@01 | live]
(push) ; 10
; [then-branch: 465 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 10
(push) ; 10
; [else-branch: 465 | p1@16@01]
(assert p1@16@01)
; [eval] !ret1
(push) ; 11
; [then-branch: 466 | False | live]
; [else-branch: 466 | True | live]
(push) ; 12
; [then-branch: 466 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 466 | True]
; [eval] !bypass1
(push) ; 13
; [then-branch: 467 | bypass1@130@01 | live]
; [else-branch: 467 | !(bypass1@130@01) | live]
(push) ; 14
; [then-branch: 467 | bypass1@130@01]
(assert bypass1@130@01)
(pop) ; 14
(push) ; 14
; [else-branch: 467 | !(bypass1@130@01)]
(assert (not bypass1@130@01))
; [eval] int___gt__(int___unbox__(n_1), 0)
; [eval] int___unbox__(n_1)
(push) ; 15
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 16
(assert (not (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1@139@01))
(pop) ; 15
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1@139@01)))
(push) ; 15
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))
(pop) ; 15
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (=>
  (not bypass1@130@01)
  (and
    (not bypass1@130@01)
    (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_1@139@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
(assert (or (not bypass1@130@01) bypass1@130@01))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (and
  (=>
    (not bypass1@130@01)
    (and
      (not bypass1@130@01)
      (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))
      (int___unbox__%precondition $Snap.unit n_1@139@01)
      (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))
  (or (not bypass1@130@01) bypass1@130@01)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  p1@16@01
  (and
    p1@16@01
    (=>
      (not bypass1@130@01)
      (and
        (not bypass1@130@01)
        (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))
        (int___unbox__%precondition $Snap.unit n_1@139@01)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))
    (or (not bypass1@130@01) bypass1@130@01))))
(push) ; 9
; [then-branch: 468 | p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0) | live]
; [else-branch: 468 | !(p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0)) | live]
(push) ; 10
; [then-branch: 468 | p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0)]
(assert (and
  p1@16@01
  (and
    (not bypass1@130@01)
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
(pop) ; 10
(push) ; 10
; [else-branch: 468 | !(p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0))]
(assert (not
  (and
    p1@16@01
    (and
      (not bypass1@130@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))))
; [eval] p2 && (!ret2 && (!bypass2 && int___gt__(int___unbox__(n_1_0), 0)))
(push) ; 11
; [then-branch: 469 | !(p2@17@01) | live]
; [else-branch: 469 | p2@17@01 | live]
(push) ; 12
; [then-branch: 469 | !(p2@17@01)]
(pop) ; 12
(push) ; 12
; [else-branch: 469 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(push) ; 13
; [then-branch: 470 | False | live]
; [else-branch: 470 | True | live]
(push) ; 14
; [then-branch: 470 | False]
(assert false)
(pop) ; 14
(push) ; 14
; [else-branch: 470 | True]
; [eval] !bypass2
(push) ; 15
; [then-branch: 471 | bypass2@131@01 | live]
; [else-branch: 471 | !(bypass2@131@01) | live]
(push) ; 16
; [then-branch: 471 | bypass2@131@01]
(pop) ; 16
(push) ; 16
; [else-branch: 471 | !(bypass2@131@01)]
(assert (not bypass2@131@01))
; [eval] int___gt__(int___unbox__(n_1_0), 0)
; [eval] int___unbox__(n_1_0)
(push) ; 17
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 18
(assert (not (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1_0@144@01))
(pop) ; 17
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1_0@144@01)))
(push) ; 17
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))
(pop) ; 17
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (=>
  (not bypass2@131@01)
  (and
    (not bypass2@131@01)
    (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_1_0@144@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))))
(assert (or (not bypass2@131@01) bypass2@131@01))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (and
  (=>
    (not bypass2@131@01)
    (and
      (not bypass2@131@01)
      (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
      (int___unbox__%precondition $Snap.unit n_1_0@144@01)
      (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0)))
  (or (not bypass2@131@01) bypass2@131@01)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  p2@17@01
  (and
    p2@17@01
    (=>
      (not bypass2@131@01)
      (and
        (not bypass2@131@01)
        (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
        (int___unbox__%precondition $Snap.unit n_1_0@144@01)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0)))
    (or (not bypass2@131@01) bypass2@131@01))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (and
    p1@16@01
    (and
      (not bypass1@130@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))
  (and
    p1@16@01
    (not bypass1@130@01)
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
; Joined path conditions
(assert (=>
  (not
    (and
      p1@16@01
      (and
        (not bypass1@130@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
  (and
    (not
      (and
        p1@16@01
        (and
          (not bypass1@130@01)
          (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
    (=>
      p2@17@01
      (and
        p2@17@01
        (=>
          (not bypass2@131@01)
          (and
            (not bypass2@131@01)
            (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
            (int___unbox__%precondition $Snap.unit n_1_0@144@01)
            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0)))
        (or (not bypass2@131@01) bypass2@131@01))))))
(assert (or
  (not
    (and
      p1@16@01
      (and
        (not bypass1@130@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
  (and
    p1@16@01
    (and
      (not bypass1@130@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))))
(push) ; 9
(set-option :timeout 10)
(assert (not (not
  (or
    (and
      p1@16@01
      (and
        (not bypass1@130@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))
    (and
      p2@17@01
      (and
        (not bypass2@131@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (or
  (and
    p1@16@01
    (and
      (not bypass1@130@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))
  (and
    p2@17@01
    (and
      (not bypass2@131@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 472 | p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0) || p2@17@01 && !(bypass2@131@01) && int___gt__(_, int___unbox__(_, n_1_0@144@01), 0) | live]
; [else-branch: 472 | !(p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0) || p2@17@01 && !(bypass2@131@01) && int___gt__(_, int___unbox__(_, n_1_0@144@01), 0)) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 472 | p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0) || p2@17@01 && !(bypass2@131@01) && int___gt__(_, int___unbox__(_, n_1_0@144@01), 0)]
(assert (or
  (and
    p1@16@01
    (and
      (not bypass1@130@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))
  (and
    p2@17@01
    (and
      (not bypass2@131@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0)))))
; [exec]
; p1_0 := p1 && (!ret1 && int___gt__(int___unbox__(n_1), 0))
; [eval] p1 && (!ret1 && int___gt__(int___unbox__(n_1), 0))
(push) ; 10
; [then-branch: 473 | !(p1@16@01) | live]
; [else-branch: 473 | p1@16@01 | live]
(push) ; 11
; [then-branch: 473 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 11
(push) ; 11
; [else-branch: 473 | p1@16@01]
(assert p1@16@01)
; [eval] !ret1
(push) ; 12
; [then-branch: 474 | False | live]
; [else-branch: 474 | True | live]
(push) ; 13
; [then-branch: 474 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 474 | True]
; [eval] int___gt__(int___unbox__(n_1), 0)
; [eval] int___unbox__(n_1)
(push) ; 14
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 15
(assert (not (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1@139@01))
(pop) ; 14
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1@139@01)))
(push) ; 14
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))
(pop) ; 14
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1@139@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  p1@16@01
  (and
    p1@16@01
    (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_1@139@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
(declare-const p1_0@147@01 Bool)
(assert (=
  p1_0@147@01
  (and p1@16@01 (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
; [exec]
; p2_0 := p2 && (!ret2 && int___gt__(int___unbox__(n_1_0), 0))
; [eval] p2 && (!ret2 && int___gt__(int___unbox__(n_1_0), 0))
(push) ; 10
; [then-branch: 475 | !(p2@17@01) | live]
; [else-branch: 475 | p2@17@01 | live]
(push) ; 11
; [then-branch: 475 | !(p2@17@01)]
(pop) ; 11
(push) ; 11
; [else-branch: 475 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(push) ; 12
; [then-branch: 476 | False | live]
; [else-branch: 476 | True | live]
(push) ; 13
; [then-branch: 476 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 476 | True]
; [eval] int___gt__(int___unbox__(n_1_0), 0)
; [eval] int___unbox__(n_1_0)
(push) ; 14
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 15
(assert (not (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1_0@144@01))
(pop) ; 14
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1_0@144@01)))
(push) ; 14
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))
(pop) ; 14
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1_0@144@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  p2@17@01
  (and
    p2@17@01
    (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_1_0@144@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))))
(declare-const p2_0@148@01 Bool)
(assert (=
  p2_0@148@01
  (and
    p2@17@01
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))))
; [exec]
; idle1 := p1 && (!ret1 && !int___gt__(int___unbox__(n_1), 0))
; [eval] p1 && (!ret1 && !int___gt__(int___unbox__(n_1), 0))
(push) ; 10
; [then-branch: 477 | !(p1@16@01) | live]
; [else-branch: 477 | p1@16@01 | live]
(push) ; 11
; [then-branch: 477 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 11
(push) ; 11
; [else-branch: 477 | p1@16@01]
(assert p1@16@01)
; [eval] !ret1
(push) ; 12
; [then-branch: 478 | False | live]
; [else-branch: 478 | True | live]
(push) ; 13
; [then-branch: 478 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 478 | True]
; [eval] !int___gt__(int___unbox__(n_1), 0)
; [eval] int___gt__(int___unbox__(n_1), 0)
; [eval] int___unbox__(n_1)
(push) ; 14
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 15
(assert (not (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1@139@01))
(pop) ; 14
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1@139@01)))
(push) ; 14
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))
(pop) ; 14
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1@139@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(declare-const idle1@149@01 Bool)
(assert (=
  idle1@149@01
  (and
    p1@16@01
    (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))))
; [exec]
; idle2 := p2 && (!ret2 && !int___gt__(int___unbox__(n_1_0), 0))
; [eval] p2 && (!ret2 && !int___gt__(int___unbox__(n_1_0), 0))
(push) ; 10
; [then-branch: 479 | !(p2@17@01) | live]
; [else-branch: 479 | p2@17@01 | live]
(push) ; 11
; [then-branch: 479 | !(p2@17@01)]
(pop) ; 11
(push) ; 11
; [else-branch: 479 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(push) ; 12
; [then-branch: 480 | False | live]
; [else-branch: 480 | True | live]
(push) ; 13
; [then-branch: 480 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 480 | True]
; [eval] !int___gt__(int___unbox__(n_1_0), 0)
; [eval] int___gt__(int___unbox__(n_1_0), 0)
; [eval] int___unbox__(n_1_0)
(push) ; 14
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 15
(assert (not (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1_0@144@01))
(pop) ; 14
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1_0@144@01)))
(push) ; 14
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))
(pop) ; 14
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1_0@144@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(declare-const idle2@150@01 Bool)
(assert (=
  idle2@150@01
  (and
    p2@17@01
    (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0)))))
; [eval] p1_0 && !ret1
(push) ; 10
; [then-branch: 481 | !(p1_0@147@01) | live]
; [else-branch: 481 | p1_0@147@01 | live]
(push) ; 11
; [then-branch: 481 | !(p1_0@147@01)]
(assert (not p1_0@147@01))
(pop) ; 11
(push) ; 11
; [else-branch: 481 | p1_0@147@01]
(assert p1_0@147@01)
; [eval] !ret1
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or p1_0@147@01 (not p1_0@147@01)))
(push) ; 10
(set-option :timeout 10)
(assert (not (not p1_0@147@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not p1_0@147@01))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 482 | p1_0@147@01 | live]
; [else-branch: 482 | !(p1_0@147@01) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 482 | p1_0@147@01]
(assert p1_0@147@01)
; [exec]
; _loop_measures := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; f1 := __prim__int___box__(int___add__(int___unbox__(_checkDefined(f1, 12646)),
;   int___unbox__(_checkDefined(f2, 12902))))
; [eval] __prim__int___box__(int___add__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(_checkDefined(f2, 12902))))
; [eval] int___add__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(_checkDefined(f2, 12902)))
; [eval] int___unbox__(_checkDefined(f1, 12646))
; [eval] _checkDefined(f1, 12646)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f1@137@01 12646))
(pop) ; 11
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f1@137@01 12646))
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 12
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@137@01 12646)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@137@01 12646)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646)))
(pop) ; 11
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@137@01 12646)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646))))
; [eval] int___unbox__(_checkDefined(f2, 12902))
; [eval] _checkDefined(f2, 12902)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f2@138@01 12902))
(pop) ; 11
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f2@138@01 12902))
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 12
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f2@138@01 12902)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f2@138@01 12902)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f2@138@01 12902)))
(pop) ; 11
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f2@138@01 12902)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f2@138@01 12902))))
(push) ; 11
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f2@138@01 12902))))
(pop) ; 11
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f2@138@01 12902))))
(push) ; 11
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f2@138@01 12902)))))
(pop) ; 11
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f2@138@01 12902)))))
(declare-const f1@151@01 $Ref)
(assert (=
  f1@151@01
  (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f2@138@01 12902))))))
; [exec]
; inhale _isDefined(12646)
(declare-const $t@152@01 $Snap)
(assert (= $t@152@01 $Snap.unit))
; [eval] _isDefined(12646)
(push) ; 11
(pop) ; 11
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; f2 := __prim__int___box__(int___sub__(int___unbox__(_checkDefined(f1, 12646)),
;   int___unbox__(_checkDefined(f2, 12902))))
; [eval] __prim__int___box__(int___sub__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(_checkDefined(f2, 12902))))
; [eval] int___sub__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(_checkDefined(f2, 12902)))
; [eval] int___unbox__(_checkDefined(f1, 12646))
; [eval] _checkDefined(f1, 12646)
(set-option :timeout 0)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f1@151@01 12646))
(pop) ; 11
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f1@151@01 12646))
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 12
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@151@01 12646)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@151@01 12646)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@151@01 12646)))
(pop) ; 11
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@151@01 12646)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@151@01 12646))))
; [eval] int___unbox__(_checkDefined(f2, 12902))
; [eval] _checkDefined(f2, 12902)
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
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@151@01 12646)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f2@138@01 12902))))
(pop) ; 11
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@151@01 12646)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f2@138@01 12902))))
(push) ; 11
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@151@01 12646)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f2@138@01 12902)))))
(pop) ; 11
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@151@01 12646)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f2@138@01 12902)))))
(declare-const f2@153@01 $Ref)
(assert (=
  f2@153@01
  (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@151@01 12646)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f2@138@01 12902))))))
; [exec]
; inhale _isDefined(12902)
(declare-const $t@154@01 $Snap)
(assert (= $t@154@01 $Snap.unit))
; [eval] _isDefined(12902)
(push) ; 11
(pop) ; 11
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; n_1 := __prim__int___box__(int___sub__(int___unbox__(n_1), 1))
; [eval] __prim__int___box__(int___sub__(int___unbox__(n_1), 1))
; [eval] int___sub__(int___unbox__(n_1), 1)
; [eval] int___unbox__(n_1)
(set-option :timeout 0)
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 12
(assert (not (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1@139@01))
(pop) ; 11
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1@139@01)))
(push) ; 11
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 1))
(pop) ; 11
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 1))
(push) ; 11
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 1)))
(pop) ; 11
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 1)))
(declare-const n_1@155@01 $Ref)
(assert (=
  n_1@155@01
  (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 1))))
; [exec]
; _loop_check_before := false
; [eval] p2_0 && !ret2
(push) ; 11
; [then-branch: 483 | !(p2_0@148@01) | live]
; [else-branch: 483 | p2_0@148@01 | live]
(push) ; 12
; [then-branch: 483 | !(p2_0@148@01)]
(assert (not p2_0@148@01))
(pop) ; 12
(push) ; 12
; [else-branch: 483 | p2_0@148@01]
(assert p2_0@148@01)
; [eval] !ret2
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or p2_0@148@01 (not p2_0@148@01)))
(push) ; 11
(set-option :timeout 10)
(assert (not (not p2_0@148@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 484 | p2_0@148@01 | dead]
; [else-branch: 484 | !(p2_0@148@01) | live]
(set-option :timeout 0)
(push) ; 11
; [else-branch: 484 | !(p2_0@148@01)]
(assert (not p2_0@148@01))
(pop) ; 11
; [eval] !(p2_0 && !ret2)
; [eval] p2_0 && !ret2
(push) ; 11
; [then-branch: 485 | !(p2_0@148@01) | live]
; [else-branch: 485 | p2_0@148@01 | live]
(push) ; 12
; [then-branch: 485 | !(p2_0@148@01)]
(assert (not p2_0@148@01))
(pop) ; 12
(push) ; 12
; [else-branch: 485 | p2_0@148@01]
(assert p2_0@148@01)
; [eval] !ret2
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(push) ; 11
(set-option :timeout 10)
(assert (not p2_0@148@01))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not p2_0@148@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 486 | !(p2_0@148@01) | live]
; [else-branch: 486 | p2_0@148@01 | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 486 | !(p2_0@148@01)]
(assert (not p2_0@148@01))
; [exec]
; assert (p1_0 && !ret1 ==>
;   _loop_termination_flag ==> !int___gt__(int___unbox__(n_1), 0)) &&
;   (p2_0 && !ret2 ==>
;   _loop_termination_flag_0 ==> !int___gt__(int___unbox__(n_1_0), 0))
; [eval] p1_0 && !ret1 ==> _loop_termination_flag ==> !int___gt__(int___unbox__(n_1), 0)
; [eval] p1_0 && !ret1
(push) ; 12
; [then-branch: 487 | !(p1_0@147@01) | live]
; [else-branch: 487 | p1_0@147@01 | live]
(push) ; 13
; [then-branch: 487 | !(p1_0@147@01)]
(assert (not p1_0@147@01))
(pop) ; 13
(push) ; 13
; [else-branch: 487 | p1_0@147@01]
; [eval] !ret1
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not p1_0@147@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 488 | p1_0@147@01 | live]
; [else-branch: 488 | !(p1_0@147@01) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 488 | p1_0@147@01]
; [eval] _loop_termination_flag ==> !int___gt__(int___unbox__(n_1), 0)
(push) ; 14
; [then-branch: 489 | False | dead]
; [else-branch: 489 | True | live]
(push) ; 15
; [else-branch: 489 | True]
(pop) ; 15
(pop) ; 14
; Joined path conditions
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] p2_0 && !ret2 ==> _loop_termination_flag_0 ==> !int___gt__(int___unbox__(n_1_0), 0)
; [eval] p2_0 && !ret2
(push) ; 12
; [then-branch: 490 | !(p2_0@148@01) | live]
; [else-branch: 490 | p2_0@148@01 | live]
(push) ; 13
; [then-branch: 490 | !(p2_0@148@01)]
(pop) ; 13
(push) ; 13
; [else-branch: 490 | p2_0@148@01]
(assert p2_0@148@01)
; [eval] !ret2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
; [then-branch: 491 | p2_0@148@01 | dead]
; [else-branch: 491 | !(p2_0@148@01) | live]
(push) ; 13
; [else-branch: 491 | !(p2_0@148@01)]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Loop head block: Re-establish invariant
; [eval] p1 && !bypass1 ==> true
; [eval] p1 && !bypass1
(push) ; 12
; [then-branch: 492 | !(p1@16@01) | live]
; [else-branch: 492 | p1@16@01 | live]
(push) ; 13
; [then-branch: 492 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 13
(push) ; 13
; [else-branch: 492 | p1@16@01]
(assert p1@16@01)
; [eval] !bypass1
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@130@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@130@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 493 | p1@16@01 && !(bypass1@130@01) | live]
; [else-branch: 493 | !(p1@16@01 && !(bypass1@130@01)) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 493 | p1@16@01 && !(bypass1@130@01)]
(assert (and p1@16@01 (not bypass1@130@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (and p1@16@01 (not bypass1@130@01)))
; [eval] p2 && !bypass2 ==> true
; [eval] p2 && !bypass2
(push) ; 12
; [then-branch: 494 | !(p2@17@01) | live]
; [else-branch: 494 | p2@17@01 | live]
(push) ; 13
; [then-branch: 494 | !(p2@17@01)]
(pop) ; 13
(push) ; 13
; [else-branch: 494 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
; [then-branch: 495 | p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 495 | !(p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 13
; [else-branch: 495 | !(p2@17@01 && !(bypass2@131@01))]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] p1 && !bypass1 ==> issubtype(typeof(f1), int())
; [eval] p1 && !bypass1
(push) ; 12
; [then-branch: 496 | !(p1@16@01) | live]
; [else-branch: 496 | p1@16@01 | live]
(push) ; 13
; [then-branch: 496 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 13
(push) ; 13
; [else-branch: 496 | p1@16@01]
; [eval] !bypass1
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@130@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@130@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 497 | p1@16@01 && !(bypass1@130@01) | live]
; [else-branch: 497 | !(p1@16@01 && !(bypass1@130@01)) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 497 | p1@16@01 && !(bypass1@130@01)]
(assert (and p1@16@01 (not bypass1@130@01)))
; [eval] issubtype(typeof(f1), int())
; [eval] typeof(f1)
; [eval] int()
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (and p1@16@01 (not bypass1@130@01)))
(push) ; 12
(assert (not (=>
  (and p1@16@01 (not bypass1@130@01))
  (issubtype<Bool> (typeof<PyType> f1@151@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p1@16@01 (not bypass1@130@01))
  (issubtype<Bool> (typeof<PyType> f1@151@01) (as int<PyType>  PyType))))
; [eval] p2 && !bypass2 ==> issubtype(typeof(f1_0), int())
; [eval] p2 && !bypass2
(push) ; 12
; [then-branch: 498 | !(p2@17@01) | live]
; [else-branch: 498 | p2@17@01 | live]
(push) ; 13
; [then-branch: 498 | !(p2@17@01)]
(pop) ; 13
(push) ; 13
; [else-branch: 498 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
; [then-branch: 499 | p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 499 | !(p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 13
; [else-branch: 499 | !(p2@17@01 && !(bypass2@131@01))]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] p1 && !bypass1 ==> issubtype(typeof(f2), int())
; [eval] p1 && !bypass1
(push) ; 12
; [then-branch: 500 | !(p1@16@01) | live]
; [else-branch: 500 | p1@16@01 | live]
(push) ; 13
; [then-branch: 500 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 13
(push) ; 13
; [else-branch: 500 | p1@16@01]
; [eval] !bypass1
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@130@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@130@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 501 | p1@16@01 && !(bypass1@130@01) | live]
; [else-branch: 501 | !(p1@16@01 && !(bypass1@130@01)) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 501 | p1@16@01 && !(bypass1@130@01)]
(assert (and p1@16@01 (not bypass1@130@01)))
; [eval] issubtype(typeof(f2), int())
; [eval] typeof(f2)
; [eval] int()
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (and p1@16@01 (not bypass1@130@01)))
(push) ; 12
(assert (not (=>
  (and p1@16@01 (not bypass1@130@01))
  (issubtype<Bool> (typeof<PyType> f2@153@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p1@16@01 (not bypass1@130@01))
  (issubtype<Bool> (typeof<PyType> f2@153@01) (as int<PyType>  PyType))))
; [eval] p2 && !bypass2 ==> issubtype(typeof(f2_0), int())
; [eval] p2 && !bypass2
(push) ; 12
; [then-branch: 502 | !(p2@17@01) | live]
; [else-branch: 502 | p2@17@01 | live]
(push) ; 13
; [then-branch: 502 | !(p2@17@01)]
(pop) ; 13
(push) ; 13
; [else-branch: 502 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
; [then-branch: 503 | p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 503 | !(p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 13
; [else-branch: 503 | !(p2@17@01 && !(bypass2@131@01))]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] p1 && !bypass1 ==> issubtype(typeof(n_1), int())
; [eval] p1 && !bypass1
(push) ; 12
; [then-branch: 504 | !(p1@16@01) | live]
; [else-branch: 504 | p1@16@01 | live]
(push) ; 13
; [then-branch: 504 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 13
(push) ; 13
; [else-branch: 504 | p1@16@01]
; [eval] !bypass1
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@130@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@130@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 505 | p1@16@01 && !(bypass1@130@01) | live]
; [else-branch: 505 | !(p1@16@01 && !(bypass1@130@01)) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 505 | p1@16@01 && !(bypass1@130@01)]
(assert (and p1@16@01 (not bypass1@130@01)))
; [eval] issubtype(typeof(n_1), int())
; [eval] typeof(n_1)
; [eval] int()
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (and p1@16@01 (not bypass1@130@01)))
(push) ; 12
(assert (not (=>
  (and p1@16@01 (not bypass1@130@01))
  (issubtype<Bool> (typeof<PyType> n_1@155@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (and p1@16@01 (not bypass1@130@01))
  (issubtype<Bool> (typeof<PyType> n_1@155@01) (as int<PyType>  PyType))))
; [eval] p2 && !bypass2 ==> issubtype(typeof(n_1_0), int())
; [eval] p2 && !bypass2
(push) ; 12
; [then-branch: 506 | !(p2@17@01) | live]
; [else-branch: 506 | p2@17@01 | live]
(push) ; 13
; [then-branch: 506 | !(p2@17@01)]
(pop) ; 13
(push) ; 13
; [else-branch: 506 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
; [then-branch: 507 | p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 507 | !(p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 13
; [else-branch: 507 | !(p2@17@01 && !(bypass2@131@01))]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] p1 && (!bypass1 && (p2 && !bypass2)) ==> n_1 == n_1_0
; [eval] p1 && (!bypass1 && (p2 && !bypass2))
(push) ; 12
; [then-branch: 508 | !(p1@16@01) | live]
; [else-branch: 508 | p1@16@01 | live]
(push) ; 13
; [then-branch: 508 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 13
(push) ; 13
; [else-branch: 508 | p1@16@01]
; [eval] !bypass1
(push) ; 14
; [then-branch: 509 | bypass1@130@01 | live]
; [else-branch: 509 | !(bypass1@130@01) | live]
(push) ; 15
; [then-branch: 509 | bypass1@130@01]
(assert bypass1@130@01)
(pop) ; 15
(push) ; 15
; [else-branch: 509 | !(bypass1@130@01)]
(push) ; 16
; [then-branch: 510 | !(p2@17@01) | live]
; [else-branch: 510 | p2@17@01 | live]
(push) ; 17
; [then-branch: 510 | !(p2@17@01)]
(pop) ; 17
(push) ; 17
; [else-branch: 510 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1@130@01) bypass1@130@01))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
; [then-branch: 511 | p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 511 | !(p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 13
; [else-branch: 511 | !(p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01))]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] p1 && (!bypass1 && (p2 && !bypass2)) ==> _checkDefined(f1, 12646) == f1_0
; [eval] p1 && (!bypass1 && (p2 && !bypass2))
(push) ; 12
; [then-branch: 512 | !(p1@16@01) | live]
; [else-branch: 512 | p1@16@01 | live]
(push) ; 13
; [then-branch: 512 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 13
(push) ; 13
; [else-branch: 512 | p1@16@01]
; [eval] !bypass1
(push) ; 14
; [then-branch: 513 | bypass1@130@01 | live]
; [else-branch: 513 | !(bypass1@130@01) | live]
(push) ; 15
; [then-branch: 513 | bypass1@130@01]
(assert bypass1@130@01)
(pop) ; 15
(push) ; 15
; [else-branch: 513 | !(bypass1@130@01)]
(push) ; 16
; [then-branch: 514 | !(p2@17@01) | live]
; [else-branch: 514 | p2@17@01 | live]
(push) ; 17
; [then-branch: 514 | !(p2@17@01)]
(pop) ; 17
(push) ; 17
; [else-branch: 514 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1@130@01) bypass1@130@01))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
; [then-branch: 515 | p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 515 | !(p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 13
; [else-branch: 515 | !(p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01))]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] p1 && (!bypass1 && (p2 && !bypass2)) ==> _checkDefined(f2, 12902) == f2_0
; [eval] p1 && (!bypass1 && (p2 && !bypass2))
(push) ; 12
; [then-branch: 516 | !(p1@16@01) | live]
; [else-branch: 516 | p1@16@01 | live]
(push) ; 13
; [then-branch: 516 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 13
(push) ; 13
; [else-branch: 516 | p1@16@01]
; [eval] !bypass1
(push) ; 14
; [then-branch: 517 | bypass1@130@01 | live]
; [else-branch: 517 | !(bypass1@130@01) | live]
(push) ; 15
; [then-branch: 517 | bypass1@130@01]
(assert bypass1@130@01)
(pop) ; 15
(push) ; 15
; [else-branch: 517 | !(bypass1@130@01)]
(push) ; 16
; [then-branch: 518 | !(p2@17@01) | live]
; [else-branch: 518 | p2@17@01 | live]
(push) ; 17
; [then-branch: 518 | !(p2@17@01)]
(pop) ; 17
(push) ; 17
; [else-branch: 518 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or (not bypass1@130@01) bypass1@130@01))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
; [then-branch: 519 | p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 519 | !(p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 13
; [else-branch: 519 | !(p1@16@01 && !(bypass1@130@01) && p2@17@01 && !(bypass2@131@01))]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] p1 && !bypass1 ==> !idle1 ==> _loop_check_before ==> _loop_termination_flag || (!int___gt__(int___unbox__(n_1), 0) || perm(MustTerminate(_cthread_156)) == none && ((forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))))
; [eval] p1 && !bypass1
(push) ; 12
; [then-branch: 520 | !(p1@16@01) | live]
; [else-branch: 520 | p1@16@01 | live]
(push) ; 13
; [then-branch: 520 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 13
(push) ; 13
; [else-branch: 520 | p1@16@01]
; [eval] !bypass1
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@130@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@130@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 521 | p1@16@01 && !(bypass1@130@01) | live]
; [else-branch: 521 | !(p1@16@01 && !(bypass1@130@01)) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 521 | p1@16@01 && !(bypass1@130@01)]
(assert (and p1@16@01 (not bypass1@130@01)))
; [eval] !idle1 ==> _loop_check_before ==> _loop_termination_flag || (!int___gt__(int___unbox__(n_1), 0) || perm(MustTerminate(_cthread_156)) == none && ((forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))))
; [eval] !idle1
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not idle1@149@01))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (not idle1@149@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 522 | !(idle1@149@01) | live]
; [else-branch: 522 | idle1@149@01 | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 522 | !(idle1@149@01)]
(assert (not idle1@149@01))
; [eval] _loop_check_before ==> _loop_termination_flag || (!int___gt__(int___unbox__(n_1), 0) || perm(MustTerminate(_cthread_156)) == none && ((forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))))
(push) ; 16
; [then-branch: 523 | False | dead]
; [else-branch: 523 | True | live]
(push) ; 17
; [else-branch: 523 | True]
(pop) ; 17
(pop) ; 16
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
(assert (not idle1@149@01))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  (and p1@16@01 (not bypass1@130@01))
  (and p1@16@01 (not bypass1@130@01) (not idle1@149@01))))
(assert (and p1@16@01 (not bypass1@130@01)))
; [eval] p2 && !bypass2 ==> !idle2 ==> _loop_check_before_0 ==> _loop_termination_flag_0 || (!int___gt__(int___unbox__(n_1_0), 0) || perm(MustTerminate_0(_cthread_156_0)) == none && ((forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))))
; [eval] p2 && !bypass2
(push) ; 12
; [then-branch: 524 | !(p2@17@01) | live]
; [else-branch: 524 | p2@17@01 | live]
(push) ; 13
; [then-branch: 524 | !(p2@17@01)]
(pop) ; 13
(push) ; 13
; [else-branch: 524 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
; [then-branch: 525 | p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 525 | !(p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 13
; [else-branch: 525 | !(p2@17@01 && !(bypass2@131@01))]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] p1 && !bypass1 ==> !idle1 ==> !_loop_check_before ==> (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))
; [eval] p1 && !bypass1
(push) ; 12
; [then-branch: 526 | !(p1@16@01) | live]
; [else-branch: 526 | p1@16@01 | live]
(push) ; 13
; [then-branch: 526 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 13
(push) ; 13
; [else-branch: 526 | p1@16@01]
; [eval] !bypass1
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not (and p1@16@01 (not bypass1@130@01)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and p1@16@01 (not bypass1@130@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 527 | p1@16@01 && !(bypass1@130@01) | live]
; [else-branch: 527 | !(p1@16@01 && !(bypass1@130@01)) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 527 | p1@16@01 && !(bypass1@130@01)]
(assert (and p1@16@01 (not bypass1@130@01)))
; [eval] !idle1 ==> !_loop_check_before ==> (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))
; [eval] !idle1
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not idle1@149@01))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (not idle1@149@01)))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 528 | !(idle1@149@01) | live]
; [else-branch: 528 | idle1@149@01 | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 528 | !(idle1@149@01)]
(assert (not idle1@149@01))
; [eval] !_loop_check_before ==> (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 529 | True | live]
; [else-branch: 529 | False | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 529 | True]
; [eval] (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false)
(push) ; 18
; [then-branch: 530 | False | live]
; [else-branch: 530 | True | live]
(push) ; 19
; [then-branch: 530 | False]
(assert false)
(pop) ; 19
(push) ; 19
; [else-branch: 530 | True]
; [eval] (forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false)
(push) ; 20
; [then-branch: 531 | False | live]
; [else-branch: 531 | True | live]
(push) ; 21
; [then-branch: 531 | False]
(assert false)
(pop) ; 21
(push) ; 21
; [else-branch: 531 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false)
(push) ; 22
; [then-branch: 532 | False | live]
; [else-branch: 532 | True | live]
(push) ; 23
; [then-branch: 532 | False]
(assert false)
(pop) ; 23
(push) ; 23
; [else-branch: 532 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)
(pop) ; 23
(pop) ; 22
; Joined path conditions
; Joined path conditions
(pop) ; 21
(pop) ; 20
; Joined path conditions
; Joined path conditions
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(pop) ; 17
(pop) ; 16
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
(assert (not idle1@149@01))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (and p1@16@01 (not bypass1@130@01)))
; [eval] p2 && !bypass2 ==> !idle2 ==> !_loop_check_before_0 ==> (forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))
; [eval] p2 && !bypass2
(push) ; 12
; [then-branch: 533 | !(p2@17@01) | live]
; [else-branch: 533 | p2@17@01 | live]
(push) ; 13
; [then-branch: 533 | !(p2@17@01)]
(pop) ; 13
(push) ; 13
; [else-branch: 533 | p2@17@01]
(assert p2@17@01)
; [eval] !bypass2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
; [then-branch: 534 | p2@17@01 && !(bypass2@131@01) | dead]
; [else-branch: 534 | !(p2@17@01 && !(bypass2@131@01)) | live]
(push) ; 13
; [else-branch: 534 | !(p2@17@01 && !(bypass2@131@01))]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] bypass1 ==> tmp1_2 == n_1
(push) ; 12
; [then-branch: 535 | bypass1@130@01 | dead]
; [else-branch: 535 | !(bypass1@130@01) | live]
(push) ; 13
; [else-branch: 535 | !(bypass1@130@01)]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] bypass1 ==> tmp1_1 == f2
(push) ; 12
; [then-branch: 536 | bypass1@130@01 | dead]
; [else-branch: 536 | !(bypass1@130@01) | live]
(push) ; 13
; [else-branch: 536 | !(bypass1@130@01)]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] bypass1 ==> tmp1_0 == f1
(push) ; 12
; [then-branch: 537 | bypass1@130@01 | dead]
; [else-branch: 537 | !(bypass1@130@01) | live]
(push) ; 13
; [else-branch: 537 | !(bypass1@130@01)]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] bypass1 ==> tmp1_3 == _loop_check_before
(push) ; 12
; [then-branch: 538 | bypass1@130@01 | dead]
; [else-branch: 538 | !(bypass1@130@01) | live]
(push) ; 13
; [else-branch: 538 | !(bypass1@130@01)]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] bypass1 ==> tmp1 == _loop_measures
(push) ; 12
; [then-branch: 539 | bypass1@130@01 | dead]
; [else-branch: 539 | !(bypass1@130@01) | live]
(push) ; 13
; [else-branch: 539 | !(bypass1@130@01)]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] bypass2 ==> tmp2_1 == f2_0
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not bypass2@131@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 540 | bypass2@131@01 | live]
; [else-branch: 540 | !(bypass2@131@01) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 540 | bypass2@131@01]
; [eval] tmp2_1 == f2_0
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] bypass2 ==> tmp2_0 == f1_0
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not bypass2@131@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 541 | bypass2@131@01 | live]
; [else-branch: 541 | !(bypass2@131@01) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 541 | bypass2@131@01]
; [eval] tmp2_0 == f1_0
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] bypass2 ==> tmp2_2 == n_1_0
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not bypass2@131@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 542 | bypass2@131@01 | live]
; [else-branch: 542 | !(bypass2@131@01) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 542 | bypass2@131@01]
; [eval] tmp2_2 == n_1_0
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] bypass2 ==> tmp2_3 == _loop_check_before_0
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not bypass2@131@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 543 | bypass2@131@01 | live]
; [else-branch: 543 | !(bypass2@131@01) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 543 | bypass2@131@01]
; [eval] tmp2_3 == _loop_check_before_0
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] bypass2 ==> tmp2 == _loop_measures_0
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not bypass2@131@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 544 | bypass2@131@01 | live]
; [else-branch: 544 | !(bypass2@131@01) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 544 | bypass2@131@01]
; [eval] tmp2 == _loop_measures_0
(pop) ; 13
(pop) ; 12
; Joined path conditions
(pop) ; 11
(pop) ; 10
; [eval] !(p1_0 && !ret1)
; [eval] p1_0 && !ret1
(push) ; 10
; [then-branch: 545 | !(p1_0@147@01) | live]
; [else-branch: 545 | p1_0@147@01 | live]
(push) ; 11
; [then-branch: 545 | !(p1_0@147@01)]
(assert (not p1_0@147@01))
(pop) ; 11
(push) ; 11
; [else-branch: 545 | p1_0@147@01]
(assert p1_0@147@01)
; [eval] !ret1
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(push) ; 10
(set-option :timeout 10)
(assert (not p1_0@147@01))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 546 | !(p1_0@147@01) | dead]
; [else-branch: 546 | p1_0@147@01 | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 546 | p1_0@147@01]
(assert p1_0@147@01)
(pop) ; 10
(pop) ; 9
(push) ; 9
; [else-branch: 472 | !(p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0) || p2@17@01 && !(bypass2@131@01) && int___gt__(_, int___unbox__(_, n_1_0@144@01), 0))]
(assert (not
  (or
    (and
      p1@16@01
      (and
        (not bypass1@130@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))
    (and
      p2@17@01
      (and
        (not bypass2@131@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))))))
(pop) ; 9
; [eval] !(p1 && (!ret1 && (!bypass1 && int___gt__(int___unbox__(n_1), 0))) || p2 && (!ret2 && (!bypass2 && int___gt__(int___unbox__(n_1_0), 0))))
; [eval] p1 && (!ret1 && (!bypass1 && int___gt__(int___unbox__(n_1), 0))) || p2 && (!ret2 && (!bypass2 && int___gt__(int___unbox__(n_1_0), 0)))
; [eval] p1 && (!ret1 && (!bypass1 && int___gt__(int___unbox__(n_1), 0)))
(push) ; 9
; [then-branch: 547 | !(p1@16@01) | live]
; [else-branch: 547 | p1@16@01 | live]
(push) ; 10
; [then-branch: 547 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 10
(push) ; 10
; [else-branch: 547 | p1@16@01]
(assert p1@16@01)
; [eval] !ret1
(push) ; 11
; [then-branch: 548 | False | live]
; [else-branch: 548 | True | live]
(push) ; 12
; [then-branch: 548 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 548 | True]
; [eval] !bypass1
(push) ; 13
; [then-branch: 549 | bypass1@130@01 | live]
; [else-branch: 549 | !(bypass1@130@01) | live]
(push) ; 14
; [then-branch: 549 | bypass1@130@01]
(assert bypass1@130@01)
(pop) ; 14
(push) ; 14
; [else-branch: 549 | !(bypass1@130@01)]
(assert (not bypass1@130@01))
; [eval] int___gt__(int___unbox__(n_1), 0)
; [eval] int___unbox__(n_1)
(push) ; 15
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 16
(assert (not (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1@139@01))
(pop) ; 15
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1@139@01)))
(push) ; 15
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))
(pop) ; 15
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (=>
  (not bypass1@130@01)
  (and
    (not bypass1@130@01)
    (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_1@139@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
(assert (or (not bypass1@130@01) bypass1@130@01))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (and
  (=>
    (not bypass1@130@01)
    (and
      (not bypass1@130@01)
      (issubtype<Bool> (typeof<PyType> n_1@139@01) (as int<PyType>  PyType))
      (int___unbox__%precondition $Snap.unit n_1@139@01)
      (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))
  (or (not bypass1@130@01) bypass1@130@01)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(push) ; 9
; [then-branch: 550 | p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0) | live]
; [else-branch: 550 | !(p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0)) | live]
(push) ; 10
; [then-branch: 550 | p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0)]
(assert (and
  p1@16@01
  (and
    (not bypass1@130@01)
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0))))
(pop) ; 10
(push) ; 10
; [else-branch: 550 | !(p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0))]
(assert (not
  (and
    p1@16@01
    (and
      (not bypass1@130@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))))
; [eval] p2 && (!ret2 && (!bypass2 && int___gt__(int___unbox__(n_1_0), 0)))
(push) ; 11
; [then-branch: 551 | !(p2@17@01) | live]
; [else-branch: 551 | p2@17@01 | live]
(push) ; 12
; [then-branch: 551 | !(p2@17@01)]
(pop) ; 12
(push) ; 12
; [else-branch: 551 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(push) ; 13
; [then-branch: 552 | False | live]
; [else-branch: 552 | True | live]
(push) ; 14
; [then-branch: 552 | False]
(assert false)
(pop) ; 14
(push) ; 14
; [else-branch: 552 | True]
; [eval] !bypass2
(push) ; 15
; [then-branch: 553 | bypass2@131@01 | live]
; [else-branch: 553 | !(bypass2@131@01) | live]
(push) ; 16
; [then-branch: 553 | bypass2@131@01]
(pop) ; 16
(push) ; 16
; [else-branch: 553 | !(bypass2@131@01)]
(assert (not bypass2@131@01))
; [eval] int___gt__(int___unbox__(n_1_0), 0)
; [eval] int___unbox__(n_1_0)
(push) ; 17
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 18
(assert (not (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit n_1_0@144@01))
(pop) ; 17
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit n_1_0@144@01)))
(push) ; 17
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))
(pop) ; 17
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (=>
  (not bypass2@131@01)
  (and
    (not bypass2@131@01)
    (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit n_1_0@144@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))))
(assert (or (not bypass2@131@01) bypass2@131@01))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (and
  (=>
    (not bypass2@131@01)
    (and
      (not bypass2@131@01)
      (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
      (int___unbox__%precondition $Snap.unit n_1_0@144@01)
      (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0)))
  (or (not bypass2@131@01) bypass2@131@01)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  p2@17@01
  (and
    p2@17@01
    (=>
      (not bypass2@131@01)
      (and
        (not bypass2@131@01)
        (issubtype<Bool> (typeof<PyType> n_1_0@144@01) (as int<PyType>  PyType))
        (int___unbox__%precondition $Snap.unit n_1_0@144@01)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0)))
    (or (not bypass2@131@01) bypass2@131@01))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(push) ; 9
(set-option :timeout 10)
(assert (not (or
  (and
    p1@16@01
    (and
      (not bypass1@130@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))
  (and
    p2@17@01
    (and
      (not bypass2@131@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not
  (or
    (and
      p1@16@01
      (and
        (not bypass1@130@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))
    (and
      p2@17@01
      (and
        (not bypass2@131@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 554 | !(p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0) || p2@17@01 && !(bypass2@131@01) && int___gt__(_, int___unbox__(_, n_1_0@144@01), 0)) | live]
; [else-branch: 554 | p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0) || p2@17@01 && !(bypass2@131@01) && int___gt__(_, int___unbox__(_, n_1_0@144@01), 0) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 554 | !(p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0) || p2@17@01 && !(bypass2@131@01) && int___gt__(_, int___unbox__(_, n_1_0@144@01), 0))]
(assert (not
  (or
    (and
      p1@16@01
      (and
        (not bypass1@130@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))
    (and
      p2@17@01
      (and
        (not bypass2@131@01)
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0))))))
; [eval] p1 && !ret1
(push) ; 10
; [then-branch: 555 | !(p1@16@01) | live]
; [else-branch: 555 | p1@16@01 | live]
(push) ; 11
; [then-branch: 555 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 11
(push) ; 11
; [else-branch: 555 | p1@16@01]
(assert p1@16@01)
; [eval] !ret1
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(push) ; 10
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not p1@16@01))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 556 | p1@16@01 | live]
; [else-branch: 556 | !(p1@16@01) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 556 | p1@16@01]
(assert p1@16@01)
; [exec]
; exhale perm(MustTerminate(_cthread_156)) > none ==>
;   acc(MustTerminate(_cthread_156), perm(MustTerminate(_cthread_156)) -
;   _loop_original_must_terminate)
; [eval] perm(MustTerminate(_cthread_156)) > none
; [eval] perm(MustTerminate(_cthread_156))
; [then-branch: 557 | False | dead]
; [else-branch: 557 | True | live]
(push) ; 11
; [else-branch: 557 | True]
; [exec]
; _res := null
; [eval] p2 && !ret2
(push) ; 12
; [then-branch: 558 | !(p2@17@01) | live]
; [else-branch: 558 | p2@17@01 | live]
(push) ; 13
; [then-branch: 558 | !(p2@17@01)]
(pop) ; 13
(push) ; 13
; [else-branch: 558 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
; [then-branch: 559 | p2@17@01 | dead]
; [else-branch: 559 | !(p2@17@01) | live]
(push) ; 12
; [else-branch: 559 | !(p2@17@01)]
(pop) ; 12
; [eval] !(p2 && !ret2)
; [eval] p2 && !ret2
(push) ; 12
; [then-branch: 560 | !(p2@17@01) | live]
; [else-branch: 560 | p2@17@01 | live]
(push) ; 13
; [then-branch: 560 | !(p2@17@01)]
(pop) ; 13
(push) ; 13
; [else-branch: 560 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(set-option :timeout 10)
(assert (not p2@17@01))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 561 | !(p2@17@01) | live]
; [else-branch: 561 | p2@17@01 | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 561 | !(p2@17@01)]
; [exec]
; p1_1 := p1 &&
;   (!ret1 &&
;   int___gt__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(k_0)))
; [eval] p1 && (!ret1 && int___gt__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(k_0)))
(push) ; 13
; [then-branch: 562 | !(p1@16@01) | live]
; [else-branch: 562 | p1@16@01 | live]
(push) ; 14
; [then-branch: 562 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 14
(push) ; 14
; [else-branch: 562 | p1@16@01]
; [eval] !ret1
(push) ; 15
; [then-branch: 563 | False | live]
; [else-branch: 563 | True | live]
(push) ; 16
; [then-branch: 563 | False]
(assert false)
(pop) ; 16
(push) ; 16
; [else-branch: 563 | True]
; [eval] int___gt__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(k_0))
; [eval] int___unbox__(_checkDefined(f1, 12646))
; [eval] _checkDefined(f1, 12646)
(push) ; 17
; [eval] _isDefined(id)
(push) ; 18
(pop) ; 18
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f1@137@01 12646))
(pop) ; 17
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f1@137@01 12646))
(push) ; 17
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 18
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@137@01 12646)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@137@01 12646)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646)))
(pop) ; 17
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@137@01 12646)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646))))
; [eval] int___unbox__(k_0)
(push) ; 17
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 18
(assert (not (issubtype<Bool> (typeof<PyType> k@26@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> k@26@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit k@26@01))
(pop) ; 17
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> k@26@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit k@26@01)))
(push) ; 17
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646)) (int___unbox__ $Snap.unit k@26@01)))
(pop) ; 17
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646)) (int___unbox__ $Snap.unit k@26@01)))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit f1@137@01 12646)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@137@01 12646)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646))
  (issubtype<Bool> (typeof<PyType> k@26@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit k@26@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646)) (int___unbox__ $Snap.unit k@26@01))))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (=>
  p1@16@01
  (and
    (_checkDefined%precondition $Snap.unit f1@137@01 12646)
    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@137@01 12646)) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646))
    (issubtype<Bool> (typeof<PyType> k@26@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit k@26@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646)) (int___unbox__ $Snap.unit k@26@01)))))
(declare-const p1_1@156@01 Bool)
(assert (=
  p1_1@156@01
  (and
    p1@16@01
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646)) (int___unbox__ $Snap.unit k@26@01)))))
; [exec]
; p2_1 := p2 &&
;   (!ret2 && int___gt__(int___unbox__(f1_0), int___unbox__(k_0_0)))
; [eval] p2 && (!ret2 && int___gt__(int___unbox__(f1_0), int___unbox__(k_0_0)))
(push) ; 13
; [then-branch: 564 | !(p2@17@01) | live]
; [else-branch: 564 | p2@17@01 | live]
(push) ; 14
; [then-branch: 564 | !(p2@17@01)]
(pop) ; 14
(push) ; 14
; [else-branch: 564 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(push) ; 15
; [then-branch: 565 | False | live]
; [else-branch: 565 | True | live]
(push) ; 16
; [then-branch: 565 | False]
(assert false)
(pop) ; 16
(push) ; 16
; [else-branch: 565 | True]
; [eval] int___gt__(int___unbox__(f1_0), int___unbox__(k_0_0))
; [eval] int___unbox__(f1_0)
(push) ; 17
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 18
(assert (not (issubtype<Bool> (typeof<PyType> f1_0@142@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> f1_0@142@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit f1_0@142@01))
(pop) ; 17
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> f1_0@142@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit f1_0@142@01)))
; [eval] int___unbox__(k_0_0)
(push) ; 17
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 18
(assert (not (issubtype<Bool> (typeof<PyType> k_0_0@45@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> k_0_0@45@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit k_0_0@45@01))
(pop) ; 17
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> k_0_0@45@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit k_0_0@45@01)))
(push) ; 17
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit f1_0@142@01) (int___unbox__ $Snap.unit k_0_0@45@01)))
(pop) ; 17
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit f1_0@142@01) (int___unbox__ $Snap.unit k_0_0@45@01)))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> f1_0@142@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit f1_0@142@01)
  (issubtype<Bool> (typeof<PyType> k_0_0@45@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit k_0_0@45@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit f1_0@142@01) (int___unbox__ $Snap.unit k_0_0@45@01))))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (=>
  p2@17@01
  (and
    p2@17@01
    (issubtype<Bool> (typeof<PyType> f1_0@142@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit f1_0@142@01)
    (issubtype<Bool> (typeof<PyType> k_0_0@45@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit k_0_0@45@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit f1_0@142@01) (int___unbox__ $Snap.unit k_0_0@45@01)))))
(declare-const p2_1@157@01 Bool)
(assert (=
  p2_1@157@01
  (and
    p2@17@01
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit f1_0@142@01) (int___unbox__ $Snap.unit k_0_0@45@01)))))
; [exec]
; p3 := p1 &&
;   (!ret1 &&
;   !int___gt__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(k_0)))
; [eval] p1 && (!ret1 && !int___gt__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(k_0)))
(push) ; 13
; [then-branch: 566 | !(p1@16@01) | live]
; [else-branch: 566 | p1@16@01 | live]
(push) ; 14
; [then-branch: 566 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 14
(push) ; 14
; [else-branch: 566 | p1@16@01]
; [eval] !ret1
(push) ; 15
; [then-branch: 567 | False | live]
; [else-branch: 567 | True | live]
(push) ; 16
; [then-branch: 567 | False]
(assert false)
(pop) ; 16
(push) ; 16
; [else-branch: 567 | True]
; [eval] !int___gt__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(k_0))
; [eval] int___gt__(int___unbox__(_checkDefined(f1, 12646)), int___unbox__(k_0))
; [eval] int___unbox__(_checkDefined(f1, 12646))
; [eval] _checkDefined(f1, 12646)
(push) ; 17
; [eval] _isDefined(id)
(push) ; 18
(pop) ; 18
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f1@137@01 12646))
(pop) ; 17
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit f1@137@01 12646))
(push) ; 17
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 18
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@137@01 12646)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@137@01 12646)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646)))
(pop) ; 17
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@137@01 12646)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646))))
; [eval] int___unbox__(k_0)
(push) ; 17
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 18
(assert (not (issubtype<Bool> (typeof<PyType> k@26@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> k@26@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit k@26@01))
(pop) ; 17
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> k@26@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit k@26@01)))
(push) ; 17
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646)) (int___unbox__ $Snap.unit k@26@01)))
(pop) ; 17
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646)) (int___unbox__ $Snap.unit k@26@01)))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit f1@137@01 12646)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit f1@137@01 12646)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646))
  (issubtype<Bool> (typeof<PyType> k@26@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit k@26@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646)) (int___unbox__ $Snap.unit k@26@01))))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(declare-const p3@158@01 Bool)
(assert (=
  p3@158@01
  (and
    p1@16@01
    (not
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit f1@137@01 12646)) (int___unbox__ $Snap.unit k@26@01))))))
; [exec]
; p4 := p2 &&
;   (!ret2 && !int___gt__(int___unbox__(f1_0), int___unbox__(k_0_0)))
; [eval] p2 && (!ret2 && !int___gt__(int___unbox__(f1_0), int___unbox__(k_0_0)))
(push) ; 13
; [then-branch: 568 | !(p2@17@01) | live]
; [else-branch: 568 | p2@17@01 | live]
(push) ; 14
; [then-branch: 568 | !(p2@17@01)]
(pop) ; 14
(push) ; 14
; [else-branch: 568 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(push) ; 15
; [then-branch: 569 | False | live]
; [else-branch: 569 | True | live]
(push) ; 16
; [then-branch: 569 | False]
(assert false)
(pop) ; 16
(push) ; 16
; [else-branch: 569 | True]
; [eval] !int___gt__(int___unbox__(f1_0), int___unbox__(k_0_0))
; [eval] int___gt__(int___unbox__(f1_0), int___unbox__(k_0_0))
; [eval] int___unbox__(f1_0)
(push) ; 17
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 18
(assert (not (issubtype<Bool> (typeof<PyType> f1_0@142@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> f1_0@142@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit f1_0@142@01))
(pop) ; 17
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> f1_0@142@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit f1_0@142@01)))
; [eval] int___unbox__(k_0_0)
(push) ; 17
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 18
(assert (not (issubtype<Bool> (typeof<PyType> k_0_0@45@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> k_0_0@45@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit k_0_0@45@01))
(pop) ; 17
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> k_0_0@45@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit k_0_0@45@01)))
(push) ; 17
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit f1_0@142@01) (int___unbox__ $Snap.unit k_0_0@45@01)))
(pop) ; 17
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit f1_0@142@01) (int___unbox__ $Snap.unit k_0_0@45@01)))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> f1_0@142@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit f1_0@142@01)
  (issubtype<Bool> (typeof<PyType> k_0_0@45@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit k_0_0@45@01)
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit f1_0@142@01) (int___unbox__ $Snap.unit k_0_0@45@01))))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(declare-const p4@159@01 Bool)
(assert (=
  p4@159@01
  (and
    p2@17@01
    (not
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit f1_0@142@01) (int___unbox__ $Snap.unit k_0_0@45@01))))))
; [eval] p1_1 && !ret1
(push) ; 13
; [then-branch: 570 | !(p1_1@156@01) | live]
; [else-branch: 570 | p1_1@156@01 | live]
(push) ; 14
; [then-branch: 570 | !(p1_1@156@01)]
(assert (not p1_1@156@01))
(pop) ; 14
(push) ; 14
; [else-branch: 570 | p1_1@156@01]
(assert p1_1@156@01)
; [eval] !ret1
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or p1_1@156@01 (not p1_1@156@01)))
(push) ; 13
(set-option :timeout 10)
(assert (not (not p1_1@156@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not p1_1@156@01))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 571 | p1_1@156@01 | live]
; [else-branch: 571 | !(p1_1@156@01) | live]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 571 | p1_1@156@01]
(assert p1_1@156@01)
; [exec]
; _res := __prim__int___box__(1)
; [eval] __prim__int___box__(1)
(push) ; 14
(pop) ; 14
; Joined path conditions
(declare-const _res@160@01 $Ref)
(assert (= _res@160@01 (__prim__int___box__ $Snap.unit 1)))
; [exec]
; ret1 := true
; [eval] p2_1 && !ret2
(push) ; 14
; [then-branch: 572 | !(p2_1@157@01) | live]
; [else-branch: 572 | p2_1@157@01 | live]
(push) ; 15
; [then-branch: 572 | !(p2_1@157@01)]
(assert (not p2_1@157@01))
(pop) ; 15
(push) ; 15
; [else-branch: 572 | p2_1@157@01]
(assert p2_1@157@01)
; [eval] !ret2
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or p2_1@157@01 (not p2_1@157@01)))
(push) ; 14
(set-option :timeout 10)
(assert (not (not p2_1@157@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 573 | p2_1@157@01 | dead]
; [else-branch: 573 | !(p2_1@157@01) | live]
(set-option :timeout 0)
(push) ; 14
; [else-branch: 573 | !(p2_1@157@01)]
(assert (not p2_1@157@01))
(pop) ; 14
; [eval] !(p2_1 && !ret2)
; [eval] p2_1 && !ret2
(push) ; 14
; [then-branch: 574 | !(p2_1@157@01) | live]
; [else-branch: 574 | p2_1@157@01 | live]
(push) ; 15
; [then-branch: 574 | !(p2_1@157@01)]
(assert (not p2_1@157@01))
(pop) ; 15
(push) ; 15
; [else-branch: 574 | p2_1@157@01]
(assert p2_1@157@01)
; [eval] !ret2
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(push) ; 14
(set-option :timeout 10)
(assert (not p2_1@157@01))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (not p2_1@157@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 575 | !(p2_1@157@01) | live]
; [else-branch: 575 | p2_1@157@01 | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 575 | !(p2_1@157@01)]
(assert (not p2_1@157@01))
; [eval] p1 && !ret1
(push) ; 15
; [then-branch: 576 | !(p1@16@01) | live]
; [else-branch: 576 | p1@16@01 | live]
(push) ; 16
; [then-branch: 576 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 16
(push) ; 16
; [else-branch: 576 | p1@16@01]
; [eval] !ret1
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
; [then-branch: 577 | False | dead]
; [else-branch: 577 | True | live]
(push) ; 15
; [else-branch: 577 | True]
(pop) ; 15
; [eval] !(p1 && !ret1)
; [eval] p1 && !ret1
(push) ; 15
; [then-branch: 578 | !(p1@16@01) | live]
; [else-branch: 578 | p1@16@01 | live]
(push) ; 16
; [then-branch: 578 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 16
(push) ; 16
; [else-branch: 578 | p1@16@01]
; [eval] !ret1
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(push) ; 15
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 579 | True | live]
; [else-branch: 579 | False | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 579 | True]
; [eval] p2 && !ret2
(push) ; 16
; [then-branch: 580 | !(p2@17@01) | live]
; [else-branch: 580 | p2@17@01 | live]
(push) ; 17
; [then-branch: 580 | !(p2@17@01)]
(pop) ; 17
(push) ; 17
; [else-branch: 580 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
; [then-branch: 581 | p2@17@01 | dead]
; [else-branch: 581 | !(p2@17@01) | live]
(push) ; 16
; [else-branch: 581 | !(p2@17@01)]
(pop) ; 16
; [eval] !(p2 && !ret2)
; [eval] p2 && !ret2
(push) ; 16
; [then-branch: 582 | !(p2@17@01) | live]
; [else-branch: 582 | p2@17@01 | live]
(push) ; 17
; [then-branch: 582 | !(p2@17@01)]
(pop) ; 17
(push) ; 17
; [else-branch: 582 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(push) ; 16
(set-option :timeout 10)
(assert (not p2@17@01))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 583 | !(p2@17@01) | live]
; [else-branch: 583 | p2@17@01 | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 583 | !(p2@17@01)]
; [exec]
; assert true
; [eval] p1 ==> true
(push) ; 17
(push) ; 18
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 584 | p1@16@01 | live]
; [else-branch: 584 | !(p1@16@01) | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 584 | p1@16@01]
(pop) ; 18
(pop) ; 17
; Joined path conditions
; [eval] p2 ==> true
(push) ; 17
; [then-branch: 585 | p2@17@01 | dead]
; [else-branch: 585 | !(p2@17@01) | live]
(push) ; 18
; [else-branch: 585 | !(p2@17@01)]
(pop) ; 18
(pop) ; 17
; Joined path conditions
; [eval] p1 ==> issubtype(typeof(_res), int())
(push) ; 17
(push) ; 18
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 586 | p1@16@01 | live]
; [else-branch: 586 | !(p1@16@01) | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 586 | p1@16@01]
; [eval] issubtype(typeof(_res), int())
; [eval] typeof(_res)
; [eval] int()
(pop) ; 18
(pop) ; 17
; Joined path conditions
(push) ; 17
(assert (not (=>
  p1@16@01
  (issubtype<Bool> (typeof<PyType> _res@160@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p1@16@01
  (issubtype<Bool> (typeof<PyType> _res@160@01) (as int<PyType>  PyType))))
; [eval] p2 ==> issubtype(typeof(_res_0), int())
(push) ; 17
; [then-branch: 587 | p2@17@01 | dead]
; [else-branch: 587 | !(p2@17@01) | live]
(push) ; 18
; [else-branch: 587 | !(p2@17@01)]
(pop) ; 18
(pop) ; 17
; Joined path conditions
; [eval] p1 && p2 ==> _res == _res_0
; [eval] p1 && p2
(push) ; 17
; [then-branch: 588 | !(p1@16@01) | live]
; [else-branch: 588 | p1@16@01 | live]
(push) ; 18
; [then-branch: 588 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 18
(push) ; 18
; [else-branch: 588 | p1@16@01]
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(push) ; 17
(push) ; 18
(set-option :timeout 10)
(assert (not (not (and p1@16@01 p2@17@01))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 589 | p1@16@01 && p2@17@01 | dead]
; [else-branch: 589 | !(p1@16@01 && p2@17@01) | live]
(set-option :timeout 0)
(push) ; 18
; [else-branch: 589 | !(p1@16@01 && p2@17@01)]
(assert (not (and p1@16@01 p2@17@01)))
(pop) ; 18
(pop) ; 17
; Joined path conditions
(assert (not (and p1@16@01 p2@17@01)))
; [eval] p1 ==> (forperm _r_2: Ref [MustInvokeBounded(_r_2)] :: false) && ((forperm _r_2: Ref [MustInvokeUnbounded(_r_2)] :: false) && ((forperm _r_2: Ref [_r_2.MustReleaseBounded] :: false) && (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: false)))
(push) ; 17
(push) ; 18
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 590 | p1@16@01 | live]
; [else-branch: 590 | !(p1@16@01) | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 590 | p1@16@01]
; [eval] (forperm _r_2: Ref [MustInvokeBounded(_r_2)] :: false) && ((forperm _r_2: Ref [MustInvokeUnbounded(_r_2)] :: false) && ((forperm _r_2: Ref [_r_2.MustReleaseBounded] :: false) && (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_2: Ref [MustInvokeBounded(_r_2)] :: false)
(push) ; 19
; [then-branch: 591 | False | live]
; [else-branch: 591 | True | live]
(push) ; 20
; [then-branch: 591 | False]
(assert false)
(pop) ; 20
(push) ; 20
; [else-branch: 591 | True]
; [eval] (forperm _r_2: Ref [MustInvokeUnbounded(_r_2)] :: false)
(push) ; 21
; [then-branch: 592 | False | live]
; [else-branch: 592 | True | live]
(push) ; 22
; [then-branch: 592 | False]
(assert false)
(pop) ; 22
(push) ; 22
; [else-branch: 592 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: false)
(push) ; 23
; [then-branch: 593 | False | live]
; [else-branch: 593 | True | live]
(push) ; 24
; [then-branch: 593 | False]
(assert false)
(pop) ; 24
(push) ; 24
; [else-branch: 593 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: false)
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
; [eval] p2 ==> (forperm _r_2: Ref [MustInvokeBounded_0(_r_2)] :: false) && ((forperm _r_2: Ref [MustInvokeUnbounded_0(_r_2)] :: false) && ((forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: false) && (forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: false)))
(push) ; 17
; [then-branch: 594 | p2@17@01 | dead]
; [else-branch: 594 | !(p2@17@01) | live]
(push) ; 18
; [else-branch: 594 | !(p2@17@01)]
(pop) ; 18
(pop) ; 17
; Joined path conditions
(pop) ; 16
(pop) ; 15
(pop) ; 14
(pop) ; 13
(push) ; 13
; [else-branch: 571 | !(p1_1@156@01)]
(assert (not p1_1@156@01))
(pop) ; 13
; [eval] !(p1_1 && !ret1)
; [eval] p1_1 && !ret1
(push) ; 13
; [then-branch: 595 | !(p1_1@156@01) | live]
; [else-branch: 595 | p1_1@156@01 | live]
(push) ; 14
; [then-branch: 595 | !(p1_1@156@01)]
(assert (not p1_1@156@01))
(pop) ; 14
(push) ; 14
; [else-branch: 595 | p1_1@156@01]
(assert p1_1@156@01)
; [eval] !ret1
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(push) ; 13
(set-option :timeout 10)
(assert (not p1_1@156@01))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (not p1_1@156@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 596 | !(p1_1@156@01) | live]
; [else-branch: 596 | p1_1@156@01 | live]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 596 | !(p1_1@156@01)]
(assert (not p1_1@156@01))
; [eval] p2_1 && !ret2
(push) ; 14
; [then-branch: 597 | !(p2_1@157@01) | live]
; [else-branch: 597 | p2_1@157@01 | live]
(push) ; 15
; [then-branch: 597 | !(p2_1@157@01)]
(assert (not p2_1@157@01))
(pop) ; 15
(push) ; 15
; [else-branch: 597 | p2_1@157@01]
(assert p2_1@157@01)
; [eval] !ret2
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or p2_1@157@01 (not p2_1@157@01)))
(push) ; 14
(set-option :timeout 10)
(assert (not (not p2_1@157@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 598 | p2_1@157@01 | dead]
; [else-branch: 598 | !(p2_1@157@01) | live]
(set-option :timeout 0)
(push) ; 14
; [else-branch: 598 | !(p2_1@157@01)]
(assert (not p2_1@157@01))
(pop) ; 14
; [eval] !(p2_1 && !ret2)
; [eval] p2_1 && !ret2
(push) ; 14
; [then-branch: 599 | !(p2_1@157@01) | live]
; [else-branch: 599 | p2_1@157@01 | live]
(push) ; 15
; [then-branch: 599 | !(p2_1@157@01)]
(assert (not p2_1@157@01))
(pop) ; 15
(push) ; 15
; [else-branch: 599 | p2_1@157@01]
(assert p2_1@157@01)
; [eval] !ret2
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(push) ; 14
(set-option :timeout 10)
(assert (not p2_1@157@01))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (not p2_1@157@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 600 | !(p2_1@157@01) | live]
; [else-branch: 600 | p2_1@157@01 | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 600 | !(p2_1@157@01)]
(assert (not p2_1@157@01))
; [eval] p1 && !ret1
(push) ; 15
; [then-branch: 601 | !(p1@16@01) | live]
; [else-branch: 601 | p1@16@01 | live]
(push) ; 16
; [then-branch: 601 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 16
(push) ; 16
; [else-branch: 601 | p1@16@01]
; [eval] !ret1
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(push) ; 15
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 602 | p1@16@01 | live]
; [else-branch: 602 | !(p1@16@01) | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 602 | p1@16@01]
; [exec]
; _res := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 16
(pop) ; 16
; Joined path conditions
(declare-const _res@161@01 $Ref)
(assert (= _res@161@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; ret1 := true
; [eval] p2 && !ret2
(push) ; 16
; [then-branch: 603 | !(p2@17@01) | live]
; [else-branch: 603 | p2@17@01 | live]
(push) ; 17
; [then-branch: 603 | !(p2@17@01)]
(pop) ; 17
(push) ; 17
; [else-branch: 603 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
; [then-branch: 604 | p2@17@01 | dead]
; [else-branch: 604 | !(p2@17@01) | live]
(push) ; 16
; [else-branch: 604 | !(p2@17@01)]
(pop) ; 16
; [eval] !(p2 && !ret2)
; [eval] p2 && !ret2
(push) ; 16
; [then-branch: 605 | !(p2@17@01) | live]
; [else-branch: 605 | p2@17@01 | live]
(push) ; 17
; [then-branch: 605 | !(p2@17@01)]
(pop) ; 17
(push) ; 17
; [else-branch: 605 | p2@17@01]
(assert p2@17@01)
; [eval] !ret2
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(push) ; 16
(set-option :timeout 10)
(assert (not p2@17@01))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 606 | !(p2@17@01) | live]
; [else-branch: 606 | p2@17@01 | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 606 | !(p2@17@01)]
; [exec]
; assert true
; [eval] p1 ==> true
(push) ; 17
(push) ; 18
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 607 | p1@16@01 | live]
; [else-branch: 607 | !(p1@16@01) | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 607 | p1@16@01]
(pop) ; 18
(pop) ; 17
; Joined path conditions
; [eval] p2 ==> true
(push) ; 17
; [then-branch: 608 | p2@17@01 | dead]
; [else-branch: 608 | !(p2@17@01) | live]
(push) ; 18
; [else-branch: 608 | !(p2@17@01)]
(pop) ; 18
(pop) ; 17
; Joined path conditions
; [eval] p1 ==> issubtype(typeof(_res), int())
(push) ; 17
(push) ; 18
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 609 | p1@16@01 | live]
; [else-branch: 609 | !(p1@16@01) | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 609 | p1@16@01]
; [eval] issubtype(typeof(_res), int())
; [eval] typeof(_res)
; [eval] int()
(pop) ; 18
(pop) ; 17
; Joined path conditions
(push) ; 17
(assert (not (=>
  p1@16@01
  (issubtype<Bool> (typeof<PyType> _res@161@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p1@16@01
  (issubtype<Bool> (typeof<PyType> _res@161@01) (as int<PyType>  PyType))))
; [eval] p2 ==> issubtype(typeof(_res_0), int())
(push) ; 17
; [then-branch: 610 | p2@17@01 | dead]
; [else-branch: 610 | !(p2@17@01) | live]
(push) ; 18
; [else-branch: 610 | !(p2@17@01)]
(pop) ; 18
(pop) ; 17
; Joined path conditions
; [eval] p1 && p2 ==> _res == _res_0
; [eval] p1 && p2
(push) ; 17
; [then-branch: 611 | !(p1@16@01) | live]
; [else-branch: 611 | p1@16@01 | live]
(push) ; 18
; [then-branch: 611 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 18
(push) ; 18
; [else-branch: 611 | p1@16@01]
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(push) ; 17
(push) ; 18
(set-option :timeout 10)
(assert (not (not (and p1@16@01 p2@17@01))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 612 | p1@16@01 && p2@17@01 | dead]
; [else-branch: 612 | !(p1@16@01 && p2@17@01) | live]
(set-option :timeout 0)
(push) ; 18
; [else-branch: 612 | !(p1@16@01 && p2@17@01)]
(assert (not (and p1@16@01 p2@17@01)))
(pop) ; 18
(pop) ; 17
; Joined path conditions
(assert (not (and p1@16@01 p2@17@01)))
; [eval] p1 ==> (forperm _r_2: Ref [MustInvokeBounded(_r_2)] :: false) && ((forperm _r_2: Ref [MustInvokeUnbounded(_r_2)] :: false) && ((forperm _r_2: Ref [_r_2.MustReleaseBounded] :: false) && (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: false)))
(push) ; 17
(push) ; 18
(set-option :timeout 10)
(assert (not (not p1@16@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 613 | p1@16@01 | live]
; [else-branch: 613 | !(p1@16@01) | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 613 | p1@16@01]
; [eval] (forperm _r_2: Ref [MustInvokeBounded(_r_2)] :: false) && ((forperm _r_2: Ref [MustInvokeUnbounded(_r_2)] :: false) && ((forperm _r_2: Ref [_r_2.MustReleaseBounded] :: false) && (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_2: Ref [MustInvokeBounded(_r_2)] :: false)
(push) ; 19
; [then-branch: 614 | False | live]
; [else-branch: 614 | True | live]
(push) ; 20
; [then-branch: 614 | False]
(assert false)
(pop) ; 20
(push) ; 20
; [else-branch: 614 | True]
; [eval] (forperm _r_2: Ref [MustInvokeUnbounded(_r_2)] :: false)
(push) ; 21
; [then-branch: 615 | False | live]
; [else-branch: 615 | True | live]
(push) ; 22
; [then-branch: 615 | False]
(assert false)
(pop) ; 22
(push) ; 22
; [else-branch: 615 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: false)
(push) ; 23
; [then-branch: 616 | False | live]
; [else-branch: 616 | True | live]
(push) ; 24
; [then-branch: 616 | False]
(assert false)
(pop) ; 24
(push) ; 24
; [else-branch: 616 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: false)
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
; [eval] p2 ==> (forperm _r_2: Ref [MustInvokeBounded_0(_r_2)] :: false) && ((forperm _r_2: Ref [MustInvokeUnbounded_0(_r_2)] :: false) && ((forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: false) && (forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: false)))
(push) ; 17
; [then-branch: 617 | p2@17@01 | dead]
; [else-branch: 617 | !(p2@17@01) | live]
(push) ; 18
; [else-branch: 617 | !(p2@17@01)]
(pop) ; 18
(pop) ; 17
; Joined path conditions
(pop) ; 16
(pop) ; 15
; [eval] !(p1 && !ret1)
; [eval] p1 && !ret1
(push) ; 15
; [then-branch: 618 | !(p1@16@01) | live]
; [else-branch: 618 | p1@16@01 | live]
(push) ; 16
; [then-branch: 618 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 16
(push) ; 16
; [else-branch: 618 | p1@16@01]
; [eval] !ret1
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
; [then-branch: 619 | !(p1@16@01) | dead]
; [else-branch: 619 | p1@16@01 | live]
(push) ; 15
; [else-branch: 619 | p1@16@01]
(pop) ; 15
(pop) ; 14
(pop) ; 13
(push) ; 13
; [else-branch: 596 | p1_1@156@01]
(assert p1_1@156@01)
(pop) ; 13
(pop) ; 12
(pop) ; 11
(pop) ; 10
; [eval] !(p1 && !ret1)
; [eval] p1 && !ret1
(push) ; 10
; [then-branch: 620 | !(p1@16@01) | live]
; [else-branch: 620 | p1@16@01 | live]
(push) ; 11
; [then-branch: 620 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 11
(push) ; 11
; [else-branch: 620 | p1@16@01]
(assert p1@16@01)
; [eval] !ret1
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(push) ; 10
(set-option :timeout 10)
(assert (not p1@16@01))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 621 | !(p1@16@01) | dead]
; [else-branch: 621 | p1@16@01 | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 621 | p1@16@01]
(assert p1@16@01)
(pop) ; 10
(pop) ; 9
(push) ; 9
; [else-branch: 554 | p1@16@01 && !(bypass1@130@01) && int___gt__(_, int___unbox__(_, n_1@139@01), 0) || p2@17@01 && !(bypass2@131@01) && int___gt__(_, int___unbox__(_, n_1_0@144@01), 0)]
(assert (or
  (and
    p1@16@01
    (and
      (not bypass1@130@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1@139@01) 0)))
  (and
    p2@17@01
    (and
      (not bypass2@131@01)
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit n_1_0@144@01) 0)))))
(pop) ; 9
(pop) ; 8
(pop) ; 7
(pop) ; 6
; [eval] !bypass2
(push) ; 6
(set-option :timeout 10)
(assert (not bypass2@131@01))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 622 | !(bypass2@131@01) | dead]
; [else-branch: 622 | bypass2@131@01 | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 622 | bypass2@131@01]
(assert bypass2@131@01)
(pop) ; 6
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 341 | p2@17@01]
(assert p2@17@01)
(pop) ; 4
(pop) ; 3
; [eval] !(p1 && !ret1)
; [eval] p1 && !ret1
(push) ; 3
; [then-branch: 623 | !(p1@16@01) | live]
; [else-branch: 623 | p1@16@01 | live]
(push) ; 4
; [then-branch: 623 | !(p1@16@01)]
(assert (not p1@16@01))
(pop) ; 4
(push) ; 4
; [else-branch: 623 | p1@16@01]
(assert p1@16@01)
; [eval] !ret1
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(set-option :timeout 10)
(assert (not p1@16@01))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 624 | !(p1@16@01) | dead]
; [else-branch: 624 | p1@16@01 | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 624 | p1@16@01]
(assert p1@16@01)
(pop) ; 3
(pop) ; 2
(pop) ; 1
