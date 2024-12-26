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
(declare-sort T@Field_6820_53 0)
(declare-sort T@Field_6833_6834 0)
(declare-sort T@Field_10147_1189 0)
(declare-sort T@Field_10559_10560 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_12271_12276 0)
(declare-sort T@Field_3575_10560 0)
(declare-sort T@Field_3575_12276 0)
(declare-sort T@Field_10559_3576 0)
(declare-sort T@Field_10559_1189 0)
(declare-sort T@Field_10559_53 0)
(declare-datatypes ((T@PolymorphicMapType_6781 0)) (((PolymorphicMapType_6781 (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| (Array T@Ref T@Field_10559_10560 Real)) (|PolymorphicMapType_6781_3575_3576#PolymorphicMapType_6781| (Array T@Ref T@Field_6833_6834 Real)) (|PolymorphicMapType_6781_3573_1189#PolymorphicMapType_6781| (Array T@Ref T@Field_10147_1189 Real)) (|PolymorphicMapType_6781_3655_3576#PolymorphicMapType_6781| (Array T@Ref T@Field_10559_3576 Real)) (|PolymorphicMapType_6781_3655_1189#PolymorphicMapType_6781| (Array T@Ref T@Field_10559_1189 Real)) (|PolymorphicMapType_6781_3655_53#PolymorphicMapType_6781| (Array T@Ref T@Field_10559_53 Real)) (|PolymorphicMapType_6781_3655_30631#PolymorphicMapType_6781| (Array T@Ref T@Field_12271_12276 Real)) (|PolymorphicMapType_6781_3575_3656#PolymorphicMapType_6781| (Array T@Ref T@Field_3575_10560 Real)) (|PolymorphicMapType_6781_3575_53#PolymorphicMapType_6781| (Array T@Ref T@Field_6820_53 Real)) (|PolymorphicMapType_6781_3575_31030#PolymorphicMapType_6781| (Array T@Ref T@Field_3575_12276 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7309 0)) (((PolymorphicMapType_7309 (|PolymorphicMapType_7309_3575_3576#PolymorphicMapType_7309| (Array T@Ref T@Field_6833_6834 Bool)) (|PolymorphicMapType_7309_3573_1189#PolymorphicMapType_7309| (Array T@Ref T@Field_10147_1189 Bool)) (|PolymorphicMapType_7309_3575_53#PolymorphicMapType_7309| (Array T@Ref T@Field_6820_53 Bool)) (|PolymorphicMapType_7309_3575_10560#PolymorphicMapType_7309| (Array T@Ref T@Field_3575_10560 Bool)) (|PolymorphicMapType_7309_3575_24192#PolymorphicMapType_7309| (Array T@Ref T@Field_3575_12276 Bool)) (|PolymorphicMapType_7309_10559_3576#PolymorphicMapType_7309| (Array T@Ref T@Field_10559_3576 Bool)) (|PolymorphicMapType_7309_10559_1189#PolymorphicMapType_7309| (Array T@Ref T@Field_10559_1189 Bool)) (|PolymorphicMapType_7309_10559_53#PolymorphicMapType_7309| (Array T@Ref T@Field_10559_53 Bool)) (|PolymorphicMapType_7309_10559_10560#PolymorphicMapType_7309| (Array T@Ref T@Field_10559_10560 Bool)) (|PolymorphicMapType_7309_10559_25240#PolymorphicMapType_7309| (Array T@Ref T@Field_12271_12276 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6760 0)) (((PolymorphicMapType_6760 (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| (Array T@Ref T@Field_6820_53 Bool)) (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| (Array T@Ref T@Field_6833_6834 T@Ref)) (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| (Array T@Ref T@Field_10147_1189 Int)) (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| (Array T@Ref T@Field_10559_10560 T@FrameType)) (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| (Array T@Ref T@Field_12271_12276 T@PolymorphicMapType_7309)) (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| (Array T@Ref T@Field_3575_10560 T@FrameType)) (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| (Array T@Ref T@Field_3575_12276 T@PolymorphicMapType_7309)) (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| (Array T@Ref T@Field_10559_3576 T@Ref)) (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| (Array T@Ref T@Field_10559_1189 Int)) (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| (Array T@Ref T@Field_10559_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_6820_53)
(declare-fun Int__v () T@Field_10147_1189)
(declare-fun List__Node__0 () T@Field_6833_6834)
(declare-fun succHeap (T@PolymorphicMapType_6760 T@PolymorphicMapType_6760) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6760 T@PolymorphicMapType_6760) Bool)
(declare-fun state (T@PolymorphicMapType_6760 T@PolymorphicMapType_6781) Bool)
(declare-fun sum_ok (T@PolymorphicMapType_6760 T@Ref) T@Ref)
(declare-fun |sum_ok#triggerStateless| (T@Ref) T@Ref)
(declare-fun |valid__List#trigger_3655| (T@PolymorphicMapType_6760 T@Field_10559_10560) Bool)
(declare-fun valid__List (T@Ref) T@Field_10559_10560)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_6781) Bool)
(declare-fun |func3'| (T@PolymorphicMapType_6760 Int Int Bool) Bool)
(declare-fun dummyFunction_2551 (Bool) Bool)
(declare-fun |func3#triggerStateless| (Int Int Bool) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7309)
(declare-fun func3_1 (T@PolymorphicMapType_6760 Int Int Bool) Bool)
(declare-fun IsPredicateField_3655_3656 (T@Field_10559_10560) Bool)
(declare-fun |sum_fail'| (T@PolymorphicMapType_6760 T@Ref) Int)
(declare-fun dummyFunction_1410 (Int) Bool)
(declare-fun |sum_fail#triggerStateless| (T@Ref) Int)
(declare-fun |sum_ok'| (T@PolymorphicMapType_6760 T@Ref) T@Ref)
(declare-fun dummyFunction_3628 (T@Ref) Bool)
(declare-fun |valid__List#everUsed_3655| (T@Field_10559_10560) Bool)
(declare-fun sum_fail (T@PolymorphicMapType_6760 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6760 T@PolymorphicMapType_6760 T@PolymorphicMapType_6781) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3655 (T@Field_10559_10560) T@Field_12271_12276)
(declare-fun HasDirectPerm_10559_10560 (T@PolymorphicMapType_6781 T@Ref T@Field_10559_10560) Bool)
(declare-fun IsPredicateField_3575_22735 (T@Field_3575_10560) Bool)
(declare-fun PredicateMaskField_3575 (T@Field_3575_10560) T@Field_3575_12276)
(declare-fun HasDirectPerm_3575_10560 (T@PolymorphicMapType_6781 T@Ref T@Field_3575_10560) Bool)
(declare-fun IsWandField_10559_26405 (T@Field_10559_10560) Bool)
(declare-fun WandMaskField_10559 (T@Field_10559_10560) T@Field_12271_12276)
(declare-fun IsWandField_3575_26048 (T@Field_3575_10560) Bool)
(declare-fun WandMaskField_3575 (T@Field_3575_10560) T@Field_3575_12276)
(declare-fun |valid__List#sm| (T@Ref) T@Field_12271_12276)
(declare-fun |func3#frame| (T@FrameType Int Int Bool) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun dummyHeap () T@PolymorphicMapType_6760)
(declare-fun ZeroMask () T@PolymorphicMapType_6781)
(declare-fun InsidePredicate_10559_10559 (T@Field_10559_10560 T@FrameType T@Field_10559_10560 T@FrameType) Bool)
(declare-fun InsidePredicate_6820_6820 (T@Field_3575_10560 T@FrameType T@Field_3575_10560 T@FrameType) Bool)
(declare-fun IsPredicateField_3573_1189 (T@Field_10147_1189) Bool)
(declare-fun IsWandField_3573_1189 (T@Field_10147_1189) Bool)
(declare-fun IsPredicateField_3575_3576 (T@Field_6833_6834) Bool)
(declare-fun IsWandField_3575_3576 (T@Field_6833_6834) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3575_33308 (T@Field_3575_12276) Bool)
(declare-fun IsWandField_3575_33324 (T@Field_3575_12276) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3575_53 (T@Field_6820_53) Bool)
(declare-fun IsWandField_3575_53 (T@Field_6820_53) Bool)
(declare-fun IsPredicateField_3655_32505 (T@Field_12271_12276) Bool)
(declare-fun IsWandField_3655_32521 (T@Field_12271_12276) Bool)
(declare-fun IsPredicateField_3655_53 (T@Field_10559_53) Bool)
(declare-fun IsWandField_3655_53 (T@Field_10559_53) Bool)
(declare-fun IsPredicateField_3655_1189 (T@Field_10559_1189) Bool)
(declare-fun IsWandField_3655_1189 (T@Field_10559_1189) Bool)
(declare-fun IsPredicateField_3655_3576 (T@Field_10559_3576) Bool)
(declare-fun IsWandField_3655_3576 (T@Field_10559_3576) Bool)
(declare-fun |func3#trigger| (T@FrameType Int Int Bool) Bool)
(declare-fun HasDirectPerm_10559_22490 (T@PolymorphicMapType_6781 T@Ref T@Field_12271_12276) Bool)
(declare-fun HasDirectPerm_10559_53 (T@PolymorphicMapType_6781 T@Ref T@Field_10559_53) Bool)
(declare-fun HasDirectPerm_10559_1189 (T@PolymorphicMapType_6781 T@Ref T@Field_10559_1189) Bool)
(declare-fun HasDirectPerm_10559_3576 (T@PolymorphicMapType_6781 T@Ref T@Field_10559_3576) Bool)
(declare-fun HasDirectPerm_3575_21329 (T@PolymorphicMapType_6781 T@Ref T@Field_3575_12276) Bool)
(declare-fun HasDirectPerm_3575_53 (T@PolymorphicMapType_6781 T@Ref T@Field_6820_53) Bool)
(declare-fun HasDirectPerm_3573_1189 (T@PolymorphicMapType_6781 T@Ref T@Field_10147_1189) Bool)
(declare-fun HasDirectPerm_3575_3576 (T@PolymorphicMapType_6781 T@Ref T@Field_6833_6834) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6781 T@PolymorphicMapType_6781 T@PolymorphicMapType_6781) Bool)
(declare-fun |sum_fail#frame| (T@FrameType T@Ref) Int)
(declare-fun |sum_ok#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun getPredWandId_3655_3656 (T@Field_10559_10560) Int)
(declare-fun InsidePredicate_10559_6820 (T@Field_10559_10560 T@FrameType T@Field_3575_10560 T@FrameType) Bool)
(declare-fun InsidePredicate_6820_10559 (T@Field_3575_10560 T@FrameType T@Field_10559_10560 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6760) (Heap1 T@PolymorphicMapType_6760) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6760) (Mask T@PolymorphicMapType_6781) (l_2 T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 2)) (= (sum_ok Heap l_2) (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap) l_2 List__Node__0)))
 :qid |stdinbpl.310:15|
 :skolemid |28|
 :pattern ( (state Heap Mask) (sum_ok Heap l_2))
 :pattern ( (state Heap Mask) (|sum_ok#triggerStateless| l_2) (|valid__List#trigger_3655| Heap (valid__List l_2)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6760) (Mask@@0 T@PolymorphicMapType_6781) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6760) (Heap1@@0 T@PolymorphicMapType_6760) (Heap2 T@PolymorphicMapType_6760) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6760) (x Int) (y Int) (z Bool) ) (! (dummyFunction_2551 (|func3#triggerStateless| x y z))
 :qid |stdinbpl.403:15|
 :skolemid |31|
 :pattern ( (|func3'| Heap@@1 x y z))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12271_12276) ) (!  (not (select (|PolymorphicMapType_7309_10559_25240#PolymorphicMapType_7309| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7309_10559_25240#PolymorphicMapType_7309| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10559_10560) ) (!  (not (select (|PolymorphicMapType_7309_10559_10560#PolymorphicMapType_7309| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7309_10559_10560#PolymorphicMapType_7309| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10559_53) ) (!  (not (select (|PolymorphicMapType_7309_10559_53#PolymorphicMapType_7309| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7309_10559_53#PolymorphicMapType_7309| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10559_1189) ) (!  (not (select (|PolymorphicMapType_7309_10559_1189#PolymorphicMapType_7309| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7309_10559_1189#PolymorphicMapType_7309| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10559_3576) ) (!  (not (select (|PolymorphicMapType_7309_10559_3576#PolymorphicMapType_7309| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7309_10559_3576#PolymorphicMapType_7309| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3575_12276) ) (!  (not (select (|PolymorphicMapType_7309_3575_24192#PolymorphicMapType_7309| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7309_3575_24192#PolymorphicMapType_7309| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_3575_10560) ) (!  (not (select (|PolymorphicMapType_7309_3575_10560#PolymorphicMapType_7309| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7309_3575_10560#PolymorphicMapType_7309| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_6820_53) ) (!  (not (select (|PolymorphicMapType_7309_3575_53#PolymorphicMapType_7309| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7309_3575_53#PolymorphicMapType_7309| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_10147_1189) ) (!  (not (select (|PolymorphicMapType_7309_3573_1189#PolymorphicMapType_7309| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7309_3573_1189#PolymorphicMapType_7309| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_6833_6834) ) (!  (not (select (|PolymorphicMapType_7309_3575_3576#PolymorphicMapType_7309| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7309_3575_3576#PolymorphicMapType_7309| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6760) (x@@0 Int) (y@@0 Int) (z@@0 Bool) ) (!  (and (= (func3_1 Heap@@2 x@@0 y@@0 z@@0) (|func3'| Heap@@2 x@@0 y@@0 z@@0)) (dummyFunction_2551 (|func3#triggerStateless| x@@0 y@@0 z@@0)))
 :qid |stdinbpl.399:15|
 :skolemid |30|
 :pattern ( (func3_1 Heap@@2 x@@0 y@@0 z@@0))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_3655_3656 (valid__List this))
 :qid |stdinbpl.475:15|
 :skolemid |36|
 :pattern ( (valid__List this))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6760) (l_2@@0 T@Ref) ) (! (dummyFunction_1410 (|sum_fail#triggerStateless| l_2@@0))
 :qid |stdinbpl.203:15|
 :skolemid |23|
 :pattern ( (|sum_fail'| Heap@@3 l_2@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6760) (l_2@@1 T@Ref) ) (! (dummyFunction_3628 (|sum_ok#triggerStateless| l_2@@1))
 :qid |stdinbpl.304:15|
 :skolemid |27|
 :pattern ( (|sum_ok'| Heap@@4 l_2@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6760) (this@@0 T@Ref) ) (! (|valid__List#everUsed_3655| (valid__List this@@0))
 :qid |stdinbpl.494:15|
 :skolemid |40|
 :pattern ( (|valid__List#trigger_3655| Heap@@5 (valid__List this@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6760) (l_2@@2 T@Ref) ) (!  (and (= (sum_fail Heap@@6 l_2@@2) (|sum_fail'| Heap@@6 l_2@@2)) (dummyFunction_1410 (|sum_fail#triggerStateless| l_2@@2)))
 :qid |stdinbpl.199:15|
 :skolemid |22|
 :pattern ( (sum_fail Heap@@6 l_2@@2))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6760) (l_2@@3 T@Ref) ) (!  (and (= (sum_ok Heap@@7 l_2@@3) (|sum_ok'| Heap@@7 l_2@@3)) (dummyFunction_3628 (|sum_ok#triggerStateless| l_2@@3)))
 :qid |stdinbpl.300:15|
 :skolemid |26|
 :pattern ( (sum_ok Heap@@7 l_2@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6760) (ExhaleHeap T@PolymorphicMapType_6760) (Mask@@1 T@PolymorphicMapType_6781) (pm_f T@Field_10559_10560) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_10559_10560 Mask@@1 null pm_f) (IsPredicateField_3655_3656 pm_f)) (= (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@8) null (PredicateMaskField_3655 pm_f)) (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| ExhaleHeap) null (PredicateMaskField_3655 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@1) (IsPredicateField_3655_3656 pm_f) (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| ExhaleHeap) null (PredicateMaskField_3655 pm_f)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6760) (ExhaleHeap@@0 T@PolymorphicMapType_6760) (Mask@@2 T@PolymorphicMapType_6781) (pm_f@@0 T@Field_3575_10560) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_3575_10560 Mask@@2 null pm_f@@0) (IsPredicateField_3575_22735 pm_f@@0)) (= (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@9) null (PredicateMaskField_3575 pm_f@@0)) (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| ExhaleHeap@@0) null (PredicateMaskField_3575 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@2) (IsPredicateField_3575_22735 pm_f@@0) (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| ExhaleHeap@@0) null (PredicateMaskField_3575 pm_f@@0)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6760) (ExhaleHeap@@1 T@PolymorphicMapType_6760) (Mask@@3 T@PolymorphicMapType_6781) (pm_f@@1 T@Field_10559_10560) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_10559_10560 Mask@@3 null pm_f@@1) (IsWandField_10559_26405 pm_f@@1)) (= (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@10) null (WandMaskField_10559 pm_f@@1)) (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| ExhaleHeap@@1) null (WandMaskField_10559 pm_f@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@3) (IsWandField_10559_26405 pm_f@@1) (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| ExhaleHeap@@1) null (WandMaskField_10559 pm_f@@1)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6760) (ExhaleHeap@@2 T@PolymorphicMapType_6760) (Mask@@4 T@PolymorphicMapType_6781) (pm_f@@2 T@Field_3575_10560) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_3575_10560 Mask@@4 null pm_f@@2) (IsWandField_3575_26048 pm_f@@2)) (= (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@11) null (WandMaskField_3575 pm_f@@2)) (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| ExhaleHeap@@2) null (WandMaskField_3575 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@4) (IsWandField_3575_26048 pm_f@@2) (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| ExhaleHeap@@2) null (WandMaskField_3575 pm_f@@2)))
)))
(assert (forall ((this@@1 T@Ref) (this2 T@Ref) ) (!  (=> (= (valid__List this@@1) (valid__List this2)) (= this@@1 this2))
 :qid |stdinbpl.485:15|
 :skolemid |38|
 :pattern ( (valid__List this@@1) (valid__List this2))
)))
(assert (forall ((this@@2 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|valid__List#sm| this@@2) (|valid__List#sm| this2@@0)) (= this@@2 this2@@0))
 :qid |stdinbpl.489:15|
 :skolemid |39|
 :pattern ( (|valid__List#sm| this@@2) (|valid__List#sm| this2@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6760) (ExhaleHeap@@3 T@PolymorphicMapType_6760) (Mask@@5 T@PolymorphicMapType_6781) (pm_f@@3 T@Field_10559_10560) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_10559_10560 Mask@@5 null pm_f@@3) (IsPredicateField_3655_3656 pm_f@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6833_6834) ) (!  (=> (select (|PolymorphicMapType_7309_3575_3576#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@12) null (PredicateMaskField_3655 pm_f@@3))) o2 f_2) (= (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@12) o2 f_2) (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_10147_1189) ) (!  (=> (select (|PolymorphicMapType_7309_3573_1189#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@12) null (PredicateMaskField_3655 pm_f@@3))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@12) o2@@0 f_2@@0) (select (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_6820_53) ) (!  (=> (select (|PolymorphicMapType_7309_3575_53#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@12) null (PredicateMaskField_3655 pm_f@@3))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@12) o2@@1 f_2@@1) (select (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3575_10560) ) (!  (=> (select (|PolymorphicMapType_7309_3575_10560#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@12) null (PredicateMaskField_3655 pm_f@@3))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@12) o2@@2 f_2@@2) (select (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3575_12276) ) (!  (=> (select (|PolymorphicMapType_7309_3575_24192#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@12) null (PredicateMaskField_3655 pm_f@@3))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@12) o2@@3 f_2@@3) (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| ExhaleHeap@@3) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_10559_3576) ) (!  (=> (select (|PolymorphicMapType_7309_10559_3576#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@12) null (PredicateMaskField_3655 pm_f@@3))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@12) o2@@4 f_2@@4) (select (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| ExhaleHeap@@3) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| ExhaleHeap@@3) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_10559_1189) ) (!  (=> (select (|PolymorphicMapType_7309_10559_1189#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@12) null (PredicateMaskField_3655 pm_f@@3))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@12) o2@@5 f_2@@5) (select (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| ExhaleHeap@@3) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| ExhaleHeap@@3) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_10559_53) ) (!  (=> (select (|PolymorphicMapType_7309_10559_53#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@12) null (PredicateMaskField_3655 pm_f@@3))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@12) o2@@6 f_2@@6) (select (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| ExhaleHeap@@3) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| ExhaleHeap@@3) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_10559_10560) ) (!  (=> (select (|PolymorphicMapType_7309_10559_10560#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@12) null (PredicateMaskField_3655 pm_f@@3))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@12) o2@@7 f_2@@7) (select (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| ExhaleHeap@@3) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| ExhaleHeap@@3) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_12271_12276) ) (!  (=> (select (|PolymorphicMapType_7309_10559_25240#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@12) null (PredicateMaskField_3655 pm_f@@3))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@12) o2@@8 f_2@@8) (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| ExhaleHeap@@3) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| ExhaleHeap@@3) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@5) (IsPredicateField_3655_3656 pm_f@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6760) (ExhaleHeap@@4 T@PolymorphicMapType_6760) (Mask@@6 T@PolymorphicMapType_6781) (pm_f@@4 T@Field_3575_10560) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_3575_10560 Mask@@6 null pm_f@@4) (IsPredicateField_3575_22735 pm_f@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_6833_6834) ) (!  (=> (select (|PolymorphicMapType_7309_3575_3576#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@13) null (PredicateMaskField_3575 pm_f@@4))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@13) o2@@9 f_2@@9) (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| ExhaleHeap@@4) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| ExhaleHeap@@4) o2@@9 f_2@@9))
)) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_10147_1189) ) (!  (=> (select (|PolymorphicMapType_7309_3573_1189#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@13) null (PredicateMaskField_3575 pm_f@@4))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@13) o2@@10 f_2@@10) (select (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| ExhaleHeap@@4) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| ExhaleHeap@@4) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_6820_53) ) (!  (=> (select (|PolymorphicMapType_7309_3575_53#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@13) null (PredicateMaskField_3575 pm_f@@4))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@13) o2@@11 f_2@@11) (select (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| ExhaleHeap@@4) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| ExhaleHeap@@4) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_3575_10560) ) (!  (=> (select (|PolymorphicMapType_7309_3575_10560#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@13) null (PredicateMaskField_3575 pm_f@@4))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@13) o2@@12 f_2@@12) (select (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| ExhaleHeap@@4) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| ExhaleHeap@@4) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_3575_12276) ) (!  (=> (select (|PolymorphicMapType_7309_3575_24192#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@13) null (PredicateMaskField_3575 pm_f@@4))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@13) o2@@13 f_2@@13) (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| ExhaleHeap@@4) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| ExhaleHeap@@4) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_10559_3576) ) (!  (=> (select (|PolymorphicMapType_7309_10559_3576#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@13) null (PredicateMaskField_3575 pm_f@@4))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@13) o2@@14 f_2@@14) (select (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| ExhaleHeap@@4) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| ExhaleHeap@@4) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_10559_1189) ) (!  (=> (select (|PolymorphicMapType_7309_10559_1189#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@13) null (PredicateMaskField_3575 pm_f@@4))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@13) o2@@15 f_2@@15) (select (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| ExhaleHeap@@4) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| ExhaleHeap@@4) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_10559_53) ) (!  (=> (select (|PolymorphicMapType_7309_10559_53#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@13) null (PredicateMaskField_3575 pm_f@@4))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@13) o2@@16 f_2@@16) (select (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| ExhaleHeap@@4) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| ExhaleHeap@@4) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_10559_10560) ) (!  (=> (select (|PolymorphicMapType_7309_10559_10560#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@13) null (PredicateMaskField_3575 pm_f@@4))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@13) o2@@17 f_2@@17) (select (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| ExhaleHeap@@4) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| ExhaleHeap@@4) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_12271_12276) ) (!  (=> (select (|PolymorphicMapType_7309_10559_25240#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@13) null (PredicateMaskField_3575 pm_f@@4))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@13) o2@@18 f_2@@18) (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| ExhaleHeap@@4) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| ExhaleHeap@@4) o2@@18 f_2@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@6) (IsPredicateField_3575_22735 pm_f@@4))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6760) (ExhaleHeap@@5 T@PolymorphicMapType_6760) (Mask@@7 T@PolymorphicMapType_6781) (pm_f@@5 T@Field_10559_10560) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_10559_10560 Mask@@7 null pm_f@@5) (IsWandField_10559_26405 pm_f@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_6833_6834) ) (!  (=> (select (|PolymorphicMapType_7309_3575_3576#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@14) null (WandMaskField_10559 pm_f@@5))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@14) o2@@19 f_2@@19) (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| ExhaleHeap@@5) o2@@19 f_2@@19)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| ExhaleHeap@@5) o2@@19 f_2@@19))
)) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_10147_1189) ) (!  (=> (select (|PolymorphicMapType_7309_3573_1189#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@14) null (WandMaskField_10559 pm_f@@5))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@14) o2@@20 f_2@@20) (select (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| ExhaleHeap@@5) o2@@20 f_2@@20)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| ExhaleHeap@@5) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_6820_53) ) (!  (=> (select (|PolymorphicMapType_7309_3575_53#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@14) null (WandMaskField_10559 pm_f@@5))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@14) o2@@21 f_2@@21) (select (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| ExhaleHeap@@5) o2@@21 f_2@@21)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| ExhaleHeap@@5) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_3575_10560) ) (!  (=> (select (|PolymorphicMapType_7309_3575_10560#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@14) null (WandMaskField_10559 pm_f@@5))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@14) o2@@22 f_2@@22) (select (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| ExhaleHeap@@5) o2@@22 f_2@@22)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| ExhaleHeap@@5) o2@@22 f_2@@22))
))) (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_3575_12276) ) (!  (=> (select (|PolymorphicMapType_7309_3575_24192#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@14) null (WandMaskField_10559 pm_f@@5))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@14) o2@@23 f_2@@23) (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| ExhaleHeap@@5) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| ExhaleHeap@@5) o2@@23 f_2@@23))
))) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_10559_3576) ) (!  (=> (select (|PolymorphicMapType_7309_10559_3576#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@14) null (WandMaskField_10559 pm_f@@5))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@14) o2@@24 f_2@@24) (select (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| ExhaleHeap@@5) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| ExhaleHeap@@5) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_10559_1189) ) (!  (=> (select (|PolymorphicMapType_7309_10559_1189#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@14) null (WandMaskField_10559 pm_f@@5))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@14) o2@@25 f_2@@25) (select (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| ExhaleHeap@@5) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| ExhaleHeap@@5) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_10559_53) ) (!  (=> (select (|PolymorphicMapType_7309_10559_53#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@14) null (WandMaskField_10559 pm_f@@5))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@14) o2@@26 f_2@@26) (select (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| ExhaleHeap@@5) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| ExhaleHeap@@5) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_10559_10560) ) (!  (=> (select (|PolymorphicMapType_7309_10559_10560#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@14) null (WandMaskField_10559 pm_f@@5))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@14) o2@@27 f_2@@27) (select (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| ExhaleHeap@@5) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| ExhaleHeap@@5) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_12271_12276) ) (!  (=> (select (|PolymorphicMapType_7309_10559_25240#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@14) null (WandMaskField_10559 pm_f@@5))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@14) o2@@28 f_2@@28) (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| ExhaleHeap@@5) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| ExhaleHeap@@5) o2@@28 f_2@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@7) (IsWandField_10559_26405 pm_f@@5))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6760) (ExhaleHeap@@6 T@PolymorphicMapType_6760) (Mask@@8 T@PolymorphicMapType_6781) (pm_f@@6 T@Field_3575_10560) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_3575_10560 Mask@@8 null pm_f@@6) (IsWandField_3575_26048 pm_f@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_6833_6834) ) (!  (=> (select (|PolymorphicMapType_7309_3575_3576#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@15) null (WandMaskField_3575 pm_f@@6))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@15) o2@@29 f_2@@29) (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| ExhaleHeap@@6) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| ExhaleHeap@@6) o2@@29 f_2@@29))
)) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_10147_1189) ) (!  (=> (select (|PolymorphicMapType_7309_3573_1189#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@15) null (WandMaskField_3575 pm_f@@6))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@15) o2@@30 f_2@@30) (select (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| ExhaleHeap@@6) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| ExhaleHeap@@6) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_6820_53) ) (!  (=> (select (|PolymorphicMapType_7309_3575_53#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@15) null (WandMaskField_3575 pm_f@@6))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@15) o2@@31 f_2@@31) (select (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| ExhaleHeap@@6) o2@@31 f_2@@31)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| ExhaleHeap@@6) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_3575_10560) ) (!  (=> (select (|PolymorphicMapType_7309_3575_10560#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@15) null (WandMaskField_3575 pm_f@@6))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@15) o2@@32 f_2@@32) (select (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| ExhaleHeap@@6) o2@@32 f_2@@32)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| ExhaleHeap@@6) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_3575_12276) ) (!  (=> (select (|PolymorphicMapType_7309_3575_24192#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@15) null (WandMaskField_3575 pm_f@@6))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@15) o2@@33 f_2@@33) (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| ExhaleHeap@@6) o2@@33 f_2@@33)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| ExhaleHeap@@6) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_10559_3576) ) (!  (=> (select (|PolymorphicMapType_7309_10559_3576#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@15) null (WandMaskField_3575 pm_f@@6))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@15) o2@@34 f_2@@34) (select (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| ExhaleHeap@@6) o2@@34 f_2@@34)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| ExhaleHeap@@6) o2@@34 f_2@@34))
))) (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_10559_1189) ) (!  (=> (select (|PolymorphicMapType_7309_10559_1189#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@15) null (WandMaskField_3575 pm_f@@6))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@15) o2@@35 f_2@@35) (select (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| ExhaleHeap@@6) o2@@35 f_2@@35)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| ExhaleHeap@@6) o2@@35 f_2@@35))
))) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_10559_53) ) (!  (=> (select (|PolymorphicMapType_7309_10559_53#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@15) null (WandMaskField_3575 pm_f@@6))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@15) o2@@36 f_2@@36) (select (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| ExhaleHeap@@6) o2@@36 f_2@@36)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| ExhaleHeap@@6) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_10559_10560) ) (!  (=> (select (|PolymorphicMapType_7309_10559_10560#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@15) null (WandMaskField_3575 pm_f@@6))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@15) o2@@37 f_2@@37) (select (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| ExhaleHeap@@6) o2@@37 f_2@@37)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| ExhaleHeap@@6) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_12271_12276) ) (!  (=> (select (|PolymorphicMapType_7309_10559_25240#PolymorphicMapType_7309| (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@15) null (WandMaskField_3575 pm_f@@6))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@15) o2@@38 f_2@@38) (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| ExhaleHeap@@6) o2@@38 f_2@@38)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| ExhaleHeap@@6) o2@@38 f_2@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@6 Mask@@8) (IsWandField_3575_26048 pm_f@@6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6760) (Mask@@9 T@PolymorphicMapType_6781) (x@@1 Int) (y@@1 Int) (z@@1 Bool) ) (!  (=> (state Heap@@16 Mask@@9) (= (|func3'| Heap@@16 x@@1 y@@1 z@@1) (|func3#frame| EmptyFrame x@@1 y@@1 z@@1)))
 :qid |stdinbpl.416:15|
 :skolemid |33|
 :pattern ( (state Heap@@16 Mask@@9) (|func3'| Heap@@16 x@@1 y@@1 z@@1))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6760) (ExhaleHeap@@7 T@PolymorphicMapType_6760) (Mask@@10 T@PolymorphicMapType_6781) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@10) (=> (select (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@17) o_1 $allocated) (select (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@10) (select (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_10559_10560) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10559_10559 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10559_10559 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_3575_10560) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_6820_6820 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6820_6820 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_3573_1189 Int__v)))
(assert  (not (IsWandField_3573_1189 Int__v)))
(assert  (not (IsPredicateField_3575_3576 List__Node__0)))
(assert  (not (IsWandField_3575_3576 List__Node__0)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6760) (ExhaleHeap@@8 T@PolymorphicMapType_6760) (Mask@@11 T@PolymorphicMapType_6781) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@11) (succHeap Heap@@18 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6781) (o_2@@9 T@Ref) (f_4@@9 T@Field_3575_12276) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6781_3575_31030#PolymorphicMapType_6781| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3575_33308 f_4@@9))) (not (IsWandField_3575_33324 f_4@@9))) (<= (select (|PolymorphicMapType_6781_3575_31030#PolymorphicMapType_6781| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6781_3575_31030#PolymorphicMapType_6781| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6781) (o_2@@10 T@Ref) (f_4@@10 T@Field_6820_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6781_3575_53#PolymorphicMapType_6781| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3575_53 f_4@@10))) (not (IsWandField_3575_53 f_4@@10))) (<= (select (|PolymorphicMapType_6781_3575_53#PolymorphicMapType_6781| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6781_3575_53#PolymorphicMapType_6781| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6781) (o_2@@11 T@Ref) (f_4@@11 T@Field_10147_1189) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6781_3573_1189#PolymorphicMapType_6781| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3573_1189 f_4@@11))) (not (IsWandField_3573_1189 f_4@@11))) (<= (select (|PolymorphicMapType_6781_3573_1189#PolymorphicMapType_6781| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6781_3573_1189#PolymorphicMapType_6781| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6781) (o_2@@12 T@Ref) (f_4@@12 T@Field_6833_6834) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6781_3575_3576#PolymorphicMapType_6781| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3575_3576 f_4@@12))) (not (IsWandField_3575_3576 f_4@@12))) (<= (select (|PolymorphicMapType_6781_3575_3576#PolymorphicMapType_6781| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6781_3575_3576#PolymorphicMapType_6781| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6781) (o_2@@13 T@Ref) (f_4@@13 T@Field_3575_10560) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_6781_3575_3656#PolymorphicMapType_6781| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3575_22735 f_4@@13))) (not (IsWandField_3575_26048 f_4@@13))) (<= (select (|PolymorphicMapType_6781_3575_3656#PolymorphicMapType_6781| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_6781_3575_3656#PolymorphicMapType_6781| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6781) (o_2@@14 T@Ref) (f_4@@14 T@Field_12271_12276) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_6781_3655_30631#PolymorphicMapType_6781| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3655_32505 f_4@@14))) (not (IsWandField_3655_32521 f_4@@14))) (<= (select (|PolymorphicMapType_6781_3655_30631#PolymorphicMapType_6781| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_6781_3655_30631#PolymorphicMapType_6781| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6781) (o_2@@15 T@Ref) (f_4@@15 T@Field_10559_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_6781_3655_53#PolymorphicMapType_6781| Mask@@18) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3655_53 f_4@@15))) (not (IsWandField_3655_53 f_4@@15))) (<= (select (|PolymorphicMapType_6781_3655_53#PolymorphicMapType_6781| Mask@@18) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_6781_3655_53#PolymorphicMapType_6781| Mask@@18) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6781) (o_2@@16 T@Ref) (f_4@@16 T@Field_10559_1189) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_6781_3655_1189#PolymorphicMapType_6781| Mask@@19) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3655_1189 f_4@@16))) (not (IsWandField_3655_1189 f_4@@16))) (<= (select (|PolymorphicMapType_6781_3655_1189#PolymorphicMapType_6781| Mask@@19) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_6781_3655_1189#PolymorphicMapType_6781| Mask@@19) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_6781) (o_2@@17 T@Ref) (f_4@@17 T@Field_10559_3576) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_6781_3655_3576#PolymorphicMapType_6781| Mask@@20) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_3655_3576 f_4@@17))) (not (IsWandField_3655_3576 f_4@@17))) (<= (select (|PolymorphicMapType_6781_3655_3576#PolymorphicMapType_6781| Mask@@20) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_6781_3655_3576#PolymorphicMapType_6781| Mask@@20) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_6781) (o_2@@18 T@Ref) (f_4@@18 T@Field_10559_10560) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| Mask@@21) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_3655_3656 f_4@@18))) (not (IsWandField_10559_26405 f_4@@18))) (<= (select (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| Mask@@21) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| Mask@@21) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6760) (Mask@@22 T@PolymorphicMapType_6781) (x@@2 Int) (y@@2 Int) (z@@2 Bool) ) (!  (=> (and (state Heap@@19 Mask@@22) (or (< AssumeFunctionsAbove 0) (|func3#trigger| EmptyFrame x@@2 y@@2 z@@2))) (= (|func3'| Heap@@19 x@@2 y@@2 z@@2) (not (= x@@2 y@@2))))
 :qid |stdinbpl.422:15|
 :skolemid |34|
 :pattern ( (state Heap@@19 Mask@@22) (|func3'| Heap@@19 x@@2 y@@2 z@@2))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_6781) (o_2@@19 T@Ref) (f_4@@19 T@Field_12271_12276) ) (! (= (HasDirectPerm_10559_22490 Mask@@23 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_6781_3655_30631#PolymorphicMapType_6781| Mask@@23) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10559_22490 Mask@@23 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_6781) (o_2@@20 T@Ref) (f_4@@20 T@Field_10559_10560) ) (! (= (HasDirectPerm_10559_10560 Mask@@24 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| Mask@@24) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10559_10560 Mask@@24 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_6781) (o_2@@21 T@Ref) (f_4@@21 T@Field_10559_53) ) (! (= (HasDirectPerm_10559_53 Mask@@25 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_6781_3655_53#PolymorphicMapType_6781| Mask@@25) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10559_53 Mask@@25 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_6781) (o_2@@22 T@Ref) (f_4@@22 T@Field_10559_1189) ) (! (= (HasDirectPerm_10559_1189 Mask@@26 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_6781_3655_1189#PolymorphicMapType_6781| Mask@@26) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10559_1189 Mask@@26 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_6781) (o_2@@23 T@Ref) (f_4@@23 T@Field_10559_3576) ) (! (= (HasDirectPerm_10559_3576 Mask@@27 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_6781_3655_3576#PolymorphicMapType_6781| Mask@@27) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10559_3576 Mask@@27 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_6781) (o_2@@24 T@Ref) (f_4@@24 T@Field_3575_12276) ) (! (= (HasDirectPerm_3575_21329 Mask@@28 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_6781_3575_31030#PolymorphicMapType_6781| Mask@@28) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3575_21329 Mask@@28 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_6781) (o_2@@25 T@Ref) (f_4@@25 T@Field_3575_10560) ) (! (= (HasDirectPerm_3575_10560 Mask@@29 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_6781_3575_3656#PolymorphicMapType_6781| Mask@@29) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3575_10560 Mask@@29 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_6781) (o_2@@26 T@Ref) (f_4@@26 T@Field_6820_53) ) (! (= (HasDirectPerm_3575_53 Mask@@30 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_6781_3575_53#PolymorphicMapType_6781| Mask@@30) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3575_53 Mask@@30 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_6781) (o_2@@27 T@Ref) (f_4@@27 T@Field_10147_1189) ) (! (= (HasDirectPerm_3573_1189 Mask@@31 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_6781_3573_1189#PolymorphicMapType_6781| Mask@@31) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3573_1189 Mask@@31 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_6781) (o_2@@28 T@Ref) (f_4@@28 T@Field_6833_6834) ) (! (= (HasDirectPerm_3575_3576 Mask@@32 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_6781_3575_3576#PolymorphicMapType_6781| Mask@@32) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3575_3576 Mask@@32 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6760) (ExhaleHeap@@9 T@PolymorphicMapType_6760) (Mask@@33 T@PolymorphicMapType_6781) (o_1@@0 T@Ref) (f_2@@39 T@Field_12271_12276) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@33) (=> (HasDirectPerm_10559_22490 Mask@@33 o_1@@0 f_2@@39) (= (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@20) o_1@@0 f_2@@39) (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| ExhaleHeap@@9) o_1@@0 f_2@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@33) (select (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| ExhaleHeap@@9) o_1@@0 f_2@@39))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6760) (ExhaleHeap@@10 T@PolymorphicMapType_6760) (Mask@@34 T@PolymorphicMapType_6781) (o_1@@1 T@Ref) (f_2@@40 T@Field_10559_10560) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@10 Mask@@34) (=> (HasDirectPerm_10559_10560 Mask@@34 o_1@@1 f_2@@40) (= (select (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@21) o_1@@1 f_2@@40) (select (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| ExhaleHeap@@10) o_1@@1 f_2@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@10 Mask@@34) (select (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| ExhaleHeap@@10) o_1@@1 f_2@@40))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6760) (ExhaleHeap@@11 T@PolymorphicMapType_6760) (Mask@@35 T@PolymorphicMapType_6781) (o_1@@2 T@Ref) (f_2@@41 T@Field_10559_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@11 Mask@@35) (=> (HasDirectPerm_10559_53 Mask@@35 o_1@@2 f_2@@41) (= (select (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@22) o_1@@2 f_2@@41) (select (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| ExhaleHeap@@11) o_1@@2 f_2@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@11 Mask@@35) (select (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| ExhaleHeap@@11) o_1@@2 f_2@@41))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6760) (ExhaleHeap@@12 T@PolymorphicMapType_6760) (Mask@@36 T@PolymorphicMapType_6781) (o_1@@3 T@Ref) (f_2@@42 T@Field_10559_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@12 Mask@@36) (=> (HasDirectPerm_10559_1189 Mask@@36 o_1@@3 f_2@@42) (= (select (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@23) o_1@@3 f_2@@42) (select (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| ExhaleHeap@@12) o_1@@3 f_2@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@12 Mask@@36) (select (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| ExhaleHeap@@12) o_1@@3 f_2@@42))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6760) (ExhaleHeap@@13 T@PolymorphicMapType_6760) (Mask@@37 T@PolymorphicMapType_6781) (o_1@@4 T@Ref) (f_2@@43 T@Field_10559_3576) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@13 Mask@@37) (=> (HasDirectPerm_10559_3576 Mask@@37 o_1@@4 f_2@@43) (= (select (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@24) o_1@@4 f_2@@43) (select (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| ExhaleHeap@@13) o_1@@4 f_2@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@13 Mask@@37) (select (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| ExhaleHeap@@13) o_1@@4 f_2@@43))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6760) (ExhaleHeap@@14 T@PolymorphicMapType_6760) (Mask@@38 T@PolymorphicMapType_6781) (o_1@@5 T@Ref) (f_2@@44 T@Field_3575_12276) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@14 Mask@@38) (=> (HasDirectPerm_3575_21329 Mask@@38 o_1@@5 f_2@@44) (= (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@25) o_1@@5 f_2@@44) (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| ExhaleHeap@@14) o_1@@5 f_2@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@14 Mask@@38) (select (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| ExhaleHeap@@14) o_1@@5 f_2@@44))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6760) (ExhaleHeap@@15 T@PolymorphicMapType_6760) (Mask@@39 T@PolymorphicMapType_6781) (o_1@@6 T@Ref) (f_2@@45 T@Field_3575_10560) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@15 Mask@@39) (=> (HasDirectPerm_3575_10560 Mask@@39 o_1@@6 f_2@@45) (= (select (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@26) o_1@@6 f_2@@45) (select (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| ExhaleHeap@@15) o_1@@6 f_2@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@15 Mask@@39) (select (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| ExhaleHeap@@15) o_1@@6 f_2@@45))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6760) (ExhaleHeap@@16 T@PolymorphicMapType_6760) (Mask@@40 T@PolymorphicMapType_6781) (o_1@@7 T@Ref) (f_2@@46 T@Field_6820_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@16 Mask@@40) (=> (HasDirectPerm_3575_53 Mask@@40 o_1@@7 f_2@@46) (= (select (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@27) o_1@@7 f_2@@46) (select (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| ExhaleHeap@@16) o_1@@7 f_2@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@16 Mask@@40) (select (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| ExhaleHeap@@16) o_1@@7 f_2@@46))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6760) (ExhaleHeap@@17 T@PolymorphicMapType_6760) (Mask@@41 T@PolymorphicMapType_6781) (o_1@@8 T@Ref) (f_2@@47 T@Field_10147_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@17 Mask@@41) (=> (HasDirectPerm_3573_1189 Mask@@41 o_1@@8 f_2@@47) (= (select (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@28) o_1@@8 f_2@@47) (select (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| ExhaleHeap@@17) o_1@@8 f_2@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@17 Mask@@41) (select (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| ExhaleHeap@@17) o_1@@8 f_2@@47))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6760) (ExhaleHeap@@18 T@PolymorphicMapType_6760) (Mask@@42 T@PolymorphicMapType_6781) (o_1@@9 T@Ref) (f_2@@48 T@Field_6833_6834) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@18 Mask@@42) (=> (HasDirectPerm_3575_3576 Mask@@42 o_1@@9 f_2@@48) (= (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@29) o_1@@9 f_2@@48) (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| ExhaleHeap@@18) o_1@@9 f_2@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@18 Mask@@42) (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| ExhaleHeap@@18) o_1@@9 f_2@@48))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6760) (Mask@@43 T@PolymorphicMapType_6781) (x@@3 Int) (y@@3 Int) (z@@3 Bool) ) (!  (=> (and (state Heap@@30 Mask@@43) (< AssumeFunctionsAbove 0)) (= (func3_1 Heap@@30 x@@3 y@@3 z@@3)  (and (= x@@3 y@@3) (or (= y@@3 x@@3) (= x@@3 x@@3)))))
 :qid |stdinbpl.409:15|
 :skolemid |32|
 :pattern ( (state Heap@@30 Mask@@43) (func3_1 Heap@@30 x@@3 y@@3 z@@3))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_3575_12276) ) (! (= (select (|PolymorphicMapType_6781_3575_31030#PolymorphicMapType_6781| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6781_3575_31030#PolymorphicMapType_6781| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_6820_53) ) (! (= (select (|PolymorphicMapType_6781_3575_53#PolymorphicMapType_6781| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6781_3575_53#PolymorphicMapType_6781| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_10147_1189) ) (! (= (select (|PolymorphicMapType_6781_3573_1189#PolymorphicMapType_6781| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6781_3573_1189#PolymorphicMapType_6781| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_6833_6834) ) (! (= (select (|PolymorphicMapType_6781_3575_3576#PolymorphicMapType_6781| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6781_3575_3576#PolymorphicMapType_6781| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_3575_10560) ) (! (= (select (|PolymorphicMapType_6781_3575_3656#PolymorphicMapType_6781| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6781_3575_3656#PolymorphicMapType_6781| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_12271_12276) ) (! (= (select (|PolymorphicMapType_6781_3655_30631#PolymorphicMapType_6781| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6781_3655_30631#PolymorphicMapType_6781| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_10559_53) ) (! (= (select (|PolymorphicMapType_6781_3655_53#PolymorphicMapType_6781| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6781_3655_53#PolymorphicMapType_6781| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_10559_1189) ) (! (= (select (|PolymorphicMapType_6781_3655_1189#PolymorphicMapType_6781| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6781_3655_1189#PolymorphicMapType_6781| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_10559_3576) ) (! (= (select (|PolymorphicMapType_6781_3655_3576#PolymorphicMapType_6781| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6781_3655_3576#PolymorphicMapType_6781| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_10559_10560) ) (! (= (select (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6781) (SummandMask1 T@PolymorphicMapType_6781) (SummandMask2 T@PolymorphicMapType_6781) (o_2@@39 T@Ref) (f_4@@39 T@Field_3575_12276) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6781_3575_31030#PolymorphicMapType_6781| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_6781_3575_31030#PolymorphicMapType_6781| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_6781_3575_31030#PolymorphicMapType_6781| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6781_3575_31030#PolymorphicMapType_6781| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6781_3575_31030#PolymorphicMapType_6781| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6781_3575_31030#PolymorphicMapType_6781| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6781) (SummandMask1@@0 T@PolymorphicMapType_6781) (SummandMask2@@0 T@PolymorphicMapType_6781) (o_2@@40 T@Ref) (f_4@@40 T@Field_6820_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6781_3575_53#PolymorphicMapType_6781| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_6781_3575_53#PolymorphicMapType_6781| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_6781_3575_53#PolymorphicMapType_6781| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6781_3575_53#PolymorphicMapType_6781| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6781_3575_53#PolymorphicMapType_6781| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6781_3575_53#PolymorphicMapType_6781| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6781) (SummandMask1@@1 T@PolymorphicMapType_6781) (SummandMask2@@1 T@PolymorphicMapType_6781) (o_2@@41 T@Ref) (f_4@@41 T@Field_10147_1189) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6781_3573_1189#PolymorphicMapType_6781| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_6781_3573_1189#PolymorphicMapType_6781| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_6781_3573_1189#PolymorphicMapType_6781| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6781_3573_1189#PolymorphicMapType_6781| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6781_3573_1189#PolymorphicMapType_6781| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6781_3573_1189#PolymorphicMapType_6781| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6781) (SummandMask1@@2 T@PolymorphicMapType_6781) (SummandMask2@@2 T@PolymorphicMapType_6781) (o_2@@42 T@Ref) (f_4@@42 T@Field_6833_6834) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6781_3575_3576#PolymorphicMapType_6781| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_6781_3575_3576#PolymorphicMapType_6781| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_6781_3575_3576#PolymorphicMapType_6781| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6781_3575_3576#PolymorphicMapType_6781| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6781_3575_3576#PolymorphicMapType_6781| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6781_3575_3576#PolymorphicMapType_6781| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6781) (SummandMask1@@3 T@PolymorphicMapType_6781) (SummandMask2@@3 T@PolymorphicMapType_6781) (o_2@@43 T@Ref) (f_4@@43 T@Field_3575_10560) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6781_3575_3656#PolymorphicMapType_6781| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_6781_3575_3656#PolymorphicMapType_6781| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_6781_3575_3656#PolymorphicMapType_6781| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6781_3575_3656#PolymorphicMapType_6781| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6781_3575_3656#PolymorphicMapType_6781| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6781_3575_3656#PolymorphicMapType_6781| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_6781) (SummandMask1@@4 T@PolymorphicMapType_6781) (SummandMask2@@4 T@PolymorphicMapType_6781) (o_2@@44 T@Ref) (f_4@@44 T@Field_12271_12276) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_6781_3655_30631#PolymorphicMapType_6781| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_6781_3655_30631#PolymorphicMapType_6781| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_6781_3655_30631#PolymorphicMapType_6781| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6781_3655_30631#PolymorphicMapType_6781| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6781_3655_30631#PolymorphicMapType_6781| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6781_3655_30631#PolymorphicMapType_6781| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_6781) (SummandMask1@@5 T@PolymorphicMapType_6781) (SummandMask2@@5 T@PolymorphicMapType_6781) (o_2@@45 T@Ref) (f_4@@45 T@Field_10559_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_6781_3655_53#PolymorphicMapType_6781| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_6781_3655_53#PolymorphicMapType_6781| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_6781_3655_53#PolymorphicMapType_6781| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6781_3655_53#PolymorphicMapType_6781| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6781_3655_53#PolymorphicMapType_6781| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6781_3655_53#PolymorphicMapType_6781| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_6781) (SummandMask1@@6 T@PolymorphicMapType_6781) (SummandMask2@@6 T@PolymorphicMapType_6781) (o_2@@46 T@Ref) (f_4@@46 T@Field_10559_1189) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_6781_3655_1189#PolymorphicMapType_6781| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_6781_3655_1189#PolymorphicMapType_6781| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_6781_3655_1189#PolymorphicMapType_6781| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6781_3655_1189#PolymorphicMapType_6781| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6781_3655_1189#PolymorphicMapType_6781| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6781_3655_1189#PolymorphicMapType_6781| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_6781) (SummandMask1@@7 T@PolymorphicMapType_6781) (SummandMask2@@7 T@PolymorphicMapType_6781) (o_2@@47 T@Ref) (f_4@@47 T@Field_10559_3576) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_6781_3655_3576#PolymorphicMapType_6781| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_6781_3655_3576#PolymorphicMapType_6781| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_6781_3655_3576#PolymorphicMapType_6781| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6781_3655_3576#PolymorphicMapType_6781| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6781_3655_3576#PolymorphicMapType_6781| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6781_3655_3576#PolymorphicMapType_6781| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_6781) (SummandMask1@@8 T@PolymorphicMapType_6781) (SummandMask2@@8 T@PolymorphicMapType_6781) (o_2@@48 T@Ref) (f_4@@48 T@Field_10559_10560) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6760) (Mask@@44 T@PolymorphicMapType_6781) (l_2@@4 T@Ref) ) (!  (=> (state Heap@@31 Mask@@44) (= (|sum_fail'| Heap@@31 l_2@@4) (|sum_fail#frame| (select (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@31) null (valid__List l_2@@4)) l_2@@4)))
 :qid |stdinbpl.216:15|
 :skolemid |25|
 :pattern ( (state Heap@@31 Mask@@44) (|sum_fail'| Heap@@31 l_2@@4))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6760) (Mask@@45 T@PolymorphicMapType_6781) (l_2@@5 T@Ref) ) (!  (=> (state Heap@@32 Mask@@45) (= (|sum_ok'| Heap@@32 l_2@@5) (|sum_ok#frame| (select (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@32) null (valid__List l_2@@5)) l_2@@5)))
 :qid |stdinbpl.317:15|
 :skolemid |29|
 :pattern ( (state Heap@@32 Mask@@45) (|sum_ok'| Heap@@32 l_2@@5))
)))
(assert (forall ((this@@3 T@Ref) ) (! (= (getPredWandId_3655_3656 (valid__List this@@3)) 0)
 :qid |stdinbpl.479:15|
 :skolemid |37|
 :pattern ( (valid__List this@@3))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6760) (o T@Ref) (f_3 T@Field_12271_12276) (v T@PolymorphicMapType_7309) ) (! (succHeap Heap@@33 (PolymorphicMapType_6760 (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@33) (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@33) (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@33) (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@33) (store (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@33) o f_3 v) (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@33) (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@33) (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@33) (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@33) (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6760 (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@33) (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@33) (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@33) (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@33) (store (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@33) o f_3 v) (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@33) (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@33) (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@33) (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@33) (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6760) (o@@0 T@Ref) (f_3@@0 T@Field_10559_10560) (v@@0 T@FrameType) ) (! (succHeap Heap@@34 (PolymorphicMapType_6760 (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@34) (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@34) (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@34) (store (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@34) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@34) (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@34) (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@34) (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@34) (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@34) (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6760 (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@34) (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@34) (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@34) (store (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@34) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@34) (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@34) (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@34) (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@34) (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@34) (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_6760) (o@@1 T@Ref) (f_3@@1 T@Field_10559_1189) (v@@1 Int) ) (! (succHeap Heap@@35 (PolymorphicMapType_6760 (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@35) (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@35) (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@35) (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@35) (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@35) (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@35) (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@35) (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@35) (store (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@35) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6760 (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@35) (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@35) (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@35) (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@35) (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@35) (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@35) (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@35) (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@35) (store (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@35) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_6760) (o@@2 T@Ref) (f_3@@2 T@Field_10559_3576) (v@@2 T@Ref) ) (! (succHeap Heap@@36 (PolymorphicMapType_6760 (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@36) (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@36) (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@36) (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@36) (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@36) (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@36) (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@36) (store (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@36) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@36) (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6760 (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@36) (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@36) (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@36) (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@36) (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@36) (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@36) (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@36) (store (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@36) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@36) (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_6760) (o@@3 T@Ref) (f_3@@3 T@Field_10559_53) (v@@3 Bool) ) (! (succHeap Heap@@37 (PolymorphicMapType_6760 (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@37) (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@37) (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@37) (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@37) (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@37) (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@37) (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@37) (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@37) (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@37) (store (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@37) o@@3 f_3@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6760 (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@37) (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@37) (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@37) (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@37) (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@37) (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@37) (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@37) (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@37) (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@37) (store (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@37) o@@3 f_3@@3 v@@3)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_6760) (o@@4 T@Ref) (f_3@@4 T@Field_3575_12276) (v@@4 T@PolymorphicMapType_7309) ) (! (succHeap Heap@@38 (PolymorphicMapType_6760 (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@38) (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@38) (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@38) (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@38) (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@38) (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@38) (store (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@38) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@38) (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@38) (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6760 (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@38) (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@38) (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@38) (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@38) (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@38) (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@38) (store (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@38) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@38) (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@38) (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_6760) (o@@5 T@Ref) (f_3@@5 T@Field_3575_10560) (v@@5 T@FrameType) ) (! (succHeap Heap@@39 (PolymorphicMapType_6760 (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@39) (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@39) (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@39) (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@39) (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@39) (store (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@39) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@39) (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@39) (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@39) (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6760 (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@39) (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@39) (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@39) (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@39) (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@39) (store (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@39) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@39) (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@39) (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@39) (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_6760) (o@@6 T@Ref) (f_3@@6 T@Field_10147_1189) (v@@6 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_6760 (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@40) (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@40) (store (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@40) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@40) (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@40) (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@40) (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@40) (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@40) (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@40) (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6760 (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@40) (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@40) (store (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@40) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@40) (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@40) (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@40) (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@40) (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@40) (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@40) (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_6760) (o@@7 T@Ref) (f_3@@7 T@Field_6833_6834) (v@@7 T@Ref) ) (! (succHeap Heap@@41 (PolymorphicMapType_6760 (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@41) (store (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@41) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@41) (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@41) (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@41) (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@41) (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@41) (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@41) (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@41) (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6760 (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@41) (store (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@41) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@41) (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@41) (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@41) (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@41) (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@41) (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@41) (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@41) (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_6760) (o@@8 T@Ref) (f_3@@8 T@Field_6820_53) (v@@8 Bool) ) (! (succHeap Heap@@42 (PolymorphicMapType_6760 (store (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@42) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@42) (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@42) (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@42) (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@42) (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@42) (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@42) (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@42) (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@42) (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6760 (store (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@42) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@42) (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@42) (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@42) (|PolymorphicMapType_6760_3659_12363#PolymorphicMapType_6760| Heap@@42) (|PolymorphicMapType_6760_3575_10560#PolymorphicMapType_6760| Heap@@42) (|PolymorphicMapType_6760_3575_21371#PolymorphicMapType_6760| Heap@@42) (|PolymorphicMapType_6760_10559_3576#PolymorphicMapType_6760| Heap@@42) (|PolymorphicMapType_6760_10559_1189#PolymorphicMapType_6760| Heap@@42) (|PolymorphicMapType_6760_10559_53#PolymorphicMapType_6760| Heap@@42)))
)))
(assert (forall ((this@@4 T@Ref) ) (! (= (PredicateMaskField_3655 (valid__List this@@4)) (|valid__List#sm| this@@4))
 :qid |stdinbpl.471:15|
 :skolemid |35|
 :pattern ( (PredicateMaskField_3655 (valid__List this@@4)))
)))
(assert (forall ((o@@9 T@Ref) (f T@Field_6833_6834) (Heap@@43 T@PolymorphicMapType_6760) ) (!  (=> (select (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@43) o@@9 $allocated) (select (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@43) (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@43) o@@9 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@43) o@@9 f))
)))
(assert (forall ((p@@2 T@Field_10559_10560) (v_1@@1 T@FrameType) (q T@Field_10559_10560) (w@@1 T@FrameType) (r T@Field_10559_10560) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10559_10559 p@@2 v_1@@1 q w@@1) (InsidePredicate_10559_10559 q w@@1 r u)) (InsidePredicate_10559_10559 p@@2 v_1@@1 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10559_10559 p@@2 v_1@@1 q w@@1) (InsidePredicate_10559_10559 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_10559_10560) (v_1@@2 T@FrameType) (q@@0 T@Field_10559_10560) (w@@2 T@FrameType) (r@@0 T@Field_3575_10560) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_10559_10559 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_10559_6820 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_10559_6820 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10559_10559 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_10559_6820 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_10559_10560) (v_1@@3 T@FrameType) (q@@1 T@Field_3575_10560) (w@@3 T@FrameType) (r@@1 T@Field_10559_10560) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_10559_6820 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6820_10559 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_10559_10559 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10559_6820 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6820_10559 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_10559_10560) (v_1@@4 T@FrameType) (q@@2 T@Field_3575_10560) (w@@4 T@FrameType) (r@@2 T@Field_3575_10560) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_10559_6820 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6820_6820 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_10559_6820 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10559_6820 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6820_6820 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_3575_10560) (v_1@@5 T@FrameType) (q@@3 T@Field_10559_10560) (w@@5 T@FrameType) (r@@3 T@Field_10559_10560) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_6820_10559 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_10559_10559 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_6820_10559 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6820_10559 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_10559_10559 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_3575_10560) (v_1@@6 T@FrameType) (q@@4 T@Field_10559_10560) (w@@6 T@FrameType) (r@@4 T@Field_3575_10560) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_6820_10559 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_10559_6820 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_6820_6820 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6820_10559 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_10559_6820 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_3575_10560) (v_1@@7 T@FrameType) (q@@5 T@Field_3575_10560) (w@@7 T@FrameType) (r@@5 T@Field_10559_10560) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_6820_6820 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6820_10559 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_6820_10559 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6820_6820 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6820_10559 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_3575_10560) (v_1@@8 T@FrameType) (q@@6 T@Field_3575_10560) (w@@8 T@FrameType) (r@@6 T@Field_3575_10560) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_6820_6820 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6820_6820 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_6820_6820 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6820_6820 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6820_6820 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@44 T@PolymorphicMapType_6760) (Mask@@46 T@PolymorphicMapType_6781) (l_2@@6 T@Ref) ) (!  (=> (and (state Heap@@44 Mask@@46) (< AssumeFunctionsAbove 1)) (= (sum_fail Heap@@44 l_2@@6) (select (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@44) (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@44) l_2@@6 List__Node__0) Int__v)))
 :qid |stdinbpl.209:15|
 :skolemid |24|
 :pattern ( (state Heap@@44 Mask@@46) (sum_fail Heap@@44 l_2@@6))
 :pattern ( (state Heap@@44 Mask@@46) (|sum_fail#triggerStateless| l_2@@6) (|valid__List#trigger_3655| Heap@@44 (valid__List l_2@@6)))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@45 () T@PolymorphicMapType_6760)
(declare-fun l_2@@7 () T@Ref)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_6781)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_3576 (T@Ref) T@FrameType)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun wildcard@1 () Real)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_6781)
(declare-fun wildcard@2 () Real)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_6781)
(declare-fun wildcard@3 () Real)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_6781)
(declare-fun c@0 () T@Ref)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id test)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (=> (and (state Heap@@45 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_6760_3445_53#PolymorphicMapType_6760| Heap@@45) l_2@@7 $allocated)) (and (> wildcard@0 NoPerm) (= Mask@0 (PolymorphicMapType_6781 (store (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| ZeroMask) null (valid__List l_2@@7) (+ (select (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| ZeroMask) null (valid__List l_2@@7)) wildcard@0)) (|PolymorphicMapType_6781_3575_3576#PolymorphicMapType_6781| ZeroMask) (|PolymorphicMapType_6781_3573_1189#PolymorphicMapType_6781| ZeroMask) (|PolymorphicMapType_6781_3655_3576#PolymorphicMapType_6781| ZeroMask) (|PolymorphicMapType_6781_3655_1189#PolymorphicMapType_6781| ZeroMask) (|PolymorphicMapType_6781_3655_53#PolymorphicMapType_6781| ZeroMask) (|PolymorphicMapType_6781_3655_30631#PolymorphicMapType_6781| ZeroMask) (|PolymorphicMapType_6781_3575_3656#PolymorphicMapType_6781| ZeroMask) (|PolymorphicMapType_6781_3575_53#PolymorphicMapType_6781| ZeroMask) (|PolymorphicMapType_6781_3575_31030#PolymorphicMapType_6781| ZeroMask))))) (and (and (state Heap@@45 Mask@0) (state Heap@@45 Mask@0)) (and (|valid__List#trigger_3655| Heap@@45 (valid__List l_2@@7)) (= (select (|PolymorphicMapType_6760_3655_3656#PolymorphicMapType_6760| Heap@@45) null (valid__List l_2@@7)) (CombineFrames (FrameFragment_3576 (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@45) l_2@@7 List__Node__0)) (FrameFragment_1189 (select (|PolymorphicMapType_6760_3573_1189#PolymorphicMapType_6760| Heap@@45) (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@45) l_2@@7 List__Node__0) Int__v))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (> (select (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| Mask@0) null (valid__List l_2@@7)) NoPerm)) (=> (> (select (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| Mask@0) null (valid__List l_2@@7)) NoPerm) (=> (and (and (> wildcard@1 NoPerm) (< wildcard@1 (select (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| Mask@0) null (valid__List l_2@@7)))) (and (= UnfoldingMask@0 (PolymorphicMapType_6781 (store (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| Mask@0) null (valid__List l_2@@7) (- (select (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| Mask@0) null (valid__List l_2@@7)) wildcard@1)) (|PolymorphicMapType_6781_3575_3576#PolymorphicMapType_6781| Mask@0) (|PolymorphicMapType_6781_3573_1189#PolymorphicMapType_6781| Mask@0) (|PolymorphicMapType_6781_3655_3576#PolymorphicMapType_6781| Mask@0) (|PolymorphicMapType_6781_3655_1189#PolymorphicMapType_6781| Mask@0) (|PolymorphicMapType_6781_3655_53#PolymorphicMapType_6781| Mask@0) (|PolymorphicMapType_6781_3655_30631#PolymorphicMapType_6781| Mask@0) (|PolymorphicMapType_6781_3575_3656#PolymorphicMapType_6781| Mask@0) (|PolymorphicMapType_6781_3575_53#PolymorphicMapType_6781| Mask@0) (|PolymorphicMapType_6781_3575_31030#PolymorphicMapType_6781| Mask@0))) (> wildcard@2 NoPerm))) (=> (and (and (and (not (= l_2@@7 null)) (= UnfoldingMask@1 (PolymorphicMapType_6781 (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| UnfoldingMask@0) (store (|PolymorphicMapType_6781_3575_3576#PolymorphicMapType_6781| UnfoldingMask@0) l_2@@7 List__Node__0 (+ (select (|PolymorphicMapType_6781_3575_3576#PolymorphicMapType_6781| UnfoldingMask@0) l_2@@7 List__Node__0) wildcard@2)) (|PolymorphicMapType_6781_3573_1189#PolymorphicMapType_6781| UnfoldingMask@0) (|PolymorphicMapType_6781_3655_3576#PolymorphicMapType_6781| UnfoldingMask@0) (|PolymorphicMapType_6781_3655_1189#PolymorphicMapType_6781| UnfoldingMask@0) (|PolymorphicMapType_6781_3655_53#PolymorphicMapType_6781| UnfoldingMask@0) (|PolymorphicMapType_6781_3655_30631#PolymorphicMapType_6781| UnfoldingMask@0) (|PolymorphicMapType_6781_3575_3656#PolymorphicMapType_6781| UnfoldingMask@0) (|PolymorphicMapType_6781_3575_53#PolymorphicMapType_6781| UnfoldingMask@0) (|PolymorphicMapType_6781_3575_31030#PolymorphicMapType_6781| UnfoldingMask@0)))) (and (state Heap@@45 UnfoldingMask@1) (> wildcard@3 NoPerm))) (and (and (not (= (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@45) l_2@@7 List__Node__0) null)) (= UnfoldingMask@2 (PolymorphicMapType_6781 (|PolymorphicMapType_6781_3655_3656#PolymorphicMapType_6781| UnfoldingMask@1) (|PolymorphicMapType_6781_3575_3576#PolymorphicMapType_6781| UnfoldingMask@1) (store (|PolymorphicMapType_6781_3573_1189#PolymorphicMapType_6781| UnfoldingMask@1) (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@45) l_2@@7 List__Node__0) Int__v (+ (select (|PolymorphicMapType_6781_3573_1189#PolymorphicMapType_6781| UnfoldingMask@1) (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@45) l_2@@7 List__Node__0) Int__v) wildcard@3)) (|PolymorphicMapType_6781_3655_3576#PolymorphicMapType_6781| UnfoldingMask@1) (|PolymorphicMapType_6781_3655_1189#PolymorphicMapType_6781| UnfoldingMask@1) (|PolymorphicMapType_6781_3655_53#PolymorphicMapType_6781| UnfoldingMask@1) (|PolymorphicMapType_6781_3655_30631#PolymorphicMapType_6781| UnfoldingMask@1) (|PolymorphicMapType_6781_3575_3656#PolymorphicMapType_6781| UnfoldingMask@1) (|PolymorphicMapType_6781_3575_53#PolymorphicMapType_6781| UnfoldingMask@1) (|PolymorphicMapType_6781_3575_31030#PolymorphicMapType_6781| UnfoldingMask@1)))) (and (state Heap@@45 UnfoldingMask@2) (state Heap@@45 UnfoldingMask@2)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_3575_3576 UnfoldingMask@2 l_2@@7 List__Node__0)) (=> (HasDirectPerm_3575_3576 UnfoldingMask@2 l_2@@7 List__Node__0) (=> (and (= c@0 (select (|PolymorphicMapType_6760_3448_3449#PolymorphicMapType_6760| Heap@@45) l_2@@7 List__Node__0)) (= (ControlFlow 0 2) (- 0 1))) (HasDirectPerm_3573_1189 UnfoldingMask@2 c@0 Int__v))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 5) 2)) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid