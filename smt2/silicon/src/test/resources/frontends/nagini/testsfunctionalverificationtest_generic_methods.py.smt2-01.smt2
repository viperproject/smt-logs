(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-04 00:24:28
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
(declare-sort SIFDomain<Ref> 0)
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
(declare-fun $SortWrappers.SIFDomain<Ref>To$Snap (SIFDomain<Ref>) $Snap)
(declare-fun $SortWrappers.$SnapToSIFDomain<Ref> ($Snap) SIFDomain<Ref>)
(assert (forall ((x SIFDomain<Ref>)) (!
    (= x ($SortWrappers.$SnapToSIFDomain<Ref>($SortWrappers.SIFDomain<Ref>To$Snap x)))
    :pattern (($SortWrappers.SIFDomain<Ref>To$Snap x))
    :qid |$Snap.$SnapToSIFDomain<Ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.SIFDomain<Ref>To$Snap($SortWrappers.$SnapToSIFDomain<Ref> x)))
    :pattern (($SortWrappers.$SnapToSIFDomain<Ref> x))
    :qid |$Snap.SIFDomain<Ref>To$SnapToSIFDomain<Ref>|
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
(declare-const Container<PyType> PyType)
(declare-const A_basic<PyType> PyType)
(declare-fun A<PyType> (PyType) PyType)
(declare-fun A_arg<PyType> (PyType Int) PyType)
(declare-const B_basic<PyType> PyType)
(declare-fun B<PyType> (PyType) PyType)
(declare-fun B_arg<PyType> (PyType Int) PyType)
(declare-fun Measure$create<Measure$> (Bool $Ref Int) Measure$)
(declare-fun Measure$guard<Bool> (Measure$) Bool)
(declare-fun Measure$key<Ref> (Measure$) $Ref)
(declare-fun Measure$value<Int> (Measure$) Int)
(declare-fun Low<Bool> ($Ref) Bool)
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
(declare-fun tuple___len__ ($Snap $Ref) Int)
(declare-fun tuple___len__%limited ($Snap $Ref) Int)
(declare-fun tuple___len__%stateless ($Ref) Bool)
(declare-fun tuple___len__%precondition ($Snap $Ref) Bool)
(declare-fun tuple___getitem__ ($Snap $Ref Int) $Ref)
(declare-fun tuple___getitem__%limited ($Snap $Ref Int) $Ref)
(declare-fun tuple___getitem__%stateless ($Ref Int) Bool)
(declare-fun tuple___getitem__%precondition ($Snap $Ref Int) Bool)
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
(declare-fun tuple___create3__ ($Snap $Ref $Ref $Ref PyType PyType PyType Int) $Ref)
(declare-fun tuple___create3__%limited ($Snap $Ref $Ref $Ref PyType PyType PyType Int) $Ref)
(declare-fun tuple___create3__%stateless ($Ref $Ref $Ref PyType PyType PyType Int) Bool)
(declare-fun tuple___create3__%precondition ($Snap $Ref $Ref $Ref PyType PyType PyType Int) Bool)
(declare-fun str___create__ ($Snap Int Int) $Ref)
(declare-fun str___create__%limited ($Snap Int Int) $Ref)
(declare-fun str___create__%stateless (Int Int) Bool)
(declare-fun str___create__%precondition ($Snap Int Int) Bool)
(declare-fun tuple___create2__ ($Snap $Ref $Ref PyType PyType Int) $Ref)
(declare-fun tuple___create2__%limited ($Snap $Ref $Ref PyType PyType Int) $Ref)
(declare-fun tuple___create2__%stateless ($Ref $Ref PyType PyType Int) Bool)
(declare-fun tuple___create2__%precondition ($Snap $Ref $Ref PyType PyType Int) Bool)
(declare-fun Measure$check ($Snap Seq<Measure$> $Ref Int) Bool)
(declare-fun Measure$check%limited ($Snap Seq<Measure$> $Ref Int) Bool)
(declare-fun Measure$check%stateless (Seq<Measure$> $Ref Int) Bool)
(declare-fun Measure$check%precondition ($Snap Seq<Measure$> $Ref Int) Bool)
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
(declare-fun int___add__ ($Snap Int Int) Int)
(declare-fun int___add__%limited ($Snap Int Int) Int)
(declare-fun int___add__%stateless (Int Int) Bool)
(declare-fun int___add__%precondition ($Snap Int Int) Bool)
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
(assert (distinct bool<PyType> float<PyType> bytes<PyType> B_basic<PyType> slice<PyType> list_basic<PyType> set_basic<PyType> ConnectionRefusedError<PyType> PMultiset_basic<PyType> PSet_basic<PyType> Iterator_basic<PyType> PSeq_basic<PyType> object<PyType> A_basic<PyType> traceback<PyType> dict_basic<PyType> type<PyType> py_range<PyType> int<PyType> Container<PyType> Exception<PyType> __prim__Seq_type<PyType> tuple_basic<PyType> str<PyType> Thread_0<PyType> Place<PyType> LevelType<PyType> NoneType<PyType>))
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
  (extends_<Bool> (as Container<PyType>  PyType) (as object<PyType>  PyType))
  (=
    (get_basic<PyType> (as Container<PyType>  PyType))
    (as Container<PyType>  PyType))))
(assert (forall ((V PyType)) (!
  (and
    (extends_<Bool> (A<PyType> V) (as object<PyType>  PyType))
    (= (get_basic<PyType> (A<PyType> V)) (as A_basic<PyType>  PyType)))
  :pattern ((A<PyType> V))
  :qid |prog.subtype_A|)))
(assert (forall ((Z PyType) (arg0 PyType)) (!
  (=> (issubtype<Bool> Z (A<PyType> arg0)) (= (A_arg<PyType> Z 0) arg0))
  :pattern ((A<PyType> arg0) (A_arg<PyType> Z 0))
  :qid |prog.A_args0|)))
(assert (forall ((V PyType)) (!
  (and
    (extends_<Bool> (B<PyType> V) (A<PyType> V))
    (= (get_basic<PyType> (B<PyType> V)) (as B_basic<PyType>  PyType)))
  :pattern ((B<PyType> V))
  :qid |prog.subtype_B|)))
(assert (forall ((Z PyType) (arg0 PyType)) (!
  (=> (issubtype<Bool> Z (B<PyType> arg0)) (= (B_arg<PyType> Z 0) arg0))
  :pattern ((B<PyType> arg0) (B_arg<PyType> Z 0))
  :qid |prog.B_args0|)))
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
(assert (forall ((x $Ref)) (!
  (Low<Bool> x)
  :pattern ((Low<Bool> x))
  :qid |prog.low_true|)))
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
(declare-fun letvar@64@00 ($Snap $Ref Int) Int)
(declare-fun $k@71@00 () $Perm)
(declare-fun letvar@73@00 ($Snap $Ref $Ref $Ref PyType PyType PyType Int) Int)
(declare-fun letvar@74@00 ($Snap $Ref $Ref $Ref PyType PyType PyType Int) Int)
(declare-fun letvar@75@00 ($Snap $Ref $Ref $Ref PyType PyType PyType Int) Int)
(declare-fun letvar@78@00 ($Snap $Ref $Ref PyType PyType Int) Int)
(declare-fun letvar@79@00 ($Snap $Ref $Ref PyType PyType Int) Int)
(declare-fun $k@82@00 () $Perm)
(declare-fun $k@83@00 () $Perm)
(declare-fun $k@86@00 () $Perm)
(declare-fun letvar@84@00 ($Snap $Ref $Ref) Int)
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (= (tuple___val__%limited s@$ self@0@00) (tuple___val__ s@$ self@0@00))
  :pattern ((tuple___val__ s@$ self@0@00))
  :qid |quant-u-4646|)))
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (tuple___val__%stateless self@0@00)
  :pattern ((tuple___val__%limited s@$ self@0@00))
  :qid |quant-u-4647|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (= (tuple___len__%limited s@$ self@2@00) (tuple___len__ s@$ self@2@00))
  :pattern ((tuple___len__ s@$ self@2@00))
  :qid |quant-u-4648|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (tuple___len__%stateless self@2@00)
  :pattern ((tuple___len__%limited s@$ self@2@00))
  :qid |quant-u-4649|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (tuple___len__%limited s@$ self@2@00))) (=>
    (tuple___len__%precondition s@$ self@2@00)
    (and
      (=
        result@3@00
        (Seq_length (tuple_args<Seq<PyType>> (typeof<PyType> self@2@00))))
      (= result@3@00 (Seq_length (tuple___val__ $Snap.unit self@2@00))))))
  :pattern ((tuple___len__%limited s@$ self@2@00))
  :qid |quant-u-4692|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (tuple___len__%limited s@$ self@2@00))) true)
  :pattern ((tuple___len__%limited s@$ self@2@00))
  :qid |quant-u-4693|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (tuple___len__%limited s@$ self@2@00))) (=>
    (tuple___len__%precondition s@$ self@2@00)
    (tuple___val__%precondition $Snap.unit self@2@00)))
  :pattern ((tuple___len__%limited s@$ self@2@00))
  :qid |quant-u-4694|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref) (key@5@00 Int)) (!
  (=
    (tuple___getitem__%limited s@$ self@4@00 key@5@00)
    (tuple___getitem__ s@$ self@4@00 key@5@00))
  :pattern ((tuple___getitem__ s@$ self@4@00 key@5@00))
  :qid |quant-u-4650|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref) (key@5@00 Int)) (!
  (tuple___getitem__%stateless self@4@00 key@5@00)
  :pattern ((tuple___getitem__%limited s@$ self@4@00 key@5@00))
  :qid |quant-u-4651|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref) (key@5@00 Int)) (!
  (let ((result@6@00 (tuple___getitem__%limited s@$ self@4@00 key@5@00))) (=>
    (tuple___getitem__%precondition s@$ self@4@00 key@5@00)
    (and
      (=>
        (>= key@5@00 0)
        (issubtype<Bool> (typeof<PyType> result@6@00) (tuple_arg<PyType> (typeof<PyType> self@4@00) key@5@00)))
      (=>
        (< key@5@00 0)
        (issubtype<Bool> (typeof<PyType> result@6@00) (tuple_arg<PyType> (typeof<PyType> self@4@00) (+
          (tuple___len__ $Snap.unit self@4@00)
          key@5@00))))
      (=>
        (>= key@5@00 0)
        (= result@6@00 (Seq_index (tuple___val__ $Snap.unit self@4@00) key@5@00)))
      (=>
        (< key@5@00 0)
        (=
          result@6@00
          (Seq_index
            (tuple___val__ $Snap.unit self@4@00)
            (+ (tuple___len__ $Snap.unit self@4@00) key@5@00)))))))
  :pattern ((tuple___getitem__%limited s@$ self@4@00 key@5@00))
  :qid |quant-u-4695|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref) (key@5@00 Int)) (!
  (let ((result@6@00 (tuple___getitem__%limited s@$ self@4@00 key@5@00))) true)
  :pattern ((tuple___getitem__%limited s@$ self@4@00 key@5@00))
  :qid |quant-u-4696|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref) (key@5@00 Int)) (!
  (let ((result@6@00 (tuple___getitem__%limited s@$ self@4@00 key@5@00))) (=>
    (and (tuple___getitem__%precondition s@$ self@4@00 key@5@00) (< key@5@00 0))
    (tuple___len__%precondition $Snap.unit self@4@00)))
  :pattern ((tuple___getitem__%limited s@$ self@4@00 key@5@00))
  :qid |quant-u-4697|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref) (key@5@00 Int)) (!
  (let ((result@6@00 (tuple___getitem__%limited s@$ self@4@00 key@5@00))) (=>
    (and (tuple___getitem__%precondition s@$ self@4@00 key@5@00) (>= key@5@00 0))
    (tuple___val__%precondition $Snap.unit self@4@00)))
  :pattern ((tuple___getitem__%limited s@$ self@4@00 key@5@00))
  :qid |quant-u-4698|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref) (key@5@00 Int)) (!
  (let ((result@6@00 (tuple___getitem__%limited s@$ self@4@00 key@5@00))) (=>
    (and (tuple___getitem__%precondition s@$ self@4@00 key@5@00) (< key@5@00 0))
    (and
      (tuple___val__%precondition $Snap.unit self@4@00)
      (tuple___len__%precondition $Snap.unit self@4@00))))
  :pattern ((tuple___getitem__%limited s@$ self@4@00 key@5@00))
  :qid |quant-u-4699|)))
(assert (forall ((s@$ $Snap) (self@7@00 $Ref)) (!
  (= (str___val__%limited s@$ self@7@00) (str___val__ s@$ self@7@00))
  :pattern ((str___val__ s@$ self@7@00))
  :qid |quant-u-4652|)))
(assert (forall ((s@$ $Snap) (self@7@00 $Ref)) (!
  (str___val__%stateless self@7@00)
  :pattern ((str___val__%limited s@$ self@7@00))
  :qid |quant-u-4653|)))
(assert (forall ((s@$ $Snap) (self@9@00 $Ref)) (!
  (= (str___len__%limited s@$ self@9@00) (str___len__ s@$ self@9@00))
  :pattern ((str___len__ s@$ self@9@00))
  :qid |quant-u-4654|)))
(assert (forall ((s@$ $Snap) (self@9@00 $Ref)) (!
  (str___len__%stateless self@9@00)
  :pattern ((str___len__%limited s@$ self@9@00))
  :qid |quant-u-4655|)))
(assert (forall ((s@$ $Snap) (self@9@00 $Ref)) (!
  (let ((result@10@00 (str___len__%limited s@$ self@9@00))) (=>
    (str___len__%precondition s@$ self@9@00)
    (>= result@10@00 0)))
  :pattern ((str___len__%limited s@$ self@9@00))
  :qid |quant-u-4700|)))
(assert (forall ((s@$ $Snap) (self@9@00 $Ref)) (!
  (let ((result@10@00 (str___len__%limited s@$ self@9@00))) true)
  :pattern ((str___len__%limited s@$ self@9@00))
  :qid |quant-u-4701|)))
(assert (forall ((s@$ $Snap) (prim@11@00 Bool)) (!
  (=
    (__prim__bool___box__%limited s@$ prim@11@00)
    (__prim__bool___box__ s@$ prim@11@00))
  :pattern ((__prim__bool___box__ s@$ prim@11@00))
  :qid |quant-u-4656|)))
(assert (forall ((s@$ $Snap) (prim@11@00 Bool)) (!
  (__prim__bool___box__%stateless prim@11@00)
  :pattern ((__prim__bool___box__%limited s@$ prim@11@00))
  :qid |quant-u-4657|)))
(assert (forall ((s@$ $Snap) (prim@11@00 Bool)) (!
  (let ((result@12@00 (__prim__bool___box__%limited s@$ prim@11@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@11@00)
    (and
      (= (typeof<PyType> result@12@00) (as bool<PyType>  PyType))
      (= (bool___unbox__%limited $Snap.unit result@12@00) prim@11@00)
      (= (int___unbox__%limited $Snap.unit result@12@00) (ite prim@11@00 1 0)))))
  :pattern ((__prim__bool___box__%limited s@$ prim@11@00))
  :qid |quant-u-4702|)))
(assert (forall ((s@$ $Snap) (prim@11@00 Bool)) (!
  (let ((result@12@00 (__prim__bool___box__%limited s@$ prim@11@00))) true)
  :pattern ((__prim__bool___box__%limited s@$ prim@11@00))
  :qid |quant-u-4703|)))
(assert (forall ((s@$ $Snap) (prim@11@00 Bool)) (!
  (let ((result@12@00 (__prim__bool___box__%limited s@$ prim@11@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@11@00)
    (bool___unbox__%precondition $Snap.unit result@12@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@11@00))
  :qid |quant-u-4704|)))
(assert (forall ((s@$ $Snap) (prim@11@00 Bool)) (!
  (let ((result@12@00 (__prim__bool___box__%limited s@$ prim@11@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@11@00)
    (int___unbox__%precondition $Snap.unit result@12@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@11@00))
  :qid |quant-u-4705|)))
(assert (forall ((s@$ $Snap) (box@13@00 $Ref)) (!
  (= (bool___unbox__%limited s@$ box@13@00) (bool___unbox__ s@$ box@13@00))
  :pattern ((bool___unbox__ s@$ box@13@00))
  :qid |quant-u-4658|)))
(assert (forall ((s@$ $Snap) (box@13@00 $Ref)) (!
  (bool___unbox__%stateless box@13@00)
  :pattern ((bool___unbox__%limited s@$ box@13@00))
  :qid |quant-u-4659|)))
(assert (forall ((s@$ $Snap) (box@13@00 $Ref)) (!
  (let ((result@14@00 (bool___unbox__%limited s@$ box@13@00))) (=>
    (bool___unbox__%precondition s@$ box@13@00)
    (= (__prim__bool___box__%limited $Snap.unit result@14@00) box@13@00)))
  :pattern ((bool___unbox__%limited s@$ box@13@00))
  :qid |quant-u-4706|)))
(assert (forall ((s@$ $Snap) (box@13@00 $Ref)) (!
  (let ((result@14@00 (bool___unbox__%limited s@$ box@13@00))) (=>
    (bool___unbox__%precondition s@$ box@13@00)
    (__prim__bool___box__%precondition $Snap.unit result@14@00)))
  :pattern ((bool___unbox__%limited s@$ box@13@00))
  :qid |quant-u-4707|)))
(assert (forall ((s@$ $Snap) (box@15@00 $Ref)) (!
  (= (int___unbox__%limited s@$ box@15@00) (int___unbox__ s@$ box@15@00))
  :pattern ((int___unbox__ s@$ box@15@00))
  :qid |quant-u-4660|)))
(assert (forall ((s@$ $Snap) (box@15@00 $Ref)) (!
  (int___unbox__%stateless box@15@00)
  :pattern ((int___unbox__%limited s@$ box@15@00))
  :qid |quant-u-4661|)))
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
  :qid |quant-u-4708|)))
(assert (forall ((s@$ $Snap) (box@15@00 $Ref)) (!
  (let ((result@16@00 (int___unbox__%limited s@$ box@15@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@15@00)
      (not
        (issubtype<Bool> (typeof<PyType> box@15@00) (as bool<PyType>  PyType))))
    (__prim__int___box__%precondition $Snap.unit result@16@00)))
  :pattern ((int___unbox__%limited s@$ box@15@00))
  :qid |quant-u-4709|)))
(assert (forall ((s@$ $Snap) (box@15@00 $Ref)) (!
  (let ((result@16@00 (int___unbox__%limited s@$ box@15@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@15@00)
      (issubtype<Bool> (typeof<PyType> box@15@00) (as bool<PyType>  PyType)))
    (__prim__bool___box__%precondition $Snap.unit (not (= result@16@00 0)))))
  :pattern ((int___unbox__%limited s@$ box@15@00))
  :qid |quant-u-4710|)))
(assert (forall ((s@$ $Snap) (prim@17@00 Int)) (!
  (=
    (__prim__int___box__%limited s@$ prim@17@00)
    (__prim__int___box__ s@$ prim@17@00))
  :pattern ((__prim__int___box__ s@$ prim@17@00))
  :qid |quant-u-4662|)))
(assert (forall ((s@$ $Snap) (prim@17@00 Int)) (!
  (__prim__int___box__%stateless prim@17@00)
  :pattern ((__prim__int___box__%limited s@$ prim@17@00))
  :qid |quant-u-4663|)))
(assert (forall ((s@$ $Snap) (prim@17@00 Int)) (!
  (let ((result@18@00 (__prim__int___box__%limited s@$ prim@17@00))) (=>
    (__prim__int___box__%precondition s@$ prim@17@00)
    (and
      (= (typeof<PyType> result@18@00) (as int<PyType>  PyType))
      (= (int___unbox__%limited $Snap.unit result@18@00) prim@17@00))))
  :pattern ((__prim__int___box__%limited s@$ prim@17@00))
  :qid |quant-u-4711|)))
(assert (forall ((s@$ $Snap) (prim@17@00 Int)) (!
  (let ((result@18@00 (__prim__int___box__%limited s@$ prim@17@00))) true)
  :pattern ((__prim__int___box__%limited s@$ prim@17@00))
  :qid |quant-u-4712|)))
(assert (forall ((s@$ $Snap) (prim@17@00 Int)) (!
  (let ((result@18@00 (__prim__int___box__%limited s@$ prim@17@00))) (=>
    (__prim__int___box__%precondition s@$ prim@17@00)
    (int___unbox__%precondition $Snap.unit result@18@00)))
  :pattern ((__prim__int___box__%limited s@$ prim@17@00))
  :qid |quant-u-4713|)))
(assert (forall ((s@$ $Snap) (self@19@00 $Ref)) (!
  (= (list___len__%limited s@$ self@19@00) (list___len__ s@$ self@19@00))
  :pattern ((list___len__ s@$ self@19@00))
  :qid |quant-u-4664|)))
(assert (forall ((s@$ $Snap) (self@19@00 $Ref)) (!
  (list___len__%stateless self@19@00)
  :pattern ((list___len__%limited s@$ self@19@00))
  :qid |quant-u-4665|)))
(assert (forall ((s@$ $Snap) (self@19@00 $Ref)) (!
  (and
    ($Perm.isReadVar $k@71@00)
    (=>
      (list___len__%precondition s@$ self@19@00)
      (=
        (list___len__ s@$ self@19@00)
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.second s@$))))))
  :pattern ((list___len__ s@$ self@19@00))
  :qid |quant-u-4714|)))
(assert (forall ((s@$ $Snap) (self@19@00 $Ref)) (!
  true
  :pattern ((list___len__ s@$ self@19@00))
  :qid |quant-u-4715|)))
(assert (forall ((s@$ $Snap) (id@21@00 Int)) (!
  (= (_isDefined%limited s@$ id@21@00) (_isDefined s@$ id@21@00))
  :pattern ((_isDefined s@$ id@21@00))
  :qid |quant-u-4666|)))
(assert (forall ((s@$ $Snap) (id@21@00 Int)) (!
  (_isDefined%stateless id@21@00)
  :pattern ((_isDefined%limited s@$ id@21@00))
  :qid |quant-u-4667|)))
(assert (forall ((s@$ $Snap) (r@23@00 $Ref)) (!
  (= (Level%limited s@$ r@23@00) (Level s@$ r@23@00))
  :pattern ((Level s@$ r@23@00))
  :qid |quant-u-4668|)))
(assert (forall ((s@$ $Snap) (r@23@00 $Ref)) (!
  (Level%stateless r@23@00)
  :pattern ((Level%limited s@$ r@23@00))
  :qid |quant-u-4669|)))
(assert (forall ((s@$ $Snap) (arg0@25@00 $Ref) (arg1@26@00 $Ref) (arg2@27@00 $Ref) (t0@28@00 PyType) (t1@29@00 PyType) (t2@30@00 PyType) (ctr@31@00 Int)) (!
  (=
    (tuple___create3__%limited s@$ arg0@25@00 arg1@26@00 arg2@27@00 t0@28@00 t1@29@00 t2@30@00 ctr@31@00)
    (tuple___create3__ s@$ arg0@25@00 arg1@26@00 arg2@27@00 t0@28@00 t1@29@00 t2@30@00 ctr@31@00))
  :pattern ((tuple___create3__ s@$ arg0@25@00 arg1@26@00 arg2@27@00 t0@28@00 t1@29@00 t2@30@00 ctr@31@00))
  :qid |quant-u-4670|)))
(assert (forall ((s@$ $Snap) (arg0@25@00 $Ref) (arg1@26@00 $Ref) (arg2@27@00 $Ref) (t0@28@00 PyType) (t1@29@00 PyType) (t2@30@00 PyType) (ctr@31@00 Int)) (!
  (tuple___create3__%stateless arg0@25@00 arg1@26@00 arg2@27@00 t0@28@00 t1@29@00 t2@30@00 ctr@31@00)
  :pattern ((tuple___create3__%limited s@$ arg0@25@00 arg1@26@00 arg2@27@00 t0@28@00 t1@29@00 t2@30@00 ctr@31@00))
  :qid |quant-u-4671|)))
(assert (forall ((s@$ $Snap) (arg0@25@00 $Ref) (arg1@26@00 $Ref) (arg2@27@00 $Ref) (t0@28@00 PyType) (t1@29@00 PyType) (t2@30@00 PyType) (ctr@31@00 Int)) (!
  (let ((result@32@00 (tuple___create3__%limited s@$ arg0@25@00 arg1@26@00 arg2@27@00 t0@28@00 t1@29@00 t2@30@00 ctr@31@00))) (=>
    (tuple___create3__%precondition s@$ arg0@25@00 arg1@26@00 arg2@27@00 t0@28@00 t1@29@00 t2@30@00 ctr@31@00)
    (and
      (not (= result@32@00 $Ref.null))
      (=
        (typeof<PyType> result@32@00)
        (tuple<PyType> (Seq_append
          (Seq_append (Seq_singleton t0@28@00) (Seq_singleton t1@29@00))
          (Seq_singleton t2@30@00))))
      (Seq_equal
        (tuple_args<Seq<PyType>> (typeof<PyType> result@32@00))
        (Seq_append
          (Seq_append (Seq_singleton t0@28@00) (Seq_singleton t1@29@00))
          (Seq_singleton t2@30@00)))
      (Seq_equal
        (tuple___val__ $Snap.unit result@32@00)
        (Seq_append
          (Seq_append (Seq_singleton arg0@25@00) (Seq_singleton arg1@26@00))
          (Seq_singleton arg2@27@00)))
      (and
        (= (tuple___len__ $Snap.unit result@32@00) 3)
        (and
          (= (tuple___getitem__ $Snap.unit result@32@00 0) arg0@25@00)
          (and
            (= (tuple___getitem__ $Snap.unit result@32@00 1) arg1@26@00)
            (= (tuple___getitem__ $Snap.unit result@32@00 2) arg2@27@00)))))))
  :pattern ((tuple___create3__%limited s@$ arg0@25@00 arg1@26@00 arg2@27@00 t0@28@00 t1@29@00 t2@30@00 ctr@31@00))
  :qid |quant-u-4716|)))
(assert (forall ((s@$ $Snap) (arg0@25@00 $Ref) (arg1@26@00 $Ref) (arg2@27@00 $Ref) (t0@28@00 PyType) (t1@29@00 PyType) (t2@30@00 PyType) (ctr@31@00 Int)) (!
  (let ((result@32@00 (tuple___create3__%limited s@$ arg0@25@00 arg1@26@00 arg2@27@00 t0@28@00 t1@29@00 t2@30@00 ctr@31@00))) true)
  :pattern ((tuple___create3__%limited s@$ arg0@25@00 arg1@26@00 arg2@27@00 t0@28@00 t1@29@00 t2@30@00 ctr@31@00))
  :qid |quant-u-4717|)))
(assert (forall ((s@$ $Snap) (arg0@25@00 $Ref) (arg1@26@00 $Ref) (arg2@27@00 $Ref) (t0@28@00 PyType) (t1@29@00 PyType) (t2@30@00 PyType) (ctr@31@00 Int)) (!
  (let ((result@32@00 (tuple___create3__%limited s@$ arg0@25@00 arg1@26@00 arg2@27@00 t0@28@00 t1@29@00 t2@30@00 ctr@31@00))) true)
  :pattern ((tuple___create3__%limited s@$ arg0@25@00 arg1@26@00 arg2@27@00 t0@28@00 t1@29@00 t2@30@00 ctr@31@00))
  :qid |quant-u-4718|)))
(assert (forall ((s@$ $Snap) (arg0@25@00 $Ref) (arg1@26@00 $Ref) (arg2@27@00 $Ref) (t0@28@00 PyType) (t1@29@00 PyType) (t2@30@00 PyType) (ctr@31@00 Int)) (!
  (let ((result@32@00 (tuple___create3__%limited s@$ arg0@25@00 arg1@26@00 arg2@27@00 t0@28@00 t1@29@00 t2@30@00 ctr@31@00))) true)
  :pattern ((tuple___create3__%limited s@$ arg0@25@00 arg1@26@00 arg2@27@00 t0@28@00 t1@29@00 t2@30@00 ctr@31@00))
  :qid |quant-u-4719|)))
(assert (forall ((s@$ $Snap) (arg0@25@00 $Ref) (arg1@26@00 $Ref) (arg2@27@00 $Ref) (t0@28@00 PyType) (t1@29@00 PyType) (t2@30@00 PyType) (ctr@31@00 Int)) (!
  (let ((result@32@00 (tuple___create3__%limited s@$ arg0@25@00 arg1@26@00 arg2@27@00 t0@28@00 t1@29@00 t2@30@00 ctr@31@00))) (=>
    (tuple___create3__%precondition s@$ arg0@25@00 arg1@26@00 arg2@27@00 t0@28@00 t1@29@00 t2@30@00 ctr@31@00)
    (tuple___val__%precondition $Snap.unit result@32@00)))
  :pattern ((tuple___create3__%limited s@$ arg0@25@00 arg1@26@00 arg2@27@00 t0@28@00 t1@29@00 t2@30@00 ctr@31@00))
  :qid |quant-u-4720|)))
(assert (forall ((s@$ $Snap) (arg0@25@00 $Ref) (arg1@26@00 $Ref) (arg2@27@00 $Ref) (t0@28@00 PyType) (t1@29@00 PyType) (t2@30@00 PyType) (ctr@31@00 Int)) (!
  (let ((result@32@00 (tuple___create3__%limited s@$ arg0@25@00 arg1@26@00 arg2@27@00 t0@28@00 t1@29@00 t2@30@00 ctr@31@00))) (=>
    (tuple___create3__%precondition s@$ arg0@25@00 arg1@26@00 arg2@27@00 t0@28@00 t1@29@00 t2@30@00 ctr@31@00)
    (and
      (tuple___len__%precondition $Snap.unit result@32@00)
      (=>
        (= (tuple___len__ $Snap.unit result@32@00) 3)
        (and
          (tuple___getitem__%precondition $Snap.unit result@32@00 0)
          (=>
            (= (tuple___getitem__ $Snap.unit result@32@00 0) arg0@25@00)
            (and
              (tuple___getitem__%precondition $Snap.unit result@32@00 1)
              (=>
                (= (tuple___getitem__ $Snap.unit result@32@00 1) arg1@26@00)
                (tuple___getitem__%precondition $Snap.unit result@32@00 2)))))))))
  :pattern ((tuple___create3__%limited s@$ arg0@25@00 arg1@26@00 arg2@27@00 t0@28@00 t1@29@00 t2@30@00 ctr@31@00))
  :qid |quant-u-4721|)))
(assert (forall ((s@$ $Snap) (len@33@00 Int) (value@34@00 Int)) (!
  (=
    (str___create__%limited s@$ len@33@00 value@34@00)
    (str___create__ s@$ len@33@00 value@34@00))
  :pattern ((str___create__ s@$ len@33@00 value@34@00))
  :qid |quant-u-4672|)))
(assert (forall ((s@$ $Snap) (len@33@00 Int) (value@34@00 Int)) (!
  (str___create__%stateless len@33@00 value@34@00)
  :pattern ((str___create__%limited s@$ len@33@00 value@34@00))
  :qid |quant-u-4673|)))
(assert (forall ((s@$ $Snap) (len@33@00 Int) (value@34@00 Int)) (!
  (let ((result@35@00 (str___create__%limited s@$ len@33@00 value@34@00))) (=>
    (str___create__%precondition s@$ len@33@00 value@34@00)
    (and
      (= (str___len__ $Snap.unit result@35@00) len@33@00)
      (= (str___val__ $Snap.unit result@35@00) value@34@00)
      (= (typeof<PyType> result@35@00) (as str<PyType>  PyType)))))
  :pattern ((str___create__%limited s@$ len@33@00 value@34@00))
  :qid |quant-u-4722|)))
(assert (forall ((s@$ $Snap) (len@33@00 Int) (value@34@00 Int)) (!
  (let ((result@35@00 (str___create__%limited s@$ len@33@00 value@34@00))) (=>
    (str___create__%precondition s@$ len@33@00 value@34@00)
    (str___len__%precondition $Snap.unit result@35@00)))
  :pattern ((str___create__%limited s@$ len@33@00 value@34@00))
  :qid |quant-u-4723|)))
(assert (forall ((s@$ $Snap) (len@33@00 Int) (value@34@00 Int)) (!
  (let ((result@35@00 (str___create__%limited s@$ len@33@00 value@34@00))) (=>
    (str___create__%precondition s@$ len@33@00 value@34@00)
    (str___val__%precondition $Snap.unit result@35@00)))
  :pattern ((str___create__%limited s@$ len@33@00 value@34@00))
  :qid |quant-u-4724|)))
(assert (forall ((s@$ $Snap) (len@33@00 Int) (value@34@00 Int)) (!
  (let ((result@35@00 (str___create__%limited s@$ len@33@00 value@34@00))) true)
  :pattern ((str___create__%limited s@$ len@33@00 value@34@00))
  :qid |quant-u-4725|)))
(assert (forall ((s@$ $Snap) (arg0@36@00 $Ref) (arg1@37@00 $Ref) (t0@38@00 PyType) (t1@39@00 PyType) (ctr@40@00 Int)) (!
  (=
    (tuple___create2__%limited s@$ arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00)
    (tuple___create2__ s@$ arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00))
  :pattern ((tuple___create2__ s@$ arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00))
  :qid |quant-u-4674|)))
(assert (forall ((s@$ $Snap) (arg0@36@00 $Ref) (arg1@37@00 $Ref) (t0@38@00 PyType) (t1@39@00 PyType) (ctr@40@00 Int)) (!
  (tuple___create2__%stateless arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00)
  :pattern ((tuple___create2__%limited s@$ arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00))
  :qid |quant-u-4675|)))
