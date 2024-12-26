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
(declare-sort T@Field_2598_53 0)
(declare-sort T@Field_2611_2612 0)
(declare-sort T@Field_2598_6851 0)
(declare-sort T@Field_2598_6718 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_2559 0)) (((PolymorphicMapType_2559 (|PolymorphicMapType_2559_2598_53#PolymorphicMapType_2559| (Array T@Ref T@Field_2598_53 Real)) (|PolymorphicMapType_2559_2598_2612#PolymorphicMapType_2559| (Array T@Ref T@Field_2611_2612 Real)) (|PolymorphicMapType_2559_2598_6718#PolymorphicMapType_2559| (Array T@Ref T@Field_2598_6718 Real)) (|PolymorphicMapType_2559_2598_10412#PolymorphicMapType_2559| (Array T@Ref T@Field_2598_6851 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3087 0)) (((PolymorphicMapType_3087 (|PolymorphicMapType_3087_2598_53#PolymorphicMapType_3087| (Array T@Ref T@Field_2598_53 Bool)) (|PolymorphicMapType_3087_2598_2612#PolymorphicMapType_3087| (Array T@Ref T@Field_2611_2612 Bool)) (|PolymorphicMapType_3087_2598_6718#PolymorphicMapType_3087| (Array T@Ref T@Field_2598_6718 Bool)) (|PolymorphicMapType_3087_2598_7831#PolymorphicMapType_3087| (Array T@Ref T@Field_2598_6851 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_2538 0)) (((PolymorphicMapType_2538 (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| (Array T@Ref T@Field_2598_53 Bool)) (|PolymorphicMapType_2538_1269_1270#PolymorphicMapType_2538| (Array T@Ref T@Field_2611_2612 T@Ref)) (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| (Array T@Ref T@Field_2598_6851 T@PolymorphicMapType_3087)) (|PolymorphicMapType_2538_2598_6718#PolymorphicMapType_2538| (Array T@Ref T@Field_2598_6718 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_2538 T@PolymorphicMapType_2538) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_2538 T@PolymorphicMapType_2538) Bool)
(declare-fun state (T@PolymorphicMapType_2538 T@PolymorphicMapType_2559) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_2559) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_3087)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_2538 T@PolymorphicMapType_2538 T@PolymorphicMapType_2559) Bool)
(declare-fun IsPredicateField_2598_6809 (T@Field_2598_6718) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2598 (T@Field_2598_6718) T@Field_2598_6851)
(declare-fun HasDirectPerm_2598_6782 (T@PolymorphicMapType_2559 T@Ref T@Field_2598_6718) Bool)
(declare-fun IsWandField_2598_8358 (T@Field_2598_6718) Bool)
(declare-fun WandMaskField_2598 (T@Field_2598_6718) T@Field_2598_6851)
(declare-fun dummyHeap () T@PolymorphicMapType_2538)
(declare-fun ZeroMask () T@PolymorphicMapType_2559)
(declare-fun $allocated () T@Field_2598_53)
(declare-fun InsidePredicate_2598_2598 (T@Field_2598_6718 T@FrameType T@Field_2598_6718 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2598_11321 (T@Field_2598_6851) Bool)
(declare-fun IsWandField_2598_11337 (T@Field_2598_6851) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2598_2612 (T@Field_2611_2612) Bool)
(declare-fun IsWandField_2598_2612 (T@Field_2611_2612) Bool)
(declare-fun IsPredicateField_2598_53 (T@Field_2598_53) Bool)
(declare-fun IsWandField_2598_53 (T@Field_2598_53) Bool)
(declare-fun HasDirectPerm_2598_11692 (T@PolymorphicMapType_2559 T@Ref T@Field_2598_6851) Bool)
(declare-fun HasDirectPerm_2598_2612 (T@PolymorphicMapType_2559 T@Ref T@Field_2611_2612) Bool)
(declare-fun HasDirectPerm_2598_53 (T@PolymorphicMapType_2559 T@Ref T@Field_2598_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_2559 T@PolymorphicMapType_2559 T@PolymorphicMapType_2559) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_2538) (Heap1 T@PolymorphicMapType_2538) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_2538) (Mask T@PolymorphicMapType_2559) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_2538) (Heap1@@0 T@PolymorphicMapType_2538) (Heap2 T@PolymorphicMapType_2538) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_2598_6851) ) (!  (not (select (|PolymorphicMapType_3087_2598_7831#PolymorphicMapType_3087| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3087_2598_7831#PolymorphicMapType_3087| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_2598_6718) ) (!  (not (select (|PolymorphicMapType_3087_2598_6718#PolymorphicMapType_3087| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3087_2598_6718#PolymorphicMapType_3087| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_2611_2612) ) (!  (not (select (|PolymorphicMapType_3087_2598_2612#PolymorphicMapType_3087| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3087_2598_2612#PolymorphicMapType_3087| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_2598_53) ) (!  (not (select (|PolymorphicMapType_3087_2598_53#PolymorphicMapType_3087| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3087_2598_53#PolymorphicMapType_3087| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_2538) (ExhaleHeap T@PolymorphicMapType_2538) (Mask@@0 T@PolymorphicMapType_2559) (pm_f_2 T@Field_2598_6718) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2598_6782 Mask@@0 null pm_f_2) (IsPredicateField_2598_6809 pm_f_2)) (= (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| Heap@@0) null (PredicateMaskField_2598 pm_f_2)) (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| ExhaleHeap) null (PredicateMaskField_2598 pm_f_2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_2598_6809 pm_f_2) (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| ExhaleHeap) null (PredicateMaskField_2598 pm_f_2)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_2538) (ExhaleHeap@@0 T@PolymorphicMapType_2538) (Mask@@1 T@PolymorphicMapType_2559) (pm_f_2@@0 T@Field_2598_6718) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2598_6782 Mask@@1 null pm_f_2@@0) (IsWandField_2598_8358 pm_f_2@@0)) (= (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| Heap@@1) null (WandMaskField_2598 pm_f_2@@0)) (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| ExhaleHeap@@0) null (WandMaskField_2598 pm_f_2@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_2598_8358 pm_f_2@@0) (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| ExhaleHeap@@0) null (WandMaskField_2598 pm_f_2@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_2538) (ExhaleHeap@@1 T@PolymorphicMapType_2538) (Mask@@2 T@PolymorphicMapType_2559) (pm_f_2@@1 T@Field_2598_6718) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_2598_6782 Mask@@2 null pm_f_2@@1) (IsPredicateField_2598_6809 pm_f_2@@1)) (and (and (and (forall ((o2_2 T@Ref) (f_9 T@Field_2598_53) ) (!  (=> (select (|PolymorphicMapType_3087_2598_53#PolymorphicMapType_3087| (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| Heap@@2) null (PredicateMaskField_2598 pm_f_2@@1))) o2_2 f_9) (= (select (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| Heap@@2) o2_2 f_9) (select (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| ExhaleHeap@@1) o2_2 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| ExhaleHeap@@1) o2_2 f_9))
)) (forall ((o2_2@@0 T@Ref) (f_9@@0 T@Field_2611_2612) ) (!  (=> (select (|PolymorphicMapType_3087_2598_2612#PolymorphicMapType_3087| (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| Heap@@2) null (PredicateMaskField_2598 pm_f_2@@1))) o2_2@@0 f_9@@0) (= (select (|PolymorphicMapType_2538_1269_1270#PolymorphicMapType_2538| Heap@@2) o2_2@@0 f_9@@0) (select (|PolymorphicMapType_2538_1269_1270#PolymorphicMapType_2538| ExhaleHeap@@1) o2_2@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2538_1269_1270#PolymorphicMapType_2538| ExhaleHeap@@1) o2_2@@0 f_9@@0))
))) (forall ((o2_2@@1 T@Ref) (f_9@@1 T@Field_2598_6718) ) (!  (=> (select (|PolymorphicMapType_3087_2598_6718#PolymorphicMapType_3087| (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| Heap@@2) null (PredicateMaskField_2598 pm_f_2@@1))) o2_2@@1 f_9@@1) (= (select (|PolymorphicMapType_2538_2598_6718#PolymorphicMapType_2538| Heap@@2) o2_2@@1 f_9@@1) (select (|PolymorphicMapType_2538_2598_6718#PolymorphicMapType_2538| ExhaleHeap@@1) o2_2@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2538_2598_6718#PolymorphicMapType_2538| ExhaleHeap@@1) o2_2@@1 f_9@@1))
))) (forall ((o2_2@@2 T@Ref) (f_9@@2 T@Field_2598_6851) ) (!  (=> (select (|PolymorphicMapType_3087_2598_7831#PolymorphicMapType_3087| (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| Heap@@2) null (PredicateMaskField_2598 pm_f_2@@1))) o2_2@@2 f_9@@2) (= (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| Heap@@2) o2_2@@2 f_9@@2) (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| ExhaleHeap@@1) o2_2@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| ExhaleHeap@@1) o2_2@@2 f_9@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_2598_6809 pm_f_2@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_2538) (ExhaleHeap@@2 T@PolymorphicMapType_2538) (Mask@@3 T@PolymorphicMapType_2559) (pm_f_2@@2 T@Field_2598_6718) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_2598_6782 Mask@@3 null pm_f_2@@2) (IsWandField_2598_8358 pm_f_2@@2)) (and (and (and (forall ((o2_2@@3 T@Ref) (f_9@@3 T@Field_2598_53) ) (!  (=> (select (|PolymorphicMapType_3087_2598_53#PolymorphicMapType_3087| (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| Heap@@3) null (WandMaskField_2598 pm_f_2@@2))) o2_2@@3 f_9@@3) (= (select (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| Heap@@3) o2_2@@3 f_9@@3) (select (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| ExhaleHeap@@2) o2_2@@3 f_9@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| ExhaleHeap@@2) o2_2@@3 f_9@@3))
)) (forall ((o2_2@@4 T@Ref) (f_9@@4 T@Field_2611_2612) ) (!  (=> (select (|PolymorphicMapType_3087_2598_2612#PolymorphicMapType_3087| (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| Heap@@3) null (WandMaskField_2598 pm_f_2@@2))) o2_2@@4 f_9@@4) (= (select (|PolymorphicMapType_2538_1269_1270#PolymorphicMapType_2538| Heap@@3) o2_2@@4 f_9@@4) (select (|PolymorphicMapType_2538_1269_1270#PolymorphicMapType_2538| ExhaleHeap@@2) o2_2@@4 f_9@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2538_1269_1270#PolymorphicMapType_2538| ExhaleHeap@@2) o2_2@@4 f_9@@4))
))) (forall ((o2_2@@5 T@Ref) (f_9@@5 T@Field_2598_6718) ) (!  (=> (select (|PolymorphicMapType_3087_2598_6718#PolymorphicMapType_3087| (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| Heap@@3) null (WandMaskField_2598 pm_f_2@@2))) o2_2@@5 f_9@@5) (= (select (|PolymorphicMapType_2538_2598_6718#PolymorphicMapType_2538| Heap@@3) o2_2@@5 f_9@@5) (select (|PolymorphicMapType_2538_2598_6718#PolymorphicMapType_2538| ExhaleHeap@@2) o2_2@@5 f_9@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2538_2598_6718#PolymorphicMapType_2538| ExhaleHeap@@2) o2_2@@5 f_9@@5))
))) (forall ((o2_2@@6 T@Ref) (f_9@@6 T@Field_2598_6851) ) (!  (=> (select (|PolymorphicMapType_3087_2598_7831#PolymorphicMapType_3087| (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| Heap@@3) null (WandMaskField_2598 pm_f_2@@2))) o2_2@@6 f_9@@6) (= (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| Heap@@3) o2_2@@6 f_9@@6) (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| ExhaleHeap@@2) o2_2@@6 f_9@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| ExhaleHeap@@2) o2_2@@6 f_9@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_2598_8358 pm_f_2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_2538) (ExhaleHeap@@3 T@PolymorphicMapType_2538) (Mask@@4 T@PolymorphicMapType_2559) (o_6 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| Heap@@4) o_6 $allocated) (select (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| ExhaleHeap@@3) o_6 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| ExhaleHeap@@3) o_6 $allocated))
)))
(assert (forall ((p T@Field_2598_6718) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_2598_2598 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_2598_2598 p v_1 p w))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_2538) (ExhaleHeap@@4 T@PolymorphicMapType_2538) (Mask@@5 T@PolymorphicMapType_2559) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_2559) (o_2@@3 T@Ref) (f_4@@3 T@Field_2598_6851) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_2559_2598_10412#PolymorphicMapType_2559| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_2598_11321 f_4@@3))) (not (IsWandField_2598_11337 f_4@@3))) (<= (select (|PolymorphicMapType_2559_2598_10412#PolymorphicMapType_2559| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_2559_2598_10412#PolymorphicMapType_2559| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_2559) (o_2@@4 T@Ref) (f_4@@4 T@Field_2598_6718) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_2559_2598_6718#PolymorphicMapType_2559| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2598_6809 f_4@@4))) (not (IsWandField_2598_8358 f_4@@4))) (<= (select (|PolymorphicMapType_2559_2598_6718#PolymorphicMapType_2559| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_2559_2598_6718#PolymorphicMapType_2559| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_2559) (o_2@@5 T@Ref) (f_4@@5 T@Field_2611_2612) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_2559_2598_2612#PolymorphicMapType_2559| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2598_2612 f_4@@5))) (not (IsWandField_2598_2612 f_4@@5))) (<= (select (|PolymorphicMapType_2559_2598_2612#PolymorphicMapType_2559| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_2559_2598_2612#PolymorphicMapType_2559| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_2559) (o_2@@6 T@Ref) (f_4@@6 T@Field_2598_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_2559_2598_53#PolymorphicMapType_2559| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_2598_53 f_4@@6))) (not (IsWandField_2598_53 f_4@@6))) (<= (select (|PolymorphicMapType_2559_2598_53#PolymorphicMapType_2559| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_2559_2598_53#PolymorphicMapType_2559| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_2559) (o_2@@7 T@Ref) (f_4@@7 T@Field_2598_6851) ) (! (= (HasDirectPerm_2598_11692 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_2559_2598_10412#PolymorphicMapType_2559| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2598_11692 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_2559) (o_2@@8 T@Ref) (f_4@@8 T@Field_2598_6718) ) (! (= (HasDirectPerm_2598_6782 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_2559_2598_6718#PolymorphicMapType_2559| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2598_6782 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_2559) (o_2@@9 T@Ref) (f_4@@9 T@Field_2611_2612) ) (! (= (HasDirectPerm_2598_2612 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_2559_2598_2612#PolymorphicMapType_2559| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2598_2612 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_2559) (o_2@@10 T@Ref) (f_4@@10 T@Field_2598_53) ) (! (= (HasDirectPerm_2598_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_2559_2598_53#PolymorphicMapType_2559| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2598_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_2538) (ExhaleHeap@@5 T@PolymorphicMapType_2538) (Mask@@14 T@PolymorphicMapType_2559) (o_6@@0 T@Ref) (f_9@@7 T@Field_2598_6851) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_2598_11692 Mask@@14 o_6@@0 f_9@@7) (= (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| Heap@@6) o_6@@0 f_9@@7) (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| ExhaleHeap@@5) o_6@@0 f_9@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| ExhaleHeap@@5) o_6@@0 f_9@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_2538) (ExhaleHeap@@6 T@PolymorphicMapType_2538) (Mask@@15 T@PolymorphicMapType_2559) (o_6@@1 T@Ref) (f_9@@8 T@Field_2598_6718) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_2598_6782 Mask@@15 o_6@@1 f_9@@8) (= (select (|PolymorphicMapType_2538_2598_6718#PolymorphicMapType_2538| Heap@@7) o_6@@1 f_9@@8) (select (|PolymorphicMapType_2538_2598_6718#PolymorphicMapType_2538| ExhaleHeap@@6) o_6@@1 f_9@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_2538_2598_6718#PolymorphicMapType_2538| ExhaleHeap@@6) o_6@@1 f_9@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_2538) (ExhaleHeap@@7 T@PolymorphicMapType_2538) (Mask@@16 T@PolymorphicMapType_2559) (o_6@@2 T@Ref) (f_9@@9 T@Field_2611_2612) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_2598_2612 Mask@@16 o_6@@2 f_9@@9) (= (select (|PolymorphicMapType_2538_1269_1270#PolymorphicMapType_2538| Heap@@8) o_6@@2 f_9@@9) (select (|PolymorphicMapType_2538_1269_1270#PolymorphicMapType_2538| ExhaleHeap@@7) o_6@@2 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_2538_1269_1270#PolymorphicMapType_2538| ExhaleHeap@@7) o_6@@2 f_9@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_2538) (ExhaleHeap@@8 T@PolymorphicMapType_2538) (Mask@@17 T@PolymorphicMapType_2559) (o_6@@3 T@Ref) (f_9@@10 T@Field_2598_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_2598_53 Mask@@17 o_6@@3 f_9@@10) (= (select (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| Heap@@9) o_6@@3 f_9@@10) (select (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| ExhaleHeap@@8) o_6@@3 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| ExhaleHeap@@8) o_6@@3 f_9@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_2598_6851) ) (! (= (select (|PolymorphicMapType_2559_2598_10412#PolymorphicMapType_2559| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2559_2598_10412#PolymorphicMapType_2559| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_2598_6718) ) (! (= (select (|PolymorphicMapType_2559_2598_6718#PolymorphicMapType_2559| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2559_2598_6718#PolymorphicMapType_2559| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_2611_2612) ) (! (= (select (|PolymorphicMapType_2559_2598_2612#PolymorphicMapType_2559| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2559_2598_2612#PolymorphicMapType_2559| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_2598_53) ) (! (= (select (|PolymorphicMapType_2559_2598_53#PolymorphicMapType_2559| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2559_2598_53#PolymorphicMapType_2559| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_2559) (SummandMask1 T@PolymorphicMapType_2559) (SummandMask2 T@PolymorphicMapType_2559) (o_2@@15 T@Ref) (f_4@@15 T@Field_2598_6851) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_2559_2598_10412#PolymorphicMapType_2559| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_2559_2598_10412#PolymorphicMapType_2559| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_2559_2598_10412#PolymorphicMapType_2559| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_2559_2598_10412#PolymorphicMapType_2559| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_2559_2598_10412#PolymorphicMapType_2559| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_2559_2598_10412#PolymorphicMapType_2559| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_2559) (SummandMask1@@0 T@PolymorphicMapType_2559) (SummandMask2@@0 T@PolymorphicMapType_2559) (o_2@@16 T@Ref) (f_4@@16 T@Field_2598_6718) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_2559_2598_6718#PolymorphicMapType_2559| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_2559_2598_6718#PolymorphicMapType_2559| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_2559_2598_6718#PolymorphicMapType_2559| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_2559_2598_6718#PolymorphicMapType_2559| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_2559_2598_6718#PolymorphicMapType_2559| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_2559_2598_6718#PolymorphicMapType_2559| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_2559) (SummandMask1@@1 T@PolymorphicMapType_2559) (SummandMask2@@1 T@PolymorphicMapType_2559) (o_2@@17 T@Ref) (f_4@@17 T@Field_2611_2612) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_2559_2598_2612#PolymorphicMapType_2559| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_2559_2598_2612#PolymorphicMapType_2559| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_2559_2598_2612#PolymorphicMapType_2559| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_2559_2598_2612#PolymorphicMapType_2559| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_2559_2598_2612#PolymorphicMapType_2559| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_2559_2598_2612#PolymorphicMapType_2559| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_2559) (SummandMask1@@2 T@PolymorphicMapType_2559) (SummandMask2@@2 T@PolymorphicMapType_2559) (o_2@@18 T@Ref) (f_4@@18 T@Field_2598_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_2559_2598_53#PolymorphicMapType_2559| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_2559_2598_53#PolymorphicMapType_2559| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_2559_2598_53#PolymorphicMapType_2559| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_2559_2598_53#PolymorphicMapType_2559| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_2559_2598_53#PolymorphicMapType_2559| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_2559_2598_53#PolymorphicMapType_2559| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_2538) (o_5 T@Ref) (f_10 T@Field_2598_6718) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_2538 (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| Heap@@10) (|PolymorphicMapType_2538_1269_1270#PolymorphicMapType_2538| Heap@@10) (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| Heap@@10) (store (|PolymorphicMapType_2538_2598_6718#PolymorphicMapType_2538| Heap@@10) o_5 f_10 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2538 (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| Heap@@10) (|PolymorphicMapType_2538_1269_1270#PolymorphicMapType_2538| Heap@@10) (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| Heap@@10) (store (|PolymorphicMapType_2538_2598_6718#PolymorphicMapType_2538| Heap@@10) o_5 f_10 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_2538) (o_5@@0 T@Ref) (f_10@@0 T@Field_2598_6851) (v@@0 T@PolymorphicMapType_3087) ) (! (succHeap Heap@@11 (PolymorphicMapType_2538 (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| Heap@@11) (|PolymorphicMapType_2538_1269_1270#PolymorphicMapType_2538| Heap@@11) (store (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| Heap@@11) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_2538_2598_6718#PolymorphicMapType_2538| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2538 (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| Heap@@11) (|PolymorphicMapType_2538_1269_1270#PolymorphicMapType_2538| Heap@@11) (store (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| Heap@@11) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_2538_2598_6718#PolymorphicMapType_2538| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_2538) (o_5@@1 T@Ref) (f_10@@1 T@Field_2611_2612) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_2538 (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| Heap@@12) (store (|PolymorphicMapType_2538_1269_1270#PolymorphicMapType_2538| Heap@@12) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| Heap@@12) (|PolymorphicMapType_2538_2598_6718#PolymorphicMapType_2538| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2538 (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| Heap@@12) (store (|PolymorphicMapType_2538_1269_1270#PolymorphicMapType_2538| Heap@@12) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| Heap@@12) (|PolymorphicMapType_2538_2598_6718#PolymorphicMapType_2538| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_2538) (o_5@@2 T@Ref) (f_10@@2 T@Field_2598_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_2538 (store (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| Heap@@13) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_2538_1269_1270#PolymorphicMapType_2538| Heap@@13) (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| Heap@@13) (|PolymorphicMapType_2538_2598_6718#PolymorphicMapType_2538| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2538 (store (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| Heap@@13) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_2538_1269_1270#PolymorphicMapType_2538| Heap@@13) (|PolymorphicMapType_2538_2598_6895#PolymorphicMapType_2538| Heap@@13) (|PolymorphicMapType_2538_2598_6718#PolymorphicMapType_2538| Heap@@13)))
)))
(assert (forall ((o_5@@3 T@Ref) (f_3 T@Field_2611_2612) (Heap@@14 T@PolymorphicMapType_2538) ) (!  (=> (select (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| Heap@@14) o_5@@3 $allocated) (select (|PolymorphicMapType_2538_1266_53#PolymorphicMapType_2538| Heap@@14) (select (|PolymorphicMapType_2538_1269_1270#PolymorphicMapType_2538| Heap@@14) o_5@@3 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_2538_1269_1270#PolymorphicMapType_2538| Heap@@14) o_5@@3 f_3))
)))
(assert (forall ((p@@1 T@Field_2598_6718) (v_1@@0 T@FrameType) (q T@Field_2598_6718) (w@@0 T@FrameType) (r T@Field_2598_6718) (u T@FrameType) ) (!  (=> (and (InsidePredicate_2598_2598 p@@1 v_1@@0 q w@@0) (InsidePredicate_2598_2598 q w@@0 r u)) (InsidePredicate_2598_2598 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2598_2598 p@@1 v_1@@0 q w@@0) (InsidePredicate_2598_2598 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id m)
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
 (=> (= (ControlFlow 0 0) 5) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
