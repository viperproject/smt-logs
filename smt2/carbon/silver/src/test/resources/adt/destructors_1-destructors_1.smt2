(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.AUTO_CONFIG false)
(set-option :smt.PHASE_SELECTION 0)
(set-option :smt.RESTART_STRATEGY 0)
(set-option :smt.RESTART_FACTOR |1.5|)
(set-option :smt.ARITH.RANDOM_INITIAL_VALUE true)
(set-option :smt.CASE_SPLIT 3)
(set-option :smt.DELAY_UNITS true)
(set-option :NNF.SK_HACK true)
(set-option :smt.MBQI false)
(set-option :smt.QI.EAGER_THRESHOLD 100)
(set-option :smt.BV.REFLECT true)
(set-option :smt.qi.max_multi_patterns 1000)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort T@Ref 0)
(declare-sort T@Field_4353_53 0)
(declare-sort T@Field_4366_4367 0)
(declare-sort T@Field_4353_11125 0)
(declare-sort T@Field_4353_10992 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_4314 0)) (((PolymorphicMapType_4314 (|PolymorphicMapType_4314_4353_53#PolymorphicMapType_4314| (Array T@Ref T@Field_4353_53 Real)) (|PolymorphicMapType_4314_4353_4367#PolymorphicMapType_4314| (Array T@Ref T@Field_4366_4367 Real)) (|PolymorphicMapType_4314_4353_10992#PolymorphicMapType_4314| (Array T@Ref T@Field_4353_10992 Real)) (|PolymorphicMapType_4314_4353_14686#PolymorphicMapType_4314| (Array T@Ref T@Field_4353_11125 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4842 0)) (((PolymorphicMapType_4842 (|PolymorphicMapType_4842_4353_53#PolymorphicMapType_4842| (Array T@Ref T@Field_4353_53 Bool)) (|PolymorphicMapType_4842_4353_4367#PolymorphicMapType_4842| (Array T@Ref T@Field_4366_4367 Bool)) (|PolymorphicMapType_4842_4353_10992#PolymorphicMapType_4842| (Array T@Ref T@Field_4353_10992 Bool)) (|PolymorphicMapType_4842_4353_12105#PolymorphicMapType_4842| (Array T@Ref T@Field_4353_11125 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4293 0)) (((PolymorphicMapType_4293 (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| (Array T@Ref T@Field_4353_53 Bool)) (|PolymorphicMapType_4293_2317_2318#PolymorphicMapType_4293| (Array T@Ref T@Field_4366_4367 T@Ref)) (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| (Array T@Ref T@Field_4353_11125 T@PolymorphicMapType_4842)) (|PolymorphicMapType_4293_4353_10992#PolymorphicMapType_4293| (Array T@Ref T@Field_4353_10992 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_4293 T@PolymorphicMapType_4293) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4293 T@PolymorphicMapType_4293) Bool)
(declare-fun state (T@PolymorphicMapType_4293 T@PolymorphicMapType_4314) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4314) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4842)
(declare-sort T@TreeDomainType_1722 0)
(declare-fun Node_1_5 (Bool T@TreeDomainType_1722 T@TreeDomainType_1722) T@TreeDomainType_1722)
(declare-fun Tree_tag_2007 (T@TreeDomainType_1722) Int)
(declare-sort T@TreeDomainType_1704 0)
(declare-fun Node_1_3 (Int T@TreeDomainType_1704 T@TreeDomainType_1704) T@TreeDomainType_1704)
(declare-fun Tree_tag_1753 (T@TreeDomainType_1704) Int)
(declare-fun Leaf_2007 () T@TreeDomainType_1722)
(declare-fun Leaf_1753 () T@TreeDomainType_1704)
(declare-sort T@ListDomainType_1718 0)
(declare-fun List_tag_1866 (T@ListDomainType_1718) Int)
(declare-fun Nil_1866 () T@ListDomainType_1718)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4293 T@PolymorphicMapType_4293 T@PolymorphicMapType_4314) Bool)
(declare-fun IsPredicateField_4353_11083 (T@Field_4353_10992) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4353 (T@Field_4353_10992) T@Field_4353_11125)
(declare-fun HasDirectPerm_4353_11056 (T@PolymorphicMapType_4314 T@Ref T@Field_4353_10992) Bool)
(declare-fun IsWandField_4353_12632 (T@Field_4353_10992) Bool)
(declare-fun WandMaskField_4353 (T@Field_4353_10992) T@Field_4353_11125)
(declare-fun dummyHeap () T@PolymorphicMapType_4293)
(declare-fun ZeroMask () T@PolymorphicMapType_4314)
(declare-fun $allocated () T@Field_4353_53)
(declare-fun InsidePredicate_4353_4353 (T@Field_4353_10992 T@FrameType T@Field_4353_10992 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4353_15595 (T@Field_4353_11125) Bool)
(declare-fun IsWandField_4353_15611 (T@Field_4353_11125) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4353_4367 (T@Field_4366_4367) Bool)
(declare-fun IsWandField_4353_4367 (T@Field_4366_4367) Bool)
(declare-fun IsPredicateField_4353_53 (T@Field_4353_53) Bool)
(declare-fun IsWandField_4353_53 (T@Field_4353_53) Bool)
(declare-fun HasDirectPerm_4353_15966 (T@PolymorphicMapType_4314 T@Ref T@Field_4353_11125) Bool)
(declare-fun HasDirectPerm_4353_4367 (T@PolymorphicMapType_4314 T@Ref T@Field_4366_4367) Bool)
(declare-fun HasDirectPerm_4353_53 (T@PolymorphicMapType_4314 T@Ref T@Field_4353_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4314 T@PolymorphicMapType_4314 T@PolymorphicMapType_4314) Bool)
(declare-fun Cons_5 (Bool T@ListDomainType_1718) T@ListDomainType_1718)
(declare-fun get_Tree_value_3 (T@TreeDomainType_1704) Int)
(declare-fun get_Tree_value_2217 (T@TreeDomainType_1722) Bool)
(declare-fun get_Tree_left_1722 (T@TreeDomainType_1722) T@TreeDomainType_1722)
(declare-fun get_Tree_left_1704 (T@TreeDomainType_1704) T@TreeDomainType_1704)
(declare-fun get_Tree_right_2248 (T@TreeDomainType_1722) T@TreeDomainType_1722)
(declare-fun get_Tree_right_1704 (T@TreeDomainType_1704) T@TreeDomainType_1704)
(declare-fun get_List_value_1718 (T@ListDomainType_1718) Bool)
(declare-fun get_List_tail_1718 (T@ListDomainType_1718) T@ListDomainType_1718)
(assert (forall ((Heap0 T@PolymorphicMapType_4293) (Heap1 T@PolymorphicMapType_4293) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4293) (Mask T@PolymorphicMapType_4314) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4293) (Heap1@@0 T@PolymorphicMapType_4293) (Heap2 T@PolymorphicMapType_4293) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4353_11125) ) (!  (not (select (|PolymorphicMapType_4842_4353_12105#PolymorphicMapType_4842| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4842_4353_12105#PolymorphicMapType_4842| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4353_10992) ) (!  (not (select (|PolymorphicMapType_4842_4353_10992#PolymorphicMapType_4842| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4842_4353_10992#PolymorphicMapType_4842| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_4366_4367) ) (!  (not (select (|PolymorphicMapType_4842_4353_4367#PolymorphicMapType_4842| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4842_4353_4367#PolymorphicMapType_4842| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4353_53) ) (!  (not (select (|PolymorphicMapType_4842_4353_53#PolymorphicMapType_4842| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4842_4353_53#PolymorphicMapType_4842| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((value Bool) (left T@TreeDomainType_1722) (right_2 T@TreeDomainType_1722) ) (! (= (Tree_tag_2007 (Node_1_5 value left right_2)) 1)
 :qid |stdinbpl.278:19|
 :skolemid |31|
 :pattern ( (Node_1_5 value left right_2))
)))
(assert (forall ((value@@0 Int) (left@@0 T@TreeDomainType_1704) (right_2@@0 T@TreeDomainType_1704) ) (! (= (Tree_tag_1753 (Node_1_3 value@@0 left@@0 right_2@@0)) 1)
 :qid |stdinbpl.278:19|
 :skolemid |31|
 :pattern ( (Node_1_3 value@@0 left@@0 right_2@@0))
)))
(assert (= (Tree_tag_2007 Leaf_2007) 0))
(assert (= (Tree_tag_1753 Leaf_1753) 0))
(assert (= (List_tag_1866 Nil_1866) 1))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4293) (ExhaleHeap T@PolymorphicMapType_4293) (Mask@@0 T@PolymorphicMapType_4314) (pm_f T@Field_4353_10992) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4353_11056 Mask@@0 null pm_f) (IsPredicateField_4353_11083 pm_f)) (= (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| Heap@@0) null (PredicateMaskField_4353 pm_f)) (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| ExhaleHeap) null (PredicateMaskField_4353 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4353_11083 pm_f) (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| ExhaleHeap) null (PredicateMaskField_4353 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4293) (ExhaleHeap@@0 T@PolymorphicMapType_4293) (Mask@@1 T@PolymorphicMapType_4314) (pm_f@@0 T@Field_4353_10992) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4353_11056 Mask@@1 null pm_f@@0) (IsWandField_4353_12632 pm_f@@0)) (= (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| Heap@@1) null (WandMaskField_4353 pm_f@@0)) (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| ExhaleHeap@@0) null (WandMaskField_4353 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_4353_12632 pm_f@@0) (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| ExhaleHeap@@0) null (WandMaskField_4353 pm_f@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4293) (ExhaleHeap@@1 T@PolymorphicMapType_4293) (Mask@@2 T@PolymorphicMapType_4314) (pm_f@@1 T@Field_4353_10992) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4353_11056 Mask@@2 null pm_f@@1) (IsPredicateField_4353_11083 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_4353_53) ) (!  (=> (select (|PolymorphicMapType_4842_4353_53#PolymorphicMapType_4842| (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| Heap@@2) null (PredicateMaskField_4353 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| Heap@@2) o2 f_2) (select (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_4366_4367) ) (!  (=> (select (|PolymorphicMapType_4842_4353_4367#PolymorphicMapType_4842| (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| Heap@@2) null (PredicateMaskField_4353 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_4293_2317_2318#PolymorphicMapType_4293| Heap@@2) o2@@0 f_2@@0) (select (|PolymorphicMapType_4293_2317_2318#PolymorphicMapType_4293| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4293_2317_2318#PolymorphicMapType_4293| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_4353_10992) ) (!  (=> (select (|PolymorphicMapType_4842_4353_10992#PolymorphicMapType_4842| (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| Heap@@2) null (PredicateMaskField_4353 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_4293_4353_10992#PolymorphicMapType_4293| Heap@@2) o2@@1 f_2@@1) (select (|PolymorphicMapType_4293_4353_10992#PolymorphicMapType_4293| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4293_4353_10992#PolymorphicMapType_4293| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_4353_11125) ) (!  (=> (select (|PolymorphicMapType_4842_4353_12105#PolymorphicMapType_4842| (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| Heap@@2) null (PredicateMaskField_4353 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| Heap@@2) o2@@2 f_2@@2) (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_4353_11083 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4293) (ExhaleHeap@@2 T@PolymorphicMapType_4293) (Mask@@3 T@PolymorphicMapType_4314) (pm_f@@2 T@Field_4353_10992) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4353_11056 Mask@@3 null pm_f@@2) (IsWandField_4353_12632 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_4353_53) ) (!  (=> (select (|PolymorphicMapType_4842_4353_53#PolymorphicMapType_4842| (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| Heap@@3) null (WandMaskField_4353 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| Heap@@3) o2@@3 f_2@@3) (select (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_4366_4367) ) (!  (=> (select (|PolymorphicMapType_4842_4353_4367#PolymorphicMapType_4842| (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| Heap@@3) null (WandMaskField_4353 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_4293_2317_2318#PolymorphicMapType_4293| Heap@@3) o2@@4 f_2@@4) (select (|PolymorphicMapType_4293_2317_2318#PolymorphicMapType_4293| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4293_2317_2318#PolymorphicMapType_4293| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_4353_10992) ) (!  (=> (select (|PolymorphicMapType_4842_4353_10992#PolymorphicMapType_4842| (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| Heap@@3) null (WandMaskField_4353 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_4293_4353_10992#PolymorphicMapType_4293| Heap@@3) o2@@5 f_2@@5) (select (|PolymorphicMapType_4293_4353_10992#PolymorphicMapType_4293| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4293_4353_10992#PolymorphicMapType_4293| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_4353_11125) ) (!  (=> (select (|PolymorphicMapType_4842_4353_12105#PolymorphicMapType_4842| (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| Heap@@3) null (WandMaskField_4353 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| Heap@@3) o2@@6 f_2@@6) (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_4353_12632 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4293) (ExhaleHeap@@3 T@PolymorphicMapType_4293) (Mask@@4 T@PolymorphicMapType_4314) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| Heap@@4) o_1 $allocated) (select (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_4353_10992) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4353_4353 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4353_4353 p v_1 p w))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4293) (ExhaleHeap@@4 T@PolymorphicMapType_4293) (Mask@@5 T@PolymorphicMapType_4314) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_4314) (o_2@@3 T@Ref) (f_4@@3 T@Field_4353_11125) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_4314_4353_14686#PolymorphicMapType_4314| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4353_15595 f_4@@3))) (not (IsWandField_4353_15611 f_4@@3))) (<= (select (|PolymorphicMapType_4314_4353_14686#PolymorphicMapType_4314| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_4314_4353_14686#PolymorphicMapType_4314| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_4314) (o_2@@4 T@Ref) (f_4@@4 T@Field_4353_10992) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_4314_4353_10992#PolymorphicMapType_4314| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4353_11083 f_4@@4))) (not (IsWandField_4353_12632 f_4@@4))) (<= (select (|PolymorphicMapType_4314_4353_10992#PolymorphicMapType_4314| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_4314_4353_10992#PolymorphicMapType_4314| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_4314) (o_2@@5 T@Ref) (f_4@@5 T@Field_4366_4367) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_4314_4353_4367#PolymorphicMapType_4314| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4353_4367 f_4@@5))) (not (IsWandField_4353_4367 f_4@@5))) (<= (select (|PolymorphicMapType_4314_4353_4367#PolymorphicMapType_4314| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_4314_4353_4367#PolymorphicMapType_4314| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_4314) (o_2@@6 T@Ref) (f_4@@6 T@Field_4353_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_4314_4353_53#PolymorphicMapType_4314| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4353_53 f_4@@6))) (not (IsWandField_4353_53 f_4@@6))) (<= (select (|PolymorphicMapType_4314_4353_53#PolymorphicMapType_4314| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_4314_4353_53#PolymorphicMapType_4314| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4314) (o_2@@7 T@Ref) (f_4@@7 T@Field_4353_11125) ) (! (= (HasDirectPerm_4353_15966 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_4314_4353_14686#PolymorphicMapType_4314| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4353_15966 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4314) (o_2@@8 T@Ref) (f_4@@8 T@Field_4353_10992) ) (! (= (HasDirectPerm_4353_11056 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_4314_4353_10992#PolymorphicMapType_4314| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4353_11056 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4314) (o_2@@9 T@Ref) (f_4@@9 T@Field_4366_4367) ) (! (= (HasDirectPerm_4353_4367 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_4314_4353_4367#PolymorphicMapType_4314| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4353_4367 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4314) (o_2@@10 T@Ref) (f_4@@10 T@Field_4353_53) ) (! (= (HasDirectPerm_4353_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_4314_4353_53#PolymorphicMapType_4314| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4353_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4293) (ExhaleHeap@@5 T@PolymorphicMapType_4293) (Mask@@14 T@PolymorphicMapType_4314) (o_1@@0 T@Ref) (f_2@@7 T@Field_4353_11125) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_4353_15966 Mask@@14 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| Heap@@6) o_1@@0 f_2@@7) (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4293) (ExhaleHeap@@6 T@PolymorphicMapType_4293) (Mask@@15 T@PolymorphicMapType_4314) (o_1@@1 T@Ref) (f_2@@8 T@Field_4353_10992) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_4353_11056 Mask@@15 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_4293_4353_10992#PolymorphicMapType_4293| Heap@@7) o_1@@1 f_2@@8) (select (|PolymorphicMapType_4293_4353_10992#PolymorphicMapType_4293| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_4293_4353_10992#PolymorphicMapType_4293| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4293) (ExhaleHeap@@7 T@PolymorphicMapType_4293) (Mask@@16 T@PolymorphicMapType_4314) (o_1@@2 T@Ref) (f_2@@9 T@Field_4366_4367) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_4353_4367 Mask@@16 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_4293_2317_2318#PolymorphicMapType_4293| Heap@@8) o_1@@2 f_2@@9) (select (|PolymorphicMapType_4293_2317_2318#PolymorphicMapType_4293| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_4293_2317_2318#PolymorphicMapType_4293| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4293) (ExhaleHeap@@8 T@PolymorphicMapType_4293) (Mask@@17 T@PolymorphicMapType_4314) (o_1@@3 T@Ref) (f_2@@10 T@Field_4353_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_4353_53 Mask@@17 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| Heap@@9) o_1@@3 f_2@@10) (select (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_4353_11125) ) (! (= (select (|PolymorphicMapType_4314_4353_14686#PolymorphicMapType_4314| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4314_4353_14686#PolymorphicMapType_4314| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_4353_10992) ) (! (= (select (|PolymorphicMapType_4314_4353_10992#PolymorphicMapType_4314| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4314_4353_10992#PolymorphicMapType_4314| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_4366_4367) ) (! (= (select (|PolymorphicMapType_4314_4353_4367#PolymorphicMapType_4314| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4314_4353_4367#PolymorphicMapType_4314| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4353_53) ) (! (= (select (|PolymorphicMapType_4314_4353_53#PolymorphicMapType_4314| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4314_4353_53#PolymorphicMapType_4314| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4314) (SummandMask1 T@PolymorphicMapType_4314) (SummandMask2 T@PolymorphicMapType_4314) (o_2@@15 T@Ref) (f_4@@15 T@Field_4353_11125) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4314_4353_14686#PolymorphicMapType_4314| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_4314_4353_14686#PolymorphicMapType_4314| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_4314_4353_14686#PolymorphicMapType_4314| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4314_4353_14686#PolymorphicMapType_4314| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4314_4353_14686#PolymorphicMapType_4314| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4314_4353_14686#PolymorphicMapType_4314| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4314) (SummandMask1@@0 T@PolymorphicMapType_4314) (SummandMask2@@0 T@PolymorphicMapType_4314) (o_2@@16 T@Ref) (f_4@@16 T@Field_4353_10992) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4314_4353_10992#PolymorphicMapType_4314| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_4314_4353_10992#PolymorphicMapType_4314| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_4314_4353_10992#PolymorphicMapType_4314| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4314_4353_10992#PolymorphicMapType_4314| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4314_4353_10992#PolymorphicMapType_4314| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4314_4353_10992#PolymorphicMapType_4314| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4314) (SummandMask1@@1 T@PolymorphicMapType_4314) (SummandMask2@@1 T@PolymorphicMapType_4314) (o_2@@17 T@Ref) (f_4@@17 T@Field_4366_4367) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4314_4353_4367#PolymorphicMapType_4314| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_4314_4353_4367#PolymorphicMapType_4314| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_4314_4353_4367#PolymorphicMapType_4314| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4314_4353_4367#PolymorphicMapType_4314| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4314_4353_4367#PolymorphicMapType_4314| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4314_4353_4367#PolymorphicMapType_4314| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4314) (SummandMask1@@2 T@PolymorphicMapType_4314) (SummandMask2@@2 T@PolymorphicMapType_4314) (o_2@@18 T@Ref) (f_4@@18 T@Field_4353_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4314_4353_53#PolymorphicMapType_4314| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_4314_4353_53#PolymorphicMapType_4314| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_4314_4353_53#PolymorphicMapType_4314| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4314_4353_53#PolymorphicMapType_4314| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4314_4353_53#PolymorphicMapType_4314| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4314_4353_53#PolymorphicMapType_4314| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((value@@1 Bool) (tail_1 T@ListDomainType_1718) ) (! (= (List_tag_1866 (Cons_5 value@@1 tail_1)) 0)
 :qid |stdinbpl.217:19|
 :skolemid |25|
 :pattern ( (Cons_5 value@@1 tail_1))
)))
(assert (forall ((value@@2 Int) (left@@1 T@TreeDomainType_1704) (right_2@@1 T@TreeDomainType_1704) ) (! (= value@@2 (get_Tree_value_3 (Node_1_3 value@@2 left@@1 right_2@@1)))
 :qid |stdinbpl.254:19|
 :skolemid |27|
 :pattern ( (Node_1_3 value@@2 left@@1 right_2@@1))
)))
(assert (forall ((value@@3 Bool) (left@@2 T@TreeDomainType_1722) (right_2@@2 T@TreeDomainType_1722) ) (! (= value@@3 (get_Tree_value_2217 (Node_1_5 value@@3 left@@2 right_2@@2)))
 :qid |stdinbpl.254:19|
 :skolemid |27|
 :pattern ( (Node_1_5 value@@3 left@@2 right_2@@2))
)))
(assert (forall ((value@@4 Bool) (left@@3 T@TreeDomainType_1722) (right_2@@3 T@TreeDomainType_1722) ) (! (= left@@3 (get_Tree_left_1722 (Node_1_5 value@@4 left@@3 right_2@@3)))
 :qid |stdinbpl.260:19|
 :skolemid |28|
 :pattern ( (Node_1_5 value@@4 left@@3 right_2@@3))
)))
(assert (forall ((value@@5 Int) (left@@4 T@TreeDomainType_1704) (right_2@@4 T@TreeDomainType_1704) ) (! (= left@@4 (get_Tree_left_1704 (Node_1_3 value@@5 left@@4 right_2@@4)))
 :qid |stdinbpl.260:19|
 :skolemid |28|
 :pattern ( (Node_1_3 value@@5 left@@4 right_2@@4))
)))
(assert (forall ((value@@6 Bool) (left@@5 T@TreeDomainType_1722) (right_2@@5 T@TreeDomainType_1722) ) (! (= right_2@@5 (get_Tree_right_2248 (Node_1_5 value@@6 left@@5 right_2@@5)))
 :qid |stdinbpl.266:19|
 :skolemid |29|
 :pattern ( (Node_1_5 value@@6 left@@5 right_2@@5))
)))
(assert (forall ((value@@7 Int) (left@@6 T@TreeDomainType_1704) (right_2@@6 T@TreeDomainType_1704) ) (! (= right_2@@6 (get_Tree_right_1704 (Node_1_3 value@@7 left@@6 right_2@@6)))
 :qid |stdinbpl.266:19|
 :skolemid |29|
 :pattern ( (Node_1_3 value@@7 left@@6 right_2@@6))
)))
(assert (forall ((value@@8 Bool) (tail_1@@0 T@ListDomainType_1718) ) (! (= value@@8 (get_List_value_1718 (Cons_5 value@@8 tail_1@@0)))
 :qid |stdinbpl.199:19|
 :skolemid |22|
 :pattern ( (Cons_5 value@@8 tail_1@@0))
)))
(assert (forall ((value@@9 Bool) (tail_1@@1 T@ListDomainType_1718) ) (! (= tail_1@@1 (get_List_tail_1718 (Cons_5 value@@9 tail_1@@1)))
 :qid |stdinbpl.205:19|
 :skolemid |23|
 :pattern ( (Cons_5 value@@9 tail_1@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4293) (o T@Ref) (f_3 T@Field_4353_10992) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_4293 (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| Heap@@10) (|PolymorphicMapType_4293_2317_2318#PolymorphicMapType_4293| Heap@@10) (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| Heap@@10) (store (|PolymorphicMapType_4293_4353_10992#PolymorphicMapType_4293| Heap@@10) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4293 (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| Heap@@10) (|PolymorphicMapType_4293_2317_2318#PolymorphicMapType_4293| Heap@@10) (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| Heap@@10) (store (|PolymorphicMapType_4293_4353_10992#PolymorphicMapType_4293| Heap@@10) o f_3 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4293) (o@@0 T@Ref) (f_3@@0 T@Field_4353_11125) (v@@0 T@PolymorphicMapType_4842) ) (! (succHeap Heap@@11 (PolymorphicMapType_4293 (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| Heap@@11) (|PolymorphicMapType_4293_2317_2318#PolymorphicMapType_4293| Heap@@11) (store (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| Heap@@11) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4293_4353_10992#PolymorphicMapType_4293| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4293 (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| Heap@@11) (|PolymorphicMapType_4293_2317_2318#PolymorphicMapType_4293| Heap@@11) (store (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| Heap@@11) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4293_4353_10992#PolymorphicMapType_4293| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4293) (o@@1 T@Ref) (f_3@@1 T@Field_4366_4367) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_4293 (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| Heap@@12) (store (|PolymorphicMapType_4293_2317_2318#PolymorphicMapType_4293| Heap@@12) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| Heap@@12) (|PolymorphicMapType_4293_4353_10992#PolymorphicMapType_4293| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4293 (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| Heap@@12) (store (|PolymorphicMapType_4293_2317_2318#PolymorphicMapType_4293| Heap@@12) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| Heap@@12) (|PolymorphicMapType_4293_4353_10992#PolymorphicMapType_4293| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4293) (o@@2 T@Ref) (f_3@@2 T@Field_4353_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_4293 (store (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| Heap@@13) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4293_2317_2318#PolymorphicMapType_4293| Heap@@13) (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| Heap@@13) (|PolymorphicMapType_4293_4353_10992#PolymorphicMapType_4293| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4293 (store (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| Heap@@13) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4293_2317_2318#PolymorphicMapType_4293| Heap@@13) (|PolymorphicMapType_4293_4353_11169#PolymorphicMapType_4293| Heap@@13) (|PolymorphicMapType_4293_4353_10992#PolymorphicMapType_4293| Heap@@13)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_4366_4367) (Heap@@14 T@PolymorphicMapType_4293) ) (!  (=> (select (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| Heap@@14) o@@3 $allocated) (select (|PolymorphicMapType_4293_2314_53#PolymorphicMapType_4293| Heap@@14) (select (|PolymorphicMapType_4293_2317_2318#PolymorphicMapType_4293| Heap@@14) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4293_2317_2318#PolymorphicMapType_4293| Heap@@14) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_4353_10992) (v_1@@0 T@FrameType) (q T@Field_4353_10992) (w@@0 T@FrameType) (r T@Field_4353_10992) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4353_4353 p@@1 v_1@@0 q w@@0) (InsidePredicate_4353_4353 q w@@0 r u)) (InsidePredicate_4353_4353 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4353_4353 p@@1 v_1@@0 q w@@0) (InsidePredicate_4353_4353 q w@@0 r u))
)))
(assert (forall ((t_2 T@ListDomainType_1718) ) (!  (or (= t_2 Nil_1866) (= t_2 (Cons_5 (get_List_value_1718 t_2) (get_List_tail_1718 t_2))))
 :qid |stdinbpl.223:19|
 :skolemid |26|
 :pattern ( (List_tag_1866 t_2))
 :pattern ( (get_List_value_1718 t_2))
 :pattern ( (get_List_tail_1718 t_2))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((t_2@@0 T@TreeDomainType_1722) ) (!  (or (= t_2@@0 Leaf_2007) (= t_2@@0 (Node_1_5 (get_Tree_value_2217 t_2@@0) (get_Tree_left_1722 t_2@@0) (get_Tree_right_2248 t_2@@0))))
 :qid |stdinbpl.284:19|
 :skolemid |32|
 :pattern ( (Tree_tag_2007 t_2@@0))
 :pattern ( (get_Tree_value_2217 t_2@@0))
 :pattern ( (get_Tree_left_1722 t_2@@0))
 :pattern ( (get_Tree_right_2248 t_2@@0))
)))
(assert (forall ((t_2@@1 T@TreeDomainType_1704) ) (!  (or (= t_2@@1 Leaf_1753) (= t_2@@1 (Node_1_3 (get_Tree_value_3 t_2@@1) (get_Tree_left_1704 t_2@@1) (get_Tree_right_1704 t_2@@1))))
 :qid |stdinbpl.284:19|
 :skolemid |32|
 :pattern ( (Tree_tag_1753 t_2@@1))
 :pattern ( (get_Tree_value_3 t_2@@1))
 :pattern ( (get_Tree_left_1704 t_2@@1))
 :pattern ( (get_Tree_right_1704 t_2@@1))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@15 () T@PolymorphicMapType_4293)
(declare-fun tree@0 () T@TreeDomainType_1704)
(declare-fun left@0 () T@TreeDomainType_1704)
(declare-fun list_2@0 () T@ListDomainType_1718)
(declare-fun bigTree@0 () T@TreeDomainType_1722)
(set-info :boogie-vc-id destructors_1)
(set-option :timeout 0)
(set-option :rlimit 0)
(set-option :smt.AUTO_CONFIG false)
(set-option :smt.PHASE_SELECTION 0)
(set-option :smt.RESTART_STRATEGY 0)
(set-option :smt.RESTART_FACTOR |1.5|)
(set-option :smt.ARITH.RANDOM_INITIAL_VALUE true)
(set-option :smt.CASE_SPLIT 3)
(set-option :smt.DELAY_UNITS true)
(set-option :NNF.SK_HACK true)
(set-option :smt.MBQI false)
(set-option :smt.QI.EAGER_THRESHOLD 100)
(set-option :smt.BV.REFLECT true)
(set-option :smt.qi.max_multi_patterns 1000)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
(assert (not
 (=> (= (ControlFlow 0 0) 10) (let ((anon0_correct  (=> (and (state Heap@@15 ZeroMask) AssumePermUpperBound) (=> (and (and (= tree@0 (Node_1_3 42 (Node_1_3 420 Leaf_1753 Leaf_1753) Leaf_1753)) (state Heap@@15 ZeroMask)) (and (= left@0 (get_Tree_left_1704 tree@0)) (state Heap@@15 ZeroMask))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (= left@0 (get_Tree_left_1704 tree@0))) (=> (= left@0 (get_Tree_left_1704 tree@0)) (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 8)) (= left@0 (Node_1_3 420 Leaf_1753 Leaf_1753))) (=> (= left@0 (Node_1_3 420 Leaf_1753 Leaf_1753)) (=> (state Heap@@15 ZeroMask) (=> (and (= list_2@0 (Cons_5 true (Cons_5 true (Cons_5 true (Cons_5 true (Cons_5 true (Cons_5 true Nil_1866))))))) (state Heap@@15 ZeroMask)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (get_List_value_1718 list_2@0)) (=> (get_List_value_1718 list_2@0) (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 6)) (get_List_value_1718 (get_List_tail_1718 list_2@0))) (=> (get_List_value_1718 (get_List_tail_1718 list_2@0)) (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 5)) (get_List_value_1718 (get_List_tail_1718 (get_List_tail_1718 (get_List_tail_1718 (get_List_tail_1718 (get_List_tail_1718 list_2@0))))))) (=> (get_List_value_1718 (get_List_tail_1718 (get_List_tail_1718 (get_List_tail_1718 (get_List_tail_1718 (get_List_tail_1718 list_2@0)))))) (=> (state Heap@@15 ZeroMask) (=> (and (= bigTree@0 (Node_1_5 true (Node_1_5 true (Node_1_5 true (Node_1_5 true (Node_1_5 true (Node_1_5 true (Node_1_5 true Leaf_2007 Leaf_2007) (Node_1_5 true Leaf_2007 Leaf_2007)) (Node_1_5 true Leaf_2007 Leaf_2007)) (Node_1_5 true Leaf_2007 Leaf_2007)) (Node_1_5 true Leaf_2007 Leaf_2007)) Leaf_2007) (Node_1_5 false Leaf_2007 (Node_1_5 false Leaf_2007 (Node_1_5 false Leaf_2007 (Node_1_5 false Leaf_2007 (Node_1_5 false Leaf_2007 (Node_1_5 false Leaf_2007 Leaf_2007)))))))) (state Heap@@15 ZeroMask)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (get_Tree_value_2217 (get_Tree_left_1722 (get_Tree_left_1722 (get_Tree_left_1722 (get_Tree_left_1722 bigTree@0)))))) (=> (get_Tree_value_2217 (get_Tree_left_1722 (get_Tree_left_1722 (get_Tree_left_1722 (get_Tree_left_1722 bigTree@0))))) (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 3)) (get_Tree_value_2217 (get_Tree_right_2248 (get_Tree_left_1722 (get_Tree_left_1722 bigTree@0))))) (=> (get_Tree_value_2217 (get_Tree_right_2248 (get_Tree_left_1722 (get_Tree_left_1722 bigTree@0)))) (=> (and (state Heap@@15 ZeroMask) (= (ControlFlow 0 2) (- 0 1))) (not (get_Tree_value_2217 (get_Tree_right_2248 (get_Tree_right_2248 bigTree@0)))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 10) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
