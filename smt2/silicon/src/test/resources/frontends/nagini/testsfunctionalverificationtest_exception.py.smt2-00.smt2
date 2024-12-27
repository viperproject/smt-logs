(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 09:58:44
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
(declare-const MyException<PyType> PyType)
(declare-const VarArgException<PyType> PyType)
(declare-const MySpecialException<PyType> PyType)
(declare-const MyOtherException<PyType> PyType)
(declare-const ParameterizedException<PyType> PyType)
(declare-const Container<PyType> PyType)
(declare-const ExceptionClass<PyType> PyType)
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
(declare-fun tuple___val__ ($Snap $Ref) Seq<$Ref>)
(declare-fun tuple___val__%limited ($Snap $Ref) Seq<$Ref>)
(declare-fun tuple___val__%stateless ($Ref) Bool)
(declare-fun tuple___val__%precondition ($Snap $Ref) Bool)
(declare-fun str___val__ ($Snap $Ref) Int)
(declare-fun str___val__%limited ($Snap $Ref) Int)
(declare-fun str___val__%stateless ($Ref) Bool)
(declare-fun str___val__%precondition ($Snap $Ref) Bool)
(declare-fun str___len__ ($Snap $Ref) Int)
(declare-fun str___len__%limited ($Snap $Ref) Int)
(declare-fun str___len__%stateless ($Ref) Bool)
(declare-fun str___len__%precondition ($Snap $Ref) Bool)
(declare-fun tuple___len__ ($Snap $Ref) Int)
(declare-fun tuple___len__%limited ($Snap $Ref) Int)
(declare-fun tuple___len__%stateless ($Ref) Bool)
(declare-fun tuple___len__%precondition ($Snap $Ref) Bool)
(declare-fun _isDefined ($Snap Int) Bool)
(declare-fun _isDefined%limited ($Snap Int) Bool)
(declare-fun _isDefined%stateless (Int) Bool)
(declare-fun _isDefined%precondition ($Snap Int) Bool)
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
(declare-fun object___eq__ ($Snap $Ref $Ref) Bool)
(declare-fun object___eq__%limited ($Snap $Ref $Ref) Bool)
(declare-fun object___eq__%stateless ($Ref $Ref) Bool)
(declare-fun object___eq__%precondition ($Snap $Ref $Ref) Bool)
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
(declare-fun int___mul__ ($Snap Int Int) Int)
(declare-fun int___mul__%limited ($Snap Int Int) Int)
(declare-fun int___mul__%stateless (Int Int) Bool)
(declare-fun int___mul__%precondition ($Snap Int Int) Bool)
(declare-fun int___add__ ($Snap Int Int) Int)
(declare-fun int___add__%limited ($Snap Int Int) Int)
(declare-fun int___add__%stateless (Int Int) Bool)
(declare-fun int___add__%precondition ($Snap Int Int) Bool)
(declare-fun int___sub__ ($Snap Int Int) Int)
(declare-fun int___sub__%limited ($Snap Int Int) Int)
(declare-fun int___sub__%stateless (Int Int) Bool)
(declare-fun int___sub__%precondition ($Snap Int Int) Bool)
(declare-fun tuple___create0__ ($Snap) $Ref)
(declare-fun tuple___create0__%limited ($Snap) $Ref)
(declare-const tuple___create0__%stateless Bool)
(declare-fun tuple___create0__%precondition ($Snap) Bool)
(declare-fun __file__ ($Snap) $Ref)
(declare-fun __file__%limited ($Snap) $Ref)
(declare-const __file__%stateless Bool)
(declare-fun __file__%precondition ($Snap) Bool)
(declare-fun _checkDefined ($Snap $Ref Int) $Ref)
(declare-fun _checkDefined%limited ($Snap $Ref Int) $Ref)
(declare-fun _checkDefined%stateless ($Ref Int) Bool)
(declare-fun _checkDefined%precondition ($Snap $Ref Int) Bool)
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
(declare-fun MustInvokeBounded%trigger ($Snap $Ref) Bool)
(declare-fun MustInvokeUnbounded%trigger ($Snap $Ref) Bool)
(declare-fun _MaySet%trigger ($Snap $Ref Int) Bool)
; ////////// Uniqueness assumptions from domains
(assert (distinct bool<PyType> float<PyType> bytes<PyType> slice<PyType> list_basic<PyType> ConnectionRefusedError<PyType> PMultiset_basic<PyType> PSet_basic<PyType> Iterator_basic<PyType> PSeq_basic<PyType> object<PyType> ParameterizedException<PyType> traceback<PyType> dict_basic<PyType> type<PyType> ExceptionClass<PyType> set_basic<PyType> MyOtherException<PyType> MySpecialException<PyType> py_range<PyType> int<PyType> Container<PyType> Exception<PyType> __prim__Seq_type<PyType> VarArgException<PyType> tuple_basic<PyType> str<PyType> Thread_0<PyType> Place<PyType> LevelType<PyType> MyException<PyType> NoneType<PyType>))
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
  (extends_<Bool> (as MyException<PyType>  PyType) (as Exception<PyType>  PyType))
  (=
    (get_basic<PyType> (as MyException<PyType>  PyType))
    (as MyException<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as VarArgException<PyType>  PyType) (as Exception<PyType>  PyType))
  (=
    (get_basic<PyType> (as VarArgException<PyType>  PyType))
    (as VarArgException<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as MySpecialException<PyType>  PyType) (as MyException<PyType>  PyType))
  (=
    (get_basic<PyType> (as MySpecialException<PyType>  PyType))
    (as MySpecialException<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as MyOtherException<PyType>  PyType) (as Exception<PyType>  PyType))
  (=
    (get_basic<PyType> (as MyOtherException<PyType>  PyType))
    (as MyOtherException<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as ParameterizedException<PyType>  PyType) (as Exception<PyType>  PyType))
  (=
    (get_basic<PyType> (as ParameterizedException<PyType>  PyType))
    (as ParameterizedException<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as Container<PyType>  PyType) (as object<PyType>  PyType))
  (=
    (get_basic<PyType> (as Container<PyType>  PyType))
    (as Container<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as ExceptionClass<PyType>  PyType) (as object<PyType>  PyType))
  (=
    (get_basic<PyType> (as ExceptionClass<PyType>  PyType))
    (as ExceptionClass<PyType>  PyType))))
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
; ---------- FUNCTION tuple___val__----------
(declare-fun self@0@00 () $Ref)
(declare-fun result@1@00 () Seq<$Ref>)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (= (tuple___val__%limited s@$ self@0@00) (tuple___val__ s@$ self@0@00))
  :pattern ((tuple___val__ s@$ self@0@00))
  :qid |quant-u-4552|)))
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (tuple___val__%stateless self@0@00)
  :pattern ((tuple___val__%limited s@$ self@0@00))
  :qid |quant-u-4553|)))
