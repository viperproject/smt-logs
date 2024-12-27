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
(declare-sort T@Field_9403_53 0)
(declare-sort T@Field_9416_9417 0)
(declare-sort T@Field_12729_1186 0)
(declare-sort T@Field_4334_28264 0)
(declare-sort T@Field_4334_28131 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_9364 0)) (((PolymorphicMapType_9364 (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| (Array T@Ref T@Field_12729_1186 Real)) (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| (Array T@Ref T@Field_9403_53 Real)) (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| (Array T@Ref T@Field_9416_9417 Real)) (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| (Array T@Ref T@Field_4334_28131 Real)) (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| (Array T@Ref T@Field_4334_28264 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9892 0)) (((PolymorphicMapType_9892 (|PolymorphicMapType_9892_9403_53#PolymorphicMapType_9892| (Array T@Ref T@Field_9403_53 Bool)) (|PolymorphicMapType_9892_9403_9417#PolymorphicMapType_9892| (Array T@Ref T@Field_9416_9417 Bool)) (|PolymorphicMapType_9892_9403_1186#PolymorphicMapType_9892| (Array T@Ref T@Field_12729_1186 Bool)) (|PolymorphicMapType_9892_9403_28131#PolymorphicMapType_9892| (Array T@Ref T@Field_4334_28131 Bool)) (|PolymorphicMapType_9892_9403_29442#PolymorphicMapType_9892| (Array T@Ref T@Field_4334_28264 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9343 0)) (((PolymorphicMapType_9343 (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| (Array T@Ref T@Field_9403_53 Bool)) (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| (Array T@Ref T@Field_9416_9417 T@Ref)) (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| (Array T@Ref T@Field_12729_1186 Int)) (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| (Array T@Ref T@Field_4334_28264 T@PolymorphicMapType_9892)) (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| (Array T@Ref T@Field_4334_28131 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_9403_53)
(declare-fun f1_1 () T@Field_12729_1186)
(declare-fun f2_1 () T@Field_12729_1186)
(declare-fun f3 () T@Field_12729_1186)
(declare-fun succHeap (T@PolymorphicMapType_9343 T@PolymorphicMapType_9343) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9343 T@PolymorphicMapType_9343) Bool)
(declare-fun state (T@PolymorphicMapType_9343 T@PolymorphicMapType_9364) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9364) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9892)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9343 T@PolymorphicMapType_9343 T@PolymorphicMapType_9364) Bool)
(declare-fun IsPredicateField_4334_28222 (T@Field_4334_28131) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4334 (T@Field_4334_28131) T@Field_4334_28264)
(declare-fun HasDirectPerm_4334_28195 (T@PolymorphicMapType_9364 T@Ref T@Field_4334_28131) Bool)
(declare-fun IsWandField_4334_29969 (T@Field_4334_28131) Bool)
(declare-fun WandMaskField_4334 (T@Field_4334_28131) T@Field_4334_28264)
(declare-fun dummyHeap () T@PolymorphicMapType_9343)
(declare-fun ZeroMask () T@PolymorphicMapType_9364)
(declare-fun InsidePredicate_9403_9403 (T@Field_4334_28131 T@FrameType T@Field_4334_28131 T@FrameType) Bool)
(declare-fun IsPredicateField_4334_1186 (T@Field_12729_1186) Bool)
(declare-fun IsWandField_4334_1186 (T@Field_12729_1186) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4334_33515 (T@Field_4334_28264) Bool)
(declare-fun IsWandField_4334_33531 (T@Field_4334_28264) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4334_9417 (T@Field_9416_9417) Bool)
(declare-fun IsWandField_4334_9417 (T@Field_9416_9417) Bool)
(declare-fun IsPredicateField_4334_53 (T@Field_9403_53) Bool)
(declare-fun IsWandField_4334_53 (T@Field_9403_53) Bool)
(declare-fun HasDirectPerm_4334_33969 (T@PolymorphicMapType_9364 T@Ref T@Field_4334_28264) Bool)
(declare-fun HasDirectPerm_4334_9417 (T@PolymorphicMapType_9364 T@Ref T@Field_9416_9417) Bool)
(declare-fun HasDirectPerm_4334_53 (T@PolymorphicMapType_9364 T@Ref T@Field_9403_53) Bool)
(declare-fun HasDirectPerm_4334_1186 (T@PolymorphicMapType_9364 T@Ref T@Field_12729_1186) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9364 T@PolymorphicMapType_9364 T@PolymorphicMapType_9364) Bool)
(assert (distinct f1_1 f2_1 f3)
)
(assert (forall ((Heap0 T@PolymorphicMapType_9343) (Heap1 T@PolymorphicMapType_9343) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9343) (Mask T@PolymorphicMapType_9364) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9343) (Heap1@@0 T@PolymorphicMapType_9343) (Heap2 T@PolymorphicMapType_9343) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4334_28264) ) (!  (not (select (|PolymorphicMapType_9892_9403_29442#PolymorphicMapType_9892| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9892_9403_29442#PolymorphicMapType_9892| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4334_28131) ) (!  (not (select (|PolymorphicMapType_9892_9403_28131#PolymorphicMapType_9892| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9892_9403_28131#PolymorphicMapType_9892| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_12729_1186) ) (!  (not (select (|PolymorphicMapType_9892_9403_1186#PolymorphicMapType_9892| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9892_9403_1186#PolymorphicMapType_9892| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9416_9417) ) (!  (not (select (|PolymorphicMapType_9892_9403_9417#PolymorphicMapType_9892| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9892_9403_9417#PolymorphicMapType_9892| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_9403_53) ) (!  (not (select (|PolymorphicMapType_9892_9403_53#PolymorphicMapType_9892| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9892_9403_53#PolymorphicMapType_9892| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9343) (ExhaleHeap T@PolymorphicMapType_9343) (Mask@@0 T@PolymorphicMapType_9364) (pm_f_4 T@Field_4334_28131) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4334_28195 Mask@@0 null pm_f_4) (IsPredicateField_4334_28222 pm_f_4)) (= (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@0) null (PredicateMaskField_4334 pm_f_4)) (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| ExhaleHeap) null (PredicateMaskField_4334 pm_f_4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4334_28222 pm_f_4) (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| ExhaleHeap) null (PredicateMaskField_4334 pm_f_4)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9343) (ExhaleHeap@@0 T@PolymorphicMapType_9343) (Mask@@1 T@PolymorphicMapType_9364) (pm_f_4@@0 T@Field_4334_28131) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4334_28195 Mask@@1 null pm_f_4@@0) (IsWandField_4334_29969 pm_f_4@@0)) (= (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@1) null (WandMaskField_4334 pm_f_4@@0)) (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| ExhaleHeap@@0) null (WandMaskField_4334 pm_f_4@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_4334_29969 pm_f_4@@0) (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| ExhaleHeap@@0) null (WandMaskField_4334 pm_f_4@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9343) (ExhaleHeap@@1 T@PolymorphicMapType_9343) (Mask@@2 T@PolymorphicMapType_9364) (o_10 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@2) o_10 $allocated) (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| ExhaleHeap@@1) o_10 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| ExhaleHeap@@1) o_10 $allocated))
)))
(assert (forall ((p T@Field_4334_28131) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9403_9403 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9403_9403 p v_1 p w))
)))
(assert  (not (IsPredicateField_4334_1186 f1_1)))
(assert  (not (IsWandField_4334_1186 f1_1)))
(assert  (not (IsPredicateField_4334_1186 f2_1)))
(assert  (not (IsWandField_4334_1186 f2_1)))
(assert  (not (IsPredicateField_4334_1186 f3)))
(assert  (not (IsWandField_4334_1186 f3)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9343) (ExhaleHeap@@2 T@PolymorphicMapType_9343) (Mask@@3 T@PolymorphicMapType_9364) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_9364) (o_2@@4 T@Ref) (f_4@@4 T@Field_4334_28264) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_4334_33515 f_4@@4))) (not (IsWandField_4334_33531 f_4@@4))) (<= (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_9364) (o_2@@5 T@Ref) (f_4@@5 T@Field_4334_28131) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_4334_28222 f_4@@5))) (not (IsWandField_4334_29969 f_4@@5))) (<= (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_9364) (o_2@@6 T@Ref) (f_4@@6 T@Field_9416_9417) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4334_9417 f_4@@6))) (not (IsWandField_4334_9417 f_4@@6))) (<= (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_9364) (o_2@@7 T@Ref) (f_4@@7 T@Field_9403_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4334_53 f_4@@7))) (not (IsWandField_4334_53 f_4@@7))) (<= (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_9364) (o_2@@8 T@Ref) (f_4@@8 T@Field_12729_1186) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4334_1186 f_4@@8))) (not (IsWandField_4334_1186 f_4@@8))) (<= (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_9364) (o_2@@9 T@Ref) (f_4@@9 T@Field_4334_28264) ) (! (= (HasDirectPerm_4334_33969 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4334_33969 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9364) (o_2@@10 T@Ref) (f_4@@10 T@Field_4334_28131) ) (! (= (HasDirectPerm_4334_28195 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4334_28195 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9364) (o_2@@11 T@Ref) (f_4@@11 T@Field_9416_9417) ) (! (= (HasDirectPerm_4334_9417 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4334_9417 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9364) (o_2@@12 T@Ref) (f_4@@12 T@Field_9403_53) ) (! (= (HasDirectPerm_4334_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4334_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9364) (o_2@@13 T@Ref) (f_4@@13 T@Field_12729_1186) ) (! (= (HasDirectPerm_4334_1186 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4334_1186 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9343) (ExhaleHeap@@3 T@PolymorphicMapType_9343) (Mask@@14 T@PolymorphicMapType_9364) (pm_f_4@@1 T@Field_4334_28131) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_4334_28195 Mask@@14 null pm_f_4@@1) (IsPredicateField_4334_28222 pm_f_4@@1)) (and (and (and (and (forall ((o2_4 T@Ref) (f_14 T@Field_9403_53) ) (!  (=> (select (|PolymorphicMapType_9892_9403_53#PolymorphicMapType_9892| (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@4) null (PredicateMaskField_4334 pm_f_4@@1))) o2_4 f_14) (= (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@4) o2_4 f_14) (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| ExhaleHeap@@3) o2_4 f_14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| ExhaleHeap@@3) o2_4 f_14))
)) (forall ((o2_4@@0 T@Ref) (f_14@@0 T@Field_9416_9417) ) (!  (=> (select (|PolymorphicMapType_9892_9403_9417#PolymorphicMapType_9892| (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@4) null (PredicateMaskField_4334 pm_f_4@@1))) o2_4@@0 f_14@@0) (= (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@4) o2_4@@0 f_14@@0) (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| ExhaleHeap@@3) o2_4@@0 f_14@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| ExhaleHeap@@3) o2_4@@0 f_14@@0))
))) (forall ((o2_4@@1 T@Ref) (f_14@@1 T@Field_12729_1186) ) (!  (=> (select (|PolymorphicMapType_9892_9403_1186#PolymorphicMapType_9892| (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@4) null (PredicateMaskField_4334 pm_f_4@@1))) o2_4@@1 f_14@@1) (= (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@4) o2_4@@1 f_14@@1) (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| ExhaleHeap@@3) o2_4@@1 f_14@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| ExhaleHeap@@3) o2_4@@1 f_14@@1))
))) (forall ((o2_4@@2 T@Ref) (f_14@@2 T@Field_4334_28131) ) (!  (=> (select (|PolymorphicMapType_9892_9403_28131#PolymorphicMapType_9892| (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@4) null (PredicateMaskField_4334 pm_f_4@@1))) o2_4@@2 f_14@@2) (= (select (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@4) o2_4@@2 f_14@@2) (select (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| ExhaleHeap@@3) o2_4@@2 f_14@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| ExhaleHeap@@3) o2_4@@2 f_14@@2))
))) (forall ((o2_4@@3 T@Ref) (f_14@@3 T@Field_4334_28264) ) (!  (=> (select (|PolymorphicMapType_9892_9403_29442#PolymorphicMapType_9892| (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@4) null (PredicateMaskField_4334 pm_f_4@@1))) o2_4@@3 f_14@@3) (= (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@4) o2_4@@3 f_14@@3) (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| ExhaleHeap@@3) o2_4@@3 f_14@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| ExhaleHeap@@3) o2_4@@3 f_14@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_4334_28222 pm_f_4@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9343) (ExhaleHeap@@4 T@PolymorphicMapType_9343) (Mask@@15 T@PolymorphicMapType_9364) (pm_f_4@@2 T@Field_4334_28131) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_4334_28195 Mask@@15 null pm_f_4@@2) (IsWandField_4334_29969 pm_f_4@@2)) (and (and (and (and (forall ((o2_4@@4 T@Ref) (f_14@@4 T@Field_9403_53) ) (!  (=> (select (|PolymorphicMapType_9892_9403_53#PolymorphicMapType_9892| (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@5) null (WandMaskField_4334 pm_f_4@@2))) o2_4@@4 f_14@@4) (= (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@5) o2_4@@4 f_14@@4) (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| ExhaleHeap@@4) o2_4@@4 f_14@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| ExhaleHeap@@4) o2_4@@4 f_14@@4))
)) (forall ((o2_4@@5 T@Ref) (f_14@@5 T@Field_9416_9417) ) (!  (=> (select (|PolymorphicMapType_9892_9403_9417#PolymorphicMapType_9892| (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@5) null (WandMaskField_4334 pm_f_4@@2))) o2_4@@5 f_14@@5) (= (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@5) o2_4@@5 f_14@@5) (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| ExhaleHeap@@4) o2_4@@5 f_14@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| ExhaleHeap@@4) o2_4@@5 f_14@@5))
))) (forall ((o2_4@@6 T@Ref) (f_14@@6 T@Field_12729_1186) ) (!  (=> (select (|PolymorphicMapType_9892_9403_1186#PolymorphicMapType_9892| (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@5) null (WandMaskField_4334 pm_f_4@@2))) o2_4@@6 f_14@@6) (= (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@5) o2_4@@6 f_14@@6) (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| ExhaleHeap@@4) o2_4@@6 f_14@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| ExhaleHeap@@4) o2_4@@6 f_14@@6))
))) (forall ((o2_4@@7 T@Ref) (f_14@@7 T@Field_4334_28131) ) (!  (=> (select (|PolymorphicMapType_9892_9403_28131#PolymorphicMapType_9892| (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@5) null (WandMaskField_4334 pm_f_4@@2))) o2_4@@7 f_14@@7) (= (select (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@5) o2_4@@7 f_14@@7) (select (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| ExhaleHeap@@4) o2_4@@7 f_14@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| ExhaleHeap@@4) o2_4@@7 f_14@@7))
))) (forall ((o2_4@@8 T@Ref) (f_14@@8 T@Field_4334_28264) ) (!  (=> (select (|PolymorphicMapType_9892_9403_29442#PolymorphicMapType_9892| (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@5) null (WandMaskField_4334 pm_f_4@@2))) o2_4@@8 f_14@@8) (= (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@5) o2_4@@8 f_14@@8) (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| ExhaleHeap@@4) o2_4@@8 f_14@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| ExhaleHeap@@4) o2_4@@8 f_14@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_4334_29969 pm_f_4@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9343) (ExhaleHeap@@5 T@PolymorphicMapType_9343) (Mask@@16 T@PolymorphicMapType_9364) (o_10@@0 T@Ref) (f_14@@9 T@Field_4334_28264) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_4334_33969 Mask@@16 o_10@@0 f_14@@9) (= (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@6) o_10@@0 f_14@@9) (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| ExhaleHeap@@5) o_10@@0 f_14@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| ExhaleHeap@@5) o_10@@0 f_14@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9343) (ExhaleHeap@@6 T@PolymorphicMapType_9343) (Mask@@17 T@PolymorphicMapType_9364) (o_10@@1 T@Ref) (f_14@@10 T@Field_4334_28131) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_4334_28195 Mask@@17 o_10@@1 f_14@@10) (= (select (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@7) o_10@@1 f_14@@10) (select (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| ExhaleHeap@@6) o_10@@1 f_14@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| ExhaleHeap@@6) o_10@@1 f_14@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9343) (ExhaleHeap@@7 T@PolymorphicMapType_9343) (Mask@@18 T@PolymorphicMapType_9364) (o_10@@2 T@Ref) (f_14@@11 T@Field_9416_9417) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_4334_9417 Mask@@18 o_10@@2 f_14@@11) (= (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@8) o_10@@2 f_14@@11) (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| ExhaleHeap@@7) o_10@@2 f_14@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| ExhaleHeap@@7) o_10@@2 f_14@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9343) (ExhaleHeap@@8 T@PolymorphicMapType_9343) (Mask@@19 T@PolymorphicMapType_9364) (o_10@@3 T@Ref) (f_14@@12 T@Field_9403_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_4334_53 Mask@@19 o_10@@3 f_14@@12) (= (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@9) o_10@@3 f_14@@12) (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| ExhaleHeap@@8) o_10@@3 f_14@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| ExhaleHeap@@8) o_10@@3 f_14@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9343) (ExhaleHeap@@9 T@PolymorphicMapType_9343) (Mask@@20 T@PolymorphicMapType_9364) (o_10@@4 T@Ref) (f_14@@13 T@Field_12729_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_4334_1186 Mask@@20 o_10@@4 f_14@@13) (= (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@10) o_10@@4 f_14@@13) (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| ExhaleHeap@@9) o_10@@4 f_14@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| ExhaleHeap@@9) o_10@@4 f_14@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4334_28264) ) (! (= (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_4334_28131) ) (! (= (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_9416_9417) ) (! (= (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_9403_53) ) (! (= (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_12729_1186) ) (! (= (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9364) (SummandMask1 T@PolymorphicMapType_9364) (SummandMask2 T@PolymorphicMapType_9364) (o_2@@19 T@Ref) (f_4@@19 T@Field_4334_28264) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9364) (SummandMask1@@0 T@PolymorphicMapType_9364) (SummandMask2@@0 T@PolymorphicMapType_9364) (o_2@@20 T@Ref) (f_4@@20 T@Field_4334_28131) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9364) (SummandMask1@@1 T@PolymorphicMapType_9364) (SummandMask2@@1 T@PolymorphicMapType_9364) (o_2@@21 T@Ref) (f_4@@21 T@Field_9416_9417) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9364) (SummandMask1@@2 T@PolymorphicMapType_9364) (SummandMask2@@2 T@PolymorphicMapType_9364) (o_2@@22 T@Ref) (f_4@@22 T@Field_9403_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9364) (SummandMask1@@3 T@PolymorphicMapType_9364) (SummandMask2@@3 T@PolymorphicMapType_9364) (o_2@@23 T@Ref) (f_4@@23 T@Field_12729_1186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9343) (o_9 T@Ref) (f_15 T@Field_4334_28131) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_9343 (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@11) (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@11) (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@11) (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@11) (store (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@11) o_9 f_15 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9343 (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@11) (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@11) (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@11) (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@11) (store (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@11) o_9 f_15 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9343) (o_9@@0 T@Ref) (f_15@@0 T@Field_4334_28264) (v@@0 T@PolymorphicMapType_9892) ) (! (succHeap Heap@@12 (PolymorphicMapType_9343 (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@12) (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@12) (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@12) (store (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@12) o_9@@0 f_15@@0 v@@0) (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9343 (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@12) (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@12) (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@12) (store (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@12) o_9@@0 f_15@@0 v@@0) (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9343) (o_9@@1 T@Ref) (f_15@@1 T@Field_12729_1186) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_9343 (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@13) (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@13) (store (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@13) o_9@@1 f_15@@1 v@@1) (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@13) (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9343 (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@13) (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@13) (store (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@13) o_9@@1 f_15@@1 v@@1) (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@13) (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9343) (o_9@@2 T@Ref) (f_15@@2 T@Field_9416_9417) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_9343 (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@14) (store (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@14) o_9@@2 f_15@@2 v@@2) (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@14) (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@14) (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9343 (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@14) (store (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@14) o_9@@2 f_15@@2 v@@2) (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@14) (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@14) (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9343) (o_9@@3 T@Ref) (f_15@@3 T@Field_9403_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_9343 (store (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@15) o_9@@3 f_15@@3 v@@3) (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@15) (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@15) (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@15) (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9343 (store (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@15) o_9@@3 f_15@@3 v@@3) (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@15) (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@15) (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@15) (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@15)))
)))
(assert (forall ((o_9@@4 T@Ref) (f_13 T@Field_9416_9417) (Heap@@16 T@PolymorphicMapType_9343) ) (!  (=> (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@16) o_9@@4 $allocated) (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@16) (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@16) o_9@@4 f_13) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@16) o_9@@4 f_13))
)))
(assert (forall ((p@@1 T@Field_4334_28131) (v_1@@0 T@FrameType) (q T@Field_4334_28131) (w@@0 T@FrameType) (r T@Field_4334_28131) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9403_9403 p@@1 v_1@@0 q w@@0) (InsidePredicate_9403_9403 q w@@0 r u)) (InsidePredicate_9403_9403 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9403_9403 p@@1 v_1@@0 q w@@0) (InsidePredicate_9403_9403 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@17 () T@PolymorphicMapType_9343)
(declare-fun r_45 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_9364)
(declare-fun r_15 () T@Ref)
(declare-fun r_13 () T@Ref)
(declare-fun r_42 () T@Ref)
(declare-fun r_32 () T@Ref)
(declare-fun r_30 () T@Ref)
(declare-fun r1 () T@Ref)
(declare-fun r2 () T@Ref)
(set-info :boogie-vc-id noFields2)
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
 (=> (= (ControlFlow 0 0) 50) (let ((anon25_correct true))
(let ((anon40_Else_correct  (=> (and (>= 0 (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_45 f1_1)) (= (ControlFlow 0 35) 31)) anon25_correct)))
(let ((anon40_Then_correct  (=> (> (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_45 f1_1) 0) (and (=> (= (ControlFlow 0 33) (- 0 34)) (HasDirectPerm_4334_1186 Mask@0 r_45 f2_1)) (=> (HasDirectPerm_4334_1186 Mask@0 r_45 f2_1) (=> (= (ControlFlow 0 33) 31) anon25_correct))))))
(let ((anon39_Then_correct  (=> (HasDirectPerm_4334_1186 Mask@0 r_45 f2_1) (and (=> (= (ControlFlow 0 36) (- 0 38)) (HasDirectPerm_4334_1186 Mask@0 r_45 f2_1)) (=> (HasDirectPerm_4334_1186 Mask@0 r_45 f2_1) (and (=> (= (ControlFlow 0 36) (- 0 37)) (HasDirectPerm_4334_1186 Mask@0 r_45 f1_1)) (=> (HasDirectPerm_4334_1186 Mask@0 r_45 f1_1) (and (=> (= (ControlFlow 0 36) 33) anon40_Then_correct) (=> (= (ControlFlow 0 36) 35) anon40_Else_correct)))))))))
(let ((anon39_Else_correct  (=> (and (not (HasDirectPerm_4334_1186 Mask@0 r_45 f2_1)) (= (ControlFlow 0 32) 31)) anon25_correct)))
(let ((anon38_Else_correct  (=> (= (ControlFlow 0 30) (- 0 29)) (forall ((r_11_2 T@Ref) ) (!  (=> (HasDirectPerm_4334_1186 Mask@0 r_11_2 f2_1) (and (> (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_11_2 f1_1) 0) (> (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_11_2 f2_1) 0)))
 :qid |stdinbpl.532:15|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| Mask@0) r_11_2 f2_1))
 :pattern ( (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_11_2 f2_1))
)))))
(let ((anon35_Else_correct  (and (=> (= (ControlFlow 0 39) (- 0 40)) (forall ((r_9 T@Ref) ) (!  (=> (HasDirectPerm_4334_1186 Mask@0 r_9 f1_1) (and (> (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_9 f1_1) 0) (> (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_9 f2_1) 0)))
 :qid |stdinbpl.507:15|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| Mask@0) r_9 f1_1))
 :pattern ( (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_9 f1_1))
))) (=> (forall ((r_9@@0 T@Ref) ) (!  (=> (HasDirectPerm_4334_1186 Mask@0 r_9@@0 f1_1) (and (> (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_9@@0 f1_1) 0) (> (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_9@@0 f2_1) 0)))
 :qid |stdinbpl.507:15|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| Mask@0) r_9@@0 f1_1))
 :pattern ( (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_9@@0 f1_1))
)) (=> (state Heap@@17 Mask@0) (and (and (=> (= (ControlFlow 0 39) 30) anon38_Else_correct) (=> (= (ControlFlow 0 39) 36) anon39_Then_correct)) (=> (= (ControlFlow 0 39) 32) anon39_Else_correct)))))))
(let ((anon20_correct true))
(let ((anon37_Else_correct  (=> (and (>= 0 (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_15 f1_1)) (= (ControlFlow 0 25) 21)) anon20_correct)))
(let ((anon37_Then_correct  (=> (> (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_15 f1_1) 0) (and (=> (= (ControlFlow 0 23) (- 0 24)) (HasDirectPerm_4334_1186 Mask@0 r_15 f2_1)) (=> (HasDirectPerm_4334_1186 Mask@0 r_15 f2_1) (=> (= (ControlFlow 0 23) 21) anon20_correct))))))
(let ((anon36_Then_correct  (=> (HasDirectPerm_4334_1186 Mask@0 r_15 f1_1) (and (=> (= (ControlFlow 0 26) (- 0 28)) (HasDirectPerm_4334_1186 Mask@0 r_15 f1_1)) (=> (HasDirectPerm_4334_1186 Mask@0 r_15 f1_1) (and (=> (= (ControlFlow 0 26) (- 0 27)) (HasDirectPerm_4334_1186 Mask@0 r_15 f1_1)) (=> (HasDirectPerm_4334_1186 Mask@0 r_15 f1_1) (and (=> (= (ControlFlow 0 26) 23) anon37_Then_correct) (=> (= (ControlFlow 0 26) 25) anon37_Else_correct)))))))))
(let ((anon36_Else_correct  (=> (and (not (HasDirectPerm_4334_1186 Mask@0 r_15 f1_1)) (= (ControlFlow 0 22) 21)) anon20_correct)))
(let ((anon33_Else_correct  (and (=> (= (ControlFlow 0 41) (- 0 42)) (forall ((r_7 T@Ref) ) (!  (=> (HasDirectPerm_4334_1186 Mask@0 r_7 f2_1) (> (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_7 f2_1) 0))
 :qid |stdinbpl.482:15|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| Mask@0) r_7 f2_1))
 :pattern ( (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_7 f2_1))
))) (=> (forall ((r_7@@0 T@Ref) ) (!  (=> (HasDirectPerm_4334_1186 Mask@0 r_7@@0 f2_1) (> (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_7@@0 f2_1) 0))
 :qid |stdinbpl.482:15|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| Mask@0) r_7@@0 f2_1))
 :pattern ( (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_7@@0 f2_1))
)) (=> (state Heap@@17 Mask@0) (and (and (=> (= (ControlFlow 0 41) 39) anon35_Else_correct) (=> (= (ControlFlow 0 41) 26) anon36_Then_correct)) (=> (= (ControlFlow 0 41) 22) anon36_Else_correct)))))))
(let ((anon15_correct true))
(let ((anon34_Else_correct  (=> (and (not (HasDirectPerm_4334_1186 Mask@0 r_13 f2_1)) (= (ControlFlow 0 20) 16)) anon15_correct)))
(let ((anon34_Then_correct  (=> (HasDirectPerm_4334_1186 Mask@0 r_13 f2_1) (and (=> (= (ControlFlow 0 17) (- 0 19)) (HasDirectPerm_4334_1186 Mask@0 r_13 f2_1)) (=> (HasDirectPerm_4334_1186 Mask@0 r_13 f2_1) (and (=> (= (ControlFlow 0 17) (- 0 18)) (HasDirectPerm_4334_1186 Mask@0 r_13 f2_1)) (=> (HasDirectPerm_4334_1186 Mask@0 r_13 f2_1) (=> (= (ControlFlow 0 17) 16) anon15_correct))))))))
(let ((anon31_Else_correct  (and (=> (= (ControlFlow 0 43) (- 0 44)) (forall ((r_5 T@Ref) ) (!  (=> (HasDirectPerm_4334_1186 Mask@0 r_5 f1_1) (> (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_5 f2_1) 0))
 :qid |stdinbpl.461:15|
 :skolemid |30|
 :pattern ( (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| Mask@0) r_5 f1_1))
 :pattern ( (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_5 f1_1))
))) (=> (forall ((r_5@@0 T@Ref) ) (!  (=> (HasDirectPerm_4334_1186 Mask@0 r_5@@0 f1_1) (> (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_5@@0 f2_1) 0))
 :qid |stdinbpl.461:15|
 :skolemid |30|
 :pattern ( (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| Mask@0) r_5@@0 f1_1))
 :pattern ( (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_5@@0 f1_1))
)) (=> (state Heap@@17 Mask@0) (and (and (=> (= (ControlFlow 0 43) 41) anon33_Else_correct) (=> (= (ControlFlow 0 43) 17) anon34_Then_correct)) (=> (= (ControlFlow 0 43) 20) anon34_Else_correct)))))))
(let ((anon11_correct true))
(let ((anon32_Else_correct  (=> (and (not (HasDirectPerm_4334_1186 Mask@0 r_42 f1_1)) (= (ControlFlow 0 15) 11)) anon11_correct)))
(let ((anon32_Then_correct  (=> (HasDirectPerm_4334_1186 Mask@0 r_42 f1_1) (and (=> (= (ControlFlow 0 12) (- 0 14)) (HasDirectPerm_4334_1186 Mask@0 r_42 f1_1)) (=> (HasDirectPerm_4334_1186 Mask@0 r_42 f1_1) (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_4334_1186 Mask@0 r_42 f2_1)) (=> (HasDirectPerm_4334_1186 Mask@0 r_42 f2_1) (=> (= (ControlFlow 0 12) 11) anon11_correct))))))))
(let ((anon29_Else_correct  (and (=> (= (ControlFlow 0 45) (- 0 46)) (forall ((r_3_2 T@Ref) ) (!  (=> (HasDirectPerm_4334_1186 Mask@0 r_3_2 f2_1) (> (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_3_2 f1_1) 0))
 :qid |stdinbpl.440:15|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| Mask@0) r_3_2 f2_1))
 :pattern ( (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_3_2 f2_1))
))) (=> (forall ((r_3_2@@0 T@Ref) ) (!  (=> (HasDirectPerm_4334_1186 Mask@0 r_3_2@@0 f2_1) (> (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_3_2@@0 f1_1) 0))
 :qid |stdinbpl.440:15|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| Mask@0) r_3_2@@0 f2_1))
 :pattern ( (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_3_2@@0 f2_1))
)) (=> (state Heap@@17 Mask@0) (and (and (=> (= (ControlFlow 0 45) 43) anon31_Else_correct) (=> (= (ControlFlow 0 45) 12) anon32_Then_correct)) (=> (= (ControlFlow 0 45) 15) anon32_Else_correct)))))))
(let ((anon7_correct true))
(let ((anon30_Else_correct  (=> (and (not (HasDirectPerm_4334_1186 Mask@0 r_32 f2_1)) (= (ControlFlow 0 10) 6)) anon7_correct)))
(let ((anon30_Then_correct  (=> (HasDirectPerm_4334_1186 Mask@0 r_32 f2_1) (and (=> (= (ControlFlow 0 7) (- 0 9)) (HasDirectPerm_4334_1186 Mask@0 r_32 f2_1)) (=> (HasDirectPerm_4334_1186 Mask@0 r_32 f2_1) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_4334_1186 Mask@0 r_32 f1_1)) (=> (HasDirectPerm_4334_1186 Mask@0 r_32 f1_1) (=> (= (ControlFlow 0 7) 6) anon7_correct))))))))
(let ((anon27_Else_correct  (and (=> (= (ControlFlow 0 47) (- 0 48)) (forall ((r_1_1 T@Ref) ) (!  (=> (HasDirectPerm_4334_1186 Mask@0 r_1_1 f1_1) (> (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_1_1 f1_1) 0))
 :qid |stdinbpl.419:15|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| Mask@0) r_1_1 f1_1))
 :pattern ( (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_1_1 f1_1))
))) (=> (forall ((r_1_1@@0 T@Ref) ) (!  (=> (HasDirectPerm_4334_1186 Mask@0 r_1_1@@0 f1_1) (> (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_1_1@@0 f1_1) 0))
 :qid |stdinbpl.419:15|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| Mask@0) r_1_1@@0 f1_1))
 :pattern ( (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@17) r_1_1@@0 f1_1))
)) (=> (state Heap@@17 Mask@0) (and (and (=> (= (ControlFlow 0 47) 45) anon29_Else_correct) (=> (= (ControlFlow 0 47) 7) anon30_Then_correct)) (=> (= (ControlFlow 0 47) 10) anon30_Else_correct)))))))
(let ((anon3_correct true))
(let ((anon28_Else_correct  (=> (and (not (HasDirectPerm_4334_1186 Mask@0 r_30 f1_1)) (= (ControlFlow 0 5) 1)) anon3_correct)))
(let ((anon28_Then_correct  (=> (HasDirectPerm_4334_1186 Mask@0 r_30 f1_1) (and (=> (= (ControlFlow 0 2) (- 0 4)) (HasDirectPerm_4334_1186 Mask@0 r_30 f1_1)) (=> (HasDirectPerm_4334_1186 Mask@0 r_30 f1_1) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_4334_1186 Mask@0 r_30 f1_1)) (=> (HasDirectPerm_4334_1186 Mask@0 r_30 f1_1) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@17) r1 $allocated)) (and (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@17) r2 $allocated) (not (= r1 null)))) (and (and (= Mask@0 (PolymorphicMapType_9364 (store (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| ZeroMask) r1 f3 (+ (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| ZeroMask) r1 f3) FullPerm)) (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| ZeroMask) (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| ZeroMask) (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| ZeroMask) (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| ZeroMask))) (state Heap@@17 Mask@0)) (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)))) (and (and (=> (= (ControlFlow 0 49) 47) anon27_Else_correct) (=> (= (ControlFlow 0 49) 2) anon28_Then_correct)) (=> (= (ControlFlow 0 49) 5) anon28_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 50) 49) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
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
(declare-sort T@Field_9403_53 0)
(declare-sort T@Field_9416_9417 0)
(declare-sort T@Field_12729_1186 0)
(declare-sort T@Field_4334_28264 0)
(declare-sort T@Field_4334_28131 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_9364 0)) (((PolymorphicMapType_9364 (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| (Array T@Ref T@Field_12729_1186 Real)) (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| (Array T@Ref T@Field_9403_53 Real)) (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| (Array T@Ref T@Field_9416_9417 Real)) (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| (Array T@Ref T@Field_4334_28131 Real)) (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| (Array T@Ref T@Field_4334_28264 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9892 0)) (((PolymorphicMapType_9892 (|PolymorphicMapType_9892_9403_53#PolymorphicMapType_9892| (Array T@Ref T@Field_9403_53 Bool)) (|PolymorphicMapType_9892_9403_9417#PolymorphicMapType_9892| (Array T@Ref T@Field_9416_9417 Bool)) (|PolymorphicMapType_9892_9403_1186#PolymorphicMapType_9892| (Array T@Ref T@Field_12729_1186 Bool)) (|PolymorphicMapType_9892_9403_28131#PolymorphicMapType_9892| (Array T@Ref T@Field_4334_28131 Bool)) (|PolymorphicMapType_9892_9403_29442#PolymorphicMapType_9892| (Array T@Ref T@Field_4334_28264 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9343 0)) (((PolymorphicMapType_9343 (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| (Array T@Ref T@Field_9403_53 Bool)) (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| (Array T@Ref T@Field_9416_9417 T@Ref)) (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| (Array T@Ref T@Field_12729_1186 Int)) (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| (Array T@Ref T@Field_4334_28264 T@PolymorphicMapType_9892)) (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| (Array T@Ref T@Field_4334_28131 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_9403_53)
(declare-fun f1_1 () T@Field_12729_1186)
(declare-fun f2_1 () T@Field_12729_1186)
(declare-fun f3 () T@Field_12729_1186)
(declare-fun succHeap (T@PolymorphicMapType_9343 T@PolymorphicMapType_9343) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9343 T@PolymorphicMapType_9343) Bool)
(declare-fun state (T@PolymorphicMapType_9343 T@PolymorphicMapType_9364) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9364) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9892)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9343 T@PolymorphicMapType_9343 T@PolymorphicMapType_9364) Bool)
(declare-fun IsPredicateField_4334_28222 (T@Field_4334_28131) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4334 (T@Field_4334_28131) T@Field_4334_28264)
(declare-fun HasDirectPerm_4334_28195 (T@PolymorphicMapType_9364 T@Ref T@Field_4334_28131) Bool)
(declare-fun IsWandField_4334_29969 (T@Field_4334_28131) Bool)
(declare-fun WandMaskField_4334 (T@Field_4334_28131) T@Field_4334_28264)
(declare-fun dummyHeap () T@PolymorphicMapType_9343)
(declare-fun ZeroMask () T@PolymorphicMapType_9364)
(declare-fun InsidePredicate_9403_9403 (T@Field_4334_28131 T@FrameType T@Field_4334_28131 T@FrameType) Bool)
(declare-fun IsPredicateField_4334_1186 (T@Field_12729_1186) Bool)
(declare-fun IsWandField_4334_1186 (T@Field_12729_1186) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4334_33515 (T@Field_4334_28264) Bool)
(declare-fun IsWandField_4334_33531 (T@Field_4334_28264) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4334_9417 (T@Field_9416_9417) Bool)
(declare-fun IsWandField_4334_9417 (T@Field_9416_9417) Bool)
(declare-fun IsPredicateField_4334_53 (T@Field_9403_53) Bool)
(declare-fun IsWandField_4334_53 (T@Field_9403_53) Bool)
(declare-fun HasDirectPerm_4334_33969 (T@PolymorphicMapType_9364 T@Ref T@Field_4334_28264) Bool)
(declare-fun HasDirectPerm_4334_9417 (T@PolymorphicMapType_9364 T@Ref T@Field_9416_9417) Bool)
(declare-fun HasDirectPerm_4334_53 (T@PolymorphicMapType_9364 T@Ref T@Field_9403_53) Bool)
(declare-fun HasDirectPerm_4334_1186 (T@PolymorphicMapType_9364 T@Ref T@Field_12729_1186) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9364 T@PolymorphicMapType_9364 T@PolymorphicMapType_9364) Bool)
(assert (distinct f1_1 f2_1 f3)
)
(assert (forall ((Heap0 T@PolymorphicMapType_9343) (Heap1 T@PolymorphicMapType_9343) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9343) (Mask T@PolymorphicMapType_9364) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9343) (Heap1@@0 T@PolymorphicMapType_9343) (Heap2 T@PolymorphicMapType_9343) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4334_28264) ) (!  (not (select (|PolymorphicMapType_9892_9403_29442#PolymorphicMapType_9892| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9892_9403_29442#PolymorphicMapType_9892| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4334_28131) ) (!  (not (select (|PolymorphicMapType_9892_9403_28131#PolymorphicMapType_9892| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9892_9403_28131#PolymorphicMapType_9892| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_12729_1186) ) (!  (not (select (|PolymorphicMapType_9892_9403_1186#PolymorphicMapType_9892| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9892_9403_1186#PolymorphicMapType_9892| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9416_9417) ) (!  (not (select (|PolymorphicMapType_9892_9403_9417#PolymorphicMapType_9892| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9892_9403_9417#PolymorphicMapType_9892| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_9403_53) ) (!  (not (select (|PolymorphicMapType_9892_9403_53#PolymorphicMapType_9892| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9892_9403_53#PolymorphicMapType_9892| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9343) (ExhaleHeap T@PolymorphicMapType_9343) (Mask@@0 T@PolymorphicMapType_9364) (pm_f_4 T@Field_4334_28131) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4334_28195 Mask@@0 null pm_f_4) (IsPredicateField_4334_28222 pm_f_4)) (= (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@0) null (PredicateMaskField_4334 pm_f_4)) (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| ExhaleHeap) null (PredicateMaskField_4334 pm_f_4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4334_28222 pm_f_4) (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| ExhaleHeap) null (PredicateMaskField_4334 pm_f_4)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9343) (ExhaleHeap@@0 T@PolymorphicMapType_9343) (Mask@@1 T@PolymorphicMapType_9364) (pm_f_4@@0 T@Field_4334_28131) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4334_28195 Mask@@1 null pm_f_4@@0) (IsWandField_4334_29969 pm_f_4@@0)) (= (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@1) null (WandMaskField_4334 pm_f_4@@0)) (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| ExhaleHeap@@0) null (WandMaskField_4334 pm_f_4@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_4334_29969 pm_f_4@@0) (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| ExhaleHeap@@0) null (WandMaskField_4334 pm_f_4@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9343) (ExhaleHeap@@1 T@PolymorphicMapType_9343) (Mask@@2 T@PolymorphicMapType_9364) (o_10 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@2) o_10 $allocated) (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| ExhaleHeap@@1) o_10 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| ExhaleHeap@@1) o_10 $allocated))
)))
(assert (forall ((p T@Field_4334_28131) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9403_9403 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9403_9403 p v_1 p w))
)))
(assert  (not (IsPredicateField_4334_1186 f1_1)))
(assert  (not (IsWandField_4334_1186 f1_1)))
(assert  (not (IsPredicateField_4334_1186 f2_1)))
(assert  (not (IsWandField_4334_1186 f2_1)))
(assert  (not (IsPredicateField_4334_1186 f3)))
(assert  (not (IsWandField_4334_1186 f3)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9343) (ExhaleHeap@@2 T@PolymorphicMapType_9343) (Mask@@3 T@PolymorphicMapType_9364) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_9364) (o_2@@4 T@Ref) (f_4@@4 T@Field_4334_28264) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_4334_33515 f_4@@4))) (not (IsWandField_4334_33531 f_4@@4))) (<= (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_9364) (o_2@@5 T@Ref) (f_4@@5 T@Field_4334_28131) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_4334_28222 f_4@@5))) (not (IsWandField_4334_29969 f_4@@5))) (<= (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_9364) (o_2@@6 T@Ref) (f_4@@6 T@Field_9416_9417) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4334_9417 f_4@@6))) (not (IsWandField_4334_9417 f_4@@6))) (<= (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_9364) (o_2@@7 T@Ref) (f_4@@7 T@Field_9403_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4334_53 f_4@@7))) (not (IsWandField_4334_53 f_4@@7))) (<= (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_9364) (o_2@@8 T@Ref) (f_4@@8 T@Field_12729_1186) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4334_1186 f_4@@8))) (not (IsWandField_4334_1186 f_4@@8))) (<= (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_9364) (o_2@@9 T@Ref) (f_4@@9 T@Field_4334_28264) ) (! (= (HasDirectPerm_4334_33969 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4334_33969 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9364) (o_2@@10 T@Ref) (f_4@@10 T@Field_4334_28131) ) (! (= (HasDirectPerm_4334_28195 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4334_28195 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9364) (o_2@@11 T@Ref) (f_4@@11 T@Field_9416_9417) ) (! (= (HasDirectPerm_4334_9417 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4334_9417 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9364) (o_2@@12 T@Ref) (f_4@@12 T@Field_9403_53) ) (! (= (HasDirectPerm_4334_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4334_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9364) (o_2@@13 T@Ref) (f_4@@13 T@Field_12729_1186) ) (! (= (HasDirectPerm_4334_1186 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4334_1186 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9343) (ExhaleHeap@@3 T@PolymorphicMapType_9343) (Mask@@14 T@PolymorphicMapType_9364) (pm_f_4@@1 T@Field_4334_28131) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_4334_28195 Mask@@14 null pm_f_4@@1) (IsPredicateField_4334_28222 pm_f_4@@1)) (and (and (and (and (forall ((o2_4 T@Ref) (f_14 T@Field_9403_53) ) (!  (=> (select (|PolymorphicMapType_9892_9403_53#PolymorphicMapType_9892| (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@4) null (PredicateMaskField_4334 pm_f_4@@1))) o2_4 f_14) (= (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@4) o2_4 f_14) (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| ExhaleHeap@@3) o2_4 f_14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| ExhaleHeap@@3) o2_4 f_14))
)) (forall ((o2_4@@0 T@Ref) (f_14@@0 T@Field_9416_9417) ) (!  (=> (select (|PolymorphicMapType_9892_9403_9417#PolymorphicMapType_9892| (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@4) null (PredicateMaskField_4334 pm_f_4@@1))) o2_4@@0 f_14@@0) (= (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@4) o2_4@@0 f_14@@0) (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| ExhaleHeap@@3) o2_4@@0 f_14@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| ExhaleHeap@@3) o2_4@@0 f_14@@0))
))) (forall ((o2_4@@1 T@Ref) (f_14@@1 T@Field_12729_1186) ) (!  (=> (select (|PolymorphicMapType_9892_9403_1186#PolymorphicMapType_9892| (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@4) null (PredicateMaskField_4334 pm_f_4@@1))) o2_4@@1 f_14@@1) (= (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@4) o2_4@@1 f_14@@1) (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| ExhaleHeap@@3) o2_4@@1 f_14@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| ExhaleHeap@@3) o2_4@@1 f_14@@1))
))) (forall ((o2_4@@2 T@Ref) (f_14@@2 T@Field_4334_28131) ) (!  (=> (select (|PolymorphicMapType_9892_9403_28131#PolymorphicMapType_9892| (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@4) null (PredicateMaskField_4334 pm_f_4@@1))) o2_4@@2 f_14@@2) (= (select (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@4) o2_4@@2 f_14@@2) (select (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| ExhaleHeap@@3) o2_4@@2 f_14@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| ExhaleHeap@@3) o2_4@@2 f_14@@2))
))) (forall ((o2_4@@3 T@Ref) (f_14@@3 T@Field_4334_28264) ) (!  (=> (select (|PolymorphicMapType_9892_9403_29442#PolymorphicMapType_9892| (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@4) null (PredicateMaskField_4334 pm_f_4@@1))) o2_4@@3 f_14@@3) (= (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@4) o2_4@@3 f_14@@3) (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| ExhaleHeap@@3) o2_4@@3 f_14@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| ExhaleHeap@@3) o2_4@@3 f_14@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_4334_28222 pm_f_4@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9343) (ExhaleHeap@@4 T@PolymorphicMapType_9343) (Mask@@15 T@PolymorphicMapType_9364) (pm_f_4@@2 T@Field_4334_28131) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_4334_28195 Mask@@15 null pm_f_4@@2) (IsWandField_4334_29969 pm_f_4@@2)) (and (and (and (and (forall ((o2_4@@4 T@Ref) (f_14@@4 T@Field_9403_53) ) (!  (=> (select (|PolymorphicMapType_9892_9403_53#PolymorphicMapType_9892| (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@5) null (WandMaskField_4334 pm_f_4@@2))) o2_4@@4 f_14@@4) (= (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@5) o2_4@@4 f_14@@4) (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| ExhaleHeap@@4) o2_4@@4 f_14@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| ExhaleHeap@@4) o2_4@@4 f_14@@4))
)) (forall ((o2_4@@5 T@Ref) (f_14@@5 T@Field_9416_9417) ) (!  (=> (select (|PolymorphicMapType_9892_9403_9417#PolymorphicMapType_9892| (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@5) null (WandMaskField_4334 pm_f_4@@2))) o2_4@@5 f_14@@5) (= (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@5) o2_4@@5 f_14@@5) (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| ExhaleHeap@@4) o2_4@@5 f_14@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| ExhaleHeap@@4) o2_4@@5 f_14@@5))
))) (forall ((o2_4@@6 T@Ref) (f_14@@6 T@Field_12729_1186) ) (!  (=> (select (|PolymorphicMapType_9892_9403_1186#PolymorphicMapType_9892| (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@5) null (WandMaskField_4334 pm_f_4@@2))) o2_4@@6 f_14@@6) (= (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@5) o2_4@@6 f_14@@6) (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| ExhaleHeap@@4) o2_4@@6 f_14@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| ExhaleHeap@@4) o2_4@@6 f_14@@6))
))) (forall ((o2_4@@7 T@Ref) (f_14@@7 T@Field_4334_28131) ) (!  (=> (select (|PolymorphicMapType_9892_9403_28131#PolymorphicMapType_9892| (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@5) null (WandMaskField_4334 pm_f_4@@2))) o2_4@@7 f_14@@7) (= (select (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@5) o2_4@@7 f_14@@7) (select (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| ExhaleHeap@@4) o2_4@@7 f_14@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| ExhaleHeap@@4) o2_4@@7 f_14@@7))
))) (forall ((o2_4@@8 T@Ref) (f_14@@8 T@Field_4334_28264) ) (!  (=> (select (|PolymorphicMapType_9892_9403_29442#PolymorphicMapType_9892| (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@5) null (WandMaskField_4334 pm_f_4@@2))) o2_4@@8 f_14@@8) (= (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@5) o2_4@@8 f_14@@8) (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| ExhaleHeap@@4) o2_4@@8 f_14@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| ExhaleHeap@@4) o2_4@@8 f_14@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_4334_29969 pm_f_4@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9343) (ExhaleHeap@@5 T@PolymorphicMapType_9343) (Mask@@16 T@PolymorphicMapType_9364) (o_10@@0 T@Ref) (f_14@@9 T@Field_4334_28264) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_4334_33969 Mask@@16 o_10@@0 f_14@@9) (= (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@6) o_10@@0 f_14@@9) (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| ExhaleHeap@@5) o_10@@0 f_14@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| ExhaleHeap@@5) o_10@@0 f_14@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9343) (ExhaleHeap@@6 T@PolymorphicMapType_9343) (Mask@@17 T@PolymorphicMapType_9364) (o_10@@1 T@Ref) (f_14@@10 T@Field_4334_28131) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_4334_28195 Mask@@17 o_10@@1 f_14@@10) (= (select (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@7) o_10@@1 f_14@@10) (select (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| ExhaleHeap@@6) o_10@@1 f_14@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| ExhaleHeap@@6) o_10@@1 f_14@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9343) (ExhaleHeap@@7 T@PolymorphicMapType_9343) (Mask@@18 T@PolymorphicMapType_9364) (o_10@@2 T@Ref) (f_14@@11 T@Field_9416_9417) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_4334_9417 Mask@@18 o_10@@2 f_14@@11) (= (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@8) o_10@@2 f_14@@11) (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| ExhaleHeap@@7) o_10@@2 f_14@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| ExhaleHeap@@7) o_10@@2 f_14@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9343) (ExhaleHeap@@8 T@PolymorphicMapType_9343) (Mask@@19 T@PolymorphicMapType_9364) (o_10@@3 T@Ref) (f_14@@12 T@Field_9403_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_4334_53 Mask@@19 o_10@@3 f_14@@12) (= (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@9) o_10@@3 f_14@@12) (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| ExhaleHeap@@8) o_10@@3 f_14@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| ExhaleHeap@@8) o_10@@3 f_14@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9343) (ExhaleHeap@@9 T@PolymorphicMapType_9343) (Mask@@20 T@PolymorphicMapType_9364) (o_10@@4 T@Ref) (f_14@@13 T@Field_12729_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_4334_1186 Mask@@20 o_10@@4 f_14@@13) (= (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@10) o_10@@4 f_14@@13) (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| ExhaleHeap@@9) o_10@@4 f_14@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| ExhaleHeap@@9) o_10@@4 f_14@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4334_28264) ) (! (= (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_4334_28131) ) (! (= (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_9416_9417) ) (! (= (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_9403_53) ) (! (= (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_12729_1186) ) (! (= (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9364) (SummandMask1 T@PolymorphicMapType_9364) (SummandMask2 T@PolymorphicMapType_9364) (o_2@@19 T@Ref) (f_4@@19 T@Field_4334_28264) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9364_4334_32386#PolymorphicMapType_9364| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9364) (SummandMask1@@0 T@PolymorphicMapType_9364) (SummandMask2@@0 T@PolymorphicMapType_9364) (o_2@@20 T@Ref) (f_4@@20 T@Field_4334_28131) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9364_4334_28131#PolymorphicMapType_9364| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9364) (SummandMask1@@1 T@PolymorphicMapType_9364) (SummandMask2@@1 T@PolymorphicMapType_9364) (o_2@@21 T@Ref) (f_4@@21 T@Field_9416_9417) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9364_4334_9417#PolymorphicMapType_9364| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9364) (SummandMask1@@2 T@PolymorphicMapType_9364) (SummandMask2@@2 T@PolymorphicMapType_9364) (o_2@@22 T@Ref) (f_4@@22 T@Field_9403_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9364_4334_53#PolymorphicMapType_9364| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9364) (SummandMask1@@3 T@PolymorphicMapType_9364) (SummandMask2@@3 T@PolymorphicMapType_9364) (o_2@@23 T@Ref) (f_4@@23 T@Field_12729_1186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9364_4334_1186#PolymorphicMapType_9364| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9343) (o_9 T@Ref) (f_15 T@Field_4334_28131) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_9343 (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@11) (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@11) (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@11) (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@11) (store (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@11) o_9 f_15 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9343 (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@11) (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@11) (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@11) (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@11) (store (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@11) o_9 f_15 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9343) (o_9@@0 T@Ref) (f_15@@0 T@Field_4334_28264) (v@@0 T@PolymorphicMapType_9892) ) (! (succHeap Heap@@12 (PolymorphicMapType_9343 (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@12) (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@12) (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@12) (store (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@12) o_9@@0 f_15@@0 v@@0) (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9343 (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@12) (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@12) (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@12) (store (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@12) o_9@@0 f_15@@0 v@@0) (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9343) (o_9@@1 T@Ref) (f_15@@1 T@Field_12729_1186) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_9343 (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@13) (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@13) (store (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@13) o_9@@1 f_15@@1 v@@1) (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@13) (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9343 (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@13) (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@13) (store (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@13) o_9@@1 f_15@@1 v@@1) (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@13) (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9343) (o_9@@2 T@Ref) (f_15@@2 T@Field_9416_9417) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_9343 (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@14) (store (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@14) o_9@@2 f_15@@2 v@@2) (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@14) (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@14) (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9343 (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@14) (store (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@14) o_9@@2 f_15@@2 v@@2) (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@14) (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@14) (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9343) (o_9@@3 T@Ref) (f_15@@3 T@Field_9403_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_9343 (store (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@15) o_9@@3 f_15@@3 v@@3) (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@15) (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@15) (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@15) (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9343 (store (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@15) o_9@@3 f_15@@3 v@@3) (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@15) (|PolymorphicMapType_9343_4334_1186#PolymorphicMapType_9343| Heap@@15) (|PolymorphicMapType_9343_4334_28308#PolymorphicMapType_9343| Heap@@15) (|PolymorphicMapType_9343_9403_28131#PolymorphicMapType_9343| Heap@@15)))
)))
(assert (forall ((o_9@@4 T@Ref) (f_13 T@Field_9416_9417) (Heap@@16 T@PolymorphicMapType_9343) ) (!  (=> (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@16) o_9@@4 $allocated) (select (|PolymorphicMapType_9343_4206_53#PolymorphicMapType_9343| Heap@@16) (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@16) o_9@@4 f_13) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9343_4209_4210#PolymorphicMapType_9343| Heap@@16) o_9@@4 f_13))
)))
(assert (forall ((p@@1 T@Field_4334_28131) (v_1@@0 T@FrameType) (q T@Field_4334_28131) (w@@0 T@FrameType) (r T@Field_4334_28131) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9403_9403 p@@1 v_1@@0 q w@@0) (InsidePredicate_9403_9403 q w@@0 r u)) (InsidePredicate_9403_9403 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9403_9403 p@@1 v_1@@0 q w@@0) (InsidePredicate_9403_9403 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