(assert (forall ((s@$ $Snap) (arg0@36@00 $Ref) (arg1@37@00 $Ref) (t0@38@00 PyType) (t1@39@00 PyType) (ctr@40@00 Int)) (!
  (let ((result@41@00 (tuple___create2__%limited s@$ arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00))) (=>
    (tuple___create2__%precondition s@$ arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00)
    (and
      (not (= result@41@00 $Ref.null))
      (=
        (typeof<PyType> result@41@00)
        (tuple<PyType> (Seq_append
          (Seq_singleton t0@38@00)
          (Seq_singleton t1@39@00))))
      (Seq_equal
        (tuple_args<Seq<PyType>> (typeof<PyType> result@41@00))
        (Seq_append (Seq_singleton t0@38@00) (Seq_singleton t1@39@00)))
      (Seq_equal
        (tuple___val__ $Snap.unit result@41@00)
        (Seq_append (Seq_singleton arg0@36@00) (Seq_singleton arg1@37@00)))
      (and
        (= (tuple___len__ $Snap.unit result@41@00) 2)
        (and
          (= (tuple___getitem__ $Snap.unit result@41@00 0) arg0@36@00)
          (= (tuple___getitem__ $Snap.unit result@41@00 1) arg1@37@00))))))
  :pattern ((tuple___create2__%limited s@$ arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00))
  :qid |quant-u-4726|)))
(assert (forall ((s@$ $Snap) (arg0@36@00 $Ref) (arg1@37@00 $Ref) (t0@38@00 PyType) (t1@39@00 PyType) (ctr@40@00 Int)) (!
  (let ((result@41@00 (tuple___create2__%limited s@$ arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00))) true)
  :pattern ((tuple___create2__%limited s@$ arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00))
  :qid |quant-u-4727|)))
(assert (forall ((s@$ $Snap) (arg0@36@00 $Ref) (arg1@37@00 $Ref) (t0@38@00 PyType) (t1@39@00 PyType) (ctr@40@00 Int)) (!
  (let ((result@41@00 (tuple___create2__%limited s@$ arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00))) true)
  :pattern ((tuple___create2__%limited s@$ arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00))
  :qid |quant-u-4728|)))
(assert (forall ((s@$ $Snap) (arg0@36@00 $Ref) (arg1@37@00 $Ref) (t0@38@00 PyType) (t1@39@00 PyType) (ctr@40@00 Int)) (!
  (let ((result@41@00 (tuple___create2__%limited s@$ arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00))) true)
  :pattern ((tuple___create2__%limited s@$ arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00))
  :qid |quant-u-4729|)))
(assert (forall ((s@$ $Snap) (arg0@36@00 $Ref) (arg1@37@00 $Ref) (t0@38@00 PyType) (t1@39@00 PyType) (ctr@40@00 Int)) (!
  (let ((result@41@00 (tuple___create2__%limited s@$ arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00))) true)
  :pattern ((tuple___create2__%limited s@$ arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00))
  :qid |quant-u-4730|)))
(assert (forall ((s@$ $Snap) (arg0@36@00 $Ref) (arg1@37@00 $Ref) (t0@38@00 PyType) (t1@39@00 PyType) (ctr@40@00 Int)) (!
  (let ((result@41@00 (tuple___create2__%limited s@$ arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00))) (=>
    (tuple___create2__%precondition s@$ arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00)
    (tuple___val__%precondition $Snap.unit result@41@00)))
  :pattern ((tuple___create2__%limited s@$ arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00))
  :qid |quant-u-4731|)))
(assert (forall ((s@$ $Snap) (arg0@36@00 $Ref) (arg1@37@00 $Ref) (t0@38@00 PyType) (t1@39@00 PyType) (ctr@40@00 Int)) (!
  (let ((result@41@00 (tuple___create2__%limited s@$ arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00))) (=>
    (tuple___create2__%precondition s@$ arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00)
    (and
      (tuple___len__%precondition $Snap.unit result@41@00)
      (=>
        (= (tuple___len__ $Snap.unit result@41@00) 2)
        (and
          (tuple___getitem__%precondition $Snap.unit result@41@00 0)
          (=>
            (= (tuple___getitem__ $Snap.unit result@41@00 0) arg0@36@00)
            (tuple___getitem__%precondition $Snap.unit result@41@00 1)))))))
  :pattern ((tuple___create2__%limited s@$ arg0@36@00 arg1@37@00 t0@38@00 t1@39@00 ctr@40@00))
  :qid |quant-u-4732|)))
(assert (forall ((s@$ $Snap) (map@42@00 Seq<Measure$>) (key@43@00 $Ref) (value@44@00 Int)) (!
  (=
    (Measure$check%limited s@$ map@42@00 key@43@00 value@44@00)
    (Measure$check s@$ map@42@00 key@43@00 value@44@00))
  :pattern ((Measure$check s@$ map@42@00 key@43@00 value@44@00))
  :qid |quant-u-4676|)))
(assert (forall ((s@$ $Snap) (map@42@00 Seq<Measure$>) (key@43@00 $Ref) (value@44@00 Int)) (!
  (Measure$check%stateless map@42@00 key@43@00 value@44@00)
  :pattern ((Measure$check%limited s@$ map@42@00 key@43@00 value@44@00))
  :qid |quant-u-4677|)))
(assert (forall ((s@$ $Snap) (map@42@00 Seq<Measure$>) (key@43@00 $Ref) (value@44@00 Int)) (!
  (=>
    (Measure$check%precondition s@$ map@42@00 key@43@00 value@44@00)
    (=
      (Measure$check s@$ map@42@00 key@43@00 value@44@00)
      (forall ((m Measure$)) (!
        (=>
          (and
            (Seq_contains map@42@00 m)
            (and (Measure$guard<Bool> m) (= (Measure$key<Ref> m) key@43@00)))
          (> (Measure$value<Int> m) value@44@00))
        :pattern ((Seq_contains map@42@00 m))
        :pattern ((Seq_contains_trigger map@42@00 m))
        :pattern ((Seq_contains_trigger map@42@00 m))
        ))))
  :pattern ((Measure$check s@$ map@42@00 key@43@00 value@44@00))
  :qid |quant-u-4733|)))
(assert (forall ((s@$ $Snap) (map@42@00 Seq<Measure$>) (key@43@00 $Ref) (value@44@00 Int)) (!
  true
  :pattern ((Measure$check s@$ map@42@00 key@43@00 value@44@00))
  :qid |quant-u-4734|)))
(assert (forall ((s@$ $Snap) (self@46@00 $Ref) (other@47@00 $Ref)) (!
  (=
    (str___eq__%limited s@$ self@46@00 other@47@00)
    (str___eq__ s@$ self@46@00 other@47@00))
  :pattern ((str___eq__ s@$ self@46@00 other@47@00))
  :qid |quant-u-4678|)))
(assert (forall ((s@$ $Snap) (self@46@00 $Ref) (other@47@00 $Ref)) (!
  (str___eq__%stateless self@46@00 other@47@00)
  :pattern ((str___eq__%limited s@$ self@46@00 other@47@00))
  :qid |quant-u-4679|)))
(assert (forall ((s@$ $Snap) (self@46@00 $Ref) (other@47@00 $Ref)) (!
  (let ((result@48@00 (str___eq__%limited s@$ self@46@00 other@47@00))) (=>
    (str___eq__%precondition s@$ self@46@00 other@47@00)
    (and
      (=
        (=
          (str___val__ $Snap.unit self@46@00)
          (str___val__ $Snap.unit other@47@00))
        result@48@00)
      (=>
        result@48@00
        (=
          (str___len__ $Snap.unit self@46@00)
          (str___len__ $Snap.unit other@47@00))))))
  :pattern ((str___eq__%limited s@$ self@46@00 other@47@00))
  :qid |quant-u-4735|)))
(assert (forall ((s@$ $Snap) (self@46@00 $Ref) (other@47@00 $Ref)) (!
  (let ((result@48@00 (str___eq__%limited s@$ self@46@00 other@47@00))) (=>
    (str___eq__%precondition s@$ self@46@00 other@47@00)
    (and
      (str___val__%precondition $Snap.unit self@46@00)
      (str___val__%precondition $Snap.unit other@47@00))))
  :pattern ((str___eq__%limited s@$ self@46@00 other@47@00))
  :qid |quant-u-4736|)))
(assert (forall ((s@$ $Snap) (self@46@00 $Ref) (other@47@00 $Ref)) (!
  (let ((result@48@00 (str___eq__%limited s@$ self@46@00 other@47@00))) (=>
    (and (str___eq__%precondition s@$ self@46@00 other@47@00) result@48@00)
    (and
      (str___len__%precondition $Snap.unit self@46@00)
      (str___len__%precondition $Snap.unit other@47@00))))
  :pattern ((str___eq__%limited s@$ self@46@00 other@47@00))
  :qid |quant-u-4737|)))
(assert (forall ((s@$ $Snap) (self@49@00 $Ref) (key@50@00 $Ref)) (!
  (=
    (list___getitem__%limited s@$ self@49@00 key@50@00)
    (list___getitem__ s@$ self@49@00 key@50@00))
  :pattern ((list___getitem__ s@$ self@49@00 key@50@00))
  :qid |quant-u-4680|)))
(assert (forall ((s@$ $Snap) (self@49@00 $Ref) (key@50@00 $Ref)) (!
  (list___getitem__%stateless self@49@00 key@50@00)
  :pattern ((list___getitem__%limited s@$ self@49@00 key@50@00))
  :qid |quant-u-4681|)))
(assert (forall ((s@$ $Snap) (self@49@00 $Ref) (key@50@00 $Ref)) (!
  (let ((result@51@00 (list___getitem__%limited s@$ self@49@00 key@50@00))) (and
    ($Perm.isReadVar $k@82@00)
    ($Perm.isReadVar $k@83@00)
    ($Perm.isReadVar $k@86@00)
    (=>
      (list___getitem__%precondition s@$ self@49@00 key@50@00)
      (and
        (=
          result@51@00
          (ite
            (>= (int___unbox__ $Snap.unit key@50@00) 0)
            (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second s@$))))
              (int___unbox__ $Snap.unit key@50@00))
            (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second s@$))))
              (+
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second s@$)))) self@49@00)
                (int___unbox__ $Snap.unit key@50@00)))))
        (issubtype<Bool> (typeof<PyType> result@51@00) (list_arg<PyType> (typeof<PyType> self@49@00) 0))))))
  :pattern ((list___getitem__%limited s@$ self@49@00 key@50@00))
  :qid |quant-u-4738|)))
(assert (forall ((s@$ $Snap) (self@49@00 $Ref) (key@50@00 $Ref)) (!
  (let ((result@51@00 (list___getitem__%limited s@$ self@49@00 key@50@00))) (=>
    (list___getitem__%precondition s@$ self@49@00 key@50@00)
    (and
      (int___unbox__%precondition $Snap.unit key@50@00)
      (ite
        (>= (int___unbox__ $Snap.unit key@50@00) 0)
        (int___unbox__%precondition $Snap.unit key@50@00)
        (and
          (list___len__%precondition ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second s@$)))) self@49@00)
          (int___unbox__%precondition $Snap.unit key@50@00))))))
  :pattern ((list___getitem__%limited s@$ self@49@00 key@50@00))
  :qid |quant-u-4739|)))
(assert (forall ((s@$ $Snap) (self@49@00 $Ref) (key@50@00 $Ref)) (!
  (let ((result@51@00 (list___getitem__%limited s@$ self@49@00 key@50@00))) true)
  :pattern ((list___getitem__%limited s@$ self@49@00 key@50@00))
  :qid |quant-u-4740|)))
(assert (forall ((s@$ $Snap) (self@52@00 Int) (other@53@00 Int)) (!
  (=
    (int___gt__%limited s@$ self@52@00 other@53@00)
    (int___gt__ s@$ self@52@00 other@53@00))
  :pattern ((int___gt__ s@$ self@52@00 other@53@00))
  :qid |quant-u-4682|)))
(assert (forall ((s@$ $Snap) (self@52@00 Int) (other@53@00 Int)) (!
  (int___gt__%stateless self@52@00 other@53@00)
  :pattern ((int___gt__%limited s@$ self@52@00 other@53@00))
  :qid |quant-u-4683|)))
(assert (forall ((s@$ $Snap) (self@52@00 Int) (other@53@00 Int)) (!
  (=>
    (int___gt__%precondition s@$ self@52@00 other@53@00)
    (= (int___gt__ s@$ self@52@00 other@53@00) (> self@52@00 other@53@00)))
  :pattern ((int___gt__ s@$ self@52@00 other@53@00))
  :qid |quant-u-4741|)))
(assert (forall ((s@$ $Snap) (self@52@00 Int) (other@53@00 Int)) (!
  true
  :pattern ((int___gt__ s@$ self@52@00 other@53@00))
  :qid |quant-u-4742|)))
(assert (forall ((s@$ $Snap) (self@55@00 Int) (other@56@00 Int)) (!
  (=
    (int___add__%limited s@$ self@55@00 other@56@00)
    (int___add__ s@$ self@55@00 other@56@00))
  :pattern ((int___add__ s@$ self@55@00 other@56@00))
  :qid |quant-u-4684|)))
(assert (forall ((s@$ $Snap) (self@55@00 Int) (other@56@00 Int)) (!
  (int___add__%stateless self@55@00 other@56@00)
  :pattern ((int___add__%limited s@$ self@55@00 other@56@00))
  :qid |quant-u-4685|)))
(assert (forall ((s@$ $Snap) (self@55@00 Int) (other@56@00 Int)) (!
  (=>
    (int___add__%precondition s@$ self@55@00 other@56@00)
    (= (int___add__ s@$ self@55@00 other@56@00) (+ self@55@00 other@56@00)))
  :pattern ((int___add__ s@$ self@55@00 other@56@00))
  :qid |quant-u-4743|)))
(assert (forall ((s@$ $Snap) (self@55@00 Int) (other@56@00 Int)) (!
  true
  :pattern ((int___add__ s@$ self@55@00 other@56@00))
  :qid |quant-u-4744|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__file__%limited s@$) (__file__ s@$))
  :pattern ((__file__ s@$))
  :qid |quant-u-4686|)))
(assert (forall ((s@$ $Snap)) (!
  (as __file__%stateless  Bool)
  :pattern ((__file__%limited s@$))
  :qid |quant-u-4687|)))
(assert (forall ((s@$ $Snap) (val@59@00 $Ref) (id@60@00 Int)) (!
  (=
    (_checkDefined%limited s@$ val@59@00 id@60@00)
    (_checkDefined s@$ val@59@00 id@60@00))
  :pattern ((_checkDefined s@$ val@59@00 id@60@00))
  :qid |quant-u-4688|)))
(assert (forall ((s@$ $Snap) (val@59@00 $Ref) (id@60@00 Int)) (!
  (_checkDefined%stateless val@59@00 id@60@00)
  :pattern ((_checkDefined%limited s@$ val@59@00 id@60@00))
  :qid |quant-u-4689|)))
(assert (forall ((s@$ $Snap) (val@59@00 $Ref) (id@60@00 Int)) (!
  (=>
    (_checkDefined%precondition s@$ val@59@00 id@60@00)
    (= (_checkDefined s@$ val@59@00 id@60@00) val@59@00))
  :pattern ((_checkDefined s@$ val@59@00 id@60@00))
  :qid |quant-u-4745|)))
(assert (forall ((s@$ $Snap) (val@59@00 $Ref) (id@60@00 Int)) (!
  true
  :pattern ((_checkDefined s@$ val@59@00 id@60@00))
  :qid |quant-u-4746|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__name__%limited s@$) (__name__ s@$))
  :pattern ((__name__ s@$))
  :qid |quant-u-4690|)))
(assert (forall ((s@$ $Snap)) (!
  (as __name__%stateless  Bool)
  :pattern ((__name__%limited s@$))
  :qid |quant-u-4691|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- m_0 ----------
(declare-const _cthread_161@0@01 $Ref)
(declare-const _caller_measures_161@1@01 Seq<Measure$>)
(declare-const _residue_161@2@01 $Perm)
(declare-const v_0@3@01 $Ref)
(declare-const lt@4@01 $Ref)
(declare-const _current_wait_level_161@5@01 $Perm)
(declare-const _res@6@01 $Ref)
(declare-const _cthread_161@7@01 $Ref)
(declare-const _caller_measures_161@8@01 Seq<Measure$>)
(declare-const _residue_161@9@01 $Perm)
(declare-const v_0@10@01 $Ref)
(declare-const lt@11@01 $Ref)
(declare-const _current_wait_level_161@12@01 $Perm)
(declare-const _res@13@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 ($Snap.combine ($Snap.first $t@14@01) ($Snap.second $t@14@01))))
(assert (= ($Snap.first $t@14@01) $Snap.unit))
; [eval] _cthread_161 != null
(assert (not (= _cthread_161@7@01 $Ref.null)))
(assert (=
  ($Snap.second $t@14@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@14@01))
    ($Snap.second ($Snap.second $t@14@01)))))
(assert (= ($Snap.first ($Snap.second $t@14@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_161), Thread_0())
; [eval] typeof(_cthread_161)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_161@7@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@14@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@14@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@14@01))) $Snap.unit))
; [eval] issubtype(typeof(v_0), typeof(v_0))
; [eval] typeof(v_0)
; [eval] typeof(v_0)
(assert (issubtype<Bool> (typeof<PyType> v_0@10@01) (typeof<PyType> v_0@10@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@14@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@14@01))))
  $Snap.unit))
; [eval] issubtype(typeof(lt), list(list_arg(typeof(lt), 0)))
; [eval] typeof(lt)
; [eval] list(list_arg(typeof(lt), 0))
; [eval] list_arg(typeof(lt), 0)
; [eval] typeof(lt)
(assert (issubtype<Bool> (typeof<PyType> lt@11@01) (list<PyType> (list_arg<PyType> (typeof<PyType> lt@11@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(v_0), int())
; [eval] typeof(v_0)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> v_0@10@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))
  $Snap.unit))
; [eval] issubtype(list_arg(typeof(lt), 0), object())
; [eval] list_arg(typeof(lt), 0)
; [eval] typeof(lt)
; [eval] object()
(assert (issubtype<Bool> (list_arg<PyType> (typeof<PyType> lt@11@01) 0) (as object<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))))
(assert (not (= lt@11@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))
  $Snap.unit))
; [eval] int___gt__(list___len__(lt), 0)
; [eval] list___len__(lt)
(push) ; 2
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@15@01 $Perm)
(assert ($Perm.isReadVar $k@15@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))) lt@11@01))
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@15@01))
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))) lt@11@01))
(set-option :timeout 0)
(push) ; 2
(assert (int___gt__%precondition $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))) lt@11@01) 0))
(pop) ; 2
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))) lt@11@01) 0))
(assert (int___gt__ $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))) lt@11@01) 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@16@01 $Snap)
(assert (= $t@16@01 ($Snap.combine ($Snap.first $t@16@01) ($Snap.second $t@16@01))))
(assert (= ($Snap.first $t@16@01) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_161)
(assert (=
  ($Snap.second $t@16@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@16@01))
    ($Snap.second ($Snap.second $t@16@01)))))
(assert (= ($Snap.first ($Snap.second $t@16@01)) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_161)
(assert (=
  ($Snap.second ($Snap.second $t@16@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@16@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@16@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@16@01))) $Snap.unit))
; [eval] _residue_161 <= _current_wait_level_161
(assert (<= _residue_161@9@01 _current_wait_level_161@12@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@16@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@16@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@16@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), tuple(Seq(list_arg(typeof(lt), 0), typeof(v_0), int())))
; [eval] typeof(_res)
; [eval] tuple(Seq(list_arg(typeof(lt), 0), typeof(v_0), int()))
; [eval] Seq(list_arg(typeof(lt), 0), typeof(v_0), int())
; [eval] list_arg(typeof(lt), 0)
; [eval] typeof(lt)
; [eval] typeof(v_0)
; [eval] int()
(assert (=
  (Seq_length
    (Seq_append
      (Seq_append
        (Seq_singleton (list_arg<PyType> (typeof<PyType> lt@11@01) 0))
        (Seq_singleton (typeof<PyType> v_0@10@01)))
      (Seq_singleton (as int<PyType>  PyType))))
  3))
(assert (issubtype<Bool> (typeof<PyType> _res@13@01) (tuple<PyType> (Seq_append
  (Seq_append
    (Seq_singleton (list_arg<PyType> (typeof<PyType> lt@11@01) 0))
    (Seq_singleton (typeof<PyType> v_0@10@01)))
  (Seq_singleton (as int<PyType>  PyType))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@16@01))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@17@01 $Ref)
; [exec]
; var v_3: Ref
(declare-const v_3@18@01 $Ref)
; [exec]
; var lt_2: Ref
(declare-const lt_2@19@01 $Ref)
; [exec]
; var _cwl_161: Perm
(declare-const _cwl_161@20@01 $Perm)
; [exec]
; var _method_measures_161: Seq[Measure$]
(declare-const _method_measures_161@21@01 Seq<Measure$>)
; [exec]
; _method_measures_161 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _res := null
; [exec]
; _err := null
; [exec]
; v_3 := v_0
; [exec]
; lt_2 := lt
; [exec]
; _res := tuple___create3__(list___getitem__(lt_2, __prim__int___box__(0)), v_3,
;   __prim__int___box__(int___add__(2, int___unbox__(v_3))), list_arg(typeof(lt),
;   0), typeof(v_0), int(), 0)
; [eval] tuple___create3__(list___getitem__(lt_2, __prim__int___box__(0)), v_3, __prim__int___box__(int___add__(2, int___unbox__(v_3))), list_arg(typeof(lt), 0), typeof(v_0), int(), 0)
; [eval] list___getitem__(lt_2, __prim__int___box__(0))
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
(declare-const $k@22@01 $Perm)
(assert ($Perm.isReadVar $k@22@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@22@01)))
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
(declare-const $k@23@01 $Perm)
(assert ($Perm.isReadVar $k@23@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@23@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@23@01))
(declare-const letvar@24@01 Int)
(assert (=
  (as letvar@24@01  Int)
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))) lt@11@01)))
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
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))) lt@11@01)))))
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
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))) lt@11@01))))
(assert (list___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))
      $Snap.unit))) lt@11@01 (__prim__int___box__ $Snap.unit 0)))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@22@01))
(assert ($Perm.isReadVar $k@23@01))
(assert (and
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType))
  (=
    (as letvar@24@01  Int)
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))) lt@11@01))
  (int___unbox__%precondition $Snap.unit (__prim__int___box__ $Snap.unit 0))
  (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
  (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
  (=>
    (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
    (<
      (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0))
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))) lt@11@01)))
  (list___getitem__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))
        $Snap.unit))) lt@11@01 (__prim__int___box__ $Snap.unit 0))))
; [eval] __prim__int___box__(int___add__(2, int___unbox__(v_3)))
; [eval] int___add__(2, int___unbox__(v_3))
; [eval] int___unbox__(v_3)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit v_0@10@01))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit v_0@10@01))
(push) ; 3
(assert (int___add__%precondition $Snap.unit 2 (int___unbox__ $Snap.unit v_0@10@01)))
(pop) ; 3
; Joined path conditions
(assert (int___add__%precondition $Snap.unit 2 (int___unbox__ $Snap.unit v_0@10@01)))
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_0@10@01))))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_0@10@01))))
; [eval] list_arg(typeof(lt), 0)
; [eval] typeof(lt)
; [eval] typeof(v_0)
; [eval] int()
(push) ; 3
; [eval] issubtype(typeof(arg0), t0)
; [eval] typeof(arg0)
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (list___getitem__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))
      $Snap.unit))) lt@11@01 (__prim__int___box__ $Snap.unit 0))) (list_arg<PyType> (typeof<PyType> lt@11@01) 0))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (list___getitem__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))
      $Snap.unit))) lt@11@01 (__prim__int___box__ $Snap.unit 0))) (list_arg<PyType> (typeof<PyType> lt@11@01) 0)))
; [eval] issubtype(typeof(arg1), t1)
; [eval] typeof(arg1)
; [eval] issubtype(typeof(arg2), t2)
; [eval] typeof(arg2)
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_0@10@01)))) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_0@10@01)))) (as int<PyType>  PyType)))
(assert (tuple___create3__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) (list___getitem__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))
      $Snap.unit))) lt@11@01 (__prim__int___box__ $Snap.unit 0)) v_0@10@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_0@10@01))) (list_arg<PyType> (typeof<PyType> lt@11@01) 0) (typeof<PyType> v_0@10@01) (as int<PyType>  PyType) 0))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (list___getitem__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))
        $Snap.unit))) lt@11@01 (__prim__int___box__ $Snap.unit 0))) (list_arg<PyType> (typeof<PyType> lt@11@01) 0))
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_0@10@01)))) (as int<PyType>  PyType))
  (tuple___create3__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) (list___getitem__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))
        $Snap.unit))) lt@11@01 (__prim__int___box__ $Snap.unit 0)) v_0@10@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_0@10@01))) (list_arg<PyType> (typeof<PyType> lt@11@01) 0) (typeof<PyType> v_0@10@01) (as int<PyType>  PyType) 0)))
(declare-const _res@25@01 $Ref)
(assert (=
  _res@25@01
  (tuple___create3__ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) (list___getitem__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@14@01)))))))
        $Snap.unit))) lt@11@01 (__prim__int___box__ $Snap.unit 0)) v_0@10@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_0@10@01))) (list_arg<PyType> (typeof<PyType> lt@11@01) 0) (typeof<PyType> v_0@10@01) (as int<PyType>  PyType) 0)))
; [exec]
; label __end
; [eval] issubtype(typeof(_res), tuple(Seq(list_arg(typeof(lt), 0), typeof(v_0), int())))
; [eval] typeof(_res)
; [eval] tuple(Seq(list_arg(typeof(lt), 0), typeof(v_0), int()))
; [eval] Seq(list_arg(typeof(lt), 0), typeof(v_0), int())
; [eval] list_arg(typeof(lt), 0)
; [eval] typeof(lt)
; [eval] typeof(v_0)
; [eval] int()
(assert (=
  (Seq_length
    (Seq_append
      (Seq_append
        (Seq_singleton (list_arg<PyType> (typeof<PyType> lt@11@01) 0))
        (Seq_singleton (typeof<PyType> v_0@10@01)))
      (Seq_singleton (as int<PyType>  PyType))))
  3))
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> _res@25@01) (tuple<PyType> (Seq_append
  (Seq_append
    (Seq_singleton (list_arg<PyType> (typeof<PyType> lt@11@01) 0))
    (Seq_singleton (typeof<PyType> v_0@10@01)))
  (Seq_singleton (as int<PyType>  PyType)))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res@25@01) (tuple<PyType> (Seq_append
  (Seq_append
    (Seq_singleton (list_arg<PyType> (typeof<PyType> lt@11@01) 0))
    (Seq_singleton (typeof<PyType> v_0@10@01)))
  (Seq_singleton (as int<PyType>  PyType))))))
; [eval] (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false)
; [eval] (forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false)
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false)
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- client ----------
(declare-const _cthread_162@26@01 $Ref)
(declare-const _caller_measures_162@27@01 Seq<Measure$>)
(declare-const _residue_162@28@01 $Perm)
(declare-const _current_wait_level_162@29@01 $Perm)
(declare-const _cthread_162@30@01 $Ref)
(declare-const _caller_measures_162@31@01 Seq<Measure$>)
(declare-const _residue_162@32@01 $Perm)
(declare-const _current_wait_level_162@33@01 $Perm)
(push) ; 1
(declare-const $t@34@01 $Snap)
(assert (= $t@34@01 ($Snap.combine ($Snap.first $t@34@01) ($Snap.second $t@34@01))))
(assert (= ($Snap.first $t@34@01) $Snap.unit))
; [eval] _cthread_162 != null
(assert (not (= _cthread_162@30@01 $Ref.null)))
(assert (=
  ($Snap.second $t@34@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@34@01))
    ($Snap.second ($Snap.second $t@34@01)))))
(assert (= ($Snap.first ($Snap.second $t@34@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_162), Thread_0())
; [eval] typeof(_cthread_162)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_162@30@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@34@01)) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@35@01 $Snap)
(assert (= $t@35@01 ($Snap.combine ($Snap.first $t@35@01) ($Snap.second $t@35@01))))
(assert (= ($Snap.first $t@35@01) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_162)
(assert (=
  ($Snap.second $t@35@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@35@01))
    ($Snap.second ($Snap.second $t@35@01)))))
(assert (= ($Snap.first ($Snap.second $t@35@01)) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_162)
(assert (=
  ($Snap.second ($Snap.second $t@35@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@35@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@35@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@35@01))) $Snap.unit))
; [eval] _residue_162 <= _current_wait_level_162
(assert (<= _residue_162@32@01 _current_wait_level_162@33@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@35@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@36@01 $Ref)
; [exec]
; var cont: Ref
(declare-const cont@37@01 $Ref)
; [exec]
; var t_3: Ref
(declare-const t_3@38@01 $Ref)
; [exec]
; var Container_res: Ref
(declare-const Container_res@39@01 $Ref)
; [exec]
; var list_0: Ref
(declare-const list_0@40@01 $Ref)
; [exec]
; var m_res: Ref
(declare-const m_res@41@01 $Ref)
; [exec]
; var _cwl_162: Perm
(declare-const _cwl_162@42@01 $Perm)
; [exec]
; var _method_measures_162: Seq[Measure$]
(declare-const _method_measures_162@43@01 Seq<Measure$>)
; [exec]
; _method_measures_162 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err := null
; [exec]
; Container_res := new()
(declare-const Container_res@44@01 $Ref)
(assert (not (= Container_res@44@01 $Ref.null)))
(assert (not (= Container_res@44@01 _cthread_162@30@01)))
(assert (not (= Container_res@44@01 t_3@38@01)))
(assert (not (= Container_res@44@01 list_0@40@01)))
(assert (not (= Container_res@44@01 Container_res@39@01)))
(assert (not (= Container_res@44@01 m_res@41@01)))
(assert (not (= Container_res@44@01 cont@37@01)))
; [exec]
; inhale typeof(Container_res) == Container()
(declare-const $t@45@01 $Snap)
(assert (= $t@45@01 $Snap.unit))
; [eval] typeof(Container_res) == Container()
; [eval] typeof(Container_res)
; [eval] Container()
(assert (= (typeof<PyType> Container_res@44@01) (as Container<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_162 := Container___init__(_cthread_162, _method_measures_162, _residue_162,
;   Container_res)
; [eval] _cthread_156 != null
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
; [eval] self != null
; [eval] issubtype(typeof(self), Container())
; [eval] typeof(self)
; [eval] Container()
(set-option :timeout 0)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> Container_res@44@01) (as Container<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> Container_res@44@01) (as Container<PyType>  PyType)))
; [eval] self != null
; [eval] perm(MustTerminate(_cthread_156)) == none
; [eval] perm(MustTerminate(_cthread_156))
; [eval] (forperm _r_22: Ref [MustInvokeBounded(_r_22)] :: false)
; [eval] (forperm _r_22: Ref [MustInvokeUnbounded(_r_22)] :: false)
; [eval] (forperm _r_22: Ref [_r_22.MustReleaseBounded] :: false)
; [eval] (forperm _r_22: Ref [_r_22.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_156@46@01 $Perm)
(declare-const $t@47@01 $Snap)
(assert (= $t@47@01 ($Snap.combine ($Snap.first $t@47@01) ($Snap.second $t@47@01))))
(assert (= ($Snap.first $t@47@01) $Snap.unit))
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseBounded] :: Level(_r_20) <= _current_wait_level_156)
(assert (=
  ($Snap.second $t@47@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@47@01))
    ($Snap.second ($Snap.second $t@47@01)))))
(assert (= ($Snap.first ($Snap.second $t@47@01)) $Snap.unit))
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseUnbounded] :: Level(_r_20) <= _current_wait_level_156)
(assert (=
  ($Snap.second ($Snap.second $t@47@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@47@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@47@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@47@01))) $Snap.unit))
; [eval] _residue_156 <= _current_wait_level_156
(assert (<= _residue_162@32@01 _current_wait_level_156@46@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@47@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; cont := Container_res
; [exec]
; inhale _isDefined(1953394531)
(declare-const $t@48@01 $Snap)
(assert (= $t@48@01 $Snap.unit))
; [eval] _isDefined(1953394531)
(set-option :timeout 0)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 1953394531))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 1953394531))
(assert (_isDefined $Snap.unit 1953394531))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_162, list_0 := list___init__(_cthread_162, _method_measures_162, _residue_162)
; [eval] _cthread_8 != null
; [eval] Measure$check(_caller_measures_8, _cthread_8, 1)
(set-option :timeout 0)
(push) ; 3
(assert (Measure$check%precondition $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_162@30@01 1))
(pop) ; 3
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_162@30@01 1))
(push) ; 3
(assert (not (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_162@30@01 1)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_162@30@01 1))
; [eval] issubtype(typeof(_cthread_8), Thread_0())
; [eval] typeof(_cthread_8)
; [eval] Thread_0()
; [eval] Measure$check(_caller_measures_8, _cthread_8, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
(declare-const _current_wait_level_8@49@01 $Perm)
(declare-const res@50@01 $Ref)
(declare-const $t@51@01 $Snap)
(assert (= $t@51@01 ($Snap.combine ($Snap.first $t@51@01) ($Snap.second $t@51@01))))
(assert (= ($Snap.first $t@51@01) $Snap.unit))
; [eval] (forperm _r_44: Ref [_r_44.MustReleaseBounded] :: Level(_r_44) <= _current_wait_level_8)
(assert (=
  ($Snap.second $t@51@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@51@01))
    ($Snap.second ($Snap.second $t@51@01)))))
(assert (= ($Snap.first ($Snap.second $t@51@01)) $Snap.unit))
; [eval] (forperm _r_44: Ref [_r_44.MustReleaseUnbounded] :: Level(_r_44) <= _current_wait_level_8)
(assert (=
  ($Snap.second ($Snap.second $t@51@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@51@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@51@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@51@01))) $Snap.unit))
; [eval] _residue_8 <= _current_wait_level_8
(assert (<= _residue_162@32@01 _current_wait_level_8@49@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@51@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@51@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@51@01)))))))
(assert (not (= res@50@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@51@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@51@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@51@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@51@01)))))
  $Snap.unit))
; [eval] res.list_acc == Seq[Ref]()
; [eval] Seq[Ref]()
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@51@01)))))
  (as Seq_empty  Seq<$Ref>)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@51@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@51@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@51@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@51@01))))))
  $Snap.unit))
; [eval] typeof(res) == list(list_arg(typeof(res), 0))
; [eval] typeof(res)
; [eval] list(list_arg(typeof(res), 0))
; [eval] list_arg(typeof(res), 0)
; [eval] typeof(res)
(assert (=
  (typeof<PyType> res@50@01)
  (list<PyType> (list_arg<PyType> (typeof<PyType> res@50@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@51@01))))))
  $Snap.unit))
; [eval] (Low(res): Bool)
(assert (Low<Bool> res@50@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale issubtype(typeof(list_0), list(Container()))
(declare-const $t@52@01 $Snap)
(assert (= $t@52@01 $Snap.unit))
; [eval] issubtype(typeof(list_0), list(Container()))
; [eval] typeof(list_0)
; [eval] list(Container())
; [eval] Container()
(assert (issubtype<Bool> (typeof<PyType> res@50@01) (list<PyType> (as Container<PyType>  PyType))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert issubtype(typeof(_checkDefined(cont, 1953394531)), Container())
; [eval] issubtype(typeof(_checkDefined(cont, 1953394531)), Container())
; [eval] typeof(_checkDefined(cont, 1953394531))
; [eval] _checkDefined(cont, 1953394531)
(set-option :timeout 0)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit Container_res@44@01 1953394531))
(pop) ; 3
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit Container_res@44@01 1953394531))
; [eval] Container()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit Container_res@44@01 1953394531)) (as Container<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit Container_res@44@01 1953394531)) (as Container<PyType>  PyType)))
; [exec]
; list_0.list_acc := Seq(_checkDefined(cont, 1953394531))
; [eval] Seq(_checkDefined(cont, 1953394531))
; [eval] _checkDefined(cont, 1953394531)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
(assert (=
  (Seq_length
    (Seq_singleton (_checkDefined $Snap.unit Container_res@44@01 1953394531)))
  1))
(declare-const list_acc@53@01 Seq<$Ref>)
(assert (=
  list_acc@53@01
  (Seq_singleton (_checkDefined $Snap.unit Container_res@44@01 1953394531))))
; [exec]
; _cwl_162, m_res := m_0(_cthread_162, _method_measures_162, _residue_162, __prim__bool___box__(true),
;   list_0)
; [eval] __prim__bool___box__(true)
(push) ; 3
(assert (__prim__bool___box__%precondition $Snap.unit true))
(pop) ; 3
; Joined path conditions
(assert (__prim__bool___box__%precondition $Snap.unit true))
; [eval] _cthread_161 != null
; [eval] issubtype(typeof(_cthread_161), Thread_0())
; [eval] typeof(_cthread_161)
; [eval] Thread_0()
; [eval] issubtype(typeof(v_0), typeof(v_0))
; [eval] typeof(v_0)
; [eval] typeof(v_0)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__bool___box__ $Snap.unit true)) (typeof<PyType> (__prim__bool___box__ $Snap.unit true)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__bool___box__ $Snap.unit true)) (typeof<PyType> (__prim__bool___box__ $Snap.unit true))))
; [eval] issubtype(typeof(lt), list(list_arg(typeof(lt), 0)))
; [eval] typeof(lt)
; [eval] list(list_arg(typeof(lt), 0))
; [eval] list_arg(typeof(lt), 0)
; [eval] typeof(lt)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> res@50@01) (list<PyType> (list_arg<PyType> (typeof<PyType> res@50@01) 0)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> res@50@01) (list<PyType> (list_arg<PyType> (typeof<PyType> res@50@01) 0))))
; [eval] issubtype(typeof(v_0), int())
; [eval] typeof(v_0)
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__bool___box__ $Snap.unit true)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__bool___box__ $Snap.unit true)) (as int<PyType>  PyType)))
; [eval] issubtype(list_arg(typeof(lt), 0), object())
; [eval] list_arg(typeof(lt), 0)
; [eval] typeof(lt)
; [eval] object()
(push) ; 3
(assert (not (issubtype<Bool> (list_arg<PyType> (typeof<PyType> res@50@01) 0) (as object<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (list_arg<PyType> (typeof<PyType> res@50@01) 0) (as object<PyType>  PyType)))
; [eval] int___gt__(list___len__(lt), 0)
; [eval] list___len__(lt)
(push) ; 3
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@54@01 $Perm)
(assert ($Perm.isReadVar $k@54@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@54@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.Seq<$Ref>To$Snap list_acc@53@01)) res@50@01))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@54@01))
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.Seq<$Ref>To$Snap list_acc@53@01)) res@50@01))
(set-option :timeout 0)
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($SortWrappers.Seq<$Ref>To$Snap list_acc@53@01)) res@50@01) 0))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($SortWrappers.Seq<$Ref>To$Snap list_acc@53@01)) res@50@01) 0))
(push) ; 3
(assert (not (int___gt__ $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($SortWrappers.Seq<$Ref>To$Snap list_acc@53@01)) res@50@01) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (int___gt__ $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($SortWrappers.Seq<$Ref>To$Snap list_acc@53@01)) res@50@01) 0))
; [eval] perm(MustTerminate(_cthread_161)) == none
; [eval] perm(MustTerminate(_cthread_161))
; [eval] (forperm _r_1: Ref [MustInvokeBounded(_r_1)] :: false)
; [eval] (forperm _r_1: Ref [MustInvokeUnbounded(_r_1)] :: false)
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseBounded] :: false)
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_161@55@01 $Perm)
(declare-const _res@56@01 $Ref)
(declare-const $t@57@01 $Snap)
(assert (= $t@57@01 ($Snap.combine ($Snap.first $t@57@01) ($Snap.second $t@57@01))))
(assert (= ($Snap.first $t@57@01) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_161)
(assert (=
  ($Snap.second $t@57@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@57@01))
    ($Snap.second ($Snap.second $t@57@01)))))
(assert (= ($Snap.first ($Snap.second $t@57@01)) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_161)
(assert (=
  ($Snap.second ($Snap.second $t@57@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@57@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@57@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@57@01))) $Snap.unit))
; [eval] _residue_161 <= _current_wait_level_161
(assert (<= _residue_162@32@01 _current_wait_level_161@55@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@57@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@57@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@57@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), tuple(Seq(list_arg(typeof(lt), 0), typeof(v_0), int())))
; [eval] typeof(_res)
; [eval] tuple(Seq(list_arg(typeof(lt), 0), typeof(v_0), int()))
; [eval] Seq(list_arg(typeof(lt), 0), typeof(v_0), int())
; [eval] list_arg(typeof(lt), 0)
; [eval] typeof(lt)
; [eval] typeof(v_0)
; [eval] int()
(assert (=
  (Seq_length
    (Seq_append
      (Seq_append
        (Seq_singleton (list_arg<PyType> (typeof<PyType> res@50@01) 0))
        (Seq_singleton (typeof<PyType> (__prim__bool___box__ $Snap.unit true))))
      (Seq_singleton (as int<PyType>  PyType))))
  3))
(assert (issubtype<Bool> (typeof<PyType> _res@56@01) (tuple<PyType> (Seq_append
  (Seq_append
    (Seq_singleton (list_arg<PyType> (typeof<PyType> res@50@01) 0))
    (Seq_singleton (typeof<PyType> (__prim__bool___box__ $Snap.unit true))))
  (Seq_singleton (as int<PyType>  PyType))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; t_3 := m_res
; [exec]
; inhale _isDefined(3366772)
(declare-const $t@58@01 $Snap)
(assert (= $t@58@01 $Snap.unit))
; [eval] _isDefined(3366772)
(set-option :timeout 0)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3366772))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3366772))
(assert (_isDefined $Snap.unit 3366772))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert issubtype(typeof(tuple___getitem__(_checkDefined(t_3, 3366772), 0)),
;   Container())
; [eval] issubtype(typeof(tuple___getitem__(_checkDefined(t_3, 3366772), 0)), Container())
; [eval] typeof(tuple___getitem__(_checkDefined(t_3, 3366772), 0))
; [eval] tuple___getitem__(_checkDefined(t_3, 3366772), 0)
; [eval] _checkDefined(t_3, 3366772)
(set-option :timeout 0)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit _res@56@01 3366772))
(pop) ; 3
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit _res@56@01 3366772))
(push) ; 3
; [eval] (let ln == (tuple___len__(self)) in (key >= 0 ==> key < ln) && (key < 0 ==> key >= -ln))
; [eval] tuple___len__(self)
(push) ; 4
(assert (tuple___len__%precondition $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772)))
(pop) ; 4
; Joined path conditions
(assert (tuple___len__%precondition $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772)))
(declare-const letvar@59@01 Int)
(assert (=
  (as letvar@59@01  Int)
  (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772))))
; [eval] (key >= 0 ==> key < ln) && (key < 0 ==> key >= -ln)
; [eval] key >= 0 ==> key < ln
; [eval] key >= 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | True | live]
; [else-branch: 3 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 3 | True]
; [eval] key < ln
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 4 | !(0 < tuple___len__(_, _checkDefined(_, _res@56@01, 3366772))) | live]
; [else-branch: 4 | 0 < tuple___len__(_, _checkDefined(_, _res@56@01, 3366772)) | live]
(push) ; 5
; [then-branch: 4 | !(0 < tuple___len__(_, _checkDefined(_, _res@56@01, 3366772)))]
(assert (not
  (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772)))))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | 0 < tuple___len__(_, _checkDefined(_, _res@56@01, 3366772))]
(assert (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772))))
; [eval] key < 0 ==> key >= -ln
; [eval] key < 0
(push) ; 6
; [then-branch: 5 | False | dead]
; [else-branch: 5 | True | live]
(push) ; 7
; [else-branch: 5 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772)))
  (not
    (<
      0
      (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772))))))
(push) ; 4
(assert (not (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772))))
(assert (tuple___getitem__%precondition $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772) 0))
(pop) ; 3
; Joined path conditions
(assert (and
  (tuple___len__%precondition $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772))
  (=
    (as letvar@59@01  Int)
    (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772)))
  (or
    (<
      0
      (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772)))
    (not
      (<
        0
        (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772)))))
  (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772)))
  (tuple___getitem__%precondition $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772) 0)))
; [eval] Container()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (tuple___getitem__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772) 0)) (as Container<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (tuple___getitem__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772) 0)) (as Container<PyType>  PyType)))
; [exec]
; assert issubtype(typeof(tuple___getitem__(_checkDefined(t_3, 3366772), 1)),
;   bool())
; [eval] issubtype(typeof(tuple___getitem__(_checkDefined(t_3, 3366772), 1)), bool())
; [eval] typeof(tuple___getitem__(_checkDefined(t_3, 3366772), 1))
; [eval] tuple___getitem__(_checkDefined(t_3, 3366772), 1)
; [eval] _checkDefined(t_3, 3366772)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
(push) ; 3
; [eval] (let ln == (tuple___len__(self)) in (key >= 0 ==> key < ln) && (key < 0 ==> key >= -ln))
; [eval] tuple___len__(self)
(push) ; 4
(pop) ; 4
; Joined path conditions
(declare-const letvar@60@01 Int)
(assert (=
  (as letvar@60@01  Int)
  (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772))))
; [eval] (key >= 0 ==> key < ln) && (key < 0 ==> key >= -ln)
; [eval] key >= 0 ==> key < ln
; [eval] key >= 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | True | live]
; [else-branch: 6 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 6 | True]
; [eval] key < ln
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 7 | !(1 < tuple___len__(_, _checkDefined(_, _res@56@01, 3366772))) | live]
; [else-branch: 7 | 1 < tuple___len__(_, _checkDefined(_, _res@56@01, 3366772)) | live]
(push) ; 5
; [then-branch: 7 | !(1 < tuple___len__(_, _checkDefined(_, _res@56@01, 3366772)))]
(assert (not
  (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772)))))
(pop) ; 5
(push) ; 5
; [else-branch: 7 | 1 < tuple___len__(_, _checkDefined(_, _res@56@01, 3366772))]
(assert (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772))))
; [eval] key < 0 ==> key >= -ln
; [eval] key < 0
(push) ; 6
; [then-branch: 8 | False | dead]
; [else-branch: 8 | True | live]
(push) ; 7
; [else-branch: 8 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772)))
  (not
    (<
      1
      (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772))))))
(push) ; 4
(assert (not (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772))))
(assert (tuple___getitem__%precondition $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772) 1))
(pop) ; 3
; Joined path conditions
(assert (and
  (=
    (as letvar@60@01  Int)
    (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772)))
  (or
    (<
      1
      (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772)))
    (not
      (<
        1
        (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772)))))
  (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772)))
  (tuple___getitem__%precondition $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772) 1)))
; [eval] bool()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (tuple___getitem__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772) 1)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (tuple___getitem__ $Snap.unit (_checkDefined $Snap.unit _res@56@01 3366772) 1)) (as bool<PyType>  PyType)))
; [exec]
; assert false
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- m_used_twice ----------
(declare-const _cthread_163@61@01 $Ref)
(declare-const _caller_measures_163@62@01 Seq<Measure$>)
(declare-const _residue_163@63@01 $Perm)
(declare-const v_1@64@01 $Ref)
(declare-const lt_0@65@01 $Ref)
(declare-const t_4@66@01 $Ref)
(declare-const b@67@01 $Ref)
(declare-const _current_wait_level_163@68@01 $Perm)
(declare-const _res@69@01 $Ref)
(declare-const _cthread_163@70@01 $Ref)
(declare-const _caller_measures_163@71@01 Seq<Measure$>)
(declare-const _residue_163@72@01 $Perm)
(declare-const v_1@73@01 $Ref)
(declare-const lt_0@74@01 $Ref)
(declare-const t_4@75@01 $Ref)
(declare-const b@76@01 $Ref)
(declare-const _current_wait_level_163@77@01 $Perm)
(declare-const _res@78@01 $Ref)
(push) ; 1
(declare-const $t@79@01 $Snap)
(assert (= $t@79@01 ($Snap.combine ($Snap.first $t@79@01) ($Snap.second $t@79@01))))
(assert (= ($Snap.first $t@79@01) $Snap.unit))
; [eval] _cthread_163 != null
(assert (not (= _cthread_163@70@01 $Ref.null)))
(assert (=
  ($Snap.second $t@79@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@79@01))
    ($Snap.second ($Snap.second $t@79@01)))))
(assert (= ($Snap.first ($Snap.second $t@79@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_163), Thread_0())
; [eval] typeof(_cthread_163)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_163@70@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@79@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@79@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@79@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@79@01))) $Snap.unit))
; [eval] issubtype(typeof(v_1), typeof(v_1))
; [eval] typeof(v_1)
; [eval] typeof(v_1)
(assert (issubtype<Bool> (typeof<PyType> v_1@73@01) (typeof<PyType> v_1@73@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@79@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@79@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@79@01))))
  $Snap.unit))
; [eval] issubtype(typeof(lt_0), list(list_arg(typeof(lt_0), 0)))
; [eval] typeof(lt_0)
; [eval] list(list_arg(typeof(lt_0), 0))
; [eval] list_arg(typeof(lt_0), 0)
; [eval] typeof(lt_0)
(assert (issubtype<Bool> (typeof<PyType> lt_0@74@01) (list<PyType> (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(t_4), list_arg(typeof(lt_0), 0))
; [eval] typeof(t_4)
; [eval] list_arg(typeof(lt_0), 0)
; [eval] typeof(lt_0)
(assert (issubtype<Bool> (typeof<PyType> t_4@75@01) (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(b), bool())
; [eval] typeof(b)
; [eval] bool()
(assert (issubtype<Bool> (typeof<PyType> b@76@01) (as bool<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))
  $Snap.unit))
; [eval] issubtype(typeof(v_1), int())
; [eval] typeof(v_1)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> v_1@73@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01))))))))
  $Snap.unit))
; [eval] issubtype(list_arg(typeof(lt_0), 0), object())
; [eval] list_arg(typeof(lt_0), 0)
; [eval] typeof(lt_0)
; [eval] object()
(assert (issubtype<Bool> (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0) (as object<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01))))))))))))
(assert (not (= lt_0@74@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01))))))))))
  $Snap.unit))
; [eval] int___gt__(list___len__(lt_0), 0)
; [eval] list___len__(lt_0)
(push) ; 2
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@80@01 $Perm)
(assert ($Perm.isReadVar $k@80@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@80@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))))) lt_0@74@01))
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@80@01))
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))))) lt_0@74@01))
(set-option :timeout 0)
(push) ; 2
(assert (int___gt__%precondition $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))))) lt_0@74@01) 0))
(pop) ; 2
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))))) lt_0@74@01) 0))
(assert (int___gt__ $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))))) lt_0@74@01) 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01))))))))))
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
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseBounded] :: Level(_r_5) <= _current_wait_level_163)
(assert (=
  ($Snap.second $t@81@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@81@01))
    ($Snap.second ($Snap.second $t@81@01)))))
(assert (= ($Snap.first ($Snap.second $t@81@01)) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseUnbounded] :: Level(_r_5) <= _current_wait_level_163)
(assert (=
  ($Snap.second ($Snap.second $t@81@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@81@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@81@01))) $Snap.unit))
; [eval] _residue_163 <= _current_wait_level_163
(assert (<= _residue_163@72@01 _current_wait_level_163@77@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@81@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@81@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@81@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), tuple(Seq(list_arg(typeof(lt_0), 0), typeof(v_1), int())))
; [eval] typeof(_res)
; [eval] tuple(Seq(list_arg(typeof(lt_0), 0), typeof(v_1), int()))
; [eval] Seq(list_arg(typeof(lt_0), 0), typeof(v_1), int())
; [eval] list_arg(typeof(lt_0), 0)
; [eval] typeof(lt_0)
; [eval] typeof(v_1)
; [eval] int()
(assert (=
  (Seq_length
    (Seq_append
      (Seq_append
        (Seq_singleton (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0))
        (Seq_singleton (typeof<PyType> v_1@73@01)))
      (Seq_singleton (as int<PyType>  PyType))))
  3))
(assert (issubtype<Bool> (typeof<PyType> _res@78@01) (tuple<PyType> (Seq_append
  (Seq_append
    (Seq_singleton (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0))
    (Seq_singleton (typeof<PyType> v_1@73@01)))
  (Seq_singleton (as int<PyType>  PyType))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@82@01 $Ref)
; [exec]
; var t_res: Ref
(declare-const t_res@83@01 $Ref)
; [exec]
; var v_4: Ref
(declare-const v_4@84@01 $Ref)
; [exec]
; var lt_3: Ref
(declare-const lt_3@85@01 $Ref)
; [exec]
; var t_8: Ref
(declare-const t_8@86@01 $Ref)
; [exec]
; var b_1: Ref
(declare-const b_1@87@01 $Ref)
; [exec]
; var _cwl_163: Perm
(declare-const _cwl_163@88@01 $Perm)
; [exec]
; var _method_measures_163: Seq[Measure$]
(declare-const _method_measures_163@89@01 Seq<Measure$>)
; [exec]
; _method_measures_163 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _res := null
; [exec]
; _err := null
; [exec]
; v_4 := v_1
; [exec]
; lt_3 := lt_0
; [exec]
; t_8 := t_4
; [exec]
; b_1 := b
; [eval] bool___unbox__(b_1)
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(assert (bool___unbox__%precondition $Snap.unit b@76@01))
(pop) ; 3
; Joined path conditions
(assert (bool___unbox__%precondition $Snap.unit b@76@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (bool___unbox__ $Snap.unit b@76@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (bool___unbox__ $Snap.unit b@76@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | bool___unbox__(_, b@76@01) | live]
; [else-branch: 9 | !(bool___unbox__(_, b@76@01)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 9 | bool___unbox__(_, b@76@01)]
(assert (bool___unbox__ $Snap.unit b@76@01))
; [exec]
; t_res := t_8
; [exec]
; inhale _isDefined(495623233396)
(declare-const $t@90@01 $Snap)
(assert (= $t@90@01 $Snap.unit))
; [eval] _isDefined(495623233396)
(push) ; 4
(assert (_isDefined%precondition $Snap.unit 495623233396))
(pop) ; 4
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 495623233396))
(assert (_isDefined $Snap.unit 495623233396))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _res := tuple___create3__(_checkDefined(t_res, 495623233396), v_4, __prim__int___box__(int___add__(2,
;   int___unbox__(v_4))), list_arg(typeof(lt_0), 0), typeof(v_1), int(), 1)
; [eval] tuple___create3__(_checkDefined(t_res, 495623233396), v_4, __prim__int___box__(int___add__(2, int___unbox__(v_4))), list_arg(typeof(lt_0), 0), typeof(v_1), int(), 1)
; [eval] _checkDefined(t_res, 495623233396)
(set-option :timeout 0)
(push) ; 4
; [eval] _isDefined(id)
(push) ; 5
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit t_4@75@01 495623233396))
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit t_4@75@01 495623233396))
; [eval] __prim__int___box__(int___add__(2, int___unbox__(v_4)))
; [eval] int___add__(2, int___unbox__(v_4))
; [eval] int___unbox__(v_4)
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit v_1@73@01))
(pop) ; 4
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit v_1@73@01))
(push) ; 4
(assert (int___add__%precondition $Snap.unit 2 (int___unbox__ $Snap.unit v_1@73@01)))
(pop) ; 4
; Joined path conditions
(assert (int___add__%precondition $Snap.unit 2 (int___unbox__ $Snap.unit v_1@73@01)))
(push) ; 4
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_1@73@01))))
(pop) ; 4
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_1@73@01))))
; [eval] list_arg(typeof(lt_0), 0)
; [eval] typeof(lt_0)
; [eval] typeof(v_1)
; [eval] int()
(push) ; 4
; [eval] issubtype(typeof(arg0), t0)
; [eval] typeof(arg0)
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit t_4@75@01 495623233396)) (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit t_4@75@01 495623233396)) (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0)))
; [eval] issubtype(typeof(arg1), t1)
; [eval] typeof(arg1)
; [eval] issubtype(typeof(arg2), t2)
; [eval] typeof(arg2)
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_1@73@01)))) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_1@73@01)))) (as int<PyType>  PyType)))
(assert (tuple___create3__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) (_checkDefined $Snap.unit t_4@75@01 495623233396) v_1@73@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_1@73@01))) (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0) (typeof<PyType> v_1@73@01) (as int<PyType>  PyType) 1))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit t_4@75@01 495623233396)) (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0))
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_1@73@01)))) (as int<PyType>  PyType))
  (tuple___create3__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) (_checkDefined $Snap.unit t_4@75@01 495623233396) v_1@73@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_1@73@01))) (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0) (typeof<PyType> v_1@73@01) (as int<PyType>  PyType) 1)))
(declare-const _res@91@01 $Ref)
(assert (=
  _res@91@01
  (tuple___create3__ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) (_checkDefined $Snap.unit t_4@75@01 495623233396) v_1@73@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_1@73@01))) (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0) (typeof<PyType> v_1@73@01) (as int<PyType>  PyType) 1)))
; [exec]
; label __end
; [eval] issubtype(typeof(_res), tuple(Seq(list_arg(typeof(lt_0), 0), typeof(v_1), int())))
; [eval] typeof(_res)
; [eval] tuple(Seq(list_arg(typeof(lt_0), 0), typeof(v_1), int()))
; [eval] Seq(list_arg(typeof(lt_0), 0), typeof(v_1), int())
; [eval] list_arg(typeof(lt_0), 0)
; [eval] typeof(lt_0)
; [eval] typeof(v_1)
; [eval] int()
(assert (=
  (Seq_length
    (Seq_append
      (Seq_append
        (Seq_singleton (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0))
        (Seq_singleton (typeof<PyType> v_1@73@01)))
      (Seq_singleton (as int<PyType>  PyType))))
  3))
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> _res@91@01) (tuple<PyType> (Seq_append
  (Seq_append
    (Seq_singleton (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0))
    (Seq_singleton (typeof<PyType> v_1@73@01)))
  (Seq_singleton (as int<PyType>  PyType)))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res@91@01) (tuple<PyType> (Seq_append
  (Seq_append
    (Seq_singleton (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0))
    (Seq_singleton (typeof<PyType> v_1@73@01)))
  (Seq_singleton (as int<PyType>  PyType))))))
; [eval] (forperm _r_6: Ref [MustInvokeBounded(_r_6)] :: false)
; [eval] (forperm _r_6: Ref [MustInvokeUnbounded(_r_6)] :: false)
; [eval] (forperm _r_6: Ref [_r_6.MustReleaseBounded] :: false)
; [eval] (forperm _r_6: Ref [_r_6.MustReleaseUnbounded] :: false)
(pop) ; 3
(push) ; 3
; [else-branch: 9 | !(bool___unbox__(_, b@76@01))]
(assert (not (bool___unbox__ $Snap.unit b@76@01)))
(pop) ; 3
; [eval] !bool___unbox__(b_1)
; [eval] bool___unbox__(b_1)
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(pop) ; 3
; Joined path conditions
(push) ; 3
(set-option :timeout 10)
(assert (not (bool___unbox__ $Snap.unit b@76@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (bool___unbox__ $Snap.unit b@76@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | !(bool___unbox__(_, b@76@01)) | live]
; [else-branch: 10 | bool___unbox__(_, b@76@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 10 | !(bool___unbox__(_, b@76@01))]
(assert (not (bool___unbox__ $Snap.unit b@76@01)))
; [exec]
; t_res := list___getitem__(lt_3, __prim__int___box__(0))
; [eval] list___getitem__(lt_3, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 4
(assert (__prim__int___box__%precondition $Snap.unit 0))
(pop) ; 4
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 0))
(push) ; 4
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] issubtype(typeof(key), int())
; [eval] typeof(key)
; [eval] int()
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType)))
(declare-const $k@92@01 $Perm)
(assert ($Perm.isReadVar $k@92@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@92@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] (let ln == (list___len__(self)) in (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln))
; [eval] list___len__(self)
(set-option :timeout 0)
(push) ; 5
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@93@01 $Perm)
(assert ($Perm.isReadVar $k@93@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@93@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
; Joined path conditions
(assert ($Perm.isReadVar $k@93@01))
(declare-const letvar@94@01 Int)
(assert (=
  (as letvar@94@01  Int)
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))))) lt_0@74@01)))
; [eval] (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln)
; [eval] int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln
; [eval] int___unbox__(key) < 0
; [eval] int___unbox__(key)
(set-option :timeout 0)
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit (__prim__int___box__ $Snap.unit 0)))
(pop) ; 5
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit (__prim__int___box__ $Snap.unit 0)))
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | int___unbox__(_, __prim__int___box__(_, 0)) < 0 | dead]
; [else-branch: 11 | !(int___unbox__(_, __prim__int___box__(_, 0)) < 0) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 11 | !(int___unbox__(_, __prim__int___box__(_, 0)) < 0)]
(assert (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)))
(push) ; 5
; [then-branch: 12 | False | live]
; [else-branch: 12 | True | live]
(push) ; 6
; [then-branch: 12 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 12 | True]
; [eval] int___unbox__(key) >= 0 ==> int___unbox__(key) < ln
; [eval] int___unbox__(key) >= 0
; [eval] int___unbox__(key)
(push) ; 7
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 7
; Joined path conditions
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | int___unbox__(_, __prim__int___box__(_, 0)) >= 0 | live]
; [else-branch: 13 | !(int___unbox__(_, __prim__int___box__(_, 0)) >= 0) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 13 | int___unbox__(_, __prim__int___box__(_, 0)) >= 0]
(assert (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
; [eval] int___unbox__(key) < ln
; [eval] int___unbox__(key)
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
(push) ; 5
(assert (not (=>
  (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
  (<
    (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0))
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))))) lt_0@74@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
  (<
    (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0))
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))))) lt_0@74@01))))
(assert (list___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))))
      $Snap.unit))) lt_0@74@01 (__prim__int___box__ $Snap.unit 0)))
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@92@01))
(assert ($Perm.isReadVar $k@93@01))
(assert (and
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType))
  (=
    (as letvar@94@01  Int)
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))))) lt_0@74@01))
  (int___unbox__%precondition $Snap.unit (__prim__int___box__ $Snap.unit 0))
  (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
  (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
  (=>
    (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
    (<
      (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0))
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))))) lt_0@74@01)))
  (list___getitem__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))))
        $Snap.unit))) lt_0@74@01 (__prim__int___box__ $Snap.unit 0))))
(declare-const t_res@95@01 $Ref)
(assert (=
  t_res@95@01
  (list___getitem__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@79@01)))))))))
        $Snap.unit))) lt_0@74@01 (__prim__int___box__ $Snap.unit 0))))
; [exec]
; inhale _isDefined(495623233396)
(declare-const $t@96@01 $Snap)
(assert (= $t@96@01 $Snap.unit))
; [eval] _isDefined(495623233396)
(push) ; 4
(assert (_isDefined%precondition $Snap.unit 495623233396))
(pop) ; 4
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 495623233396))
(assert (_isDefined $Snap.unit 495623233396))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _res := tuple___create3__(_checkDefined(t_res, 495623233396), v_4, __prim__int___box__(int___add__(2,
;   int___unbox__(v_4))), list_arg(typeof(lt_0), 0), typeof(v_1), int(), 1)
; [eval] tuple___create3__(_checkDefined(t_res, 495623233396), v_4, __prim__int___box__(int___add__(2, int___unbox__(v_4))), list_arg(typeof(lt_0), 0), typeof(v_1), int(), 1)
; [eval] _checkDefined(t_res, 495623233396)
(set-option :timeout 0)
(push) ; 4
; [eval] _isDefined(id)
(push) ; 5
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit t_res@95@01 495623233396))
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit t_res@95@01 495623233396))
; [eval] __prim__int___box__(int___add__(2, int___unbox__(v_4)))
; [eval] int___add__(2, int___unbox__(v_4))
; [eval] int___unbox__(v_4)
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit v_1@73@01))
(pop) ; 4
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit v_1@73@01))
(push) ; 4
(assert (int___add__%precondition $Snap.unit 2 (int___unbox__ $Snap.unit v_1@73@01)))
(pop) ; 4
; Joined path conditions
(assert (int___add__%precondition $Snap.unit 2 (int___unbox__ $Snap.unit v_1@73@01)))
(push) ; 4
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_1@73@01))))
(pop) ; 4
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_1@73@01))))
; [eval] list_arg(typeof(lt_0), 0)
; [eval] typeof(lt_0)
; [eval] typeof(v_1)
; [eval] int()
(push) ; 4
; [eval] issubtype(typeof(arg0), t0)
; [eval] typeof(arg0)
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit t_res@95@01 495623233396)) (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit t_res@95@01 495623233396)) (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0)))
; [eval] issubtype(typeof(arg1), t1)
; [eval] typeof(arg1)
; [eval] issubtype(typeof(arg2), t2)
; [eval] typeof(arg2)
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_1@73@01)))) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_1@73@01)))) (as int<PyType>  PyType)))
(assert (tuple___create3__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) (_checkDefined $Snap.unit t_res@95@01 495623233396) v_1@73@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_1@73@01))) (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0) (typeof<PyType> v_1@73@01) (as int<PyType>  PyType) 1))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit t_res@95@01 495623233396)) (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0))
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_1@73@01)))) (as int<PyType>  PyType))
  (tuple___create3__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) (_checkDefined $Snap.unit t_res@95@01 495623233396) v_1@73@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_1@73@01))) (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0) (typeof<PyType> v_1@73@01) (as int<PyType>  PyType) 1)))
(declare-const _res@97@01 $Ref)
(assert (=
  _res@97@01
  (tuple___create3__ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) (_checkDefined $Snap.unit t_res@95@01 495623233396) v_1@73@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_1@73@01))) (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0) (typeof<PyType> v_1@73@01) (as int<PyType>  PyType) 1)))
; [exec]
; label __end
; [eval] issubtype(typeof(_res), tuple(Seq(list_arg(typeof(lt_0), 0), typeof(v_1), int())))
; [eval] typeof(_res)
; [eval] tuple(Seq(list_arg(typeof(lt_0), 0), typeof(v_1), int()))
; [eval] Seq(list_arg(typeof(lt_0), 0), typeof(v_1), int())
; [eval] list_arg(typeof(lt_0), 0)
; [eval] typeof(lt_0)
; [eval] typeof(v_1)
; [eval] int()
(assert (=
  (Seq_length
    (Seq_append
      (Seq_append
        (Seq_singleton (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0))
        (Seq_singleton (typeof<PyType> v_1@73@01)))
      (Seq_singleton (as int<PyType>  PyType))))
  3))
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> _res@97@01) (tuple<PyType> (Seq_append
  (Seq_append
    (Seq_singleton (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0))
    (Seq_singleton (typeof<PyType> v_1@73@01)))
  (Seq_singleton (as int<PyType>  PyType)))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res@97@01) (tuple<PyType> (Seq_append
  (Seq_append
    (Seq_singleton (list_arg<PyType> (typeof<PyType> lt_0@74@01) 0))
    (Seq_singleton (typeof<PyType> v_1@73@01)))
  (Seq_singleton (as int<PyType>  PyType))))))
; [eval] (forperm _r_6: Ref [MustInvokeBounded(_r_6)] :: false)
; [eval] (forperm _r_6: Ref [MustInvokeUnbounded(_r_6)] :: false)
; [eval] (forperm _r_6: Ref [_r_6.MustReleaseBounded] :: false)
; [eval] (forperm _r_6: Ref [_r_6.MustReleaseUnbounded] :: false)
(pop) ; 3
(push) ; 3
; [else-branch: 10 | bool___unbox__(_, b@76@01)]
(assert (bool___unbox__ $Snap.unit b@76@01))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- client_used_twice ----------
(declare-const _cthread_164@98@01 $Ref)
(declare-const _caller_measures_164@99@01 Seq<Measure$>)
(declare-const _residue_164@100@01 $Perm)
(declare-const _current_wait_level_164@101@01 $Perm)
(declare-const _cthread_164@102@01 $Ref)
(declare-const _caller_measures_164@103@01 Seq<Measure$>)
(declare-const _residue_164@104@01 $Perm)
(declare-const _current_wait_level_164@105@01 $Perm)
(push) ; 1
(declare-const $t@106@01 $Snap)
(assert (= $t@106@01 ($Snap.combine ($Snap.first $t@106@01) ($Snap.second $t@106@01))))
(assert (= ($Snap.first $t@106@01) $Snap.unit))
; [eval] _cthread_164 != null
(assert (not (= _cthread_164@102@01 $Ref.null)))
(assert (=
  ($Snap.second $t@106@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@106@01))
    ($Snap.second ($Snap.second $t@106@01)))))