; ---------- FUNCTION str___val__----------
(declare-fun self@2@00 () $Ref)
(declare-fun result@3@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (= (str___val__%limited s@$ self@2@00) (str___val__ s@$ self@2@00))
  :pattern ((str___val__ s@$ self@2@00))
  :qid |quant-u-4554|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (str___val__%stateless self@2@00)
  :pattern ((str___val__%limited s@$ self@2@00))
  :qid |quant-u-4555|)))
; ---------- FUNCTION str___len__----------
(declare-fun self@4@00 () $Ref)
(declare-fun result@5@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@50@00 $Snap)
(assert (= $t@50@00 $Snap.unit))
; [eval] result >= 0
(assert (>= result@5@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@4@00 $Ref)) (!
  (= (str___len__%limited s@$ self@4@00) (str___len__ s@$ self@4@00))
  :pattern ((str___len__ s@$ self@4@00))
  :qid |quant-u-4556|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref)) (!
  (str___len__%stateless self@4@00)
  :pattern ((str___len__%limited s@$ self@4@00))
  :qid |quant-u-4557|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref)) (!
  (let ((result@5@00 (str___len__%limited s@$ self@4@00))) (=>
    (str___len__%precondition s@$ self@4@00)
    (>= result@5@00 0)))
  :pattern ((str___len__%limited s@$ self@4@00))
  :qid |quant-u-4596|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref)) (!
  (let ((result@5@00 (str___len__%limited s@$ self@4@00))) true)
  :pattern ((str___len__%limited s@$ self@4@00))
  :qid |quant-u-4597|)))
; ---------- FUNCTION tuple___len__----------
(declare-fun self@6@00 () $Ref)
(declare-fun result@7@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@51@00 $Snap)
(assert (= $t@51@00 ($Snap.combine ($Snap.first $t@51@00) ($Snap.second $t@51@00))))
(assert (= ($Snap.first $t@51@00) $Snap.unit))
; [eval] result == |tuple_args(typeof(self))|
; [eval] |tuple_args(typeof(self))|
; [eval] tuple_args(typeof(self))
; [eval] typeof(self)
(assert (= result@7@00 (Seq_length (tuple_args<Seq<PyType>> (typeof<PyType> self@6@00)))))
(assert (= ($Snap.second $t@51@00) $Snap.unit))
; [eval] result == |tuple___val__(self)|
; [eval] |tuple___val__(self)|
; [eval] tuple___val__(self)
(push) ; 2
(assert (tuple___val__%precondition $Snap.unit self@6@00))
(pop) ; 2
; Joined path conditions
(assert (tuple___val__%precondition $Snap.unit self@6@00))
(assert (= result@7@00 (Seq_length (tuple___val__ $Snap.unit self@6@00))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@6@00 $Ref)) (!
  (= (tuple___len__%limited s@$ self@6@00) (tuple___len__ s@$ self@6@00))
  :pattern ((tuple___len__ s@$ self@6@00))
  :qid |quant-u-4558|)))
(assert (forall ((s@$ $Snap) (self@6@00 $Ref)) (!
  (tuple___len__%stateless self@6@00)
  :pattern ((tuple___len__%limited s@$ self@6@00))
  :qid |quant-u-4559|)))
(assert (forall ((s@$ $Snap) (self@6@00 $Ref)) (!
  (let ((result@7@00 (tuple___len__%limited s@$ self@6@00))) (=>
    (tuple___len__%precondition s@$ self@6@00)
    (and
      (=
        result@7@00
        (Seq_length (tuple_args<Seq<PyType>> (typeof<PyType> self@6@00))))
      (= result@7@00 (Seq_length (tuple___val__ $Snap.unit self@6@00))))))
  :pattern ((tuple___len__%limited s@$ self@6@00))
  :qid |quant-u-4598|)))
(assert (forall ((s@$ $Snap) (self@6@00 $Ref)) (!
  (let ((result@7@00 (tuple___len__%limited s@$ self@6@00))) true)
  :pattern ((tuple___len__%limited s@$ self@6@00))
  :qid |quant-u-4599|)))
(assert (forall ((s@$ $Snap) (self@6@00 $Ref)) (!
  (let ((result@7@00 (tuple___len__%limited s@$ self@6@00))) (=>
    (tuple___len__%precondition s@$ self@6@00)
    (tuple___val__%precondition $Snap.unit self@6@00)))
  :pattern ((tuple___len__%limited s@$ self@6@00))
  :qid |quant-u-4600|)))
; ---------- FUNCTION _isDefined----------
(declare-fun id@8@00 () Int)
(declare-fun result@9@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (id@8@00 Int)) (!
  (= (_isDefined%limited s@$ id@8@00) (_isDefined s@$ id@8@00))
  :pattern ((_isDefined s@$ id@8@00))
  :qid |quant-u-4560|)))
(assert (forall ((s@$ $Snap) (id@8@00 Int)) (!
  (_isDefined%stateless id@8@00)
  :pattern ((_isDefined%limited s@$ id@8@00))
  :qid |quant-u-4561|)))
; ---------- FUNCTION bool___unbox__----------
(declare-fun box@10@00 () $Ref)
(declare-fun result@11@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(assert (issubtype<Bool> (typeof<PyType> box@10@00) (as bool<PyType>  PyType)))
(declare-const $t@52@00 $Snap)
(assert (= $t@52@00 $Snap.unit))
; [eval] __prim__bool___box__(result) == box
; [eval] __prim__bool___box__(result)
(push) ; 2
(assert (__prim__bool___box__%precondition $Snap.unit result@11@00))
(pop) ; 2
; Joined path conditions
(assert (__prim__bool___box__%precondition $Snap.unit result@11@00))
(assert (= (__prim__bool___box__ $Snap.unit result@11@00) box@10@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (box@10@00 $Ref)) (!
  (= (bool___unbox__%limited s@$ box@10@00) (bool___unbox__ s@$ box@10@00))
  :pattern ((bool___unbox__ s@$ box@10@00))
  :qid |quant-u-4562|)))
(assert (forall ((s@$ $Snap) (box@10@00 $Ref)) (!
  (bool___unbox__%stateless box@10@00)
  :pattern ((bool___unbox__%limited s@$ box@10@00))
  :qid |quant-u-4563|)))
(assert (forall ((s@$ $Snap) (box@10@00 $Ref)) (!
  (let ((result@11@00 (bool___unbox__%limited s@$ box@10@00))) (=>
    (bool___unbox__%precondition s@$ box@10@00)
    (= (__prim__bool___box__%limited $Snap.unit result@11@00) box@10@00)))
  :pattern ((bool___unbox__%limited s@$ box@10@00))
  :qid |quant-u-4601|)))
