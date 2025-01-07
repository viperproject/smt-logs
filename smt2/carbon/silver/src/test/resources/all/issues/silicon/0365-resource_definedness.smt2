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
(declare-sort T@Field_4723_53 0)
(declare-sort T@Field_4736_4737 0)
(declare-sort T@Field_8275_1340 0)
(declare-sort T@Field_4723_13202 0)
(declare-sort T@Field_4723_13069 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_4684 0)) (((PolymorphicMapType_4684 (|PolymorphicMapType_4684_2591_1355#PolymorphicMapType_4684| (Array T@Ref T@Field_8275_1340 Real)) (|PolymorphicMapType_4684_2591_53#PolymorphicMapType_4684| (Array T@Ref T@Field_4723_53 Real)) (|PolymorphicMapType_4684_2591_4737#PolymorphicMapType_4684| (Array T@Ref T@Field_4736_4737 Real)) (|PolymorphicMapType_4684_2591_13069#PolymorphicMapType_4684| (Array T@Ref T@Field_4723_13069 Real)) (|PolymorphicMapType_4684_2591_17324#PolymorphicMapType_4684| (Array T@Ref T@Field_4723_13202 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5212 0)) (((PolymorphicMapType_5212 (|PolymorphicMapType_5212_4723_53#PolymorphicMapType_5212| (Array T@Ref T@Field_4723_53 Bool)) (|PolymorphicMapType_5212_4723_4737#PolymorphicMapType_5212| (Array T@Ref T@Field_4736_4737 Bool)) (|PolymorphicMapType_5212_4723_1340#PolymorphicMapType_5212| (Array T@Ref T@Field_8275_1340 Bool)) (|PolymorphicMapType_5212_4723_13069#PolymorphicMapType_5212| (Array T@Ref T@Field_4723_13069 Bool)) (|PolymorphicMapType_5212_4723_14380#PolymorphicMapType_5212| (Array T@Ref T@Field_4723_13202 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4663 0)) (((PolymorphicMapType_4663 (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| (Array T@Ref T@Field_4723_53 Bool)) (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| (Array T@Ref T@Field_4736_4737 T@Ref)) (|PolymorphicMapType_4663_4723_1340#PolymorphicMapType_4663| (Array T@Ref T@Field_8275_1340 Int)) (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| (Array T@Ref T@Field_4723_13202 T@PolymorphicMapType_5212)) (|PolymorphicMapType_4663_4723_13069#PolymorphicMapType_4663| (Array T@Ref T@Field_4723_13069 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_4723_53)
(declare-fun val () T@Field_8275_1340)
(declare-fun tokCount () T@Field_8275_1340)
(declare-fun succHeap (T@PolymorphicMapType_4663 T@PolymorphicMapType_4663) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4663 T@PolymorphicMapType_4663) Bool)
(declare-fun state (T@PolymorphicMapType_4663 T@PolymorphicMapType_4684) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4684) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5212)
(declare-fun |tokCountRef'| (T@PolymorphicMapType_4663 T@Ref) T@Ref)
(declare-fun dummyFunction_2616 (T@Ref) Bool)
(declare-fun |tokCountRef#triggerStateless| (T@Ref) T@Ref)
(declare-fun tokCountRef (T@PolymorphicMapType_4663 T@Ref) T@Ref)
(declare-fun temp (T@Ref) T@Ref)
(declare-fun temp_inv (T@Ref) T@Ref)
(declare-fun is_ghost (T@Ref) Bool)
(declare-fun heap (T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4663 T@PolymorphicMapType_4663 T@PolymorphicMapType_4684) Bool)
(declare-fun IsPredicateField_4723_13160 (T@Field_4723_13069) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4723 (T@Field_4723_13069) T@Field_4723_13202)
(declare-fun HasDirectPerm_4723_13133 (T@PolymorphicMapType_4684 T@Ref T@Field_4723_13069) Bool)
(declare-fun IsWandField_4723_14907 (T@Field_4723_13069) Bool)
(declare-fun WandMaskField_4723 (T@Field_4723_13069) T@Field_4723_13202)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |tokCountRef#trigger| (T@FrameType T@Ref) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun dummyHeap () T@PolymorphicMapType_4663)
(declare-fun ZeroMask () T@PolymorphicMapType_4684)
(declare-fun InsidePredicate_4723_4723 (T@Field_4723_13069 T@FrameType T@Field_4723_13069 T@FrameType) Bool)
(declare-fun IsPredicateField_2589_1340 (T@Field_8275_1340) Bool)
(declare-fun IsWandField_2589_1340 (T@Field_8275_1340) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2591_18453 (T@Field_4723_13202) Bool)
(declare-fun IsWandField_2591_18469 (T@Field_4723_13202) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2591_4737 (T@Field_4736_4737) Bool)
(declare-fun IsWandField_2591_4737 (T@Field_4736_4737) Bool)
(declare-fun IsPredicateField_2591_53 (T@Field_4723_53) Bool)
(declare-fun IsWandField_2591_53 (T@Field_4723_53) Bool)
(declare-fun HasDirectPerm_4723_18907 (T@PolymorphicMapType_4684 T@Ref T@Field_4723_13202) Bool)
(declare-fun HasDirectPerm_4723_1340 (T@PolymorphicMapType_4684 T@Ref T@Field_8275_1340) Bool)
(declare-fun HasDirectPerm_4723_4737 (T@PolymorphicMapType_4684 T@Ref T@Field_4736_4737) Bool)
(declare-fun HasDirectPerm_4723_53 (T@PolymorphicMapType_4684 T@Ref T@Field_4723_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun resource (T@PolymorphicMapType_4663) T@Ref)
(declare-fun |resource'| (T@PolymorphicMapType_4663) T@Ref)
(declare-fun |resource#triggerStateless| () T@Ref)
(declare-fun readers (T@PolymorphicMapType_4663) T@Ref)
(declare-fun |readers'| (T@PolymorphicMapType_4663) T@Ref)
(declare-fun |readers#triggerStateless| () T@Ref)
(declare-fun sumMask (T@PolymorphicMapType_4684 T@PolymorphicMapType_4684 T@PolymorphicMapType_4684) Bool)
(declare-fun eps () Real)
(declare-fun |tokCountRef#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |resource#frame| (T@FrameType) T@Ref)
(declare-fun |readers#frame| (T@FrameType) T@Ref)
(assert (distinct val tokCount)
)
(assert (forall ((Heap0 T@PolymorphicMapType_4663) (Heap1 T@PolymorphicMapType_4663) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4663) (Mask T@PolymorphicMapType_4684) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4663) (Heap1@@0 T@PolymorphicMapType_4663) (Heap2 T@PolymorphicMapType_4663) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4723_13202) ) (!  (not (select (|PolymorphicMapType_5212_4723_14380#PolymorphicMapType_5212| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5212_4723_14380#PolymorphicMapType_5212| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4723_13069) ) (!  (not (select (|PolymorphicMapType_5212_4723_13069#PolymorphicMapType_5212| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5212_4723_13069#PolymorphicMapType_5212| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8275_1340) ) (!  (not (select (|PolymorphicMapType_5212_4723_1340#PolymorphicMapType_5212| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5212_4723_1340#PolymorphicMapType_5212| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4736_4737) ) (!  (not (select (|PolymorphicMapType_5212_4723_4737#PolymorphicMapType_5212| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5212_4723_4737#PolymorphicMapType_5212| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4723_53) ) (!  (not (select (|PolymorphicMapType_5212_4723_53#PolymorphicMapType_5212| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5212_4723_53#PolymorphicMapType_5212| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4663) (r_1 T@Ref) ) (! (dummyFunction_2616 (|tokCountRef#triggerStateless| r_1))
 :qid |stdinbpl.247:15|
 :skolemid |25|
 :pattern ( (|tokCountRef'| Heap@@0 r_1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4663) (r_1@@0 T@Ref) ) (!  (and (= (tokCountRef Heap@@1 r_1@@0) (|tokCountRef'| Heap@@1 r_1@@0)) (dummyFunction_2616 (|tokCountRef#triggerStateless| r_1@@0)))
 :qid |stdinbpl.243:15|
 :skolemid |24|
 :pattern ( (tokCountRef Heap@@1 r_1@@0))
)))
(assert (forall ((r_1@@1 T@Ref) ) (!  (and (= (temp_inv (temp r_1@@1)) r_1@@1) (ite (is_ghost r_1@@1) (= (temp r_1@@1) r_1@@1) (= (heap (temp r_1@@1)) (- (heap r_1@@1) 3))))
 :qid |stdinbpl.214:15|
 :skolemid |22|
 :pattern ( (temp r_1@@1))
)))
(assert (forall ((r_1@@2 T@Ref) ) (!  (and (= (temp (temp_inv r_1@@2)) r_1@@2) (ite (is_ghost r_1@@2) (= (temp_inv r_1@@2) r_1@@2) (= (heap (temp_inv r_1@@2)) (+ (heap r_1@@2) 3))))
 :qid |stdinbpl.220:15|
 :skolemid |23|
 :pattern ( (temp_inv r_1@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4663) (ExhaleHeap T@PolymorphicMapType_4663) (Mask@@0 T@PolymorphicMapType_4684) (pm_f T@Field_4723_13069) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4723_13133 Mask@@0 null pm_f) (IsPredicateField_4723_13160 pm_f)) (= (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@2) null (PredicateMaskField_4723 pm_f)) (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| ExhaleHeap) null (PredicateMaskField_4723 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_4723_13160 pm_f) (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| ExhaleHeap) null (PredicateMaskField_4723 pm_f)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4663) (ExhaleHeap@@0 T@PolymorphicMapType_4663) (Mask@@1 T@PolymorphicMapType_4684) (pm_f@@0 T@Field_4723_13069) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4723_13133 Mask@@1 null pm_f@@0) (IsWandField_4723_14907 pm_f@@0)) (= (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@3) null (WandMaskField_4723 pm_f@@0)) (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| ExhaleHeap@@0) null (WandMaskField_4723 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_4723_14907 pm_f@@0) (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| ExhaleHeap@@0) null (WandMaskField_4723 pm_f@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4663) (Mask@@2 T@PolymorphicMapType_4684) (r_1@@3 T@Ref) ) (!  (=> (and (state Heap@@4 Mask@@2) (or (< AssumeFunctionsAbove 1) (|tokCountRef#trigger| EmptyFrame r_1@@3))) (= (|tokCountRef'| Heap@@4 (temp r_1@@3)) (|tokCountRef'| Heap@@4 r_1@@3)))
 :qid |stdinbpl.260:15|
 :skolemid |27|
 :pattern ( (state Heap@@4 Mask@@2) (|tokCountRef'| Heap@@4 r_1@@3))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4663) (ExhaleHeap@@1 T@PolymorphicMapType_4663) (Mask@@3 T@PolymorphicMapType_4684) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| Heap@@5) o_1 $allocated) (select (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_4723_13069) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4723_4723 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4723_4723 p v_1 p w))
)))
(assert  (not (IsPredicateField_2589_1340 val)))
(assert  (not (IsWandField_2589_1340 val)))
(assert  (not (IsPredicateField_2589_1340 tokCount)))
(assert  (not (IsWandField_2589_1340 tokCount)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4663) (ExhaleHeap@@2 T@PolymorphicMapType_4663) (Mask@@4 T@PolymorphicMapType_4684) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@6 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_4684) (o_2@@4 T@Ref) (f_4@@4 T@Field_4723_13202) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_4684_2591_17324#PolymorphicMapType_4684| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_2591_18453 f_4@@4))) (not (IsWandField_2591_18469 f_4@@4))) (<= (select (|PolymorphicMapType_4684_2591_17324#PolymorphicMapType_4684| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_4684_2591_17324#PolymorphicMapType_4684| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_4684) (o_2@@5 T@Ref) (f_4@@5 T@Field_4723_13069) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_4684_2591_13069#PolymorphicMapType_4684| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4723_13160 f_4@@5))) (not (IsWandField_4723_14907 f_4@@5))) (<= (select (|PolymorphicMapType_4684_2591_13069#PolymorphicMapType_4684| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_4684_2591_13069#PolymorphicMapType_4684| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_4684) (o_2@@6 T@Ref) (f_4@@6 T@Field_4736_4737) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_4684_2591_4737#PolymorphicMapType_4684| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2591_4737 f_4@@6))) (not (IsWandField_2591_4737 f_4@@6))) (<= (select (|PolymorphicMapType_4684_2591_4737#PolymorphicMapType_4684| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_4684_2591_4737#PolymorphicMapType_4684| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_4684) (o_2@@7 T@Ref) (f_4@@7 T@Field_4723_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_4684_2591_53#PolymorphicMapType_4684| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2591_53 f_4@@7))) (not (IsWandField_2591_53 f_4@@7))) (<= (select (|PolymorphicMapType_4684_2591_53#PolymorphicMapType_4684| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_4684_2591_53#PolymorphicMapType_4684| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_4684) (o_2@@8 T@Ref) (f_4@@8 T@Field_8275_1340) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_4684_2591_1355#PolymorphicMapType_4684| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_2589_1340 f_4@@8))) (not (IsWandField_2589_1340 f_4@@8))) (<= (select (|PolymorphicMapType_4684_2591_1355#PolymorphicMapType_4684| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_4684_2591_1355#PolymorphicMapType_4684| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4684) (o_2@@9 T@Ref) (f_4@@9 T@Field_4723_13202) ) (! (= (HasDirectPerm_4723_18907 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_4684_2591_17324#PolymorphicMapType_4684| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4723_18907 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4684) (o_2@@10 T@Ref) (f_4@@10 T@Field_4723_13069) ) (! (= (HasDirectPerm_4723_13133 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_4684_2591_13069#PolymorphicMapType_4684| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4723_13133 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4684) (o_2@@11 T@Ref) (f_4@@11 T@Field_8275_1340) ) (! (= (HasDirectPerm_4723_1340 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_4684_2591_1355#PolymorphicMapType_4684| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4723_1340 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4684) (o_2@@12 T@Ref) (f_4@@12 T@Field_4736_4737) ) (! (= (HasDirectPerm_4723_4737 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_4684_2591_4737#PolymorphicMapType_4684| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4723_4737 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4684) (o_2@@13 T@Ref) (f_4@@13 T@Field_4723_53) ) (! (= (HasDirectPerm_4723_53 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_4684_2591_53#PolymorphicMapType_4684| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4723_53 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4663) (ExhaleHeap@@3 T@PolymorphicMapType_4663) (Mask@@15 T@PolymorphicMapType_4684) (pm_f@@1 T@Field_4723_13069) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_4723_13133 Mask@@15 null pm_f@@1) (IsPredicateField_4723_13160 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_4723_53) ) (!  (=> (select (|PolymorphicMapType_5212_4723_53#PolymorphicMapType_5212| (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@7) null (PredicateMaskField_4723 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| Heap@@7) o2 f_2) (select (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_4736_4737) ) (!  (=> (select (|PolymorphicMapType_5212_4723_4737#PolymorphicMapType_5212| (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@7) null (PredicateMaskField_4723 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| Heap@@7) o2@@0 f_2@@0) (select (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_8275_1340) ) (!  (=> (select (|PolymorphicMapType_5212_4723_1340#PolymorphicMapType_5212| (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@7) null (PredicateMaskField_4723 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_4663_4723_1340#PolymorphicMapType_4663| Heap@@7) o2@@1 f_2@@1) (select (|PolymorphicMapType_4663_4723_1340#PolymorphicMapType_4663| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4663_4723_1340#PolymorphicMapType_4663| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_4723_13069) ) (!  (=> (select (|PolymorphicMapType_5212_4723_13069#PolymorphicMapType_5212| (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@7) null (PredicateMaskField_4723 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_4663_4723_13069#PolymorphicMapType_4663| Heap@@7) o2@@2 f_2@@2) (select (|PolymorphicMapType_4663_4723_13069#PolymorphicMapType_4663| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4663_4723_13069#PolymorphicMapType_4663| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_4723_13202) ) (!  (=> (select (|PolymorphicMapType_5212_4723_14380#PolymorphicMapType_5212| (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@7) null (PredicateMaskField_4723 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@7) o2@@3 f_2@@3) (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@15) (IsPredicateField_4723_13160 pm_f@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4663) (ExhaleHeap@@4 T@PolymorphicMapType_4663) (Mask@@16 T@PolymorphicMapType_4684) (pm_f@@2 T@Field_4723_13069) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_4723_13133 Mask@@16 null pm_f@@2) (IsWandField_4723_14907 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_4723_53) ) (!  (=> (select (|PolymorphicMapType_5212_4723_53#PolymorphicMapType_5212| (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@8) null (WandMaskField_4723 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| Heap@@8) o2@@4 f_2@@4) (select (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_4736_4737) ) (!  (=> (select (|PolymorphicMapType_5212_4723_4737#PolymorphicMapType_5212| (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@8) null (WandMaskField_4723 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| Heap@@8) o2@@5 f_2@@5) (select (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_8275_1340) ) (!  (=> (select (|PolymorphicMapType_5212_4723_1340#PolymorphicMapType_5212| (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@8) null (WandMaskField_4723 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_4663_4723_1340#PolymorphicMapType_4663| Heap@@8) o2@@6 f_2@@6) (select (|PolymorphicMapType_4663_4723_1340#PolymorphicMapType_4663| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4663_4723_1340#PolymorphicMapType_4663| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_4723_13069) ) (!  (=> (select (|PolymorphicMapType_5212_4723_13069#PolymorphicMapType_5212| (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@8) null (WandMaskField_4723 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_4663_4723_13069#PolymorphicMapType_4663| Heap@@8) o2@@7 f_2@@7) (select (|PolymorphicMapType_4663_4723_13069#PolymorphicMapType_4663| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4663_4723_13069#PolymorphicMapType_4663| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_4723_13202) ) (!  (=> (select (|PolymorphicMapType_5212_4723_14380#PolymorphicMapType_5212| (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@8) null (WandMaskField_4723 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@8) o2@@8 f_2@@8) (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@16) (IsWandField_4723_14907 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4663) (ExhaleHeap@@5 T@PolymorphicMapType_4663) (Mask@@17 T@PolymorphicMapType_4684) (o_1@@0 T@Ref) (f_2@@9 T@Field_4723_13202) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_4723_18907 Mask@@17 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@9) o_1@@0 f_2@@9) (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4663) (ExhaleHeap@@6 T@PolymorphicMapType_4663) (Mask@@18 T@PolymorphicMapType_4684) (o_1@@1 T@Ref) (f_2@@10 T@Field_4723_13069) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_4723_13133 Mask@@18 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_4663_4723_13069#PolymorphicMapType_4663| Heap@@10) o_1@@1 f_2@@10) (select (|PolymorphicMapType_4663_4723_13069#PolymorphicMapType_4663| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_4663_4723_13069#PolymorphicMapType_4663| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4663) (ExhaleHeap@@7 T@PolymorphicMapType_4663) (Mask@@19 T@PolymorphicMapType_4684) (o_1@@2 T@Ref) (f_2@@11 T@Field_8275_1340) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_4723_1340 Mask@@19 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_4663_4723_1340#PolymorphicMapType_4663| Heap@@11) o_1@@2 f_2@@11) (select (|PolymorphicMapType_4663_4723_1340#PolymorphicMapType_4663| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_4663_4723_1340#PolymorphicMapType_4663| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4663) (ExhaleHeap@@8 T@PolymorphicMapType_4663) (Mask@@20 T@PolymorphicMapType_4684) (o_1@@3 T@Ref) (f_2@@12 T@Field_4736_4737) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_4723_4737 Mask@@20 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| Heap@@12) o_1@@3 f_2@@12) (select (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4663) (ExhaleHeap@@9 T@PolymorphicMapType_4663) (Mask@@21 T@PolymorphicMapType_4684) (o_1@@4 T@Ref) (f_2@@13 T@Field_4723_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_4723_53 Mask@@21 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| Heap@@13) o_1@@4 f_2@@13) (select (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4663) ) (!  (and (= (resource Heap@@14) (|resource'| Heap@@14)) (dummyFunction_2616 |resource#triggerStateless|))
 :qid |stdinbpl.305:15|
 :skolemid |28|
 :pattern ( (resource Heap@@14))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4663) ) (!  (and (= (readers Heap@@15) (|readers'| Heap@@15)) (dummyFunction_2616 |readers#triggerStateless|))
 :qid |stdinbpl.346:15|
 :skolemid |31|
 :pattern ( (readers Heap@@15))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4723_13202) ) (! (= (select (|PolymorphicMapType_4684_2591_17324#PolymorphicMapType_4684| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4684_2591_17324#PolymorphicMapType_4684| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_4723_13069) ) (! (= (select (|PolymorphicMapType_4684_2591_13069#PolymorphicMapType_4684| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4684_2591_13069#PolymorphicMapType_4684| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_4736_4737) ) (! (= (select (|PolymorphicMapType_4684_2591_4737#PolymorphicMapType_4684| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4684_2591_4737#PolymorphicMapType_4684| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_4723_53) ) (! (= (select (|PolymorphicMapType_4684_2591_53#PolymorphicMapType_4684| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4684_2591_53#PolymorphicMapType_4684| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_8275_1340) ) (! (= (select (|PolymorphicMapType_4684_2591_1355#PolymorphicMapType_4684| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4684_2591_1355#PolymorphicMapType_4684| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4684) (SummandMask1 T@PolymorphicMapType_4684) (SummandMask2 T@PolymorphicMapType_4684) (o_2@@19 T@Ref) (f_4@@19 T@Field_4723_13202) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4684_2591_17324#PolymorphicMapType_4684| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_4684_2591_17324#PolymorphicMapType_4684| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_4684_2591_17324#PolymorphicMapType_4684| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4684_2591_17324#PolymorphicMapType_4684| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4684_2591_17324#PolymorphicMapType_4684| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4684_2591_17324#PolymorphicMapType_4684| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4684) (SummandMask1@@0 T@PolymorphicMapType_4684) (SummandMask2@@0 T@PolymorphicMapType_4684) (o_2@@20 T@Ref) (f_4@@20 T@Field_4723_13069) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4684_2591_13069#PolymorphicMapType_4684| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_4684_2591_13069#PolymorphicMapType_4684| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_4684_2591_13069#PolymorphicMapType_4684| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4684_2591_13069#PolymorphicMapType_4684| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4684_2591_13069#PolymorphicMapType_4684| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4684_2591_13069#PolymorphicMapType_4684| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4684) (SummandMask1@@1 T@PolymorphicMapType_4684) (SummandMask2@@1 T@PolymorphicMapType_4684) (o_2@@21 T@Ref) (f_4@@21 T@Field_4736_4737) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4684_2591_4737#PolymorphicMapType_4684| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_4684_2591_4737#PolymorphicMapType_4684| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_4684_2591_4737#PolymorphicMapType_4684| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4684_2591_4737#PolymorphicMapType_4684| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4684_2591_4737#PolymorphicMapType_4684| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4684_2591_4737#PolymorphicMapType_4684| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4684) (SummandMask1@@2 T@PolymorphicMapType_4684) (SummandMask2@@2 T@PolymorphicMapType_4684) (o_2@@22 T@Ref) (f_4@@22 T@Field_4723_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4684_2591_53#PolymorphicMapType_4684| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_4684_2591_53#PolymorphicMapType_4684| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_4684_2591_53#PolymorphicMapType_4684| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4684_2591_53#PolymorphicMapType_4684| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4684_2591_53#PolymorphicMapType_4684| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4684_2591_53#PolymorphicMapType_4684| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4684) (SummandMask1@@3 T@PolymorphicMapType_4684) (SummandMask2@@3 T@PolymorphicMapType_4684) (o_2@@23 T@Ref) (f_4@@23 T@Field_8275_1340) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4684_2591_1355#PolymorphicMapType_4684| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_4684_2591_1355#PolymorphicMapType_4684| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_4684_2591_1355#PolymorphicMapType_4684| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4684_2591_1355#PolymorphicMapType_4684| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4684_2591_1355#PolymorphicMapType_4684| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4684_2591_1355#PolymorphicMapType_4684| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (< NoPerm eps))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4663) (Mask@@22 T@PolymorphicMapType_4684) (r_1@@4 T@Ref) ) (!  (=> (state Heap@@16 Mask@@22) (= (|tokCountRef'| Heap@@16 r_1@@4) (|tokCountRef#frame| EmptyFrame r_1@@4)))
 :qid |stdinbpl.254:15|
 :skolemid |26|
 :pattern ( (state Heap@@16 Mask@@22) (|tokCountRef'| Heap@@16 r_1@@4))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4663) ) (! (dummyFunction_2616 |resource#triggerStateless|)
 :qid |stdinbpl.309:15|
 :skolemid |29|
 :pattern ( (|resource'| Heap@@17))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4663) ) (! (dummyFunction_2616 |readers#triggerStateless|)
 :qid |stdinbpl.350:15|
 :skolemid |32|
 :pattern ( (|readers'| Heap@@18))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4663) (Mask@@23 T@PolymorphicMapType_4684) ) (!  (=> (state Heap@@19 Mask@@23) (= (|resource'| Heap@@19) (|resource#frame| EmptyFrame)))
 :qid |stdinbpl.316:15|
 :skolemid |30|
 :pattern ( (state Heap@@19 Mask@@23) (|resource'| Heap@@19))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4663) (Mask@@24 T@PolymorphicMapType_4684) ) (!  (=> (state Heap@@20 Mask@@24) (= (|readers'| Heap@@20) (|readers#frame| EmptyFrame)))
 :qid |stdinbpl.357:15|
 :skolemid |33|
 :pattern ( (state Heap@@20 Mask@@24) (|readers'| Heap@@20))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4663) (o T@Ref) (f_3 T@Field_4723_13069) (v T@FrameType) ) (! (succHeap Heap@@21 (PolymorphicMapType_4663 (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| Heap@@21) (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| Heap@@21) (|PolymorphicMapType_4663_4723_1340#PolymorphicMapType_4663| Heap@@21) (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@21) (store (|PolymorphicMapType_4663_4723_13069#PolymorphicMapType_4663| Heap@@21) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4663 (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| Heap@@21) (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| Heap@@21) (|PolymorphicMapType_4663_4723_1340#PolymorphicMapType_4663| Heap@@21) (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@21) (store (|PolymorphicMapType_4663_4723_13069#PolymorphicMapType_4663| Heap@@21) o f_3 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4663) (o@@0 T@Ref) (f_3@@0 T@Field_4723_13202) (v@@0 T@PolymorphicMapType_5212) ) (! (succHeap Heap@@22 (PolymorphicMapType_4663 (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| Heap@@22) (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| Heap@@22) (|PolymorphicMapType_4663_4723_1340#PolymorphicMapType_4663| Heap@@22) (store (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@22) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4663_4723_13069#PolymorphicMapType_4663| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4663 (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| Heap@@22) (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| Heap@@22) (|PolymorphicMapType_4663_4723_1340#PolymorphicMapType_4663| Heap@@22) (store (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@22) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4663_4723_13069#PolymorphicMapType_4663| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4663) (o@@1 T@Ref) (f_3@@1 T@Field_8275_1340) (v@@1 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_4663 (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| Heap@@23) (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| Heap@@23) (store (|PolymorphicMapType_4663_4723_1340#PolymorphicMapType_4663| Heap@@23) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@23) (|PolymorphicMapType_4663_4723_13069#PolymorphicMapType_4663| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4663 (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| Heap@@23) (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| Heap@@23) (store (|PolymorphicMapType_4663_4723_1340#PolymorphicMapType_4663| Heap@@23) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@23) (|PolymorphicMapType_4663_4723_13069#PolymorphicMapType_4663| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4663) (o@@2 T@Ref) (f_3@@2 T@Field_4736_4737) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_4663 (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| Heap@@24) (store (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| Heap@@24) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4663_4723_1340#PolymorphicMapType_4663| Heap@@24) (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@24) (|PolymorphicMapType_4663_4723_13069#PolymorphicMapType_4663| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4663 (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| Heap@@24) (store (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| Heap@@24) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4663_4723_1340#PolymorphicMapType_4663| Heap@@24) (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@24) (|PolymorphicMapType_4663_4723_13069#PolymorphicMapType_4663| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_4663) (o@@3 T@Ref) (f_3@@3 T@Field_4723_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_4663 (store (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| Heap@@25) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| Heap@@25) (|PolymorphicMapType_4663_4723_1340#PolymorphicMapType_4663| Heap@@25) (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@25) (|PolymorphicMapType_4663_4723_13069#PolymorphicMapType_4663| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4663 (store (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| Heap@@25) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| Heap@@25) (|PolymorphicMapType_4663_4723_1340#PolymorphicMapType_4663| Heap@@25) (|PolymorphicMapType_4663_4723_13246#PolymorphicMapType_4663| Heap@@25) (|PolymorphicMapType_4663_4723_13069#PolymorphicMapType_4663| Heap@@25)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_4736_4737) (Heap@@26 T@PolymorphicMapType_4663) ) (!  (=> (select (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| Heap@@26) o@@4 $allocated) (select (|PolymorphicMapType_4663_2441_53#PolymorphicMapType_4663| Heap@@26) (select (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| Heap@@26) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4663_2444_2445#PolymorphicMapType_4663| Heap@@26) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_4723_13069) (v_1@@0 T@FrameType) (q T@Field_4723_13069) (w@@0 T@FrameType) (r T@Field_4723_13069) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4723_4723 p@@1 v_1@@0 q w@@0) (InsidePredicate_4723_4723 q w@@0 r u)) (InsidePredicate_4723_4723 p@@1 v_1@@0 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4723_4723 p@@1 v_1@@0 q w@@0) (InsidePredicate_4723_4723 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |resource#definedness|)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