(assert (= ($Snap.first ($Snap.second $t@106@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_164), Thread_0())
; [eval] typeof(_cthread_164)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_164@102@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@106@01)) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@107@01 $Snap)
(assert (= $t@107@01 ($Snap.combine ($Snap.first $t@107@01) ($Snap.second $t@107@01))))
(assert (= ($Snap.first $t@107@01) $Snap.unit))
; [eval] (forperm _r_8: Ref [_r_8.MustReleaseBounded] :: Level(_r_8) <= _current_wait_level_164)
(assert (=
  ($Snap.second $t@107@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@107@01))
    ($Snap.second ($Snap.second $t@107@01)))))
(assert (= ($Snap.first ($Snap.second $t@107@01)) $Snap.unit))
; [eval] (forperm _r_8: Ref [_r_8.MustReleaseUnbounded] :: Level(_r_8) <= _current_wait_level_164)
(assert (=
  ($Snap.second ($Snap.second $t@107@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@107@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@107@01))) $Snap.unit))
; [eval] _residue_164 <= _current_wait_level_164
(assert (<= _residue_164@104@01 _current_wait_level_164@105@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@107@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@108@01 $Ref)
; [exec]
; var cont_0: Ref
(declare-const cont_0@109@01 $Ref)
; [exec]
; var t_5: Ref
(declare-const t_5@110@01 $Ref)
; [exec]
; var Container_res_0: Ref
(declare-const Container_res_0@111@01 $Ref)
; [exec]
; var list_1: Ref
(declare-const list_1@112@01 $Ref)
; [exec]
; var m_used_twice_res: Ref
(declare-const m_used_twice_res@113@01 $Ref)
; [exec]
; var _cwl_164: Perm
(declare-const _cwl_164@114@01 $Perm)
; [exec]
; var _method_measures_164: Seq[Measure$]
(declare-const _method_measures_164@115@01 Seq<Measure$>)
; [exec]
; _method_measures_164 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err := null
; [exec]
; Container_res_0 := new()
(declare-const Container_res_0@116@01 $Ref)
(assert (not (= Container_res_0@116@01 $Ref.null)))
(assert (not (= Container_res_0@116@01 cont_0@109@01)))
(assert (not (= Container_res_0@116@01 _cthread_164@102@01)))
(assert (not (= Container_res_0@116@01 Container_res_0@111@01)))
(assert (not (= Container_res_0@116@01 m_used_twice_res@113@01)))
(assert (not (= Container_res_0@116@01 t_5@110@01)))
(assert (not (= Container_res_0@116@01 list_1@112@01)))
; [exec]
; inhale typeof(Container_res_0) == Container()
(declare-const $t@117@01 $Snap)
(assert (= $t@117@01 $Snap.unit))
; [eval] typeof(Container_res_0) == Container()
; [eval] typeof(Container_res_0)
; [eval] Container()
(assert (= (typeof<PyType> Container_res_0@116@01) (as Container<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_164 := Container___init__(_cthread_164, _method_measures_164, _residue_164,
;   Container_res_0)
; [eval] _cthread_156 != null
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
; [eval] self != null
; [eval] issubtype(typeof(self), Container())
; [eval] typeof(self)
; [eval] Container()
(set-option :timeout 0)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> Container_res_0@116@01) (as Container<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> Container_res_0@116@01) (as Container<PyType>  PyType)))
; [eval] self != null
; [eval] perm(MustTerminate(_cthread_156)) == none
; [eval] perm(MustTerminate(_cthread_156))
; [eval] (forperm _r_22: Ref [MustInvokeBounded(_r_22)] :: false)
; [eval] (forperm _r_22: Ref [MustInvokeUnbounded(_r_22)] :: false)
; [eval] (forperm _r_22: Ref [_r_22.MustReleaseBounded] :: false)
; [eval] (forperm _r_22: Ref [_r_22.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_156@118@01 $Perm)
(declare-const $t@119@01 $Snap)
(assert (= $t@119@01 ($Snap.combine ($Snap.first $t@119@01) ($Snap.second $t@119@01))))
(assert (= ($Snap.first $t@119@01) $Snap.unit))
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseBounded] :: Level(_r_20) <= _current_wait_level_156)
(assert (=
  ($Snap.second $t@119@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@119@01))
    ($Snap.second ($Snap.second $t@119@01)))))
(assert (= ($Snap.first ($Snap.second $t@119@01)) $Snap.unit))
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseUnbounded] :: Level(_r_20) <= _current_wait_level_156)
(assert (=
  ($Snap.second ($Snap.second $t@119@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@119@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@119@01))) $Snap.unit))
; [eval] _residue_156 <= _current_wait_level_156
(assert (<= _residue_164@104@01 _current_wait_level_156@118@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@119@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; cont_0 := Container_res_0
; [exec]
; inhale _isDefined(53186533420899)
(declare-const $t@120@01 $Snap)
(assert (= $t@120@01 $Snap.unit))
; [eval] _isDefined(53186533420899)
(set-option :timeout 0)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 53186533420899))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 53186533420899))
(assert (_isDefined $Snap.unit 53186533420899))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_164, list_1 := list___init__(_cthread_164, _method_measures_164, _residue_164)
; [eval] _cthread_8 != null
; [eval] Measure$check(_caller_measures_8, _cthread_8, 1)
(set-option :timeout 0)
(push) ; 3
(assert (Measure$check%precondition $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_164@102@01 1))
(pop) ; 3
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_164@102@01 1))
(push) ; 3
(assert (not (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_164@102@01 1)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_164@102@01 1))
; [eval] issubtype(typeof(_cthread_8), Thread_0())
; [eval] typeof(_cthread_8)
; [eval] Thread_0()
; [eval] Measure$check(_caller_measures_8, _cthread_8, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
(declare-const _current_wait_level_8@121@01 $Perm)
(declare-const res@122@01 $Ref)
(declare-const $t@123@01 $Snap)
(assert (= $t@123@01 ($Snap.combine ($Snap.first $t@123@01) ($Snap.second $t@123@01))))
(assert (= ($Snap.first $t@123@01) $Snap.unit))
; [eval] (forperm _r_44: Ref [_r_44.MustReleaseBounded] :: Level(_r_44) <= _current_wait_level_8)
(assert (=
  ($Snap.second $t@123@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@123@01))
    ($Snap.second ($Snap.second $t@123@01)))))
(assert (= ($Snap.first ($Snap.second $t@123@01)) $Snap.unit))
; [eval] (forperm _r_44: Ref [_r_44.MustReleaseUnbounded] :: Level(_r_44) <= _current_wait_level_8)
(assert (=
  ($Snap.second ($Snap.second $t@123@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@123@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@123@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@123@01))) $Snap.unit))
; [eval] _residue_8 <= _current_wait_level_8
(assert (<= _residue_164@104@01 _current_wait_level_8@121@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@123@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@123@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@123@01)))))))
(assert (not (= res@122@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@123@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@123@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@123@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@123@01)))))
  $Snap.unit))
; [eval] res.list_acc == Seq[Ref]()
; [eval] Seq[Ref]()
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@123@01)))))
  (as Seq_empty  Seq<$Ref>)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@123@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@123@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@123@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@123@01))))))
  $Snap.unit))
; [eval] typeof(res) == list(list_arg(typeof(res), 0))
; [eval] typeof(res)
; [eval] list(list_arg(typeof(res), 0))
; [eval] list_arg(typeof(res), 0)
; [eval] typeof(res)
(assert (=
  (typeof<PyType> res@122@01)
  (list<PyType> (list_arg<PyType> (typeof<PyType> res@122@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@123@01))))))
  $Snap.unit))
; [eval] (Low(res): Bool)
(assert (Low<Bool> res@122@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale issubtype(typeof(list_1), list(Container()))
(declare-const $t@124@01 $Snap)
(assert (= $t@124@01 $Snap.unit))
; [eval] issubtype(typeof(list_1), list(Container()))
; [eval] typeof(list_1)
; [eval] list(Container())
; [eval] Container()
(assert (issubtype<Bool> (typeof<PyType> res@122@01) (list<PyType> (as Container<PyType>  PyType))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert issubtype(typeof(_checkDefined(cont_0, 53186533420899)), Container())
; [eval] issubtype(typeof(_checkDefined(cont_0, 53186533420899)), Container())
; [eval] typeof(_checkDefined(cont_0, 53186533420899))
; [eval] _checkDefined(cont_0, 53186533420899)
(set-option :timeout 0)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit Container_res_0@116@01 53186533420899))
(pop) ; 3
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit Container_res_0@116@01 53186533420899))
; [eval] Container()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit Container_res_0@116@01 53186533420899)) (as Container<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit Container_res_0@116@01 53186533420899)) (as Container<PyType>  PyType)))
; [exec]
; list_1.list_acc := Seq(_checkDefined(cont_0, 53186533420899))
; [eval] Seq(_checkDefined(cont_0, 53186533420899))
; [eval] _checkDefined(cont_0, 53186533420899)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
(assert (=
  (Seq_length
    (Seq_singleton (_checkDefined $Snap.unit Container_res_0@116@01 53186533420899)))
  1))
(declare-const list_acc@125@01 Seq<$Ref>)
(assert (=
  list_acc@125@01
  (Seq_singleton (_checkDefined $Snap.unit Container_res_0@116@01 53186533420899))))
; [exec]
; _cwl_164, m_used_twice_res := m_used_twice(_cthread_164, _method_measures_164,
;   _residue_164, __prim__bool___box__(true), list_1, _checkDefined(cont_0, 53186533420899),
;   __prim__bool___box__(true))
; [eval] __prim__bool___box__(true)
(push) ; 3
(assert (__prim__bool___box__%precondition $Snap.unit true))
(pop) ; 3
; Joined path conditions
(assert (__prim__bool___box__%precondition $Snap.unit true))
; [eval] _checkDefined(cont_0, 53186533420899)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
; [eval] __prim__bool___box__(true)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] _cthread_163 != null
; [eval] issubtype(typeof(_cthread_163), Thread_0())
; [eval] typeof(_cthread_163)
; [eval] Thread_0()
; [eval] issubtype(typeof(v_1), typeof(v_1))
; [eval] typeof(v_1)
; [eval] typeof(v_1)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__bool___box__ $Snap.unit true)) (typeof<PyType> (__prim__bool___box__ $Snap.unit true)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__bool___box__ $Snap.unit true)) (typeof<PyType> (__prim__bool___box__ $Snap.unit true))))
; [eval] issubtype(typeof(lt_0), list(list_arg(typeof(lt_0), 0)))
; [eval] typeof(lt_0)
; [eval] list(list_arg(typeof(lt_0), 0))
; [eval] list_arg(typeof(lt_0), 0)
; [eval] typeof(lt_0)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> res@122@01) (list<PyType> (list_arg<PyType> (typeof<PyType> res@122@01) 0)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> res@122@01) (list<PyType> (list_arg<PyType> (typeof<PyType> res@122@01) 0))))
; [eval] issubtype(typeof(t_4), list_arg(typeof(lt_0), 0))
; [eval] typeof(t_4)
; [eval] list_arg(typeof(lt_0), 0)
; [eval] typeof(lt_0)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit Container_res_0@116@01 53186533420899)) (list_arg<PyType> (typeof<PyType> res@122@01) 0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit Container_res_0@116@01 53186533420899)) (list_arg<PyType> (typeof<PyType> res@122@01) 0)))
; [eval] issubtype(typeof(b), bool())
; [eval] typeof(b)
; [eval] bool()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__bool___box__ $Snap.unit true)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__bool___box__ $Snap.unit true)) (as bool<PyType>  PyType)))
; [eval] issubtype(typeof(v_1), int())
; [eval] typeof(v_1)
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__bool___box__ $Snap.unit true)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__bool___box__ $Snap.unit true)) (as int<PyType>  PyType)))
; [eval] issubtype(list_arg(typeof(lt_0), 0), object())
; [eval] list_arg(typeof(lt_0), 0)
; [eval] typeof(lt_0)
; [eval] object()
(push) ; 3
(assert (not (issubtype<Bool> (list_arg<PyType> (typeof<PyType> res@122@01) 0) (as object<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (list_arg<PyType> (typeof<PyType> res@122@01) 0) (as object<PyType>  PyType)))
; [eval] int___gt__(list___len__(lt_0), 0)
; [eval] list___len__(lt_0)
(push) ; 3
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@126@01 $Perm)
(assert ($Perm.isReadVar $k@126@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@126@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.Seq<$Ref>To$Snap list_acc@125@01)) res@122@01))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@126@01))
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.Seq<$Ref>To$Snap list_acc@125@01)) res@122@01))
(set-option :timeout 0)
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($SortWrappers.Seq<$Ref>To$Snap list_acc@125@01)) res@122@01) 0))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($SortWrappers.Seq<$Ref>To$Snap list_acc@125@01)) res@122@01) 0))
(push) ; 3
(assert (not (int___gt__ $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($SortWrappers.Seq<$Ref>To$Snap list_acc@125@01)) res@122@01) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (int___gt__ $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($SortWrappers.Seq<$Ref>To$Snap list_acc@125@01)) res@122@01) 0))
; [eval] perm(MustTerminate(_cthread_163)) == none
; [eval] perm(MustTerminate(_cthread_163))
; [eval] (forperm _r_7: Ref [MustInvokeBounded(_r_7)] :: false)
; [eval] (forperm _r_7: Ref [MustInvokeUnbounded(_r_7)] :: false)
; [eval] (forperm _r_7: Ref [_r_7.MustReleaseBounded] :: false)
; [eval] (forperm _r_7: Ref [_r_7.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_163@127@01 $Perm)
(declare-const _res@128@01 $Ref)
(declare-const $t@129@01 $Snap)
(assert (= $t@129@01 ($Snap.combine ($Snap.first $t@129@01) ($Snap.second $t@129@01))))
(assert (= ($Snap.first $t@129@01) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseBounded] :: Level(_r_5) <= _current_wait_level_163)
(assert (=
  ($Snap.second $t@129@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@129@01))
    ($Snap.second ($Snap.second $t@129@01)))))
(assert (= ($Snap.first ($Snap.second $t@129@01)) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseUnbounded] :: Level(_r_5) <= _current_wait_level_163)
(assert (=
  ($Snap.second ($Snap.second $t@129@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@129@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@129@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@129@01))) $Snap.unit))
; [eval] _residue_163 <= _current_wait_level_163
(assert (<= _residue_164@104@01 _current_wait_level_163@127@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@129@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@129@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@129@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@129@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), tuple(Seq(list_arg(typeof(lt_0), 0), typeof(v_1), int())))
; [eval] typeof(_res)
; [eval] tuple(Seq(list_arg(typeof(lt_0), 0), typeof(v_1), int()))
; [eval] Seq(list_arg(typeof(lt_0), 0), typeof(v_1), int())
; [eval] list_arg(typeof(lt_0), 0)
; [eval] typeof(lt_0)
; [eval] typeof(v_1)
; [eval] int()
(assert (=
  (Seq_length
    (Seq_append
      (Seq_append
        (Seq_singleton (list_arg<PyType> (typeof<PyType> res@122@01) 0))
        (Seq_singleton (typeof<PyType> (__prim__bool___box__ $Snap.unit true))))
      (Seq_singleton (as int<PyType>  PyType))))
  3))
(assert (issubtype<Bool> (typeof<PyType> _res@128@01) (tuple<PyType> (Seq_append
  (Seq_append
    (Seq_singleton (list_arg<PyType> (typeof<PyType> res@122@01) 0))
    (Seq_singleton (typeof<PyType> (__prim__bool___box__ $Snap.unit true))))
  (Seq_singleton (as int<PyType>  PyType))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@129@01))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; t_5 := m_used_twice_res
; [exec]
; inhale _isDefined(3497844)
(declare-const $t@130@01 $Snap)
(assert (= $t@130@01 $Snap.unit))
; [eval] _isDefined(3497844)
(set-option :timeout 0)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3497844))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3497844))
(assert (_isDefined $Snap.unit 3497844))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert issubtype(typeof(tuple___getitem__(_checkDefined(t_5, 3497844), 0)),
;   Container())
; [eval] issubtype(typeof(tuple___getitem__(_checkDefined(t_5, 3497844), 0)), Container())
; [eval] typeof(tuple___getitem__(_checkDefined(t_5, 3497844), 0))
; [eval] tuple___getitem__(_checkDefined(t_5, 3497844), 0)
; [eval] _checkDefined(t_5, 3497844)
(set-option :timeout 0)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit _res@128@01 3497844))
(pop) ; 3
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit _res@128@01 3497844))
(push) ; 3
; [eval] (let ln == (tuple___len__(self)) in (key >= 0 ==> key < ln) && (key < 0 ==> key >= -ln))
; [eval] tuple___len__(self)
(push) ; 4
(assert (tuple___len__%precondition $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844)))
(pop) ; 4
; Joined path conditions
(assert (tuple___len__%precondition $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844)))
(declare-const letvar@131@01 Int)
(assert (=
  (as letvar@131@01  Int)
  (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844))))
; [eval] (key >= 0 ==> key < ln) && (key < 0 ==> key >= -ln)
; [eval] key >= 0 ==> key < ln
; [eval] key >= 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.01s
; (get-info :all-statistics)
; [then-branch: 14 | True | live]
; [else-branch: 14 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 14 | True]
; [eval] key < ln
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 15 | !(0 < tuple___len__(_, _checkDefined(_, _res@128@01, 3497844))) | live]
; [else-branch: 15 | 0 < tuple___len__(_, _checkDefined(_, _res@128@01, 3497844)) | live]
(push) ; 5
; [then-branch: 15 | !(0 < tuple___len__(_, _checkDefined(_, _res@128@01, 3497844)))]
(assert (not
  (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844)))))
(pop) ; 5
(push) ; 5
; [else-branch: 15 | 0 < tuple___len__(_, _checkDefined(_, _res@128@01, 3497844))]
(assert (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844))))
; [eval] key < 0 ==> key >= -ln
; [eval] key < 0
(push) ; 6
; [then-branch: 16 | False | dead]
; [else-branch: 16 | True | live]
(push) ; 7
; [else-branch: 16 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844)))
  (not
    (<
      0
      (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844))))))
(push) ; 4
(assert (not (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844))))
(assert (tuple___getitem__%precondition $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844) 0))
(pop) ; 3
; Joined path conditions
(assert (and
  (tuple___len__%precondition $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844))
  (=
    (as letvar@131@01  Int)
    (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844)))
  (or
    (<
      0
      (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844)))
    (not
      (<
        0
        (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844)))))
  (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844)))
  (tuple___getitem__%precondition $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844) 0)))
; [eval] Container()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (tuple___getitem__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844) 0)) (as Container<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (tuple___getitem__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844) 0)) (as Container<PyType>  PyType)))
; [exec]
; assert issubtype(typeof(tuple___getitem__(_checkDefined(t_5, 3497844), 1)),
;   bool())
; [eval] issubtype(typeof(tuple___getitem__(_checkDefined(t_5, 3497844), 1)), bool())
; [eval] typeof(tuple___getitem__(_checkDefined(t_5, 3497844), 1))
; [eval] tuple___getitem__(_checkDefined(t_5, 3497844), 1)
; [eval] _checkDefined(t_5, 3497844)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
(push) ; 3
; [eval] (let ln == (tuple___len__(self)) in (key >= 0 ==> key < ln) && (key < 0 ==> key >= -ln))
; [eval] tuple___len__(self)
(push) ; 4
(pop) ; 4
; Joined path conditions
(declare-const letvar@132@01 Int)
(assert (=
  (as letvar@132@01  Int)
  (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844))))
; [eval] (key >= 0 ==> key < ln) && (key < 0 ==> key >= -ln)
; [eval] key >= 0 ==> key < ln
; [eval] key >= 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.01s
; (get-info :all-statistics)
; [then-branch: 17 | True | live]
; [else-branch: 17 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 17 | True]
; [eval] key < ln
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 18 | !(1 < tuple___len__(_, _checkDefined(_, _res@128@01, 3497844))) | live]
; [else-branch: 18 | 1 < tuple___len__(_, _checkDefined(_, _res@128@01, 3497844)) | live]
(push) ; 5
; [then-branch: 18 | !(1 < tuple___len__(_, _checkDefined(_, _res@128@01, 3497844)))]
(assert (not
  (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844)))))
(pop) ; 5
(push) ; 5
; [else-branch: 18 | 1 < tuple___len__(_, _checkDefined(_, _res@128@01, 3497844))]
(assert (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844))))
; [eval] key < 0 ==> key >= -ln
; [eval] key < 0
(push) ; 6
; [then-branch: 19 | False | dead]
; [else-branch: 19 | True | live]
(push) ; 7
; [else-branch: 19 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844)))
  (not
    (<
      1
      (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844))))))
(push) ; 4
(assert (not (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844))))
(assert (tuple___getitem__%precondition $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844) 1))
(pop) ; 3
; Joined path conditions
(assert (and
  (=
    (as letvar@132@01  Int)
    (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844)))
  (or
    (<
      1
      (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844)))
    (not
      (<
        1
        (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844)))))
  (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844)))
  (tuple___getitem__%precondition $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844) 1)))
; [eval] bool()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (tuple___getitem__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844) 1)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (tuple___getitem__ $Snap.unit (_checkDefined $Snap.unit _res@128@01 3497844) 1)) (as bool<PyType>  PyType)))
; [exec]
; assert false
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- m_used_twice_2 ----------
(declare-const _cthread_165@133@01 $Ref)
(declare-const _caller_measures_165@134@01 Seq<Measure$>)
(declare-const _residue_165@135@01 $Perm)
(declare-const v_2@136@01 $Ref)
(declare-const t_6@137@01 $Ref)
(declare-const lt_1@138@01 $Ref)
(declare-const b_0@139@01 $Ref)
(declare-const _current_wait_level_165@140@01 $Perm)
(declare-const _res@141@01 $Ref)
(declare-const _cthread_165@142@01 $Ref)
(declare-const _caller_measures_165@143@01 Seq<Measure$>)
(declare-const _residue_165@144@01 $Perm)
(declare-const v_2@145@01 $Ref)
(declare-const t_6@146@01 $Ref)
(declare-const lt_1@147@01 $Ref)
(declare-const b_0@148@01 $Ref)
(declare-const _current_wait_level_165@149@01 $Perm)
(declare-const _res@150@01 $Ref)
(push) ; 1
(declare-const $t@151@01 $Snap)
(assert (= $t@151@01 ($Snap.combine ($Snap.first $t@151@01) ($Snap.second $t@151@01))))
(assert (= ($Snap.first $t@151@01) $Snap.unit))
; [eval] _cthread_165 != null
(assert (not (= _cthread_165@142@01 $Ref.null)))
(assert (=
  ($Snap.second $t@151@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@151@01))
    ($Snap.second ($Snap.second $t@151@01)))))
(assert (= ($Snap.first ($Snap.second $t@151@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_165), Thread_0())
; [eval] typeof(_cthread_165)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_165@142@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@151@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@151@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@151@01))) $Snap.unit))
; [eval] issubtype(typeof(v_2), typeof(v_2))
; [eval] typeof(v_2)
; [eval] typeof(v_2)
(assert (issubtype<Bool> (typeof<PyType> v_2@145@01) (typeof<PyType> v_2@145@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@151@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@151@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@151@01))))
  $Snap.unit))
; [eval] issubtype(typeof(t_6), typeof(t_6))
; [eval] typeof(t_6)
; [eval] typeof(t_6)
(assert (issubtype<Bool> (typeof<PyType> t_6@146@01) (typeof<PyType> t_6@146@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(lt_1), list(typeof(t_6)))
; [eval] typeof(lt_1)
; [eval] list(typeof(t_6))
; [eval] typeof(t_6)
(assert (issubtype<Bool> (typeof<PyType> lt_1@147@01) (list<PyType> (typeof<PyType> t_6@146@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(b_0), bool())
; [eval] typeof(b_0)
; [eval] bool()
(assert (issubtype<Bool> (typeof<PyType> b_0@148@01) (as bool<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))
  $Snap.unit))
; [eval] issubtype(typeof(v_2), int())
; [eval] typeof(v_2)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> v_2@145@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))))
  $Snap.unit))
; [eval] issubtype(typeof(t_6), object())
; [eval] typeof(t_6)
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> t_6@146@01) (as object<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))))))))
(assert (not (= lt_1@147@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))))))
  $Snap.unit))
; [eval] int___gt__(list___len__(lt_1), 0)
; [eval] list___len__(lt_1)
(push) ; 2
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> lt_1@147@01) (list<PyType> (list_arg<PyType> (typeof<PyType> lt_1@147@01) 0)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> lt_1@147@01) (list<PyType> (list_arg<PyType> (typeof<PyType> lt_1@147@01) 0))))
(declare-const $k@152@01 $Perm)
(assert ($Perm.isReadVar $k@152@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@152@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) lt_1@147@01))
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@152@01))
(assert (and
  (issubtype<Bool> (typeof<PyType> lt_1@147@01) (list<PyType> (list_arg<PyType> (typeof<PyType> lt_1@147@01) 0)))
  (list___len__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) lt_1@147@01)))
(set-option :timeout 0)
(push) ; 2
(assert (int___gt__%precondition $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) lt_1@147@01) 0))
(pop) ; 2
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) lt_1@147@01) 0))
(assert (int___gt__ $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) lt_1@147@01) 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@153@01 $Snap)
(assert (= $t@153@01 ($Snap.combine ($Snap.first $t@153@01) ($Snap.second $t@153@01))))
(assert (= ($Snap.first $t@153@01) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseBounded] :: Level(_r_11) <= _current_wait_level_165)
(assert (=
  ($Snap.second $t@153@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@153@01))
    ($Snap.second ($Snap.second $t@153@01)))))
(assert (= ($Snap.first ($Snap.second $t@153@01)) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseUnbounded] :: Level(_r_11) <= _current_wait_level_165)
(assert (=
  ($Snap.second ($Snap.second $t@153@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@153@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@153@01))) $Snap.unit))
; [eval] _residue_165 <= _current_wait_level_165
(assert (<= _residue_165@144@01 _current_wait_level_165@149@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@153@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@153@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@153@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), tuple(Seq(typeof(t_6), typeof(v_2), int())))
; [eval] typeof(_res)
; [eval] tuple(Seq(typeof(t_6), typeof(v_2), int()))
; [eval] Seq(typeof(t_6), typeof(v_2), int())
; [eval] typeof(t_6)
; [eval] typeof(v_2)
; [eval] int()
(assert (=
  (Seq_length
    (Seq_append
      (Seq_append
        (Seq_singleton (typeof<PyType> t_6@146@01))
        (Seq_singleton (typeof<PyType> v_2@145@01)))
      (Seq_singleton (as int<PyType>  PyType))))
  3))
(assert (issubtype<Bool> (typeof<PyType> _res@150@01) (tuple<PyType> (Seq_append
  (Seq_append
    (Seq_singleton (typeof<PyType> t_6@146@01))
    (Seq_singleton (typeof<PyType> v_2@145@01)))
  (Seq_singleton (as int<PyType>  PyType))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@154@01 $Ref)
; [exec]
; var t_res_0: Ref
(declare-const t_res_0@155@01 $Ref)
; [exec]
; var v_5: Ref
(declare-const v_5@156@01 $Ref)
; [exec]
; var t_9: Ref
(declare-const t_9@157@01 $Ref)
; [exec]
; var lt_4: Ref
(declare-const lt_4@158@01 $Ref)
; [exec]
; var b_2: Ref
(declare-const b_2@159@01 $Ref)
; [exec]
; var _cwl_165: Perm
(declare-const _cwl_165@160@01 $Perm)
; [exec]
; var _method_measures_165: Seq[Measure$]
(declare-const _method_measures_165@161@01 Seq<Measure$>)
; [exec]
; _method_measures_165 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _res := null
; [exec]
; _err := null
; [exec]
; v_5 := v_2
; [exec]
; t_9 := t_6
; [exec]
; lt_4 := lt_1
; [exec]
; b_2 := b_0
; [eval] bool___unbox__(b_2)
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(assert (bool___unbox__%precondition $Snap.unit b_0@148@01))
(pop) ; 3
; Joined path conditions
(assert (bool___unbox__%precondition $Snap.unit b_0@148@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (bool___unbox__ $Snap.unit b_0@148@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (bool___unbox__ $Snap.unit b_0@148@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 20 | bool___unbox__(_, b_0@148@01) | live]
; [else-branch: 20 | !(bool___unbox__(_, b_0@148@01)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 20 | bool___unbox__(_, b_0@148@01)]
(assert (bool___unbox__ $Snap.unit b_0@148@01))
; [exec]
; t_res_0 := t_9
; [exec]
; inhale _isDefined(13615748109983604)
(declare-const $t@162@01 $Snap)
(assert (= $t@162@01 $Snap.unit))
; [eval] _isDefined(13615748109983604)
(push) ; 4
(assert (_isDefined%precondition $Snap.unit 13615748109983604))
(pop) ; 4
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 13615748109983604))
(assert (_isDefined $Snap.unit 13615748109983604))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _res := tuple___create3__(_checkDefined(t_res_0, 13615748109983604), v_5, __prim__int___box__(int___add__(2,
;   int___unbox__(v_5))), typeof(t_6), typeof(v_2), int(), 2)
; [eval] tuple___create3__(_checkDefined(t_res_0, 13615748109983604), v_5, __prim__int___box__(int___add__(2, int___unbox__(v_5))), typeof(t_6), typeof(v_2), int(), 2)
; [eval] _checkDefined(t_res_0, 13615748109983604)
(set-option :timeout 0)
(push) ; 4
; [eval] _isDefined(id)
(push) ; 5
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit t_6@146@01 13615748109983604))
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit t_6@146@01 13615748109983604))
; [eval] __prim__int___box__(int___add__(2, int___unbox__(v_5)))
; [eval] int___add__(2, int___unbox__(v_5))
; [eval] int___unbox__(v_5)
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit v_2@145@01))
(pop) ; 4
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit v_2@145@01))
(push) ; 4
(assert (int___add__%precondition $Snap.unit 2 (int___unbox__ $Snap.unit v_2@145@01)))
(pop) ; 4
; Joined path conditions
(assert (int___add__%precondition $Snap.unit 2 (int___unbox__ $Snap.unit v_2@145@01)))
(push) ; 4
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_2@145@01))))
(pop) ; 4
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_2@145@01))))
; [eval] typeof(t_6)
; [eval] typeof(v_2)
; [eval] int()
(push) ; 4
; [eval] issubtype(typeof(arg0), t0)
; [eval] typeof(arg0)
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit t_6@146@01 13615748109983604)) (typeof<PyType> t_6@146@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit t_6@146@01 13615748109983604)) (typeof<PyType> t_6@146@01)))
; [eval] issubtype(typeof(arg1), t1)
; [eval] typeof(arg1)
; [eval] issubtype(typeof(arg2), t2)
; [eval] typeof(arg2)
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_2@145@01)))) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_2@145@01)))) (as int<PyType>  PyType)))
(assert (tuple___create3__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) (_checkDefined $Snap.unit t_6@146@01 13615748109983604) v_2@145@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_2@145@01))) (typeof<PyType> t_6@146@01) (typeof<PyType> v_2@145@01) (as int<PyType>  PyType) 2))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit t_6@146@01 13615748109983604)) (typeof<PyType> t_6@146@01))
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_2@145@01)))) (as int<PyType>  PyType))
  (tuple___create3__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) (_checkDefined $Snap.unit t_6@146@01 13615748109983604) v_2@145@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_2@145@01))) (typeof<PyType> t_6@146@01) (typeof<PyType> v_2@145@01) (as int<PyType>  PyType) 2)))
(declare-const _res@163@01 $Ref)
(assert (=
  _res@163@01
  (tuple___create3__ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) (_checkDefined $Snap.unit t_6@146@01 13615748109983604) v_2@145@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_2@145@01))) (typeof<PyType> t_6@146@01) (typeof<PyType> v_2@145@01) (as int<PyType>  PyType) 2)))
; [exec]
; label __end
; [eval] issubtype(typeof(_res), tuple(Seq(typeof(t_6), typeof(v_2), int())))
; [eval] typeof(_res)
; [eval] tuple(Seq(typeof(t_6), typeof(v_2), int()))
; [eval] Seq(typeof(t_6), typeof(v_2), int())
; [eval] typeof(t_6)
; [eval] typeof(v_2)
; [eval] int()
(assert (=
  (Seq_length
    (Seq_append
      (Seq_append
        (Seq_singleton (typeof<PyType> t_6@146@01))
        (Seq_singleton (typeof<PyType> v_2@145@01)))
      (Seq_singleton (as int<PyType>  PyType))))
  3))
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> _res@163@01) (tuple<PyType> (Seq_append
  (Seq_append
    (Seq_singleton (typeof<PyType> t_6@146@01))
    (Seq_singleton (typeof<PyType> v_2@145@01)))
  (Seq_singleton (as int<PyType>  PyType)))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res@163@01) (tuple<PyType> (Seq_append
  (Seq_append
    (Seq_singleton (typeof<PyType> t_6@146@01))
    (Seq_singleton (typeof<PyType> v_2@145@01)))
  (Seq_singleton (as int<PyType>  PyType))))))
; [eval] (forperm _r_12: Ref [MustInvokeBounded(_r_12)] :: false)
; [eval] (forperm _r_12: Ref [MustInvokeUnbounded(_r_12)] :: false)
; [eval] (forperm _r_12: Ref [_r_12.MustReleaseBounded] :: false)
; [eval] (forperm _r_12: Ref [_r_12.MustReleaseUnbounded] :: false)
(pop) ; 3
(push) ; 3
; [else-branch: 20 | !(bool___unbox__(_, b_0@148@01))]
(assert (not (bool___unbox__ $Snap.unit b_0@148@01)))
(pop) ; 3
; [eval] !bool___unbox__(b_2)
; [eval] bool___unbox__(b_2)
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(pop) ; 3
; Joined path conditions
(push) ; 3
(set-option :timeout 10)
(assert (not (bool___unbox__ $Snap.unit b_0@148@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (bool___unbox__ $Snap.unit b_0@148@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 21 | !(bool___unbox__(_, b_0@148@01)) | live]
; [else-branch: 21 | bool___unbox__(_, b_0@148@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 21 | !(bool___unbox__(_, b_0@148@01))]
(assert (not (bool___unbox__ $Snap.unit b_0@148@01)))
; [exec]
; t_res_0 := list___getitem__(lt_4, __prim__int___box__(0))
; [eval] list___getitem__(lt_4, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 4
(assert (__prim__int___box__%precondition $Snap.unit 0))
(pop) ; 4
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 0))
(push) ; 4
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] issubtype(typeof(key), int())
; [eval] typeof(key)
; [eval] int()
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType)))
(declare-const $k@164@01 $Perm)
(assert ($Perm.isReadVar $k@164@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@164@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] (let ln == (list___len__(self)) in (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln))
; [eval] list___len__(self)
(set-option :timeout 0)
(push) ; 5
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@165@01 $Perm)
(assert ($Perm.isReadVar $k@165@01))
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@165@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
; Joined path conditions
(assert ($Perm.isReadVar $k@165@01))
(declare-const letvar@166@01 Int)
(assert (=
  (as letvar@166@01  Int)
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) lt_1@147@01)))
; [eval] (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln)
; [eval] int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln
; [eval] int___unbox__(key) < 0
; [eval] int___unbox__(key)
(set-option :timeout 0)
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit (__prim__int___box__ $Snap.unit 0)))
(pop) ; 5
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit (__prim__int___box__ $Snap.unit 0)))
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | int___unbox__(_, __prim__int___box__(_, 0)) < 0 | dead]
; [else-branch: 22 | !(int___unbox__(_, __prim__int___box__(_, 0)) < 0) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 22 | !(int___unbox__(_, __prim__int___box__(_, 0)) < 0)]
(assert (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)))
(push) ; 5
; [then-branch: 23 | False | live]
; [else-branch: 23 | True | live]
(push) ; 6
; [then-branch: 23 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 23 | True]
; [eval] int___unbox__(key) >= 0 ==> int___unbox__(key) < ln
; [eval] int___unbox__(key) >= 0
; [eval] int___unbox__(key)
(push) ; 7
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 7
; Joined path conditions
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 24 | int___unbox__(_, __prim__int___box__(_, 0)) >= 0 | live]
; [else-branch: 24 | !(int___unbox__(_, __prim__int___box__(_, 0)) >= 0) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 24 | int___unbox__(_, __prim__int___box__(_, 0)) >= 0]
(assert (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
; [eval] int___unbox__(key) < ln
; [eval] int___unbox__(key)
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
(push) ; 5
(assert (not (=>
  (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
  (<
    (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0))
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) lt_1@147@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
  (<
    (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0))
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) lt_1@147@01))))
(assert (list___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))
      $Snap.unit))) lt_1@147@01 (__prim__int___box__ $Snap.unit 0)))
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@164@01))
(assert ($Perm.isReadVar $k@165@01))
(assert (and
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType))
  (=
    (as letvar@166@01  Int)
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) lt_1@147@01))
  (int___unbox__%precondition $Snap.unit (__prim__int___box__ $Snap.unit 0))
  (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
  (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
  (=>
    (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
    (<
      (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0))
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))) lt_1@147@01)))
  (list___getitem__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))
        $Snap.unit))) lt_1@147@01 (__prim__int___box__ $Snap.unit 0))))
(declare-const t_res_0@167@01 $Ref)
(assert (=
  t_res_0@167@01
  (list___getitem__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@151@01)))))))))
        $Snap.unit))) lt_1@147@01 (__prim__int___box__ $Snap.unit 0))))
; [exec]
; inhale _isDefined(13615748109983604)
(declare-const $t@168@01 $Snap)
(assert (= $t@168@01 $Snap.unit))
; [eval] _isDefined(13615748109983604)
(push) ; 4
(assert (_isDefined%precondition $Snap.unit 13615748109983604))
(pop) ; 4
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 13615748109983604))
(assert (_isDefined $Snap.unit 13615748109983604))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _res := tuple___create3__(_checkDefined(t_res_0, 13615748109983604), v_5, __prim__int___box__(int___add__(2,
;   int___unbox__(v_5))), typeof(t_6), typeof(v_2), int(), 2)
; [eval] tuple___create3__(_checkDefined(t_res_0, 13615748109983604), v_5, __prim__int___box__(int___add__(2, int___unbox__(v_5))), typeof(t_6), typeof(v_2), int(), 2)
; [eval] _checkDefined(t_res_0, 13615748109983604)
(set-option :timeout 0)
(push) ; 4
; [eval] _isDefined(id)
(push) ; 5
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit t_res_0@167@01 13615748109983604))
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit t_res_0@167@01 13615748109983604))
; [eval] __prim__int___box__(int___add__(2, int___unbox__(v_5)))
; [eval] int___add__(2, int___unbox__(v_5))
; [eval] int___unbox__(v_5)
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit v_2@145@01))
(pop) ; 4
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit v_2@145@01))
(push) ; 4
(assert (int___add__%precondition $Snap.unit 2 (int___unbox__ $Snap.unit v_2@145@01)))
(pop) ; 4
; Joined path conditions
(assert (int___add__%precondition $Snap.unit 2 (int___unbox__ $Snap.unit v_2@145@01)))
(push) ; 4
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_2@145@01))))
(pop) ; 4
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_2@145@01))))
; [eval] typeof(t_6)
; [eval] typeof(v_2)
; [eval] int()
(push) ; 4
; [eval] issubtype(typeof(arg0), t0)
; [eval] typeof(arg0)
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit t_res_0@167@01 13615748109983604)) (typeof<PyType> t_6@146@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit t_res_0@167@01 13615748109983604)) (typeof<PyType> t_6@146@01)))
; [eval] issubtype(typeof(arg1), t1)
; [eval] typeof(arg1)
; [eval] issubtype(typeof(arg2), t2)
; [eval] typeof(arg2)
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_2@145@01)))) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_2@145@01)))) (as int<PyType>  PyType)))
(assert (tuple___create3__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine $Snap.unit $Snap.unit)) (_checkDefined $Snap.unit t_res_0@167@01 13615748109983604) v_2@145@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_2@145@01))) (typeof<PyType> t_6@146@01) (typeof<PyType> v_2@145@01) (as int<PyType>  PyType) 2))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit t_res_0@167@01 13615748109983604)) (typeof<PyType> t_6@146@01))
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_2@145@01)))) (as int<PyType>  PyType))
  (tuple___create3__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) (_checkDefined $Snap.unit t_res_0@167@01 13615748109983604) v_2@145@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_2@145@01))) (typeof<PyType> t_6@146@01) (typeof<PyType> v_2@145@01) (as int<PyType>  PyType) 2)))
(declare-const _res@169@01 $Ref)
(assert (=
  _res@169@01
  (tuple___create3__ ($Snap.combine
    $Snap.unit
    ($Snap.combine $Snap.unit $Snap.unit)) (_checkDefined $Snap.unit t_res_0@167@01 13615748109983604) v_2@145@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit 2 (int___unbox__ $Snap.unit v_2@145@01))) (typeof<PyType> t_6@146@01) (typeof<PyType> v_2@145@01) (as int<PyType>  PyType) 2)))
; [exec]
; label __end
; [eval] issubtype(typeof(_res), tuple(Seq(typeof(t_6), typeof(v_2), int())))
; [eval] typeof(_res)
; [eval] tuple(Seq(typeof(t_6), typeof(v_2), int()))
; [eval] Seq(typeof(t_6), typeof(v_2), int())
; [eval] typeof(t_6)
; [eval] typeof(v_2)
; [eval] int()
(assert (=
  (Seq_length
    (Seq_append
      (Seq_append
        (Seq_singleton (typeof<PyType> t_6@146@01))
        (Seq_singleton (typeof<PyType> v_2@145@01)))
      (Seq_singleton (as int<PyType>  PyType))))
  3))
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> _res@169@01) (tuple<PyType> (Seq_append
  (Seq_append
    (Seq_singleton (typeof<PyType> t_6@146@01))
    (Seq_singleton (typeof<PyType> v_2@145@01)))
  (Seq_singleton (as int<PyType>  PyType)))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res@169@01) (tuple<PyType> (Seq_append
  (Seq_append
    (Seq_singleton (typeof<PyType> t_6@146@01))
    (Seq_singleton (typeof<PyType> v_2@145@01)))
  (Seq_singleton (as int<PyType>  PyType))))))
; [eval] (forperm _r_12: Ref [MustInvokeBounded(_r_12)] :: false)
; [eval] (forperm _r_12: Ref [MustInvokeUnbounded(_r_12)] :: false)
; [eval] (forperm _r_12: Ref [_r_12.MustReleaseBounded] :: false)
; [eval] (forperm _r_12: Ref [_r_12.MustReleaseUnbounded] :: false)
(pop) ; 3
(push) ; 3
; [else-branch: 21 | bool___unbox__(_, b_0@148@01)]
(assert (bool___unbox__ $Snap.unit b_0@148@01))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- client_used_twice_2 ----------
(declare-const _cthread_166@170@01 $Ref)
(declare-const _caller_measures_166@171@01 Seq<Measure$>)
(declare-const _residue_166@172@01 $Perm)
(declare-const _current_wait_level_166@173@01 $Perm)
(declare-const _cthread_166@174@01 $Ref)
(declare-const _caller_measures_166@175@01 Seq<Measure$>)
(declare-const _residue_166@176@01 $Perm)
(declare-const _current_wait_level_166@177@01 $Perm)
(push) ; 1
(declare-const $t@178@01 $Snap)
(assert (= $t@178@01 ($Snap.combine ($Snap.first $t@178@01) ($Snap.second $t@178@01))))
(assert (= ($Snap.first $t@178@01) $Snap.unit))
; [eval] _cthread_166 != null
(assert (not (= _cthread_166@174@01 $Ref.null)))
(assert (=
  ($Snap.second $t@178@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@178@01))
    ($Snap.second ($Snap.second $t@178@01)))))
(assert (= ($Snap.first ($Snap.second $t@178@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_166), Thread_0())
; [eval] typeof(_cthread_166)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_166@174@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@178@01)) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@179@01 $Snap)
(assert (= $t@179@01 ($Snap.combine ($Snap.first $t@179@01) ($Snap.second $t@179@01))))
(assert (= ($Snap.first $t@179@01) $Snap.unit))
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseBounded] :: Level(_r_14) <= _current_wait_level_166)
(assert (=
  ($Snap.second $t@179@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@179@01))
    ($Snap.second ($Snap.second $t@179@01)))))
(assert (= ($Snap.first ($Snap.second $t@179@01)) $Snap.unit))
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: Level(_r_14) <= _current_wait_level_166)
(assert (=
  ($Snap.second ($Snap.second $t@179@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@179@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@179@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@179@01))) $Snap.unit))
; [eval] _residue_166 <= _current_wait_level_166
(assert (<= _residue_166@176@01 _current_wait_level_166@177@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@179@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@180@01 $Ref)
; [exec]
; var cont_1: Ref
(declare-const cont_1@181@01 $Ref)
; [exec]
; var t_7: Ref
(declare-const t_7@182@01 $Ref)
; [exec]
; var Container_res_1: Ref
(declare-const Container_res_1@183@01 $Ref)
; [exec]
; var list_2: Ref
(declare-const list_2@184@01 $Ref)
; [exec]
; var m_used_twice_2_res: Ref
(declare-const m_used_twice_2_res@185@01 $Ref)
; [exec]
; var _cwl_166: Perm
(declare-const _cwl_166@186@01 $Perm)
; [exec]
; var _method_measures_166: Seq[Measure$]
(declare-const _method_measures_166@187@01 Seq<Measure$>)
; [exec]
; _method_measures_166 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err := null
; [exec]
; Container_res_1 := new()
(declare-const Container_res_1@188@01 $Ref)
(assert (not (= Container_res_1@188@01 $Ref.null)))
(assert (not (= Container_res_1@188@01 m_used_twice_2_res@185@01)))
(assert (not (= Container_res_1@188@01 Container_res_1@183@01)))
(assert (not (= Container_res_1@188@01 cont_1@181@01)))
(assert (not (= Container_res_1@188@01 _cthread_166@174@01)))
(assert (not (= Container_res_1@188@01 t_7@182@01)))
(assert (not (= Container_res_1@188@01 list_2@184@01)))
; [exec]
; inhale typeof(Container_res_1) == Container()
(declare-const $t@189@01 $Snap)
(assert (= $t@189@01 $Snap.unit))
; [eval] typeof(Container_res_1) == Container()
; [eval] typeof(Container_res_1)
; [eval] Container()
(assert (= (typeof<PyType> Container_res_1@188@01) (as Container<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_166 := Container___init__(_cthread_166, _method_measures_166, _residue_166,
;   Container_res_1)
; [eval] _cthread_156 != null
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
; [eval] self != null
; [eval] issubtype(typeof(self), Container())
; [eval] typeof(self)
; [eval] Container()
(set-option :timeout 0)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> Container_res_1@188@01) (as Container<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> Container_res_1@188@01) (as Container<PyType>  PyType)))
; [eval] self != null
; [eval] perm(MustTerminate(_cthread_156)) == none
; [eval] perm(MustTerminate(_cthread_156))
; [eval] (forperm _r_22: Ref [MustInvokeBounded(_r_22)] :: false)
; [eval] (forperm _r_22: Ref [MustInvokeUnbounded(_r_22)] :: false)
; [eval] (forperm _r_22: Ref [_r_22.MustReleaseBounded] :: false)
; [eval] (forperm _r_22: Ref [_r_22.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_156@190@01 $Perm)
(declare-const $t@191@01 $Snap)
(assert (= $t@191@01 ($Snap.combine ($Snap.first $t@191@01) ($Snap.second $t@191@01))))
(assert (= ($Snap.first $t@191@01) $Snap.unit))
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseBounded] :: Level(_r_20) <= _current_wait_level_156)
(assert (=
  ($Snap.second $t@191@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@191@01))
    ($Snap.second ($Snap.second $t@191@01)))))
(assert (= ($Snap.first ($Snap.second $t@191@01)) $Snap.unit))
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseUnbounded] :: Level(_r_20) <= _current_wait_level_156)
(assert (=
  ($Snap.second ($Snap.second $t@191@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@191@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@191@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@191@01))) $Snap.unit))
; [eval] _residue_156 <= _current_wait_level_156
(assert (<= _residue_166@176@01 _current_wait_level_156@190@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@191@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; cont_1 := Container_res_1
; [exec]
; inhale _isDefined(54286045048675)
(declare-const $t@192@01 $Snap)
(assert (= $t@192@01 $Snap.unit))
; [eval] _isDefined(54286045048675)
(set-option :timeout 0)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 54286045048675))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 54286045048675))
(assert (_isDefined $Snap.unit 54286045048675))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_166, list_2 := list___init__(_cthread_166, _method_measures_166, _residue_166)
; [eval] _cthread_8 != null
; [eval] Measure$check(_caller_measures_8, _cthread_8, 1)
(set-option :timeout 0)
(push) ; 3
(assert (Measure$check%precondition $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_166@174@01 1))
(pop) ; 3
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_166@174@01 1))
(push) ; 3
(assert (not (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_166@174@01 1)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_166@174@01 1))
; [eval] issubtype(typeof(_cthread_8), Thread_0())
; [eval] typeof(_cthread_8)
; [eval] Thread_0()
; [eval] Measure$check(_caller_measures_8, _cthread_8, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
(declare-const _current_wait_level_8@193@01 $Perm)
(declare-const res@194@01 $Ref)
(declare-const $t@195@01 $Snap)
(assert (= $t@195@01 ($Snap.combine ($Snap.first $t@195@01) ($Snap.second $t@195@01))))
(assert (= ($Snap.first $t@195@01) $Snap.unit))
; [eval] (forperm _r_44: Ref [_r_44.MustReleaseBounded] :: Level(_r_44) <= _current_wait_level_8)
(assert (=
  ($Snap.second $t@195@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@195@01))
    ($Snap.second ($Snap.second $t@195@01)))))
(assert (= ($Snap.first ($Snap.second $t@195@01)) $Snap.unit))
; [eval] (forperm _r_44: Ref [_r_44.MustReleaseUnbounded] :: Level(_r_44) <= _current_wait_level_8)
(assert (=
  ($Snap.second ($Snap.second $t@195@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@195@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@195@01))) $Snap.unit))
; [eval] _residue_8 <= _current_wait_level_8
(assert (<= _residue_166@176@01 _current_wait_level_8@193@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@195@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@195@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
(assert (not (= res@194@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))
  $Snap.unit))
; [eval] res.list_acc == Seq[Ref]()
; [eval] Seq[Ref]()
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))
  (as Seq_empty  Seq<$Ref>)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))
  $Snap.unit))
; [eval] typeof(res) == list(list_arg(typeof(res), 0))
; [eval] typeof(res)
; [eval] list(list_arg(typeof(res), 0))
; [eval] list_arg(typeof(res), 0)
; [eval] typeof(res)
(assert (=
  (typeof<PyType> res@194@01)
  (list<PyType> (list_arg<PyType> (typeof<PyType> res@194@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))
  $Snap.unit))
; [eval] (Low(res): Bool)
(assert (Low<Bool> res@194@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale issubtype(typeof(list_2), list(Container()))
(declare-const $t@196@01 $Snap)
(assert (= $t@196@01 $Snap.unit))
; [eval] issubtype(typeof(list_2), list(Container()))
; [eval] typeof(list_2)
; [eval] list(Container())
; [eval] Container()
(assert (issubtype<Bool> (typeof<PyType> res@194@01) (list<PyType> (as Container<PyType>  PyType))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert issubtype(typeof(_checkDefined(cont_1, 54286045048675)), Container())
; [eval] issubtype(typeof(_checkDefined(cont_1, 54286045048675)), Container())
; [eval] typeof(_checkDefined(cont_1, 54286045048675))
; [eval] _checkDefined(cont_1, 54286045048675)
(set-option :timeout 0)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit Container_res_1@188@01 54286045048675))
(pop) ; 3
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit Container_res_1@188@01 54286045048675))
; [eval] Container()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit Container_res_1@188@01 54286045048675)) (as Container<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit Container_res_1@188@01 54286045048675)) (as Container<PyType>  PyType)))
; [exec]
; list_2.list_acc := Seq(_checkDefined(cont_1, 54286045048675))
; [eval] Seq(_checkDefined(cont_1, 54286045048675))
; [eval] _checkDefined(cont_1, 54286045048675)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
(assert (=
  (Seq_length
    (Seq_singleton (_checkDefined $Snap.unit Container_res_1@188@01 54286045048675)))
  1))
(declare-const list_acc@197@01 Seq<$Ref>)
(assert (=
  list_acc@197@01
  (Seq_singleton (_checkDefined $Snap.unit Container_res_1@188@01 54286045048675))))
; [exec]
; _cwl_166, m_used_twice_2_res := m_used_twice_2(_cthread_166, _method_measures_166,
;   _residue_166, __prim__bool___box__(true), _checkDefined(cont_1, 54286045048675),
;   list_2, __prim__bool___box__(true))
; [eval] __prim__bool___box__(true)
(push) ; 3
(assert (__prim__bool___box__%precondition $Snap.unit true))
(pop) ; 3
; Joined path conditions
(assert (__prim__bool___box__%precondition $Snap.unit true))
; [eval] _checkDefined(cont_1, 54286045048675)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
; [eval] __prim__bool___box__(true)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] _cthread_165 != null
; [eval] issubtype(typeof(_cthread_165), Thread_0())
; [eval] typeof(_cthread_165)
; [eval] Thread_0()
; [eval] issubtype(typeof(v_2), typeof(v_2))
; [eval] typeof(v_2)
; [eval] typeof(v_2)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__bool___box__ $Snap.unit true)) (typeof<PyType> (__prim__bool___box__ $Snap.unit true)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__bool___box__ $Snap.unit true)) (typeof<PyType> (__prim__bool___box__ $Snap.unit true))))
; [eval] issubtype(typeof(t_6), typeof(t_6))
; [eval] typeof(t_6)
; [eval] typeof(t_6)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit Container_res_1@188@01 54286045048675)) (typeof<PyType> (_checkDefined $Snap.unit Container_res_1@188@01 54286045048675)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit Container_res_1@188@01 54286045048675)) (typeof<PyType> (_checkDefined $Snap.unit Container_res_1@188@01 54286045048675))))
; [eval] issubtype(typeof(lt_1), list(typeof(t_6)))
; [eval] typeof(lt_1)
; [eval] list(typeof(t_6))
; [eval] typeof(t_6)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> res@194@01) (list<PyType> (typeof<PyType> (_checkDefined $Snap.unit Container_res_1@188@01 54286045048675))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> res@194@01) (list<PyType> (typeof<PyType> (_checkDefined $Snap.unit Container_res_1@188@01 54286045048675)))))
; [eval] issubtype(typeof(b_0), bool())
; [eval] typeof(b_0)
; [eval] bool()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__bool___box__ $Snap.unit true)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__bool___box__ $Snap.unit true)) (as bool<PyType>  PyType)))
; [eval] issubtype(typeof(v_2), int())
; [eval] typeof(v_2)
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__bool___box__ $Snap.unit true)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__bool___box__ $Snap.unit true)) (as int<PyType>  PyType)))
; [eval] issubtype(typeof(t_6), object())
; [eval] typeof(t_6)
; [eval] object()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit Container_res_1@188@01 54286045048675)) (as object<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit Container_res_1@188@01 54286045048675)) (as object<PyType>  PyType)))
; [eval] int___gt__(list___len__(lt_1), 0)
; [eval] list___len__(lt_1)
(push) ; 3
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> res@194@01) (list<PyType> (list_arg<PyType> (typeof<PyType> res@194@01) 0)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> res@194@01) (list<PyType> (list_arg<PyType> (typeof<PyType> res@194@01) 0))))
(declare-const $k@198@01 $Perm)
(assert ($Perm.isReadVar $k@198@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@198@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.Seq<$Ref>To$Snap list_acc@197@01)) res@194@01))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@198@01))
(assert (and
  (issubtype<Bool> (typeof<PyType> res@194@01) (list<PyType> (list_arg<PyType> (typeof<PyType> res@194@01) 0)))
  (list___len__%precondition ($Snap.combine
    $Snap.unit
    ($SortWrappers.Seq<$Ref>To$Snap list_acc@197@01)) res@194@01)))
(set-option :timeout 0)
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($SortWrappers.Seq<$Ref>To$Snap list_acc@197@01)) res@194@01) 0))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($SortWrappers.Seq<$Ref>To$Snap list_acc@197@01)) res@194@01) 0))
(push) ; 3
(assert (not (int___gt__ $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($SortWrappers.Seq<$Ref>To$Snap list_acc@197@01)) res@194@01) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (int___gt__ $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($SortWrappers.Seq<$Ref>To$Snap list_acc@197@01)) res@194@01) 0))
; [eval] perm(MustTerminate(_cthread_165)) == none
; [eval] perm(MustTerminate(_cthread_165))
; [eval] (forperm _r_13: Ref [MustInvokeBounded(_r_13)] :: false)
; [eval] (forperm _r_13: Ref [MustInvokeUnbounded(_r_13)] :: false)
; [eval] (forperm _r_13: Ref [_r_13.MustReleaseBounded] :: false)
; [eval] (forperm _r_13: Ref [_r_13.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_165@199@01 $Perm)
(declare-const _res@200@01 $Ref)
(declare-const $t@201@01 $Snap)
(assert (= $t@201@01 ($Snap.combine ($Snap.first $t@201@01) ($Snap.second $t@201@01))))
(assert (= ($Snap.first $t@201@01) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseBounded] :: Level(_r_11) <= _current_wait_level_165)
(assert (=
  ($Snap.second $t@201@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@201@01))
    ($Snap.second ($Snap.second $t@201@01)))))
(assert (= ($Snap.first ($Snap.second $t@201@01)) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseUnbounded] :: Level(_r_11) <= _current_wait_level_165)
(assert (=
  ($Snap.second ($Snap.second $t@201@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@201@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@201@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@201@01))) $Snap.unit))
; [eval] _residue_165 <= _current_wait_level_165
(assert (<= _residue_166@176@01 _current_wait_level_165@199@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@201@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@201@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@201@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), tuple(Seq(typeof(t_6), typeof(v_2), int())))
; [eval] typeof(_res)
; [eval] tuple(Seq(typeof(t_6), typeof(v_2), int()))
; [eval] Seq(typeof(t_6), typeof(v_2), int())
; [eval] typeof(t_6)
; [eval] typeof(v_2)
; [eval] int()
(assert (=
  (Seq_length
    (Seq_append
      (Seq_append
        (Seq_singleton (typeof<PyType> (_checkDefined $Snap.unit Container_res_1@188@01 54286045048675)))
        (Seq_singleton (typeof<PyType> (__prim__bool___box__ $Snap.unit true))))
      (Seq_singleton (as int<PyType>  PyType))))
  3))
(assert (issubtype<Bool> (typeof<PyType> _res@200@01) (tuple<PyType> (Seq_append
  (Seq_append
    (Seq_singleton (typeof<PyType> (_checkDefined $Snap.unit Container_res_1@188@01 54286045048675)))
    (Seq_singleton (typeof<PyType> (__prim__bool___box__ $Snap.unit true))))
  (Seq_singleton (as int<PyType>  PyType))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; t_7 := m_used_twice_2_res
; [exec]
; inhale _isDefined(3628916)
(declare-const $t@202@01 $Snap)
(assert (= $t@202@01 $Snap.unit))
; [eval] _isDefined(3628916)
(set-option :timeout 0)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3628916))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3628916))
(assert (_isDefined $Snap.unit 3628916))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert issubtype(typeof(tuple___getitem__(_checkDefined(t_7, 3628916), 0)),
;   Container())
; [eval] issubtype(typeof(tuple___getitem__(_checkDefined(t_7, 3628916), 0)), Container())
; [eval] typeof(tuple___getitem__(_checkDefined(t_7, 3628916), 0))
; [eval] tuple___getitem__(_checkDefined(t_7, 3628916), 0)
; [eval] _checkDefined(t_7, 3628916)
(set-option :timeout 0)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit _res@200@01 3628916))
(pop) ; 3
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit _res@200@01 3628916))
(push) ; 3
; [eval] (let ln == (tuple___len__(self)) in (key >= 0 ==> key < ln) && (key < 0 ==> key >= -ln))
; [eval] tuple___len__(self)
(push) ; 4
(assert (tuple___len__%precondition $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916)))
(pop) ; 4
; Joined path conditions
(assert (tuple___len__%precondition $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916)))
(declare-const letvar@203@01 Int)
(assert (=
  (as letvar@203@01  Int)
  (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916))))
; [eval] (key >= 0 ==> key < ln) && (key < 0 ==> key >= -ln)
; [eval] key >= 0 ==> key < ln
; [eval] key >= 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.01s
; (get-info :all-statistics)
; [then-branch: 25 | True | live]
; [else-branch: 25 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 25 | True]
; [eval] key < ln
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 26 | !(0 < tuple___len__(_, _checkDefined(_, _res@200@01, 3628916))) | live]
; [else-branch: 26 | 0 < tuple___len__(_, _checkDefined(_, _res@200@01, 3628916)) | live]
(push) ; 5
; [then-branch: 26 | !(0 < tuple___len__(_, _checkDefined(_, _res@200@01, 3628916)))]
(assert (not
  (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916)))))
(pop) ; 5
(push) ; 5
; [else-branch: 26 | 0 < tuple___len__(_, _checkDefined(_, _res@200@01, 3628916))]
(assert (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916))))
; [eval] key < 0 ==> key >= -ln
; [eval] key < 0
(push) ; 6
; [then-branch: 27 | False | dead]
; [else-branch: 27 | True | live]
(push) ; 7
; [else-branch: 27 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916)))
  (not
    (<
      0
      (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916))))))
(push) ; 4
(assert (not (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916))))
(assert (tuple___getitem__%precondition $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916) 0))
(pop) ; 3
; Joined path conditions
(assert (and
  (tuple___len__%precondition $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916))
  (=
    (as letvar@203@01  Int)
    (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916)))
  (or
    (<
      0
      (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916)))
    (not
      (<
        0
        (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916)))))
  (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916)))
  (tuple___getitem__%precondition $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916) 0)))
; [eval] Container()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (tuple___getitem__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916) 0)) (as Container<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (tuple___getitem__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916) 0)) (as Container<PyType>  PyType)))
; [exec]
; assert issubtype(typeof(tuple___getitem__(_checkDefined(t_7, 3628916), 1)),
;   bool())
; [eval] issubtype(typeof(tuple___getitem__(_checkDefined(t_7, 3628916), 1)), bool())
; [eval] typeof(tuple___getitem__(_checkDefined(t_7, 3628916), 1))
; [eval] tuple___getitem__(_checkDefined(t_7, 3628916), 1)
; [eval] _checkDefined(t_7, 3628916)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
(push) ; 3
; [eval] (let ln == (tuple___len__(self)) in (key >= 0 ==> key < ln) && (key < 0 ==> key >= -ln))
; [eval] tuple___len__(self)
(push) ; 4
(pop) ; 4
; Joined path conditions
(declare-const letvar@204@01 Int)
(assert (=
  (as letvar@204@01  Int)
  (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916))))
; [eval] (key >= 0 ==> key < ln) && (key < 0 ==> key >= -ln)
; [eval] key >= 0 ==> key < ln
; [eval] key >= 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.01s
; (get-info :all-statistics)
; [then-branch: 28 | True | live]
; [else-branch: 28 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 28 | True]
; [eval] key < ln
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 29 | !(1 < tuple___len__(_, _checkDefined(_, _res@200@01, 3628916))) | live]
; [else-branch: 29 | 1 < tuple___len__(_, _checkDefined(_, _res@200@01, 3628916)) | live]
(push) ; 5
; [then-branch: 29 | !(1 < tuple___len__(_, _checkDefined(_, _res@200@01, 3628916)))]
(assert (not
  (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916)))))
(pop) ; 5
(push) ; 5
; [else-branch: 29 | 1 < tuple___len__(_, _checkDefined(_, _res@200@01, 3628916))]
(assert (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916))))
; [eval] key < 0 ==> key >= -ln
; [eval] key < 0
(push) ; 6
; [then-branch: 30 | False | dead]
; [else-branch: 30 | True | live]
(push) ; 7
; [else-branch: 30 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916)))
  (not
    (<
      1
      (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916))))))
(push) ; 4
(assert (not (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916))))
(assert (tuple___getitem__%precondition $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916) 1))
(pop) ; 3
; Joined path conditions
(assert (and
  (=
    (as letvar@204@01  Int)
    (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916)))
  (or
    (<
      1
      (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916)))
    (not
      (<
        1
        (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916)))))
  (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916)))
  (tuple___getitem__%precondition $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916) 1)))
; [eval] bool()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (tuple___getitem__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916) 1)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (tuple___getitem__ $Snap.unit (_checkDefined $Snap.unit _res@200@01 3628916) 1)) (as bool<PyType>  PyType)))
; [exec]
; assert false
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- a_client ----------
(declare-const _cthread_167@205@01 $Ref)
(declare-const _caller_measures_167@206@01 Seq<Measure$>)
(declare-const _residue_167@207@01 $Perm)
(declare-const _current_wait_level_167@208@01 $Perm)
(declare-const _cthread_167@209@01 $Ref)
(declare-const _caller_measures_167@210@01 Seq<Measure$>)
(declare-const _residue_167@211@01 $Perm)
(declare-const _current_wait_level_167@212@01 $Perm)
(push) ; 1
(declare-const $t@213@01 $Snap)
(assert (= $t@213@01 ($Snap.combine ($Snap.first $t@213@01) ($Snap.second $t@213@01))))
(assert (= ($Snap.first $t@213@01) $Snap.unit))
; [eval] _cthread_167 != null
(assert (not (= _cthread_167@209@01 $Ref.null)))
(assert (=
  ($Snap.second $t@213@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@213@01))
    ($Snap.second ($Snap.second $t@213@01)))))
(assert (= ($Snap.first ($Snap.second $t@213@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_167), Thread_0())
; [eval] typeof(_cthread_167)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_167@209@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@213@01)) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@214@01 $Snap)
(assert (= $t@214@01 ($Snap.combine ($Snap.first $t@214@01) ($Snap.second $t@214@01))))
(assert (= ($Snap.first $t@214@01) $Snap.unit))
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseBounded] :: Level(_r_17) <= _current_wait_level_167)
(assert (=
  ($Snap.second $t@214@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@214@01))
    ($Snap.second ($Snap.second $t@214@01)))))
(assert (= ($Snap.first ($Snap.second $t@214@01)) $Snap.unit))
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: Level(_r_17) <= _current_wait_level_167)
(assert (=
  ($Snap.second ($Snap.second $t@214@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@214@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@214@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@214@01))) $Snap.unit))