(assert (forall ((s@$ $Snap) (box@10@00 $Ref)) (!
  (let ((result@11@00 (bool___unbox__%limited s@$ box@10@00))) (=>
    (bool___unbox__%precondition s@$ box@10@00)
    (__prim__bool___box__%precondition $Snap.unit result@11@00)))
  :pattern ((bool___unbox__%limited s@$ box@10@00))
  :qid |quant-u-4602|)))
; ---------- FUNCTION __prim__bool___box__----------
(declare-fun prim@12@00 () Bool)
(declare-fun result@13@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@53@00 $Snap)
(assert (= $t@53@00 ($Snap.combine ($Snap.first $t@53@00) ($Snap.second $t@53@00))))
(assert (= ($Snap.first $t@53@00) $Snap.unit))
; [eval] typeof(result) == bool()
; [eval] typeof(result)
; [eval] bool()
(assert (= (typeof<PyType> result@13@00) (as bool<PyType>  PyType)))
(assert (=
  ($Snap.second $t@53@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@53@00))
    ($Snap.second ($Snap.second $t@53@00)))))
(assert (= ($Snap.first ($Snap.second $t@53@00)) $Snap.unit))
; [eval] bool___unbox__(result) == prim
; [eval] bool___unbox__(result)
(push) ; 2
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> result@13@00) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> result@13@00) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit result@13@00))
(pop) ; 2
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> result@13@00) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit result@13@00)))
(assert (= (bool___unbox__ $Snap.unit result@13@00) prim@12@00))
(assert (= ($Snap.second ($Snap.second $t@53@00)) $Snap.unit))
; [eval] int___unbox__(result) == (prim ? 1 : 0)
; [eval] int___unbox__(result)
(push) ; 2
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> result@13@00) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> result@13@00) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit result@13@00))
(pop) ; 2
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> result@13@00) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit result@13@00)))
; [eval] (prim ? 1 : 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not prim@12@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not prim@12@00))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | prim@12@00 | live]
; [else-branch: 0 | !(prim@12@00) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | prim@12@00]
(assert prim@12@00)
(pop) ; 3
(push) ; 3
; [else-branch: 0 | !(prim@12@00)]
(assert (not prim@12@00))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not prim@12@00) prim@12@00))
(assert (= (int___unbox__ $Snap.unit result@13@00) (ite prim@12@00 1 0)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (prim@12@00 Bool)) (!
  (=
    (__prim__bool___box__%limited s@$ prim@12@00)
    (__prim__bool___box__ s@$ prim@12@00))
  :pattern ((__prim__bool___box__ s@$ prim@12@00))
  :qid |quant-u-4564|)))
(assert (forall ((s@$ $Snap) (prim@12@00 Bool)) (!
  (__prim__bool___box__%stateless prim@12@00)
  :pattern ((__prim__bool___box__%limited s@$ prim@12@00))
  :qid |quant-u-4565|)))
(assert (forall ((s@$ $Snap) (prim@12@00 Bool)) (!
  (let ((result@13@00 (__prim__bool___box__%limited s@$ prim@12@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@12@00)
    (and
      (= (typeof<PyType> result@13@00) (as bool<PyType>  PyType))
      (= (bool___unbox__%limited $Snap.unit result@13@00) prim@12@00)
      (= (int___unbox__%limited $Snap.unit result@13@00) (ite prim@12@00 1 0)))))
  :pattern ((__prim__bool___box__%limited s@$ prim@12@00))
  :qid |quant-u-4603|)))
(assert (forall ((s@$ $Snap) (prim@12@00 Bool)) (!
  (let ((result@13@00 (__prim__bool___box__%limited s@$ prim@12@00))) true)
  :pattern ((__prim__bool___box__%limited s@$ prim@12@00))
  :qid |quant-u-4604|)))
(assert (forall ((s@$ $Snap) (prim@12@00 Bool)) (!
  (let ((result@13@00 (__prim__bool___box__%limited s@$ prim@12@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@12@00)
    (bool___unbox__%precondition $Snap.unit result@13@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@12@00))
  :qid |quant-u-4605|)))
(assert (forall ((s@$ $Snap) (prim@12@00 Bool)) (!
  (let ((result@13@00 (__prim__bool___box__%limited s@$ prim@12@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@12@00)
    (int___unbox__%precondition $Snap.unit result@13@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@12@00))
  :qid |quant-u-4606|)))
; ---------- FUNCTION int___unbox__----------
(declare-fun box@14@00 () $Ref)
(declare-fun result@15@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> box@14@00) (as int<PyType>  PyType)))
(declare-const $t@54@00 $Snap)
(assert (= $t@54@00 ($Snap.combine ($Snap.first $t@54@00) ($Snap.second $t@54@00))))
(assert (= ($Snap.first $t@54@00) $Snap.unit))
; [eval] !issubtype(typeof(box), bool()) ==> __prim__int___box__(result) == box
; [eval] !issubtype(typeof(box), bool())
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | !(issubtype[Bool](typeof[PyType](box@14@00), bool[PyType])) | live]
; [else-branch: 1 | issubtype[Bool](typeof[PyType](box@14@00), bool[PyType]) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | !(issubtype[Bool](typeof[PyType](box@14@00), bool[PyType]))]
(assert (not (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType))))
; [eval] __prim__int___box__(result) == box
; [eval] __prim__int___box__(result)
(push) ; 4
(assert (__prim__int___box__%precondition $Snap.unit result@15@00))
(pop) ; 4
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit result@15@00))
(pop) ; 3
(push) ; 3
; [else-branch: 1 | issubtype[Bool](typeof[PyType](box@14@00), bool[PyType])]
(assert (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (=>
  (not (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType)))
  (and
    (not (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType)))
    (__prim__int___box__%precondition $Snap.unit result@15@00))))
; Joined path conditions
(assert (or
  (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType))
  (not (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType)))))
(assert (=>
  (not (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType)))
  (= (__prim__int___box__ $Snap.unit result@15@00) box@14@00)))
(assert (= ($Snap.second $t@54@00) $Snap.unit))
; [eval] issubtype(typeof(box), bool()) ==> __prim__bool___box__(result != 0) == box
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | issubtype[Bool](typeof[PyType](box@14@00), bool[PyType]) | live]
; [else-branch: 2 | !(issubtype[Bool](typeof[PyType](box@14@00), bool[PyType])) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 2 | issubtype[Bool](typeof[PyType](box@14@00), bool[PyType])]
(assert (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType)))
; [eval] __prim__bool___box__(result != 0) == box
; [eval] __prim__bool___box__(result != 0)
; [eval] result != 0
(push) ; 4
(assert (__prim__bool___box__%precondition $Snap.unit (not (= result@15@00 0))))
(pop) ; 4
; Joined path conditions
(assert (__prim__bool___box__%precondition $Snap.unit (not (= result@15@00 0))))
(pop) ; 3
(push) ; 3
; [else-branch: 2 | !(issubtype[Bool](typeof[PyType](box@14@00), bool[PyType]))]
(assert (not (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType))))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType))
    (__prim__bool___box__%precondition $Snap.unit (not (= result@15@00 0))))))
