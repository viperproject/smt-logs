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
(declare-sort T@Field_6343_53 0)
(declare-sort T@Field_6356_6357 0)
(declare-sort T@Field_9670_1212 0)
(declare-sort T@Field_6343_17224 0)
(declare-sort T@Field_6343_17091 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6304 0)) (((PolymorphicMapType_6304 (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| (Array T@Ref T@Field_6343_53 Real)) (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| (Array T@Ref T@Field_6356_6357 Real)) (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| (Array T@Ref T@Field_9670_1212 Real)) (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| (Array T@Ref T@Field_6343_17091 Real)) (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| (Array T@Ref T@Field_6343_17224 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6832 0)) (((PolymorphicMapType_6832 (|PolymorphicMapType_6832_6343_53#PolymorphicMapType_6832| (Array T@Ref T@Field_6343_53 Bool)) (|PolymorphicMapType_6832_6343_6357#PolymorphicMapType_6832| (Array T@Ref T@Field_6356_6357 Bool)) (|PolymorphicMapType_6832_6343_1212#PolymorphicMapType_6832| (Array T@Ref T@Field_9670_1212 Bool)) (|PolymorphicMapType_6832_6343_17091#PolymorphicMapType_6832| (Array T@Ref T@Field_6343_17091 Bool)) (|PolymorphicMapType_6832_6343_18402#PolymorphicMapType_6832| (Array T@Ref T@Field_6343_17224 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6283 0)) (((PolymorphicMapType_6283 (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| (Array T@Ref T@Field_6343_53 Bool)) (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| (Array T@Ref T@Field_6356_6357 T@Ref)) (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| (Array T@Ref T@Field_9670_1212 Int)) (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| (Array T@Ref T@Field_6343_17224 T@PolymorphicMapType_6832)) (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| (Array T@Ref T@Field_6343_17091 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6343_53)
(declare-fun f_7 () T@Field_9670_1212)
(declare-fun succHeap (T@PolymorphicMapType_6283 T@PolymorphicMapType_6283) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6283 T@PolymorphicMapType_6283) Bool)
(declare-fun state (T@PolymorphicMapType_6283 T@PolymorphicMapType_6304) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6304) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6832)
(declare-fun |test'| (T@PolymorphicMapType_6283 T@Ref) Bool)
(declare-fun dummyFunction_1409 (Bool) Bool)
(declare-fun |test#triggerStateless| (T@Ref) Bool)
(declare-fun |test3'| (T@PolymorphicMapType_6283 Int) Bool)
(declare-fun |test3#triggerStateless| (Int) Bool)
(declare-fun |test4'| (T@PolymorphicMapType_6283 Int) Bool)
(declare-fun |test4#triggerStateless| (Int) Bool)
(declare-fun |test5'| (T@PolymorphicMapType_6283 Int) Bool)
(declare-fun |test5#triggerStateless| (Int) Bool)
(declare-fun |nonTerminating'| (T@PolymorphicMapType_6283 T@Ref) Bool)
(declare-fun |nonTerminating#triggerStateless| (T@Ref) Bool)
(declare-fun |partiallyTerminating'| (T@PolymorphicMapType_6283 Int) Bool)
(declare-fun |partiallyTerminating#triggerStateless| (Int) Bool)
(declare-fun test_2 (T@PolymorphicMapType_6283 T@Ref) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |nonTerminating#frame| (T@FrameType T@Ref) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun nonTerminating (T@PolymorphicMapType_6283 T@Ref) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6283 T@PolymorphicMapType_6283 T@PolymorphicMapType_6304) Bool)
(declare-fun IsPredicateField_6343_17182 (T@Field_6343_17091) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6343 (T@Field_6343_17091) T@Field_6343_17224)
(declare-fun HasDirectPerm_6343_17155 (T@PolymorphicMapType_6304 T@Ref T@Field_6343_17091) Bool)
(declare-fun IsWandField_6343_18929 (T@Field_6343_17091) Bool)
(declare-fun WandMaskField_6343 (T@Field_6343_17091) T@Field_6343_17224)
(declare-fun test4_1 (T@PolymorphicMapType_6283 Int) Bool)
(declare-fun partiallyTerminating (T@PolymorphicMapType_6283 Int) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_6283)
(declare-fun ZeroMask () T@PolymorphicMapType_6304)
(declare-fun InsidePredicate_6343_6343 (T@Field_6343_17091 T@FrameType T@Field_6343_17091 T@FrameType) Bool)
(declare-fun IsPredicateField_3586_1212 (T@Field_9670_1212) Bool)
(declare-fun IsWandField_3586_1212 (T@Field_9670_1212) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6343_22487 (T@Field_6343_17224) Bool)
(declare-fun IsWandField_6343_22503 (T@Field_6343_17224) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6343_6357 (T@Field_6356_6357) Bool)
(declare-fun IsWandField_6343_6357 (T@Field_6356_6357) Bool)
(declare-fun IsPredicateField_6343_53 (T@Field_6343_53) Bool)
(declare-fun IsWandField_6343_53 (T@Field_6343_53) Bool)
(declare-fun HasDirectPerm_6343_22941 (T@PolymorphicMapType_6304 T@Ref T@Field_6343_17224) Bool)
(declare-fun HasDirectPerm_6343_1212 (T@PolymorphicMapType_6304 T@Ref T@Field_9670_1212) Bool)
(declare-fun HasDirectPerm_6343_6357 (T@PolymorphicMapType_6304 T@Ref T@Field_6356_6357) Bool)
(declare-fun HasDirectPerm_6343_53 (T@PolymorphicMapType_6304 T@Ref T@Field_6343_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun test5_1 (T@PolymorphicMapType_6283 Int) Bool)
(declare-fun sumMask (T@PolymorphicMapType_6304 T@PolymorphicMapType_6304 T@PolymorphicMapType_6304) Bool)
(declare-fun test2_1 (T@PolymorphicMapType_6283) Bool)
(declare-fun |partiallyTerminating#frame| (T@FrameType Int) Bool)
(declare-fun |test#frame| (T@FrameType T@Ref) Bool)
(declare-fun |test3#frame| (T@FrameType Int) Bool)
(declare-fun |test4#frame| (T@FrameType Int) Bool)
(declare-fun |test5#frame| (T@FrameType Int) Bool)
(declare-fun test3_1 (T@PolymorphicMapType_6283 Int) Bool)
(declare-fun |test2'| (T@PolymorphicMapType_6283) Bool)
(declare-fun |test2#frame| (T@FrameType) Bool)
(declare-fun |test2#triggerStateless| () Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6283) (Heap1 T@PolymorphicMapType_6283) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6283) (Mask T@PolymorphicMapType_6304) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6283) (Heap1@@0 T@PolymorphicMapType_6283) (Heap2 T@PolymorphicMapType_6283) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6343_17224) ) (!  (not (select (|PolymorphicMapType_6832_6343_18402#PolymorphicMapType_6832| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6832_6343_18402#PolymorphicMapType_6832| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6343_17091) ) (!  (not (select (|PolymorphicMapType_6832_6343_17091#PolymorphicMapType_6832| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6832_6343_17091#PolymorphicMapType_6832| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9670_1212) ) (!  (not (select (|PolymorphicMapType_6832_6343_1212#PolymorphicMapType_6832| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6832_6343_1212#PolymorphicMapType_6832| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6356_6357) ) (!  (not (select (|PolymorphicMapType_6832_6343_6357#PolymorphicMapType_6832| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6832_6343_6357#PolymorphicMapType_6832| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6343_53) ) (!  (not (select (|PolymorphicMapType_6832_6343_53#PolymorphicMapType_6832| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6832_6343_53#PolymorphicMapType_6832| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6283) (x T@Ref) ) (! (dummyFunction_1409 (|test#triggerStateless| x))
 :qid |stdinbpl.217:15|
 :skolemid |23|
 :pattern ( (|test'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6283) (x@@0 Int) ) (! (dummyFunction_1409 (|test3#triggerStateless| x@@0))
 :qid |stdinbpl.355:15|
 :skolemid |35|
 :pattern ( (|test3'| Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6283) (x@@1 Int) ) (! (dummyFunction_1409 (|test4#triggerStateless| x@@1))
 :qid |stdinbpl.429:15|
 :skolemid |41|
 :pattern ( (|test4'| Heap@@2 x@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6283) (x@@2 Int) ) (! (dummyFunction_1409 (|test5#triggerStateless| x@@2))
 :qid |stdinbpl.501:15|
 :skolemid |48|
 :pattern ( (|test5'| Heap@@3 x@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6283) (x@@3 T@Ref) ) (! (dummyFunction_1409 (|nonTerminating#triggerStateless| x@@3))
 :qid |stdinbpl.573:15|
 :skolemid |55|
 :pattern ( (|nonTerminating'| Heap@@4 x@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6283) (x@@4 Int) ) (! (dummyFunction_1409 (|partiallyTerminating#triggerStateless| x@@4))
 :qid |stdinbpl.615:15|
 :skolemid |58|
 :pattern ( (|partiallyTerminating'| Heap@@5 x@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6283) (Mask@@0 T@PolymorphicMapType_6304) (x@@5 T@Ref) ) (!  (=> (and (state Heap@@6 Mask@@0) (< AssumeFunctionsAbove 4)) (= (test_2 Heap@@6 x@@5) (exists ((x2 T@Ref) ) (!  (and (= x@@5 x2) (nonTerminating Heap@@6 x2))
 :qid |stdinbpl.225:80|
 :skolemid |24|
 :pattern ( (|nonTerminating#frame| EmptyFrame x2))
))))
 :qid |stdinbpl.223:15|
 :skolemid |25|
 :pattern ( (state Heap@@6 Mask@@0) (test_2 Heap@@6 x@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6283) (ExhaleHeap T@PolymorphicMapType_6283) (Mask@@1 T@PolymorphicMapType_6304) (pm_f_34 T@Field_6343_17091) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_6343_17155 Mask@@1 null pm_f_34) (IsPredicateField_6343_17182 pm_f_34)) (= (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@7) null (PredicateMaskField_6343 pm_f_34)) (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| ExhaleHeap) null (PredicateMaskField_6343 pm_f_34)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@1) (IsPredicateField_6343_17182 pm_f_34) (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| ExhaleHeap) null (PredicateMaskField_6343 pm_f_34)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6283) (ExhaleHeap@@0 T@PolymorphicMapType_6283) (Mask@@2 T@PolymorphicMapType_6304) (pm_f_34@@0 T@Field_6343_17091) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_6343_17155 Mask@@2 null pm_f_34@@0) (IsWandField_6343_18929 pm_f_34@@0)) (= (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@8) null (WandMaskField_6343 pm_f_34@@0)) (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| ExhaleHeap@@0) null (WandMaskField_6343 pm_f_34@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@2) (IsWandField_6343_18929 pm_f_34@@0) (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| ExhaleHeap@@0) null (WandMaskField_6343 pm_f_34@@0)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6283) (Mask@@3 T@PolymorphicMapType_6304) (x@@6 Int) ) (!  (=> (and (state Heap@@9 Mask@@3) (< AssumeFunctionsAbove 2)) (= (test4_1 Heap@@9 x@@6)  (and (exists ((x2@@0 Int) ) (! (= x@@6 x2@@0)
 :qid |stdinbpl.437:82|
 :skolemid |42|
)) (partiallyTerminating Heap@@9 x@@6))))
 :qid |stdinbpl.435:15|
 :skolemid |43|
 :pattern ( (state Heap@@9 Mask@@3) (test4_1 Heap@@9 x@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6283) (ExhaleHeap@@1 T@PolymorphicMapType_6283) (Mask@@4 T@PolymorphicMapType_6304) (o_30 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@4) (=> (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@10) o_30 $allocated) (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| ExhaleHeap@@1) o_30 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@4) (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| ExhaleHeap@@1) o_30 $allocated))
)))
(assert (forall ((p T@Field_6343_17091) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6343_6343 p v_1 p w))
 :qid |stdinbpl.180:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6343_6343 p v_1 p w))
)))
(assert  (not (IsPredicateField_3586_1212 f_7)))
(assert  (not (IsWandField_3586_1212 f_7)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6283) (ExhaleHeap@@2 T@PolymorphicMapType_6283) (Mask@@5 T@PolymorphicMapType_6304) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@5) (succHeap Heap@@11 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6304) (o_2@@4 T@Ref) (f_4@@4 T@Field_6343_17224) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| Mask@@6) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6343_22487 f_4@@4))) (not (IsWandField_6343_22503 f_4@@4))) (<= (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| Mask@@6) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| Mask@@6) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6304) (o_2@@5 T@Ref) (f_4@@5 T@Field_6343_17091) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| Mask@@7) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_6343_17182 f_4@@5))) (not (IsWandField_6343_18929 f_4@@5))) (<= (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| Mask@@7) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| Mask@@7) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6304) (o_2@@6 T@Ref) (f_4@@6 T@Field_9670_1212) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| Mask@@8) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3586_1212 f_4@@6))) (not (IsWandField_3586_1212 f_4@@6))) (<= (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| Mask@@8) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| Mask@@8) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6304) (o_2@@7 T@Ref) (f_4@@7 T@Field_6356_6357) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| Mask@@9) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_6343_6357 f_4@@7))) (not (IsWandField_6343_6357 f_4@@7))) (<= (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| Mask@@9) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| Mask@@9) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6304) (o_2@@8 T@Ref) (f_4@@8 T@Field_6343_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| Mask@@10) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_6343_53 f_4@@8))) (not (IsWandField_6343_53 f_4@@8))) (<= (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| Mask@@10) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| Mask@@10) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6304) (o_2@@9 T@Ref) (f_4@@9 T@Field_6343_17224) ) (! (= (HasDirectPerm_6343_22941 Mask@@11 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| Mask@@11) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6343_22941 Mask@@11 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6304) (o_2@@10 T@Ref) (f_4@@10 T@Field_6343_17091) ) (! (= (HasDirectPerm_6343_17155 Mask@@12 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| Mask@@12) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6343_17155 Mask@@12 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6304) (o_2@@11 T@Ref) (f_4@@11 T@Field_9670_1212) ) (! (= (HasDirectPerm_6343_1212 Mask@@13 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| Mask@@13) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6343_1212 Mask@@13 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6304) (o_2@@12 T@Ref) (f_4@@12 T@Field_6356_6357) ) (! (= (HasDirectPerm_6343_6357 Mask@@14 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| Mask@@14) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6343_6357 Mask@@14 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6304) (o_2@@13 T@Ref) (f_4@@13 T@Field_6343_53) ) (! (= (HasDirectPerm_6343_53 Mask@@15 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| Mask@@15) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6343_53 Mask@@15 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6283) (ExhaleHeap@@3 T@PolymorphicMapType_6283) (Mask@@16 T@PolymorphicMapType_6304) (pm_f_34@@1 T@Field_6343_17091) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@16) (=> (and (HasDirectPerm_6343_17155 Mask@@16 null pm_f_34@@1) (IsPredicateField_6343_17182 pm_f_34@@1)) (and (and (and (and (forall ((o2_34 T@Ref) (f_35 T@Field_6343_53) ) (!  (=> (select (|PolymorphicMapType_6832_6343_53#PolymorphicMapType_6832| (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@12) null (PredicateMaskField_6343 pm_f_34@@1))) o2_34 f_35) (= (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@12) o2_34 f_35) (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| ExhaleHeap@@3) o2_34 f_35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| ExhaleHeap@@3) o2_34 f_35))
)) (forall ((o2_34@@0 T@Ref) (f_35@@0 T@Field_6356_6357) ) (!  (=> (select (|PolymorphicMapType_6832_6343_6357#PolymorphicMapType_6832| (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@12) null (PredicateMaskField_6343 pm_f_34@@1))) o2_34@@0 f_35@@0) (= (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@12) o2_34@@0 f_35@@0) (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| ExhaleHeap@@3) o2_34@@0 f_35@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| ExhaleHeap@@3) o2_34@@0 f_35@@0))
))) (forall ((o2_34@@1 T@Ref) (f_35@@1 T@Field_9670_1212) ) (!  (=> (select (|PolymorphicMapType_6832_6343_1212#PolymorphicMapType_6832| (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@12) null (PredicateMaskField_6343 pm_f_34@@1))) o2_34@@1 f_35@@1) (= (select (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@12) o2_34@@1 f_35@@1) (select (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| ExhaleHeap@@3) o2_34@@1 f_35@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| ExhaleHeap@@3) o2_34@@1 f_35@@1))
))) (forall ((o2_34@@2 T@Ref) (f_35@@2 T@Field_6343_17091) ) (!  (=> (select (|PolymorphicMapType_6832_6343_17091#PolymorphicMapType_6832| (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@12) null (PredicateMaskField_6343 pm_f_34@@1))) o2_34@@2 f_35@@2) (= (select (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@12) o2_34@@2 f_35@@2) (select (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| ExhaleHeap@@3) o2_34@@2 f_35@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| ExhaleHeap@@3) o2_34@@2 f_35@@2))
))) (forall ((o2_34@@3 T@Ref) (f_35@@3 T@Field_6343_17224) ) (!  (=> (select (|PolymorphicMapType_6832_6343_18402#PolymorphicMapType_6832| (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@12) null (PredicateMaskField_6343 pm_f_34@@1))) o2_34@@3 f_35@@3) (= (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@12) o2_34@@3 f_35@@3) (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| ExhaleHeap@@3) o2_34@@3 f_35@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| ExhaleHeap@@3) o2_34@@3 f_35@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@16) (IsPredicateField_6343_17182 pm_f_34@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6283) (ExhaleHeap@@4 T@PolymorphicMapType_6283) (Mask@@17 T@PolymorphicMapType_6304) (pm_f_34@@2 T@Field_6343_17091) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@17) (=> (and (HasDirectPerm_6343_17155 Mask@@17 null pm_f_34@@2) (IsWandField_6343_18929 pm_f_34@@2)) (and (and (and (and (forall ((o2_34@@4 T@Ref) (f_35@@4 T@Field_6343_53) ) (!  (=> (select (|PolymorphicMapType_6832_6343_53#PolymorphicMapType_6832| (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@13) null (WandMaskField_6343 pm_f_34@@2))) o2_34@@4 f_35@@4) (= (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@13) o2_34@@4 f_35@@4) (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| ExhaleHeap@@4) o2_34@@4 f_35@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| ExhaleHeap@@4) o2_34@@4 f_35@@4))
)) (forall ((o2_34@@5 T@Ref) (f_35@@5 T@Field_6356_6357) ) (!  (=> (select (|PolymorphicMapType_6832_6343_6357#PolymorphicMapType_6832| (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@13) null (WandMaskField_6343 pm_f_34@@2))) o2_34@@5 f_35@@5) (= (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@13) o2_34@@5 f_35@@5) (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| ExhaleHeap@@4) o2_34@@5 f_35@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| ExhaleHeap@@4) o2_34@@5 f_35@@5))
))) (forall ((o2_34@@6 T@Ref) (f_35@@6 T@Field_9670_1212) ) (!  (=> (select (|PolymorphicMapType_6832_6343_1212#PolymorphicMapType_6832| (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@13) null (WandMaskField_6343 pm_f_34@@2))) o2_34@@6 f_35@@6) (= (select (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@13) o2_34@@6 f_35@@6) (select (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| ExhaleHeap@@4) o2_34@@6 f_35@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| ExhaleHeap@@4) o2_34@@6 f_35@@6))
))) (forall ((o2_34@@7 T@Ref) (f_35@@7 T@Field_6343_17091) ) (!  (=> (select (|PolymorphicMapType_6832_6343_17091#PolymorphicMapType_6832| (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@13) null (WandMaskField_6343 pm_f_34@@2))) o2_34@@7 f_35@@7) (= (select (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@13) o2_34@@7 f_35@@7) (select (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| ExhaleHeap@@4) o2_34@@7 f_35@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| ExhaleHeap@@4) o2_34@@7 f_35@@7))
))) (forall ((o2_34@@8 T@Ref) (f_35@@8 T@Field_6343_17224) ) (!  (=> (select (|PolymorphicMapType_6832_6343_18402#PolymorphicMapType_6832| (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@13) null (WandMaskField_6343 pm_f_34@@2))) o2_34@@8 f_35@@8) (= (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@13) o2_34@@8 f_35@@8) (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| ExhaleHeap@@4) o2_34@@8 f_35@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| ExhaleHeap@@4) o2_34@@8 f_35@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@17) (IsWandField_6343_18929 pm_f_34@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.168:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6283) (ExhaleHeap@@5 T@PolymorphicMapType_6283) (Mask@@18 T@PolymorphicMapType_6304) (o_30@@0 T@Ref) (f_35@@9 T@Field_6343_17224) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_6343_22941 Mask@@18 o_30@@0 f_35@@9) (= (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@14) o_30@@0 f_35@@9) (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| ExhaleHeap@@5) o_30@@0 f_35@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| ExhaleHeap@@5) o_30@@0 f_35@@9))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6283) (ExhaleHeap@@6 T@PolymorphicMapType_6283) (Mask@@19 T@PolymorphicMapType_6304) (o_30@@1 T@Ref) (f_35@@10 T@Field_6343_17091) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_6343_17155 Mask@@19 o_30@@1 f_35@@10) (= (select (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@15) o_30@@1 f_35@@10) (select (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| ExhaleHeap@@6) o_30@@1 f_35@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| ExhaleHeap@@6) o_30@@1 f_35@@10))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6283) (ExhaleHeap@@7 T@PolymorphicMapType_6283) (Mask@@20 T@PolymorphicMapType_6304) (o_30@@2 T@Ref) (f_35@@11 T@Field_9670_1212) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_6343_1212 Mask@@20 o_30@@2 f_35@@11) (= (select (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@16) o_30@@2 f_35@@11) (select (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| ExhaleHeap@@7) o_30@@2 f_35@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| ExhaleHeap@@7) o_30@@2 f_35@@11))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6283) (ExhaleHeap@@8 T@PolymorphicMapType_6283) (Mask@@21 T@PolymorphicMapType_6304) (o_30@@3 T@Ref) (f_35@@12 T@Field_6356_6357) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_6343_6357 Mask@@21 o_30@@3 f_35@@12) (= (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@17) o_30@@3 f_35@@12) (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| ExhaleHeap@@8) o_30@@3 f_35@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| ExhaleHeap@@8) o_30@@3 f_35@@12))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6283) (ExhaleHeap@@9 T@PolymorphicMapType_6283) (Mask@@22 T@PolymorphicMapType_6304) (o_30@@4 T@Ref) (f_35@@13 T@Field_6343_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@22) (=> (HasDirectPerm_6343_53 Mask@@22 o_30@@4 f_35@@13) (= (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@18) o_30@@4 f_35@@13) (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| ExhaleHeap@@9) o_30@@4 f_35@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@22) (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| ExhaleHeap@@9) o_30@@4 f_35@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6343_17224) ) (! (= (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_6343_17091) ) (! (= (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_9670_1212) ) (! (= (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6356_6357) ) (! (= (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_6343_53) ) (! (= (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6283) (Mask@@23 T@PolymorphicMapType_6304) (x@@7 Int) ) (!  (=> (and (state Heap@@19 Mask@@23) (< AssumeFunctionsAbove 1)) (= (test5_1 Heap@@19 x@@7)  (and (exists ((x2@@1 Int) ) (!  (and (= x@@7 x2@@1) (not (= x@@7 x2@@1)))
 :qid |stdinbpl.509:82|
 :skolemid |49|
)) (partiallyTerminating Heap@@19 x@@7))))
 :qid |stdinbpl.507:15|
 :skolemid |50|
 :pattern ( (state Heap@@19 Mask@@23) (test5_1 Heap@@19 x@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6304) (SummandMask1 T@PolymorphicMapType_6304) (SummandMask2 T@PolymorphicMapType_6304) (o_2@@19 T@Ref) (f_4@@19 T@Field_6343_17224) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6304) (SummandMask1@@0 T@PolymorphicMapType_6304) (SummandMask2@@0 T@PolymorphicMapType_6304) (o_2@@20 T@Ref) (f_4@@20 T@Field_6343_17091) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6304) (SummandMask1@@1 T@PolymorphicMapType_6304) (SummandMask2@@1 T@PolymorphicMapType_6304) (o_2@@21 T@Ref) (f_4@@21 T@Field_9670_1212) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6304) (SummandMask1@@2 T@PolymorphicMapType_6304) (SummandMask2@@2 T@PolymorphicMapType_6304) (o_2@@22 T@Ref) (f_4@@22 T@Field_6356_6357) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6304) (SummandMask1@@3 T@PolymorphicMapType_6304) (SummandMask2@@3 T@PolymorphicMapType_6304) (o_2@@23 T@Ref) (f_4@@23 T@Field_6343_53) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6283) (Mask@@24 T@PolymorphicMapType_6304) ) (!  (=> (and (state Heap@@20 Mask@@24) (< AssumeFunctionsAbove 0)) (= (test2_1 Heap@@20) (exists ((x2@@2 Int) ) (! (partiallyTerminating Heap@@20 x2@@2)
 :qid |stdinbpl.296:78|
 :skolemid |30|
 :pattern ( (|partiallyTerminating#frame| EmptyFrame x2@@2))
))))
 :qid |stdinbpl.294:15|
 :skolemid |31|
 :pattern ( (state Heap@@20 Mask@@24) (test2_1 Heap@@20))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6283) (Mask@@25 T@PolymorphicMapType_6304) (x@@8 T@Ref) ) (!  (=> (state Heap@@21 Mask@@25) (= (|test'| Heap@@21 x@@8) (|test#frame| EmptyFrame x@@8)))
 :qid |stdinbpl.233:15|
 :skolemid |26|
 :pattern ( (state Heap@@21 Mask@@25) (|test'| Heap@@21 x@@8))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6283) (Mask@@26 T@PolymorphicMapType_6304) (x@@9 Int) ) (!  (=> (state Heap@@22 Mask@@26) (= (|test3'| Heap@@22 x@@9) (|test3#frame| EmptyFrame x@@9)))
 :qid |stdinbpl.371:15|
 :skolemid |38|
 :pattern ( (state Heap@@22 Mask@@26) (|test3'| Heap@@22 x@@9))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6283) (Mask@@27 T@PolymorphicMapType_6304) (x@@10 Int) ) (!  (=> (state Heap@@23 Mask@@27) (= (|test4'| Heap@@23 x@@10) (|test4#frame| EmptyFrame x@@10)))
 :qid |stdinbpl.445:15|
 :skolemid |44|
 :pattern ( (state Heap@@23 Mask@@27) (|test4'| Heap@@23 x@@10))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6283) (Mask@@28 T@PolymorphicMapType_6304) (x@@11 Int) ) (!  (=> (state Heap@@24 Mask@@28) (= (|test5'| Heap@@24 x@@11) (|test5#frame| EmptyFrame x@@11)))
 :qid |stdinbpl.517:15|
 :skolemid |51|
 :pattern ( (state Heap@@24 Mask@@28) (|test5'| Heap@@24 x@@11))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6283) (Mask@@29 T@PolymorphicMapType_6304) (x@@12 T@Ref) ) (!  (=> (state Heap@@25 Mask@@29) (= (|nonTerminating'| Heap@@25 x@@12) (|nonTerminating#frame| EmptyFrame x@@12)))
 :qid |stdinbpl.580:15|
 :skolemid |56|
 :pattern ( (state Heap@@25 Mask@@29) (|nonTerminating'| Heap@@25 x@@12))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6283) (Mask@@30 T@PolymorphicMapType_6304) (x@@13 Int) ) (!  (=> (state Heap@@26 Mask@@30) (= (|partiallyTerminating'| Heap@@26 x@@13) (|partiallyTerminating#frame| EmptyFrame x@@13)))
 :qid |stdinbpl.622:15|
 :skolemid |59|
 :pattern ( (state Heap@@26 Mask@@30) (|partiallyTerminating'| Heap@@26 x@@13))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6283) (x@@14 T@Ref) ) (!  (and (= (test_2 Heap@@27 x@@14) (|test'| Heap@@27 x@@14)) (dummyFunction_1409 (|test#triggerStateless| x@@14)))
 :qid |stdinbpl.213:15|
 :skolemid |22|
 :pattern ( (test_2 Heap@@27 x@@14))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6283) (x@@15 Int) ) (!  (and (= (test3_1 Heap@@28 x@@15) (|test3'| Heap@@28 x@@15)) (dummyFunction_1409 (|test3#triggerStateless| x@@15)))
 :qid |stdinbpl.351:15|
 :skolemid |34|
 :pattern ( (test3_1 Heap@@28 x@@15))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6283) (x@@16 Int) ) (!  (and (= (test4_1 Heap@@29 x@@16) (|test4'| Heap@@29 x@@16)) (dummyFunction_1409 (|test4#triggerStateless| x@@16)))
 :qid |stdinbpl.425:15|
 :skolemid |40|
 :pattern ( (test4_1 Heap@@29 x@@16))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6283) (x@@17 Int) ) (!  (and (= (test5_1 Heap@@30 x@@17) (|test5'| Heap@@30 x@@17)) (dummyFunction_1409 (|test5#triggerStateless| x@@17)))
 :qid |stdinbpl.497:15|
 :skolemid |47|
 :pattern ( (test5_1 Heap@@30 x@@17))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6283) (x@@18 T@Ref) ) (!  (and (= (nonTerminating Heap@@31 x@@18) (|nonTerminating'| Heap@@31 x@@18)) (dummyFunction_1409 (|nonTerminating#triggerStateless| x@@18)))
 :qid |stdinbpl.569:15|
 :skolemid |54|
 :pattern ( (nonTerminating Heap@@31 x@@18))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6283) (x@@19 Int) ) (!  (and (= (partiallyTerminating Heap@@32 x@@19) (|partiallyTerminating'| Heap@@32 x@@19)) (dummyFunction_1409 (|partiallyTerminating#triggerStateless| x@@19)))
 :qid |stdinbpl.611:15|
 :skolemid |57|
 :pattern ( (partiallyTerminating Heap@@32 x@@19))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6283) (Mask@@31 T@PolymorphicMapType_6304) ) (!  (=> (state Heap@@33 Mask@@31) (= (|test2'| Heap@@33) (|test2#frame| EmptyFrame)))
 :qid |stdinbpl.304:15|
 :skolemid |32|
 :pattern ( (state Heap@@33 Mask@@31) (|test2'| Heap@@33))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6283) ) (! (dummyFunction_1409 |test2#triggerStateless|)
 :qid |stdinbpl.288:15|
 :skolemid |29|
 :pattern ( (|test2'| Heap@@34))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_6283) (Mask@@32 T@PolymorphicMapType_6304) (x@@20 Int) ) (!  (=> (and (state Heap@@35 Mask@@32) (< AssumeFunctionsAbove 3)) (=> (= x@@20 42) (= (test3_1 Heap@@35 x@@20) (exists ((x2@@3 Int) ) (!  (and (= x@@20 x2@@3) (partiallyTerminating Heap@@35 x2@@3))
 :qid |stdinbpl.363:93|
 :skolemid |36|
 :pattern ( (|partiallyTerminating#frame| EmptyFrame x2@@3))
)))))
 :qid |stdinbpl.361:15|
 :skolemid |37|
 :pattern ( (state Heap@@35 Mask@@32) (test3_1 Heap@@35 x@@20))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_6283) (o_6 T@Ref) (f_16 T@Field_6343_17091) (v T@FrameType) ) (! (succHeap Heap@@36 (PolymorphicMapType_6283 (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@36) (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@36) (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@36) (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@36) (store (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@36) o_6 f_16 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6283 (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@36) (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@36) (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@36) (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@36) (store (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@36) o_6 f_16 v)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_6283) (o_6@@0 T@Ref) (f_16@@0 T@Field_6343_17224) (v@@0 T@PolymorphicMapType_6832) ) (! (succHeap Heap@@37 (PolymorphicMapType_6283 (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@37) (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@37) (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@37) (store (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@37) o_6@@0 f_16@@0 v@@0) (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6283 (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@37) (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@37) (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@37) (store (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@37) o_6@@0 f_16@@0 v@@0) (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_6283) (o_6@@1 T@Ref) (f_16@@1 T@Field_9670_1212) (v@@1 Int) ) (! (succHeap Heap@@38 (PolymorphicMapType_6283 (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@38) (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@38) (store (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@38) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@38) (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6283 (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@38) (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@38) (store (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@38) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@38) (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_6283) (o_6@@2 T@Ref) (f_16@@2 T@Field_6356_6357) (v@@2 T@Ref) ) (! (succHeap Heap@@39 (PolymorphicMapType_6283 (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@39) (store (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@39) o_6@@2 f_16@@2 v@@2) (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@39) (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@39) (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6283 (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@39) (store (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@39) o_6@@2 f_16@@2 v@@2) (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@39) (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@39) (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_6283) (o_6@@3 T@Ref) (f_16@@3 T@Field_6343_53) (v@@3 Bool) ) (! (succHeap Heap@@40 (PolymorphicMapType_6283 (store (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@40) o_6@@3 f_16@@3 v@@3) (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@40) (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@40) (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@40) (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6283 (store (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@40) o_6@@3 f_16@@3 v@@3) (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@40) (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@40) (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@40) (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@40)))
)))
(assert (forall ((o_6@@4 T@Ref) (f_9 T@Field_6356_6357) (Heap@@41 T@PolymorphicMapType_6283) ) (!  (=> (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@41) o_6@@4 $allocated) (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@41) (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@41) o_6@@4 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@41) o_6@@4 f_9))
)))
(assert (forall ((p@@1 T@Field_6343_17091) (v_1@@0 T@FrameType) (q T@Field_6343_17091) (w@@0 T@FrameType) (r T@Field_6343_17091) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6343_6343 p@@1 v_1@@0 q w@@0) (InsidePredicate_6343_6343 q w@@0 r u)) (InsidePredicate_6343_6343 p@@1 v_1@@0 r u))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6343_6343 p@@1 v_1@@0 q w@@0) (InsidePredicate_6343_6343 q w@@0 r u))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_6283) ) (!  (and (= (test2_1 Heap@@42) (|test2'| Heap@@42)) (dummyFunction_1409 |test2#triggerStateless|))
 :qid |stdinbpl.284:15|
 :skolemid |28|
 :pattern ( (test2_1 Heap@@42))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |test4#definedness|)
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
 (=> (= (ControlFlow 0 0) 7) true)
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
(declare-sort T@Field_6343_53 0)
(declare-sort T@Field_6356_6357 0)
(declare-sort T@Field_9670_1212 0)
(declare-sort T@Field_6343_17224 0)
(declare-sort T@Field_6343_17091 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6304 0)) (((PolymorphicMapType_6304 (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| (Array T@Ref T@Field_6343_53 Real)) (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| (Array T@Ref T@Field_6356_6357 Real)) (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| (Array T@Ref T@Field_9670_1212 Real)) (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| (Array T@Ref T@Field_6343_17091 Real)) (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| (Array T@Ref T@Field_6343_17224 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6832 0)) (((PolymorphicMapType_6832 (|PolymorphicMapType_6832_6343_53#PolymorphicMapType_6832| (Array T@Ref T@Field_6343_53 Bool)) (|PolymorphicMapType_6832_6343_6357#PolymorphicMapType_6832| (Array T@Ref T@Field_6356_6357 Bool)) (|PolymorphicMapType_6832_6343_1212#PolymorphicMapType_6832| (Array T@Ref T@Field_9670_1212 Bool)) (|PolymorphicMapType_6832_6343_17091#PolymorphicMapType_6832| (Array T@Ref T@Field_6343_17091 Bool)) (|PolymorphicMapType_6832_6343_18402#PolymorphicMapType_6832| (Array T@Ref T@Field_6343_17224 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6283 0)) (((PolymorphicMapType_6283 (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| (Array T@Ref T@Field_6343_53 Bool)) (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| (Array T@Ref T@Field_6356_6357 T@Ref)) (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| (Array T@Ref T@Field_9670_1212 Int)) (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| (Array T@Ref T@Field_6343_17224 T@PolymorphicMapType_6832)) (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| (Array T@Ref T@Field_6343_17091 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6343_53)
(declare-fun f_7 () T@Field_9670_1212)
(declare-fun succHeap (T@PolymorphicMapType_6283 T@PolymorphicMapType_6283) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6283 T@PolymorphicMapType_6283) Bool)
(declare-fun state (T@PolymorphicMapType_6283 T@PolymorphicMapType_6304) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6304) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6832)
(declare-fun |test'| (T@PolymorphicMapType_6283 T@Ref) Bool)
(declare-fun dummyFunction_1409 (Bool) Bool)
(declare-fun |test#triggerStateless| (T@Ref) Bool)
(declare-fun |test3'| (T@PolymorphicMapType_6283 Int) Bool)
(declare-fun |test3#triggerStateless| (Int) Bool)
(declare-fun |test4'| (T@PolymorphicMapType_6283 Int) Bool)
(declare-fun |test4#triggerStateless| (Int) Bool)
(declare-fun |test5'| (T@PolymorphicMapType_6283 Int) Bool)
(declare-fun |test5#triggerStateless| (Int) Bool)
(declare-fun |nonTerminating'| (T@PolymorphicMapType_6283 T@Ref) Bool)
(declare-fun |nonTerminating#triggerStateless| (T@Ref) Bool)
(declare-fun |partiallyTerminating'| (T@PolymorphicMapType_6283 Int) Bool)
(declare-fun |partiallyTerminating#triggerStateless| (Int) Bool)
(declare-fun test_2 (T@PolymorphicMapType_6283 T@Ref) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |nonTerminating#frame| (T@FrameType T@Ref) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun nonTerminating (T@PolymorphicMapType_6283 T@Ref) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6283 T@PolymorphicMapType_6283 T@PolymorphicMapType_6304) Bool)
(declare-fun IsPredicateField_6343_17182 (T@Field_6343_17091) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6343 (T@Field_6343_17091) T@Field_6343_17224)
(declare-fun HasDirectPerm_6343_17155 (T@PolymorphicMapType_6304 T@Ref T@Field_6343_17091) Bool)
(declare-fun IsWandField_6343_18929 (T@Field_6343_17091) Bool)
(declare-fun WandMaskField_6343 (T@Field_6343_17091) T@Field_6343_17224)
(declare-fun test4_1 (T@PolymorphicMapType_6283 Int) Bool)
(declare-fun partiallyTerminating (T@PolymorphicMapType_6283 Int) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_6283)
(declare-fun ZeroMask () T@PolymorphicMapType_6304)
(declare-fun InsidePredicate_6343_6343 (T@Field_6343_17091 T@FrameType T@Field_6343_17091 T@FrameType) Bool)
(declare-fun IsPredicateField_3586_1212 (T@Field_9670_1212) Bool)
(declare-fun IsWandField_3586_1212 (T@Field_9670_1212) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6343_22487 (T@Field_6343_17224) Bool)
(declare-fun IsWandField_6343_22503 (T@Field_6343_17224) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6343_6357 (T@Field_6356_6357) Bool)
(declare-fun IsWandField_6343_6357 (T@Field_6356_6357) Bool)
(declare-fun IsPredicateField_6343_53 (T@Field_6343_53) Bool)
(declare-fun IsWandField_6343_53 (T@Field_6343_53) Bool)
(declare-fun HasDirectPerm_6343_22941 (T@PolymorphicMapType_6304 T@Ref T@Field_6343_17224) Bool)
(declare-fun HasDirectPerm_6343_1212 (T@PolymorphicMapType_6304 T@Ref T@Field_9670_1212) Bool)
(declare-fun HasDirectPerm_6343_6357 (T@PolymorphicMapType_6304 T@Ref T@Field_6356_6357) Bool)
(declare-fun HasDirectPerm_6343_53 (T@PolymorphicMapType_6304 T@Ref T@Field_6343_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun test5_1 (T@PolymorphicMapType_6283 Int) Bool)
(declare-fun sumMask (T@PolymorphicMapType_6304 T@PolymorphicMapType_6304 T@PolymorphicMapType_6304) Bool)
(declare-fun test2_1 (T@PolymorphicMapType_6283) Bool)
(declare-fun |partiallyTerminating#frame| (T@FrameType Int) Bool)
(declare-fun |test#frame| (T@FrameType T@Ref) Bool)
(declare-fun |test3#frame| (T@FrameType Int) Bool)
(declare-fun |test4#frame| (T@FrameType Int) Bool)
(declare-fun |test5#frame| (T@FrameType Int) Bool)
(declare-fun test3_1 (T@PolymorphicMapType_6283 Int) Bool)
(declare-fun |test2'| (T@PolymorphicMapType_6283) Bool)
(declare-fun |test2#frame| (T@FrameType) Bool)
(declare-fun |test2#triggerStateless| () Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6283) (Heap1 T@PolymorphicMapType_6283) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6283) (Mask T@PolymorphicMapType_6304) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6283) (Heap1@@0 T@PolymorphicMapType_6283) (Heap2 T@PolymorphicMapType_6283) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6343_17224) ) (!  (not (select (|PolymorphicMapType_6832_6343_18402#PolymorphicMapType_6832| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6832_6343_18402#PolymorphicMapType_6832| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6343_17091) ) (!  (not (select (|PolymorphicMapType_6832_6343_17091#PolymorphicMapType_6832| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6832_6343_17091#PolymorphicMapType_6832| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9670_1212) ) (!  (not (select (|PolymorphicMapType_6832_6343_1212#PolymorphicMapType_6832| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6832_6343_1212#PolymorphicMapType_6832| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6356_6357) ) (!  (not (select (|PolymorphicMapType_6832_6343_6357#PolymorphicMapType_6832| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6832_6343_6357#PolymorphicMapType_6832| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6343_53) ) (!  (not (select (|PolymorphicMapType_6832_6343_53#PolymorphicMapType_6832| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6832_6343_53#PolymorphicMapType_6832| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6283) (x T@Ref) ) (! (dummyFunction_1409 (|test#triggerStateless| x))
 :qid |stdinbpl.217:15|
 :skolemid |23|
 :pattern ( (|test'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6283) (x@@0 Int) ) (! (dummyFunction_1409 (|test3#triggerStateless| x@@0))
 :qid |stdinbpl.355:15|
 :skolemid |35|
 :pattern ( (|test3'| Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6283) (x@@1 Int) ) (! (dummyFunction_1409 (|test4#triggerStateless| x@@1))
 :qid |stdinbpl.429:15|
 :skolemid |41|
 :pattern ( (|test4'| Heap@@2 x@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6283) (x@@2 Int) ) (! (dummyFunction_1409 (|test5#triggerStateless| x@@2))
 :qid |stdinbpl.501:15|
 :skolemid |48|
 :pattern ( (|test5'| Heap@@3 x@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6283) (x@@3 T@Ref) ) (! (dummyFunction_1409 (|nonTerminating#triggerStateless| x@@3))
 :qid |stdinbpl.573:15|
 :skolemid |55|
 :pattern ( (|nonTerminating'| Heap@@4 x@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6283) (x@@4 Int) ) (! (dummyFunction_1409 (|partiallyTerminating#triggerStateless| x@@4))
 :qid |stdinbpl.615:15|
 :skolemid |58|
 :pattern ( (|partiallyTerminating'| Heap@@5 x@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6283) (Mask@@0 T@PolymorphicMapType_6304) (x@@5 T@Ref) ) (!  (=> (and (state Heap@@6 Mask@@0) (< AssumeFunctionsAbove 4)) (= (test_2 Heap@@6 x@@5) (exists ((x2 T@Ref) ) (!  (and (= x@@5 x2) (nonTerminating Heap@@6 x2))
 :qid |stdinbpl.225:80|
 :skolemid |24|
 :pattern ( (|nonTerminating#frame| EmptyFrame x2))
))))
 :qid |stdinbpl.223:15|
 :skolemid |25|
 :pattern ( (state Heap@@6 Mask@@0) (test_2 Heap@@6 x@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6283) (ExhaleHeap T@PolymorphicMapType_6283) (Mask@@1 T@PolymorphicMapType_6304) (pm_f_34 T@Field_6343_17091) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_6343_17155 Mask@@1 null pm_f_34) (IsPredicateField_6343_17182 pm_f_34)) (= (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@7) null (PredicateMaskField_6343 pm_f_34)) (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| ExhaleHeap) null (PredicateMaskField_6343 pm_f_34)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@1) (IsPredicateField_6343_17182 pm_f_34) (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| ExhaleHeap) null (PredicateMaskField_6343 pm_f_34)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6283) (ExhaleHeap@@0 T@PolymorphicMapType_6283) (Mask@@2 T@PolymorphicMapType_6304) (pm_f_34@@0 T@Field_6343_17091) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_6343_17155 Mask@@2 null pm_f_34@@0) (IsWandField_6343_18929 pm_f_34@@0)) (= (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@8) null (WandMaskField_6343 pm_f_34@@0)) (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| ExhaleHeap@@0) null (WandMaskField_6343 pm_f_34@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@2) (IsWandField_6343_18929 pm_f_34@@0) (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| ExhaleHeap@@0) null (WandMaskField_6343 pm_f_34@@0)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6283) (Mask@@3 T@PolymorphicMapType_6304) (x@@6 Int) ) (!  (=> (and (state Heap@@9 Mask@@3) (< AssumeFunctionsAbove 2)) (= (test4_1 Heap@@9 x@@6)  (and (exists ((x2@@0 Int) ) (! (= x@@6 x2@@0)
 :qid |stdinbpl.437:82|
 :skolemid |42|
)) (partiallyTerminating Heap@@9 x@@6))))
 :qid |stdinbpl.435:15|
 :skolemid |43|
 :pattern ( (state Heap@@9 Mask@@3) (test4_1 Heap@@9 x@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6283) (ExhaleHeap@@1 T@PolymorphicMapType_6283) (Mask@@4 T@PolymorphicMapType_6304) (o_30 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@4) (=> (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@10) o_30 $allocated) (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| ExhaleHeap@@1) o_30 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@4) (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| ExhaleHeap@@1) o_30 $allocated))
)))
(assert (forall ((p T@Field_6343_17091) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6343_6343 p v_1 p w))
 :qid |stdinbpl.180:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6343_6343 p v_1 p w))
)))
(assert  (not (IsPredicateField_3586_1212 f_7)))
(assert  (not (IsWandField_3586_1212 f_7)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6283) (ExhaleHeap@@2 T@PolymorphicMapType_6283) (Mask@@5 T@PolymorphicMapType_6304) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@5) (succHeap Heap@@11 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6304) (o_2@@4 T@Ref) (f_4@@4 T@Field_6343_17224) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| Mask@@6) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6343_22487 f_4@@4))) (not (IsWandField_6343_22503 f_4@@4))) (<= (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| Mask@@6) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| Mask@@6) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6304) (o_2@@5 T@Ref) (f_4@@5 T@Field_6343_17091) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| Mask@@7) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_6343_17182 f_4@@5))) (not (IsWandField_6343_18929 f_4@@5))) (<= (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| Mask@@7) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| Mask@@7) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6304) (o_2@@6 T@Ref) (f_4@@6 T@Field_9670_1212) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| Mask@@8) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3586_1212 f_4@@6))) (not (IsWandField_3586_1212 f_4@@6))) (<= (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| Mask@@8) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| Mask@@8) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6304) (o_2@@7 T@Ref) (f_4@@7 T@Field_6356_6357) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| Mask@@9) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_6343_6357 f_4@@7))) (not (IsWandField_6343_6357 f_4@@7))) (<= (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| Mask@@9) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| Mask@@9) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6304) (o_2@@8 T@Ref) (f_4@@8 T@Field_6343_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| Mask@@10) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_6343_53 f_4@@8))) (not (IsWandField_6343_53 f_4@@8))) (<= (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| Mask@@10) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| Mask@@10) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6304) (o_2@@9 T@Ref) (f_4@@9 T@Field_6343_17224) ) (! (= (HasDirectPerm_6343_22941 Mask@@11 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| Mask@@11) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6343_22941 Mask@@11 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6304) (o_2@@10 T@Ref) (f_4@@10 T@Field_6343_17091) ) (! (= (HasDirectPerm_6343_17155 Mask@@12 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| Mask@@12) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6343_17155 Mask@@12 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6304) (o_2@@11 T@Ref) (f_4@@11 T@Field_9670_1212) ) (! (= (HasDirectPerm_6343_1212 Mask@@13 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| Mask@@13) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6343_1212 Mask@@13 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6304) (o_2@@12 T@Ref) (f_4@@12 T@Field_6356_6357) ) (! (= (HasDirectPerm_6343_6357 Mask@@14 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| Mask@@14) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6343_6357 Mask@@14 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6304) (o_2@@13 T@Ref) (f_4@@13 T@Field_6343_53) ) (! (= (HasDirectPerm_6343_53 Mask@@15 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| Mask@@15) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6343_53 Mask@@15 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6283) (ExhaleHeap@@3 T@PolymorphicMapType_6283) (Mask@@16 T@PolymorphicMapType_6304) (pm_f_34@@1 T@Field_6343_17091) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@16) (=> (and (HasDirectPerm_6343_17155 Mask@@16 null pm_f_34@@1) (IsPredicateField_6343_17182 pm_f_34@@1)) (and (and (and (and (forall ((o2_34 T@Ref) (f_35 T@Field_6343_53) ) (!  (=> (select (|PolymorphicMapType_6832_6343_53#PolymorphicMapType_6832| (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@12) null (PredicateMaskField_6343 pm_f_34@@1))) o2_34 f_35) (= (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@12) o2_34 f_35) (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| ExhaleHeap@@3) o2_34 f_35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| ExhaleHeap@@3) o2_34 f_35))
)) (forall ((o2_34@@0 T@Ref) (f_35@@0 T@Field_6356_6357) ) (!  (=> (select (|PolymorphicMapType_6832_6343_6357#PolymorphicMapType_6832| (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@12) null (PredicateMaskField_6343 pm_f_34@@1))) o2_34@@0 f_35@@0) (= (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@12) o2_34@@0 f_35@@0) (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| ExhaleHeap@@3) o2_34@@0 f_35@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| ExhaleHeap@@3) o2_34@@0 f_35@@0))
))) (forall ((o2_34@@1 T@Ref) (f_35@@1 T@Field_9670_1212) ) (!  (=> (select (|PolymorphicMapType_6832_6343_1212#PolymorphicMapType_6832| (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@12) null (PredicateMaskField_6343 pm_f_34@@1))) o2_34@@1 f_35@@1) (= (select (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@12) o2_34@@1 f_35@@1) (select (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| ExhaleHeap@@3) o2_34@@1 f_35@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| ExhaleHeap@@3) o2_34@@1 f_35@@1))
))) (forall ((o2_34@@2 T@Ref) (f_35@@2 T@Field_6343_17091) ) (!  (=> (select (|PolymorphicMapType_6832_6343_17091#PolymorphicMapType_6832| (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@12) null (PredicateMaskField_6343 pm_f_34@@1))) o2_34@@2 f_35@@2) (= (select (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@12) o2_34@@2 f_35@@2) (select (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| ExhaleHeap@@3) o2_34@@2 f_35@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| ExhaleHeap@@3) o2_34@@2 f_35@@2))
))) (forall ((o2_34@@3 T@Ref) (f_35@@3 T@Field_6343_17224) ) (!  (=> (select (|PolymorphicMapType_6832_6343_18402#PolymorphicMapType_6832| (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@12) null (PredicateMaskField_6343 pm_f_34@@1))) o2_34@@3 f_35@@3) (= (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@12) o2_34@@3 f_35@@3) (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| ExhaleHeap@@3) o2_34@@3 f_35@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| ExhaleHeap@@3) o2_34@@3 f_35@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@16) (IsPredicateField_6343_17182 pm_f_34@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6283) (ExhaleHeap@@4 T@PolymorphicMapType_6283) (Mask@@17 T@PolymorphicMapType_6304) (pm_f_34@@2 T@Field_6343_17091) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@17) (=> (and (HasDirectPerm_6343_17155 Mask@@17 null pm_f_34@@2) (IsWandField_6343_18929 pm_f_34@@2)) (and (and (and (and (forall ((o2_34@@4 T@Ref) (f_35@@4 T@Field_6343_53) ) (!  (=> (select (|PolymorphicMapType_6832_6343_53#PolymorphicMapType_6832| (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@13) null (WandMaskField_6343 pm_f_34@@2))) o2_34@@4 f_35@@4) (= (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@13) o2_34@@4 f_35@@4) (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| ExhaleHeap@@4) o2_34@@4 f_35@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| ExhaleHeap@@4) o2_34@@4 f_35@@4))
)) (forall ((o2_34@@5 T@Ref) (f_35@@5 T@Field_6356_6357) ) (!  (=> (select (|PolymorphicMapType_6832_6343_6357#PolymorphicMapType_6832| (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@13) null (WandMaskField_6343 pm_f_34@@2))) o2_34@@5 f_35@@5) (= (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@13) o2_34@@5 f_35@@5) (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| ExhaleHeap@@4) o2_34@@5 f_35@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| ExhaleHeap@@4) o2_34@@5 f_35@@5))
))) (forall ((o2_34@@6 T@Ref) (f_35@@6 T@Field_9670_1212) ) (!  (=> (select (|PolymorphicMapType_6832_6343_1212#PolymorphicMapType_6832| (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@13) null (WandMaskField_6343 pm_f_34@@2))) o2_34@@6 f_35@@6) (= (select (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@13) o2_34@@6 f_35@@6) (select (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| ExhaleHeap@@4) o2_34@@6 f_35@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| ExhaleHeap@@4) o2_34@@6 f_35@@6))
))) (forall ((o2_34@@7 T@Ref) (f_35@@7 T@Field_6343_17091) ) (!  (=> (select (|PolymorphicMapType_6832_6343_17091#PolymorphicMapType_6832| (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@13) null (WandMaskField_6343 pm_f_34@@2))) o2_34@@7 f_35@@7) (= (select (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@13) o2_34@@7 f_35@@7) (select (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| ExhaleHeap@@4) o2_34@@7 f_35@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| ExhaleHeap@@4) o2_34@@7 f_35@@7))
))) (forall ((o2_34@@8 T@Ref) (f_35@@8 T@Field_6343_17224) ) (!  (=> (select (|PolymorphicMapType_6832_6343_18402#PolymorphicMapType_6832| (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@13) null (WandMaskField_6343 pm_f_34@@2))) o2_34@@8 f_35@@8) (= (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@13) o2_34@@8 f_35@@8) (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| ExhaleHeap@@4) o2_34@@8 f_35@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| ExhaleHeap@@4) o2_34@@8 f_35@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@17) (IsWandField_6343_18929 pm_f_34@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.168:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6283) (ExhaleHeap@@5 T@PolymorphicMapType_6283) (Mask@@18 T@PolymorphicMapType_6304) (o_30@@0 T@Ref) (f_35@@9 T@Field_6343_17224) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_6343_22941 Mask@@18 o_30@@0 f_35@@9) (= (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@14) o_30@@0 f_35@@9) (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| ExhaleHeap@@5) o_30@@0 f_35@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| ExhaleHeap@@5) o_30@@0 f_35@@9))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6283) (ExhaleHeap@@6 T@PolymorphicMapType_6283) (Mask@@19 T@PolymorphicMapType_6304) (o_30@@1 T@Ref) (f_35@@10 T@Field_6343_17091) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_6343_17155 Mask@@19 o_30@@1 f_35@@10) (= (select (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@15) o_30@@1 f_35@@10) (select (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| ExhaleHeap@@6) o_30@@1 f_35@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| ExhaleHeap@@6) o_30@@1 f_35@@10))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6283) (ExhaleHeap@@7 T@PolymorphicMapType_6283) (Mask@@20 T@PolymorphicMapType_6304) (o_30@@2 T@Ref) (f_35@@11 T@Field_9670_1212) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_6343_1212 Mask@@20 o_30@@2 f_35@@11) (= (select (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@16) o_30@@2 f_35@@11) (select (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| ExhaleHeap@@7) o_30@@2 f_35@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| ExhaleHeap@@7) o_30@@2 f_35@@11))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6283) (ExhaleHeap@@8 T@PolymorphicMapType_6283) (Mask@@21 T@PolymorphicMapType_6304) (o_30@@3 T@Ref) (f_35@@12 T@Field_6356_6357) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_6343_6357 Mask@@21 o_30@@3 f_35@@12) (= (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@17) o_30@@3 f_35@@12) (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| ExhaleHeap@@8) o_30@@3 f_35@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| ExhaleHeap@@8) o_30@@3 f_35@@12))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6283) (ExhaleHeap@@9 T@PolymorphicMapType_6283) (Mask@@22 T@PolymorphicMapType_6304) (o_30@@4 T@Ref) (f_35@@13 T@Field_6343_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@22) (=> (HasDirectPerm_6343_53 Mask@@22 o_30@@4 f_35@@13) (= (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@18) o_30@@4 f_35@@13) (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| ExhaleHeap@@9) o_30@@4 f_35@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@22) (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| ExhaleHeap@@9) o_30@@4 f_35@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6343_17224) ) (! (= (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_6343_17091) ) (! (= (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_9670_1212) ) (! (= (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6356_6357) ) (! (= (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_6343_53) ) (! (= (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6283) (Mask@@23 T@PolymorphicMapType_6304) (x@@7 Int) ) (!  (=> (and (state Heap@@19 Mask@@23) (< AssumeFunctionsAbove 1)) (= (test5_1 Heap@@19 x@@7)  (and (exists ((x2@@1 Int) ) (!  (and (= x@@7 x2@@1) (not (= x@@7 x2@@1)))
 :qid |stdinbpl.509:82|
 :skolemid |49|
)) (partiallyTerminating Heap@@19 x@@7))))
 :qid |stdinbpl.507:15|
 :skolemid |50|
 :pattern ( (state Heap@@19 Mask@@23) (test5_1 Heap@@19 x@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6304) (SummandMask1 T@PolymorphicMapType_6304) (SummandMask2 T@PolymorphicMapType_6304) (o_2@@19 T@Ref) (f_4@@19 T@Field_6343_17224) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6304_6343_21358#PolymorphicMapType_6304| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6304) (SummandMask1@@0 T@PolymorphicMapType_6304) (SummandMask2@@0 T@PolymorphicMapType_6304) (o_2@@20 T@Ref) (f_4@@20 T@Field_6343_17091) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6304_6343_17091#PolymorphicMapType_6304| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6304) (SummandMask1@@1 T@PolymorphicMapType_6304) (SummandMask2@@1 T@PolymorphicMapType_6304) (o_2@@21 T@Ref) (f_4@@21 T@Field_9670_1212) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6304_6343_1212#PolymorphicMapType_6304| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6304) (SummandMask1@@2 T@PolymorphicMapType_6304) (SummandMask2@@2 T@PolymorphicMapType_6304) (o_2@@22 T@Ref) (f_4@@22 T@Field_6356_6357) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6304_6343_6357#PolymorphicMapType_6304| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6304) (SummandMask1@@3 T@PolymorphicMapType_6304) (SummandMask2@@3 T@PolymorphicMapType_6304) (o_2@@23 T@Ref) (f_4@@23 T@Field_6343_53) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6304_6343_53#PolymorphicMapType_6304| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6283) (Mask@@24 T@PolymorphicMapType_6304) ) (!  (=> (and (state Heap@@20 Mask@@24) (< AssumeFunctionsAbove 0)) (= (test2_1 Heap@@20) (exists ((x2@@2 Int) ) (! (partiallyTerminating Heap@@20 x2@@2)
 :qid |stdinbpl.296:78|
 :skolemid |30|
 :pattern ( (|partiallyTerminating#frame| EmptyFrame x2@@2))
))))
 :qid |stdinbpl.294:15|
 :skolemid |31|
 :pattern ( (state Heap@@20 Mask@@24) (test2_1 Heap@@20))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6283) (Mask@@25 T@PolymorphicMapType_6304) (x@@8 T@Ref) ) (!  (=> (state Heap@@21 Mask@@25) (= (|test'| Heap@@21 x@@8) (|test#frame| EmptyFrame x@@8)))
 :qid |stdinbpl.233:15|
 :skolemid |26|
 :pattern ( (state Heap@@21 Mask@@25) (|test'| Heap@@21 x@@8))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6283) (Mask@@26 T@PolymorphicMapType_6304) (x@@9 Int) ) (!  (=> (state Heap@@22 Mask@@26) (= (|test3'| Heap@@22 x@@9) (|test3#frame| EmptyFrame x@@9)))
 :qid |stdinbpl.371:15|
 :skolemid |38|
 :pattern ( (state Heap@@22 Mask@@26) (|test3'| Heap@@22 x@@9))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6283) (Mask@@27 T@PolymorphicMapType_6304) (x@@10 Int) ) (!  (=> (state Heap@@23 Mask@@27) (= (|test4'| Heap@@23 x@@10) (|test4#frame| EmptyFrame x@@10)))
 :qid |stdinbpl.445:15|
 :skolemid |44|
 :pattern ( (state Heap@@23 Mask@@27) (|test4'| Heap@@23 x@@10))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6283) (Mask@@28 T@PolymorphicMapType_6304) (x@@11 Int) ) (!  (=> (state Heap@@24 Mask@@28) (= (|test5'| Heap@@24 x@@11) (|test5#frame| EmptyFrame x@@11)))
 :qid |stdinbpl.517:15|
 :skolemid |51|
 :pattern ( (state Heap@@24 Mask@@28) (|test5'| Heap@@24 x@@11))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6283) (Mask@@29 T@PolymorphicMapType_6304) (x@@12 T@Ref) ) (!  (=> (state Heap@@25 Mask@@29) (= (|nonTerminating'| Heap@@25 x@@12) (|nonTerminating#frame| EmptyFrame x@@12)))
 :qid |stdinbpl.580:15|
 :skolemid |56|
 :pattern ( (state Heap@@25 Mask@@29) (|nonTerminating'| Heap@@25 x@@12))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6283) (Mask@@30 T@PolymorphicMapType_6304) (x@@13 Int) ) (!  (=> (state Heap@@26 Mask@@30) (= (|partiallyTerminating'| Heap@@26 x@@13) (|partiallyTerminating#frame| EmptyFrame x@@13)))
 :qid |stdinbpl.622:15|
 :skolemid |59|
 :pattern ( (state Heap@@26 Mask@@30) (|partiallyTerminating'| Heap@@26 x@@13))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6283) (x@@14 T@Ref) ) (!  (and (= (test_2 Heap@@27 x@@14) (|test'| Heap@@27 x@@14)) (dummyFunction_1409 (|test#triggerStateless| x@@14)))
 :qid |stdinbpl.213:15|
 :skolemid |22|
 :pattern ( (test_2 Heap@@27 x@@14))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6283) (x@@15 Int) ) (!  (and (= (test3_1 Heap@@28 x@@15) (|test3'| Heap@@28 x@@15)) (dummyFunction_1409 (|test3#triggerStateless| x@@15)))
 :qid |stdinbpl.351:15|
 :skolemid |34|
 :pattern ( (test3_1 Heap@@28 x@@15))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6283) (x@@16 Int) ) (!  (and (= (test4_1 Heap@@29 x@@16) (|test4'| Heap@@29 x@@16)) (dummyFunction_1409 (|test4#triggerStateless| x@@16)))
 :qid |stdinbpl.425:15|
 :skolemid |40|
 :pattern ( (test4_1 Heap@@29 x@@16))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6283) (x@@17 Int) ) (!  (and (= (test5_1 Heap@@30 x@@17) (|test5'| Heap@@30 x@@17)) (dummyFunction_1409 (|test5#triggerStateless| x@@17)))
 :qid |stdinbpl.497:15|
 :skolemid |47|
 :pattern ( (test5_1 Heap@@30 x@@17))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6283) (x@@18 T@Ref) ) (!  (and (= (nonTerminating Heap@@31 x@@18) (|nonTerminating'| Heap@@31 x@@18)) (dummyFunction_1409 (|nonTerminating#triggerStateless| x@@18)))
 :qid |stdinbpl.569:15|
 :skolemid |54|
 :pattern ( (nonTerminating Heap@@31 x@@18))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6283) (x@@19 Int) ) (!  (and (= (partiallyTerminating Heap@@32 x@@19) (|partiallyTerminating'| Heap@@32 x@@19)) (dummyFunction_1409 (|partiallyTerminating#triggerStateless| x@@19)))
 :qid |stdinbpl.611:15|
 :skolemid |57|
 :pattern ( (partiallyTerminating Heap@@32 x@@19))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6283) (Mask@@31 T@PolymorphicMapType_6304) ) (!  (=> (state Heap@@33 Mask@@31) (= (|test2'| Heap@@33) (|test2#frame| EmptyFrame)))
 :qid |stdinbpl.304:15|
 :skolemid |32|
 :pattern ( (state Heap@@33 Mask@@31) (|test2'| Heap@@33))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6283) ) (! (dummyFunction_1409 |test2#triggerStateless|)
 :qid |stdinbpl.288:15|
 :skolemid |29|
 :pattern ( (|test2'| Heap@@34))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_6283) (Mask@@32 T@PolymorphicMapType_6304) (x@@20 Int) ) (!  (=> (and (state Heap@@35 Mask@@32) (< AssumeFunctionsAbove 3)) (=> (= x@@20 42) (= (test3_1 Heap@@35 x@@20) (exists ((x2@@3 Int) ) (!  (and (= x@@20 x2@@3) (partiallyTerminating Heap@@35 x2@@3))
 :qid |stdinbpl.363:93|
 :skolemid |36|
 :pattern ( (|partiallyTerminating#frame| EmptyFrame x2@@3))
)))))
 :qid |stdinbpl.361:15|
 :skolemid |37|
 :pattern ( (state Heap@@35 Mask@@32) (test3_1 Heap@@35 x@@20))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_6283) (o_6 T@Ref) (f_16 T@Field_6343_17091) (v T@FrameType) ) (! (succHeap Heap@@36 (PolymorphicMapType_6283 (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@36) (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@36) (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@36) (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@36) (store (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@36) o_6 f_16 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6283 (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@36) (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@36) (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@36) (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@36) (store (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@36) o_6 f_16 v)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_6283) (o_6@@0 T@Ref) (f_16@@0 T@Field_6343_17224) (v@@0 T@PolymorphicMapType_6832) ) (! (succHeap Heap@@37 (PolymorphicMapType_6283 (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@37) (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@37) (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@37) (store (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@37) o_6@@0 f_16@@0 v@@0) (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6283 (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@37) (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@37) (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@37) (store (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@37) o_6@@0 f_16@@0 v@@0) (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_6283) (o_6@@1 T@Ref) (f_16@@1 T@Field_9670_1212) (v@@1 Int) ) (! (succHeap Heap@@38 (PolymorphicMapType_6283 (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@38) (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@38) (store (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@38) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@38) (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6283 (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@38) (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@38) (store (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@38) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@38) (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_6283) (o_6@@2 T@Ref) (f_16@@2 T@Field_6356_6357) (v@@2 T@Ref) ) (! (succHeap Heap@@39 (PolymorphicMapType_6283 (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@39) (store (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@39) o_6@@2 f_16@@2 v@@2) (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@39) (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@39) (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6283 (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@39) (store (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@39) o_6@@2 f_16@@2 v@@2) (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@39) (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@39) (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_6283) (o_6@@3 T@Ref) (f_16@@3 T@Field_6343_53) (v@@3 Bool) ) (! (succHeap Heap@@40 (PolymorphicMapType_6283 (store (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@40) o_6@@3 f_16@@3 v@@3) (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@40) (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@40) (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@40) (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6283 (store (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@40) o_6@@3 f_16@@3 v@@3) (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@40) (|PolymorphicMapType_6283_6343_1212#PolymorphicMapType_6283| Heap@@40) (|PolymorphicMapType_6283_6343_17268#PolymorphicMapType_6283| Heap@@40) (|PolymorphicMapType_6283_6343_17091#PolymorphicMapType_6283| Heap@@40)))
)))
(assert (forall ((o_6@@4 T@Ref) (f_9 T@Field_6356_6357) (Heap@@41 T@PolymorphicMapType_6283) ) (!  (=> (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@41) o_6@@4 $allocated) (select (|PolymorphicMapType_6283_3458_53#PolymorphicMapType_6283| Heap@@41) (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@41) o_6@@4 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6283_3461_3462#PolymorphicMapType_6283| Heap@@41) o_6@@4 f_9))
)))
(assert (forall ((p@@1 T@Field_6343_17091) (v_1@@0 T@FrameType) (q T@Field_6343_17091) (w@@0 T@FrameType) (r T@Field_6343_17091) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6343_6343 p@@1 v_1@@0 q w@@0) (InsidePredicate_6343_6343 q w@@0 r u)) (InsidePredicate_6343_6343 p@@1 v_1@@0 r u))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6343_6343 p@@1 v_1@@0 q w@@0) (InsidePredicate_6343_6343 q w@@0 r u))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_6283) ) (!  (and (= (test2_1 Heap@@42) (|test2'| Heap@@42)) (dummyFunction_1409 |test2#triggerStateless|))
 :qid |stdinbpl.284:15|
 :skolemid |28|
 :pattern ( (test2_1 Heap@@42))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