; [eval] _residue_167 <= _current_wait_level_167
(assert (<= _residue_167@211@01 _current_wait_level_167@212@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@214@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@215@01 $Ref)
; [exec]
; var a: Ref
(declare-const a@216@01 $Ref)
; [exec]
; var cont_2: Ref
(declare-const cont_2@217@01 $Ref)
; [exec]
; var a1: Ref
(declare-const a1@218@01 $Ref)
; [exec]
; var a2: Ref
(declare-const a2@219@01 $Ref)
; [exec]
; var A_res: Ref
(declare-const A_res@220@01 $Ref)
; [exec]
; var Container_res_2: Ref
(declare-const Container_res_2@221@01 $Ref)
; [exec]
; var method_res: Ref
(declare-const method_res@222@01 $Ref)
; [exec]
; var method_2_res: Ref
(declare-const method_2_res@223@01 $Ref)
; [exec]
; var _cwl_167: Perm
(declare-const _cwl_167@224@01 $Perm)
; [exec]
; var _method_measures_167: Seq[Measure$]
(declare-const _method_measures_167@225@01 Seq<Measure$>)
; [exec]
; _method_measures_167 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err := null
; [exec]
; A_res := new()
(declare-const A_res@226@01 $Ref)
(assert (not (= A_res@226@01 $Ref.null)))
(assert (not (= A_res@226@01 Container_res_2@221@01)))
(assert (not (= A_res@226@01 method_res@222@01)))
(assert (not (= A_res@226@01 cont_2@217@01)))
(assert (not (= A_res@226@01 _cthread_167@209@01)))
(assert (not (= A_res@226@01 A_res@220@01)))
(assert (not (= A_res@226@01 a1@218@01)))
(assert (not (= A_res@226@01 a2@219@01)))
(assert (not (= A_res@226@01 method_2_res@223@01)))
(assert (not (= A_res@226@01 a@216@01)))
; [exec]
; inhale typeof(A_res) == A(bool())
(declare-const $t@227@01 $Snap)
(assert (= $t@227@01 $Snap.unit))
; [eval] typeof(A_res) == A(bool())
; [eval] typeof(A_res)
; [eval] A(bool())
; [eval] bool()
(assert (= (typeof<PyType> A_res@226@01) (A<PyType> (as bool<PyType>  PyType))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_MaySet(A_res, 7757633), write)
(declare-const $t@228@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _cwl_167 := A___init__(_cthread_167, _method_measures_167, _residue_167, A_res,
;   __prim__bool___box__(true))
; [eval] __prim__bool___box__(true)
(set-option :timeout 0)
(push) ; 3
(assert (__prim__bool___box__%precondition $Snap.unit true))
(pop) ; 3
; Joined path conditions
(assert (__prim__bool___box__%precondition $Snap.unit true))
; [eval] _cthread_157 != null
; [eval] issubtype(typeof(_cthread_157), Thread_0())
; [eval] typeof(_cthread_157)
; [eval] Thread_0()
; [eval] self_0 != null
; [eval] issubtype(typeof(self_0), A(A_arg(typeof(self_0), 0)))
; [eval] typeof(self_0)
; [eval] A(A_arg(typeof(self_0), 0))
; [eval] A_arg(typeof(self_0), 0)
; [eval] typeof(self_0)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> A_res@226@01) (A<PyType> (A_arg<PyType> (typeof<PyType> A_res@226@01) 0)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> A_res@226@01) (A<PyType> (A_arg<PyType> (typeof<PyType> A_res@226@01) 0))))
; [eval] issubtype(typeof(v), A_arg(typeof(self_0), 0))
; [eval] typeof(v)
; [eval] A_arg(typeof(self_0), 0)
; [eval] typeof(self_0)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__bool___box__ $Snap.unit true)) (A_arg<PyType> (typeof<PyType> A_res@226@01) 0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__bool___box__ $Snap.unit true)) (A_arg<PyType> (typeof<PyType> A_res@226@01) 0)))
; [eval] issubtype(A_arg(typeof(self_0), 0), int())
; [eval] A_arg(typeof(self_0), 0)
; [eval] typeof(self_0)
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (A_arg<PyType> (typeof<PyType> A_res@226@01) 0) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (A_arg<PyType> (typeof<PyType> A_res@226@01) 0) (as int<PyType>  PyType)))
; [eval] self_0 != null
; [eval] perm(MustTerminate(_cthread_157)) == none
; [eval] perm(MustTerminate(_cthread_157))
; [eval] (forperm _r_25: Ref [MustInvokeBounded(_r_25)] :: false)
; [eval] (forperm _r_25: Ref [MustInvokeUnbounded(_r_25)] :: false)
; [eval] (forperm _r_25: Ref [_r_25.MustReleaseBounded] :: false)
; [eval] (forperm _r_25: Ref [_r_25.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_157@229@01 $Perm)
(declare-const $t@230@01 $Snap)
(assert (= $t@230@01 ($Snap.combine ($Snap.first $t@230@01) ($Snap.second $t@230@01))))
(assert (= ($Snap.first $t@230@01) $Snap.unit))
; [eval] (forperm _r_23: Ref [_r_23.MustReleaseBounded] :: Level(_r_23) <= _current_wait_level_157)
(assert (=
  ($Snap.second $t@230@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@230@01))
    ($Snap.second ($Snap.second $t@230@01)))))
(assert (= ($Snap.first ($Snap.second $t@230@01)) $Snap.unit))
; [eval] (forperm _r_23: Ref [_r_23.MustReleaseUnbounded] :: Level(_r_23) <= _current_wait_level_157)
(assert (=
  ($Snap.second ($Snap.second $t@230@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@230@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@230@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@230@01))) $Snap.unit))
; [eval] _residue_157 <= _current_wait_level_157
(assert (<= _residue_167@211@01 _current_wait_level_157@229@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@230@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@230@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@230@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@230@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@230@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@230@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@230@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_0.A_v), A_arg(typeof(self_0), 0))
; [eval] typeof(self_0.A_v)
; [eval] A_arg(typeof(self_0), 0)
; [eval] typeof(self_0)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@230@01)))))) (A_arg<PyType> (typeof<PyType> A_res@226@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@230@01)))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; a := A_res
; [exec]
; inhale _isDefined(97)
(declare-const $t@231@01 $Snap)
(assert (= $t@231@01 $Snap.unit))
; [eval] _isDefined(97)
(set-option :timeout 0)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 97))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 97))
(assert (_isDefined $Snap.unit 97))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; Container_res_2 := new()
(declare-const Container_res_2@232@01 $Ref)
(assert (not (= Container_res_2@232@01 $Ref.null)))
(assert (not (= Container_res_2@232@01 Container_res_2@221@01)))
(assert (not (= Container_res_2@232@01 method_res@222@01)))
(assert (not (= Container_res_2@232@01 cont_2@217@01)))
(assert (not (= Container_res_2@232@01 _cthread_167@209@01)))
(assert (not (= Container_res_2@232@01 A_res@226@01)))
(assert (not (= Container_res_2@232@01 a1@218@01)))
(assert (not
  (=
    Container_res_2@232@01
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@230@01))))))))
(assert (not (= Container_res_2@232@01 a2@219@01)))
(assert (not (= Container_res_2@232@01 method_2_res@223@01)))
; [exec]
; inhale typeof(Container_res_2) == Container()
(declare-const $t@233@01 $Snap)
(assert (= $t@233@01 $Snap.unit))
; [eval] typeof(Container_res_2) == Container()
; [eval] typeof(Container_res_2)
; [eval] Container()
(assert (= (typeof<PyType> Container_res_2@232@01) (as Container<PyType>  PyType)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _cwl_167 := Container___init__(_cthread_167, _method_measures_167, _residue_167,
;   Container_res_2)
; [eval] _cthread_156 != null
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
; [eval] self != null
; [eval] issubtype(typeof(self), Container())
; [eval] typeof(self)
; [eval] Container()
(set-option :timeout 0)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> Container_res_2@232@01) (as Container<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> Container_res_2@232@01) (as Container<PyType>  PyType)))
; [eval] self != null
; [eval] perm(MustTerminate(_cthread_156)) == none
; [eval] perm(MustTerminate(_cthread_156))
; [eval] (forperm _r_22: Ref [MustInvokeBounded(_r_22)] :: false)
; [eval] (forperm _r_22: Ref [MustInvokeUnbounded(_r_22)] :: false)
; [eval] (forperm _r_22: Ref [_r_22.MustReleaseBounded] :: false)
; [eval] (forperm _r_22: Ref [_r_22.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_156@234@01 $Perm)
(declare-const $t@235@01 $Snap)
(assert (= $t@235@01 ($Snap.combine ($Snap.first $t@235@01) ($Snap.second $t@235@01))))
(assert (= ($Snap.first $t@235@01) $Snap.unit))
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseBounded] :: Level(_r_20) <= _current_wait_level_156)
(assert (=
  ($Snap.second $t@235@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@235@01))
    ($Snap.second ($Snap.second $t@235@01)))))
(assert (= ($Snap.first ($Snap.second $t@235@01)) $Snap.unit))
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseUnbounded] :: Level(_r_20) <= _current_wait_level_156)
(assert (=
  ($Snap.second ($Snap.second $t@235@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@235@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@235@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@235@01))) $Snap.unit))
; [eval] _residue_156 <= _current_wait_level_156
(assert (<= _residue_167@211@01 _current_wait_level_156@234@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@235@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; cont_2 := Container_res_2
; [exec]
; inhale _isDefined(55385556676451)
(declare-const $t@236@01 $Snap)
(assert (= $t@236@01 $Snap.unit))
; [eval] _isDefined(55385556676451)
(set-option :timeout 0)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 55385556676451))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 55385556676451))
(assert (_isDefined $Snap.unit 55385556676451))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_167, method_res := A_method(_cthread_167, _method_measures_167, _residue_167,
;   _checkDefined(a, 97), _checkDefined(cont_2, 55385556676451))
; [eval] _checkDefined(a, 97)
(set-option :timeout 0)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit A_res@226@01 97))
(pop) ; 3
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit A_res@226@01 97))
; [eval] _checkDefined(cont_2, 55385556676451)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit Container_res_2@232@01 55385556676451))
(pop) ; 3
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit Container_res_2@232@01 55385556676451))
; [eval] _cthread_158 != null
; [eval] issubtype(typeof(_cthread_158), Thread_0())
; [eval] typeof(_cthread_158)
; [eval] Thread_0()
; [eval] issubtype(typeof(self_1), A(A_arg(typeof(self_1), 0)))
; [eval] typeof(self_1)
; [eval] A(A_arg(typeof(self_1), 0))
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit A_res@226@01 97)) (A<PyType> (A_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit A_res@226@01 97)) 0)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit A_res@226@01 97)) (A<PyType> (A_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit A_res@226@01 97)) 0))))
; [eval] issubtype(typeof(t_0), typeof(t_0))
; [eval] typeof(t_0)
; [eval] typeof(t_0)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit Container_res_2@232@01 55385556676451)) (typeof<PyType> (_checkDefined $Snap.unit Container_res_2@232@01 55385556676451)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit Container_res_2@232@01 55385556676451)) (typeof<PyType> (_checkDefined $Snap.unit Container_res_2@232@01 55385556676451))))
; [eval] issubtype(A_arg(typeof(self_1), 0), int())
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (A_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit A_res@226@01 97)) 0) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (A_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit A_res@226@01 97)) 0) (as int<PyType>  PyType)))
; [eval] issubtype(typeof(t_0), object())
; [eval] typeof(t_0)
; [eval] object()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit Container_res_2@232@01 55385556676451)) (as object<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit Container_res_2@232@01 55385556676451)) (as object<PyType>  PyType)))
; [eval] self_1 != null
(push) ; 3
(assert (not (not (= (_checkDefined $Snap.unit A_res@226@01 97) $Ref.null))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= (_checkDefined $Snap.unit A_res@226@01 97) $Ref.null)))
(push) ; 3
(set-option :timeout 10)
(assert (not (= A_res@226@01 (_checkDefined $Snap.unit A_res@226@01 97))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] issubtype(typeof(self_1.A_v), A_arg(typeof(self_1), 0))
; [eval] typeof(self_1.A_v)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= A_res@226@01 (_checkDefined $Snap.unit A_res@226@01 97))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
(set-option :timeout 0)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@230@01)))))) (A_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit A_res@226@01 97)) 0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@230@01)))))) (A_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit A_res@226@01 97)) 0)))
; [eval] perm(MustTerminate(_cthread_158)) == none
; [eval] perm(MustTerminate(_cthread_158))
; [eval] (forperm _r_28: Ref [MustInvokeBounded(_r_28)] :: false)
; [eval] (forperm _r_28: Ref [MustInvokeUnbounded(_r_28)] :: false)
; [eval] (forperm _r_28: Ref [_r_28.MustReleaseBounded] :: false)
; [eval] (forperm _r_28: Ref [_r_28.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_158@237@01 $Perm)
(declare-const _res@238@01 $Ref)
(declare-const $t@239@01 $Snap)
(assert (= $t@239@01 ($Snap.combine ($Snap.first $t@239@01) ($Snap.second $t@239@01))))
(assert (= ($Snap.first $t@239@01) $Snap.unit))
; [eval] (forperm _r_26: Ref [_r_26.MustReleaseBounded] :: Level(_r_26) <= _current_wait_level_158)
(assert (=
  ($Snap.second $t@239@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@239@01))
    ($Snap.second ($Snap.second $t@239@01)))))
(assert (= ($Snap.first ($Snap.second $t@239@01)) $Snap.unit))
; [eval] (forperm _r_26: Ref [_r_26.MustReleaseUnbounded] :: Level(_r_26) <= _current_wait_level_158)
(assert (=
  ($Snap.second ($Snap.second $t@239@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@239@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@239@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@239@01))) $Snap.unit))
; [eval] _residue_158 <= _current_wait_level_158
(assert (<= _residue_167@211@01 _current_wait_level_158@237@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@239@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@239@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@239@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), tuple(Seq(typeof(t_0), A_arg(typeof(self_1), 0))))
; [eval] typeof(_res)
; [eval] tuple(Seq(typeof(t_0), A_arg(typeof(self_1), 0)))
; [eval] Seq(typeof(t_0), A_arg(typeof(self_1), 0))
; [eval] typeof(t_0)
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
(assert (=
  (Seq_length
    (Seq_append
      (Seq_singleton (typeof<PyType> (_checkDefined $Snap.unit Container_res_2@232@01 55385556676451)))
      (Seq_singleton (A_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit A_res@226@01 97)) 0))))
  2))
(assert (issubtype<Bool> (typeof<PyType> _res@238@01) (tuple<PyType> (Seq_append
  (Seq_singleton (typeof<PyType> (_checkDefined $Snap.unit Container_res_2@232@01 55385556676451)))
  (Seq_singleton (A_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit A_res@226@01 97)) 0))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_1.A_v), A_arg(typeof(self_1), 0))
; [eval] typeof(self_1.A_v)
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01))))))) (A_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit A_res@226@01 97)) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; a1 := method_res
; [exec]
; inhale _isDefined(12641)
(declare-const $t@240@01 $Snap)
(assert (= $t@240@01 $Snap.unit))
; [eval] _isDefined(12641)
(set-option :timeout 0)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 12641))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 12641))
(assert (_isDefined $Snap.unit 12641))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert issubtype(typeof(tuple___getitem__(_checkDefined(a1, 12641), 1)), bool())
; [eval] issubtype(typeof(tuple___getitem__(_checkDefined(a1, 12641), 1)), bool())
; [eval] typeof(tuple___getitem__(_checkDefined(a1, 12641), 1))
; [eval] tuple___getitem__(_checkDefined(a1, 12641), 1)
; [eval] _checkDefined(a1, 12641)
(set-option :timeout 0)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit _res@238@01 12641))
(pop) ; 3
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit _res@238@01 12641))
(push) ; 3
; [eval] (let ln == (tuple___len__(self)) in (key >= 0 ==> key < ln) && (key < 0 ==> key >= -ln))
; [eval] tuple___len__(self)
(push) ; 4
(assert (tuple___len__%precondition $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641)))
(pop) ; 4
; Joined path conditions
(assert (tuple___len__%precondition $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641)))
(declare-const letvar@241@01 Int)
(assert (=
  (as letvar@241@01  Int)
  (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641))))
; [eval] (key >= 0 ==> key < ln) && (key < 0 ==> key >= -ln)
; [eval] key >= 0 ==> key < ln
; [eval] key >= 0
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
; [eval] key < ln
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 32 | !(1 < tuple___len__(_, _checkDefined(_, _res@238@01, 12641))) | live]
; [else-branch: 32 | 1 < tuple___len__(_, _checkDefined(_, _res@238@01, 12641)) | live]
(push) ; 5
; [then-branch: 32 | !(1 < tuple___len__(_, _checkDefined(_, _res@238@01, 12641)))]
(assert (not
  (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641)))))
(pop) ; 5
(push) ; 5
; [else-branch: 32 | 1 < tuple___len__(_, _checkDefined(_, _res@238@01, 12641))]
(assert (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641))))
; [eval] key < 0 ==> key >= -ln
; [eval] key < 0
(push) ; 6
; [then-branch: 33 | False | dead]
; [else-branch: 33 | True | live]
(push) ; 7
; [else-branch: 33 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641)))
  (not
    (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641))))))
(push) ; 4
(assert (not (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641))))
(assert (tuple___getitem__%precondition $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641) 1))
(pop) ; 3
; Joined path conditions
(assert (and
  (tuple___len__%precondition $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641))
  (=
    (as letvar@241@01  Int)
    (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641)))
  (or
    (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641)))
    (not
      (<
        1
        (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641)))))
  (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641)))
  (tuple___getitem__%precondition $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641) 1)))
; [eval] bool()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (tuple___getitem__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641) 1)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (tuple___getitem__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641) 1)) (as bool<PyType>  PyType)))
; [exec]
; assert issubtype(typeof(tuple___getitem__(_checkDefined(a1, 12641), 0)), Container())
; [eval] issubtype(typeof(tuple___getitem__(_checkDefined(a1, 12641), 0)), Container())
; [eval] typeof(tuple___getitem__(_checkDefined(a1, 12641), 0))
; [eval] tuple___getitem__(_checkDefined(a1, 12641), 0)
; [eval] _checkDefined(a1, 12641)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
(push) ; 3
; [eval] (let ln == (tuple___len__(self)) in (key >= 0 ==> key < ln) && (key < 0 ==> key >= -ln))
; [eval] tuple___len__(self)
(push) ; 4
(pop) ; 4
; Joined path conditions
(declare-const letvar@242@01 Int)
(assert (=
  (as letvar@242@01  Int)
  (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641))))
; [eval] (key >= 0 ==> key < ln) && (key < 0 ==> key >= -ln)
; [eval] key >= 0 ==> key < ln
; [eval] key >= 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 34 | True | live]
; [else-branch: 34 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 34 | True]
; [eval] key < ln
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 35 | !(0 < tuple___len__(_, _checkDefined(_, _res@238@01, 12641))) | live]
; [else-branch: 35 | 0 < tuple___len__(_, _checkDefined(_, _res@238@01, 12641)) | live]
(push) ; 5
; [then-branch: 35 | !(0 < tuple___len__(_, _checkDefined(_, _res@238@01, 12641)))]
(assert (not
  (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641)))))
(pop) ; 5
(push) ; 5
; [else-branch: 35 | 0 < tuple___len__(_, _checkDefined(_, _res@238@01, 12641))]
(assert (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641))))
; [eval] key < 0 ==> key >= -ln
; [eval] key < 0
(push) ; 6
; [then-branch: 36 | False | dead]
; [else-branch: 36 | True | live]
(push) ; 7
; [else-branch: 36 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641)))
  (not
    (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641))))))
(push) ; 4
(assert (not (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641))))
(assert (tuple___getitem__%precondition $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641) 0))
(pop) ; 3
; Joined path conditions
(assert (and
  (=
    (as letvar@242@01  Int)
    (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641)))
  (or
    (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641)))
    (not
      (<
        0
        (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641)))))
  (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641)))
  (tuple___getitem__%precondition $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641) 0)))
; [eval] Container()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (tuple___getitem__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641) 0)) (as Container<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (tuple___getitem__ $Snap.unit (_checkDefined $Snap.unit _res@238@01 12641) 0)) (as Container<PyType>  PyType)))
; [exec]
; _cwl_167, method_2_res := A_method_2(_cthread_167, _method_measures_167, _residue_167,
;   _checkDefined(a, 97), _checkDefined(cont_2, 55385556676451))
; [eval] _checkDefined(a, 97)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
; [eval] _checkDefined(cont_2, 55385556676451)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
; [eval] _cthread_159 != null
; [eval] issubtype(typeof(_cthread_159), Thread_0())
; [eval] typeof(_cthread_159)
; [eval] Thread_0()
; [eval] issubtype(typeof(self_2), A(A_arg(typeof(self_2), 0)))
; [eval] typeof(self_2)
; [eval] A(A_arg(typeof(self_2), 0))
; [eval] A_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
; [eval] issubtype(typeof(t_1), typeof(t_1))
; [eval] typeof(t_1)
; [eval] typeof(t_1)
; [eval] issubtype(A_arg(typeof(self_2), 0), int())
; [eval] A_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
; [eval] int()
; [eval] issubtype(typeof(t_1), object())
; [eval] typeof(t_1)
; [eval] object()
; [eval] self_2 != null
; [eval] issubtype(typeof(self_2.A_v), A_arg(typeof(self_2), 0))
; [eval] typeof(self_2.A_v)
; [eval] A_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
; [eval] perm(MustTerminate(_cthread_159)) == none
; [eval] perm(MustTerminate(_cthread_159))
; [eval] (forperm _r_31: Ref [MustInvokeBounded(_r_31)] :: false)
; [eval] (forperm _r_31: Ref [MustInvokeUnbounded(_r_31)] :: false)
; [eval] (forperm _r_31: Ref [_r_31.MustReleaseBounded] :: false)
; [eval] (forperm _r_31: Ref [_r_31.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_159@243@01 $Perm)
(declare-const _res@244@01 $Ref)
(declare-const $t@245@01 $Snap)
(assert (= $t@245@01 ($Snap.combine ($Snap.first $t@245@01) ($Snap.second $t@245@01))))
(assert (= ($Snap.first $t@245@01) $Snap.unit))
; [eval] (forperm _r_29: Ref [_r_29.MustReleaseBounded] :: Level(_r_29) <= _current_wait_level_159)
(assert (=
  ($Snap.second $t@245@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@245@01))
    ($Snap.second ($Snap.second $t@245@01)))))
(assert (= ($Snap.first ($Snap.second $t@245@01)) $Snap.unit))
; [eval] (forperm _r_29: Ref [_r_29.MustReleaseUnbounded] :: Level(_r_29) <= _current_wait_level_159)
(assert (=
  ($Snap.second ($Snap.second $t@245@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@245@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@245@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@245@01))) $Snap.unit))
; [eval] _residue_159 <= _current_wait_level_159
(assert (<= _residue_167@211@01 _current_wait_level_159@243@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@245@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@245@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@245@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), tuple(Seq(typeof(t_1), A_arg(typeof(self_2), 0))))
; [eval] typeof(_res)
; [eval] tuple(Seq(typeof(t_1), A_arg(typeof(self_2), 0)))
; [eval] Seq(typeof(t_1), A_arg(typeof(self_2), 0))
; [eval] typeof(t_1)
; [eval] A_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
(assert (issubtype<Bool> (typeof<PyType> _res@244@01) (tuple<PyType> (Seq_append
  (Seq_singleton (typeof<PyType> (_checkDefined $Snap.unit Container_res_2@232@01 55385556676451)))
  (Seq_singleton (A_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit A_res@226@01 97)) 0))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2.A_v), A_arg(typeof(self_2), 0))
; [eval] typeof(self_2.A_v)
; [eval] A_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01))))))) (A_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit A_res@226@01 97)) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; a2 := method_2_res
; [exec]
; inhale _isDefined(12897)
(declare-const $t@246@01 $Snap)
(assert (= $t@246@01 $Snap.unit))
; [eval] _isDefined(12897)
(set-option :timeout 0)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 12897))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 12897))
(assert (_isDefined $Snap.unit 12897))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert issubtype(typeof(tuple___getitem__(_checkDefined(a2, 12897), 1)), bool())
; [eval] issubtype(typeof(tuple___getitem__(_checkDefined(a2, 12897), 1)), bool())
; [eval] typeof(tuple___getitem__(_checkDefined(a2, 12897), 1))
; [eval] tuple___getitem__(_checkDefined(a2, 12897), 1)
; [eval] _checkDefined(a2, 12897)
(set-option :timeout 0)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit _res@244@01 12897))
(pop) ; 3
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit _res@244@01 12897))
(push) ; 3
; [eval] (let ln == (tuple___len__(self)) in (key >= 0 ==> key < ln) && (key < 0 ==> key >= -ln))
; [eval] tuple___len__(self)
(push) ; 4
(assert (tuple___len__%precondition $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897)))
(pop) ; 4
; Joined path conditions
(assert (tuple___len__%precondition $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897)))
(declare-const letvar@247@01 Int)
(assert (=
  (as letvar@247@01  Int)
  (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897))))
; [eval] (key >= 0 ==> key < ln) && (key < 0 ==> key >= -ln)
; [eval] key >= 0 ==> key < ln
; [eval] key >= 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 37 | True | live]
; [else-branch: 37 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 37 | True]
; [eval] key < ln
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 38 | !(1 < tuple___len__(_, _checkDefined(_, _res@244@01, 12897))) | live]
; [else-branch: 38 | 1 < tuple___len__(_, _checkDefined(_, _res@244@01, 12897)) | live]
(push) ; 5
; [then-branch: 38 | !(1 < tuple___len__(_, _checkDefined(_, _res@244@01, 12897)))]
(assert (not
  (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897)))))
(pop) ; 5
(push) ; 5
; [else-branch: 38 | 1 < tuple___len__(_, _checkDefined(_, _res@244@01, 12897))]
(assert (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897))))
; [eval] key < 0 ==> key >= -ln
; [eval] key < 0
(push) ; 6
; [then-branch: 39 | False | dead]
; [else-branch: 39 | True | live]
(push) ; 7
; [else-branch: 39 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897)))
  (not
    (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897))))))
(push) ; 4
(assert (not (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897))))
(assert (tuple___getitem__%precondition $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897) 1))
(pop) ; 3
; Joined path conditions
(assert (and
  (tuple___len__%precondition $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897))
  (=
    (as letvar@247@01  Int)
    (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897)))
  (or
    (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897)))
    (not
      (<
        1
        (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897)))))
  (< 1 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897)))
  (tuple___getitem__%precondition $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897) 1)))
; [eval] bool()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (tuple___getitem__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897) 1)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (tuple___getitem__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897) 1)) (as bool<PyType>  PyType)))
; [exec]
; assert issubtype(typeof(tuple___getitem__(_checkDefined(a2, 12897), 0)), Container())
; [eval] issubtype(typeof(tuple___getitem__(_checkDefined(a2, 12897), 0)), Container())
; [eval] typeof(tuple___getitem__(_checkDefined(a2, 12897), 0))
; [eval] tuple___getitem__(_checkDefined(a2, 12897), 0)
; [eval] _checkDefined(a2, 12897)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
(push) ; 3
; [eval] (let ln == (tuple___len__(self)) in (key >= 0 ==> key < ln) && (key < 0 ==> key >= -ln))
; [eval] tuple___len__(self)
(push) ; 4
(pop) ; 4
; Joined path conditions
(declare-const letvar@248@01 Int)
(assert (=
  (as letvar@248@01  Int)
  (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897))))
; [eval] (key >= 0 ==> key < ln) && (key < 0 ==> key >= -ln)
; [eval] key >= 0 ==> key < ln
; [eval] key >= 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.01s
; (get-info :all-statistics)
; [then-branch: 40 | True | live]
; [else-branch: 40 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 40 | True]
; [eval] key < ln
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 41 | !(0 < tuple___len__(_, _checkDefined(_, _res@244@01, 12897))) | live]
; [else-branch: 41 | 0 < tuple___len__(_, _checkDefined(_, _res@244@01, 12897)) | live]
(push) ; 5
; [then-branch: 41 | !(0 < tuple___len__(_, _checkDefined(_, _res@244@01, 12897)))]
(assert (not
  (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897)))))
(pop) ; 5
(push) ; 5
; [else-branch: 41 | 0 < tuple___len__(_, _checkDefined(_, _res@244@01, 12897))]
(assert (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897))))
; [eval] key < 0 ==> key >= -ln
; [eval] key < 0
(push) ; 6
; [then-branch: 42 | False | dead]
; [else-branch: 42 | True | live]
(push) ; 7
; [else-branch: 42 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897)))
  (not
    (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897))))))
(push) ; 4
(assert (not (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897))))
(assert (tuple___getitem__%precondition $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897) 0))
(pop) ; 3
; Joined path conditions
(assert (and
  (=
    (as letvar@248@01  Int)
    (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897)))
  (or
    (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897)))
    (not
      (<
        0
        (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897)))))
  (< 0 (tuple___len__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897)))
  (tuple___getitem__%precondition $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897) 0)))
; [eval] Container()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (tuple___getitem__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897) 0)) (as Container<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (tuple___getitem__ $Snap.unit (_checkDefined $Snap.unit _res@244@01 12897) 0)) (as Container<PyType>  PyType)))
; [exec]
; assert false
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- Container___init__ ----------
(declare-const _cthread_156@249@01 $Ref)
(declare-const _caller_measures_156@250@01 Seq<Measure$>)
(declare-const _residue_156@251@01 $Perm)
(declare-const self@252@01 $Ref)
(declare-const _current_wait_level_156@253@01 $Perm)
(declare-const _cthread_156@254@01 $Ref)
(declare-const _caller_measures_156@255@01 Seq<Measure$>)
(declare-const _residue_156@256@01 $Perm)
(declare-const self@257@01 $Ref)
(declare-const _current_wait_level_156@258@01 $Perm)
(push) ; 1
(declare-const $t@259@01 $Snap)
(assert (= $t@259@01 ($Snap.combine ($Snap.first $t@259@01) ($Snap.second $t@259@01))))
(assert (= ($Snap.first $t@259@01) $Snap.unit))
; [eval] _cthread_156 != null
(assert (not (= _cthread_156@254@01 $Ref.null)))
(assert (=
  ($Snap.second $t@259@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@259@01))
    ($Snap.second ($Snap.second $t@259@01)))))
(assert (= ($Snap.first ($Snap.second $t@259@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_156@254@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@259@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@259@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@259@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@259@01))) $Snap.unit))
; [eval] self != null
(assert (not (= self@257@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@259@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@259@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@259@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@259@01))))
  $Snap.unit))
; [eval] issubtype(typeof(self), Container())
; [eval] typeof(self)
; [eval] Container()
(assert (issubtype<Bool> (typeof<PyType> self@257@01) (as Container<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@259@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@259@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@259@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@259@01)))))
  $Snap.unit))
; [eval] self != null
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@259@01)))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@260@01 $Snap)
(assert (= $t@260@01 ($Snap.combine ($Snap.first $t@260@01) ($Snap.second $t@260@01))))
(assert (= ($Snap.first $t@260@01) $Snap.unit))
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseBounded] :: Level(_r_20) <= _current_wait_level_156)
(assert (=
  ($Snap.second $t@260@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@260@01))
    ($Snap.second ($Snap.second $t@260@01)))))
(assert (= ($Snap.first ($Snap.second $t@260@01)) $Snap.unit))
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseUnbounded] :: Level(_r_20) <= _current_wait_level_156)
(assert (=
  ($Snap.second ($Snap.second $t@260@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@260@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@260@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@260@01))) $Snap.unit))
; [eval] _residue_156 <= _current_wait_level_156
(assert (<= _residue_156@256@01 _current_wait_level_156@258@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@260@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@261@01 $Ref)
; [exec]
; var self_4: Ref
(declare-const self_4@262@01 $Ref)
; [exec]
; var _cwl_156: Perm
(declare-const _cwl_156@263@01 $Perm)
; [exec]
; var _method_measures_156: Seq[Measure$]
(declare-const _method_measures_156@264@01 Seq<Measure$>)
; [exec]
; _method_measures_156 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self) == Container()
(declare-const $t@265@01 $Snap)
(assert (= $t@265@01 $Snap.unit))
; [eval] typeof(self) == Container()
; [eval] typeof(self)
; [eval] Container()
(assert (= (typeof<PyType> self@257@01) (as Container<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err := null
; [exec]
; self_4 := self
; [exec]
; label __end
; [eval] (forperm _r_21: Ref [MustInvokeBounded(_r_21)] :: false)
; [eval] (forperm _r_21: Ref [MustInvokeUnbounded(_r_21)] :: false)
; [eval] (forperm _r_21: Ref [_r_21.MustReleaseBounded] :: false)
; [eval] (forperm _r_21: Ref [_r_21.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- A___init__ ----------
(declare-const _cthread_157@266@01 $Ref)
(declare-const _caller_measures_157@267@01 Seq<Measure$>)
(declare-const _residue_157@268@01 $Perm)
(declare-const self_0@269@01 $Ref)
(declare-const v@270@01 $Ref)
(declare-const _current_wait_level_157@271@01 $Perm)
(declare-const _cthread_157@272@01 $Ref)
(declare-const _caller_measures_157@273@01 Seq<Measure$>)
(declare-const _residue_157@274@01 $Perm)
(declare-const self_0@275@01 $Ref)
(declare-const v@276@01 $Ref)
(declare-const _current_wait_level_157@277@01 $Perm)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@278@01 $Snap)
(assert (= $t@278@01 ($Snap.combine ($Snap.first $t@278@01) ($Snap.second $t@278@01))))
(assert (= ($Snap.first $t@278@01) $Snap.unit))
; [eval] _cthread_157 != null
(assert (not (= _cthread_157@272@01 $Ref.null)))
(assert (=
  ($Snap.second $t@278@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@278@01))
    ($Snap.second ($Snap.second $t@278@01)))))
(assert (= ($Snap.first ($Snap.second $t@278@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_157), Thread_0())
; [eval] typeof(_cthread_157)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_157@272@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@278@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@278@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@278@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@278@01))) $Snap.unit))
; [eval] self_0 != null
(assert (not (= self_0@275@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@278@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@278@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@278@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@278@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@278@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@278@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@278@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_0), A(A_arg(typeof(self_0), 0)))
; [eval] typeof(self_0)
; [eval] A(A_arg(typeof(self_0), 0))
; [eval] A_arg(typeof(self_0), 0)
; [eval] typeof(self_0)
(assert (issubtype<Bool> (typeof<PyType> self_0@275@01) (A<PyType> (A_arg<PyType> (typeof<PyType> self_0@275@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@278@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@278@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@278@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@278@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(v), A_arg(typeof(self_0), 0))
; [eval] typeof(v)
; [eval] A_arg(typeof(self_0), 0)
; [eval] typeof(self_0)
(assert (issubtype<Bool> (typeof<PyType> v@276@01) (A_arg<PyType> (typeof<PyType> self_0@275@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@278@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@278@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@278@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@278@01)))))))
  $Snap.unit))
; [eval] issubtype(A_arg(typeof(self_0), 0), int())
; [eval] A_arg(typeof(self_0), 0)
; [eval] typeof(self_0)
; [eval] int()
(assert (issubtype<Bool> (A_arg<PyType> (typeof<PyType> self_0@275@01) 0) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@278@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@278@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@278@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@278@01))))))))
  $Snap.unit))