; Joined path conditions
(assert (or
  (not (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType)))
  (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType))))
(assert (=>
  (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType))
  (= (__prim__bool___box__ $Snap.unit (not (= result@15@00 0))) box@14@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (box@14@00 $Ref)) (!
  (= (int___unbox__%limited s@$ box@14@00) (int___unbox__ s@$ box@14@00))
  :pattern ((int___unbox__ s@$ box@14@00))
  :qid |quant-u-4566|)))
(assert (forall ((s@$ $Snap) (box@14@00 $Ref)) (!
  (int___unbox__%stateless box@14@00)
  :pattern ((int___unbox__%limited s@$ box@14@00))
  :qid |quant-u-4567|)))
(assert (forall ((s@$ $Snap) (box@14@00 $Ref)) (!
  (let ((result@15@00 (int___unbox__%limited s@$ box@14@00))) (=>
    (int___unbox__%precondition s@$ box@14@00)
    (and
      (=>
        (not
          (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType)))
        (= (__prim__int___box__%limited $Snap.unit result@15@00) box@14@00))
      (=>
        (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType))
        (=
          (__prim__bool___box__%limited $Snap.unit (not (= result@15@00 0)))
          box@14@00)))))
  :pattern ((int___unbox__%limited s@$ box@14@00))
  :qid |quant-u-4607|)))
(assert (forall ((s@$ $Snap) (box@14@00 $Ref)) (!
  (let ((result@15@00 (int___unbox__%limited s@$ box@14@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@14@00)
      (not
        (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType))))
    (__prim__int___box__%precondition $Snap.unit result@15@00)))
  :pattern ((int___unbox__%limited s@$ box@14@00))
  :qid |quant-u-4608|)))
(assert (forall ((s@$ $Snap) (box@14@00 $Ref)) (!
  (let ((result@15@00 (int___unbox__%limited s@$ box@14@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@14@00)
      (issubtype<Bool> (typeof<PyType> box@14@00) (as bool<PyType>  PyType)))
    (__prim__bool___box__%precondition $Snap.unit (not (= result@15@00 0)))))
  :pattern ((int___unbox__%limited s@$ box@14@00))
  :qid |quant-u-4609|)))
; ---------- FUNCTION __prim__int___box__----------
(declare-fun prim@16@00 () Int)
(declare-fun result@17@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@55@00 $Snap)
(assert (= $t@55@00 ($Snap.combine ($Snap.first $t@55@00) ($Snap.second $t@55@00))))
(assert (= ($Snap.first $t@55@00) $Snap.unit))
; [eval] typeof(result) == int()
; [eval] typeof(result)
; [eval] int()
(assert (= (typeof<PyType> result@17@00) (as int<PyType>  PyType)))
(assert (= ($Snap.second $t@55@00) $Snap.unit))
; [eval] int___unbox__(result) == prim
; [eval] int___unbox__(result)
(push) ; 2
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> result@17@00) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> result@17@00) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit result@17@00))
(pop) ; 2
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> result@17@00) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit result@17@00)))
(assert (= (int___unbox__ $Snap.unit result@17@00) prim@16@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (prim@16@00 Int)) (!
  (=
    (__prim__int___box__%limited s@$ prim@16@00)
    (__prim__int___box__ s@$ prim@16@00))
  :pattern ((__prim__int___box__ s@$ prim@16@00))
  :qid |quant-u-4568|)))
(assert (forall ((s@$ $Snap) (prim@16@00 Int)) (!
  (__prim__int___box__%stateless prim@16@00)
  :pattern ((__prim__int___box__%limited s@$ prim@16@00))
  :qid |quant-u-4569|)))
(assert (forall ((s@$ $Snap) (prim@16@00 Int)) (!
  (let ((result@17@00 (__prim__int___box__%limited s@$ prim@16@00))) (=>
    (__prim__int___box__%precondition s@$ prim@16@00)
    (and
      (= (typeof<PyType> result@17@00) (as int<PyType>  PyType))
      (= (int___unbox__%limited $Snap.unit result@17@00) prim@16@00))))
  :pattern ((__prim__int___box__%limited s@$ prim@16@00))
  :qid |quant-u-4610|)))
(assert (forall ((s@$ $Snap) (prim@16@00 Int)) (!
  (let ((result@17@00 (__prim__int___box__%limited s@$ prim@16@00))) true)
  :pattern ((__prim__int___box__%limited s@$ prim@16@00))
  :qid |quant-u-4611|)))
(assert (forall ((s@$ $Snap) (prim@16@00 Int)) (!
  (let ((result@17@00 (__prim__int___box__%limited s@$ prim@16@00))) (=>
    (__prim__int___box__%precondition s@$ prim@16@00)
    (int___unbox__%precondition $Snap.unit result@17@00)))
  :pattern ((__prim__int___box__%limited s@$ prim@16@00))
  :qid |quant-u-4612|)))
; ---------- FUNCTION Level----------
(declare-fun r@18@00 () $Ref)
(declare-fun result@19@00 () $Perm)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (r@18@00 $Ref)) (!
  (= (Level%limited s@$ r@18@00) (Level s@$ r@18@00))
  :pattern ((Level s@$ r@18@00))
  :qid |quant-u-4570|)))
(assert (forall ((s@$ $Snap) (r@18@00 $Ref)) (!
  (Level%stateless r@18@00)
  :pattern ((Level%limited s@$ r@18@00))
  :qid |quant-u-4571|)))
; ---------- FUNCTION object___eq__----------
(declare-fun self@20@00 () $Ref)
(declare-fun other@21@00 () $Ref)
(declare-fun result@22@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@56@00 $Snap)
(assert (= $t@56@00 ($Snap.combine ($Snap.first $t@56@00) ($Snap.second $t@56@00))))
(assert (= ($Snap.first $t@56@00) $Snap.unit))
; [eval] self == other ==> result
; [eval] self == other
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= self@20@00 other@21@00))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= self@20@00 other@21@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | self@20@00 == other@21@00 | live]
; [else-branch: 3 | self@20@00 != other@21@00 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 3 | self@20@00 == other@21@00]
(assert (= self@20@00 other@21@00))
(pop) ; 3
(push) ; 3
; [else-branch: 3 | self@20@00 != other@21@00]
(assert (not (= self@20@00 other@21@00)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not (= self@20@00 other@21@00)) (= self@20@00 other@21@00)))
(assert (=> (= self@20@00 other@21@00) result@22@00))
(assert (= ($Snap.second $t@56@00) $Snap.unit))
; [eval] (self == null) != (other == null) ==> !result
; [eval] (self == null) != (other == null)
; [eval] self == null
; [eval] other == null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (= (= self@20@00 $Ref.null) (= other@21@00 $Ref.null))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= (= self@20@00 $Ref.null) (= other@21@00 $Ref.null)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | self@20@00 == Null != other@21@00 == Null | live]
; [else-branch: 4 | self@20@00 == Null == other@21@00 == Null | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 4 | self@20@00 == Null != other@21@00 == Null]
(assert (not (= (= self@20@00 $Ref.null) (= other@21@00 $Ref.null))))
; [eval] !result
(pop) ; 3
(push) ; 3
; [else-branch: 4 | self@20@00 == Null == other@21@00 == Null]
(assert (= (= self@20@00 $Ref.null) (= other@21@00 $Ref.null)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or
  (= (= self@20@00 $Ref.null) (= other@21@00 $Ref.null))
  (not (= (= self@20@00 $Ref.null) (= other@21@00 $Ref.null)))))
(assert (=>
  (not (= (= self@20@00 $Ref.null) (= other@21@00 $Ref.null)))
  (not result@22@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@20@00 $Ref) (other@21@00 $Ref)) (!
  (=
    (object___eq__%limited s@$ self@20@00 other@21@00)
    (object___eq__ s@$ self@20@00 other@21@00))
  :pattern ((object___eq__ s@$ self@20@00 other@21@00))
  :qid |quant-u-4572|)))
(assert (forall ((s@$ $Snap) (self@20@00 $Ref) (other@21@00 $Ref)) (!
  (object___eq__%stateless self@20@00 other@21@00)
  :pattern ((object___eq__%limited s@$ self@20@00 other@21@00))
  :qid |quant-u-4573|)))
(assert (forall ((s@$ $Snap) (self@20@00 $Ref) (other@21@00 $Ref)) (!
  (let ((result@22@00 (object___eq__%limited s@$ self@20@00 other@21@00))) (=>
    (object___eq__%precondition s@$ self@20@00 other@21@00)
    (and
      (=> (= self@20@00 other@21@00) result@22@00)
      (=>
        (not (= (= self@20@00 $Ref.null) (= other@21@00 $Ref.null)))
        (not result@22@00)))))
  :pattern ((object___eq__%limited s@$ self@20@00 other@21@00))
  :qid |quant-u-4613|)))
(assert (forall ((s@$ $Snap) (self@20@00 $Ref) (other@21@00 $Ref)) (!
  (let ((result@22@00 (object___eq__%limited s@$ self@20@00 other@21@00))) true)
  :pattern ((object___eq__%limited s@$ self@20@00 other@21@00))
  :qid |quant-u-4614|)))
(assert (forall ((s@$ $Snap) (self@20@00 $Ref) (other@21@00 $Ref)) (!
  (let ((result@22@00 (object___eq__%limited s@$ self@20@00 other@21@00))) true)
  :pattern ((object___eq__%limited s@$ self@20@00 other@21@00))
  :qid |quant-u-4615|)))
; ---------- FUNCTION str___create__----------
(declare-fun len@23@00 () Int)
(declare-fun value@24@00 () Int)
(declare-fun result@25@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@57@00 $Snap)
(assert (= $t@57@00 ($Snap.combine ($Snap.first $t@57@00) ($Snap.second $t@57@00))))
(assert (= ($Snap.first $t@57@00) $Snap.unit))
; [eval] str___len__(result) == len
; [eval] str___len__(result)
(push) ; 2
(assert (str___len__%precondition $Snap.unit result@25@00))
(pop) ; 2
; Joined path conditions
(assert (str___len__%precondition $Snap.unit result@25@00))
(assert (= (str___len__ $Snap.unit result@25@00) len@23@00))
(assert (=
  ($Snap.second $t@57@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@57@00))
    ($Snap.second ($Snap.second $t@57@00)))))
(assert (= ($Snap.first ($Snap.second $t@57@00)) $Snap.unit))
; [eval] str___val__(result) == value
; [eval] str___val__(result)
(push) ; 2
(assert (str___val__%precondition $Snap.unit result@25@00))
(pop) ; 2
; Joined path conditions
(assert (str___val__%precondition $Snap.unit result@25@00))
(assert (= (str___val__ $Snap.unit result@25@00) value@24@00))
(assert (= ($Snap.second ($Snap.second $t@57@00)) $Snap.unit))
; [eval] typeof(result) == str()
; [eval] typeof(result)
; [eval] str()
(assert (= (typeof<PyType> result@25@00) (as str<PyType>  PyType)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (len@23@00 Int) (value@24@00 Int)) (!
  (=
    (str___create__%limited s@$ len@23@00 value@24@00)
    (str___create__ s@$ len@23@00 value@24@00))
  :pattern ((str___create__ s@$ len@23@00 value@24@00))
  :qid |quant-u-4574|)))
(assert (forall ((s@$ $Snap) (len@23@00 Int) (value@24@00 Int)) (!
  (str___create__%stateless len@23@00 value@24@00)
  :pattern ((str___create__%limited s@$ len@23@00 value@24@00))
  :qid |quant-u-4575|)))
(assert (forall ((s@$ $Snap) (len@23@00 Int) (value@24@00 Int)) (!
  (let ((result@25@00 (str___create__%limited s@$ len@23@00 value@24@00))) (=>
    (str___create__%precondition s@$ len@23@00 value@24@00)
    (and
      (= (str___len__ $Snap.unit result@25@00) len@23@00)
      (= (str___val__ $Snap.unit result@25@00) value@24@00)
      (= (typeof<PyType> result@25@00) (as str<PyType>  PyType)))))
  :pattern ((str___create__%limited s@$ len@23@00 value@24@00))
  :qid |quant-u-4616|)))
(assert (forall ((s@$ $Snap) (len@23@00 Int) (value@24@00 Int)) (!
  (let ((result@25@00 (str___create__%limited s@$ len@23@00 value@24@00))) (=>
    (str___create__%precondition s@$ len@23@00 value@24@00)
    (str___len__%precondition $Snap.unit result@25@00)))
  :pattern ((str___create__%limited s@$ len@23@00 value@24@00))
  :qid |quant-u-4617|)))
(assert (forall ((s@$ $Snap) (len@23@00 Int) (value@24@00 Int)) (!
  (let ((result@25@00 (str___create__%limited s@$ len@23@00 value@24@00))) (=>
    (str___create__%precondition s@$ len@23@00 value@24@00)
    (str___val__%precondition $Snap.unit result@25@00)))
  :pattern ((str___create__%limited s@$ len@23@00 value@24@00))
  :qid |quant-u-4618|)))
