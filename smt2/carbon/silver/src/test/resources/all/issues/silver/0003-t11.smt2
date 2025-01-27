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
(declare-sort T@Field_4748_53 0)
(declare-sort T@Field_4761_4762 0)
(declare-sort T@Field_8074_1186 0)
(declare-sort T@Field_2343_14437 0)
(declare-sort T@Field_2343_14304 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_4709 0)) (((PolymorphicMapType_4709 (|PolymorphicMapType_4709_2343_1186#PolymorphicMapType_4709| (Array T@Ref T@Field_8074_1186 Real)) (|PolymorphicMapType_4709_2343_53#PolymorphicMapType_4709| (Array T@Ref T@Field_4748_53 Real)) (|PolymorphicMapType_4709_2343_4762#PolymorphicMapType_4709| (Array T@Ref T@Field_4761_4762 Real)) (|PolymorphicMapType_4709_2343_14304#PolymorphicMapType_4709| (Array T@Ref T@Field_2343_14304 Real)) (|PolymorphicMapType_4709_2343_18559#PolymorphicMapType_4709| (Array T@Ref T@Field_2343_14437 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5237 0)) (((PolymorphicMapType_5237 (|PolymorphicMapType_5237_4748_53#PolymorphicMapType_5237| (Array T@Ref T@Field_4748_53 Bool)) (|PolymorphicMapType_5237_4748_4762#PolymorphicMapType_5237| (Array T@Ref T@Field_4761_4762 Bool)) (|PolymorphicMapType_5237_4748_1186#PolymorphicMapType_5237| (Array T@Ref T@Field_8074_1186 Bool)) (|PolymorphicMapType_5237_4748_14304#PolymorphicMapType_5237| (Array T@Ref T@Field_2343_14304 Bool)) (|PolymorphicMapType_5237_4748_15615#PolymorphicMapType_5237| (Array T@Ref T@Field_2343_14437 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4688 0)) (((PolymorphicMapType_4688 (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| (Array T@Ref T@Field_4748_53 Bool)) (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| (Array T@Ref T@Field_4761_4762 T@Ref)) (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| (Array T@Ref T@Field_8074_1186 Int)) (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| (Array T@Ref T@Field_2343_14437 T@PolymorphicMapType_5237)) (|PolymorphicMapType_4688_4748_14304#PolymorphicMapType_4688| (Array T@Ref T@Field_2343_14304 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_4748_53)
(declare-fun f_7 () T@Field_8074_1186)
(declare-fun succHeap (T@PolymorphicMapType_4688 T@PolymorphicMapType_4688) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4688 T@PolymorphicMapType_4688) Bool)
(declare-fun state (T@PolymorphicMapType_4688 T@PolymorphicMapType_4709) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4709) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5237)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4688 T@PolymorphicMapType_4688 T@PolymorphicMapType_4709) Bool)
(declare-fun IsPredicateField_2343_14395 (T@Field_2343_14304) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2343 (T@Field_2343_14304) T@Field_2343_14437)
(declare-fun HasDirectPerm_2343_14368 (T@PolymorphicMapType_4709 T@Ref T@Field_2343_14304) Bool)
(declare-fun IsWandField_2343_16142 (T@Field_2343_14304) Bool)
(declare-fun WandMaskField_2343 (T@Field_2343_14304) T@Field_2343_14437)
(declare-fun dummyHeap () T@PolymorphicMapType_4688)
(declare-fun ZeroMask () T@PolymorphicMapType_4709)
(declare-fun InsidePredicate_4748_4748 (T@Field_2343_14304 T@FrameType T@Field_2343_14304 T@FrameType) Bool)
(declare-fun IsPredicateField_2343_1186 (T@Field_8074_1186) Bool)
(declare-fun IsWandField_2343_1186 (T@Field_8074_1186) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2343_19688 (T@Field_2343_14437) Bool)
(declare-fun IsWandField_2343_19704 (T@Field_2343_14437) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2343_4762 (T@Field_4761_4762) Bool)
(declare-fun IsWandField_2343_4762 (T@Field_4761_4762) Bool)
(declare-fun IsPredicateField_2343_53 (T@Field_4748_53) Bool)
(declare-fun IsWandField_2343_53 (T@Field_4748_53) Bool)
(declare-fun HasDirectPerm_2343_20142 (T@PolymorphicMapType_4709 T@Ref T@Field_2343_14437) Bool)
(declare-fun HasDirectPerm_2343_4762 (T@PolymorphicMapType_4709 T@Ref T@Field_4761_4762) Bool)
(declare-fun HasDirectPerm_2343_53 (T@PolymorphicMapType_4709 T@Ref T@Field_4748_53) Bool)
(declare-fun HasDirectPerm_2343_1186 (T@PolymorphicMapType_4709 T@Ref T@Field_8074_1186) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4709 T@PolymorphicMapType_4709 T@PolymorphicMapType_4709) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_4688) (Heap1 T@PolymorphicMapType_4688) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4688) (Mask T@PolymorphicMapType_4709) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4688) (Heap1@@0 T@PolymorphicMapType_4688) (Heap2 T@PolymorphicMapType_4688) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_2343_14437) ) (!  (not (select (|PolymorphicMapType_5237_4748_15615#PolymorphicMapType_5237| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5237_4748_15615#PolymorphicMapType_5237| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_2343_14304) ) (!  (not (select (|PolymorphicMapType_5237_4748_14304#PolymorphicMapType_5237| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5237_4748_14304#PolymorphicMapType_5237| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8074_1186) ) (!  (not (select (|PolymorphicMapType_5237_4748_1186#PolymorphicMapType_5237| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5237_4748_1186#PolymorphicMapType_5237| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4761_4762) ) (!  (not (select (|PolymorphicMapType_5237_4748_4762#PolymorphicMapType_5237| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5237_4748_4762#PolymorphicMapType_5237| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4748_53) ) (!  (not (select (|PolymorphicMapType_5237_4748_53#PolymorphicMapType_5237| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5237_4748_53#PolymorphicMapType_5237| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4688) (ExhaleHeap T@PolymorphicMapType_4688) (Mask@@0 T@PolymorphicMapType_4709) (pm_f T@Field_2343_14304) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2343_14368 Mask@@0 null pm_f) (IsPredicateField_2343_14395 pm_f)) (= (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@0) null (PredicateMaskField_2343 pm_f)) (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| ExhaleHeap) null (PredicateMaskField_2343 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_2343_14395 pm_f) (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| ExhaleHeap) null (PredicateMaskField_2343 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4688) (ExhaleHeap@@0 T@PolymorphicMapType_4688) (Mask@@1 T@PolymorphicMapType_4709) (pm_f@@0 T@Field_2343_14304) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2343_14368 Mask@@1 null pm_f@@0) (IsWandField_2343_16142 pm_f@@0)) (= (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@1) null (WandMaskField_2343 pm_f@@0)) (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| ExhaleHeap@@0) null (WandMaskField_2343 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_2343_16142 pm_f@@0) (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| ExhaleHeap@@0) null (WandMaskField_2343 pm_f@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4688) (ExhaleHeap@@1 T@PolymorphicMapType_4688) (Mask@@2 T@PolymorphicMapType_4709) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| Heap@@2) o_1 $allocated) (select (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_2343_14304) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4748_4748 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4748_4748 p v_1 p w))
)))
(assert  (not (IsPredicateField_2343_1186 f_7)))
(assert  (not (IsWandField_2343_1186 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4688) (ExhaleHeap@@2 T@PolymorphicMapType_4688) (Mask@@3 T@PolymorphicMapType_4709) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_4709) (o_2@@4 T@Ref) (f_4@@4 T@Field_2343_14437) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_4709_2343_18559#PolymorphicMapType_4709| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_2343_19688 f_4@@4))) (not (IsWandField_2343_19704 f_4@@4))) (<= (select (|PolymorphicMapType_4709_2343_18559#PolymorphicMapType_4709| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_4709_2343_18559#PolymorphicMapType_4709| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_4709) (o_2@@5 T@Ref) (f_4@@5 T@Field_2343_14304) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_4709_2343_14304#PolymorphicMapType_4709| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_2343_14395 f_4@@5))) (not (IsWandField_2343_16142 f_4@@5))) (<= (select (|PolymorphicMapType_4709_2343_14304#PolymorphicMapType_4709| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_4709_2343_14304#PolymorphicMapType_4709| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_4709) (o_2@@6 T@Ref) (f_4@@6 T@Field_4761_4762) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_4709_2343_4762#PolymorphicMapType_4709| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_2343_4762 f_4@@6))) (not (IsWandField_2343_4762 f_4@@6))) (<= (select (|PolymorphicMapType_4709_2343_4762#PolymorphicMapType_4709| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_4709_2343_4762#PolymorphicMapType_4709| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_4709) (o_2@@7 T@Ref) (f_4@@7 T@Field_4748_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_4709_2343_53#PolymorphicMapType_4709| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2343_53 f_4@@7))) (not (IsWandField_2343_53 f_4@@7))) (<= (select (|PolymorphicMapType_4709_2343_53#PolymorphicMapType_4709| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_4709_2343_53#PolymorphicMapType_4709| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_4709) (o_2@@8 T@Ref) (f_4@@8 T@Field_8074_1186) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_4709_2343_1186#PolymorphicMapType_4709| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2343_1186 f_4@@8))) (not (IsWandField_2343_1186 f_4@@8))) (<= (select (|PolymorphicMapType_4709_2343_1186#PolymorphicMapType_4709| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_4709_2343_1186#PolymorphicMapType_4709| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_4709) (o_2@@9 T@Ref) (f_4@@9 T@Field_2343_14437) ) (! (= (HasDirectPerm_2343_20142 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_4709_2343_18559#PolymorphicMapType_4709| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2343_20142 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4709) (o_2@@10 T@Ref) (f_4@@10 T@Field_2343_14304) ) (! (= (HasDirectPerm_2343_14368 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_4709_2343_14304#PolymorphicMapType_4709| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2343_14368 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4709) (o_2@@11 T@Ref) (f_4@@11 T@Field_4761_4762) ) (! (= (HasDirectPerm_2343_4762 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_4709_2343_4762#PolymorphicMapType_4709| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2343_4762 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4709) (o_2@@12 T@Ref) (f_4@@12 T@Field_4748_53) ) (! (= (HasDirectPerm_2343_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_4709_2343_53#PolymorphicMapType_4709| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2343_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4709) (o_2@@13 T@Ref) (f_4@@13 T@Field_8074_1186) ) (! (= (HasDirectPerm_2343_1186 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_4709_2343_1186#PolymorphicMapType_4709| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2343_1186 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4688) (ExhaleHeap@@3 T@PolymorphicMapType_4688) (Mask@@14 T@PolymorphicMapType_4709) (pm_f@@1 T@Field_2343_14304) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_2343_14368 Mask@@14 null pm_f@@1) (IsPredicateField_2343_14395 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_4748_53) ) (!  (=> (select (|PolymorphicMapType_5237_4748_53#PolymorphicMapType_5237| (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@4) null (PredicateMaskField_2343 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| Heap@@4) o2 f_2) (select (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_4761_4762) ) (!  (=> (select (|PolymorphicMapType_5237_4748_4762#PolymorphicMapType_5237| (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@4) null (PredicateMaskField_2343 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_8074_1186) ) (!  (=> (select (|PolymorphicMapType_5237_4748_1186#PolymorphicMapType_5237| (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@4) null (PredicateMaskField_2343 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_2343_14304) ) (!  (=> (select (|PolymorphicMapType_5237_4748_14304#PolymorphicMapType_5237| (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@4) null (PredicateMaskField_2343 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_4688_4748_14304#PolymorphicMapType_4688| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_4688_4748_14304#PolymorphicMapType_4688| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4688_4748_14304#PolymorphicMapType_4688| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_2343_14437) ) (!  (=> (select (|PolymorphicMapType_5237_4748_15615#PolymorphicMapType_5237| (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@4) null (PredicateMaskField_2343 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@4) o2@@3 f_2@@3) (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_2343_14395 pm_f@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4688) (ExhaleHeap@@4 T@PolymorphicMapType_4688) (Mask@@15 T@PolymorphicMapType_4709) (pm_f@@2 T@Field_2343_14304) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_2343_14368 Mask@@15 null pm_f@@2) (IsWandField_2343_16142 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_4748_53) ) (!  (=> (select (|PolymorphicMapType_5237_4748_53#PolymorphicMapType_5237| (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@5) null (WandMaskField_2343 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_4761_4762) ) (!  (=> (select (|PolymorphicMapType_5237_4748_4762#PolymorphicMapType_5237| (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@5) null (WandMaskField_2343 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_8074_1186) ) (!  (=> (select (|PolymorphicMapType_5237_4748_1186#PolymorphicMapType_5237| (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@5) null (WandMaskField_2343 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_2343_14304) ) (!  (=> (select (|PolymorphicMapType_5237_4748_14304#PolymorphicMapType_5237| (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@5) null (WandMaskField_2343 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_4688_4748_14304#PolymorphicMapType_4688| Heap@@5) o2@@7 f_2@@7) (select (|PolymorphicMapType_4688_4748_14304#PolymorphicMapType_4688| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4688_4748_14304#PolymorphicMapType_4688| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_2343_14437) ) (!  (=> (select (|PolymorphicMapType_5237_4748_15615#PolymorphicMapType_5237| (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@5) null (WandMaskField_2343 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@5) o2@@8 f_2@@8) (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_2343_16142 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4688) (ExhaleHeap@@5 T@PolymorphicMapType_4688) (Mask@@16 T@PolymorphicMapType_4709) (o_1@@0 T@Ref) (f_2@@9 T@Field_2343_14437) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_2343_20142 Mask@@16 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@6) o_1@@0 f_2@@9) (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4688) (ExhaleHeap@@6 T@PolymorphicMapType_4688) (Mask@@17 T@PolymorphicMapType_4709) (o_1@@1 T@Ref) (f_2@@10 T@Field_2343_14304) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_2343_14368 Mask@@17 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_4688_4748_14304#PolymorphicMapType_4688| Heap@@7) o_1@@1 f_2@@10) (select (|PolymorphicMapType_4688_4748_14304#PolymorphicMapType_4688| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_4688_4748_14304#PolymorphicMapType_4688| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4688) (ExhaleHeap@@7 T@PolymorphicMapType_4688) (Mask@@18 T@PolymorphicMapType_4709) (o_1@@2 T@Ref) (f_2@@11 T@Field_4761_4762) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_2343_4762 Mask@@18 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| Heap@@8) o_1@@2 f_2@@11) (select (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4688) (ExhaleHeap@@8 T@PolymorphicMapType_4688) (Mask@@19 T@PolymorphicMapType_4709) (o_1@@3 T@Ref) (f_2@@12 T@Field_4748_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_2343_53 Mask@@19 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| Heap@@9) o_1@@3 f_2@@12) (select (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4688) (ExhaleHeap@@9 T@PolymorphicMapType_4688) (Mask@@20 T@PolymorphicMapType_4709) (o_1@@4 T@Ref) (f_2@@13 T@Field_8074_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_2343_1186 Mask@@20 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| Heap@@10) o_1@@4 f_2@@13) (select (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_2343_14437) ) (! (= (select (|PolymorphicMapType_4709_2343_18559#PolymorphicMapType_4709| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4709_2343_18559#PolymorphicMapType_4709| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_2343_14304) ) (! (= (select (|PolymorphicMapType_4709_2343_14304#PolymorphicMapType_4709| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4709_2343_14304#PolymorphicMapType_4709| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_4761_4762) ) (! (= (select (|PolymorphicMapType_4709_2343_4762#PolymorphicMapType_4709| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4709_2343_4762#PolymorphicMapType_4709| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_4748_53) ) (! (= (select (|PolymorphicMapType_4709_2343_53#PolymorphicMapType_4709| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4709_2343_53#PolymorphicMapType_4709| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_8074_1186) ) (! (= (select (|PolymorphicMapType_4709_2343_1186#PolymorphicMapType_4709| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4709_2343_1186#PolymorphicMapType_4709| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4709) (SummandMask1 T@PolymorphicMapType_4709) (SummandMask2 T@PolymorphicMapType_4709) (o_2@@19 T@Ref) (f_4@@19 T@Field_2343_14437) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4709_2343_18559#PolymorphicMapType_4709| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_4709_2343_18559#PolymorphicMapType_4709| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_4709_2343_18559#PolymorphicMapType_4709| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4709_2343_18559#PolymorphicMapType_4709| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4709_2343_18559#PolymorphicMapType_4709| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4709_2343_18559#PolymorphicMapType_4709| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4709) (SummandMask1@@0 T@PolymorphicMapType_4709) (SummandMask2@@0 T@PolymorphicMapType_4709) (o_2@@20 T@Ref) (f_4@@20 T@Field_2343_14304) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4709_2343_14304#PolymorphicMapType_4709| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_4709_2343_14304#PolymorphicMapType_4709| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_4709_2343_14304#PolymorphicMapType_4709| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4709_2343_14304#PolymorphicMapType_4709| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4709_2343_14304#PolymorphicMapType_4709| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4709_2343_14304#PolymorphicMapType_4709| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4709) (SummandMask1@@1 T@PolymorphicMapType_4709) (SummandMask2@@1 T@PolymorphicMapType_4709) (o_2@@21 T@Ref) (f_4@@21 T@Field_4761_4762) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4709_2343_4762#PolymorphicMapType_4709| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_4709_2343_4762#PolymorphicMapType_4709| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_4709_2343_4762#PolymorphicMapType_4709| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4709_2343_4762#PolymorphicMapType_4709| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4709_2343_4762#PolymorphicMapType_4709| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4709_2343_4762#PolymorphicMapType_4709| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4709) (SummandMask1@@2 T@PolymorphicMapType_4709) (SummandMask2@@2 T@PolymorphicMapType_4709) (o_2@@22 T@Ref) (f_4@@22 T@Field_4748_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4709_2343_53#PolymorphicMapType_4709| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_4709_2343_53#PolymorphicMapType_4709| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_4709_2343_53#PolymorphicMapType_4709| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4709_2343_53#PolymorphicMapType_4709| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4709_2343_53#PolymorphicMapType_4709| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4709_2343_53#PolymorphicMapType_4709| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4709) (SummandMask1@@3 T@PolymorphicMapType_4709) (SummandMask2@@3 T@PolymorphicMapType_4709) (o_2@@23 T@Ref) (f_4@@23 T@Field_8074_1186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4709_2343_1186#PolymorphicMapType_4709| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_4709_2343_1186#PolymorphicMapType_4709| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_4709_2343_1186#PolymorphicMapType_4709| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4709_2343_1186#PolymorphicMapType_4709| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4709_2343_1186#PolymorphicMapType_4709| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4709_2343_1186#PolymorphicMapType_4709| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4688) (o T@Ref) (f_3 T@Field_2343_14304) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_4688 (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| Heap@@11) (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| Heap@@11) (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| Heap@@11) (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@11) (store (|PolymorphicMapType_4688_4748_14304#PolymorphicMapType_4688| Heap@@11) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4688 (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| Heap@@11) (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| Heap@@11) (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| Heap@@11) (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@11) (store (|PolymorphicMapType_4688_4748_14304#PolymorphicMapType_4688| Heap@@11) o f_3 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4688) (o@@0 T@Ref) (f_3@@0 T@Field_2343_14437) (v@@0 T@PolymorphicMapType_5237) ) (! (succHeap Heap@@12 (PolymorphicMapType_4688 (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| Heap@@12) (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| Heap@@12) (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| Heap@@12) (store (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@12) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4688_4748_14304#PolymorphicMapType_4688| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4688 (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| Heap@@12) (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| Heap@@12) (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| Heap@@12) (store (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@12) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4688_4748_14304#PolymorphicMapType_4688| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4688) (o@@1 T@Ref) (f_3@@1 T@Field_8074_1186) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_4688 (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| Heap@@13) (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| Heap@@13) (store (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| Heap@@13) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@13) (|PolymorphicMapType_4688_4748_14304#PolymorphicMapType_4688| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4688 (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| Heap@@13) (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| Heap@@13) (store (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| Heap@@13) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@13) (|PolymorphicMapType_4688_4748_14304#PolymorphicMapType_4688| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4688) (o@@2 T@Ref) (f_3@@2 T@Field_4761_4762) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_4688 (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| Heap@@14) (store (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| Heap@@14) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| Heap@@14) (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@14) (|PolymorphicMapType_4688_4748_14304#PolymorphicMapType_4688| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4688 (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| Heap@@14) (store (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| Heap@@14) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| Heap@@14) (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@14) (|PolymorphicMapType_4688_4748_14304#PolymorphicMapType_4688| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4688) (o@@3 T@Ref) (f_3@@3 T@Field_4748_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_4688 (store (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| Heap@@15) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| Heap@@15) (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| Heap@@15) (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@15) (|PolymorphicMapType_4688_4748_14304#PolymorphicMapType_4688| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4688 (store (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| Heap@@15) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| Heap@@15) (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| Heap@@15) (|PolymorphicMapType_4688_2343_14481#PolymorphicMapType_4688| Heap@@15) (|PolymorphicMapType_4688_4748_14304#PolymorphicMapType_4688| Heap@@15)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_4761_4762) (Heap@@16 T@PolymorphicMapType_4688) ) (!  (=> (select (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| Heap@@16) o@@4 $allocated) (select (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| Heap@@16) (select (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| Heap@@16) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4688_2218_2219#PolymorphicMapType_4688| Heap@@16) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_2343_14304) (v_1@@0 T@FrameType) (q T@Field_2343_14304) (w@@0 T@FrameType) (r T@Field_2343_14304) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4748_4748 p@@1 v_1@@0 q w@@0) (InsidePredicate_4748_4748 q w@@0 r u)) (InsidePredicate_4748_4748 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4748_4748 p@@1 v_1@@0 q w@@0) (InsidePredicate_4748_4748 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@17 () T@PolymorphicMapType_4688)
(declare-fun r_1 () T@Ref)
(declare-fun j@0 () Int)
(declare-fun j@1 () Int)
(set-info :boogie-vc-id t11)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon6_Else_correct true))
(let ((anon6_Then_correct  (=> (and (and (and (state Heap@@17 ZeroMask) (not (= r_1 null))) (and (= (select (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| Heap@@17) r_1 f_7) 2) (state Heap@@17 ZeroMask))) (and (and (< j@0 3) (state Heap@@17 ZeroMask)) (and (= j@1 (+ j@0 1)) (state Heap@@17 ZeroMask)))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (not (= r_1 null))) (=> (not (= r_1 null)) (=> (= (ControlFlow 0 4) (- 0 3)) (= (select (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| Heap@@17) r_1 f_7) 2)))))))
(let ((anon5_Then_correct  (=> (and (not (= r_1 null)) (= (ControlFlow 0 2) (- 0 1))) (HasDirectPerm_2343_1186 ZeroMask r_1 f_7))))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_4688_2215_53#PolymorphicMapType_4688| Heap@@17) r_1 $allocated) (not (= r_1 null))) (and (state Heap@@17 ZeroMask) (state Heap@@17 ZeroMask))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (not (= r_1 null))) (=> (not (= r_1 null)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (= (select (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| Heap@@17) r_1 f_7) 2)) (=> (= (select (|PolymorphicMapType_4688_2343_1186#PolymorphicMapType_4688| Heap@@17) r_1 f_7) 2) (and (and (=> (= (ControlFlow 0 7) 2) anon5_Then_correct) (=> (= (ControlFlow 0 7) 4) anon6_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon6_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 10) 7) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 7) (- 8))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