; [eval] self_0 != null
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@278@01))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@279@01 $Snap)
(assert (= $t@279@01 ($Snap.combine ($Snap.first $t@279@01) ($Snap.second $t@279@01))))
(assert (= ($Snap.first $t@279@01) $Snap.unit))
; [eval] (forperm _r_23: Ref [_r_23.MustReleaseBounded] :: Level(_r_23) <= _current_wait_level_157)
(assert (=
  ($Snap.second $t@279@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@279@01))
    ($Snap.second ($Snap.second $t@279@01)))))
(assert (= ($Snap.first ($Snap.second $t@279@01)) $Snap.unit))
; [eval] (forperm _r_23: Ref [_r_23.MustReleaseUnbounded] :: Level(_r_23) <= _current_wait_level_157)
(assert (=
  ($Snap.second ($Snap.second $t@279@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@279@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@279@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@279@01))) $Snap.unit))
; [eval] _residue_157 <= _current_wait_level_157
(assert (<= _residue_157@274@01 _current_wait_level_157@277@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@279@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@279@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@279@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@279@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@279@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@279@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@279@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_0.A_v), A_arg(typeof(self_0), 0))
; [eval] typeof(self_0.A_v)
; [eval] A_arg(typeof(self_0), 0)
; [eval] typeof(self_0)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@279@01)))))) (A_arg<PyType> (typeof<PyType> self_0@275@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@279@01)))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@280@01 $Ref)
; [exec]
; var self_5: Ref
(declare-const self_5@281@01 $Ref)
; [exec]
; var v_6: Ref
(declare-const v_6@282@01 $Ref)
; [exec]
; var _cwl_157: Perm
(declare-const _cwl_157@283@01 $Perm)
; [exec]
; var _method_measures_157: Seq[Measure$]
(declare-const _method_measures_157@284@01 Seq<Measure$>)
; [exec]
; _method_measures_157 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self_0) == A(A_arg(typeof(self_0), 0))
(declare-const $t@285@01 $Snap)
(assert (= $t@285@01 $Snap.unit))
; [eval] typeof(self_0) == A(A_arg(typeof(self_0), 0))
; [eval] typeof(self_0)
; [eval] A(A_arg(typeof(self_0), 0))
; [eval] A_arg(typeof(self_0), 0)
; [eval] typeof(self_0)
(assert (=
  (typeof<PyType> self_0@275@01)
  (A<PyType> (A_arg<PyType> (typeof<PyType> self_0@275@01) 0))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err := null
; [exec]
; self_5 := self_0
; [exec]
; v_6 := v
; [eval] perm(_MaySet(self_5, 7757633)) > none
; [eval] perm(_MaySet(self_5, 7757633))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 43 | True | live]
; [else-branch: 43 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 43 | True]
; [exec]
; exhale acc(_MaySet(self_5, 7757633), write)
; [exec]
; inhale acc(self_5.A_v, write)
(declare-const $t@286@01 $Ref)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self_5.A_v := v_6
; [exec]
; label __end
; [eval] issubtype(typeof(self_0.A_v), A_arg(typeof(self_0), 0))
; [eval] typeof(self_0.A_v)
; [eval] A_arg(typeof(self_0), 0)
; [eval] typeof(self_0)
; [eval] (forperm _r_24: Ref [MustInvokeBounded(_r_24)] :: false)
; [eval] (forperm _r_24: Ref [MustInvokeUnbounded(_r_24)] :: false)
; [eval] (forperm _r_24: Ref [_r_24.MustReleaseBounded] :: false)
; [eval] (forperm _r_24: Ref [_r_24.MustReleaseUnbounded] :: false)
(pop) ; 3
; [eval] !(perm(_MaySet(self_5, 7757633)) > none)
; [eval] perm(_MaySet(self_5, 7757633)) > none
; [eval] perm(_MaySet(self_5, 7757633))
; [then-branch: 44 | False | dead]
; [else-branch: 44 | True | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 44 | True]
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- A_method ----------
(declare-const _cthread_158@287@01 $Ref)
(declare-const _caller_measures_158@288@01 Seq<Measure$>)
(declare-const _residue_158@289@01 $Perm)
(declare-const self_1@290@01 $Ref)
(declare-const t_0@291@01 $Ref)
(declare-const _current_wait_level_158@292@01 $Perm)
(declare-const _res@293@01 $Ref)
(declare-const _cthread_158@294@01 $Ref)
(declare-const _caller_measures_158@295@01 Seq<Measure$>)
(declare-const _residue_158@296@01 $Perm)
(declare-const self_1@297@01 $Ref)
(declare-const t_0@298@01 $Ref)
(declare-const _current_wait_level_158@299@01 $Perm)
(declare-const _res@300@01 $Ref)
(push) ; 1
(declare-const $t@301@01 $Snap)
(assert (= $t@301@01 ($Snap.combine ($Snap.first $t@301@01) ($Snap.second $t@301@01))))
(assert (= ($Snap.first $t@301@01) $Snap.unit))
; [eval] _cthread_158 != null
(assert (not (= _cthread_158@294@01 $Ref.null)))
(assert (=
  ($Snap.second $t@301@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@301@01))
    ($Snap.second ($Snap.second $t@301@01)))))
(assert (= ($Snap.first ($Snap.second $t@301@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_158), Thread_0())
; [eval] typeof(_cthread_158)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_158@294@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@301@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@301@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@301@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@301@01))) $Snap.unit))
; [eval] issubtype(typeof(self_1), A(A_arg(typeof(self_1), 0)))
; [eval] typeof(self_1)
; [eval] A(A_arg(typeof(self_1), 0))
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
(assert (issubtype<Bool> (typeof<PyType> self_1@297@01) (A<PyType> (A_arg<PyType> (typeof<PyType> self_1@297@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@301@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@301@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@301@01))))
  $Snap.unit))
; [eval] issubtype(typeof(t_0), typeof(t_0))
; [eval] typeof(t_0)
; [eval] typeof(t_0)
(assert (issubtype<Bool> (typeof<PyType> t_0@298@01) (typeof<PyType> t_0@298@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01)))))
  $Snap.unit))
; [eval] issubtype(A_arg(typeof(self_1), 0), int())
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
; [eval] int()
(assert (issubtype<Bool> (A_arg<PyType> (typeof<PyType> self_1@297@01) 0) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(t_0), object())
; [eval] typeof(t_0)
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> t_0@298@01) (as object<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01)))))))
  $Snap.unit))
; [eval] self_1 != null
(assert (not (= self_1@297@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01)))))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_1.A_v), A_arg(typeof(self_1), 0))
; [eval] typeof(self_1.A_v)
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01)))))))))) (A_arg<PyType> (typeof<PyType> self_1@297@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01)))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@302@01 $Snap)
(assert (= $t@302@01 ($Snap.combine ($Snap.first $t@302@01) ($Snap.second $t@302@01))))
(assert (= ($Snap.first $t@302@01) $Snap.unit))
; [eval] (forperm _r_26: Ref [_r_26.MustReleaseBounded] :: Level(_r_26) <= _current_wait_level_158)
(assert (=
  ($Snap.second $t@302@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@302@01))
    ($Snap.second ($Snap.second $t@302@01)))))
(assert (= ($Snap.first ($Snap.second $t@302@01)) $Snap.unit))
; [eval] (forperm _r_26: Ref [_r_26.MustReleaseUnbounded] :: Level(_r_26) <= _current_wait_level_158)
(assert (=
  ($Snap.second ($Snap.second $t@302@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@302@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@302@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@302@01))) $Snap.unit))
; [eval] _residue_158 <= _current_wait_level_158
(assert (<= _residue_158@296@01 _current_wait_level_158@299@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@302@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@302@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@302@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@302@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), tuple(Seq(typeof(t_0), A_arg(typeof(self_1), 0))))
; [eval] typeof(_res)
; [eval] tuple(Seq(typeof(t_0), A_arg(typeof(self_1), 0)))
; [eval] Seq(typeof(t_0), A_arg(typeof(self_1), 0))
; [eval] typeof(t_0)
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
(assert (=
  (Seq_length
    (Seq_append
      (Seq_singleton (typeof<PyType> t_0@298@01))
      (Seq_singleton (A_arg<PyType> (typeof<PyType> self_1@297@01) 0))))
  2))
(assert (issubtype<Bool> (typeof<PyType> _res@300@01) (tuple<PyType> (Seq_append
  (Seq_singleton (typeof<PyType> t_0@298@01))
  (Seq_singleton (A_arg<PyType> (typeof<PyType> self_1@297@01) 0))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@302@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@302@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@302@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@302@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@302@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@302@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@302@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_1.A_v), A_arg(typeof(self_1), 0))
; [eval] typeof(self_1.A_v)
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@302@01))))))) (A_arg<PyType> (typeof<PyType> self_1@297@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@302@01))))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@303@01 $Ref)
; [exec]
; var self_6: Ref
(declare-const self_6@304@01 $Ref)
; [exec]
; var t_10: Ref
(declare-const t_10@305@01 $Ref)
; [exec]
; var _cwl_158: Perm
(declare-const _cwl_158@306@01 $Perm)
; [exec]
; var _method_measures_158: Seq[Measure$]
(declare-const _method_measures_158@307@01 Seq<Measure$>)
; [exec]
; _method_measures_158 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self_1) == A(A_arg(typeof(self_1), 0))
(declare-const $t@308@01 $Snap)
(assert (= $t@308@01 $Snap.unit))
; [eval] typeof(self_1) == A(A_arg(typeof(self_1), 0))
; [eval] typeof(self_1)
; [eval] A(A_arg(typeof(self_1), 0))
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
(assert (=
  (typeof<PyType> self_1@297@01)
  (A<PyType> (A_arg<PyType> (typeof<PyType> self_1@297@01) 0))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _res := null
; [exec]
; _err := null
; [exec]
; self_6 := self_1
; [exec]
; t_10 := t_0
; [exec]
; _res := tuple___create2__(t_10, self_6.A_v, typeof(t_0), A_arg(typeof(self_1),
;   0), 3)
; [eval] tuple___create2__(t_10, self_6.A_v, typeof(t_0), A_arg(typeof(self_1), 0), 3)
; [eval] typeof(t_0)
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(arg0), t0)
; [eval] typeof(arg0)
; [eval] issubtype(typeof(arg1), t1)
; [eval] typeof(arg1)
(assert (tuple___create2__%precondition ($Snap.combine $Snap.unit $Snap.unit) t_0@298@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01))))))))) (typeof<PyType> t_0@298@01) (A_arg<PyType> (typeof<PyType> self_1@297@01) 0) 3))
(pop) ; 3
; Joined path conditions
(assert (tuple___create2__%precondition ($Snap.combine $Snap.unit $Snap.unit) t_0@298@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01))))))))) (typeof<PyType> t_0@298@01) (A_arg<PyType> (typeof<PyType> self_1@297@01) 0) 3))
(declare-const _res@309@01 $Ref)
(assert (=
  _res@309@01
  (tuple___create2__ ($Snap.combine $Snap.unit $Snap.unit) t_0@298@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@301@01))))))))) (typeof<PyType> t_0@298@01) (A_arg<PyType> (typeof<PyType> self_1@297@01) 0) 3)))
; [exec]
; label __end
; [eval] issubtype(typeof(_res), tuple(Seq(typeof(t_0), A_arg(typeof(self_1), 0))))
; [eval] typeof(_res)
; [eval] tuple(Seq(typeof(t_0), A_arg(typeof(self_1), 0)))
; [eval] Seq(typeof(t_0), A_arg(typeof(self_1), 0))
; [eval] typeof(t_0)
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
(assert (=
  (Seq_length
    (Seq_append
      (Seq_singleton (typeof<PyType> t_0@298@01))
      (Seq_singleton (A_arg<PyType> (typeof<PyType> self_1@297@01) 0))))
  2))
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> _res@309@01) (tuple<PyType> (Seq_append
  (Seq_singleton (typeof<PyType> t_0@298@01))
  (Seq_singleton (A_arg<PyType> (typeof<PyType> self_1@297@01) 0)))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res@309@01) (tuple<PyType> (Seq_append
  (Seq_singleton (typeof<PyType> t_0@298@01))
  (Seq_singleton (A_arg<PyType> (typeof<PyType> self_1@297@01) 0))))))
; [eval] issubtype(typeof(self_1.A_v), A_arg(typeof(self_1), 0))
; [eval] typeof(self_1.A_v)
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
; [eval] (forperm _r_27: Ref [MustInvokeBounded(_r_27)] :: false)
; [eval] (forperm _r_27: Ref [MustInvokeUnbounded(_r_27)] :: false)
; [eval] (forperm _r_27: Ref [_r_27.MustReleaseBounded] :: false)
; [eval] (forperm _r_27: Ref [_r_27.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- A_method_2 ----------
(declare-const _cthread_159@310@01 $Ref)
(declare-const _caller_measures_159@311@01 Seq<Measure$>)
(declare-const _residue_159@312@01 $Perm)
(declare-const self_2@313@01 $Ref)
(declare-const t_1@314@01 $Ref)
(declare-const _current_wait_level_159@315@01 $Perm)
(declare-const _res@316@01 $Ref)
(declare-const _cthread_159@317@01 $Ref)
(declare-const _caller_measures_159@318@01 Seq<Measure$>)
(declare-const _residue_159@319@01 $Perm)
(declare-const self_2@320@01 $Ref)
(declare-const t_1@321@01 $Ref)
(declare-const _current_wait_level_159@322@01 $Perm)
(declare-const _res@323@01 $Ref)
(push) ; 1
(declare-const $t@324@01 $Snap)
(assert (= $t@324@01 ($Snap.combine ($Snap.first $t@324@01) ($Snap.second $t@324@01))))
(assert (= ($Snap.first $t@324@01) $Snap.unit))
; [eval] _cthread_159 != null
(assert (not (= _cthread_159@317@01 $Ref.null)))
(assert (=
  ($Snap.second $t@324@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@324@01))
    ($Snap.second ($Snap.second $t@324@01)))))
(assert (= ($Snap.first ($Snap.second $t@324@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_159), Thread_0())
; [eval] typeof(_cthread_159)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_159@317@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@324@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@324@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@324@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@324@01))) $Snap.unit))
; [eval] issubtype(typeof(self_2), A(A_arg(typeof(self_2), 0)))
; [eval] typeof(self_2)
; [eval] A(A_arg(typeof(self_2), 0))
; [eval] A_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
(assert (issubtype<Bool> (typeof<PyType> self_2@320@01) (A<PyType> (A_arg<PyType> (typeof<PyType> self_2@320@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@324@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@324@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@324@01))))
  $Snap.unit))
; [eval] issubtype(typeof(t_1), typeof(t_1))
; [eval] typeof(t_1)
; [eval] typeof(t_1)
(assert (issubtype<Bool> (typeof<PyType> t_1@321@01) (typeof<PyType> t_1@321@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01)))))
  $Snap.unit))
; [eval] issubtype(A_arg(typeof(self_2), 0), int())
; [eval] A_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
; [eval] int()
(assert (issubtype<Bool> (A_arg<PyType> (typeof<PyType> self_2@320@01) 0) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(t_1), object())
; [eval] typeof(t_1)
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> t_1@321@01) (as object<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01)))))))
  $Snap.unit))
; [eval] self_2 != null
(assert (not (= self_2@320@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01)))))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2.A_v), A_arg(typeof(self_2), 0))
; [eval] typeof(self_2.A_v)
; [eval] A_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01)))))))))) (A_arg<PyType> (typeof<PyType> self_2@320@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01)))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@325@01 $Snap)
(assert (= $t@325@01 ($Snap.combine ($Snap.first $t@325@01) ($Snap.second $t@325@01))))
(assert (= ($Snap.first $t@325@01) $Snap.unit))
; [eval] (forperm _r_29: Ref [_r_29.MustReleaseBounded] :: Level(_r_29) <= _current_wait_level_159)
(assert (=
  ($Snap.second $t@325@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@325@01))
    ($Snap.second ($Snap.second $t@325@01)))))
(assert (= ($Snap.first ($Snap.second $t@325@01)) $Snap.unit))
; [eval] (forperm _r_29: Ref [_r_29.MustReleaseUnbounded] :: Level(_r_29) <= _current_wait_level_159)
(assert (=
  ($Snap.second ($Snap.second $t@325@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@325@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@325@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@325@01))) $Snap.unit))
; [eval] _residue_159 <= _current_wait_level_159
(assert (<= _residue_159@319@01 _current_wait_level_159@322@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@325@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@325@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@325@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@325@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), tuple(Seq(typeof(t_1), A_arg(typeof(self_2), 0))))
; [eval] typeof(_res)
; [eval] tuple(Seq(typeof(t_1), A_arg(typeof(self_2), 0)))
; [eval] Seq(typeof(t_1), A_arg(typeof(self_2), 0))
; [eval] typeof(t_1)
; [eval] A_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
(assert (=
  (Seq_length
    (Seq_append
      (Seq_singleton (typeof<PyType> t_1@321@01))
      (Seq_singleton (A_arg<PyType> (typeof<PyType> self_2@320@01) 0))))
  2))
(assert (issubtype<Bool> (typeof<PyType> _res@323@01) (tuple<PyType> (Seq_append
  (Seq_singleton (typeof<PyType> t_1@321@01))
  (Seq_singleton (A_arg<PyType> (typeof<PyType> self_2@320@01) 0))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@325@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@325@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@325@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@325@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@325@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@325@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@325@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2.A_v), A_arg(typeof(self_2), 0))
; [eval] typeof(self_2.A_v)
; [eval] A_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@325@01))))))) (A_arg<PyType> (typeof<PyType> self_2@320@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@325@01))))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@326@01 $Ref)
; [exec]
; var self_7: Ref
(declare-const self_7@327@01 $Ref)
; [exec]
; var t_11: Ref
(declare-const t_11@328@01 $Ref)
; [exec]
; var _cwl_159: Perm
(declare-const _cwl_159@329@01 $Perm)
; [exec]
; var _method_measures_159: Seq[Measure$]
(declare-const _method_measures_159@330@01 Seq<Measure$>)
; [exec]
; _method_measures_159 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self_2) == A(A_arg(typeof(self_2), 0))
(declare-const $t@331@01 $Snap)
(assert (= $t@331@01 $Snap.unit))
; [eval] typeof(self_2) == A(A_arg(typeof(self_2), 0))
; [eval] typeof(self_2)
; [eval] A(A_arg(typeof(self_2), 0))
; [eval] A_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
(assert (=
  (typeof<PyType> self_2@320@01)
  (A<PyType> (A_arg<PyType> (typeof<PyType> self_2@320@01) 0))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _res := null
; [exec]
; _err := null
; [exec]
; self_7 := self_2
; [exec]
; t_11 := t_1
; [exec]
; _res := tuple___create2__(t_11, self_7.A_v, typeof(t_1), A_arg(typeof(self_2),
;   0), 4)
; [eval] tuple___create2__(t_11, self_7.A_v, typeof(t_1), A_arg(typeof(self_2), 0), 4)
; [eval] typeof(t_1)
; [eval] A_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(arg0), t0)
; [eval] typeof(arg0)
; [eval] issubtype(typeof(arg1), t1)
; [eval] typeof(arg1)
(assert (tuple___create2__%precondition ($Snap.combine $Snap.unit $Snap.unit) t_1@321@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01))))))))) (typeof<PyType> t_1@321@01) (A_arg<PyType> (typeof<PyType> self_2@320@01) 0) 4))
(pop) ; 3
; Joined path conditions
(assert (tuple___create2__%precondition ($Snap.combine $Snap.unit $Snap.unit) t_1@321@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01))))))))) (typeof<PyType> t_1@321@01) (A_arg<PyType> (typeof<PyType> self_2@320@01) 0) 4))
(declare-const _res@332@01 $Ref)
(assert (=
  _res@332@01
  (tuple___create2__ ($Snap.combine $Snap.unit $Snap.unit) t_1@321@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@324@01))))))))) (typeof<PyType> t_1@321@01) (A_arg<PyType> (typeof<PyType> self_2@320@01) 0) 4)))
; [exec]
; label __end
; [eval] issubtype(typeof(_res), tuple(Seq(typeof(t_1), A_arg(typeof(self_2), 0))))
; [eval] typeof(_res)
; [eval] tuple(Seq(typeof(t_1), A_arg(typeof(self_2), 0)))
; [eval] Seq(typeof(t_1), A_arg(typeof(self_2), 0))
; [eval] typeof(t_1)
; [eval] A_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
(assert (=
  (Seq_length
    (Seq_append
      (Seq_singleton (typeof<PyType> t_1@321@01))
      (Seq_singleton (A_arg<PyType> (typeof<PyType> self_2@320@01) 0))))
  2))
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> _res@332@01) (tuple<PyType> (Seq_append
  (Seq_singleton (typeof<PyType> t_1@321@01))
  (Seq_singleton (A_arg<PyType> (typeof<PyType> self_2@320@01) 0)))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res@332@01) (tuple<PyType> (Seq_append
  (Seq_singleton (typeof<PyType> t_1@321@01))
  (Seq_singleton (A_arg<PyType> (typeof<PyType> self_2@320@01) 0))))))
; [eval] issubtype(typeof(self_2.A_v), A_arg(typeof(self_2), 0))
; [eval] typeof(self_2.A_v)
; [eval] A_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
; [eval] (forperm _r_30: Ref [MustInvokeBounded(_r_30)] :: false)
; [eval] (forperm _r_30: Ref [MustInvokeUnbounded(_r_30)] :: false)
; [eval] (forperm _r_30: Ref [_r_30.MustReleaseBounded] :: false)
; [eval] (forperm _r_30: Ref [_r_30.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- B_method_2 ----------
(declare-const _cthread_160@333@01 $Ref)
(declare-const _caller_measures_160@334@01 Seq<Measure$>)
(declare-const _residue_160@335@01 $Perm)
(declare-const self_3@336@01 $Ref)
(declare-const t_2@337@01 $Ref)
(declare-const _current_wait_level_160@338@01 $Perm)
(declare-const _res@339@01 $Ref)
(declare-const _cthread_160@340@01 $Ref)
(declare-const _caller_measures_160@341@01 Seq<Measure$>)
(declare-const _residue_160@342@01 $Perm)
(declare-const self_3@343@01 $Ref)
(declare-const t_2@344@01 $Ref)
(declare-const _current_wait_level_160@345@01 $Perm)
(declare-const _res@346@01 $Ref)
(push) ; 1
(declare-const $t@347@01 $Snap)
(assert (= $t@347@01 ($Snap.combine ($Snap.first $t@347@01) ($Snap.second $t@347@01))))
(assert (= ($Snap.first $t@347@01) $Snap.unit))
; [eval] _cthread_160 != null
(assert (not (= _cthread_160@340@01 $Ref.null)))
(assert (=
  ($Snap.second $t@347@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@347@01))
    ($Snap.second ($Snap.second $t@347@01)))))
(assert (= ($Snap.first ($Snap.second $t@347@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_160), Thread_0())
; [eval] typeof(_cthread_160)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_160@340@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@347@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@347@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@347@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@347@01))) $Snap.unit))
; [eval] issubtype(typeof(self_3), B(B_arg(typeof(self_3), 0)))
; [eval] typeof(self_3)
; [eval] B(B_arg(typeof(self_3), 0))
; [eval] B_arg(typeof(self_3), 0)
; [eval] typeof(self_3)
(assert (issubtype<Bool> (typeof<PyType> self_3@343@01) (B<PyType> (B_arg<PyType> (typeof<PyType> self_3@343@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@347@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@347@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@347@01))))
  $Snap.unit))
; [eval] issubtype(typeof(t_2), typeof(t_2))
; [eval] typeof(t_2)
; [eval] typeof(t_2)
(assert (issubtype<Bool> (typeof<PyType> t_2@344@01) (typeof<PyType> t_2@344@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01)))))
  $Snap.unit))
; [eval] issubtype(B_arg(typeof(self_3), 0), int())
; [eval] B_arg(typeof(self_3), 0)
; [eval] typeof(self_3)
; [eval] int()
(assert (issubtype<Bool> (B_arg<PyType> (typeof<PyType> self_3@343@01) 0) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(t_2), object())
; [eval] typeof(t_2)
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> t_2@344@01) (as object<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01)))))))
  $Snap.unit))
; [eval] self_3 != null
(assert (not (= self_3@343@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01)))))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_3.A_v), B_arg(typeof(self_3), 0))
; [eval] typeof(self_3.A_v)
; [eval] B_arg(typeof(self_3), 0)
; [eval] typeof(self_3)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01)))))))))) (B_arg<PyType> (typeof<PyType> self_3@343@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01)))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@348@01 $Snap)
(assert (= $t@348@01 ($Snap.combine ($Snap.first $t@348@01) ($Snap.second $t@348@01))))
(assert (= ($Snap.first $t@348@01) $Snap.unit))
; [eval] (forperm _r_32: Ref [_r_32.MustReleaseBounded] :: Level(_r_32) <= _current_wait_level_160)
(assert (=
  ($Snap.second $t@348@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@348@01))
    ($Snap.second ($Snap.second $t@348@01)))))
(assert (= ($Snap.first ($Snap.second $t@348@01)) $Snap.unit))
; [eval] (forperm _r_32: Ref [_r_32.MustReleaseUnbounded] :: Level(_r_32) <= _current_wait_level_160)
(assert (=
  ($Snap.second ($Snap.second $t@348@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@348@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@348@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@348@01))) $Snap.unit))
; [eval] _residue_160 <= _current_wait_level_160
(assert (<= _residue_160@342@01 _current_wait_level_160@345@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@348@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@348@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@348@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@348@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), tuple(Seq(typeof(t_2), B_arg(typeof(self_3), 0))))
; [eval] typeof(_res)
; [eval] tuple(Seq(typeof(t_2), B_arg(typeof(self_3), 0)))
; [eval] Seq(typeof(t_2), B_arg(typeof(self_3), 0))
; [eval] typeof(t_2)
; [eval] B_arg(typeof(self_3), 0)
; [eval] typeof(self_3)
(assert (=
  (Seq_length
    (Seq_append
      (Seq_singleton (typeof<PyType> t_2@344@01))
      (Seq_singleton (B_arg<PyType> (typeof<PyType> self_3@343@01) 0))))
  2))
(assert (issubtype<Bool> (typeof<PyType> _res@346@01) (tuple<PyType> (Seq_append
  (Seq_singleton (typeof<PyType> t_2@344@01))
  (Seq_singleton (B_arg<PyType> (typeof<PyType> self_3@343@01) 0))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@348@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@348@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@348@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@348@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@348@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@348@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@348@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_3.A_v), B_arg(typeof(self_3), 0))
; [eval] typeof(self_3.A_v)
; [eval] B_arg(typeof(self_3), 0)
; [eval] typeof(self_3)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@348@01))))))) (B_arg<PyType> (typeof<PyType> self_3@343@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@348@01))))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@349@01 $Ref)
; [exec]
; var self_8: Ref
(declare-const self_8@350@01 $Ref)
; [exec]
; var t_12: Ref
(declare-const t_12@351@01 $Ref)
; [exec]
; var _cwl_160: Perm
(declare-const _cwl_160@352@01 $Perm)
; [exec]
; var _method_measures_160: Seq[Measure$]
(declare-const _method_measures_160@353@01 Seq<Measure$>)
; [exec]
; _method_measures_160 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self_3) == B(B_arg(typeof(self_3), 0))
(declare-const $t@354@01 $Snap)
(assert (= $t@354@01 $Snap.unit))
; [eval] typeof(self_3) == B(B_arg(typeof(self_3), 0))
; [eval] typeof(self_3)
; [eval] B(B_arg(typeof(self_3), 0))
; [eval] B_arg(typeof(self_3), 0)
; [eval] typeof(self_3)
(assert (=
  (typeof<PyType> self_3@343@01)
  (B<PyType> (B_arg<PyType> (typeof<PyType> self_3@343@01) 0))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _res := null
; [exec]
; _err := null
; [exec]
; self_8 := self_3
; [exec]
; t_12 := t_2
; [exec]
; _res := tuple___create2__(t_12, self_8.A_v, typeof(t_2), B_arg(typeof(self_3),
;   0), 5)
; [eval] tuple___create2__(t_12, self_8.A_v, typeof(t_2), B_arg(typeof(self_3), 0), 5)
; [eval] typeof(t_2)
; [eval] B_arg(typeof(self_3), 0)
; [eval] typeof(self_3)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(arg0), t0)
; [eval] typeof(arg0)
; [eval] issubtype(typeof(arg1), t1)
; [eval] typeof(arg1)
(assert (tuple___create2__%precondition ($Snap.combine $Snap.unit $Snap.unit) t_2@344@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01))))))))) (typeof<PyType> t_2@344@01) (B_arg<PyType> (typeof<PyType> self_3@343@01) 0) 5))
(pop) ; 3
; Joined path conditions
(assert (tuple___create2__%precondition ($Snap.combine $Snap.unit $Snap.unit) t_2@344@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01))))))))) (typeof<PyType> t_2@344@01) (B_arg<PyType> (typeof<PyType> self_3@343@01) 0) 5))
(declare-const _res@355@01 $Ref)
(assert (=
  _res@355@01
  (tuple___create2__ ($Snap.combine $Snap.unit $Snap.unit) t_2@344@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@347@01))))))))) (typeof<PyType> t_2@344@01) (B_arg<PyType> (typeof<PyType> self_3@343@01) 0) 5)))
; [exec]
; label __end
; [eval] issubtype(typeof(_res), tuple(Seq(typeof(t_2), B_arg(typeof(self_3), 0))))
; [eval] typeof(_res)
; [eval] tuple(Seq(typeof(t_2), B_arg(typeof(self_3), 0)))
; [eval] Seq(typeof(t_2), B_arg(typeof(self_3), 0))
; [eval] typeof(t_2)
; [eval] B_arg(typeof(self_3), 0)
; [eval] typeof(self_3)
(assert (=
  (Seq_length
    (Seq_append
      (Seq_singleton (typeof<PyType> t_2@344@01))
      (Seq_singleton (B_arg<PyType> (typeof<PyType> self_3@343@01) 0))))
  2))
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> _res@355@01) (tuple<PyType> (Seq_append
  (Seq_singleton (typeof<PyType> t_2@344@01))
  (Seq_singleton (B_arg<PyType> (typeof<PyType> self_3@343@01) 0)))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res@355@01) (tuple<PyType> (Seq_append
  (Seq_singleton (typeof<PyType> t_2@344@01))
  (Seq_singleton (B_arg<PyType> (typeof<PyType> self_3@343@01) 0))))))
; [eval] issubtype(typeof(self_3.A_v), B_arg(typeof(self_3), 0))
; [eval] typeof(self_3.A_v)
; [eval] B_arg(typeof(self_3), 0)
; [eval] typeof(self_3)
; [eval] (forperm _r_33: Ref [MustInvokeBounded(_r_33)] :: false)
; [eval] (forperm _r_33: Ref [MustInvokeUnbounded(_r_33)] :: false)
; [eval] (forperm _r_33: Ref [_r_33.MustReleaseBounded] :: false)
; [eval] (forperm _r_33: Ref [_r_33.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- B_method_2_override_check ----------
(declare-const _cthread_159@356@01 $Ref)
(declare-const _caller_measures_159@357@01 Seq<Measure$>)
(declare-const _residue_159@358@01 $Perm)
(declare-const self_2@359@01 $Ref)
(declare-const t_1@360@01 $Ref)
(declare-const _current_wait_level_159@361@01 $Perm)
(declare-const _res@362@01 $Ref)
(declare-const _cthread_159@363@01 $Ref)
(declare-const _caller_measures_159@364@01 Seq<Measure$>)
(declare-const _residue_159@365@01 $Perm)
(declare-const self_2@366@01 $Ref)
(declare-const t_1@367@01 $Ref)
(declare-const _current_wait_level_159@368@01 $Perm)
(declare-const _res@369@01 $Ref)
(push) ; 1
(declare-const $t@370@01 $Snap)
(assert (= $t@370@01 ($Snap.combine ($Snap.first $t@370@01) ($Snap.second $t@370@01))))
(assert (= ($Snap.first $t@370@01) $Snap.unit))
; [eval] _cthread_159 != null
(assert (not (= _cthread_159@363@01 $Ref.null)))
(assert (=
  ($Snap.second $t@370@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@370@01))
    ($Snap.second ($Snap.second $t@370@01)))))
(assert (= ($Snap.first ($Snap.second $t@370@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_159), Thread_0())
; [eval] typeof(_cthread_159)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_159@363@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@370@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@370@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@370@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@370@01))) $Snap.unit))
; [eval] self_2 != null
(assert (not (= self_2@366@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@370@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@370@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@370@01))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2), A(A_arg(typeof(self_2), 0)))
; [eval] typeof(self_2)
; [eval] A(A_arg(typeof(self_2), 0))
; [eval] A_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
(assert (issubtype<Bool> (typeof<PyType> self_2@366@01) (A<PyType> (A_arg<PyType> (typeof<PyType> self_2@366@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(t_1), typeof(t_1))
; [eval] typeof(t_1)
; [eval] typeof(t_1)
(assert (issubtype<Bool> (typeof<PyType> t_1@367@01) (typeof<PyType> t_1@367@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01))))))
  $Snap.unit))
; [eval] issubtype(A_arg(typeof(self_2), 0), int())
; [eval] A_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
; [eval] int()
(assert (issubtype<Bool> (A_arg<PyType> (typeof<PyType> self_2@366@01) 0) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01)))))))
  $Snap.unit))
; [eval] issubtype(typeof(t_1), object())
; [eval] typeof(t_1)
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> t_1@367@01) (as object<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01))))))))
  $Snap.unit))
; [eval] self_2 != null
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01))))))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2.A_v), A_arg(typeof(self_2), 0))
; [eval] typeof(self_2.A_v)
; [eval] A_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01))))))))))) (A_arg<PyType> (typeof<PyType> self_2@366@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01))))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@371@01 $Snap)
(assert (= $t@371@01 ($Snap.combine ($Snap.first $t@371@01) ($Snap.second $t@371@01))))
(assert (= ($Snap.first $t@371@01) $Snap.unit))
; [eval] (forperm _r_35: Ref [_r_35.MustReleaseBounded] :: Level(_r_35) <= _current_wait_level_159)
(assert (=
  ($Snap.second $t@371@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@371@01))
    ($Snap.second ($Snap.second $t@371@01)))))