(assert (forall ((s@$ $Snap) (len@23@00 Int) (value@24@00 Int)) (!
  (let ((result@25@00 (str___create__%limited s@$ len@23@00 value@24@00))) true)
  :pattern ((str___create__%limited s@$ len@23@00 value@24@00))
  :qid |quant-u-4619|)))
; ---------- FUNCTION str___eq__----------
(declare-fun self@26@00 () $Ref)
(declare-fun other@27@00 () $Ref)
(declare-fun result@28@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] issubtype(typeof(self), str())
; [eval] typeof(self)
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> self@26@00) (as str<PyType>  PyType)))
(declare-const $t@58@00 $Snap)
(assert (= $t@58@00 ($Snap.combine ($Snap.first $t@58@00) ($Snap.second $t@58@00))))
(assert (= ($Snap.first $t@58@00) $Snap.unit))
; [eval] (str___val__(self) == str___val__(other)) == result
; [eval] str___val__(self) == str___val__(other)
; [eval] str___val__(self)
(push) ; 2
(assert (str___val__%precondition $Snap.unit self@26@00))
(pop) ; 2
; Joined path conditions
(assert (str___val__%precondition $Snap.unit self@26@00))
; [eval] str___val__(other)
(push) ; 2
(assert (str___val__%precondition $Snap.unit other@27@00))
(pop) ; 2
; Joined path conditions
(assert (str___val__%precondition $Snap.unit other@27@00))
(assert (=
  (= (str___val__ $Snap.unit self@26@00) (str___val__ $Snap.unit other@27@00))
  result@28@00))
(assert (= ($Snap.second $t@58@00) $Snap.unit))
; [eval] result ==> str___len__(self) == str___len__(other)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not result@28@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not result@28@00))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | result@28@00 | live]
; [else-branch: 5 | !(result@28@00) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 5 | result@28@00]
(assert result@28@00)
; [eval] str___len__(self) == str___len__(other)
; [eval] str___len__(self)
(push) ; 4
(assert (str___len__%precondition $Snap.unit self@26@00))
(pop) ; 4
; Joined path conditions
(assert (str___len__%precondition $Snap.unit self@26@00))
; [eval] str___len__(other)
(push) ; 4
(assert (str___len__%precondition $Snap.unit other@27@00))
(pop) ; 4
; Joined path conditions
(assert (str___len__%precondition $Snap.unit other@27@00))
(pop) ; 3
(push) ; 3
; [else-branch: 5 | !(result@28@00)]
(assert (not result@28@00))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (=>
  result@28@00
  (and
    result@28@00
    (str___len__%precondition $Snap.unit self@26@00)
    (str___len__%precondition $Snap.unit other@27@00))))
; Joined path conditions
(assert (or (not result@28@00) result@28@00))
(assert (=>
  result@28@00
  (= (str___len__ $Snap.unit self@26@00) (str___len__ $Snap.unit other@27@00))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@26@00 $Ref) (other@27@00 $Ref)) (!
  (=
    (str___eq__%limited s@$ self@26@00 other@27@00)
    (str___eq__ s@$ self@26@00 other@27@00))
  :pattern ((str___eq__ s@$ self@26@00 other@27@00))
  :qid |quant-u-4576|)))
(assert (forall ((s@$ $Snap) (self@26@00 $Ref) (other@27@00 $Ref)) (!
  (str___eq__%stateless self@26@00 other@27@00)
  :pattern ((str___eq__%limited s@$ self@26@00 other@27@00))
  :qid |quant-u-4577|)))
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
  :qid |quant-u-4620|)))
(assert (forall ((s@$ $Snap) (self@26@00 $Ref) (other@27@00 $Ref)) (!
  (let ((result@28@00 (str___eq__%limited s@$ self@26@00 other@27@00))) (=>
    (str___eq__%precondition s@$ self@26@00 other@27@00)
    (and
      (str___val__%precondition $Snap.unit self@26@00)
      (str___val__%precondition $Snap.unit other@27@00))))
  :pattern ((str___eq__%limited s@$ self@26@00 other@27@00))
  :qid |quant-u-4621|)))
(assert (forall ((s@$ $Snap) (self@26@00 $Ref) (other@27@00 $Ref)) (!
  (let ((result@28@00 (str___eq__%limited s@$ self@26@00 other@27@00))) (=>
    (and (str___eq__%precondition s@$ self@26@00 other@27@00) result@28@00)
    (and
      (str___len__%precondition $Snap.unit self@26@00)
      (str___len__%precondition $Snap.unit other@27@00))))
  :pattern ((str___eq__%limited s@$ self@26@00 other@27@00))
  :qid |quant-u-4622|)))
; ---------- FUNCTION int___gt__----------
(declare-fun self@29@00 () Int)
(declare-fun other@30@00 () Int)
(declare-fun result@31@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@29@00 Int) (other@30@00 Int)) (!
  (=
    (int___gt__%limited s@$ self@29@00 other@30@00)
    (int___gt__ s@$ self@29@00 other@30@00))
  :pattern ((int___gt__ s@$ self@29@00 other@30@00))
  :qid |quant-u-4578|)))
(assert (forall ((s@$ $Snap) (self@29@00 Int) (other@30@00 Int)) (!
  (int___gt__%stateless self@29@00 other@30@00)
  :pattern ((int___gt__%limited s@$ self@29@00 other@30@00))
  :qid |quant-u-4579|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] self > other
(assert (= result@31@00 (> self@29@00 other@30@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@29@00 Int) (other@30@00 Int)) (!
  (=>
    (int___gt__%precondition s@$ self@29@00 other@30@00)
    (= (int___gt__ s@$ self@29@00 other@30@00) (> self@29@00 other@30@00)))
  :pattern ((int___gt__ s@$ self@29@00 other@30@00))
  :qid |quant-u-4623|)))
(assert (forall ((s@$ $Snap) (self@29@00 Int) (other@30@00 Int)) (!
  true
  :pattern ((int___gt__ s@$ self@29@00 other@30@00))
  :qid |quant-u-4624|)))
; ---------- FUNCTION int___mul__----------
(declare-fun self@32@00 () Int)
(declare-fun other@33@00 () Int)
(declare-fun result@34@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@32@00 Int) (other@33@00 Int)) (!
  (=
    (int___mul__%limited s@$ self@32@00 other@33@00)
    (int___mul__ s@$ self@32@00 other@33@00))
  :pattern ((int___mul__ s@$ self@32@00 other@33@00))
  :qid |quant-u-4580|)))
