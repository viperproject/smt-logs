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
(declare-sort T@Field_6087_53 0)
(declare-sort T@Field_6100_6101 0)
(declare-sort T@Field_9414_1189 0)
(declare-sort T@Field_3175_17436 0)
(declare-sort T@Field_3175_17303 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6048 0)) (((PolymorphicMapType_6048 (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| (Array T@Ref T@Field_9414_1189 Real)) (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| (Array T@Ref T@Field_6100_6101 Real)) (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| (Array T@Ref T@Field_6087_53 Real)) (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| (Array T@Ref T@Field_3175_17303 Real)) (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| (Array T@Ref T@Field_3175_17436 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6576 0)) (((PolymorphicMapType_6576 (|PolymorphicMapType_6576_6087_53#PolymorphicMapType_6576| (Array T@Ref T@Field_6087_53 Bool)) (|PolymorphicMapType_6576_6087_6101#PolymorphicMapType_6576| (Array T@Ref T@Field_6100_6101 Bool)) (|PolymorphicMapType_6576_6087_1189#PolymorphicMapType_6576| (Array T@Ref T@Field_9414_1189 Bool)) (|PolymorphicMapType_6576_6087_17303#PolymorphicMapType_6576| (Array T@Ref T@Field_3175_17303 Bool)) (|PolymorphicMapType_6576_6087_18614#PolymorphicMapType_6576| (Array T@Ref T@Field_3175_17436 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6027 0)) (((PolymorphicMapType_6027 (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| (Array T@Ref T@Field_6087_53 Bool)) (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| (Array T@Ref T@Field_6100_6101 T@Ref)) (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| (Array T@Ref T@Field_9414_1189 Int)) (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| (Array T@Ref T@Field_3175_17436 T@PolymorphicMapType_6576)) (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| (Array T@Ref T@Field_3175_17303 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6087_53)
(declare-fun f_7 () T@Field_9414_1189)
(declare-fun fr_1 () T@Field_6100_6101)
(declare-fun succHeap (T@PolymorphicMapType_6027 T@PolymorphicMapType_6027) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6027 T@PolymorphicMapType_6027) Bool)
(declare-fun state (T@PolymorphicMapType_6027 T@PolymorphicMapType_6048) Bool)
(declare-fun f4_1 (T@PolymorphicMapType_6027 T@Ref) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun f1_3 (T@PolymorphicMapType_6027 T@Ref) Int)
(declare-fun f2_3 (T@PolymorphicMapType_6027 T@Ref) Int)
(declare-fun GoodMask (T@PolymorphicMapType_6048) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6576)
(declare-fun |f1'| (T@PolymorphicMapType_6027 T@Ref) Int)
(declare-fun dummyFunction_1441 (Int) Bool)
(declare-fun |f1#triggerStateless| (T@Ref) Int)
(declare-fun |f2'| (T@PolymorphicMapType_6027 T@Ref) Int)
(declare-fun |f2#triggerStateless| (T@Ref) Int)
(declare-fun |f3'| (T@PolymorphicMapType_6027 T@Ref) Int)
(declare-fun |f3#triggerStateless| (T@Ref) Int)
(declare-fun |f4'| (T@PolymorphicMapType_6027 T@Ref) T@Ref)
(declare-fun dummyFunction_3283 (T@Ref) Bool)
(declare-fun |f4#triggerStateless| (T@Ref) T@Ref)
(declare-fun f3_2 (T@PolymorphicMapType_6027 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6027 T@PolymorphicMapType_6027 T@PolymorphicMapType_6048) Bool)
(declare-fun IsPredicateField_3175_17394 (T@Field_3175_17303) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3175 (T@Field_3175_17303) T@Field_3175_17436)
(declare-fun HasDirectPerm_3175_17367 (T@PolymorphicMapType_6048 T@Ref T@Field_3175_17303) Bool)
(declare-fun IsWandField_3175_19141 (T@Field_3175_17303) Bool)
(declare-fun WandMaskField_3175 (T@Field_3175_17303) T@Field_3175_17436)
(declare-fun dummyHeap () T@PolymorphicMapType_6027)
(declare-fun ZeroMask () T@PolymorphicMapType_6048)
(declare-fun InsidePredicate_6087_6087 (T@Field_3175_17303 T@FrameType T@Field_3175_17303 T@FrameType) Bool)
(declare-fun IsPredicateField_3175_1189 (T@Field_9414_1189) Bool)
(declare-fun IsWandField_3175_1189 (T@Field_9414_1189) Bool)
(declare-fun IsPredicateField_3177_3178 (T@Field_6100_6101) Bool)
(declare-fun IsWandField_3177_3178 (T@Field_6100_6101) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3175_22658 (T@Field_3175_17436) Bool)
(declare-fun IsWandField_3175_22674 (T@Field_3175_17436) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3175_53 (T@Field_6087_53) Bool)
(declare-fun IsWandField_3175_53 (T@Field_6087_53) Bool)
(declare-fun HasDirectPerm_3175_23112 (T@PolymorphicMapType_6048 T@Ref T@Field_3175_17436) Bool)
(declare-fun HasDirectPerm_3175_53 (T@PolymorphicMapType_6048 T@Ref T@Field_6087_53) Bool)
(declare-fun HasDirectPerm_3177_3178 (T@PolymorphicMapType_6048 T@Ref T@Field_6100_6101) Bool)
(declare-fun HasDirectPerm_3175_1189 (T@PolymorphicMapType_6048 T@Ref T@Field_9414_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6048 T@PolymorphicMapType_6048 T@PolymorphicMapType_6048) Bool)
(declare-fun |f1#frame| (T@FrameType T@Ref) Int)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun |f2#frame| (T@FrameType T@Ref) Int)
(declare-fun |f3#frame| (T@FrameType T@Ref) Int)
(declare-fun |f4#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun FrameFragment_3178 (T@Ref) T@FrameType)
(declare-fun |f2#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |f1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |f3#trigger| (T@FrameType T@Ref) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6027) (Heap1 T@PolymorphicMapType_6027) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6027) (Mask T@PolymorphicMapType_6048) (r_1 T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 0)) (= (f4_1 Heap r_1) (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap) r_1 fr_1)))
 :qid |stdinbpl.463:15|
 :skolemid |39|
 :pattern ( (state Heap Mask) (f4_1 Heap r_1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6027) (Mask@@0 T@PolymorphicMapType_6048) (r_1@@0 T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 1)) (= (f1_3 Heap@@0 r_1@@0) (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@0) r_1@@0 f_7)))
 :qid |stdinbpl.210:15|
 :skolemid |24|
 :pattern ( (state Heap@@0 Mask@@0) (f1_3 Heap@@0 r_1@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6027) (Mask@@1 T@PolymorphicMapType_6048) (r_1@@1 T@Ref) ) (!  (=> (and (state Heap@@1 Mask@@1) (< AssumeFunctionsAbove 2)) (= (f2_3 Heap@@1 r_1@@1) (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@1) r_1@@1 f_7)))
 :qid |stdinbpl.295:15|
 :skolemid |29|
 :pattern ( (state Heap@@1 Mask@@1) (f2_3 Heap@@1 r_1@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6027) (Mask@@2 T@PolymorphicMapType_6048) ) (!  (=> (state Heap@@2 Mask@@2) (GoodMask Mask@@2))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@2 Mask@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6027) (Heap1@@0 T@PolymorphicMapType_6027) (Heap2 T@PolymorphicMapType_6027) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3175_17436) ) (!  (not (select (|PolymorphicMapType_6576_6087_18614#PolymorphicMapType_6576| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6576_6087_18614#PolymorphicMapType_6576| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3175_17303) ) (!  (not (select (|PolymorphicMapType_6576_6087_17303#PolymorphicMapType_6576| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6576_6087_17303#PolymorphicMapType_6576| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9414_1189) ) (!  (not (select (|PolymorphicMapType_6576_6087_1189#PolymorphicMapType_6576| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6576_6087_1189#PolymorphicMapType_6576| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6100_6101) ) (!  (not (select (|PolymorphicMapType_6576_6087_6101#PolymorphicMapType_6576| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6576_6087_6101#PolymorphicMapType_6576| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6087_53) ) (!  (not (select (|PolymorphicMapType_6576_6087_53#PolymorphicMapType_6576| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6576_6087_53#PolymorphicMapType_6576| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6027) (r_1@@2 T@Ref) ) (! (dummyFunction_1441 (|f1#triggerStateless| r_1@@2))
 :qid |stdinbpl.204:15|
 :skolemid |23|
 :pattern ( (|f1'| Heap@@3 r_1@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6027) (r_1@@3 T@Ref) ) (! (dummyFunction_1441 (|f2#triggerStateless| r_1@@3))
 :qid |stdinbpl.289:15|
 :skolemid |28|
 :pattern ( (|f2'| Heap@@4 r_1@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6027) (r_1@@4 T@Ref) ) (! (dummyFunction_1441 (|f3#triggerStateless| r_1@@4))
 :qid |stdinbpl.370:15|
 :skolemid |33|
 :pattern ( (|f3'| Heap@@5 r_1@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6027) (r_1@@5 T@Ref) ) (! (dummyFunction_3283 (|f4#triggerStateless| r_1@@5))
 :qid |stdinbpl.457:15|
 :skolemid |38|
 :pattern ( (|f4'| Heap@@6 r_1@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6027) (Mask@@3 T@PolymorphicMapType_6048) (r_1@@6 T@Ref) ) (!  (=> (and (state Heap@@7 Mask@@3) (< AssumeFunctionsAbove 3)) (=> (= (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@7) r_1@@6 f_7) 2) (= (f3_2 Heap@@7 r_1@@6) (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@7) r_1@@6 f_7))))
 :qid |stdinbpl.376:15|
 :skolemid |34|
 :pattern ( (state Heap@@7 Mask@@3) (f3_2 Heap@@7 r_1@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6027) (r_1@@7 T@Ref) ) (!  (and (= (f1_3 Heap@@8 r_1@@7) (|f1'| Heap@@8 r_1@@7)) (dummyFunction_1441 (|f1#triggerStateless| r_1@@7)))
 :qid |stdinbpl.200:15|
 :skolemid |22|
 :pattern ( (f1_3 Heap@@8 r_1@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6027) (r_1@@8 T@Ref) ) (!  (and (= (f2_3 Heap@@9 r_1@@8) (|f2'| Heap@@9 r_1@@8)) (dummyFunction_1441 (|f2#triggerStateless| r_1@@8)))
 :qid |stdinbpl.285:15|
 :skolemid |27|
 :pattern ( (f2_3 Heap@@9 r_1@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6027) (r_1@@9 T@Ref) ) (!  (and (= (f3_2 Heap@@10 r_1@@9) (|f3'| Heap@@10 r_1@@9)) (dummyFunction_1441 (|f3#triggerStateless| r_1@@9)))
 :qid |stdinbpl.366:15|
 :skolemid |32|
 :pattern ( (f3_2 Heap@@10 r_1@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6027) (r_1@@10 T@Ref) ) (!  (and (= (f4_1 Heap@@11 r_1@@10) (|f4'| Heap@@11 r_1@@10)) (dummyFunction_3283 (|f4#triggerStateless| r_1@@10)))
 :qid |stdinbpl.453:15|
 :skolemid |37|
 :pattern ( (f4_1 Heap@@11 r_1@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6027) (ExhaleHeap T@PolymorphicMapType_6027) (Mask@@4 T@PolymorphicMapType_6048) (pm_f T@Field_3175_17303) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@4) (=> (and (HasDirectPerm_3175_17367 Mask@@4 null pm_f) (IsPredicateField_3175_17394 pm_f)) (= (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@12) null (PredicateMaskField_3175 pm_f)) (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| ExhaleHeap) null (PredicateMaskField_3175 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@4) (IsPredicateField_3175_17394 pm_f) (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| ExhaleHeap) null (PredicateMaskField_3175 pm_f)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6027) (ExhaleHeap@@0 T@PolymorphicMapType_6027) (Mask@@5 T@PolymorphicMapType_6048) (pm_f@@0 T@Field_3175_17303) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@5) (=> (and (HasDirectPerm_3175_17367 Mask@@5 null pm_f@@0) (IsWandField_3175_19141 pm_f@@0)) (= (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@13) null (WandMaskField_3175 pm_f@@0)) (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| ExhaleHeap@@0) null (WandMaskField_3175 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@5) (IsWandField_3175_19141 pm_f@@0) (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| ExhaleHeap@@0) null (WandMaskField_3175 pm_f@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6027) (ExhaleHeap@@1 T@PolymorphicMapType_6027) (Mask@@6 T@PolymorphicMapType_6048) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@1 Mask@@6) (=> (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@14) o_1 $allocated) (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@1 Mask@@6) (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_3175_17303) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6087_6087 p v_1 p w))
 :qid |stdinbpl.177:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6087_6087 p v_1 p w))
)))
(assert  (not (IsPredicateField_3175_1189 f_7)))
(assert  (not (IsWandField_3175_1189 f_7)))
(assert  (not (IsPredicateField_3177_3178 fr_1)))
(assert  (not (IsWandField_3177_3178 fr_1)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6027) (ExhaleHeap@@2 T@PolymorphicMapType_6027) (Mask@@7 T@PolymorphicMapType_6048) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@2 Mask@@7) (succHeap Heap@@15 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@2 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6048) (o_2@@4 T@Ref) (f_4@@4 T@Field_3175_17436) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3175_22658 f_4@@4))) (not (IsWandField_3175_22674 f_4@@4))) (<= (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6048) (o_2@@5 T@Ref) (f_4@@5 T@Field_3175_17303) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3175_17394 f_4@@5))) (not (IsWandField_3175_19141 f_4@@5))) (<= (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6048) (o_2@@6 T@Ref) (f_4@@6 T@Field_6087_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3175_53 f_4@@6))) (not (IsWandField_3175_53 f_4@@6))) (<= (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6048) (o_2@@7 T@Ref) (f_4@@7 T@Field_6100_6101) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| Mask@@11) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3177_3178 f_4@@7))) (not (IsWandField_3177_3178 f_4@@7))) (<= (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| Mask@@11) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| Mask@@11) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6048) (o_2@@8 T@Ref) (f_4@@8 T@Field_9414_1189) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| Mask@@12) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3175_1189 f_4@@8))) (not (IsWandField_3175_1189 f_4@@8))) (<= (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| Mask@@12) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| Mask@@12) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6048) (o_2@@9 T@Ref) (f_4@@9 T@Field_3175_17436) ) (! (= (HasDirectPerm_3175_23112 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3175_23112 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6048) (o_2@@10 T@Ref) (f_4@@10 T@Field_3175_17303) ) (! (= (HasDirectPerm_3175_17367 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3175_17367 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6048) (o_2@@11 T@Ref) (f_4@@11 T@Field_6087_53) ) (! (= (HasDirectPerm_3175_53 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3175_53 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6048) (o_2@@12 T@Ref) (f_4@@12 T@Field_6100_6101) ) (! (= (HasDirectPerm_3177_3178 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3177_3178 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6048) (o_2@@13 T@Ref) (f_4@@13 T@Field_9414_1189) ) (! (= (HasDirectPerm_3175_1189 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3175_1189 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6027) (ExhaleHeap@@3 T@PolymorphicMapType_6027) (Mask@@18 T@PolymorphicMapType_6048) (pm_f@@1 T@Field_3175_17303) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_3175_17367 Mask@@18 null pm_f@@1) (IsPredicateField_3175_17394 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6087_53) ) (!  (=> (select (|PolymorphicMapType_6576_6087_53#PolymorphicMapType_6576| (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@16) null (PredicateMaskField_3175 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@16) o2 f_2) (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6100_6101) ) (!  (=> (select (|PolymorphicMapType_6576_6087_6101#PolymorphicMapType_6576| (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@16) null (PredicateMaskField_3175 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@16) o2@@0 f_2@@0) (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_9414_1189) ) (!  (=> (select (|PolymorphicMapType_6576_6087_1189#PolymorphicMapType_6576| (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@16) null (PredicateMaskField_3175 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@16) o2@@1 f_2@@1) (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3175_17303) ) (!  (=> (select (|PolymorphicMapType_6576_6087_17303#PolymorphicMapType_6576| (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@16) null (PredicateMaskField_3175 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@16) o2@@2 f_2@@2) (select (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3175_17436) ) (!  (=> (select (|PolymorphicMapType_6576_6087_18614#PolymorphicMapType_6576| (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@16) null (PredicateMaskField_3175 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@16) o2@@3 f_2@@3) (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@3 Mask@@18) (IsPredicateField_3175_17394 pm_f@@1))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6027) (ExhaleHeap@@4 T@PolymorphicMapType_6027) (Mask@@19 T@PolymorphicMapType_6048) (pm_f@@2 T@Field_3175_17303) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_3175_17367 Mask@@19 null pm_f@@2) (IsWandField_3175_19141 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6087_53) ) (!  (=> (select (|PolymorphicMapType_6576_6087_53#PolymorphicMapType_6576| (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@17) null (WandMaskField_3175 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@17) o2@@4 f_2@@4) (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6100_6101) ) (!  (=> (select (|PolymorphicMapType_6576_6087_6101#PolymorphicMapType_6576| (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@17) null (WandMaskField_3175 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@17) o2@@5 f_2@@5) (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_9414_1189) ) (!  (=> (select (|PolymorphicMapType_6576_6087_1189#PolymorphicMapType_6576| (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@17) null (WandMaskField_3175 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@17) o2@@6 f_2@@6) (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_3175_17303) ) (!  (=> (select (|PolymorphicMapType_6576_6087_17303#PolymorphicMapType_6576| (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@17) null (WandMaskField_3175 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@17) o2@@7 f_2@@7) (select (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_3175_17436) ) (!  (=> (select (|PolymorphicMapType_6576_6087_18614#PolymorphicMapType_6576| (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@17) null (WandMaskField_3175 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@17) o2@@8 f_2@@8) (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@4 Mask@@19) (IsWandField_3175_19141 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.165:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6027) (ExhaleHeap@@5 T@PolymorphicMapType_6027) (Mask@@20 T@PolymorphicMapType_6048) (o_1@@0 T@Ref) (f_2@@9 T@Field_3175_17436) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_3175_23112 Mask@@20 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@18) o_1@@0 f_2@@9) (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6027) (ExhaleHeap@@6 T@PolymorphicMapType_6027) (Mask@@21 T@PolymorphicMapType_6048) (o_1@@1 T@Ref) (f_2@@10 T@Field_3175_17303) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_3175_17367 Mask@@21 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@19) o_1@@1 f_2@@10) (select (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6027) (ExhaleHeap@@7 T@PolymorphicMapType_6027) (Mask@@22 T@PolymorphicMapType_6048) (o_1@@2 T@Ref) (f_2@@11 T@Field_6087_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_3175_53 Mask@@22 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@20) o_1@@2 f_2@@11) (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6027) (ExhaleHeap@@8 T@PolymorphicMapType_6027) (Mask@@23 T@PolymorphicMapType_6048) (o_1@@3 T@Ref) (f_2@@12 T@Field_6100_6101) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_3177_3178 Mask@@23 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@21) o_1@@3 f_2@@12) (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6027) (ExhaleHeap@@9 T@PolymorphicMapType_6027) (Mask@@24 T@PolymorphicMapType_6048) (o_1@@4 T@Ref) (f_2@@13 T@Field_9414_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_3175_1189 Mask@@24 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@22) o_1@@4 f_2@@13) (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3175_17436) ) (! (= (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_3175_17303) ) (! (= (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_6087_53) ) (! (= (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6100_6101) ) (! (= (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_9414_1189) ) (! (= (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6048) (SummandMask1 T@PolymorphicMapType_6048) (SummandMask2 T@PolymorphicMapType_6048) (o_2@@19 T@Ref) (f_4@@19 T@Field_3175_17436) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6048) (SummandMask1@@0 T@PolymorphicMapType_6048) (SummandMask2@@0 T@PolymorphicMapType_6048) (o_2@@20 T@Ref) (f_4@@20 T@Field_3175_17303) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6048) (SummandMask1@@1 T@PolymorphicMapType_6048) (SummandMask2@@1 T@PolymorphicMapType_6048) (o_2@@21 T@Ref) (f_4@@21 T@Field_6087_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6048) (SummandMask1@@2 T@PolymorphicMapType_6048) (SummandMask2@@2 T@PolymorphicMapType_6048) (o_2@@22 T@Ref) (f_4@@22 T@Field_6100_6101) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6048) (SummandMask1@@3 T@PolymorphicMapType_6048) (SummandMask2@@3 T@PolymorphicMapType_6048) (o_2@@23 T@Ref) (f_4@@23 T@Field_9414_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6027) (Mask@@25 T@PolymorphicMapType_6048) (r_1@@11 T@Ref) ) (!  (=> (state Heap@@23 Mask@@25) (= (|f1'| Heap@@23 r_1@@11) (|f1#frame| (FrameFragment_1189 (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@23) r_1@@11 f_7)) r_1@@11)))
 :qid |stdinbpl.217:15|
 :skolemid |25|
 :pattern ( (state Heap@@23 Mask@@25) (|f1'| Heap@@23 r_1@@11))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6027) (Mask@@26 T@PolymorphicMapType_6048) (r_1@@12 T@Ref) ) (!  (=> (state Heap@@24 Mask@@26) (= (|f2'| Heap@@24 r_1@@12) (|f2#frame| (FrameFragment_1189 (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@24) r_1@@12 f_7)) r_1@@12)))
 :qid |stdinbpl.302:15|
 :skolemid |30|
 :pattern ( (state Heap@@24 Mask@@26) (|f2'| Heap@@24 r_1@@12))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6027) (Mask@@27 T@PolymorphicMapType_6048) (r_1@@13 T@Ref) ) (!  (=> (state Heap@@25 Mask@@27) (= (|f3'| Heap@@25 r_1@@13) (|f3#frame| (FrameFragment_1189 (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@25) r_1@@13 f_7)) r_1@@13)))
 :qid |stdinbpl.383:15|
 :skolemid |35|
 :pattern ( (state Heap@@25 Mask@@27) (|f3'| Heap@@25 r_1@@13))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6027) (Mask@@28 T@PolymorphicMapType_6048) (r_1@@14 T@Ref) ) (!  (=> (state Heap@@26 Mask@@28) (= (|f4'| Heap@@26 r_1@@14) (|f4#frame| (FrameFragment_3178 (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@26) r_1@@14 fr_1)) r_1@@14)))
 :qid |stdinbpl.470:15|
 :skolemid |40|
 :pattern ( (state Heap@@26 Mask@@28) (|f4'| Heap@@26 r_1@@14))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6027) (Mask@@29 T@PolymorphicMapType_6048) (r_1@@15 T@Ref) ) (!  (=> (and (state Heap@@27 Mask@@29) (or (< AssumeFunctionsAbove 2) (|f2#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@27) r_1@@15 f_7)) r_1@@15))) (= (|f2'| Heap@@27 r_1@@15) 2))
 :qid |stdinbpl.308:15|
 :skolemid |31|
 :pattern ( (state Heap@@27 Mask@@29) (|f2'| Heap@@27 r_1@@15))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6027) (o T@Ref) (f_3 T@Field_3175_17303) (v T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_6027 (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@28) (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@28) (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@28) (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@28) (store (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@28) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6027 (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@28) (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@28) (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@28) (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@28) (store (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@28) o f_3 v)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6027) (o@@0 T@Ref) (f_3@@0 T@Field_3175_17436) (v@@0 T@PolymorphicMapType_6576) ) (! (succHeap Heap@@29 (PolymorphicMapType_6027 (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@29) (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@29) (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@29) (store (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@29) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6027 (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@29) (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@29) (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@29) (store (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@29) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6027) (o@@1 T@Ref) (f_3@@1 T@Field_9414_1189) (v@@1 Int) ) (! (succHeap Heap@@30 (PolymorphicMapType_6027 (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@30) (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@30) (store (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@30) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@30) (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6027 (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@30) (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@30) (store (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@30) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@30) (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6027) (o@@2 T@Ref) (f_3@@2 T@Field_6100_6101) (v@@2 T@Ref) ) (! (succHeap Heap@@31 (PolymorphicMapType_6027 (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@31) (store (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@31) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@31) (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@31) (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6027 (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@31) (store (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@31) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@31) (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@31) (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6027) (o@@3 T@Ref) (f_3@@3 T@Field_6087_53) (v@@3 Bool) ) (! (succHeap Heap@@32 (PolymorphicMapType_6027 (store (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@32) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@32) (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@32) (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@32) (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6027 (store (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@32) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@32) (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@32) (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@32) (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@32)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_6100_6101) (Heap@@33 T@PolymorphicMapType_6027) ) (!  (=> (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@33) o@@4 $allocated) (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@33) (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@33) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@33) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_3175_17303) (v_1@@0 T@FrameType) (q T@Field_3175_17303) (w@@0 T@FrameType) (r T@Field_3175_17303) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6087_6087 p@@1 v_1@@0 q w@@0) (InsidePredicate_6087_6087 q w@@0 r u)) (InsidePredicate_6087_6087 p@@1 v_1@@0 r u))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6087_6087 p@@1 v_1@@0 q w@@0) (InsidePredicate_6087_6087 q w@@0 r u))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6027) (Mask@@30 T@PolymorphicMapType_6048) (r_1@@16 T@Ref) ) (!  (=> (and (state Heap@@34 Mask@@30) (or (< AssumeFunctionsAbove 1) (|f1#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@34) r_1@@16 f_7)) r_1@@16))) (= (|f1'| Heap@@34 r_1@@16) (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@34) r_1@@16 f_7)))
 :qid |stdinbpl.223:15|
 :skolemid |26|
 :pattern ( (state Heap@@34 Mask@@30) (|f1'| Heap@@34 r_1@@16))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_6027) (Mask@@31 T@PolymorphicMapType_6048) (r_1@@17 T@Ref) ) (!  (=> (and (state Heap@@35 Mask@@31) (or (< AssumeFunctionsAbove 3) (|f3#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@35) r_1@@17 f_7)) r_1@@17))) (=> (= (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@35) r_1@@17 f_7) 2) (= (|f3'| Heap@@35 r_1@@17) 2)))
 :qid |stdinbpl.389:15|
 :skolemid |36|
 :pattern ( (state Heap@@35 Mask@@31) (|f3'| Heap@@35 r_1@@17))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@36 () T@PolymorphicMapType_6027)
(declare-fun r_1@@18 () T@Ref)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_6048)
(declare-fun Result@0 () Int)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id |f3#definedness|)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (=> (state Heap@@36 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@36) r_1@@18 $allocated)) (and (= AssumeFunctionsAbove 3) (> wildcard@0 NoPerm))) (and (and (not (= r_1@@18 null)) (= Mask@0 (PolymorphicMapType_6048 (store (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| ZeroMask) r_1@@18 f_7 (+ (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| ZeroMask) r_1@@18 f_7) wildcard@0)) (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| ZeroMask) (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| ZeroMask) (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| ZeroMask) (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| ZeroMask)))) (and (state Heap@@36 Mask@0) (state Heap@@36 Mask@0)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (HasDirectPerm_3175_1189 Mask@0 r_1@@18 f_7)) (=> (HasDirectPerm_3175_1189 Mask@0 r_1@@18 f_7) (=> (and (= (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@36) r_1@@18 f_7) 2) (state Heap@@36 Mask@0)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_3175_1189 Mask@0 r_1@@18 f_7)) (=> (HasDirectPerm_3175_1189 Mask@0 r_1@@18 f_7) (=> (and (= Result@0 (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@36) r_1@@18 f_7)) (= (ControlFlow 0 2) (- 0 1))) (= Result@0 2)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 5) 2)) anon0_correct)))
PreconditionGeneratedEntry_correct)))
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
(declare-sort T@Field_6087_53 0)
(declare-sort T@Field_6100_6101 0)
(declare-sort T@Field_9414_1189 0)
(declare-sort T@Field_3175_17436 0)
(declare-sort T@Field_3175_17303 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6048 0)) (((PolymorphicMapType_6048 (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| (Array T@Ref T@Field_9414_1189 Real)) (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| (Array T@Ref T@Field_6100_6101 Real)) (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| (Array T@Ref T@Field_6087_53 Real)) (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| (Array T@Ref T@Field_3175_17303 Real)) (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| (Array T@Ref T@Field_3175_17436 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6576 0)) (((PolymorphicMapType_6576 (|PolymorphicMapType_6576_6087_53#PolymorphicMapType_6576| (Array T@Ref T@Field_6087_53 Bool)) (|PolymorphicMapType_6576_6087_6101#PolymorphicMapType_6576| (Array T@Ref T@Field_6100_6101 Bool)) (|PolymorphicMapType_6576_6087_1189#PolymorphicMapType_6576| (Array T@Ref T@Field_9414_1189 Bool)) (|PolymorphicMapType_6576_6087_17303#PolymorphicMapType_6576| (Array T@Ref T@Field_3175_17303 Bool)) (|PolymorphicMapType_6576_6087_18614#PolymorphicMapType_6576| (Array T@Ref T@Field_3175_17436 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6027 0)) (((PolymorphicMapType_6027 (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| (Array T@Ref T@Field_6087_53 Bool)) (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| (Array T@Ref T@Field_6100_6101 T@Ref)) (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| (Array T@Ref T@Field_9414_1189 Int)) (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| (Array T@Ref T@Field_3175_17436 T@PolymorphicMapType_6576)) (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| (Array T@Ref T@Field_3175_17303 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6087_53)
(declare-fun f_7 () T@Field_9414_1189)
(declare-fun fr_1 () T@Field_6100_6101)
(declare-fun succHeap (T@PolymorphicMapType_6027 T@PolymorphicMapType_6027) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6027 T@PolymorphicMapType_6027) Bool)
(declare-fun state (T@PolymorphicMapType_6027 T@PolymorphicMapType_6048) Bool)
(declare-fun f4_1 (T@PolymorphicMapType_6027 T@Ref) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun f1_3 (T@PolymorphicMapType_6027 T@Ref) Int)
(declare-fun f2_3 (T@PolymorphicMapType_6027 T@Ref) Int)
(declare-fun GoodMask (T@PolymorphicMapType_6048) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6576)
(declare-fun |f1'| (T@PolymorphicMapType_6027 T@Ref) Int)
(declare-fun dummyFunction_1441 (Int) Bool)
(declare-fun |f1#triggerStateless| (T@Ref) Int)
(declare-fun |f2'| (T@PolymorphicMapType_6027 T@Ref) Int)
(declare-fun |f2#triggerStateless| (T@Ref) Int)
(declare-fun |f3'| (T@PolymorphicMapType_6027 T@Ref) Int)
(declare-fun |f3#triggerStateless| (T@Ref) Int)
(declare-fun |f4'| (T@PolymorphicMapType_6027 T@Ref) T@Ref)
(declare-fun dummyFunction_3283 (T@Ref) Bool)
(declare-fun |f4#triggerStateless| (T@Ref) T@Ref)
(declare-fun f3_2 (T@PolymorphicMapType_6027 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6027 T@PolymorphicMapType_6027 T@PolymorphicMapType_6048) Bool)
(declare-fun IsPredicateField_3175_17394 (T@Field_3175_17303) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3175 (T@Field_3175_17303) T@Field_3175_17436)
(declare-fun HasDirectPerm_3175_17367 (T@PolymorphicMapType_6048 T@Ref T@Field_3175_17303) Bool)
(declare-fun IsWandField_3175_19141 (T@Field_3175_17303) Bool)
(declare-fun WandMaskField_3175 (T@Field_3175_17303) T@Field_3175_17436)
(declare-fun dummyHeap () T@PolymorphicMapType_6027)
(declare-fun ZeroMask () T@PolymorphicMapType_6048)
(declare-fun InsidePredicate_6087_6087 (T@Field_3175_17303 T@FrameType T@Field_3175_17303 T@FrameType) Bool)
(declare-fun IsPredicateField_3175_1189 (T@Field_9414_1189) Bool)
(declare-fun IsWandField_3175_1189 (T@Field_9414_1189) Bool)
(declare-fun IsPredicateField_3177_3178 (T@Field_6100_6101) Bool)
(declare-fun IsWandField_3177_3178 (T@Field_6100_6101) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3175_22658 (T@Field_3175_17436) Bool)
(declare-fun IsWandField_3175_22674 (T@Field_3175_17436) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3175_53 (T@Field_6087_53) Bool)
(declare-fun IsWandField_3175_53 (T@Field_6087_53) Bool)
(declare-fun HasDirectPerm_3175_23112 (T@PolymorphicMapType_6048 T@Ref T@Field_3175_17436) Bool)
(declare-fun HasDirectPerm_3175_53 (T@PolymorphicMapType_6048 T@Ref T@Field_6087_53) Bool)
(declare-fun HasDirectPerm_3177_3178 (T@PolymorphicMapType_6048 T@Ref T@Field_6100_6101) Bool)
(declare-fun HasDirectPerm_3175_1189 (T@PolymorphicMapType_6048 T@Ref T@Field_9414_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6048 T@PolymorphicMapType_6048 T@PolymorphicMapType_6048) Bool)
(declare-fun |f1#frame| (T@FrameType T@Ref) Int)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun |f2#frame| (T@FrameType T@Ref) Int)
(declare-fun |f3#frame| (T@FrameType T@Ref) Int)
(declare-fun |f4#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun FrameFragment_3178 (T@Ref) T@FrameType)
(declare-fun |f2#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |f1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |f3#trigger| (T@FrameType T@Ref) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6027) (Heap1 T@PolymorphicMapType_6027) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6027) (Mask T@PolymorphicMapType_6048) (r_1 T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 0)) (= (f4_1 Heap r_1) (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap) r_1 fr_1)))
 :qid |stdinbpl.463:15|
 :skolemid |39|
 :pattern ( (state Heap Mask) (f4_1 Heap r_1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6027) (Mask@@0 T@PolymorphicMapType_6048) (r_1@@0 T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 1)) (= (f1_3 Heap@@0 r_1@@0) (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@0) r_1@@0 f_7)))
 :qid |stdinbpl.210:15|
 :skolemid |24|
 :pattern ( (state Heap@@0 Mask@@0) (f1_3 Heap@@0 r_1@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6027) (Mask@@1 T@PolymorphicMapType_6048) (r_1@@1 T@Ref) ) (!  (=> (and (state Heap@@1 Mask@@1) (< AssumeFunctionsAbove 2)) (= (f2_3 Heap@@1 r_1@@1) (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@1) r_1@@1 f_7)))
 :qid |stdinbpl.295:15|
 :skolemid |29|
 :pattern ( (state Heap@@1 Mask@@1) (f2_3 Heap@@1 r_1@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6027) (Mask@@2 T@PolymorphicMapType_6048) ) (!  (=> (state Heap@@2 Mask@@2) (GoodMask Mask@@2))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@2 Mask@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6027) (Heap1@@0 T@PolymorphicMapType_6027) (Heap2 T@PolymorphicMapType_6027) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3175_17436) ) (!  (not (select (|PolymorphicMapType_6576_6087_18614#PolymorphicMapType_6576| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6576_6087_18614#PolymorphicMapType_6576| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3175_17303) ) (!  (not (select (|PolymorphicMapType_6576_6087_17303#PolymorphicMapType_6576| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6576_6087_17303#PolymorphicMapType_6576| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9414_1189) ) (!  (not (select (|PolymorphicMapType_6576_6087_1189#PolymorphicMapType_6576| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6576_6087_1189#PolymorphicMapType_6576| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6100_6101) ) (!  (not (select (|PolymorphicMapType_6576_6087_6101#PolymorphicMapType_6576| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6576_6087_6101#PolymorphicMapType_6576| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6087_53) ) (!  (not (select (|PolymorphicMapType_6576_6087_53#PolymorphicMapType_6576| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6576_6087_53#PolymorphicMapType_6576| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6027) (r_1@@2 T@Ref) ) (! (dummyFunction_1441 (|f1#triggerStateless| r_1@@2))
 :qid |stdinbpl.204:15|
 :skolemid |23|
 :pattern ( (|f1'| Heap@@3 r_1@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6027) (r_1@@3 T@Ref) ) (! (dummyFunction_1441 (|f2#triggerStateless| r_1@@3))
 :qid |stdinbpl.289:15|
 :skolemid |28|
 :pattern ( (|f2'| Heap@@4 r_1@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6027) (r_1@@4 T@Ref) ) (! (dummyFunction_1441 (|f3#triggerStateless| r_1@@4))
 :qid |stdinbpl.370:15|
 :skolemid |33|
 :pattern ( (|f3'| Heap@@5 r_1@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6027) (r_1@@5 T@Ref) ) (! (dummyFunction_3283 (|f4#triggerStateless| r_1@@5))
 :qid |stdinbpl.457:15|
 :skolemid |38|
 :pattern ( (|f4'| Heap@@6 r_1@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6027) (Mask@@3 T@PolymorphicMapType_6048) (r_1@@6 T@Ref) ) (!  (=> (and (state Heap@@7 Mask@@3) (< AssumeFunctionsAbove 3)) (=> (= (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@7) r_1@@6 f_7) 2) (= (f3_2 Heap@@7 r_1@@6) (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@7) r_1@@6 f_7))))
 :qid |stdinbpl.376:15|
 :skolemid |34|
 :pattern ( (state Heap@@7 Mask@@3) (f3_2 Heap@@7 r_1@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6027) (r_1@@7 T@Ref) ) (!  (and (= (f1_3 Heap@@8 r_1@@7) (|f1'| Heap@@8 r_1@@7)) (dummyFunction_1441 (|f1#triggerStateless| r_1@@7)))
 :qid |stdinbpl.200:15|
 :skolemid |22|
 :pattern ( (f1_3 Heap@@8 r_1@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6027) (r_1@@8 T@Ref) ) (!  (and (= (f2_3 Heap@@9 r_1@@8) (|f2'| Heap@@9 r_1@@8)) (dummyFunction_1441 (|f2#triggerStateless| r_1@@8)))
 :qid |stdinbpl.285:15|
 :skolemid |27|
 :pattern ( (f2_3 Heap@@9 r_1@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6027) (r_1@@9 T@Ref) ) (!  (and (= (f3_2 Heap@@10 r_1@@9) (|f3'| Heap@@10 r_1@@9)) (dummyFunction_1441 (|f3#triggerStateless| r_1@@9)))
 :qid |stdinbpl.366:15|
 :skolemid |32|
 :pattern ( (f3_2 Heap@@10 r_1@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6027) (r_1@@10 T@Ref) ) (!  (and (= (f4_1 Heap@@11 r_1@@10) (|f4'| Heap@@11 r_1@@10)) (dummyFunction_3283 (|f4#triggerStateless| r_1@@10)))
 :qid |stdinbpl.453:15|
 :skolemid |37|
 :pattern ( (f4_1 Heap@@11 r_1@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6027) (ExhaleHeap T@PolymorphicMapType_6027) (Mask@@4 T@PolymorphicMapType_6048) (pm_f T@Field_3175_17303) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@4) (=> (and (HasDirectPerm_3175_17367 Mask@@4 null pm_f) (IsPredicateField_3175_17394 pm_f)) (= (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@12) null (PredicateMaskField_3175 pm_f)) (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| ExhaleHeap) null (PredicateMaskField_3175 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@4) (IsPredicateField_3175_17394 pm_f) (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| ExhaleHeap) null (PredicateMaskField_3175 pm_f)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6027) (ExhaleHeap@@0 T@PolymorphicMapType_6027) (Mask@@5 T@PolymorphicMapType_6048) (pm_f@@0 T@Field_3175_17303) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@5) (=> (and (HasDirectPerm_3175_17367 Mask@@5 null pm_f@@0) (IsWandField_3175_19141 pm_f@@0)) (= (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@13) null (WandMaskField_3175 pm_f@@0)) (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| ExhaleHeap@@0) null (WandMaskField_3175 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@5) (IsWandField_3175_19141 pm_f@@0) (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| ExhaleHeap@@0) null (WandMaskField_3175 pm_f@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6027) (ExhaleHeap@@1 T@PolymorphicMapType_6027) (Mask@@6 T@PolymorphicMapType_6048) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@1 Mask@@6) (=> (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@14) o_1 $allocated) (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@1 Mask@@6) (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_3175_17303) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6087_6087 p v_1 p w))
 :qid |stdinbpl.177:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6087_6087 p v_1 p w))
)))
(assert  (not (IsPredicateField_3175_1189 f_7)))
(assert  (not (IsWandField_3175_1189 f_7)))
(assert  (not (IsPredicateField_3177_3178 fr_1)))
(assert  (not (IsWandField_3177_3178 fr_1)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6027) (ExhaleHeap@@2 T@PolymorphicMapType_6027) (Mask@@7 T@PolymorphicMapType_6048) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@2 Mask@@7) (succHeap Heap@@15 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@2 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6048) (o_2@@4 T@Ref) (f_4@@4 T@Field_3175_17436) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3175_22658 f_4@@4))) (not (IsWandField_3175_22674 f_4@@4))) (<= (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6048) (o_2@@5 T@Ref) (f_4@@5 T@Field_3175_17303) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3175_17394 f_4@@5))) (not (IsWandField_3175_19141 f_4@@5))) (<= (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6048) (o_2@@6 T@Ref) (f_4@@6 T@Field_6087_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3175_53 f_4@@6))) (not (IsWandField_3175_53 f_4@@6))) (<= (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6048) (o_2@@7 T@Ref) (f_4@@7 T@Field_6100_6101) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| Mask@@11) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3177_3178 f_4@@7))) (not (IsWandField_3177_3178 f_4@@7))) (<= (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| Mask@@11) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| Mask@@11) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6048) (o_2@@8 T@Ref) (f_4@@8 T@Field_9414_1189) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| Mask@@12) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3175_1189 f_4@@8))) (not (IsWandField_3175_1189 f_4@@8))) (<= (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| Mask@@12) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| Mask@@12) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6048) (o_2@@9 T@Ref) (f_4@@9 T@Field_3175_17436) ) (! (= (HasDirectPerm_3175_23112 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3175_23112 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6048) (o_2@@10 T@Ref) (f_4@@10 T@Field_3175_17303) ) (! (= (HasDirectPerm_3175_17367 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3175_17367 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6048) (o_2@@11 T@Ref) (f_4@@11 T@Field_6087_53) ) (! (= (HasDirectPerm_3175_53 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3175_53 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6048) (o_2@@12 T@Ref) (f_4@@12 T@Field_6100_6101) ) (! (= (HasDirectPerm_3177_3178 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3177_3178 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6048) (o_2@@13 T@Ref) (f_4@@13 T@Field_9414_1189) ) (! (= (HasDirectPerm_3175_1189 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3175_1189 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6027) (ExhaleHeap@@3 T@PolymorphicMapType_6027) (Mask@@18 T@PolymorphicMapType_6048) (pm_f@@1 T@Field_3175_17303) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_3175_17367 Mask@@18 null pm_f@@1) (IsPredicateField_3175_17394 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6087_53) ) (!  (=> (select (|PolymorphicMapType_6576_6087_53#PolymorphicMapType_6576| (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@16) null (PredicateMaskField_3175 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@16) o2 f_2) (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6100_6101) ) (!  (=> (select (|PolymorphicMapType_6576_6087_6101#PolymorphicMapType_6576| (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@16) null (PredicateMaskField_3175 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@16) o2@@0 f_2@@0) (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_9414_1189) ) (!  (=> (select (|PolymorphicMapType_6576_6087_1189#PolymorphicMapType_6576| (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@16) null (PredicateMaskField_3175 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@16) o2@@1 f_2@@1) (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3175_17303) ) (!  (=> (select (|PolymorphicMapType_6576_6087_17303#PolymorphicMapType_6576| (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@16) null (PredicateMaskField_3175 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@16) o2@@2 f_2@@2) (select (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3175_17436) ) (!  (=> (select (|PolymorphicMapType_6576_6087_18614#PolymorphicMapType_6576| (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@16) null (PredicateMaskField_3175 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@16) o2@@3 f_2@@3) (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@3 Mask@@18) (IsPredicateField_3175_17394 pm_f@@1))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6027) (ExhaleHeap@@4 T@PolymorphicMapType_6027) (Mask@@19 T@PolymorphicMapType_6048) (pm_f@@2 T@Field_3175_17303) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_3175_17367 Mask@@19 null pm_f@@2) (IsWandField_3175_19141 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6087_53) ) (!  (=> (select (|PolymorphicMapType_6576_6087_53#PolymorphicMapType_6576| (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@17) null (WandMaskField_3175 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@17) o2@@4 f_2@@4) (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6100_6101) ) (!  (=> (select (|PolymorphicMapType_6576_6087_6101#PolymorphicMapType_6576| (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@17) null (WandMaskField_3175 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@17) o2@@5 f_2@@5) (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_9414_1189) ) (!  (=> (select (|PolymorphicMapType_6576_6087_1189#PolymorphicMapType_6576| (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@17) null (WandMaskField_3175 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@17) o2@@6 f_2@@6) (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_3175_17303) ) (!  (=> (select (|PolymorphicMapType_6576_6087_17303#PolymorphicMapType_6576| (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@17) null (WandMaskField_3175 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@17) o2@@7 f_2@@7) (select (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_3175_17436) ) (!  (=> (select (|PolymorphicMapType_6576_6087_18614#PolymorphicMapType_6576| (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@17) null (WandMaskField_3175 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@17) o2@@8 f_2@@8) (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@4 Mask@@19) (IsWandField_3175_19141 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.165:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6027) (ExhaleHeap@@5 T@PolymorphicMapType_6027) (Mask@@20 T@PolymorphicMapType_6048) (o_1@@0 T@Ref) (f_2@@9 T@Field_3175_17436) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_3175_23112 Mask@@20 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@18) o_1@@0 f_2@@9) (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6027) (ExhaleHeap@@6 T@PolymorphicMapType_6027) (Mask@@21 T@PolymorphicMapType_6048) (o_1@@1 T@Ref) (f_2@@10 T@Field_3175_17303) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_3175_17367 Mask@@21 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@19) o_1@@1 f_2@@10) (select (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6027) (ExhaleHeap@@7 T@PolymorphicMapType_6027) (Mask@@22 T@PolymorphicMapType_6048) (o_1@@2 T@Ref) (f_2@@11 T@Field_6087_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_3175_53 Mask@@22 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@20) o_1@@2 f_2@@11) (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6027) (ExhaleHeap@@8 T@PolymorphicMapType_6027) (Mask@@23 T@PolymorphicMapType_6048) (o_1@@3 T@Ref) (f_2@@12 T@Field_6100_6101) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_3177_3178 Mask@@23 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@21) o_1@@3 f_2@@12) (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6027) (ExhaleHeap@@9 T@PolymorphicMapType_6027) (Mask@@24 T@PolymorphicMapType_6048) (o_1@@4 T@Ref) (f_2@@13 T@Field_9414_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_3175_1189 Mask@@24 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@22) o_1@@4 f_2@@13) (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3175_17436) ) (! (= (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_3175_17303) ) (! (= (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_6087_53) ) (! (= (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6100_6101) ) (! (= (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_9414_1189) ) (! (= (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6048) (SummandMask1 T@PolymorphicMapType_6048) (SummandMask2 T@PolymorphicMapType_6048) (o_2@@19 T@Ref) (f_4@@19 T@Field_3175_17436) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6048_3175_21543#PolymorphicMapType_6048| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6048) (SummandMask1@@0 T@PolymorphicMapType_6048) (SummandMask2@@0 T@PolymorphicMapType_6048) (o_2@@20 T@Ref) (f_4@@20 T@Field_3175_17303) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6048_3175_17303#PolymorphicMapType_6048| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6048) (SummandMask1@@1 T@PolymorphicMapType_6048) (SummandMask2@@1 T@PolymorphicMapType_6048) (o_2@@21 T@Ref) (f_4@@21 T@Field_6087_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6048_3175_53#PolymorphicMapType_6048| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6048) (SummandMask1@@2 T@PolymorphicMapType_6048) (SummandMask2@@2 T@PolymorphicMapType_6048) (o_2@@22 T@Ref) (f_4@@22 T@Field_6100_6101) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6048_3177_3178#PolymorphicMapType_6048| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6048) (SummandMask1@@3 T@PolymorphicMapType_6048) (SummandMask2@@3 T@PolymorphicMapType_6048) (o_2@@23 T@Ref) (f_4@@23 T@Field_9414_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6048_3175_1189#PolymorphicMapType_6048| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6027) (Mask@@25 T@PolymorphicMapType_6048) (r_1@@11 T@Ref) ) (!  (=> (state Heap@@23 Mask@@25) (= (|f1'| Heap@@23 r_1@@11) (|f1#frame| (FrameFragment_1189 (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@23) r_1@@11 f_7)) r_1@@11)))
 :qid |stdinbpl.217:15|
 :skolemid |25|
 :pattern ( (state Heap@@23 Mask@@25) (|f1'| Heap@@23 r_1@@11))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6027) (Mask@@26 T@PolymorphicMapType_6048) (r_1@@12 T@Ref) ) (!  (=> (state Heap@@24 Mask@@26) (= (|f2'| Heap@@24 r_1@@12) (|f2#frame| (FrameFragment_1189 (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@24) r_1@@12 f_7)) r_1@@12)))
 :qid |stdinbpl.302:15|
 :skolemid |30|
 :pattern ( (state Heap@@24 Mask@@26) (|f2'| Heap@@24 r_1@@12))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6027) (Mask@@27 T@PolymorphicMapType_6048) (r_1@@13 T@Ref) ) (!  (=> (state Heap@@25 Mask@@27) (= (|f3'| Heap@@25 r_1@@13) (|f3#frame| (FrameFragment_1189 (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@25) r_1@@13 f_7)) r_1@@13)))
 :qid |stdinbpl.383:15|
 :skolemid |35|
 :pattern ( (state Heap@@25 Mask@@27) (|f3'| Heap@@25 r_1@@13))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6027) (Mask@@28 T@PolymorphicMapType_6048) (r_1@@14 T@Ref) ) (!  (=> (state Heap@@26 Mask@@28) (= (|f4'| Heap@@26 r_1@@14) (|f4#frame| (FrameFragment_3178 (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@26) r_1@@14 fr_1)) r_1@@14)))
 :qid |stdinbpl.470:15|
 :skolemid |40|
 :pattern ( (state Heap@@26 Mask@@28) (|f4'| Heap@@26 r_1@@14))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6027) (Mask@@29 T@PolymorphicMapType_6048) (r_1@@15 T@Ref) ) (!  (=> (and (state Heap@@27 Mask@@29) (or (< AssumeFunctionsAbove 2) (|f2#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@27) r_1@@15 f_7)) r_1@@15))) (= (|f2'| Heap@@27 r_1@@15) 2))
 :qid |stdinbpl.308:15|
 :skolemid |31|
 :pattern ( (state Heap@@27 Mask@@29) (|f2'| Heap@@27 r_1@@15))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6027) (o T@Ref) (f_3 T@Field_3175_17303) (v T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_6027 (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@28) (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@28) (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@28) (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@28) (store (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@28) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6027 (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@28) (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@28) (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@28) (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@28) (store (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@28) o f_3 v)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6027) (o@@0 T@Ref) (f_3@@0 T@Field_3175_17436) (v@@0 T@PolymorphicMapType_6576) ) (! (succHeap Heap@@29 (PolymorphicMapType_6027 (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@29) (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@29) (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@29) (store (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@29) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6027 (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@29) (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@29) (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@29) (store (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@29) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6027) (o@@1 T@Ref) (f_3@@1 T@Field_9414_1189) (v@@1 Int) ) (! (succHeap Heap@@30 (PolymorphicMapType_6027 (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@30) (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@30) (store (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@30) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@30) (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6027 (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@30) (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@30) (store (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@30) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@30) (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6027) (o@@2 T@Ref) (f_3@@2 T@Field_6100_6101) (v@@2 T@Ref) ) (! (succHeap Heap@@31 (PolymorphicMapType_6027 (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@31) (store (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@31) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@31) (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@31) (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6027 (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@31) (store (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@31) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@31) (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@31) (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6027) (o@@3 T@Ref) (f_3@@3 T@Field_6087_53) (v@@3 Bool) ) (! (succHeap Heap@@32 (PolymorphicMapType_6027 (store (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@32) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@32) (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@32) (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@32) (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6027 (store (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@32) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@32) (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@32) (|PolymorphicMapType_6027_3175_17480#PolymorphicMapType_6027| Heap@@32) (|PolymorphicMapType_6027_6087_17303#PolymorphicMapType_6027| Heap@@32)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_6100_6101) (Heap@@33 T@PolymorphicMapType_6027) ) (!  (=> (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@33) o@@4 $allocated) (select (|PolymorphicMapType_6027_3047_53#PolymorphicMapType_6027| Heap@@33) (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@33) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6027_3050_3051#PolymorphicMapType_6027| Heap@@33) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_3175_17303) (v_1@@0 T@FrameType) (q T@Field_3175_17303) (w@@0 T@FrameType) (r T@Field_3175_17303) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6087_6087 p@@1 v_1@@0 q w@@0) (InsidePredicate_6087_6087 q w@@0 r u)) (InsidePredicate_6087_6087 p@@1 v_1@@0 r u))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6087_6087 p@@1 v_1@@0 q w@@0) (InsidePredicate_6087_6087 q w@@0 r u))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6027) (Mask@@30 T@PolymorphicMapType_6048) (r_1@@16 T@Ref) ) (!  (=> (and (state Heap@@34 Mask@@30) (or (< AssumeFunctionsAbove 1) (|f1#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@34) r_1@@16 f_7)) r_1@@16))) (= (|f1'| Heap@@34 r_1@@16) (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@34) r_1@@16 f_7)))
 :qid |stdinbpl.223:15|
 :skolemid |26|
 :pattern ( (state Heap@@34 Mask@@30) (|f1'| Heap@@34 r_1@@16))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_6027) (Mask@@31 T@PolymorphicMapType_6048) (r_1@@17 T@Ref) ) (!  (=> (and (state Heap@@35 Mask@@31) (or (< AssumeFunctionsAbove 3) (|f3#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@35) r_1@@17 f_7)) r_1@@17))) (=> (= (select (|PolymorphicMapType_6027_3175_1189#PolymorphicMapType_6027| Heap@@35) r_1@@17 f_7) 2) (= (|f3'| Heap@@35 r_1@@17) 2)))
 :qid |stdinbpl.389:15|
 :skolemid |36|
 :pattern ( (state Heap@@35 Mask@@31) (|f3'| Heap@@35 r_1@@17))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