(assert (= ($Snap.first ($Snap.second $t@371@01)) $Snap.unit))
; [eval] (forperm _r_35: Ref [_r_35.MustReleaseUnbounded] :: Level(_r_35) <= _current_wait_level_159)
(assert (=
  ($Snap.second ($Snap.second $t@371@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@371@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@371@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@371@01))) $Snap.unit))
; [eval] _residue_159 <= _current_wait_level_159
(assert (<= _residue_159@365@01 _current_wait_level_159@368@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@371@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@371@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@371@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@371@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), tuple(Seq(typeof(t_1), A_arg(typeof(self_2), 0))))
; [eval] typeof(_res)
; [eval] tuple(Seq(typeof(t_1), A_arg(typeof(self_2), 0)))
; [eval] Seq(typeof(t_1), A_arg(typeof(self_2), 0))
; [eval] typeof(t_1)
; [eval] A_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
(assert (=
  (Seq_length
    (Seq_append
      (Seq_singleton (typeof<PyType> t_1@367@01))
      (Seq_singleton (A_arg<PyType> (typeof<PyType> self_2@366@01) 0))))
  2))
(assert (issubtype<Bool> (typeof<PyType> _res@369@01) (tuple<PyType> (Seq_append
  (Seq_singleton (typeof<PyType> t_1@367@01))
  (Seq_singleton (A_arg<PyType> (typeof<PyType> self_2@366@01) 0))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@371@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@371@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@371@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@371@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@371@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@371@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@371@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2.A_v), A_arg(typeof(self_2), 0))
; [eval] typeof(self_2.A_v)
; [eval] A_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@371@01))))))) (A_arg<PyType> (typeof<PyType> self_2@366@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@371@01))))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _cwl_159: Perm
(declare-const _cwl_159@372@01 $Perm)
; [exec]
; var _method_measures_159: Seq[Measure$]
(declare-const _method_measures_159@373@01 Seq<Measure$>)
; [exec]
; _method_measures_159 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale issubtype(typeof(self_2), B(B_arg(typeof(self_2), 0)))
(declare-const $t@374@01 $Snap)
(assert (= $t@374@01 $Snap.unit))
; [eval] issubtype(typeof(self_2), B(B_arg(typeof(self_2), 0)))
; [eval] typeof(self_2)
; [eval] B(B_arg(typeof(self_2), 0))
; [eval] B_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
(assert (issubtype<Bool> (typeof<PyType> self_2@366@01) (B<PyType> (B_arg<PyType> (typeof<PyType> self_2@366@01) 0))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_159, _res := B_method_2(_cthread_159, _method_measures_159, _residue_159,
;   self_2, t_1)
; [eval] _cthread_160 != null
; [eval] issubtype(typeof(_cthread_160), Thread_0())
; [eval] typeof(_cthread_160)
; [eval] Thread_0()
; [eval] issubtype(typeof(self_3), B(B_arg(typeof(self_3), 0)))
; [eval] typeof(self_3)
; [eval] B(B_arg(typeof(self_3), 0))
; [eval] B_arg(typeof(self_3), 0)
; [eval] typeof(self_3)
; [eval] issubtype(typeof(t_2), typeof(t_2))
; [eval] typeof(t_2)
; [eval] typeof(t_2)
; [eval] issubtype(B_arg(typeof(self_3), 0), int())
; [eval] B_arg(typeof(self_3), 0)
; [eval] typeof(self_3)
; [eval] int()
(set-option :timeout 0)
(push) ; 3
(assert (not (issubtype<Bool> (B_arg<PyType> (typeof<PyType> self_2@366@01) 0) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (B_arg<PyType> (typeof<PyType> self_2@366@01) 0) (as int<PyType>  PyType)))
; [eval] issubtype(typeof(t_2), object())
; [eval] typeof(t_2)
; [eval] object()
; [eval] self_3 != null
; [eval] issubtype(typeof(self_3.A_v), B_arg(typeof(self_3), 0))
; [eval] typeof(self_3.A_v)
; [eval] B_arg(typeof(self_3), 0)
; [eval] typeof(self_3)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01))))))))))) (B_arg<PyType> (typeof<PyType> self_2@366@01) 0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01))))))))))) (B_arg<PyType> (typeof<PyType> self_2@366@01) 0)))
; [eval] perm(MustTerminate(_cthread_160)) == none
; [eval] perm(MustTerminate(_cthread_160))
; [eval] (forperm _r_34: Ref [MustInvokeBounded(_r_34)] :: false)
; [eval] (forperm _r_34: Ref [MustInvokeUnbounded(_r_34)] :: false)
; [eval] (forperm _r_34: Ref [_r_34.MustReleaseBounded] :: false)
; [eval] (forperm _r_34: Ref [_r_34.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_160@375@01 $Perm)
(declare-const _res@376@01 $Ref)
(declare-const $t@377@01 $Snap)
(assert (= $t@377@01 ($Snap.combine ($Snap.first $t@377@01) ($Snap.second $t@377@01))))
(assert (= ($Snap.first $t@377@01) $Snap.unit))
; [eval] (forperm _r_32: Ref [_r_32.MustReleaseBounded] :: Level(_r_32) <= _current_wait_level_160)
(assert (=
  ($Snap.second $t@377@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@377@01))
    ($Snap.second ($Snap.second $t@377@01)))))
(assert (= ($Snap.first ($Snap.second $t@377@01)) $Snap.unit))
; [eval] (forperm _r_32: Ref [_r_32.MustReleaseUnbounded] :: Level(_r_32) <= _current_wait_level_160)
(assert (=
  ($Snap.second ($Snap.second $t@377@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@377@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@377@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@377@01))) $Snap.unit))
; [eval] _residue_160 <= _current_wait_level_160
(assert (<= _residue_159@365@01 _current_wait_level_160@375@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@377@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@377@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@377@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@377@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), tuple(Seq(typeof(t_2), B_arg(typeof(self_3), 0))))
; [eval] typeof(_res)
; [eval] tuple(Seq(typeof(t_2), B_arg(typeof(self_3), 0)))
; [eval] Seq(typeof(t_2), B_arg(typeof(self_3), 0))
; [eval] typeof(t_2)
; [eval] B_arg(typeof(self_3), 0)
; [eval] typeof(self_3)
(assert (=
  (Seq_length
    (Seq_append
      (Seq_singleton (typeof<PyType> t_1@367@01))
      (Seq_singleton (B_arg<PyType> (typeof<PyType> self_2@366@01) 0))))
  2))
(assert (issubtype<Bool> (typeof<PyType> _res@376@01) (tuple<PyType> (Seq_append
  (Seq_singleton (typeof<PyType> t_1@367@01))
  (Seq_singleton (B_arg<PyType> (typeof<PyType> self_2@366@01) 0))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@377@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@377@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@377@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@377@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@377@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@377@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@377@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_3.A_v), B_arg(typeof(self_3), 0))
; [eval] typeof(self_3.A_v)
; [eval] B_arg(typeof(self_3), 0)
; [eval] typeof(self_3)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@377@01))))))) (B_arg<PyType> (typeof<PyType> self_2@366@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@377@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] issubtype(typeof(_res), tuple(Seq(typeof(t_1), A_arg(typeof(self_2), 0))))
; [eval] typeof(_res)
; [eval] tuple(Seq(typeof(t_1), A_arg(typeof(self_2), 0)))
; [eval] Seq(typeof(t_1), A_arg(typeof(self_2), 0))
; [eval] typeof(t_1)
; [eval] A_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
(assert (=
  (Seq_length
    (Seq_append
      (Seq_singleton (typeof<PyType> t_1@367@01))
      (Seq_singleton (A_arg<PyType> (typeof<PyType> self_2@366@01) 0))))
  2))
(set-option :timeout 0)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> _res@376@01) (tuple<PyType> (Seq_append
  (Seq_singleton (typeof<PyType> t_1@367@01))
  (Seq_singleton (A_arg<PyType> (typeof<PyType> self_2@366@01) 0)))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res@376@01) (tuple<PyType> (Seq_append
  (Seq_singleton (typeof<PyType> t_1@367@01))
  (Seq_singleton (A_arg<PyType> (typeof<PyType> self_2@366@01) 0))))))
; [eval] issubtype(typeof(self_2.A_v), A_arg(typeof(self_2), 0))
; [eval] typeof(self_2.A_v)
; [eval] A_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@377@01))))))) (A_arg<PyType> (typeof<PyType> self_2@366@01) 0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@377@01))))))) (A_arg<PyType> (typeof<PyType> self_2@366@01) 0)))
; [eval] (forperm _r_36: Ref [MustInvokeBounded(_r_36)] :: false)
; [eval] (forperm _r_36: Ref [MustInvokeUnbounded(_r_36)] :: false)
; [eval] (forperm _r_36: Ref [_r_36.MustReleaseBounded] :: false)
; [eval] (forperm _r_36: Ref [_r_36.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- B_method_inherit_check ----------
(declare-const _cthread_158@378@01 $Ref)
(declare-const _caller_measures_158@379@01 Seq<Measure$>)
(declare-const _residue_158@380@01 $Perm)
(declare-const self_1@381@01 $Ref)
(declare-const t_0@382@01 $Ref)
(declare-const _current_wait_level_158@383@01 $Perm)
(declare-const _res@384@01 $Ref)
(declare-const _cthread_158@385@01 $Ref)
(declare-const _caller_measures_158@386@01 Seq<Measure$>)
(declare-const _residue_158@387@01 $Perm)
(declare-const self_1@388@01 $Ref)
(declare-const t_0@389@01 $Ref)
(declare-const _current_wait_level_158@390@01 $Perm)
(declare-const _res@391@01 $Ref)
(push) ; 1
(declare-const $t@392@01 $Snap)
(assert (= $t@392@01 ($Snap.combine ($Snap.first $t@392@01) ($Snap.second $t@392@01))))
(assert (= ($Snap.first $t@392@01) $Snap.unit))
; [eval] _cthread_158 != null
(assert (not (= _cthread_158@385@01 $Ref.null)))
(assert (=
  ($Snap.second $t@392@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@392@01))
    ($Snap.second ($Snap.second $t@392@01)))))
(assert (= ($Snap.first ($Snap.second $t@392@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_158), Thread_0())
; [eval] typeof(_cthread_158)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_158@385@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@392@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@392@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@392@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@392@01))) $Snap.unit))
; [eval] self_1 != null
(assert (not (= self_1@388@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@392@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@392@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@392@01))))
  $Snap.unit))
; [eval] typeof(self_1) == B(B_arg(typeof(self_1), 0))
; [eval] typeof(self_1)
; [eval] B(B_arg(typeof(self_1), 0))
; [eval] B_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
(assert (=
  (typeof<PyType> self_1@388@01)
  (B<PyType> (B_arg<PyType> (typeof<PyType> self_1@388@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_1), A(A_arg(typeof(self_1), 0)))
; [eval] typeof(self_1)
; [eval] A(A_arg(typeof(self_1), 0))
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
(assert (issubtype<Bool> (typeof<PyType> self_1@388@01) (A<PyType> (A_arg<PyType> (typeof<PyType> self_1@388@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(t_0), typeof(t_0))
; [eval] typeof(t_0)
; [eval] typeof(t_0)
(assert (issubtype<Bool> (typeof<PyType> t_0@389@01) (typeof<PyType> t_0@389@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01)))))))
  $Snap.unit))
; [eval] issubtype(A_arg(typeof(self_1), 0), int())
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
; [eval] int()
(assert (issubtype<Bool> (A_arg<PyType> (typeof<PyType> self_1@388@01) 0) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01))))))))
  $Snap.unit))
; [eval] issubtype(typeof(t_0), object())
; [eval] typeof(t_0)
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> t_0@389@01) (as object<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01)))))))))
  $Snap.unit))
; [eval] self_1 != null
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01)))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01)))))))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_1.A_v), A_arg(typeof(self_1), 0))
; [eval] typeof(self_1.A_v)
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01)))))))))))) (A_arg<PyType> (typeof<PyType> self_1@388@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01)))))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@393@01 $Snap)
(assert (= $t@393@01 ($Snap.combine ($Snap.first $t@393@01) ($Snap.second $t@393@01))))
(assert (= ($Snap.first $t@393@01) $Snap.unit))
; [eval] (forperm _r_38: Ref [_r_38.MustReleaseBounded] :: Level(_r_38) <= _current_wait_level_158)
(assert (=
  ($Snap.second $t@393@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@393@01))
    ($Snap.second ($Snap.second $t@393@01)))))
(assert (= ($Snap.first ($Snap.second $t@393@01)) $Snap.unit))
; [eval] (forperm _r_38: Ref [_r_38.MustReleaseUnbounded] :: Level(_r_38) <= _current_wait_level_158)
(assert (=
  ($Snap.second ($Snap.second $t@393@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@393@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@393@01))) $Snap.unit))
; [eval] _residue_158 <= _current_wait_level_158
(assert (<= _residue_158@387@01 _current_wait_level_158@390@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@393@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@393@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@393@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), tuple(Seq(typeof(t_0), A_arg(typeof(self_1), 0))))
; [eval] typeof(_res)
; [eval] tuple(Seq(typeof(t_0), A_arg(typeof(self_1), 0)))
; [eval] Seq(typeof(t_0), A_arg(typeof(self_1), 0))
; [eval] typeof(t_0)
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
(assert (=
  (Seq_length
    (Seq_append
      (Seq_singleton (typeof<PyType> t_0@389@01))
      (Seq_singleton (A_arg<PyType> (typeof<PyType> self_1@388@01) 0))))
  2))
(assert (issubtype<Bool> (typeof<PyType> _res@391@01) (tuple<PyType> (Seq_append
  (Seq_singleton (typeof<PyType> t_0@389@01))
  (Seq_singleton (A_arg<PyType> (typeof<PyType> self_1@388@01) 0))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_1.A_v), A_arg(typeof(self_1), 0))
; [eval] typeof(self_1.A_v)
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))) (A_arg<PyType> (typeof<PyType> self_1@388@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@393@01))))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var self_6_0: Ref
(declare-const self_6_0@394@01 $Ref)
; [exec]
; var t_10_0: Ref
(declare-const t_10_0@395@01 $Ref)
; [exec]
; var _cwl_158: Perm
(declare-const _cwl_158@396@01 $Perm)
; [exec]
; var _method_measures_158: Seq[Measure$]
(declare-const _method_measures_158@397@01 Seq<Measure$>)
; [exec]
; _method_measures_158 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _res := tuple___create2__(t_0, self_1.A_v, typeof(t_0), A_arg(typeof(self_1),
;   0), 6)
; [eval] tuple___create2__(t_0, self_1.A_v, typeof(t_0), A_arg(typeof(self_1), 0), 6)
; [eval] typeof(t_0)
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
(push) ; 3
; [eval] issubtype(typeof(arg0), t0)
; [eval] typeof(arg0)
; [eval] issubtype(typeof(arg1), t1)
; [eval] typeof(arg1)
(assert (tuple___create2__%precondition ($Snap.combine $Snap.unit $Snap.unit) t_0@389@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01))))))))))) (typeof<PyType> t_0@389@01) (A_arg<PyType> (typeof<PyType> self_1@388@01) 0) 6))
(pop) ; 3
; Joined path conditions
(assert (tuple___create2__%precondition ($Snap.combine $Snap.unit $Snap.unit) t_0@389@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01))))))))))) (typeof<PyType> t_0@389@01) (A_arg<PyType> (typeof<PyType> self_1@388@01) 0) 6))
(declare-const _res@398@01 $Ref)
(assert (=
  _res@398@01
  (tuple___create2__ ($Snap.combine $Snap.unit $Snap.unit) t_0@389@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@392@01))))))))))) (typeof<PyType> t_0@389@01) (A_arg<PyType> (typeof<PyType> self_1@388@01) 0) 6)))
; [exec]
; label __end_0
; [eval] issubtype(typeof(_res), tuple(Seq(typeof(t_0), A_arg(typeof(self_1), 0))))
; [eval] typeof(_res)
; [eval] tuple(Seq(typeof(t_0), A_arg(typeof(self_1), 0)))
; [eval] Seq(typeof(t_0), A_arg(typeof(self_1), 0))
; [eval] typeof(t_0)
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
(assert (=
  (Seq_length
    (Seq_append
      (Seq_singleton (typeof<PyType> t_0@389@01))
      (Seq_singleton (A_arg<PyType> (typeof<PyType> self_1@388@01) 0))))
  2))
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> _res@398@01) (tuple<PyType> (Seq_append
  (Seq_singleton (typeof<PyType> t_0@389@01))
  (Seq_singleton (A_arg<PyType> (typeof<PyType> self_1@388@01) 0)))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res@398@01) (tuple<PyType> (Seq_append
  (Seq_singleton (typeof<PyType> t_0@389@01))
  (Seq_singleton (A_arg<PyType> (typeof<PyType> self_1@388@01) 0))))))
; [eval] issubtype(typeof(self_1.A_v), A_arg(typeof(self_1), 0))
; [eval] typeof(self_1.A_v)
; [eval] A_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
; [eval] (forperm _r_39: Ref [MustInvokeBounded(_r_39)] :: false)
; [eval] (forperm _r_39: Ref [MustInvokeUnbounded(_r_39)] :: false)
; [eval] (forperm _r_39: Ref [_r_39.MustReleaseBounded] :: false)
; [eval] (forperm _r_39: Ref [_r_39.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- main ----------
(declare-const _cthread_168@399@01 $Ref)
(declare-const _caller_measures_168@400@01 Seq<Measure$>)
(declare-const _residue_168@401@01 $Perm)
(declare-const _current_wait_level_168@402@01 $Perm)
(declare-const _cthread_168@403@01 $Ref)
(declare-const _caller_measures_168@404@01 Seq<Measure$>)
(declare-const _residue_168@405@01 $Perm)
(declare-const _current_wait_level_168@406@01 $Perm)
(push) ; 1
(declare-const $t@407@01 $Snap)
(assert (= $t@407@01 ($Snap.combine ($Snap.first $t@407@01) ($Snap.second $t@407@01))))
(assert (= ($Snap.first $t@407@01) $Snap.unit))
; [eval] _cthread_168 != null
(assert (not (= _cthread_168@403@01 $Ref.null)))
(assert (=
  ($Snap.second $t@407@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@407@01))
    ($Snap.second ($Snap.second $t@407@01)))))
(assert (= ($Snap.first ($Snap.second $t@407@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_168), Thread_0())
; [eval] typeof(_cthread_168)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_168@403@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@407@01)) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@408@01 $Snap)
(assert (= $t@408@01 ($Snap.combine ($Snap.first $t@408@01) ($Snap.second $t@408@01))))
(assert (= ($Snap.first $t@408@01) $Snap.unit))
; [eval] (forperm _r_41: Ref [_r_41.MustReleaseBounded] :: Level(_r_41) <= _current_wait_level_168)
(assert (=
  ($Snap.second $t@408@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@408@01))
    ($Snap.second ($Snap.second $t@408@01)))))
(assert (= ($Snap.first ($Snap.second $t@408@01)) $Snap.unit))
; [eval] (forperm _r_41: Ref [_r_41.MustReleaseUnbounded] :: Level(_r_41) <= _current_wait_level_168)
(assert (=
  ($Snap.second ($Snap.second $t@408@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@408@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@408@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@408@01))) $Snap.unit))
; [eval] _residue_168 <= _current_wait_level_168
(assert (<= _residue_168@405@01 _current_wait_level_168@406@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@408@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var module_defined_0: Bool
(declare-const module_defined_0@409@01 Bool)
; [exec]
; var module_names_0: Set[_Name]
(declare-const module_names_0@410@01 Set<_Name>)
; [exec]
; var _cwl_168: Perm
(declare-const _cwl_168@411@01 $Perm)
; [exec]
; var _method_measures_168: Seq[Measure$]
(declare-const _method_measures_168@412@01 Seq<Measure$>)
; [exec]
; _method_measures_168 := Seq[Measure$]()
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
(declare-const module_names_0@413@01 Set<_Name>)
(assert (=
  module_names_0@413@01
  (Set_union (as Set_empty  Set<_Name>) (Set_singleton (_single<_Name> 6872323072689856351)))))
; [exec]
; inhale acc(__file__()._val, 99 / 100) &&
;   (issubtype(typeof(__file__()._val), str()) &&
;   issubtype(typeof(__file__()._val), str()))
(declare-const $t@414@01 $Snap)
(assert (= $t@414@01 ($Snap.combine ($Snap.first $t@414@01) ($Snap.second $t@414@01))))
; [eval] __file__()
(push) ; 3
(assert (__file__%precondition $Snap.unit))
(pop) ; 3
; Joined path conditions
(assert (__file__%precondition $Snap.unit))
(assert (not (= (__file__ $Snap.unit) $Ref.null)))
(assert (=
  ($Snap.second $t@414@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@414@01))
    ($Snap.second ($Snap.second $t@414@01)))))
(assert (= ($Snap.first ($Snap.second $t@414@01)) $Snap.unit))
; [eval] issubtype(typeof(__file__()._val), str())
; [eval] typeof(__file__()._val)
; [eval] __file__()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@414@01))) (as str<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@414@01)) $Snap.unit))
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
(declare-const module_names_0@415@01 Set<_Name>)
(assert (=
  module_names_0@415@01
  (Set_union module_names_0@413@01 (Set_singleton (_single<_Name> 6872323076851130207)))))
; [exec]
; inhale acc(__name__()._val, 99 / 100) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   str___eq__(str___create__(8, 6872332955275845471), __name__()._val)))
(declare-const $t@416@01 $Snap)
(assert (= $t@416@01 ($Snap.combine ($Snap.first $t@416@01) ($Snap.second $t@416@01))))
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
  ($Snap.second $t@416@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@416@01))
    ($Snap.second ($Snap.second $t@416@01)))))
(assert (= ($Snap.first ($Snap.second $t@416@01)) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@416@01))) (as str<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@416@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@416@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@416@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@416@01))) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@416@01))) $Snap.unit))
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
(assert (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@416@01))))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 8 6872332955275845471)) (as str<PyType>  PyType))
  (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@416@01)))))
(assert (str___eq__ $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@416@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; module_names_0 := (module_names_0 union Set(_single(27981962743276871)))
; [eval] (module_names_0 union Set(_single(27981962743276871)))
; [eval] Set(_single(27981962743276871))
; [eval] _single(27981962743276871)
(declare-const module_names_0@417@01 Set<_Name>)
(assert (=
  module_names_0@417@01
  (Set_union module_names_0@415@01 (Set_singleton (_single<_Name> 27981962743276871)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(32195171041966420)))
; [eval] (module_names_0 union Set(_single(32195171041966420)))
; [eval] Set(_single(32195171041966420))
; [eval] _single(32195171041966420)
(declare-const module_names_0@418@01 Set<_Name>)
(assert (=
  module_names_0@418@01
  (Set_union module_names_0@417@01 (Set_singleton (_single<_Name> 32195171041966420)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(1953720652)))
; [eval] (module_names_0 union Set(_single(1953720652)))
; [eval] Set(_single(1953720652))
; [eval] _single(1953720652)
(declare-const module_names_0@419@01 Set<_Name>)
(assert (=
  module_names_0@419@01
  (Set_union module_names_0@418@01 (Set_singleton (_single<_Name> 1953720652)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(435611006292)))
; [eval] (module_names_0 union Set(_single(435611006292)))
; [eval] Set(_single(435611006292))
; [eval] _single(435611006292)
(declare-const module_names_0@420@01 Set<_Name>)
(assert (=
  module_names_0@420@01
  (Set_union module_names_0@419@01 (Set_singleton (_single<_Name> 435611006292)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(6872339552563453791)))
; [eval] (module_names_0 union Set(_single(6872339552563453791)))
; [eval] Set(_single(6872339552563453791))
; [eval] _single(6872339552563453791)
(declare-const module_names_0@421@01 Set<_Name>)
(assert (=
  module_names_0@421@01
  (Set_union module_names_0@420@01 (Set_singleton (_single<_Name> 6872339552563453791)))))
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(2110237719515443916611)))
; [eval] (module_names_0 union Set(_single(2110237719515443916611)))
; [eval] Set(_single(2110237719515443916611))
; [eval] _single(2110237719515443916611)
(declare-const module_names_0@422@01 Set<_Name>)
(assert (=
  module_names_0@422@01
  (Set_union module_names_0@421@01 (Set_singleton (_single<_Name> 2110237719515443916611)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(109)))
; [eval] (module_names_0 union Set(_single(109)))
; [eval] Set(_single(109))
; [eval] _single(109)
(declare-const module_names_0@423@01 Set<_Name>)
(assert (=
  module_names_0@423@01
  (Set_union module_names_0@422@01 (Set_singleton (_single<_Name> 109)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(128017496632419)))
; [eval] (module_names_0 union Set(_single(128017496632419)))
; [eval] Set(_single(128017496632419))
; [eval] _single(128017496632419)
(declare-const module_names_0@424@01 Set<_Name>)
(assert (=
  module_names_0@424@01
  (Set_union module_names_0@423@01 (Set_singleton (_single<_Name> 128017496632419)))))
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(31378167700126477731761577837)))
; [eval] (module_names_0 union Set(_single(31378167700126477731761577837)))
; [eval] Set(_single(31378167700126477731761577837))
; [eval] _single(31378167700126477731761577837)
(declare-const module_names_0@425@01 Set<_Name>)
(assert (=
  module_names_0@425@01
  (Set_union module_names_0@424@01 (Set_singleton (_single<_Name> 31378167700126477731761577837)))))
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(34500660244594369771926588751664724405347)))
; [eval] (module_names_0 union Set(_single(34500660244594369771926588751664724405347)))
; [eval] Set(_single(34500660244594369771926588751664724405347))
; [eval] _single(34500660244594369771926588751664724405347)
(declare-const module_names_0@426@01 Set<_Name>)
(assert (=
  module_names_0@426@01
  (Set_union module_names_0@425@01 (Set_singleton (_single<_Name> 34500660244594369771926588751664724405347)))))
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(1021678533789138759746481001160557)))
; [eval] (module_names_0 union Set(_single(1021678533789138759746481001160557)))
; [eval] Set(_single(1021678533789138759746481001160557))
; [eval] _single(1021678533789138759746481001160557)
(declare-const module_names_0@427@01 Set<_Name>)
(assert (=
  module_names_0@427@01
  (Set_union module_names_0@426@01 (Set_singleton (_single<_Name> 1021678533789138759746481001160557)))))
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(1123347427750292974877987110673910342926036067)))
; [eval] (module_names_0 union Set(_single(1123347427750292974877987110673910342926036067)))
; [eval] Set(_single(1123347427750292974877987110673910342926036067))
; [eval] _single(1123347427750292974877987110673910342926036067)
(declare-const module_names_0@428@01 Set<_Name>)
(assert (=
  module_names_0@428@01
  (Set_union module_names_0@427@01 (Set_singleton (_single<_Name> 1123347427750292974877987110673910342926036067)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(6872339552563453791)))
; [eval] (module_names_0 union Set(_single(6872339552563453791)))
; [eval] Set(_single(6872339552563453791))
; [eval] _single(6872339552563453791)
(declare-const module_names_0@429@01 Set<_Name>)
(assert (=
  module_names_0@429@01
  (Set_union module_names_0@428@01 (Set_singleton (_single<_Name> 6872339552563453791)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(110429656606061)))
; [eval] (module_names_0 union Set(_single(110429656606061)))
; [eval] Set(_single(110429656606061))
; [eval] _single(110429656606061)
(declare-const module_names_0@430@01 Set<_Name>)
(assert (=
  module_names_0@430@01
  (Set_union module_names_0@429@01 (Set_singleton (_single<_Name> 110429656606061)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(3629730254340515181)))
; [eval] (module_names_0 union Set(_single(3629730254340515181)))
; [eval] Set(_single(3629730254340515181))
; [eval] _single(3629730254340515181)
(declare-const module_names_0@431@01 Set<_Name>)
(assert (=
  module_names_0@431@01
  (Set_union module_names_0@430@01 (Set_singleton (_single<_Name> 3629730254340515181)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(65)))
; [eval] (module_names_0 union Set(_single(65)))
; [eval] Set(_single(65))
; [eval] _single(65)
(declare-const module_names_0@432@01 Set<_Name>)
(assert (=
  module_names_0@432@01
  (Set_union module_names_0@431@01 (Set_singleton (_single<_Name> 65)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(8389754659302236001)))
; [eval] (module_names_0 union Set(_single(8389754659302236001)))
; [eval] Set(_single(8389754659302236001))
; [eval] _single(8389754659302236001)
(declare-const module_names_0@433@01 Set<_Name>)
(assert (=
  module_names_0@433@01
  (Set_union module_names_0@432@01 (Set_singleton (_single<_Name> 8389754659302236001)))))
; [exec]
; assert true && (_single(65) in module_names_0)
; [eval] (_single(65) in module_names_0)
; [eval] _single(65)
(set-option :timeout 0)
(push) ; 3
(assert (not (Set_in (_single<_Name> 65) module_names_0@433@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 65) module_names_0@433@01))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(3629730254340515181)))
; [eval] (module_names_0 union Set(_single(3629730254340515181)))
; [eval] Set(_single(3629730254340515181))
; [eval] _single(3629730254340515181)
(declare-const module_names_0@434@01 Set<_Name>)
(assert (=
  module_names_0@434@01
  (Set_union module_names_0@433@01 (Set_singleton (_single<_Name> 3629730254340515181)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(66)))
; [eval] (module_names_0 union Set(_single(66)))
; [eval] Set(_single(66))
; [eval] _single(66)
(declare-const module_names_0@435@01 Set<_Name>)
(assert (=
  module_names_0@435@01
  (Set_union module_names_0@434@01 (Set_singleton (_single<_Name> 66)))))
; [exec]
; label __end
; [eval] (forperm _r_42: Ref [MustInvokeBounded(_r_42)] :: false)
; [eval] (forperm _r_42: Ref [MustInvokeUnbounded(_r_42)] :: false)
; [eval] (forperm _r_42: Ref [_r_42.MustReleaseBounded] :: false)
; [eval] (forperm _r_42: Ref [_r_42.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- list___init__ ----------
(declare-const _cthread_8@436@01 $Ref)
(declare-const _caller_measures_8@437@01 Seq<Measure$>)
(declare-const _residue_8@438@01 $Perm)
(declare-const _current_wait_level_8@439@01 $Perm)
(declare-const res@440@01 $Ref)
(declare-const _cthread_8@441@01 $Ref)
(declare-const _caller_measures_8@442@01 Seq<Measure$>)
(declare-const _residue_8@443@01 $Perm)
(declare-const _current_wait_level_8@444@01 $Perm)
(declare-const res@445@01 $Ref)
(push) ; 1
(declare-const $t@446@01 $Snap)
(assert (= $t@446@01 ($Snap.combine ($Snap.first $t@446@01) ($Snap.second $t@446@01))))
(assert (= ($Snap.first $t@446@01) $Snap.unit))
; [eval] _cthread_8 != null
(assert (not (= _cthread_8@441@01 $Ref.null)))
(assert (=
  ($Snap.second $t@446@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@446@01))
    ($Snap.second ($Snap.second $t@446@01)))))
(assert (= ($Snap.first ($Snap.second $t@446@01)) $Snap.unit))
; [eval] Measure$check(_caller_measures_8, _cthread_8, 1)
(push) ; 2
(assert (Measure$check%precondition $Snap.unit _caller_measures_8@442@01 _cthread_8@441@01 1))
(pop) ; 2
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _caller_measures_8@442@01 _cthread_8@441@01 1))
(assert (Measure$check $Snap.unit _caller_measures_8@442@01 _cthread_8@441@01 1))
(assert (=
  ($Snap.second ($Snap.second $t@446@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@446@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@446@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@446@01))) $Snap.unit))
; [eval] issubtype(typeof(_cthread_8), Thread_0())
; [eval] typeof(_cthread_8)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_8@441@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@446@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@447@01 $Snap)
(assert (= $t@447@01 ($Snap.combine ($Snap.first $t@447@01) ($Snap.second $t@447@01))))
(assert (= ($Snap.first $t@447@01) $Snap.unit))
; [eval] (forperm _r_44: Ref [_r_44.MustReleaseBounded] :: Level(_r_44) <= _current_wait_level_8)
(assert (=
  ($Snap.second $t@447@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@447@01))
    ($Snap.second ($Snap.second $t@447@01)))))
(assert (= ($Snap.first ($Snap.second $t@447@01)) $Snap.unit))
; [eval] (forperm _r_44: Ref [_r_44.MustReleaseUnbounded] :: Level(_r_44) <= _current_wait_level_8)
(assert (=
  ($Snap.second ($Snap.second $t@447@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@447@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@447@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@447@01))) $Snap.unit))
; [eval] _residue_8 <= _current_wait_level_8
(assert (<= _residue_8@443@01 _current_wait_level_8@444@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@447@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@447@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@447@01)))))))
(assert (not (= res@445@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@447@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@447@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@447@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@447@01)))))
  $Snap.unit))
; [eval] res.list_acc == Seq[Ref]()
; [eval] Seq[Ref]()
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@447@01)))))
  (as Seq_empty  Seq<$Ref>)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@447@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@447@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@447@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@447@01))))))
  $Snap.unit))
; [eval] typeof(res) == list(list_arg(typeof(res), 0))
; [eval] typeof(res)
; [eval] list(list_arg(typeof(res), 0))
; [eval] list_arg(typeof(res), 0)
; [eval] typeof(res)
(assert (=
  (typeof<PyType> res@445@01)
  (list<PyType> (list_arg<PyType> (typeof<PyType> res@445@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@447@01))))))
  $Snap.unit))
; [eval] (Low(res): Bool)
(assert (Low<Bool> res@445@01))
(pop) ; 2
(push) ; 2
; [exec]
; var _cwl_8: Perm
(declare-const _cwl_8@448@01 $Perm)
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