(assert (forall ((s@$ $Snap) (self@32@00 Int) (other@33@00 Int)) (!
  (int___mul__%stateless self@32@00 other@33@00)
  :pattern ((int___mul__%limited s@$ self@32@00 other@33@00))
  :qid |quant-u-4581|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] self * other
(assert (= result@34@00 (* self@32@00 other@33@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@32@00 Int) (other@33@00 Int)) (!
  (=>
    (int___mul__%precondition s@$ self@32@00 other@33@00)
    (= (int___mul__ s@$ self@32@00 other@33@00) (* self@32@00 other@33@00)))
  :pattern ((int___mul__ s@$ self@32@00 other@33@00))
  :qid |quant-u-4625|)))
(assert (forall ((s@$ $Snap) (self@32@00 Int) (other@33@00 Int)) (!
  true
  :pattern ((int___mul__ s@$ self@32@00 other@33@00))
  :qid |quant-u-4626|)))
; ---------- FUNCTION int___add__----------
(declare-fun self@35@00 () Int)
(declare-fun other@36@00 () Int)
(declare-fun result@37@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@35@00 Int) (other@36@00 Int)) (!
  (=
    (int___add__%limited s@$ self@35@00 other@36@00)
    (int___add__ s@$ self@35@00 other@36@00))
  :pattern ((int___add__ s@$ self@35@00 other@36@00))
  :qid |quant-u-4582|)))
(assert (forall ((s@$ $Snap) (self@35@00 Int) (other@36@00 Int)) (!
  (int___add__%stateless self@35@00 other@36@00)
  :pattern ((int___add__%limited s@$ self@35@00 other@36@00))
  :qid |quant-u-4583|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] self + other
(assert (= result@37@00 (+ self@35@00 other@36@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@35@00 Int) (other@36@00 Int)) (!
  (=>
    (int___add__%precondition s@$ self@35@00 other@36@00)
    (= (int___add__ s@$ self@35@00 other@36@00) (+ self@35@00 other@36@00)))
  :pattern ((int___add__ s@$ self@35@00 other@36@00))
  :qid |quant-u-4627|)))
(assert (forall ((s@$ $Snap) (self@35@00 Int) (other@36@00 Int)) (!
  true
  :pattern ((int___add__ s@$ self@35@00 other@36@00))
  :qid |quant-u-4628|)))
; ---------- FUNCTION int___sub__----------
(declare-fun self@38@00 () Int)
(declare-fun other@39@00 () Int)
(declare-fun result@40@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@38@00 Int) (other@39@00 Int)) (!
  (=
    (int___sub__%limited s@$ self@38@00 other@39@00)
    (int___sub__ s@$ self@38@00 other@39@00))
  :pattern ((int___sub__ s@$ self@38@00 other@39@00))
  :qid |quant-u-4584|)))
(assert (forall ((s@$ $Snap) (self@38@00 Int) (other@39@00 Int)) (!
  (int___sub__%stateless self@38@00 other@39@00)
  :pattern ((int___sub__%limited s@$ self@38@00 other@39@00))
  :qid |quant-u-4585|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] self - other
(assert (= result@40@00 (- self@38@00 other@39@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@38@00 Int) (other@39@00 Int)) (!
  (=>
    (int___sub__%precondition s@$ self@38@00 other@39@00)
    (= (int___sub__ s@$ self@38@00 other@39@00) (- self@38@00 other@39@00)))
  :pattern ((int___sub__ s@$ self@38@00 other@39@00))
  :qid |quant-u-4629|)))
(assert (forall ((s@$ $Snap) (self@38@00 Int) (other@39@00 Int)) (!
  true
  :pattern ((int___sub__ s@$ self@38@00 other@39@00))
  :qid |quant-u-4630|)))
; ---------- FUNCTION tuple___create0__----------
(declare-fun result@41@00 () $Ref)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(declare-const $t@59@00 $Snap)
(assert (= $t@59@00 ($Snap.combine ($Snap.first $t@59@00) ($Snap.second $t@59@00))))
(assert (= ($Snap.first $t@59@00) $Snap.unit))
; [eval] result != null
(assert (not (= result@41@00 $Ref.null)))
(assert (=
  ($Snap.second $t@59@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@59@00))
    ($Snap.second ($Snap.second $t@59@00)))))
(assert (= ($Snap.first ($Snap.second $t@59@00)) $Snap.unit))
; [eval] typeof(result) == tuple(Seq[PyType]())
; [eval] typeof(result)
; [eval] tuple(Seq[PyType]())
; [eval] Seq[PyType]()
(assert (= (typeof<PyType> result@41@00) (tuple<PyType> (as Seq_empty  Seq<PyType>))))
(assert (=
  ($Snap.second ($Snap.second $t@59@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@59@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@59@00))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@59@00))) $Snap.unit))
; [eval] tuple___len__(result) == 0
; [eval] tuple___len__(result)
(push) ; 2
(assert (tuple___len__%precondition $Snap.unit result@41@00))
(pop) ; 2
; Joined path conditions
(assert (tuple___len__%precondition $Snap.unit result@41@00))
(assert (= (tuple___len__ $Snap.unit result@41@00) 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@59@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@59@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@00)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@59@00))))
  $Snap.unit))
; [eval] tuple_args(typeof(result)) == Seq[PyType]()
; [eval] tuple_args(typeof(result))
; [eval] typeof(result)
; [eval] Seq[PyType]()
(assert (Seq_equal
  (tuple_args<Seq<PyType>> (typeof<PyType> result@41@00))
  (as Seq_empty  Seq<PyType>)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@00))))
  $Snap.unit))
; [eval] tuple___val__(result) == Seq[Ref]()
; [eval] tuple___val__(result)
(push) ; 2
(assert (tuple___val__%precondition $Snap.unit result@41@00))
(pop) ; 2
; Joined path conditions
(assert (tuple___val__%precondition $Snap.unit result@41@00))
; [eval] Seq[Ref]()
(assert (Seq_equal (tuple___val__ $Snap.unit result@41@00) (as Seq_empty  Seq<$Ref>)))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (tuple___create0__%limited s@$) (tuple___create0__ s@$))
  :pattern ((tuple___create0__ s@$))
  :qid |quant-u-4586|)))
