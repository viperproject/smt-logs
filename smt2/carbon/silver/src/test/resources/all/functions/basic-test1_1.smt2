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
(declare-sort T@Field_8417_53 0)
(declare-sort T@Field_8430_8431 0)
(declare-sort T@Field_11744_1189 0)
(declare-sort T@Field_4359_25855 0)
(declare-sort T@Field_4359_25722 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_8378 0)) (((PolymorphicMapType_8378 (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| (Array T@Ref T@Field_11744_1189 Real)) (|PolymorphicMapType_8378_4359_53#PolymorphicMapType_8378| (Array T@Ref T@Field_8417_53 Real)) (|PolymorphicMapType_8378_4359_8431#PolymorphicMapType_8378| (Array T@Ref T@Field_8430_8431 Real)) (|PolymorphicMapType_8378_4359_25722#PolymorphicMapType_8378| (Array T@Ref T@Field_4359_25722 Real)) (|PolymorphicMapType_8378_4359_29977#PolymorphicMapType_8378| (Array T@Ref T@Field_4359_25855 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8906 0)) (((PolymorphicMapType_8906 (|PolymorphicMapType_8906_8417_53#PolymorphicMapType_8906| (Array T@Ref T@Field_8417_53 Bool)) (|PolymorphicMapType_8906_8417_8431#PolymorphicMapType_8906| (Array T@Ref T@Field_8430_8431 Bool)) (|PolymorphicMapType_8906_8417_1189#PolymorphicMapType_8906| (Array T@Ref T@Field_11744_1189 Bool)) (|PolymorphicMapType_8906_8417_25722#PolymorphicMapType_8906| (Array T@Ref T@Field_4359_25722 Bool)) (|PolymorphicMapType_8906_8417_27033#PolymorphicMapType_8906| (Array T@Ref T@Field_4359_25855 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8357 0)) (((PolymorphicMapType_8357 (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| (Array T@Ref T@Field_8417_53 Bool)) (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| (Array T@Ref T@Field_8430_8431 T@Ref)) (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| (Array T@Ref T@Field_11744_1189 Int)) (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| (Array T@Ref T@Field_4359_25855 T@PolymorphicMapType_8906)) (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| (Array T@Ref T@Field_4359_25722 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_8417_53)
(declare-fun f_7 () T@Field_11744_1189)
(declare-fun g () T@Field_11744_1189)
(declare-fun succHeap (T@PolymorphicMapType_8357 T@PolymorphicMapType_8357) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8357 T@PolymorphicMapType_8357) Bool)
(declare-fun state (T@PolymorphicMapType_8357 T@PolymorphicMapType_8378) Bool)
(declare-fun |tern'| (T@PolymorphicMapType_8357 T@Ref Bool) Int)
(declare-fun |tern#frame| (T@FrameType T@Ref Bool) Int)
(declare-fun FrameFragment_6289 (T@FrameType) T@FrameType)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun GoodMask (T@PolymorphicMapType_8378) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8906)
(declare-fun |add3'| (T@PolymorphicMapType_8357 T@Ref Int) Int)
(declare-fun dummyFunction_1406 (Int) Bool)
(declare-fun |add3#triggerStateless| (T@Ref Int) Int)
(declare-fun |tern#triggerStateless| (T@Ref Bool) Int)
(declare-fun |add3#frame| (T@FrameType T@Ref Int) Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun |add'| (T@PolymorphicMapType_8357 T@Ref) Int)
(declare-fun |add#triggerStateless| (T@Ref) Int)
(declare-fun add (T@PolymorphicMapType_8357 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8357 T@PolymorphicMapType_8357 T@PolymorphicMapType_8378) Bool)
(declare-fun IsPredicateField_4359_25813 (T@Field_4359_25722) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4359 (T@Field_4359_25722) T@Field_4359_25855)
(declare-fun HasDirectPerm_4359_25786 (T@PolymorphicMapType_8378 T@Ref T@Field_4359_25722) Bool)
(declare-fun IsWandField_4359_27560 (T@Field_4359_25722) Bool)
(declare-fun WandMaskField_4359 (T@Field_4359_25722) T@Field_4359_25855)
(declare-fun dummyHeap () T@PolymorphicMapType_8357)
(declare-fun ZeroMask () T@PolymorphicMapType_8378)
(declare-fun |add#frame| (T@FrameType T@Ref) Int)
(declare-fun InsidePredicate_8417_8417 (T@Field_4359_25722 T@FrameType T@Field_4359_25722 T@FrameType) Bool)
(declare-fun IsPredicateField_4359_1189 (T@Field_11744_1189) Bool)
(declare-fun IsWandField_4359_1189 (T@Field_11744_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4359_31106 (T@Field_4359_25855) Bool)
(declare-fun IsWandField_4359_31122 (T@Field_4359_25855) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4359_8431 (T@Field_8430_8431) Bool)
(declare-fun IsWandField_4359_8431 (T@Field_8430_8431) Bool)
(declare-fun IsPredicateField_4359_53 (T@Field_8417_53) Bool)
(declare-fun IsWandField_4359_53 (T@Field_8417_53) Bool)
(declare-fun HasDirectPerm_4359_31560 (T@PolymorphicMapType_8378 T@Ref T@Field_4359_25855) Bool)
(declare-fun HasDirectPerm_4359_8431 (T@PolymorphicMapType_8378 T@Ref T@Field_8430_8431) Bool)
(declare-fun HasDirectPerm_4359_53 (T@PolymorphicMapType_8378 T@Ref T@Field_8417_53) Bool)
(declare-fun HasDirectPerm_4359_1189 (T@PolymorphicMapType_8378 T@Ref T@Field_11744_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun add3 (T@PolymorphicMapType_8357 T@Ref Int) Int)
(declare-fun tern (T@PolymorphicMapType_8357 T@Ref Bool) Int)
(declare-fun sumMask (T@PolymorphicMapType_8378 T@PolymorphicMapType_8378 T@PolymorphicMapType_8378) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(assert (distinct f_7 g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_8357) (Heap1 T@PolymorphicMapType_8357) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8357) (Mask T@PolymorphicMapType_8378) (x T@Ref) (b_24 Bool) ) (!  (=> (state Heap Mask) (= (|tern'| Heap x b_24) (|tern#frame| (FrameFragment_6289 (ite b_24 (FrameFragment_1189 (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap) x f_7)) (FrameFragment_1189 (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap) x g)))) x b_24)))
 :qid |stdinbpl.371:15|
 :skolemid |33|
 :pattern ( (state Heap Mask) (|tern'| Heap x b_24))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8357) (Mask@@0 T@PolymorphicMapType_8378) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8357) (Heap1@@0 T@PolymorphicMapType_8357) (Heap2 T@PolymorphicMapType_8357) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4359_25855) ) (!  (not (select (|PolymorphicMapType_8906_8417_27033#PolymorphicMapType_8906| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8906_8417_27033#PolymorphicMapType_8906| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4359_25722) ) (!  (not (select (|PolymorphicMapType_8906_8417_25722#PolymorphicMapType_8906| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8906_8417_25722#PolymorphicMapType_8906| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11744_1189) ) (!  (not (select (|PolymorphicMapType_8906_8417_1189#PolymorphicMapType_8906| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8906_8417_1189#PolymorphicMapType_8906| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8430_8431) ) (!  (not (select (|PolymorphicMapType_8906_8417_8431#PolymorphicMapType_8906| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8906_8417_8431#PolymorphicMapType_8906| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8417_53) ) (!  (not (select (|PolymorphicMapType_8906_8417_53#PolymorphicMapType_8906| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8906_8417_53#PolymorphicMapType_8906| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8357) (x@@0 T@Ref) (a_2 Int) ) (! (dummyFunction_1406 (|add3#triggerStateless| x@@0 a_2))
 :qid |stdinbpl.274:15|
 :skolemid |27|
 :pattern ( (|add3'| Heap@@1 x@@0 a_2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8357) (x@@1 T@Ref) (b_24@@0 Bool) ) (! (dummyFunction_1406 (|tern#triggerStateless| x@@1 b_24@@0))
 :qid |stdinbpl.358:15|
 :skolemid |31|
 :pattern ( (|tern'| Heap@@2 x@@1 b_24@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8357) (Mask@@1 T@PolymorphicMapType_8378) (x@@2 T@Ref) (a_2@@0 Int) ) (!  (=> (state Heap@@3 Mask@@1) (= (|add3'| Heap@@3 x@@2 a_2@@0) (|add3#frame| (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@3) x@@2 g)) (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@3) x@@2 f_7)) (FrameFragment_1189 (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@3) x@@2 g)))) x@@2 a_2@@0)))
 :qid |stdinbpl.287:15|
 :skolemid |29|
 :pattern ( (state Heap@@3 Mask@@1) (|add3'| Heap@@3 x@@2 a_2@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8357) (x@@3 T@Ref) ) (! (dummyFunction_1406 (|add#triggerStateless| x@@3))
 :qid |stdinbpl.203:15|
 :skolemid |23|
 :pattern ( (|add'| Heap@@4 x@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8357) (x@@4 T@Ref) ) (!  (and (= (add Heap@@5 x@@4) (|add'| Heap@@5 x@@4)) (dummyFunction_1406 (|add#triggerStateless| x@@4)))
 :qid |stdinbpl.199:15|
 :skolemid |22|
 :pattern ( (add Heap@@5 x@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8357) (ExhaleHeap T@PolymorphicMapType_8357) (Mask@@2 T@PolymorphicMapType_8378) (pm_f T@Field_4359_25722) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_4359_25786 Mask@@2 null pm_f) (IsPredicateField_4359_25813 pm_f)) (= (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@6) null (PredicateMaskField_4359 pm_f)) (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| ExhaleHeap) null (PredicateMaskField_4359 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@2) (IsPredicateField_4359_25813 pm_f) (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| ExhaleHeap) null (PredicateMaskField_4359 pm_f)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8357) (ExhaleHeap@@0 T@PolymorphicMapType_8357) (Mask@@3 T@PolymorphicMapType_8378) (pm_f@@0 T@Field_4359_25722) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_4359_25786 Mask@@3 null pm_f@@0) (IsWandField_4359_27560 pm_f@@0)) (= (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@7) null (WandMaskField_4359 pm_f@@0)) (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| ExhaleHeap@@0) null (WandMaskField_4359 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@3) (IsWandField_4359_27560 pm_f@@0) (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| ExhaleHeap@@0) null (WandMaskField_4359 pm_f@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8357) (Mask@@4 T@PolymorphicMapType_8378) (x@@5 T@Ref) ) (!  (=> (state Heap@@8 Mask@@4) (= (|add'| Heap@@8 x@@5) (|add#frame| (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@8) x@@5 f_7)) (FrameFragment_1189 (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@8) x@@5 g))) x@@5)))
 :qid |stdinbpl.216:15|
 :skolemid |25|
 :pattern ( (state Heap@@8 Mask@@4) (|add'| Heap@@8 x@@5))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8357) (ExhaleHeap@@1 T@PolymorphicMapType_8357) (Mask@@5 T@PolymorphicMapType_8378) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@5) (=> (select (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@@9) o_1 $allocated) (select (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@5) (select (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_4359_25722) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8417_8417 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8417_8417 p v_1 p w))
)))
(assert  (not (IsPredicateField_4359_1189 f_7)))
(assert  (not (IsWandField_4359_1189 f_7)))
(assert  (not (IsPredicateField_4359_1189 g)))
(assert  (not (IsWandField_4359_1189 g)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8357) (ExhaleHeap@@2 T@PolymorphicMapType_8357) (Mask@@6 T@PolymorphicMapType_8378) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@6) (succHeap Heap@@10 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_8378) (o_2@@4 T@Ref) (f_4@@4 T@Field_4359_25855) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_8378_4359_29977#PolymorphicMapType_8378| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4359_31106 f_4@@4))) (not (IsWandField_4359_31122 f_4@@4))) (<= (select (|PolymorphicMapType_8378_4359_29977#PolymorphicMapType_8378| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_8378_4359_29977#PolymorphicMapType_8378| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8378) (o_2@@5 T@Ref) (f_4@@5 T@Field_4359_25722) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8378_4359_25722#PolymorphicMapType_8378| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4359_25813 f_4@@5))) (not (IsWandField_4359_27560 f_4@@5))) (<= (select (|PolymorphicMapType_8378_4359_25722#PolymorphicMapType_8378| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8378_4359_25722#PolymorphicMapType_8378| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8378) (o_2@@6 T@Ref) (f_4@@6 T@Field_8430_8431) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_8378_4359_8431#PolymorphicMapType_8378| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4359_8431 f_4@@6))) (not (IsWandField_4359_8431 f_4@@6))) (<= (select (|PolymorphicMapType_8378_4359_8431#PolymorphicMapType_8378| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_8378_4359_8431#PolymorphicMapType_8378| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8378) (o_2@@7 T@Ref) (f_4@@7 T@Field_8417_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8378_4359_53#PolymorphicMapType_8378| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4359_53 f_4@@7))) (not (IsWandField_4359_53 f_4@@7))) (<= (select (|PolymorphicMapType_8378_4359_53#PolymorphicMapType_8378| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8378_4359_53#PolymorphicMapType_8378| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8378) (o_2@@8 T@Ref) (f_4@@8 T@Field_11744_1189) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4359_1189 f_4@@8))) (not (IsWandField_4359_1189 f_4@@8))) (<= (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8378) (o_2@@9 T@Ref) (f_4@@9 T@Field_4359_25855) ) (! (= (HasDirectPerm_4359_31560 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_8378_4359_29977#PolymorphicMapType_8378| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4359_31560 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8378) (o_2@@10 T@Ref) (f_4@@10 T@Field_4359_25722) ) (! (= (HasDirectPerm_4359_25786 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_8378_4359_25722#PolymorphicMapType_8378| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4359_25786 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8378) (o_2@@11 T@Ref) (f_4@@11 T@Field_8430_8431) ) (! (= (HasDirectPerm_4359_8431 Mask@@14 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_8378_4359_8431#PolymorphicMapType_8378| Mask@@14) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4359_8431 Mask@@14 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8378) (o_2@@12 T@Ref) (f_4@@12 T@Field_8417_53) ) (! (= (HasDirectPerm_4359_53 Mask@@15 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_8378_4359_53#PolymorphicMapType_8378| Mask@@15) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4359_53 Mask@@15 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8378) (o_2@@13 T@Ref) (f_4@@13 T@Field_11744_1189) ) (! (= (HasDirectPerm_4359_1189 Mask@@16 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@@16) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4359_1189 Mask@@16 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8357) (ExhaleHeap@@3 T@PolymorphicMapType_8357) (Mask@@17 T@PolymorphicMapType_8378) (pm_f@@1 T@Field_4359_25722) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@17) (=> (and (HasDirectPerm_4359_25786 Mask@@17 null pm_f@@1) (IsPredicateField_4359_25813 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_8417_53) ) (!  (=> (select (|PolymorphicMapType_8906_8417_53#PolymorphicMapType_8906| (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@11) null (PredicateMaskField_4359 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@@11) o2 f_2) (select (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_8430_8431) ) (!  (=> (select (|PolymorphicMapType_8906_8417_8431#PolymorphicMapType_8906| (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@11) null (PredicateMaskField_4359 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| Heap@@11) o2@@0 f_2@@0) (select (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_11744_1189) ) (!  (=> (select (|PolymorphicMapType_8906_8417_1189#PolymorphicMapType_8906| (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@11) null (PredicateMaskField_4359 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@11) o2@@1 f_2@@1) (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_4359_25722) ) (!  (=> (select (|PolymorphicMapType_8906_8417_25722#PolymorphicMapType_8906| (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@11) null (PredicateMaskField_4359 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| Heap@@11) o2@@2 f_2@@2) (select (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_4359_25855) ) (!  (=> (select (|PolymorphicMapType_8906_8417_27033#PolymorphicMapType_8906| (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@11) null (PredicateMaskField_4359 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@11) o2@@3 f_2@@3) (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@17) (IsPredicateField_4359_25813 pm_f@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8357) (ExhaleHeap@@4 T@PolymorphicMapType_8357) (Mask@@18 T@PolymorphicMapType_8378) (pm_f@@2 T@Field_4359_25722) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@18) (=> (and (HasDirectPerm_4359_25786 Mask@@18 null pm_f@@2) (IsWandField_4359_27560 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_8417_53) ) (!  (=> (select (|PolymorphicMapType_8906_8417_53#PolymorphicMapType_8906| (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@12) null (WandMaskField_4359 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@@12) o2@@4 f_2@@4) (select (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_8430_8431) ) (!  (=> (select (|PolymorphicMapType_8906_8417_8431#PolymorphicMapType_8906| (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@12) null (WandMaskField_4359 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| Heap@@12) o2@@5 f_2@@5) (select (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_11744_1189) ) (!  (=> (select (|PolymorphicMapType_8906_8417_1189#PolymorphicMapType_8906| (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@12) null (WandMaskField_4359 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@12) o2@@6 f_2@@6) (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_4359_25722) ) (!  (=> (select (|PolymorphicMapType_8906_8417_25722#PolymorphicMapType_8906| (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@12) null (WandMaskField_4359 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| Heap@@12) o2@@7 f_2@@7) (select (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_4359_25855) ) (!  (=> (select (|PolymorphicMapType_8906_8417_27033#PolymorphicMapType_8906| (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@12) null (WandMaskField_4359 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@12) o2@@8 f_2@@8) (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@18) (IsWandField_4359_27560 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8357) (ExhaleHeap@@5 T@PolymorphicMapType_8357) (Mask@@19 T@PolymorphicMapType_8378) (o_1@@0 T@Ref) (f_2@@9 T@Field_4359_25855) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@19) (=> (HasDirectPerm_4359_31560 Mask@@19 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@13) o_1@@0 f_2@@9) (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@19) (select (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8357) (ExhaleHeap@@6 T@PolymorphicMapType_8357) (Mask@@20 T@PolymorphicMapType_8378) (o_1@@1 T@Ref) (f_2@@10 T@Field_4359_25722) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@20) (=> (HasDirectPerm_4359_25786 Mask@@20 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| Heap@@14) o_1@@1 f_2@@10) (select (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@20) (select (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8357) (ExhaleHeap@@7 T@PolymorphicMapType_8357) (Mask@@21 T@PolymorphicMapType_8378) (o_1@@2 T@Ref) (f_2@@11 T@Field_8430_8431) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@21) (=> (HasDirectPerm_4359_8431 Mask@@21 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| Heap@@15) o_1@@2 f_2@@11) (select (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@21) (select (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8357) (ExhaleHeap@@8 T@PolymorphicMapType_8357) (Mask@@22 T@PolymorphicMapType_8378) (o_1@@3 T@Ref) (f_2@@12 T@Field_8417_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@22) (=> (HasDirectPerm_4359_53 Mask@@22 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@@16) o_1@@3 f_2@@12) (select (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@22) (select (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8357) (ExhaleHeap@@9 T@PolymorphicMapType_8357) (Mask@@23 T@PolymorphicMapType_8378) (o_1@@4 T@Ref) (f_2@@13 T@Field_11744_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@9 Mask@@23) (=> (HasDirectPerm_4359_1189 Mask@@23 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@17) o_1@@4 f_2@@13) (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@9 Mask@@23) (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4359_25855) ) (! (= (select (|PolymorphicMapType_8378_4359_29977#PolymorphicMapType_8378| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8378_4359_29977#PolymorphicMapType_8378| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_4359_25722) ) (! (= (select (|PolymorphicMapType_8378_4359_25722#PolymorphicMapType_8378| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8378_4359_25722#PolymorphicMapType_8378| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_8430_8431) ) (! (= (select (|PolymorphicMapType_8378_4359_8431#PolymorphicMapType_8378| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8378_4359_8431#PolymorphicMapType_8378| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_8417_53) ) (! (= (select (|PolymorphicMapType_8378_4359_53#PolymorphicMapType_8378| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8378_4359_53#PolymorphicMapType_8378| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_11744_1189) ) (! (= (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8357) (x@@6 T@Ref) (a_2@@1 Int) ) (!  (and (= (add3 Heap@@18 x@@6 a_2@@1) (|add3'| Heap@@18 x@@6 a_2@@1)) (dummyFunction_1406 (|add3#triggerStateless| x@@6 a_2@@1)))
 :qid |stdinbpl.270:15|
 :skolemid |26|
 :pattern ( (add3 Heap@@18 x@@6 a_2@@1))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8357) (x@@7 T@Ref) (b_24@@1 Bool) ) (!  (and (= (tern Heap@@19 x@@7 b_24@@1) (|tern'| Heap@@19 x@@7 b_24@@1)) (dummyFunction_1406 (|tern#triggerStateless| x@@7 b_24@@1)))
 :qid |stdinbpl.354:15|
 :skolemid |30|
 :pattern ( (tern Heap@@19 x@@7 b_24@@1))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8378) (SummandMask1 T@PolymorphicMapType_8378) (SummandMask2 T@PolymorphicMapType_8378) (o_2@@19 T@Ref) (f_4@@19 T@Field_4359_25855) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8378_4359_29977#PolymorphicMapType_8378| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_8378_4359_29977#PolymorphicMapType_8378| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_8378_4359_29977#PolymorphicMapType_8378| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8378_4359_29977#PolymorphicMapType_8378| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8378_4359_29977#PolymorphicMapType_8378| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8378_4359_29977#PolymorphicMapType_8378| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8378) (SummandMask1@@0 T@PolymorphicMapType_8378) (SummandMask2@@0 T@PolymorphicMapType_8378) (o_2@@20 T@Ref) (f_4@@20 T@Field_4359_25722) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8378_4359_25722#PolymorphicMapType_8378| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_8378_4359_25722#PolymorphicMapType_8378| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_8378_4359_25722#PolymorphicMapType_8378| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8378_4359_25722#PolymorphicMapType_8378| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8378_4359_25722#PolymorphicMapType_8378| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8378_4359_25722#PolymorphicMapType_8378| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8378) (SummandMask1@@1 T@PolymorphicMapType_8378) (SummandMask2@@1 T@PolymorphicMapType_8378) (o_2@@21 T@Ref) (f_4@@21 T@Field_8430_8431) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8378_4359_8431#PolymorphicMapType_8378| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_8378_4359_8431#PolymorphicMapType_8378| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_8378_4359_8431#PolymorphicMapType_8378| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8378_4359_8431#PolymorphicMapType_8378| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8378_4359_8431#PolymorphicMapType_8378| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8378_4359_8431#PolymorphicMapType_8378| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8378) (SummandMask1@@2 T@PolymorphicMapType_8378) (SummandMask2@@2 T@PolymorphicMapType_8378) (o_2@@22 T@Ref) (f_4@@22 T@Field_8417_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8378_4359_53#PolymorphicMapType_8378| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_8378_4359_53#PolymorphicMapType_8378| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_8378_4359_53#PolymorphicMapType_8378| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8378_4359_53#PolymorphicMapType_8378| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8378_4359_53#PolymorphicMapType_8378| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8378_4359_53#PolymorphicMapType_8378| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8378) (SummandMask1@@3 T@PolymorphicMapType_8378) (SummandMask2@@3 T@PolymorphicMapType_8378) (o_2@@23 T@Ref) (f_4@@23 T@Field_11744_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8357) (Mask@@24 T@PolymorphicMapType_8378) (x@@8 T@Ref) ) (!  (=> (and (state Heap@@20 Mask@@24) (< AssumeFunctionsAbove 0)) (= (add Heap@@20 x@@8) (+ (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@20) x@@8 f_7) (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@20) x@@8 g))))
 :qid |stdinbpl.209:15|
 :skolemid |24|
 :pattern ( (state Heap@@20 Mask@@24) (add Heap@@20 x@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8357) (Mask@@25 T@PolymorphicMapType_8378) (x@@9 T@Ref) (a_2@@2 Int) ) (!  (=> (and (state Heap@@21 Mask@@25) (< AssumeFunctionsAbove 1)) (=> (> (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@21) x@@9 g) 0) (= (add3 Heap@@21 x@@9 a_2@@2) (+ (- (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@21) x@@9 f_7) a_2@@2) (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@21) x@@9 g)))))
 :qid |stdinbpl.280:15|
 :skolemid |28|
 :pattern ( (state Heap@@21 Mask@@25) (add3 Heap@@21 x@@9 a_2@@2))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8357) (Mask@@26 T@PolymorphicMapType_8378) (x@@10 T@Ref) (b_24@@2 Bool) ) (!  (=> (and (state Heap@@22 Mask@@26) (< AssumeFunctionsAbove 2)) (= (tern Heap@@22 x@@10 b_24@@2) (ite b_24@@2 (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@22) x@@10 f_7) (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@22) x@@10 g))))
 :qid |stdinbpl.364:15|
 :skolemid |32|
 :pattern ( (state Heap@@22 Mask@@26) (tern Heap@@22 x@@10 b_24@@2))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8357) (o T@Ref) (f_3 T@Field_4359_25722) (v T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_8357 (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@@23) (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| Heap@@23) (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@23) (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@23) (store (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| Heap@@23) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8357 (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@@23) (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| Heap@@23) (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@23) (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@23) (store (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| Heap@@23) o f_3 v)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8357) (o@@0 T@Ref) (f_3@@0 T@Field_4359_25855) (v@@0 T@PolymorphicMapType_8906) ) (! (succHeap Heap@@24 (PolymorphicMapType_8357 (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@@24) (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| Heap@@24) (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@24) (store (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@24) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8357 (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@@24) (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| Heap@@24) (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@24) (store (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@24) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8357) (o@@1 T@Ref) (f_3@@1 T@Field_11744_1189) (v@@1 Int) ) (! (succHeap Heap@@25 (PolymorphicMapType_8357 (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@@25) (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| Heap@@25) (store (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@25) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@25) (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8357 (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@@25) (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| Heap@@25) (store (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@25) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@25) (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8357) (o@@2 T@Ref) (f_3@@2 T@Field_8430_8431) (v@@2 T@Ref) ) (! (succHeap Heap@@26 (PolymorphicMapType_8357 (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@@26) (store (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| Heap@@26) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@26) (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@26) (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8357 (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@@26) (store (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| Heap@@26) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@26) (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@26) (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8357) (o@@3 T@Ref) (f_3@@3 T@Field_8417_53) (v@@3 Bool) ) (! (succHeap Heap@@27 (PolymorphicMapType_8357 (store (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@@27) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| Heap@@27) (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@27) (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@27) (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8357 (store (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@@27) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| Heap@@27) (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@27) (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@27) (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| Heap@@27)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_8430_8431) (Heap@@28 T@PolymorphicMapType_8357) ) (!  (=> (select (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@@28) o@@4 $allocated) (select (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@@28) (select (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| Heap@@28) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| Heap@@28) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_4359_25722) (v_1@@0 T@FrameType) (q T@Field_4359_25722) (w@@0 T@FrameType) (r T@Field_4359_25722) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8417_8417 p@@1 v_1@@0 q w@@0) (InsidePredicate_8417_8417 q w@@0 r u)) (InsidePredicate_8417_8417 p@@1 v_1@@0 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8417_8417 p@@1 v_1@@0 q w@@0) (InsidePredicate_8417_8417 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@4 () T@PolymorphicMapType_8357)
(declare-fun freshObj@0 () T@Ref)
(declare-fun freshObj@1 () T@Ref)
(declare-fun Mask@3 () T@PolymorphicMapType_8378)
(declare-fun Heap@3 () T@PolymorphicMapType_8357)
(declare-fun Heap@@29 () T@PolymorphicMapType_8357)
(declare-fun x@@11 () T@Ref)
(declare-fun y () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_8357)
(declare-fun Mask@0 () T@PolymorphicMapType_8378)
(declare-fun Mask@1 () T@PolymorphicMapType_8378)
(declare-fun Heap@1 () T@PolymorphicMapType_8357)
(declare-fun Mask@2 () T@PolymorphicMapType_8378)
(declare-fun Heap@2 () T@PolymorphicMapType_8357)
(set-info :boogie-vc-id test1_1)
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
 (=> (= (ControlFlow 0 0) 24) (let ((anon12_Else_correct  (=> (= (ControlFlow 0 14) (- 0 13)) (= (add Heap@4 freshObj@0) (add Heap@4 freshObj@1)))))
(let ((anon12_Then_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@3) freshObj@1 f_7)))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@3) freshObj@1 f_7))) (=> (= (ControlFlow 0 11) (- 0 10)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@3) freshObj@1 g))))))))
(let ((anon11_Then_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@3) freshObj@0 f_7)))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@3) freshObj@0 f_7))) (=> (= (ControlFlow 0 8) (- 0 7)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@3) freshObj@0 g))))))))
(let ((anon10_Else_correct  (and (=> (= (ControlFlow 0 15) (- 0 18)) (= (add Heap@3 freshObj@0) (add Heap@3 freshObj@1))) (=> (= (add Heap@3 freshObj@0) (add Heap@3 freshObj@1)) (=> (state Heap@3 Mask@3) (and (=> (= (ControlFlow 0 15) (- 0 17)) (HasDirectPerm_4359_1189 Mask@3 freshObj@0 f_7)) (=> (HasDirectPerm_4359_1189 Mask@3 freshObj@0 f_7) (and (=> (= (ControlFlow 0 15) (- 0 16)) (= FullPerm (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@3) freshObj@0 f_7))) (=> (= FullPerm (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@3) freshObj@0 f_7)) (=> (and (= Heap@4 (PolymorphicMapType_8357 (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@3) (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| Heap@3) (store (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@3) freshObj@0 f_7 (+ (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@3) freshObj@0 f_7) 1)) (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@3) (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| Heap@3))) (state Heap@4 Mask@3)) (and (and (=> (= (ControlFlow 0 15) 8) anon11_Then_correct) (=> (= (ControlFlow 0 15) 11) anon12_Then_correct)) (=> (= (ControlFlow 0 15) 14) anon12_Else_correct))))))))))))
(let ((anon10_Then_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@3) freshObj@1 f_7)))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@3) freshObj@1 f_7))) (=> (= (ControlFlow 0 5) (- 0 4)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@3) freshObj@1 g))))))))
(let ((anon9_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@3) freshObj@0 f_7)))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@3) freshObj@0 f_7))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@3) freshObj@0 g))))))))
(let ((anon0_correct  (=> (state Heap@@29 ZeroMask) (=> (and (and (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@@29) x@@11 $allocated) (select (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@@29) y $allocated))) (and (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@@29) freshObj@0 $allocated))) (and (= Heap@0 (PolymorphicMapType_8357 (store (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@@29) freshObj@0 $allocated true) (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| Heap@@29) (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@@29) (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@@29) (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| Heap@@29))) (= Mask@0 (PolymorphicMapType_8378 (store (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| ZeroMask) freshObj@0 f_7 (+ (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| ZeroMask) freshObj@0 f_7) FullPerm)) (|PolymorphicMapType_8378_4359_53#PolymorphicMapType_8378| ZeroMask) (|PolymorphicMapType_8378_4359_8431#PolymorphicMapType_8378| ZeroMask) (|PolymorphicMapType_8378_4359_25722#PolymorphicMapType_8378| ZeroMask) (|PolymorphicMapType_8378_4359_29977#PolymorphicMapType_8378| ZeroMask)))))) (and (and (and (= Mask@1 (PolymorphicMapType_8378 (store (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@0) freshObj@0 g (+ (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@0) freshObj@0 g) FullPerm)) (|PolymorphicMapType_8378_4359_53#PolymorphicMapType_8378| Mask@0) (|PolymorphicMapType_8378_4359_8431#PolymorphicMapType_8378| Mask@0) (|PolymorphicMapType_8378_4359_25722#PolymorphicMapType_8378| Mask@0) (|PolymorphicMapType_8378_4359_29977#PolymorphicMapType_8378| Mask@0))) (state Heap@0 Mask@1)) (and (not (= freshObj@1 null)) (not (select (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@0) freshObj@1 $allocated)))) (and (and (= Heap@1 (PolymorphicMapType_8357 (store (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@0) freshObj@1 $allocated true) (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| Heap@0) (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@0) (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@0) (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| Heap@0))) (= Mask@2 (PolymorphicMapType_8378 (store (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@1) freshObj@1 f_7 (+ (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@1) freshObj@1 f_7) FullPerm)) (|PolymorphicMapType_8378_4359_53#PolymorphicMapType_8378| Mask@1) (|PolymorphicMapType_8378_4359_8431#PolymorphicMapType_8378| Mask@1) (|PolymorphicMapType_8378_4359_25722#PolymorphicMapType_8378| Mask@1) (|PolymorphicMapType_8378_4359_29977#PolymorphicMapType_8378| Mask@1)))) (and (= Mask@3 (PolymorphicMapType_8378 (store (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@2) freshObj@1 g (+ (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@2) freshObj@1 g) FullPerm)) (|PolymorphicMapType_8378_4359_53#PolymorphicMapType_8378| Mask@2) (|PolymorphicMapType_8378_4359_8431#PolymorphicMapType_8378| Mask@2) (|PolymorphicMapType_8378_4359_25722#PolymorphicMapType_8378| Mask@2) (|PolymorphicMapType_8378_4359_29977#PolymorphicMapType_8378| Mask@2))) (state Heap@1 Mask@3))))) (and (=> (= (ControlFlow 0 19) (- 0 23)) (HasDirectPerm_4359_1189 Mask@3 freshObj@1 f_7)) (=> (HasDirectPerm_4359_1189 Mask@3 freshObj@1 f_7) (and (=> (= (ControlFlow 0 19) (- 0 22)) (= FullPerm (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@3) freshObj@0 f_7))) (=> (= FullPerm (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@3) freshObj@0 f_7)) (=> (and (= Heap@2 (PolymorphicMapType_8357 (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@1) (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| Heap@1) (store (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@1) freshObj@0 f_7 (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@1) freshObj@1 f_7)) (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@1) (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| Heap@1))) (state Heap@2 Mask@3)) (and (=> (= (ControlFlow 0 19) (- 0 21)) (HasDirectPerm_4359_1189 Mask@3 freshObj@0 g)) (=> (HasDirectPerm_4359_1189 Mask@3 freshObj@0 g) (and (=> (= (ControlFlow 0 19) (- 0 20)) (= FullPerm (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@3) freshObj@1 g))) (=> (= FullPerm (select (|PolymorphicMapType_8378_4359_1189#PolymorphicMapType_8378| Mask@3) freshObj@1 g)) (=> (and (= Heap@3 (PolymorphicMapType_8357 (|PolymorphicMapType_8357_4231_53#PolymorphicMapType_8357| Heap@2) (|PolymorphicMapType_8357_4234_4235#PolymorphicMapType_8357| Heap@2) (store (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@2) freshObj@1 g (select (|PolymorphicMapType_8357_4359_1189#PolymorphicMapType_8357| Heap@2) freshObj@0 g)) (|PolymorphicMapType_8357_4359_25899#PolymorphicMapType_8357| Heap@2) (|PolymorphicMapType_8357_8417_25722#PolymorphicMapType_8357| Heap@2))) (state Heap@3 Mask@3)) (and (and (=> (= (ControlFlow 0 19) 2) anon9_Then_correct) (=> (= (ControlFlow 0 19) 5) anon10_Then_correct)) (=> (= (ControlFlow 0 19) 15) anon10_Else_correct))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 24) 19) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 14) (- 13))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