(assert (forall ((s@$ $Snap)) (!
  (as tuple___create0__%stateless  Bool)
  :pattern ((tuple___create0__%limited s@$))
  :qid |quant-u-4587|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@41@00 (tuple___create0__%limited s@$))) (=>
    (tuple___create0__%precondition s@$)
    (and
      (not (= result@41@00 $Ref.null))
      (=
        (typeof<PyType> result@41@00)
        (tuple<PyType> (as Seq_empty  Seq<PyType>)))
      (= (tuple___len__ $Snap.unit result@41@00) 0)
      (Seq_equal
        (tuple_args<Seq<PyType>> (typeof<PyType> result@41@00))
        (as Seq_empty  Seq<PyType>))
      (Seq_equal
        (tuple___val__ $Snap.unit result@41@00)
        (as Seq_empty  Seq<$Ref>)))))
  :pattern ((tuple___create0__%limited s@$))
  :qid |quant-u-4631|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@41@00 (tuple___create0__%limited s@$))) true)
  :pattern ((tuple___create0__%limited s@$))
  :qid |quant-u-4632|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@41@00 (tuple___create0__%limited s@$))) true)
  :pattern ((tuple___create0__%limited s@$))
  :qid |quant-u-4633|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@41@00 (tuple___create0__%limited s@$))) (=>
    (tuple___create0__%precondition s@$)
    (tuple___len__%precondition $Snap.unit result@41@00)))
  :pattern ((tuple___create0__%limited s@$))
  :qid |quant-u-4634|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@41@00 (tuple___create0__%limited s@$))) true)
  :pattern ((tuple___create0__%limited s@$))
  :qid |quant-u-4635|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@41@00 (tuple___create0__%limited s@$))) (=>
    (tuple___create0__%precondition s@$)
    (tuple___val__%precondition $Snap.unit result@41@00)))
  :pattern ((tuple___create0__%limited s@$))
  :qid |quant-u-4636|)))
; ---------- FUNCTION __file__----------
(declare-fun result@42@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (__file__%limited s@$) (__file__ s@$))
  :pattern ((__file__ s@$))
  :qid |quant-u-4588|)))
(assert (forall ((s@$ $Snap)) (!
  (as __file__%stateless  Bool)
  :pattern ((__file__%limited s@$))
  :qid |quant-u-4589|)))
; ---------- FUNCTION _checkDefined----------
(declare-fun val@43@00 () $Ref)
(declare-fun id@44@00 () Int)
(declare-fun result@45@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] _isDefined(id)
(push) ; 2
(assert (_isDefined%precondition $Snap.unit id@44@00))
(pop) ; 2
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit id@44@00))
(assert (_isDefined $Snap.unit id@44@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (val@43@00 $Ref) (id@44@00 Int)) (!
  (=
    (_checkDefined%limited s@$ val@43@00 id@44@00)
    (_checkDefined s@$ val@43@00 id@44@00))
  :pattern ((_checkDefined s@$ val@43@00 id@44@00))
  :qid |quant-u-4590|)))
(assert (forall ((s@$ $Snap) (val@43@00 $Ref) (id@44@00 Int)) (!
  (_checkDefined%stateless val@43@00 id@44@00)
  :pattern ((_checkDefined%limited s@$ val@43@00 id@44@00))
  :qid |quant-u-4591|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert (_isDefined%precondition $Snap.unit id@44@00))
(assert (_isDefined $Snap.unit id@44@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@45@00 val@43@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (val@43@00 $Ref) (id@44@00 Int)) (!
  (=>
    (_checkDefined%precondition s@$ val@43@00 id@44@00)
    (= (_checkDefined s@$ val@43@00 id@44@00) val@43@00))
  :pattern ((_checkDefined s@$ val@43@00 id@44@00))
  :qid |quant-u-4637|)))
(assert (forall ((s@$ $Snap) (val@43@00 $Ref) (id@44@00 Int)) (!
  true
  :pattern ((_checkDefined s@$ val@43@00 id@44@00))
  :qid |quant-u-4638|)))
; ---------- FUNCTION int___eq__----------
(declare-fun self@46@00 () $Ref)
(declare-fun other@47@00 () $Ref)
(declare-fun result@48@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> self@46@00) (as int<PyType>  PyType)))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> other@47@00) (as int<PyType>  PyType)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@46@00 $Ref) (other@47@00 $Ref)) (!
  (=
    (int___eq__%limited s@$ self@46@00 other@47@00)
    (int___eq__ s@$ self@46@00 other@47@00))
  :pattern ((int___eq__ s@$ self@46@00 other@47@00))
  :qid |quant-u-4592|)))
(assert (forall ((s@$ $Snap) (self@46@00 $Ref) (other@47@00 $Ref)) (!
  (int___eq__%stateless self@46@00 other@47@00)
  :pattern ((int___eq__%limited s@$ self@46@00 other@47@00))
  :qid |quant-u-4593|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (issubtype<Bool> (typeof<PyType> self@46@00) (as int<PyType>  PyType)))
(assert (= ($Snap.second s@$) $Snap.unit))
(assert (issubtype<Bool> (typeof<PyType> other@47@00) (as int<PyType>  PyType)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] int___unbox__(self) == int___unbox__(other)
; [eval] int___unbox__(self)
(set-option :timeout 0)
(push) ; 2
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit self@46@00))
(pop) ; 2
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit self@46@00))
; [eval] int___unbox__(other)
(push) ; 2
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit other@47@00))
(pop) ; 2
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit other@47@00))
(assert (=
  result@48@00
  (=
    (int___unbox__ $Snap.unit self@46@00)
    (int___unbox__ $Snap.unit other@47@00))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@46@00 $Ref) (other@47@00 $Ref)) (!
  (=>
    (int___eq__%precondition s@$ self@46@00 other@47@00)
    (=
      (int___eq__ s@$ self@46@00 other@47@00)
      (=
        (int___unbox__ $Snap.unit self@46@00)
        (int___unbox__ $Snap.unit other@47@00))))
  :pattern ((int___eq__ s@$ self@46@00 other@47@00))
  :qid |quant-u-4639|)))
(assert (forall ((s@$ $Snap) (self@46@00 $Ref) (other@47@00 $Ref)) (!
  (=>
    (int___eq__%precondition s@$ self@46@00 other@47@00)
    (and
      (int___unbox__%precondition $Snap.unit self@46@00)
      (int___unbox__%precondition $Snap.unit other@47@00)))
  :pattern ((int___eq__ s@$ self@46@00 other@47@00))
  :qid |quant-u-4640|)))
; ---------- FUNCTION __name__----------
(declare-fun result@49@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (__name__%limited s@$) (__name__ s@$))
  :pattern ((__name__ s@$))
  :qid |quant-u-4594|)))
(assert (forall ((s@$ $Snap)) (!
  (as __name__%stateless  Bool)
  :pattern ((__name__%limited s@$))
  :qid |quant-u-4595|)))
; ---------- MustTerminate ----------
(declare-const r@60@00 $Ref)
; ---------- MustInvokeBounded ----------
(declare-const r@61@00 $Ref)
; ---------- MustInvokeUnbounded ----------
(declare-const r@62@00 $Ref)
; ---------- _MaySet ----------
(declare-const rec@63@00 $Ref)
(declare-const id@64@00 Int)
