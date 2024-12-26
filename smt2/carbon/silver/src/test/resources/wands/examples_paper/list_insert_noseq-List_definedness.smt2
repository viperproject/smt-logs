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
(declare-sort T@Field_18604_53 0)
(declare-sort T@Field_18617_18618 0)
(declare-sort T@Field_22459_1397 0)
(declare-sort T@Field_22847_22848 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_24969_24974 0)
(declare-sort T@Field_21946_21951 0)
(declare-sort T@Field_9736_9772 0)
(declare-sort T@Field_9736_21951 0)
(declare-sort T@Field_9771_1397 0)
(declare-sort T@Field_9771_9739 0)
(declare-sort T@Field_9771_53 0)
(declare-sort T@Field_21933_1198 0)
(declare-sort T@Field_21933_9739 0)
(declare-sort T@Field_21962_21963 0)
(declare-sort T@Field_21933_53 0)
(declare-datatypes ((T@PolymorphicMapType_18565 0)) (((PolymorphicMapType_18565 (|PolymorphicMapType_18565_9771_9772#PolymorphicMapType_18565| (Array T@Ref T@Field_22847_22848 Real)) (|PolymorphicMapType_18565_9736_1397#PolymorphicMapType_18565| (Array T@Ref T@Field_22459_1397 Real)) (|PolymorphicMapType_18565_9738_9739#PolymorphicMapType_18565| (Array T@Ref T@Field_18617_18618 Real)) (|PolymorphicMapType_18565_9708_1198#PolymorphicMapType_18565| (Array T@Ref T@Field_21933_1198 Real)) (|PolymorphicMapType_18565_9771_1397#PolymorphicMapType_18565| (Array T@Ref T@Field_9771_1397 Real)) (|PolymorphicMapType_18565_9771_9739#PolymorphicMapType_18565| (Array T@Ref T@Field_9771_9739 Real)) (|PolymorphicMapType_18565_9771_53#PolymorphicMapType_18565| (Array T@Ref T@Field_9771_53 Real)) (|PolymorphicMapType_18565_9771_77832#PolymorphicMapType_18565| (Array T@Ref T@Field_24969_24974 Real)) (|PolymorphicMapType_18565_9736_9772#PolymorphicMapType_18565| (Array T@Ref T@Field_9736_9772 Real)) (|PolymorphicMapType_18565_9736_53#PolymorphicMapType_18565| (Array T@Ref T@Field_18604_53 Real)) (|PolymorphicMapType_18565_9736_78231#PolymorphicMapType_18565| (Array T@Ref T@Field_9736_21951 Real)) (|PolymorphicMapType_18565_9708_9772#PolymorphicMapType_18565| (Array T@Ref T@Field_21962_21963 Real)) (|PolymorphicMapType_18565_9708_9739#PolymorphicMapType_18565| (Array T@Ref T@Field_21933_9739 Real)) (|PolymorphicMapType_18565_9708_53#PolymorphicMapType_18565| (Array T@Ref T@Field_21933_53 Real)) (|PolymorphicMapType_18565_9708_78645#PolymorphicMapType_18565| (Array T@Ref T@Field_21946_21951 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19093 0)) (((PolymorphicMapType_19093 (|PolymorphicMapType_19093_9736_1397#PolymorphicMapType_19093| (Array T@Ref T@Field_22459_1397 Bool)) (|PolymorphicMapType_19093_9738_9739#PolymorphicMapType_19093| (Array T@Ref T@Field_18617_18618 Bool)) (|PolymorphicMapType_19093_9736_53#PolymorphicMapType_19093| (Array T@Ref T@Field_18604_53 Bool)) (|PolymorphicMapType_19093_9736_67723#PolymorphicMapType_19093| (Array T@Ref T@Field_9736_21951 Bool)) (|PolymorphicMapType_19093_9736_21963#PolymorphicMapType_19093| (Array T@Ref T@Field_9736_9772 Bool)) (|PolymorphicMapType_19093_21933_1397#PolymorphicMapType_19093| (Array T@Ref T@Field_21933_1198 Bool)) (|PolymorphicMapType_19093_21933_9739#PolymorphicMapType_19093| (Array T@Ref T@Field_21933_9739 Bool)) (|PolymorphicMapType_19093_21933_53#PolymorphicMapType_19093| (Array T@Ref T@Field_21933_53 Bool)) (|PolymorphicMapType_19093_21933_68771#PolymorphicMapType_19093| (Array T@Ref T@Field_21946_21951 Bool)) (|PolymorphicMapType_19093_21933_21963#PolymorphicMapType_19093| (Array T@Ref T@Field_21962_21963 Bool)) (|PolymorphicMapType_19093_22847_1397#PolymorphicMapType_19093| (Array T@Ref T@Field_9771_1397 Bool)) (|PolymorphicMapType_19093_22847_9739#PolymorphicMapType_19093| (Array T@Ref T@Field_9771_9739 Bool)) (|PolymorphicMapType_19093_22847_53#PolymorphicMapType_19093| (Array T@Ref T@Field_9771_53 Bool)) (|PolymorphicMapType_19093_22847_69819#PolymorphicMapType_19093| (Array T@Ref T@Field_24969_24974 Bool)) (|PolymorphicMapType_19093_22847_21963#PolymorphicMapType_19093| (Array T@Ref T@Field_22847_22848 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_18544 0)) (((PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| (Array T@Ref T@Field_18604_53 Bool)) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| (Array T@Ref T@Field_18617_18618 T@Ref)) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| (Array T@Ref T@Field_22459_1397 Int)) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| (Array T@Ref T@Field_22847_22848 T@FrameType)) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| (Array T@Ref T@Field_24969_24974 T@PolymorphicMapType_19093)) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| (Array T@Ref T@Field_21946_21951 T@PolymorphicMapType_19093)) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| (Array T@Ref T@Field_9736_9772 T@FrameType)) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| (Array T@Ref T@Field_9736_21951 T@PolymorphicMapType_19093)) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| (Array T@Ref T@Field_9771_1397 Int)) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| (Array T@Ref T@Field_9771_9739 T@Ref)) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| (Array T@Ref T@Field_9771_53 Bool)) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| (Array T@Ref T@Field_21933_1198 Int)) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| (Array T@Ref T@Field_21933_9739 T@Ref)) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| (Array T@Ref T@Field_21962_21963 T@FrameType)) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| (Array T@Ref T@Field_21933_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_18604_53)
(declare-fun val () T@Field_22459_1397)
(declare-fun next () T@Field_18617_18618)
(declare-fun succHeap (T@PolymorphicMapType_18544 T@PolymorphicMapType_18544) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_18544 T@PolymorphicMapType_18544) Bool)
(declare-fun state (T@PolymorphicMapType_18544 T@PolymorphicMapType_18565) Bool)
(declare-fun head_3 (T@PolymorphicMapType_18544 T@Ref) Int)
(declare-fun |head#triggerStateless| (T@Ref) Int)
(declare-fun |List#trigger_9771| (T@PolymorphicMapType_18544 T@Field_22847_22848) Bool)
(declare-fun List (T@Ref) T@Field_22847_22848)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_18565) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_19093)
(declare-fun wand (T@Ref T@Ref) T@Field_21933_1198)
(declare-fun IsWandField_9708_1198 (T@Field_21933_1198) Bool)
(declare-fun |wand#ft| (T@Ref T@Ref) T@Field_21962_21963)
(declare-fun IsWandField_9717_9718 (T@Field_21962_21963) Bool)
(declare-fun IsPredicateField_9708_1198 (T@Field_21933_1198) Bool)
(declare-fun IsPredicateField_9717_9718 (T@Field_21962_21963) Bool)
(declare-fun IsPredicateField_9771_9772 (T@Field_22847_22848) Bool)
(declare-fun |head'| (T@PolymorphicMapType_18544 T@Ref) Int)
(declare-fun dummyFunction_1615 (Int) Bool)
(declare-fun |List#everUsed_9771| (T@Field_22847_22848) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_18544 T@PolymorphicMapType_18544 T@PolymorphicMapType_18565) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_21933 (T@Field_21962_21963) T@Field_21946_21951)
(declare-fun HasDirectPerm_21933_9772 (T@PolymorphicMapType_18565 T@Ref T@Field_21962_21963) Bool)
(declare-fun PredicateMaskField_9771 (T@Field_22847_22848) T@Field_24969_24974)
(declare-fun HasDirectPerm_9771_9772 (T@PolymorphicMapType_18565 T@Ref T@Field_22847_22848) Bool)
(declare-fun IsPredicateField_9736_66120 (T@Field_9736_9772) Bool)
(declare-fun PredicateMaskField_9736 (T@Field_9736_9772) T@Field_9736_21951)
(declare-fun HasDirectPerm_9736_9772 (T@PolymorphicMapType_18565 T@Ref T@Field_9736_9772) Bool)
(declare-fun WandMaskField_9717 (T@Field_21962_21963) T@Field_21946_21951)
(declare-fun IsWandField_9771_71469 (T@Field_22847_22848) Bool)
(declare-fun WandMaskField_9771 (T@Field_22847_22848) T@Field_24969_24974)
(declare-fun IsWandField_9736_71112 (T@Field_9736_9772) Bool)
(declare-fun WandMaskField_9736 (T@Field_9736_9772) T@Field_9736_21951)
(declare-fun |List#sm| (T@Ref) T@Field_24969_24974)
(declare-fun dummyHeap () T@PolymorphicMapType_18544)
(declare-fun ZeroMask () T@PolymorphicMapType_18565)
(declare-fun InsidePredicate_21933_21933 (T@Field_21962_21963 T@FrameType T@Field_21962_21963 T@FrameType) Bool)
(declare-fun InsidePredicate_18604_18604 (T@Field_9736_9772 T@FrameType T@Field_9736_9772 T@FrameType) Bool)
(declare-fun InsidePredicate_9771_9771 (T@Field_22847_22848 T@FrameType T@Field_22847_22848 T@FrameType) Bool)
(declare-fun IsPredicateField_9736_1397 (T@Field_22459_1397) Bool)
(declare-fun IsWandField_9736_1397 (T@Field_22459_1397) Bool)
(declare-fun IsPredicateField_9738_9739 (T@Field_18617_18618) Bool)
(declare-fun IsWandField_9738_9739 (T@Field_18617_18618) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9708_82072 (T@Field_21946_21951) Bool)
(declare-fun IsWandField_9708_82088 (T@Field_21946_21951) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9708_53 (T@Field_21933_53) Bool)
(declare-fun IsWandField_9708_53 (T@Field_21933_53) Bool)
(declare-fun IsPredicateField_9708_9739 (T@Field_21933_9739) Bool)
(declare-fun IsWandField_9708_9739 (T@Field_21933_9739) Bool)
(declare-fun IsPredicateField_9736_81255 (T@Field_9736_21951) Bool)
(declare-fun IsWandField_9736_81271 (T@Field_9736_21951) Bool)
(declare-fun IsPredicateField_9736_53 (T@Field_18604_53) Bool)
(declare-fun IsWandField_9736_53 (T@Field_18604_53) Bool)
(declare-fun IsPredicateField_9771_80452 (T@Field_24969_24974) Bool)
(declare-fun IsWandField_9771_80468 (T@Field_24969_24974) Bool)
(declare-fun IsPredicateField_9771_53 (T@Field_9771_53) Bool)
(declare-fun IsWandField_9771_53 (T@Field_9771_53) Bool)
(declare-fun IsPredicateField_9771_9739 (T@Field_9771_9739) Bool)
(declare-fun IsWandField_9771_9739 (T@Field_9771_9739) Bool)
(declare-fun IsPredicateField_9771_1397 (T@Field_9771_1397) Bool)
(declare-fun IsWandField_9771_1397 (T@Field_9771_1397) Bool)
(declare-fun HasDirectPerm_21933_65875 (T@PolymorphicMapType_18565 T@Ref T@Field_21946_21951) Bool)
(declare-fun HasDirectPerm_21933_53 (T@PolymorphicMapType_18565 T@Ref T@Field_21933_53) Bool)
(declare-fun HasDirectPerm_21933_9739 (T@PolymorphicMapType_18565 T@Ref T@Field_21933_9739) Bool)
(declare-fun HasDirectPerm_21933_1397 (T@PolymorphicMapType_18565 T@Ref T@Field_21933_1198) Bool)
(declare-fun HasDirectPerm_9771_64741 (T@PolymorphicMapType_18565 T@Ref T@Field_24969_24974) Bool)
(declare-fun HasDirectPerm_9771_53 (T@PolymorphicMapType_18565 T@Ref T@Field_9771_53) Bool)
(declare-fun HasDirectPerm_9771_9739 (T@PolymorphicMapType_18565 T@Ref T@Field_9771_9739) Bool)
(declare-fun HasDirectPerm_9771_1397 (T@PolymorphicMapType_18565 T@Ref T@Field_9771_1397) Bool)
(declare-fun HasDirectPerm_9736_63600 (T@PolymorphicMapType_18565 T@Ref T@Field_9736_21951) Bool)
(declare-fun HasDirectPerm_9736_53 (T@PolymorphicMapType_18565 T@Ref T@Field_18604_53) Bool)
(declare-fun HasDirectPerm_9738_9739 (T@PolymorphicMapType_18565 T@Ref T@Field_18617_18618) Bool)
(declare-fun HasDirectPerm_9736_1397 (T@PolymorphicMapType_18565 T@Ref T@Field_22459_1397) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_18565 T@PolymorphicMapType_18565 T@PolymorphicMapType_18565) Bool)
(declare-fun getPredWandId_9708_1198 (T@Field_21933_1198) Int)
(declare-fun |head#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_9771_9772 (T@Field_22847_22848) Int)
(declare-fun |wand#sm| (T@Ref T@Ref) T@Field_21946_21951)
(declare-fun InsidePredicate_21933_18604 (T@Field_21962_21963 T@FrameType T@Field_9736_9772 T@FrameType) Bool)
(declare-fun InsidePredicate_21933_9771 (T@Field_21962_21963 T@FrameType T@Field_22847_22848 T@FrameType) Bool)
(declare-fun InsidePredicate_18604_21933 (T@Field_9736_9772 T@FrameType T@Field_21962_21963 T@FrameType) Bool)
(declare-fun InsidePredicate_18604_9771 (T@Field_9736_9772 T@FrameType T@Field_22847_22848 T@FrameType) Bool)
(declare-fun InsidePredicate_9771_21933 (T@Field_22847_22848 T@FrameType T@Field_21962_21963 T@FrameType) Bool)
(declare-fun InsidePredicate_9771_18604 (T@Field_22847_22848 T@FrameType T@Field_9736_9772 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_18544) (Heap1 T@PolymorphicMapType_18544) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_18544) (Mask T@PolymorphicMapType_18565) (xs T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 0)) (= (head_3 Heap xs) (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap) xs val)))
 :qid |stdinbpl.244:15|
 :skolemid |31|
 :pattern ( (state Heap Mask) (head_3 Heap xs))
 :pattern ( (state Heap Mask) (|head#triggerStateless| xs) (|List#trigger_9771| Heap (List xs)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_18544) (Mask@@0 T@PolymorphicMapType_18565) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_18544) (Heap1@@0 T@PolymorphicMapType_18544) (Heap2 T@PolymorphicMapType_18544) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_22847_22848) ) (!  (not (select (|PolymorphicMapType_19093_22847_21963#PolymorphicMapType_19093| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19093_22847_21963#PolymorphicMapType_19093| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_24969_24974) ) (!  (not (select (|PolymorphicMapType_19093_22847_69819#PolymorphicMapType_19093| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19093_22847_69819#PolymorphicMapType_19093| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9771_53) ) (!  (not (select (|PolymorphicMapType_19093_22847_53#PolymorphicMapType_19093| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19093_22847_53#PolymorphicMapType_19093| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9771_9739) ) (!  (not (select (|PolymorphicMapType_19093_22847_9739#PolymorphicMapType_19093| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19093_22847_9739#PolymorphicMapType_19093| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_9771_1397) ) (!  (not (select (|PolymorphicMapType_19093_22847_1397#PolymorphicMapType_19093| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19093_22847_1397#PolymorphicMapType_19093| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_21962_21963) ) (!  (not (select (|PolymorphicMapType_19093_21933_21963#PolymorphicMapType_19093| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19093_21933_21963#PolymorphicMapType_19093| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_21946_21951) ) (!  (not (select (|PolymorphicMapType_19093_21933_68771#PolymorphicMapType_19093| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19093_21933_68771#PolymorphicMapType_19093| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_21933_53) ) (!  (not (select (|PolymorphicMapType_19093_21933_53#PolymorphicMapType_19093| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19093_21933_53#PolymorphicMapType_19093| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_21933_9739) ) (!  (not (select (|PolymorphicMapType_19093_21933_9739#PolymorphicMapType_19093| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19093_21933_9739#PolymorphicMapType_19093| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_21933_1198) ) (!  (not (select (|PolymorphicMapType_19093_21933_1397#PolymorphicMapType_19093| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19093_21933_1397#PolymorphicMapType_19093| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_9736_9772) ) (!  (not (select (|PolymorphicMapType_19093_9736_21963#PolymorphicMapType_19093| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19093_9736_21963#PolymorphicMapType_19093| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_9736_21951) ) (!  (not (select (|PolymorphicMapType_19093_9736_67723#PolymorphicMapType_19093| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19093_9736_67723#PolymorphicMapType_19093| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_18604_53) ) (!  (not (select (|PolymorphicMapType_19093_9736_53#PolymorphicMapType_19093| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19093_9736_53#PolymorphicMapType_19093| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_18617_18618) ) (!  (not (select (|PolymorphicMapType_19093_9738_9739#PolymorphicMapType_19093| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19093_9738_9739#PolymorphicMapType_19093| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_22459_1397) ) (!  (not (select (|PolymorphicMapType_19093_9736_1397#PolymorphicMapType_19093| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19093_9736_1397#PolymorphicMapType_19093| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((arg1 T@Ref) (arg2 T@Ref) ) (! (IsWandField_9708_1198 (wand arg1 arg2))
 :qid |stdinbpl.187:15|
 :skolemid |22|
 :pattern ( (wand arg1 arg2))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 T@Ref) ) (! (IsWandField_9717_9718 (|wand#ft| arg1@@0 arg2@@0))
 :qid |stdinbpl.191:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@0 arg2@@0))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 T@Ref) ) (!  (not (IsPredicateField_9708_1198 (wand arg1@@1 arg2@@1)))
 :qid |stdinbpl.195:15|
 :skolemid |24|
 :pattern ( (wand arg1@@1 arg2@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 T@Ref) ) (!  (not (IsPredicateField_9717_9718 (|wand#ft| arg1@@2 arg2@@2)))
 :qid |stdinbpl.199:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@2 arg2@@2))
)))
(assert (forall ((xs@@0 T@Ref) ) (! (IsPredicateField_9771_9772 (List xs@@0))
 :qid |stdinbpl.346:15|
 :skolemid |35|
 :pattern ( (List xs@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_18544) (xs@@1 T@Ref) ) (! (dummyFunction_1615 (|head#triggerStateless| xs@@1))
 :qid |stdinbpl.238:15|
 :skolemid |30|
 :pattern ( (|head'| Heap@@1 xs@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_18544) (xs@@2 T@Ref) ) (! (|List#everUsed_9771| (List xs@@2))
 :qid |stdinbpl.365:15|
 :skolemid |39|
 :pattern ( (|List#trigger_9771| Heap@@2 (List xs@@2)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_18544) (xs@@3 T@Ref) ) (!  (and (= (head_3 Heap@@3 xs@@3) (|head'| Heap@@3 xs@@3)) (dummyFunction_1615 (|head#triggerStateless| xs@@3)))
 :qid |stdinbpl.234:15|
 :skolemid |29|
 :pattern ( (head_3 Heap@@3 xs@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_18544) (ExhaleHeap T@PolymorphicMapType_18544) (Mask@@1 T@PolymorphicMapType_18565) (pm_f_18 T@Field_21962_21963) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_21933_9772 Mask@@1 null pm_f_18) (IsPredicateField_9717_9718 pm_f_18)) (= (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@4) null (PredicateMaskField_21933 pm_f_18)) (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| ExhaleHeap) null (PredicateMaskField_21933 pm_f_18)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (IsPredicateField_9717_9718 pm_f_18) (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| ExhaleHeap) null (PredicateMaskField_21933 pm_f_18)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_18544) (ExhaleHeap@@0 T@PolymorphicMapType_18544) (Mask@@2 T@PolymorphicMapType_18565) (pm_f_18@@0 T@Field_22847_22848) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_9771_9772 Mask@@2 null pm_f_18@@0) (IsPredicateField_9771_9772 pm_f_18@@0)) (= (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@5) null (PredicateMaskField_9771 pm_f_18@@0)) (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| ExhaleHeap@@0) null (PredicateMaskField_9771 pm_f_18@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (IsPredicateField_9771_9772 pm_f_18@@0) (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| ExhaleHeap@@0) null (PredicateMaskField_9771 pm_f_18@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_18544) (ExhaleHeap@@1 T@PolymorphicMapType_18544) (Mask@@3 T@PolymorphicMapType_18565) (pm_f_18@@1 T@Field_9736_9772) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_9736_9772 Mask@@3 null pm_f_18@@1) (IsPredicateField_9736_66120 pm_f_18@@1)) (= (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@6) null (PredicateMaskField_9736 pm_f_18@@1)) (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| ExhaleHeap@@1) null (PredicateMaskField_9736 pm_f_18@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (IsPredicateField_9736_66120 pm_f_18@@1) (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| ExhaleHeap@@1) null (PredicateMaskField_9736 pm_f_18@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_18544) (ExhaleHeap@@2 T@PolymorphicMapType_18544) (Mask@@4 T@PolymorphicMapType_18565) (pm_f_18@@2 T@Field_21962_21963) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_21933_9772 Mask@@4 null pm_f_18@@2) (IsWandField_9717_9718 pm_f_18@@2)) (= (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@7) null (WandMaskField_9717 pm_f_18@@2)) (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| ExhaleHeap@@2) null (WandMaskField_9717 pm_f_18@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (IsWandField_9717_9718 pm_f_18@@2) (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| ExhaleHeap@@2) null (WandMaskField_9717 pm_f_18@@2)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_18544) (ExhaleHeap@@3 T@PolymorphicMapType_18544) (Mask@@5 T@PolymorphicMapType_18565) (pm_f_18@@3 T@Field_22847_22848) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_9771_9772 Mask@@5 null pm_f_18@@3) (IsWandField_9771_71469 pm_f_18@@3)) (= (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@8) null (WandMaskField_9771 pm_f_18@@3)) (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| ExhaleHeap@@3) null (WandMaskField_9771 pm_f_18@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (IsWandField_9771_71469 pm_f_18@@3) (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| ExhaleHeap@@3) null (WandMaskField_9771 pm_f_18@@3)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_18544) (ExhaleHeap@@4 T@PolymorphicMapType_18544) (Mask@@6 T@PolymorphicMapType_18565) (pm_f_18@@4 T@Field_9736_9772) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_9736_9772 Mask@@6 null pm_f_18@@4) (IsWandField_9736_71112 pm_f_18@@4)) (= (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@9) null (WandMaskField_9736 pm_f_18@@4)) (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| ExhaleHeap@@4) null (WandMaskField_9736 pm_f_18@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (IsWandField_9736_71112 pm_f_18@@4) (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| ExhaleHeap@@4) null (WandMaskField_9736 pm_f_18@@4)))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 T@Ref) (arg1_2 T@Ref) (arg2_2 T@Ref) ) (!  (=> (= (wand arg1@@3 arg2@@3) (wand arg1_2 arg2_2)) (and (= arg1@@3 arg1_2) (= arg2@@3 arg2_2)))
 :qid |stdinbpl.211:15|
 :skolemid |28|
 :pattern ( (wand arg1@@3 arg2@@3) (wand arg1_2 arg2_2))
)))
(assert (forall ((xs@@4 T@Ref) (xs2 T@Ref) ) (!  (=> (= (List xs@@4) (List xs2)) (= xs@@4 xs2))
 :qid |stdinbpl.356:15|
 :skolemid |37|
 :pattern ( (List xs@@4) (List xs2))
)))
(assert (forall ((xs@@5 T@Ref) (xs2@@0 T@Ref) ) (!  (=> (= (|List#sm| xs@@5) (|List#sm| xs2@@0)) (= xs@@5 xs2@@0))
 :qid |stdinbpl.360:15|
 :skolemid |38|
 :pattern ( (|List#sm| xs@@5) (|List#sm| xs2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_18544) (ExhaleHeap@@5 T@PolymorphicMapType_18544) (Mask@@7 T@PolymorphicMapType_18565) (o_42 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (=> (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@10) o_42 $allocated) (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| ExhaleHeap@@5) o_42 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| ExhaleHeap@@5) o_42 $allocated))
)))
(assert (forall ((p T@Field_21962_21963) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_21933_21933 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_21933_21933 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_9736_9772) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_18604_18604 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18604_18604 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_22847_22848) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_9771_9771 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9771_9771 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_9736_1397 val)))
(assert  (not (IsWandField_9736_1397 val)))
(assert  (not (IsPredicateField_9738_9739 next)))
(assert  (not (IsWandField_9738_9739 next)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_18544) (ExhaleHeap@@6 T@PolymorphicMapType_18544) (Mask@@8 T@PolymorphicMapType_18565) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (succHeap Heap@@11 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_18565) (o_2@@14 T@Ref) (f_4@@14 T@Field_21946_21951) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_18565_9708_78645#PolymorphicMapType_18565| Mask@@9) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_9708_82072 f_4@@14))) (not (IsWandField_9708_82088 f_4@@14))) (<= (select (|PolymorphicMapType_18565_9708_78645#PolymorphicMapType_18565| Mask@@9) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_18565_9708_78645#PolymorphicMapType_18565| Mask@@9) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_18565) (o_2@@15 T@Ref) (f_4@@15 T@Field_21933_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_18565_9708_53#PolymorphicMapType_18565| Mask@@10) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_9708_53 f_4@@15))) (not (IsWandField_9708_53 f_4@@15))) (<= (select (|PolymorphicMapType_18565_9708_53#PolymorphicMapType_18565| Mask@@10) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_18565_9708_53#PolymorphicMapType_18565| Mask@@10) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_18565) (o_2@@16 T@Ref) (f_4@@16 T@Field_21933_9739) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_18565_9708_9739#PolymorphicMapType_18565| Mask@@11) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_9708_9739 f_4@@16))) (not (IsWandField_9708_9739 f_4@@16))) (<= (select (|PolymorphicMapType_18565_9708_9739#PolymorphicMapType_18565| Mask@@11) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_18565_9708_9739#PolymorphicMapType_18565| Mask@@11) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_18565) (o_2@@17 T@Ref) (f_4@@17 T@Field_21933_1198) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_18565_9708_1198#PolymorphicMapType_18565| Mask@@12) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_9708_1198 f_4@@17))) (not (IsWandField_9708_1198 f_4@@17))) (<= (select (|PolymorphicMapType_18565_9708_1198#PolymorphicMapType_18565| Mask@@12) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_18565_9708_1198#PolymorphicMapType_18565| Mask@@12) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_18565) (o_2@@18 T@Ref) (f_4@@18 T@Field_21962_21963) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_18565_9708_9772#PolymorphicMapType_18565| Mask@@13) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_9717_9718 f_4@@18))) (not (IsWandField_9717_9718 f_4@@18))) (<= (select (|PolymorphicMapType_18565_9708_9772#PolymorphicMapType_18565| Mask@@13) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_18565_9708_9772#PolymorphicMapType_18565| Mask@@13) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_18565) (o_2@@19 T@Ref) (f_4@@19 T@Field_9736_21951) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_18565_9736_78231#PolymorphicMapType_18565| Mask@@14) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_9736_81255 f_4@@19))) (not (IsWandField_9736_81271 f_4@@19))) (<= (select (|PolymorphicMapType_18565_9736_78231#PolymorphicMapType_18565| Mask@@14) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_18565_9736_78231#PolymorphicMapType_18565| Mask@@14) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_18565) (o_2@@20 T@Ref) (f_4@@20 T@Field_18604_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_18565_9736_53#PolymorphicMapType_18565| Mask@@15) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_9736_53 f_4@@20))) (not (IsWandField_9736_53 f_4@@20))) (<= (select (|PolymorphicMapType_18565_9736_53#PolymorphicMapType_18565| Mask@@15) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_18565_9736_53#PolymorphicMapType_18565| Mask@@15) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_18565) (o_2@@21 T@Ref) (f_4@@21 T@Field_18617_18618) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_18565_9738_9739#PolymorphicMapType_18565| Mask@@16) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_9738_9739 f_4@@21))) (not (IsWandField_9738_9739 f_4@@21))) (<= (select (|PolymorphicMapType_18565_9738_9739#PolymorphicMapType_18565| Mask@@16) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_18565_9738_9739#PolymorphicMapType_18565| Mask@@16) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_18565) (o_2@@22 T@Ref) (f_4@@22 T@Field_22459_1397) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_18565_9736_1397#PolymorphicMapType_18565| Mask@@17) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_9736_1397 f_4@@22))) (not (IsWandField_9736_1397 f_4@@22))) (<= (select (|PolymorphicMapType_18565_9736_1397#PolymorphicMapType_18565| Mask@@17) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_18565_9736_1397#PolymorphicMapType_18565| Mask@@17) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_18565) (o_2@@23 T@Ref) (f_4@@23 T@Field_9736_9772) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_18565_9736_9772#PolymorphicMapType_18565| Mask@@18) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_9736_66120 f_4@@23))) (not (IsWandField_9736_71112 f_4@@23))) (<= (select (|PolymorphicMapType_18565_9736_9772#PolymorphicMapType_18565| Mask@@18) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_18565_9736_9772#PolymorphicMapType_18565| Mask@@18) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_18565) (o_2@@24 T@Ref) (f_4@@24 T@Field_24969_24974) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_18565_9771_77832#PolymorphicMapType_18565| Mask@@19) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_9771_80452 f_4@@24))) (not (IsWandField_9771_80468 f_4@@24))) (<= (select (|PolymorphicMapType_18565_9771_77832#PolymorphicMapType_18565| Mask@@19) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_18565_9771_77832#PolymorphicMapType_18565| Mask@@19) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_18565) (o_2@@25 T@Ref) (f_4@@25 T@Field_9771_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_18565_9771_53#PolymorphicMapType_18565| Mask@@20) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_9771_53 f_4@@25))) (not (IsWandField_9771_53 f_4@@25))) (<= (select (|PolymorphicMapType_18565_9771_53#PolymorphicMapType_18565| Mask@@20) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_18565_9771_53#PolymorphicMapType_18565| Mask@@20) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_18565) (o_2@@26 T@Ref) (f_4@@26 T@Field_9771_9739) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_18565_9771_9739#PolymorphicMapType_18565| Mask@@21) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_9771_9739 f_4@@26))) (not (IsWandField_9771_9739 f_4@@26))) (<= (select (|PolymorphicMapType_18565_9771_9739#PolymorphicMapType_18565| Mask@@21) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_18565_9771_9739#PolymorphicMapType_18565| Mask@@21) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_18565) (o_2@@27 T@Ref) (f_4@@27 T@Field_9771_1397) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_18565_9771_1397#PolymorphicMapType_18565| Mask@@22) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_9771_1397 f_4@@27))) (not (IsWandField_9771_1397 f_4@@27))) (<= (select (|PolymorphicMapType_18565_9771_1397#PolymorphicMapType_18565| Mask@@22) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_18565_9771_1397#PolymorphicMapType_18565| Mask@@22) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_18565) (o_2@@28 T@Ref) (f_4@@28 T@Field_22847_22848) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_18565_9771_9772#PolymorphicMapType_18565| Mask@@23) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_9771_9772 f_4@@28))) (not (IsWandField_9771_71469 f_4@@28))) (<= (select (|PolymorphicMapType_18565_9771_9772#PolymorphicMapType_18565| Mask@@23) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_18565_9771_9772#PolymorphicMapType_18565| Mask@@23) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_18565) (o_2@@29 T@Ref) (f_4@@29 T@Field_21946_21951) ) (! (= (HasDirectPerm_21933_65875 Mask@@24 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_18565_9708_78645#PolymorphicMapType_18565| Mask@@24) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21933_65875 Mask@@24 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_18565) (o_2@@30 T@Ref) (f_4@@30 T@Field_21933_53) ) (! (= (HasDirectPerm_21933_53 Mask@@25 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_18565_9708_53#PolymorphicMapType_18565| Mask@@25) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21933_53 Mask@@25 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_18565) (o_2@@31 T@Ref) (f_4@@31 T@Field_21962_21963) ) (! (= (HasDirectPerm_21933_9772 Mask@@26 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_18565_9708_9772#PolymorphicMapType_18565| Mask@@26) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21933_9772 Mask@@26 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_18565) (o_2@@32 T@Ref) (f_4@@32 T@Field_21933_9739) ) (! (= (HasDirectPerm_21933_9739 Mask@@27 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_18565_9708_9739#PolymorphicMapType_18565| Mask@@27) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21933_9739 Mask@@27 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_18565) (o_2@@33 T@Ref) (f_4@@33 T@Field_21933_1198) ) (! (= (HasDirectPerm_21933_1397 Mask@@28 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_18565_9708_1198#PolymorphicMapType_18565| Mask@@28) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21933_1397 Mask@@28 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_18565) (o_2@@34 T@Ref) (f_4@@34 T@Field_24969_24974) ) (! (= (HasDirectPerm_9771_64741 Mask@@29 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_18565_9771_77832#PolymorphicMapType_18565| Mask@@29) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9771_64741 Mask@@29 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_18565) (o_2@@35 T@Ref) (f_4@@35 T@Field_9771_53) ) (! (= (HasDirectPerm_9771_53 Mask@@30 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_18565_9771_53#PolymorphicMapType_18565| Mask@@30) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9771_53 Mask@@30 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_18565) (o_2@@36 T@Ref) (f_4@@36 T@Field_22847_22848) ) (! (= (HasDirectPerm_9771_9772 Mask@@31 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_18565_9771_9772#PolymorphicMapType_18565| Mask@@31) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9771_9772 Mask@@31 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_18565) (o_2@@37 T@Ref) (f_4@@37 T@Field_9771_9739) ) (! (= (HasDirectPerm_9771_9739 Mask@@32 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_18565_9771_9739#PolymorphicMapType_18565| Mask@@32) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9771_9739 Mask@@32 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_18565) (o_2@@38 T@Ref) (f_4@@38 T@Field_9771_1397) ) (! (= (HasDirectPerm_9771_1397 Mask@@33 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_18565_9771_1397#PolymorphicMapType_18565| Mask@@33) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9771_1397 Mask@@33 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_18565) (o_2@@39 T@Ref) (f_4@@39 T@Field_9736_21951) ) (! (= (HasDirectPerm_9736_63600 Mask@@34 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_18565_9736_78231#PolymorphicMapType_18565| Mask@@34) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9736_63600 Mask@@34 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_18565) (o_2@@40 T@Ref) (f_4@@40 T@Field_18604_53) ) (! (= (HasDirectPerm_9736_53 Mask@@35 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_18565_9736_53#PolymorphicMapType_18565| Mask@@35) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9736_53 Mask@@35 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_18565) (o_2@@41 T@Ref) (f_4@@41 T@Field_9736_9772) ) (! (= (HasDirectPerm_9736_9772 Mask@@36 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_18565_9736_9772#PolymorphicMapType_18565| Mask@@36) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9736_9772 Mask@@36 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_18565) (o_2@@42 T@Ref) (f_4@@42 T@Field_18617_18618) ) (! (= (HasDirectPerm_9738_9739 Mask@@37 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_18565_9738_9739#PolymorphicMapType_18565| Mask@@37) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9738_9739 Mask@@37 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_18565) (o_2@@43 T@Ref) (f_4@@43 T@Field_22459_1397) ) (! (= (HasDirectPerm_9736_1397 Mask@@38 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_18565_9736_1397#PolymorphicMapType_18565| Mask@@38) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9736_1397 Mask@@38 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_18544) (ExhaleHeap@@7 T@PolymorphicMapType_18544) (Mask@@39 T@PolymorphicMapType_18565) (o_42@@0 T@Ref) (f_48 T@Field_21946_21951) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@39) (=> (HasDirectPerm_21933_65875 Mask@@39 o_42@@0 f_48) (= (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@12) o_42@@0 f_48) (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| ExhaleHeap@@7) o_42@@0 f_48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@39) (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| ExhaleHeap@@7) o_42@@0 f_48))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_18544) (ExhaleHeap@@8 T@PolymorphicMapType_18544) (Mask@@40 T@PolymorphicMapType_18565) (o_42@@1 T@Ref) (f_48@@0 T@Field_21933_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@40) (=> (HasDirectPerm_21933_53 Mask@@40 o_42@@1 f_48@@0) (= (select (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@13) o_42@@1 f_48@@0) (select (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| ExhaleHeap@@8) o_42@@1 f_48@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@40) (select (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| ExhaleHeap@@8) o_42@@1 f_48@@0))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_18544) (ExhaleHeap@@9 T@PolymorphicMapType_18544) (Mask@@41 T@PolymorphicMapType_18565) (o_42@@2 T@Ref) (f_48@@1 T@Field_21962_21963) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@41) (=> (HasDirectPerm_21933_9772 Mask@@41 o_42@@2 f_48@@1) (= (select (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@14) o_42@@2 f_48@@1) (select (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| ExhaleHeap@@9) o_42@@2 f_48@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@41) (select (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| ExhaleHeap@@9) o_42@@2 f_48@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_18544) (ExhaleHeap@@10 T@PolymorphicMapType_18544) (Mask@@42 T@PolymorphicMapType_18565) (o_42@@3 T@Ref) (f_48@@2 T@Field_21933_9739) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@42) (=> (HasDirectPerm_21933_9739 Mask@@42 o_42@@3 f_48@@2) (= (select (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@15) o_42@@3 f_48@@2) (select (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| ExhaleHeap@@10) o_42@@3 f_48@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@42) (select (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| ExhaleHeap@@10) o_42@@3 f_48@@2))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_18544) (ExhaleHeap@@11 T@PolymorphicMapType_18544) (Mask@@43 T@PolymorphicMapType_18565) (o_42@@4 T@Ref) (f_48@@3 T@Field_21933_1198) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@43) (=> (HasDirectPerm_21933_1397 Mask@@43 o_42@@4 f_48@@3) (= (select (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@16) o_42@@4 f_48@@3) (select (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| ExhaleHeap@@11) o_42@@4 f_48@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@43) (select (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| ExhaleHeap@@11) o_42@@4 f_48@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_18544) (ExhaleHeap@@12 T@PolymorphicMapType_18544) (Mask@@44 T@PolymorphicMapType_18565) (o_42@@5 T@Ref) (f_48@@4 T@Field_24969_24974) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@44) (=> (HasDirectPerm_9771_64741 Mask@@44 o_42@@5 f_48@@4) (= (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@17) o_42@@5 f_48@@4) (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| ExhaleHeap@@12) o_42@@5 f_48@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@44) (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| ExhaleHeap@@12) o_42@@5 f_48@@4))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_18544) (ExhaleHeap@@13 T@PolymorphicMapType_18544) (Mask@@45 T@PolymorphicMapType_18565) (o_42@@6 T@Ref) (f_48@@5 T@Field_9771_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@45) (=> (HasDirectPerm_9771_53 Mask@@45 o_42@@6 f_48@@5) (= (select (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@18) o_42@@6 f_48@@5) (select (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| ExhaleHeap@@13) o_42@@6 f_48@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@45) (select (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| ExhaleHeap@@13) o_42@@6 f_48@@5))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_18544) (ExhaleHeap@@14 T@PolymorphicMapType_18544) (Mask@@46 T@PolymorphicMapType_18565) (o_42@@7 T@Ref) (f_48@@6 T@Field_22847_22848) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@46) (=> (HasDirectPerm_9771_9772 Mask@@46 o_42@@7 f_48@@6) (= (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@19) o_42@@7 f_48@@6) (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| ExhaleHeap@@14) o_42@@7 f_48@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@46) (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| ExhaleHeap@@14) o_42@@7 f_48@@6))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_18544) (ExhaleHeap@@15 T@PolymorphicMapType_18544) (Mask@@47 T@PolymorphicMapType_18565) (o_42@@8 T@Ref) (f_48@@7 T@Field_9771_9739) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@47) (=> (HasDirectPerm_9771_9739 Mask@@47 o_42@@8 f_48@@7) (= (select (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@20) o_42@@8 f_48@@7) (select (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| ExhaleHeap@@15) o_42@@8 f_48@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@47) (select (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| ExhaleHeap@@15) o_42@@8 f_48@@7))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_18544) (ExhaleHeap@@16 T@PolymorphicMapType_18544) (Mask@@48 T@PolymorphicMapType_18565) (o_42@@9 T@Ref) (f_48@@8 T@Field_9771_1397) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@48) (=> (HasDirectPerm_9771_1397 Mask@@48 o_42@@9 f_48@@8) (= (select (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@21) o_42@@9 f_48@@8) (select (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| ExhaleHeap@@16) o_42@@9 f_48@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@48) (select (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| ExhaleHeap@@16) o_42@@9 f_48@@8))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_18544) (ExhaleHeap@@17 T@PolymorphicMapType_18544) (Mask@@49 T@PolymorphicMapType_18565) (o_42@@10 T@Ref) (f_48@@9 T@Field_9736_21951) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@49) (=> (HasDirectPerm_9736_63600 Mask@@49 o_42@@10 f_48@@9) (= (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@22) o_42@@10 f_48@@9) (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| ExhaleHeap@@17) o_42@@10 f_48@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@49) (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| ExhaleHeap@@17) o_42@@10 f_48@@9))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_18544) (ExhaleHeap@@18 T@PolymorphicMapType_18544) (Mask@@50 T@PolymorphicMapType_18565) (o_42@@11 T@Ref) (f_48@@10 T@Field_18604_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@50) (=> (HasDirectPerm_9736_53 Mask@@50 o_42@@11 f_48@@10) (= (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@23) o_42@@11 f_48@@10) (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| ExhaleHeap@@18) o_42@@11 f_48@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@50) (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| ExhaleHeap@@18) o_42@@11 f_48@@10))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_18544) (ExhaleHeap@@19 T@PolymorphicMapType_18544) (Mask@@51 T@PolymorphicMapType_18565) (o_42@@12 T@Ref) (f_48@@11 T@Field_9736_9772) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@51) (=> (HasDirectPerm_9736_9772 Mask@@51 o_42@@12 f_48@@11) (= (select (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@24) o_42@@12 f_48@@11) (select (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| ExhaleHeap@@19) o_42@@12 f_48@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@51) (select (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| ExhaleHeap@@19) o_42@@12 f_48@@11))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_18544) (ExhaleHeap@@20 T@PolymorphicMapType_18544) (Mask@@52 T@PolymorphicMapType_18565) (o_42@@13 T@Ref) (f_48@@12 T@Field_18617_18618) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@52) (=> (HasDirectPerm_9738_9739 Mask@@52 o_42@@13 f_48@@12) (= (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@25) o_42@@13 f_48@@12) (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| ExhaleHeap@@20) o_42@@13 f_48@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@52) (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| ExhaleHeap@@20) o_42@@13 f_48@@12))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_18544) (ExhaleHeap@@21 T@PolymorphicMapType_18544) (Mask@@53 T@PolymorphicMapType_18565) (o_42@@14 T@Ref) (f_48@@13 T@Field_22459_1397) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@53) (=> (HasDirectPerm_9736_1397 Mask@@53 o_42@@14 f_48@@13) (= (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@26) o_42@@14 f_48@@13) (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| ExhaleHeap@@21) o_42@@14 f_48@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@53) (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| ExhaleHeap@@21) o_42@@14 f_48@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_21946_21951) ) (! (= (select (|PolymorphicMapType_18565_9708_78645#PolymorphicMapType_18565| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18565_9708_78645#PolymorphicMapType_18565| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_21933_53) ) (! (= (select (|PolymorphicMapType_18565_9708_53#PolymorphicMapType_18565| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18565_9708_53#PolymorphicMapType_18565| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_21933_9739) ) (! (= (select (|PolymorphicMapType_18565_9708_9739#PolymorphicMapType_18565| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18565_9708_9739#PolymorphicMapType_18565| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_21933_1198) ) (! (= (select (|PolymorphicMapType_18565_9708_1198#PolymorphicMapType_18565| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18565_9708_1198#PolymorphicMapType_18565| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_21962_21963) ) (! (= (select (|PolymorphicMapType_18565_9708_9772#PolymorphicMapType_18565| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18565_9708_9772#PolymorphicMapType_18565| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_9736_21951) ) (! (= (select (|PolymorphicMapType_18565_9736_78231#PolymorphicMapType_18565| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18565_9736_78231#PolymorphicMapType_18565| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_18604_53) ) (! (= (select (|PolymorphicMapType_18565_9736_53#PolymorphicMapType_18565| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18565_9736_53#PolymorphicMapType_18565| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_18617_18618) ) (! (= (select (|PolymorphicMapType_18565_9738_9739#PolymorphicMapType_18565| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18565_9738_9739#PolymorphicMapType_18565| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_22459_1397) ) (! (= (select (|PolymorphicMapType_18565_9736_1397#PolymorphicMapType_18565| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18565_9736_1397#PolymorphicMapType_18565| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_9736_9772) ) (! (= (select (|PolymorphicMapType_18565_9736_9772#PolymorphicMapType_18565| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18565_9736_9772#PolymorphicMapType_18565| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_24969_24974) ) (! (= (select (|PolymorphicMapType_18565_9771_77832#PolymorphicMapType_18565| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18565_9771_77832#PolymorphicMapType_18565| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_9771_53) ) (! (= (select (|PolymorphicMapType_18565_9771_53#PolymorphicMapType_18565| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18565_9771_53#PolymorphicMapType_18565| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_9771_9739) ) (! (= (select (|PolymorphicMapType_18565_9771_9739#PolymorphicMapType_18565| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18565_9771_9739#PolymorphicMapType_18565| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_9771_1397) ) (! (= (select (|PolymorphicMapType_18565_9771_1397#PolymorphicMapType_18565| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18565_9771_1397#PolymorphicMapType_18565| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_22847_22848) ) (! (= (select (|PolymorphicMapType_18565_9771_9772#PolymorphicMapType_18565| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18565_9771_9772#PolymorphicMapType_18565| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_18565) (SummandMask1 T@PolymorphicMapType_18565) (SummandMask2 T@PolymorphicMapType_18565) (o_2@@59 T@Ref) (f_4@@59 T@Field_21946_21951) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_18565_9708_78645#PolymorphicMapType_18565| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_18565_9708_78645#PolymorphicMapType_18565| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_18565_9708_78645#PolymorphicMapType_18565| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18565_9708_78645#PolymorphicMapType_18565| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18565_9708_78645#PolymorphicMapType_18565| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18565_9708_78645#PolymorphicMapType_18565| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_18565) (SummandMask1@@0 T@PolymorphicMapType_18565) (SummandMask2@@0 T@PolymorphicMapType_18565) (o_2@@60 T@Ref) (f_4@@60 T@Field_21933_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_18565_9708_53#PolymorphicMapType_18565| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_18565_9708_53#PolymorphicMapType_18565| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_18565_9708_53#PolymorphicMapType_18565| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18565_9708_53#PolymorphicMapType_18565| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18565_9708_53#PolymorphicMapType_18565| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18565_9708_53#PolymorphicMapType_18565| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_18565) (SummandMask1@@1 T@PolymorphicMapType_18565) (SummandMask2@@1 T@PolymorphicMapType_18565) (o_2@@61 T@Ref) (f_4@@61 T@Field_21933_9739) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_18565_9708_9739#PolymorphicMapType_18565| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_18565_9708_9739#PolymorphicMapType_18565| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_18565_9708_9739#PolymorphicMapType_18565| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18565_9708_9739#PolymorphicMapType_18565| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18565_9708_9739#PolymorphicMapType_18565| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18565_9708_9739#PolymorphicMapType_18565| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_18565) (SummandMask1@@2 T@PolymorphicMapType_18565) (SummandMask2@@2 T@PolymorphicMapType_18565) (o_2@@62 T@Ref) (f_4@@62 T@Field_21933_1198) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_18565_9708_1198#PolymorphicMapType_18565| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_18565_9708_1198#PolymorphicMapType_18565| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_18565_9708_1198#PolymorphicMapType_18565| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18565_9708_1198#PolymorphicMapType_18565| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18565_9708_1198#PolymorphicMapType_18565| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18565_9708_1198#PolymorphicMapType_18565| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_18565) (SummandMask1@@3 T@PolymorphicMapType_18565) (SummandMask2@@3 T@PolymorphicMapType_18565) (o_2@@63 T@Ref) (f_4@@63 T@Field_21962_21963) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_18565_9708_9772#PolymorphicMapType_18565| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_18565_9708_9772#PolymorphicMapType_18565| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_18565_9708_9772#PolymorphicMapType_18565| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18565_9708_9772#PolymorphicMapType_18565| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18565_9708_9772#PolymorphicMapType_18565| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18565_9708_9772#PolymorphicMapType_18565| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_18565) (SummandMask1@@4 T@PolymorphicMapType_18565) (SummandMask2@@4 T@PolymorphicMapType_18565) (o_2@@64 T@Ref) (f_4@@64 T@Field_9736_21951) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_18565_9736_78231#PolymorphicMapType_18565| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_18565_9736_78231#PolymorphicMapType_18565| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_18565_9736_78231#PolymorphicMapType_18565| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_18565_9736_78231#PolymorphicMapType_18565| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_18565_9736_78231#PolymorphicMapType_18565| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_18565_9736_78231#PolymorphicMapType_18565| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_18565) (SummandMask1@@5 T@PolymorphicMapType_18565) (SummandMask2@@5 T@PolymorphicMapType_18565) (o_2@@65 T@Ref) (f_4@@65 T@Field_18604_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_18565_9736_53#PolymorphicMapType_18565| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_18565_9736_53#PolymorphicMapType_18565| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_18565_9736_53#PolymorphicMapType_18565| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_18565_9736_53#PolymorphicMapType_18565| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_18565_9736_53#PolymorphicMapType_18565| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_18565_9736_53#PolymorphicMapType_18565| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_18565) (SummandMask1@@6 T@PolymorphicMapType_18565) (SummandMask2@@6 T@PolymorphicMapType_18565) (o_2@@66 T@Ref) (f_4@@66 T@Field_18617_18618) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_18565_9738_9739#PolymorphicMapType_18565| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_18565_9738_9739#PolymorphicMapType_18565| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_18565_9738_9739#PolymorphicMapType_18565| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_18565_9738_9739#PolymorphicMapType_18565| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_18565_9738_9739#PolymorphicMapType_18565| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_18565_9738_9739#PolymorphicMapType_18565| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_18565) (SummandMask1@@7 T@PolymorphicMapType_18565) (SummandMask2@@7 T@PolymorphicMapType_18565) (o_2@@67 T@Ref) (f_4@@67 T@Field_22459_1397) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_18565_9736_1397#PolymorphicMapType_18565| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_18565_9736_1397#PolymorphicMapType_18565| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_18565_9736_1397#PolymorphicMapType_18565| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_18565_9736_1397#PolymorphicMapType_18565| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_18565_9736_1397#PolymorphicMapType_18565| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_18565_9736_1397#PolymorphicMapType_18565| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_18565) (SummandMask1@@8 T@PolymorphicMapType_18565) (SummandMask2@@8 T@PolymorphicMapType_18565) (o_2@@68 T@Ref) (f_4@@68 T@Field_9736_9772) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_18565_9736_9772#PolymorphicMapType_18565| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_18565_9736_9772#PolymorphicMapType_18565| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_18565_9736_9772#PolymorphicMapType_18565| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_18565_9736_9772#PolymorphicMapType_18565| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_18565_9736_9772#PolymorphicMapType_18565| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_18565_9736_9772#PolymorphicMapType_18565| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_18565) (SummandMask1@@9 T@PolymorphicMapType_18565) (SummandMask2@@9 T@PolymorphicMapType_18565) (o_2@@69 T@Ref) (f_4@@69 T@Field_24969_24974) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_18565_9771_77832#PolymorphicMapType_18565| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_18565_9771_77832#PolymorphicMapType_18565| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_18565_9771_77832#PolymorphicMapType_18565| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_18565_9771_77832#PolymorphicMapType_18565| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_18565_9771_77832#PolymorphicMapType_18565| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_18565_9771_77832#PolymorphicMapType_18565| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_18565) (SummandMask1@@10 T@PolymorphicMapType_18565) (SummandMask2@@10 T@PolymorphicMapType_18565) (o_2@@70 T@Ref) (f_4@@70 T@Field_9771_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_18565_9771_53#PolymorphicMapType_18565| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_18565_9771_53#PolymorphicMapType_18565| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_18565_9771_53#PolymorphicMapType_18565| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_18565_9771_53#PolymorphicMapType_18565| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_18565_9771_53#PolymorphicMapType_18565| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_18565_9771_53#PolymorphicMapType_18565| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_18565) (SummandMask1@@11 T@PolymorphicMapType_18565) (SummandMask2@@11 T@PolymorphicMapType_18565) (o_2@@71 T@Ref) (f_4@@71 T@Field_9771_9739) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_18565_9771_9739#PolymorphicMapType_18565| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_18565_9771_9739#PolymorphicMapType_18565| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_18565_9771_9739#PolymorphicMapType_18565| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_18565_9771_9739#PolymorphicMapType_18565| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_18565_9771_9739#PolymorphicMapType_18565| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_18565_9771_9739#PolymorphicMapType_18565| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_18565) (SummandMask1@@12 T@PolymorphicMapType_18565) (SummandMask2@@12 T@PolymorphicMapType_18565) (o_2@@72 T@Ref) (f_4@@72 T@Field_9771_1397) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_18565_9771_1397#PolymorphicMapType_18565| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_18565_9771_1397#PolymorphicMapType_18565| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_18565_9771_1397#PolymorphicMapType_18565| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_18565_9771_1397#PolymorphicMapType_18565| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_18565_9771_1397#PolymorphicMapType_18565| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_18565_9771_1397#PolymorphicMapType_18565| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_18565) (SummandMask1@@13 T@PolymorphicMapType_18565) (SummandMask2@@13 T@PolymorphicMapType_18565) (o_2@@73 T@Ref) (f_4@@73 T@Field_22847_22848) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_18565_9771_9772#PolymorphicMapType_18565| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_18565_9771_9772#PolymorphicMapType_18565| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_18565_9771_9772#PolymorphicMapType_18565| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_18565_9771_9772#PolymorphicMapType_18565| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_18565_9771_9772#PolymorphicMapType_18565| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_18565_9771_9772#PolymorphicMapType_18565| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_18544) (ExhaleHeap@@22 T@PolymorphicMapType_18544) (Mask@@54 T@PolymorphicMapType_18565) (pm_f_18@@5 T@Field_21962_21963) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@54) (=> (and (HasDirectPerm_21933_9772 Mask@@54 null pm_f_18@@5) (IsPredicateField_9717_9718 pm_f_18@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_18 T@Ref) (f_48@@14 T@Field_22459_1397) ) (!  (=> (select (|PolymorphicMapType_19093_9736_1397#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@27) null (PredicateMaskField_21933 pm_f_18@@5))) o2_18 f_48@@14) (= (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@27) o2_18 f_48@@14) (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18 f_48@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18 f_48@@14))
)) (forall ((o2_18@@0 T@Ref) (f_48@@15 T@Field_18617_18618) ) (!  (=> (select (|PolymorphicMapType_19093_9738_9739#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@27) null (PredicateMaskField_21933 pm_f_18@@5))) o2_18@@0 f_48@@15) (= (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@27) o2_18@@0 f_48@@15) (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@0 f_48@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@0 f_48@@15))
))) (forall ((o2_18@@1 T@Ref) (f_48@@16 T@Field_18604_53) ) (!  (=> (select (|PolymorphicMapType_19093_9736_53#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@27) null (PredicateMaskField_21933 pm_f_18@@5))) o2_18@@1 f_48@@16) (= (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@27) o2_18@@1 f_48@@16) (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@1 f_48@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@1 f_48@@16))
))) (forall ((o2_18@@2 T@Ref) (f_48@@17 T@Field_9736_21951) ) (!  (=> (select (|PolymorphicMapType_19093_9736_67723#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@27) null (PredicateMaskField_21933 pm_f_18@@5))) o2_18@@2 f_48@@17) (= (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@27) o2_18@@2 f_48@@17) (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@2 f_48@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@2 f_48@@17))
))) (forall ((o2_18@@3 T@Ref) (f_48@@18 T@Field_9736_9772) ) (!  (=> (select (|PolymorphicMapType_19093_9736_21963#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@27) null (PredicateMaskField_21933 pm_f_18@@5))) o2_18@@3 f_48@@18) (= (select (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@27) o2_18@@3 f_48@@18) (select (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@3 f_48@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@3 f_48@@18))
))) (forall ((o2_18@@4 T@Ref) (f_48@@19 T@Field_21933_1198) ) (!  (=> (select (|PolymorphicMapType_19093_21933_1397#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@27) null (PredicateMaskField_21933 pm_f_18@@5))) o2_18@@4 f_48@@19) (= (select (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@27) o2_18@@4 f_48@@19) (select (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@4 f_48@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@4 f_48@@19))
))) (forall ((o2_18@@5 T@Ref) (f_48@@20 T@Field_21933_9739) ) (!  (=> (select (|PolymorphicMapType_19093_21933_9739#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@27) null (PredicateMaskField_21933 pm_f_18@@5))) o2_18@@5 f_48@@20) (= (select (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@27) o2_18@@5 f_48@@20) (select (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@5 f_48@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@5 f_48@@20))
))) (forall ((o2_18@@6 T@Ref) (f_48@@21 T@Field_21933_53) ) (!  (=> (select (|PolymorphicMapType_19093_21933_53#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@27) null (PredicateMaskField_21933 pm_f_18@@5))) o2_18@@6 f_48@@21) (= (select (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@27) o2_18@@6 f_48@@21) (select (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@6 f_48@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@6 f_48@@21))
))) (forall ((o2_18@@7 T@Ref) (f_48@@22 T@Field_21946_21951) ) (!  (=> (select (|PolymorphicMapType_19093_21933_68771#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@27) null (PredicateMaskField_21933 pm_f_18@@5))) o2_18@@7 f_48@@22) (= (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@27) o2_18@@7 f_48@@22) (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@7 f_48@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@7 f_48@@22))
))) (forall ((o2_18@@8 T@Ref) (f_48@@23 T@Field_21962_21963) ) (!  (=> (select (|PolymorphicMapType_19093_21933_21963#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@27) null (PredicateMaskField_21933 pm_f_18@@5))) o2_18@@8 f_48@@23) (= (select (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@27) o2_18@@8 f_48@@23) (select (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@8 f_48@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@8 f_48@@23))
))) (forall ((o2_18@@9 T@Ref) (f_48@@24 T@Field_9771_1397) ) (!  (=> (select (|PolymorphicMapType_19093_22847_1397#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@27) null (PredicateMaskField_21933 pm_f_18@@5))) o2_18@@9 f_48@@24) (= (select (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@27) o2_18@@9 f_48@@24) (select (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@9 f_48@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@9 f_48@@24))
))) (forall ((o2_18@@10 T@Ref) (f_48@@25 T@Field_9771_9739) ) (!  (=> (select (|PolymorphicMapType_19093_22847_9739#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@27) null (PredicateMaskField_21933 pm_f_18@@5))) o2_18@@10 f_48@@25) (= (select (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@27) o2_18@@10 f_48@@25) (select (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@10 f_48@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@10 f_48@@25))
))) (forall ((o2_18@@11 T@Ref) (f_48@@26 T@Field_9771_53) ) (!  (=> (select (|PolymorphicMapType_19093_22847_53#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@27) null (PredicateMaskField_21933 pm_f_18@@5))) o2_18@@11 f_48@@26) (= (select (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@27) o2_18@@11 f_48@@26) (select (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@11 f_48@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@11 f_48@@26))
))) (forall ((o2_18@@12 T@Ref) (f_48@@27 T@Field_24969_24974) ) (!  (=> (select (|PolymorphicMapType_19093_22847_69819#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@27) null (PredicateMaskField_21933 pm_f_18@@5))) o2_18@@12 f_48@@27) (= (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@27) o2_18@@12 f_48@@27) (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@12 f_48@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@12 f_48@@27))
))) (forall ((o2_18@@13 T@Ref) (f_48@@28 T@Field_22847_22848) ) (!  (=> (select (|PolymorphicMapType_19093_22847_21963#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@27) null (PredicateMaskField_21933 pm_f_18@@5))) o2_18@@13 f_48@@28) (= (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@27) o2_18@@13 f_48@@28) (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@13 f_48@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| ExhaleHeap@@22) o2_18@@13 f_48@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@54) (IsPredicateField_9717_9718 pm_f_18@@5))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_18544) (ExhaleHeap@@23 T@PolymorphicMapType_18544) (Mask@@55 T@PolymorphicMapType_18565) (pm_f_18@@6 T@Field_22847_22848) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@55) (=> (and (HasDirectPerm_9771_9772 Mask@@55 null pm_f_18@@6) (IsPredicateField_9771_9772 pm_f_18@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_18@@14 T@Ref) (f_48@@29 T@Field_22459_1397) ) (!  (=> (select (|PolymorphicMapType_19093_9736_1397#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@28) null (PredicateMaskField_9771 pm_f_18@@6))) o2_18@@14 f_48@@29) (= (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@28) o2_18@@14 f_48@@29) (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@14 f_48@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@14 f_48@@29))
)) (forall ((o2_18@@15 T@Ref) (f_48@@30 T@Field_18617_18618) ) (!  (=> (select (|PolymorphicMapType_19093_9738_9739#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@28) null (PredicateMaskField_9771 pm_f_18@@6))) o2_18@@15 f_48@@30) (= (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@28) o2_18@@15 f_48@@30) (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@15 f_48@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@15 f_48@@30))
))) (forall ((o2_18@@16 T@Ref) (f_48@@31 T@Field_18604_53) ) (!  (=> (select (|PolymorphicMapType_19093_9736_53#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@28) null (PredicateMaskField_9771 pm_f_18@@6))) o2_18@@16 f_48@@31) (= (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@28) o2_18@@16 f_48@@31) (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@16 f_48@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@16 f_48@@31))
))) (forall ((o2_18@@17 T@Ref) (f_48@@32 T@Field_9736_21951) ) (!  (=> (select (|PolymorphicMapType_19093_9736_67723#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@28) null (PredicateMaskField_9771 pm_f_18@@6))) o2_18@@17 f_48@@32) (= (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@28) o2_18@@17 f_48@@32) (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@17 f_48@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@17 f_48@@32))
))) (forall ((o2_18@@18 T@Ref) (f_48@@33 T@Field_9736_9772) ) (!  (=> (select (|PolymorphicMapType_19093_9736_21963#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@28) null (PredicateMaskField_9771 pm_f_18@@6))) o2_18@@18 f_48@@33) (= (select (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@28) o2_18@@18 f_48@@33) (select (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@18 f_48@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@18 f_48@@33))
))) (forall ((o2_18@@19 T@Ref) (f_48@@34 T@Field_21933_1198) ) (!  (=> (select (|PolymorphicMapType_19093_21933_1397#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@28) null (PredicateMaskField_9771 pm_f_18@@6))) o2_18@@19 f_48@@34) (= (select (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@28) o2_18@@19 f_48@@34) (select (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@19 f_48@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@19 f_48@@34))
))) (forall ((o2_18@@20 T@Ref) (f_48@@35 T@Field_21933_9739) ) (!  (=> (select (|PolymorphicMapType_19093_21933_9739#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@28) null (PredicateMaskField_9771 pm_f_18@@6))) o2_18@@20 f_48@@35) (= (select (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@28) o2_18@@20 f_48@@35) (select (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@20 f_48@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@20 f_48@@35))
))) (forall ((o2_18@@21 T@Ref) (f_48@@36 T@Field_21933_53) ) (!  (=> (select (|PolymorphicMapType_19093_21933_53#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@28) null (PredicateMaskField_9771 pm_f_18@@6))) o2_18@@21 f_48@@36) (= (select (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@28) o2_18@@21 f_48@@36) (select (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@21 f_48@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@21 f_48@@36))
))) (forall ((o2_18@@22 T@Ref) (f_48@@37 T@Field_21946_21951) ) (!  (=> (select (|PolymorphicMapType_19093_21933_68771#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@28) null (PredicateMaskField_9771 pm_f_18@@6))) o2_18@@22 f_48@@37) (= (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@28) o2_18@@22 f_48@@37) (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@22 f_48@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@22 f_48@@37))
))) (forall ((o2_18@@23 T@Ref) (f_48@@38 T@Field_21962_21963) ) (!  (=> (select (|PolymorphicMapType_19093_21933_21963#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@28) null (PredicateMaskField_9771 pm_f_18@@6))) o2_18@@23 f_48@@38) (= (select (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@28) o2_18@@23 f_48@@38) (select (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@23 f_48@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@23 f_48@@38))
))) (forall ((o2_18@@24 T@Ref) (f_48@@39 T@Field_9771_1397) ) (!  (=> (select (|PolymorphicMapType_19093_22847_1397#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@28) null (PredicateMaskField_9771 pm_f_18@@6))) o2_18@@24 f_48@@39) (= (select (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@28) o2_18@@24 f_48@@39) (select (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@24 f_48@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@24 f_48@@39))
))) (forall ((o2_18@@25 T@Ref) (f_48@@40 T@Field_9771_9739) ) (!  (=> (select (|PolymorphicMapType_19093_22847_9739#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@28) null (PredicateMaskField_9771 pm_f_18@@6))) o2_18@@25 f_48@@40) (= (select (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@28) o2_18@@25 f_48@@40) (select (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@25 f_48@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@25 f_48@@40))
))) (forall ((o2_18@@26 T@Ref) (f_48@@41 T@Field_9771_53) ) (!  (=> (select (|PolymorphicMapType_19093_22847_53#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@28) null (PredicateMaskField_9771 pm_f_18@@6))) o2_18@@26 f_48@@41) (= (select (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@28) o2_18@@26 f_48@@41) (select (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@26 f_48@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@26 f_48@@41))
))) (forall ((o2_18@@27 T@Ref) (f_48@@42 T@Field_24969_24974) ) (!  (=> (select (|PolymorphicMapType_19093_22847_69819#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@28) null (PredicateMaskField_9771 pm_f_18@@6))) o2_18@@27 f_48@@42) (= (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@28) o2_18@@27 f_48@@42) (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@27 f_48@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@27 f_48@@42))
))) (forall ((o2_18@@28 T@Ref) (f_48@@43 T@Field_22847_22848) ) (!  (=> (select (|PolymorphicMapType_19093_22847_21963#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@28) null (PredicateMaskField_9771 pm_f_18@@6))) o2_18@@28 f_48@@43) (= (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@28) o2_18@@28 f_48@@43) (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@28 f_48@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| ExhaleHeap@@23) o2_18@@28 f_48@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@55) (IsPredicateField_9771_9772 pm_f_18@@6))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_18544) (ExhaleHeap@@24 T@PolymorphicMapType_18544) (Mask@@56 T@PolymorphicMapType_18565) (pm_f_18@@7 T@Field_9736_9772) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@56) (=> (and (HasDirectPerm_9736_9772 Mask@@56 null pm_f_18@@7) (IsPredicateField_9736_66120 pm_f_18@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_18@@29 T@Ref) (f_48@@44 T@Field_22459_1397) ) (!  (=> (select (|PolymorphicMapType_19093_9736_1397#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@29) null (PredicateMaskField_9736 pm_f_18@@7))) o2_18@@29 f_48@@44) (= (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@29) o2_18@@29 f_48@@44) (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@29 f_48@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@29 f_48@@44))
)) (forall ((o2_18@@30 T@Ref) (f_48@@45 T@Field_18617_18618) ) (!  (=> (select (|PolymorphicMapType_19093_9738_9739#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@29) null (PredicateMaskField_9736 pm_f_18@@7))) o2_18@@30 f_48@@45) (= (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@29) o2_18@@30 f_48@@45) (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@30 f_48@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@30 f_48@@45))
))) (forall ((o2_18@@31 T@Ref) (f_48@@46 T@Field_18604_53) ) (!  (=> (select (|PolymorphicMapType_19093_9736_53#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@29) null (PredicateMaskField_9736 pm_f_18@@7))) o2_18@@31 f_48@@46) (= (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@29) o2_18@@31 f_48@@46) (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@31 f_48@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@31 f_48@@46))
))) (forall ((o2_18@@32 T@Ref) (f_48@@47 T@Field_9736_21951) ) (!  (=> (select (|PolymorphicMapType_19093_9736_67723#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@29) null (PredicateMaskField_9736 pm_f_18@@7))) o2_18@@32 f_48@@47) (= (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@29) o2_18@@32 f_48@@47) (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@32 f_48@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@32 f_48@@47))
))) (forall ((o2_18@@33 T@Ref) (f_48@@48 T@Field_9736_9772) ) (!  (=> (select (|PolymorphicMapType_19093_9736_21963#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@29) null (PredicateMaskField_9736 pm_f_18@@7))) o2_18@@33 f_48@@48) (= (select (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@29) o2_18@@33 f_48@@48) (select (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@33 f_48@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@33 f_48@@48))
))) (forall ((o2_18@@34 T@Ref) (f_48@@49 T@Field_21933_1198) ) (!  (=> (select (|PolymorphicMapType_19093_21933_1397#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@29) null (PredicateMaskField_9736 pm_f_18@@7))) o2_18@@34 f_48@@49) (= (select (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@29) o2_18@@34 f_48@@49) (select (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@34 f_48@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@34 f_48@@49))
))) (forall ((o2_18@@35 T@Ref) (f_48@@50 T@Field_21933_9739) ) (!  (=> (select (|PolymorphicMapType_19093_21933_9739#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@29) null (PredicateMaskField_9736 pm_f_18@@7))) o2_18@@35 f_48@@50) (= (select (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@29) o2_18@@35 f_48@@50) (select (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@35 f_48@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@35 f_48@@50))
))) (forall ((o2_18@@36 T@Ref) (f_48@@51 T@Field_21933_53) ) (!  (=> (select (|PolymorphicMapType_19093_21933_53#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@29) null (PredicateMaskField_9736 pm_f_18@@7))) o2_18@@36 f_48@@51) (= (select (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@29) o2_18@@36 f_48@@51) (select (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@36 f_48@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@36 f_48@@51))
))) (forall ((o2_18@@37 T@Ref) (f_48@@52 T@Field_21946_21951) ) (!  (=> (select (|PolymorphicMapType_19093_21933_68771#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@29) null (PredicateMaskField_9736 pm_f_18@@7))) o2_18@@37 f_48@@52) (= (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@29) o2_18@@37 f_48@@52) (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@37 f_48@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@37 f_48@@52))
))) (forall ((o2_18@@38 T@Ref) (f_48@@53 T@Field_21962_21963) ) (!  (=> (select (|PolymorphicMapType_19093_21933_21963#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@29) null (PredicateMaskField_9736 pm_f_18@@7))) o2_18@@38 f_48@@53) (= (select (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@29) o2_18@@38 f_48@@53) (select (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@38 f_48@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@38 f_48@@53))
))) (forall ((o2_18@@39 T@Ref) (f_48@@54 T@Field_9771_1397) ) (!  (=> (select (|PolymorphicMapType_19093_22847_1397#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@29) null (PredicateMaskField_9736 pm_f_18@@7))) o2_18@@39 f_48@@54) (= (select (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@29) o2_18@@39 f_48@@54) (select (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@39 f_48@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@39 f_48@@54))
))) (forall ((o2_18@@40 T@Ref) (f_48@@55 T@Field_9771_9739) ) (!  (=> (select (|PolymorphicMapType_19093_22847_9739#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@29) null (PredicateMaskField_9736 pm_f_18@@7))) o2_18@@40 f_48@@55) (= (select (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@29) o2_18@@40 f_48@@55) (select (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@40 f_48@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@40 f_48@@55))
))) (forall ((o2_18@@41 T@Ref) (f_48@@56 T@Field_9771_53) ) (!  (=> (select (|PolymorphicMapType_19093_22847_53#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@29) null (PredicateMaskField_9736 pm_f_18@@7))) o2_18@@41 f_48@@56) (= (select (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@29) o2_18@@41 f_48@@56) (select (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@41 f_48@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@41 f_48@@56))
))) (forall ((o2_18@@42 T@Ref) (f_48@@57 T@Field_24969_24974) ) (!  (=> (select (|PolymorphicMapType_19093_22847_69819#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@29) null (PredicateMaskField_9736 pm_f_18@@7))) o2_18@@42 f_48@@57) (= (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@29) o2_18@@42 f_48@@57) (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@42 f_48@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@42 f_48@@57))
))) (forall ((o2_18@@43 T@Ref) (f_48@@58 T@Field_22847_22848) ) (!  (=> (select (|PolymorphicMapType_19093_22847_21963#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@29) null (PredicateMaskField_9736 pm_f_18@@7))) o2_18@@43 f_48@@58) (= (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@29) o2_18@@43 f_48@@58) (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@43 f_48@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| ExhaleHeap@@24) o2_18@@43 f_48@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@56) (IsPredicateField_9736_66120 pm_f_18@@7))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_18544) (ExhaleHeap@@25 T@PolymorphicMapType_18544) (Mask@@57 T@PolymorphicMapType_18565) (pm_f_18@@8 T@Field_21962_21963) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@57) (=> (and (HasDirectPerm_21933_9772 Mask@@57 null pm_f_18@@8) (IsWandField_9717_9718 pm_f_18@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_18@@44 T@Ref) (f_48@@59 T@Field_22459_1397) ) (!  (=> (select (|PolymorphicMapType_19093_9736_1397#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@30) null (WandMaskField_9717 pm_f_18@@8))) o2_18@@44 f_48@@59) (= (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@30) o2_18@@44 f_48@@59) (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@44 f_48@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@44 f_48@@59))
)) (forall ((o2_18@@45 T@Ref) (f_48@@60 T@Field_18617_18618) ) (!  (=> (select (|PolymorphicMapType_19093_9738_9739#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@30) null (WandMaskField_9717 pm_f_18@@8))) o2_18@@45 f_48@@60) (= (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@30) o2_18@@45 f_48@@60) (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@45 f_48@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@45 f_48@@60))
))) (forall ((o2_18@@46 T@Ref) (f_48@@61 T@Field_18604_53) ) (!  (=> (select (|PolymorphicMapType_19093_9736_53#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@30) null (WandMaskField_9717 pm_f_18@@8))) o2_18@@46 f_48@@61) (= (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@30) o2_18@@46 f_48@@61) (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@46 f_48@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@46 f_48@@61))
))) (forall ((o2_18@@47 T@Ref) (f_48@@62 T@Field_9736_21951) ) (!  (=> (select (|PolymorphicMapType_19093_9736_67723#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@30) null (WandMaskField_9717 pm_f_18@@8))) o2_18@@47 f_48@@62) (= (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@30) o2_18@@47 f_48@@62) (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@47 f_48@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@47 f_48@@62))
))) (forall ((o2_18@@48 T@Ref) (f_48@@63 T@Field_9736_9772) ) (!  (=> (select (|PolymorphicMapType_19093_9736_21963#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@30) null (WandMaskField_9717 pm_f_18@@8))) o2_18@@48 f_48@@63) (= (select (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@30) o2_18@@48 f_48@@63) (select (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@48 f_48@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@48 f_48@@63))
))) (forall ((o2_18@@49 T@Ref) (f_48@@64 T@Field_21933_1198) ) (!  (=> (select (|PolymorphicMapType_19093_21933_1397#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@30) null (WandMaskField_9717 pm_f_18@@8))) o2_18@@49 f_48@@64) (= (select (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@30) o2_18@@49 f_48@@64) (select (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@49 f_48@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@49 f_48@@64))
))) (forall ((o2_18@@50 T@Ref) (f_48@@65 T@Field_21933_9739) ) (!  (=> (select (|PolymorphicMapType_19093_21933_9739#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@30) null (WandMaskField_9717 pm_f_18@@8))) o2_18@@50 f_48@@65) (= (select (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@30) o2_18@@50 f_48@@65) (select (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@50 f_48@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@50 f_48@@65))
))) (forall ((o2_18@@51 T@Ref) (f_48@@66 T@Field_21933_53) ) (!  (=> (select (|PolymorphicMapType_19093_21933_53#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@30) null (WandMaskField_9717 pm_f_18@@8))) o2_18@@51 f_48@@66) (= (select (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@30) o2_18@@51 f_48@@66) (select (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@51 f_48@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@51 f_48@@66))
))) (forall ((o2_18@@52 T@Ref) (f_48@@67 T@Field_21946_21951) ) (!  (=> (select (|PolymorphicMapType_19093_21933_68771#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@30) null (WandMaskField_9717 pm_f_18@@8))) o2_18@@52 f_48@@67) (= (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@30) o2_18@@52 f_48@@67) (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@52 f_48@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@52 f_48@@67))
))) (forall ((o2_18@@53 T@Ref) (f_48@@68 T@Field_21962_21963) ) (!  (=> (select (|PolymorphicMapType_19093_21933_21963#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@30) null (WandMaskField_9717 pm_f_18@@8))) o2_18@@53 f_48@@68) (= (select (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@30) o2_18@@53 f_48@@68) (select (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@53 f_48@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@53 f_48@@68))
))) (forall ((o2_18@@54 T@Ref) (f_48@@69 T@Field_9771_1397) ) (!  (=> (select (|PolymorphicMapType_19093_22847_1397#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@30) null (WandMaskField_9717 pm_f_18@@8))) o2_18@@54 f_48@@69) (= (select (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@30) o2_18@@54 f_48@@69) (select (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@54 f_48@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@54 f_48@@69))
))) (forall ((o2_18@@55 T@Ref) (f_48@@70 T@Field_9771_9739) ) (!  (=> (select (|PolymorphicMapType_19093_22847_9739#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@30) null (WandMaskField_9717 pm_f_18@@8))) o2_18@@55 f_48@@70) (= (select (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@30) o2_18@@55 f_48@@70) (select (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@55 f_48@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@55 f_48@@70))
))) (forall ((o2_18@@56 T@Ref) (f_48@@71 T@Field_9771_53) ) (!  (=> (select (|PolymorphicMapType_19093_22847_53#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@30) null (WandMaskField_9717 pm_f_18@@8))) o2_18@@56 f_48@@71) (= (select (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@30) o2_18@@56 f_48@@71) (select (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@56 f_48@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@56 f_48@@71))
))) (forall ((o2_18@@57 T@Ref) (f_48@@72 T@Field_24969_24974) ) (!  (=> (select (|PolymorphicMapType_19093_22847_69819#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@30) null (WandMaskField_9717 pm_f_18@@8))) o2_18@@57 f_48@@72) (= (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@30) o2_18@@57 f_48@@72) (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@57 f_48@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@57 f_48@@72))
))) (forall ((o2_18@@58 T@Ref) (f_48@@73 T@Field_22847_22848) ) (!  (=> (select (|PolymorphicMapType_19093_22847_21963#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@30) null (WandMaskField_9717 pm_f_18@@8))) o2_18@@58 f_48@@73) (= (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@30) o2_18@@58 f_48@@73) (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@58 f_48@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| ExhaleHeap@@25) o2_18@@58 f_48@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@57) (IsWandField_9717_9718 pm_f_18@@8))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_18544) (ExhaleHeap@@26 T@PolymorphicMapType_18544) (Mask@@58 T@PolymorphicMapType_18565) (pm_f_18@@9 T@Field_22847_22848) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@58) (=> (and (HasDirectPerm_9771_9772 Mask@@58 null pm_f_18@@9) (IsWandField_9771_71469 pm_f_18@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_18@@59 T@Ref) (f_48@@74 T@Field_22459_1397) ) (!  (=> (select (|PolymorphicMapType_19093_9736_1397#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@31) null (WandMaskField_9771 pm_f_18@@9))) o2_18@@59 f_48@@74) (= (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@31) o2_18@@59 f_48@@74) (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@59 f_48@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@59 f_48@@74))
)) (forall ((o2_18@@60 T@Ref) (f_48@@75 T@Field_18617_18618) ) (!  (=> (select (|PolymorphicMapType_19093_9738_9739#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@31) null (WandMaskField_9771 pm_f_18@@9))) o2_18@@60 f_48@@75) (= (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@31) o2_18@@60 f_48@@75) (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@60 f_48@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@60 f_48@@75))
))) (forall ((o2_18@@61 T@Ref) (f_48@@76 T@Field_18604_53) ) (!  (=> (select (|PolymorphicMapType_19093_9736_53#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@31) null (WandMaskField_9771 pm_f_18@@9))) o2_18@@61 f_48@@76) (= (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@31) o2_18@@61 f_48@@76) (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@61 f_48@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@61 f_48@@76))
))) (forall ((o2_18@@62 T@Ref) (f_48@@77 T@Field_9736_21951) ) (!  (=> (select (|PolymorphicMapType_19093_9736_67723#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@31) null (WandMaskField_9771 pm_f_18@@9))) o2_18@@62 f_48@@77) (= (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@31) o2_18@@62 f_48@@77) (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@62 f_48@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@62 f_48@@77))
))) (forall ((o2_18@@63 T@Ref) (f_48@@78 T@Field_9736_9772) ) (!  (=> (select (|PolymorphicMapType_19093_9736_21963#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@31) null (WandMaskField_9771 pm_f_18@@9))) o2_18@@63 f_48@@78) (= (select (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@31) o2_18@@63 f_48@@78) (select (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@63 f_48@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@63 f_48@@78))
))) (forall ((o2_18@@64 T@Ref) (f_48@@79 T@Field_21933_1198) ) (!  (=> (select (|PolymorphicMapType_19093_21933_1397#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@31) null (WandMaskField_9771 pm_f_18@@9))) o2_18@@64 f_48@@79) (= (select (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@31) o2_18@@64 f_48@@79) (select (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@64 f_48@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@64 f_48@@79))
))) (forall ((o2_18@@65 T@Ref) (f_48@@80 T@Field_21933_9739) ) (!  (=> (select (|PolymorphicMapType_19093_21933_9739#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@31) null (WandMaskField_9771 pm_f_18@@9))) o2_18@@65 f_48@@80) (= (select (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@31) o2_18@@65 f_48@@80) (select (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@65 f_48@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@65 f_48@@80))
))) (forall ((o2_18@@66 T@Ref) (f_48@@81 T@Field_21933_53) ) (!  (=> (select (|PolymorphicMapType_19093_21933_53#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@31) null (WandMaskField_9771 pm_f_18@@9))) o2_18@@66 f_48@@81) (= (select (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@31) o2_18@@66 f_48@@81) (select (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@66 f_48@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@66 f_48@@81))
))) (forall ((o2_18@@67 T@Ref) (f_48@@82 T@Field_21946_21951) ) (!  (=> (select (|PolymorphicMapType_19093_21933_68771#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@31) null (WandMaskField_9771 pm_f_18@@9))) o2_18@@67 f_48@@82) (= (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@31) o2_18@@67 f_48@@82) (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@67 f_48@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@67 f_48@@82))
))) (forall ((o2_18@@68 T@Ref) (f_48@@83 T@Field_21962_21963) ) (!  (=> (select (|PolymorphicMapType_19093_21933_21963#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@31) null (WandMaskField_9771 pm_f_18@@9))) o2_18@@68 f_48@@83) (= (select (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@31) o2_18@@68 f_48@@83) (select (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@68 f_48@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@68 f_48@@83))
))) (forall ((o2_18@@69 T@Ref) (f_48@@84 T@Field_9771_1397) ) (!  (=> (select (|PolymorphicMapType_19093_22847_1397#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@31) null (WandMaskField_9771 pm_f_18@@9))) o2_18@@69 f_48@@84) (= (select (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@31) o2_18@@69 f_48@@84) (select (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@69 f_48@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@69 f_48@@84))
))) (forall ((o2_18@@70 T@Ref) (f_48@@85 T@Field_9771_9739) ) (!  (=> (select (|PolymorphicMapType_19093_22847_9739#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@31) null (WandMaskField_9771 pm_f_18@@9))) o2_18@@70 f_48@@85) (= (select (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@31) o2_18@@70 f_48@@85) (select (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@70 f_48@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@70 f_48@@85))
))) (forall ((o2_18@@71 T@Ref) (f_48@@86 T@Field_9771_53) ) (!  (=> (select (|PolymorphicMapType_19093_22847_53#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@31) null (WandMaskField_9771 pm_f_18@@9))) o2_18@@71 f_48@@86) (= (select (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@31) o2_18@@71 f_48@@86) (select (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@71 f_48@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@71 f_48@@86))
))) (forall ((o2_18@@72 T@Ref) (f_48@@87 T@Field_24969_24974) ) (!  (=> (select (|PolymorphicMapType_19093_22847_69819#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@31) null (WandMaskField_9771 pm_f_18@@9))) o2_18@@72 f_48@@87) (= (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@31) o2_18@@72 f_48@@87) (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@72 f_48@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@72 f_48@@87))
))) (forall ((o2_18@@73 T@Ref) (f_48@@88 T@Field_22847_22848) ) (!  (=> (select (|PolymorphicMapType_19093_22847_21963#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@31) null (WandMaskField_9771 pm_f_18@@9))) o2_18@@73 f_48@@88) (= (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@31) o2_18@@73 f_48@@88) (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@73 f_48@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| ExhaleHeap@@26) o2_18@@73 f_48@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@58) (IsWandField_9771_71469 pm_f_18@@9))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_18544) (ExhaleHeap@@27 T@PolymorphicMapType_18544) (Mask@@59 T@PolymorphicMapType_18565) (pm_f_18@@10 T@Field_9736_9772) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@59) (=> (and (HasDirectPerm_9736_9772 Mask@@59 null pm_f_18@@10) (IsWandField_9736_71112 pm_f_18@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_18@@74 T@Ref) (f_48@@89 T@Field_22459_1397) ) (!  (=> (select (|PolymorphicMapType_19093_9736_1397#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@32) null (WandMaskField_9736 pm_f_18@@10))) o2_18@@74 f_48@@89) (= (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@32) o2_18@@74 f_48@@89) (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@74 f_48@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@74 f_48@@89))
)) (forall ((o2_18@@75 T@Ref) (f_48@@90 T@Field_18617_18618) ) (!  (=> (select (|PolymorphicMapType_19093_9738_9739#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@32) null (WandMaskField_9736 pm_f_18@@10))) o2_18@@75 f_48@@90) (= (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@32) o2_18@@75 f_48@@90) (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@75 f_48@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@75 f_48@@90))
))) (forall ((o2_18@@76 T@Ref) (f_48@@91 T@Field_18604_53) ) (!  (=> (select (|PolymorphicMapType_19093_9736_53#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@32) null (WandMaskField_9736 pm_f_18@@10))) o2_18@@76 f_48@@91) (= (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@32) o2_18@@76 f_48@@91) (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@76 f_48@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@76 f_48@@91))
))) (forall ((o2_18@@77 T@Ref) (f_48@@92 T@Field_9736_21951) ) (!  (=> (select (|PolymorphicMapType_19093_9736_67723#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@32) null (WandMaskField_9736 pm_f_18@@10))) o2_18@@77 f_48@@92) (= (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@32) o2_18@@77 f_48@@92) (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@77 f_48@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@77 f_48@@92))
))) (forall ((o2_18@@78 T@Ref) (f_48@@93 T@Field_9736_9772) ) (!  (=> (select (|PolymorphicMapType_19093_9736_21963#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@32) null (WandMaskField_9736 pm_f_18@@10))) o2_18@@78 f_48@@93) (= (select (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@32) o2_18@@78 f_48@@93) (select (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@78 f_48@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@78 f_48@@93))
))) (forall ((o2_18@@79 T@Ref) (f_48@@94 T@Field_21933_1198) ) (!  (=> (select (|PolymorphicMapType_19093_21933_1397#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@32) null (WandMaskField_9736 pm_f_18@@10))) o2_18@@79 f_48@@94) (= (select (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@32) o2_18@@79 f_48@@94) (select (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@79 f_48@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@79 f_48@@94))
))) (forall ((o2_18@@80 T@Ref) (f_48@@95 T@Field_21933_9739) ) (!  (=> (select (|PolymorphicMapType_19093_21933_9739#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@32) null (WandMaskField_9736 pm_f_18@@10))) o2_18@@80 f_48@@95) (= (select (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@32) o2_18@@80 f_48@@95) (select (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@80 f_48@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@80 f_48@@95))
))) (forall ((o2_18@@81 T@Ref) (f_48@@96 T@Field_21933_53) ) (!  (=> (select (|PolymorphicMapType_19093_21933_53#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@32) null (WandMaskField_9736 pm_f_18@@10))) o2_18@@81 f_48@@96) (= (select (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@32) o2_18@@81 f_48@@96) (select (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@81 f_48@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@81 f_48@@96))
))) (forall ((o2_18@@82 T@Ref) (f_48@@97 T@Field_21946_21951) ) (!  (=> (select (|PolymorphicMapType_19093_21933_68771#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@32) null (WandMaskField_9736 pm_f_18@@10))) o2_18@@82 f_48@@97) (= (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@32) o2_18@@82 f_48@@97) (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@82 f_48@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@82 f_48@@97))
))) (forall ((o2_18@@83 T@Ref) (f_48@@98 T@Field_21962_21963) ) (!  (=> (select (|PolymorphicMapType_19093_21933_21963#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@32) null (WandMaskField_9736 pm_f_18@@10))) o2_18@@83 f_48@@98) (= (select (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@32) o2_18@@83 f_48@@98) (select (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@83 f_48@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@83 f_48@@98))
))) (forall ((o2_18@@84 T@Ref) (f_48@@99 T@Field_9771_1397) ) (!  (=> (select (|PolymorphicMapType_19093_22847_1397#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@32) null (WandMaskField_9736 pm_f_18@@10))) o2_18@@84 f_48@@99) (= (select (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@32) o2_18@@84 f_48@@99) (select (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@84 f_48@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@84 f_48@@99))
))) (forall ((o2_18@@85 T@Ref) (f_48@@100 T@Field_9771_9739) ) (!  (=> (select (|PolymorphicMapType_19093_22847_9739#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@32) null (WandMaskField_9736 pm_f_18@@10))) o2_18@@85 f_48@@100) (= (select (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@32) o2_18@@85 f_48@@100) (select (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@85 f_48@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@85 f_48@@100))
))) (forall ((o2_18@@86 T@Ref) (f_48@@101 T@Field_9771_53) ) (!  (=> (select (|PolymorphicMapType_19093_22847_53#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@32) null (WandMaskField_9736 pm_f_18@@10))) o2_18@@86 f_48@@101) (= (select (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@32) o2_18@@86 f_48@@101) (select (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@86 f_48@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@86 f_48@@101))
))) (forall ((o2_18@@87 T@Ref) (f_48@@102 T@Field_24969_24974) ) (!  (=> (select (|PolymorphicMapType_19093_22847_69819#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@32) null (WandMaskField_9736 pm_f_18@@10))) o2_18@@87 f_48@@102) (= (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@32) o2_18@@87 f_48@@102) (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@87 f_48@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@87 f_48@@102))
))) (forall ((o2_18@@88 T@Ref) (f_48@@103 T@Field_22847_22848) ) (!  (=> (select (|PolymorphicMapType_19093_22847_21963#PolymorphicMapType_19093| (select (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@32) null (WandMaskField_9736 pm_f_18@@10))) o2_18@@88 f_48@@103) (= (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@32) o2_18@@88 f_48@@103) (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@88 f_48@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| ExhaleHeap@@27) o2_18@@88 f_48@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@59) (IsWandField_9736_71112 pm_f_18@@10))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 T@Ref) ) (! (= (getPredWandId_9708_1198 (wand arg1@@4 arg2@@4)) 1)
 :qid |stdinbpl.207:15|
 :skolemid |27|
 :pattern ( (wand arg1@@4 arg2@@4))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_18544) (Mask@@60 T@PolymorphicMapType_18565) (xs@@6 T@Ref) ) (!  (=> (state Heap@@33 Mask@@60) (= (|head'| Heap@@33 xs@@6) (|head#frame| (select (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@33) null (List xs@@6)) xs@@6)))
 :qid |stdinbpl.251:15|
 :skolemid |32|
 :pattern ( (state Heap@@33 Mask@@60) (|head'| Heap@@33 xs@@6))
)))
(assert (forall ((xs@@7 T@Ref) ) (! (= (getPredWandId_9771_9772 (List xs@@7)) 0)
 :qid |stdinbpl.350:15|
 :skolemid |36|
 :pattern ( (List xs@@7))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 T@Ref) ) (! (= (|wand#sm| arg1@@5 arg2@@5) (WandMaskField_9717 (|wand#ft| arg1@@5 arg2@@5)))
 :qid |stdinbpl.203:15|
 :skolemid |26|
 :pattern ( (WandMaskField_9717 (|wand#ft| arg1@@5 arg2@@5)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_18544) (o_41 T@Ref) (f_44 T@Field_21946_21951) (v T@PolymorphicMapType_19093) ) (! (succHeap Heap@@34 (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@34) (store (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@34) o_41 f_44 v) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@34) (store (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@34) o_41 f_44 v) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@34) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_18544) (o_41@@0 T@Ref) (f_44@@0 T@Field_21962_21963) (v@@0 T@FrameType) ) (! (succHeap Heap@@35 (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@35) (store (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@35) o_41@@0 f_44@@0 v@@0) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@35) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@35) (store (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@35) o_41@@0 f_44@@0 v@@0) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_18544) (o_41@@1 T@Ref) (f_44@@1 T@Field_21933_1198) (v@@1 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@36) (store (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@36) o_41@@1 f_44@@1 v@@1) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@36) (store (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@36) o_41@@1 f_44@@1 v@@1) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@36) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_18544) (o_41@@2 T@Ref) (f_44@@2 T@Field_21933_9739) (v@@2 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@37) (store (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@37) o_41@@2 f_44@@2 v@@2) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@37) (store (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@37) o_41@@2 f_44@@2 v@@2) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@37) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_18544) (o_41@@3 T@Ref) (f_44@@3 T@Field_21933_53) (v@@3 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@38) (store (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@38) o_41@@3 f_44@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@38) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@38) (store (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@38) o_41@@3 f_44@@3 v@@3)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_18544) (o_41@@4 T@Ref) (f_44@@4 T@Field_24969_24974) (v@@4 T@PolymorphicMapType_19093) ) (! (succHeap Heap@@39 (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@39) (store (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@39) o_41@@4 f_44@@4 v@@4) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@39) (store (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@39) o_41@@4 f_44@@4 v@@4) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@39) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_18544) (o_41@@5 T@Ref) (f_44@@5 T@Field_22847_22848) (v@@5 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@40) (store (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@40) o_41@@5 f_44@@5 v@@5) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@40) (store (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@40) o_41@@5 f_44@@5 v@@5) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@40) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_18544) (o_41@@6 T@Ref) (f_44@@6 T@Field_9771_1397) (v@@6 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@41) (store (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@41) o_41@@6 f_44@@6 v@@6) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@41) (store (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@41) o_41@@6 f_44@@6 v@@6) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@41) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_18544) (o_41@@7 T@Ref) (f_44@@7 T@Field_9771_9739) (v@@7 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@42) (store (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@42) o_41@@7 f_44@@7 v@@7) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@42) (store (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@42) o_41@@7 f_44@@7 v@@7) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@42) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_18544) (o_41@@8 T@Ref) (f_44@@8 T@Field_9771_53) (v@@8 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@43) (store (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@43) o_41@@8 f_44@@8 v@@8) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@43) (store (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@43) o_41@@8 f_44@@8 v@@8) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@43) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_18544) (o_41@@9 T@Ref) (f_44@@9 T@Field_9736_21951) (v@@9 T@PolymorphicMapType_19093) ) (! (succHeap Heap@@44 (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@44) (store (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@44) o_41@@9 f_44@@9 v@@9) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@44) (store (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@44) o_41@@9 f_44@@9 v@@9) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@44) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_18544) (o_41@@10 T@Ref) (f_44@@10 T@Field_9736_9772) (v@@10 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@45) (store (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@45) o_41@@10 f_44@@10 v@@10) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@45) (store (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@45) o_41@@10 f_44@@10 v@@10) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@45) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_18544) (o_41@@11 T@Ref) (f_44@@11 T@Field_22459_1397) (v@@11 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@46) (store (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@46) o_41@@11 f_44@@11 v@@11) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@46) (store (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@46) o_41@@11 f_44@@11 v@@11) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@46) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_18544) (o_41@@12 T@Ref) (f_44@@12 T@Field_18617_18618) (v@@12 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@47) (store (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@47) o_41@@12 f_44@@12 v@@12) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18544 (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@47) (store (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@47) o_41@@12 f_44@@12 v@@12) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@47) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_18544) (o_41@@13 T@Ref) (f_44@@13 T@Field_18604_53) (v@@13 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_18544 (store (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@48) o_41@@13 f_44@@13 v@@13) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18544 (store (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@48) o_41@@13 f_44@@13 v@@13) (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_9736_1397#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_9771_9772#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_9775_25061#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_9712_32313#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_9736_9772#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_9736_63642#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_9771_1397#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_9771_9739#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_9771_53#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_21933_1397#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_21933_9739#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_21933_9772#PolymorphicMapType_18544| Heap@@48) (|PolymorphicMapType_18544_21933_53#PolymorphicMapType_18544| Heap@@48)))
)))
(assert (forall ((xs@@8 T@Ref) ) (! (= (PredicateMaskField_9771 (List xs@@8)) (|List#sm| xs@@8))
 :qid |stdinbpl.342:15|
 :skolemid |34|
 :pattern ( (PredicateMaskField_9771 (List xs@@8)))
)))
(assert (forall ((o_41@@14 T@Ref) (f_27 T@Field_18617_18618) (Heap@@49 T@PolymorphicMapType_18544) ) (!  (=> (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@49) o_41@@14 $allocated) (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@49) (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@49) o_41@@14 f_27) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@49) o_41@@14 f_27))
)))
(assert (forall ((p@@3 T@Field_21962_21963) (v_1@@2 T@FrameType) (q T@Field_21962_21963) (w@@2 T@FrameType) (r T@Field_21962_21963) (u T@FrameType) ) (!  (=> (and (InsidePredicate_21933_21933 p@@3 v_1@@2 q w@@2) (InsidePredicate_21933_21933 q w@@2 r u)) (InsidePredicate_21933_21933 p@@3 v_1@@2 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21933_21933 p@@3 v_1@@2 q w@@2) (InsidePredicate_21933_21933 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_21962_21963) (v_1@@3 T@FrameType) (q@@0 T@Field_21962_21963) (w@@3 T@FrameType) (r@@0 T@Field_9736_9772) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_21933_21933 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_21933_18604 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_21933_18604 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21933_21933 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_21933_18604 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_21962_21963) (v_1@@4 T@FrameType) (q@@1 T@Field_21962_21963) (w@@4 T@FrameType) (r@@1 T@Field_22847_22848) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_21933_21933 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_21933_9771 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_21933_9771 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21933_21933 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_21933_9771 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_21962_21963) (v_1@@5 T@FrameType) (q@@2 T@Field_9736_9772) (w@@5 T@FrameType) (r@@2 T@Field_21962_21963) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_21933_18604 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_18604_21933 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_21933_21933 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21933_18604 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_18604_21933 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_21962_21963) (v_1@@6 T@FrameType) (q@@3 T@Field_9736_9772) (w@@6 T@FrameType) (r@@3 T@Field_9736_9772) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_21933_18604 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_18604_18604 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_21933_18604 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21933_18604 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_18604_18604 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_21962_21963) (v_1@@7 T@FrameType) (q@@4 T@Field_9736_9772) (w@@7 T@FrameType) (r@@4 T@Field_22847_22848) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_21933_18604 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_18604_9771 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_21933_9771 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21933_18604 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_18604_9771 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_21962_21963) (v_1@@8 T@FrameType) (q@@5 T@Field_22847_22848) (w@@8 T@FrameType) (r@@5 T@Field_21962_21963) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_21933_9771 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9771_21933 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_21933_21933 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21933_9771 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9771_21933 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_21962_21963) (v_1@@9 T@FrameType) (q@@6 T@Field_22847_22848) (w@@9 T@FrameType) (r@@6 T@Field_9736_9772) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_21933_9771 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9771_18604 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_21933_18604 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21933_9771 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9771_18604 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_21962_21963) (v_1@@10 T@FrameType) (q@@7 T@Field_22847_22848) (w@@10 T@FrameType) (r@@7 T@Field_22847_22848) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_21933_9771 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9771_9771 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_21933_9771 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21933_9771 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9771_9771 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_9736_9772) (v_1@@11 T@FrameType) (q@@8 T@Field_21962_21963) (w@@11 T@FrameType) (r@@8 T@Field_21962_21963) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_18604_21933 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_21933_21933 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_18604_21933 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18604_21933 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_21933_21933 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_9736_9772) (v_1@@12 T@FrameType) (q@@9 T@Field_21962_21963) (w@@12 T@FrameType) (r@@9 T@Field_9736_9772) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_18604_21933 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_21933_18604 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_18604_18604 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18604_21933 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_21933_18604 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_9736_9772) (v_1@@13 T@FrameType) (q@@10 T@Field_21962_21963) (w@@13 T@FrameType) (r@@10 T@Field_22847_22848) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_18604_21933 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_21933_9771 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_18604_9771 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18604_21933 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_21933_9771 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_9736_9772) (v_1@@14 T@FrameType) (q@@11 T@Field_9736_9772) (w@@14 T@FrameType) (r@@11 T@Field_21962_21963) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_18604_18604 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_18604_21933 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_18604_21933 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18604_18604 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_18604_21933 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_9736_9772) (v_1@@15 T@FrameType) (q@@12 T@Field_9736_9772) (w@@15 T@FrameType) (r@@12 T@Field_9736_9772) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_18604_18604 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_18604_18604 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_18604_18604 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18604_18604 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_18604_18604 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_9736_9772) (v_1@@16 T@FrameType) (q@@13 T@Field_9736_9772) (w@@16 T@FrameType) (r@@13 T@Field_22847_22848) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_18604_18604 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_18604_9771 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_18604_9771 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18604_18604 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_18604_9771 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_9736_9772) (v_1@@17 T@FrameType) (q@@14 T@Field_22847_22848) (w@@17 T@FrameType) (r@@14 T@Field_21962_21963) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_18604_9771 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9771_21933 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_18604_21933 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18604_9771 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9771_21933 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_9736_9772) (v_1@@18 T@FrameType) (q@@15 T@Field_22847_22848) (w@@18 T@FrameType) (r@@15 T@Field_9736_9772) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_18604_9771 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9771_18604 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_18604_18604 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18604_9771 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9771_18604 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_9736_9772) (v_1@@19 T@FrameType) (q@@16 T@Field_22847_22848) (w@@19 T@FrameType) (r@@16 T@Field_22847_22848) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_18604_9771 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9771_9771 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_18604_9771 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18604_9771 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9771_9771 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_22847_22848) (v_1@@20 T@FrameType) (q@@17 T@Field_21962_21963) (w@@20 T@FrameType) (r@@17 T@Field_21962_21963) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_9771_21933 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_21933_21933 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_9771_21933 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9771_21933 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_21933_21933 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_22847_22848) (v_1@@21 T@FrameType) (q@@18 T@Field_21962_21963) (w@@21 T@FrameType) (r@@18 T@Field_9736_9772) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_9771_21933 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_21933_18604 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_9771_18604 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9771_21933 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_21933_18604 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_22847_22848) (v_1@@22 T@FrameType) (q@@19 T@Field_21962_21963) (w@@22 T@FrameType) (r@@19 T@Field_22847_22848) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_9771_21933 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_21933_9771 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_9771_9771 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9771_21933 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_21933_9771 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_22847_22848) (v_1@@23 T@FrameType) (q@@20 T@Field_9736_9772) (w@@23 T@FrameType) (r@@20 T@Field_21962_21963) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_9771_18604 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_18604_21933 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_9771_21933 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9771_18604 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_18604_21933 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_22847_22848) (v_1@@24 T@FrameType) (q@@21 T@Field_9736_9772) (w@@24 T@FrameType) (r@@21 T@Field_9736_9772) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_9771_18604 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_18604_18604 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_9771_18604 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9771_18604 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_18604_18604 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_22847_22848) (v_1@@25 T@FrameType) (q@@22 T@Field_9736_9772) (w@@25 T@FrameType) (r@@22 T@Field_22847_22848) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_9771_18604 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_18604_9771 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_9771_9771 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9771_18604 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_18604_9771 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_22847_22848) (v_1@@26 T@FrameType) (q@@23 T@Field_22847_22848) (w@@26 T@FrameType) (r@@23 T@Field_21962_21963) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_9771_9771 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9771_21933 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_9771_21933 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9771_9771 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9771_21933 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_22847_22848) (v_1@@27 T@FrameType) (q@@24 T@Field_22847_22848) (w@@27 T@FrameType) (r@@24 T@Field_9736_9772) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_9771_9771 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9771_18604 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_9771_18604 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9771_9771 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9771_18604 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_22847_22848) (v_1@@28 T@FrameType) (q@@25 T@Field_22847_22848) (w@@28 T@FrameType) (r@@25 T@Field_22847_22848) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_9771_9771 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9771_9771 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_9771_9771 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9771_9771 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9771_9771 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@50 () T@PolymorphicMapType_18544)
(declare-fun xs@@9 () T@Ref)
(declare-fun Mask@3 () T@PolymorphicMapType_18565)
(declare-fun Mask@1 () T@PolymorphicMapType_18565)
(declare-fun Mask@2 () T@PolymorphicMapType_18565)
(declare-fun Mask@0 () T@PolymorphicMapType_18565)
(set-info :boogie-vc-id |List#definedness|)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon2_correct true))
(let ((anon3_Else_correct  (=> (= (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@50) xs@@9 next) null) (=> (and (= Mask@3 Mask@1) (= (ControlFlow 0 4) 1)) anon2_correct))))
(let ((anon3_Then_correct  (=> (not (= (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@50) xs@@9 next) null)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_9738_9739 Mask@1 xs@@9 next)) (=> (HasDirectPerm_9738_9739 Mask@1 xs@@9 next) (=> (and (and (= Mask@2 (PolymorphicMapType_18565 (store (|PolymorphicMapType_18565_9771_9772#PolymorphicMapType_18565| Mask@1) null (List (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@50) xs@@9 next)) (+ (select (|PolymorphicMapType_18565_9771_9772#PolymorphicMapType_18565| Mask@1) null (List (select (|PolymorphicMapType_18544_9581_9582#PolymorphicMapType_18544| Heap@@50) xs@@9 next))) FullPerm)) (|PolymorphicMapType_18565_9736_1397#PolymorphicMapType_18565| Mask@1) (|PolymorphicMapType_18565_9738_9739#PolymorphicMapType_18565| Mask@1) (|PolymorphicMapType_18565_9708_1198#PolymorphicMapType_18565| Mask@1) (|PolymorphicMapType_18565_9771_1397#PolymorphicMapType_18565| Mask@1) (|PolymorphicMapType_18565_9771_9739#PolymorphicMapType_18565| Mask@1) (|PolymorphicMapType_18565_9771_53#PolymorphicMapType_18565| Mask@1) (|PolymorphicMapType_18565_9771_77832#PolymorphicMapType_18565| Mask@1) (|PolymorphicMapType_18565_9736_9772#PolymorphicMapType_18565| Mask@1) (|PolymorphicMapType_18565_9736_53#PolymorphicMapType_18565| Mask@1) (|PolymorphicMapType_18565_9736_78231#PolymorphicMapType_18565| Mask@1) (|PolymorphicMapType_18565_9708_9772#PolymorphicMapType_18565| Mask@1) (|PolymorphicMapType_18565_9708_9739#PolymorphicMapType_18565| Mask@1) (|PolymorphicMapType_18565_9708_53#PolymorphicMapType_18565| Mask@1) (|PolymorphicMapType_18565_9708_78645#PolymorphicMapType_18565| Mask@1))) (state Heap@@50 Mask@2)) (and (= Mask@3 Mask@2) (= (ControlFlow 0 2) 1))) anon2_correct))))))
(let ((anon0_correct  (=> (and (state Heap@@50 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_18544_9578_53#PolymorphicMapType_18544| Heap@@50) xs@@9 $allocated)) (and (not (= xs@@9 null)) (= Mask@0 (PolymorphicMapType_18565 (|PolymorphicMapType_18565_9771_9772#PolymorphicMapType_18565| ZeroMask) (store (|PolymorphicMapType_18565_9736_1397#PolymorphicMapType_18565| ZeroMask) xs@@9 val (+ (select (|PolymorphicMapType_18565_9736_1397#PolymorphicMapType_18565| ZeroMask) xs@@9 val) FullPerm)) (|PolymorphicMapType_18565_9738_9739#PolymorphicMapType_18565| ZeroMask) (|PolymorphicMapType_18565_9708_1198#PolymorphicMapType_18565| ZeroMask) (|PolymorphicMapType_18565_9771_1397#PolymorphicMapType_18565| ZeroMask) (|PolymorphicMapType_18565_9771_9739#PolymorphicMapType_18565| ZeroMask) (|PolymorphicMapType_18565_9771_53#PolymorphicMapType_18565| ZeroMask) (|PolymorphicMapType_18565_9771_77832#PolymorphicMapType_18565| ZeroMask) (|PolymorphicMapType_18565_9736_9772#PolymorphicMapType_18565| ZeroMask) (|PolymorphicMapType_18565_9736_53#PolymorphicMapType_18565| ZeroMask) (|PolymorphicMapType_18565_9736_78231#PolymorphicMapType_18565| ZeroMask) (|PolymorphicMapType_18565_9708_9772#PolymorphicMapType_18565| ZeroMask) (|PolymorphicMapType_18565_9708_9739#PolymorphicMapType_18565| ZeroMask) (|PolymorphicMapType_18565_9708_53#PolymorphicMapType_18565| ZeroMask) (|PolymorphicMapType_18565_9708_78645#PolymorphicMapType_18565| ZeroMask))))) (and (and (state Heap@@50 Mask@0) (not (= xs@@9 null))) (and (= Mask@1 (PolymorphicMapType_18565 (|PolymorphicMapType_18565_9771_9772#PolymorphicMapType_18565| Mask@0) (|PolymorphicMapType_18565_9736_1397#PolymorphicMapType_18565| Mask@0) (store (|PolymorphicMapType_18565_9738_9739#PolymorphicMapType_18565| Mask@0) xs@@9 next (+ (select (|PolymorphicMapType_18565_9738_9739#PolymorphicMapType_18565| Mask@0) xs@@9 next) FullPerm)) (|PolymorphicMapType_18565_9708_1198#PolymorphicMapType_18565| Mask@0) (|PolymorphicMapType_18565_9771_1397#PolymorphicMapType_18565| Mask@0) (|PolymorphicMapType_18565_9771_9739#PolymorphicMapType_18565| Mask@0) (|PolymorphicMapType_18565_9771_53#PolymorphicMapType_18565| Mask@0) (|PolymorphicMapType_18565_9771_77832#PolymorphicMapType_18565| Mask@0) (|PolymorphicMapType_18565_9736_9772#PolymorphicMapType_18565| Mask@0) (|PolymorphicMapType_18565_9736_53#PolymorphicMapType_18565| Mask@0) (|PolymorphicMapType_18565_9736_78231#PolymorphicMapType_18565| Mask@0) (|PolymorphicMapType_18565_9708_9772#PolymorphicMapType_18565| Mask@0) (|PolymorphicMapType_18565_9708_9739#PolymorphicMapType_18565| Mask@0) (|PolymorphicMapType_18565_9708_53#PolymorphicMapType_18565| Mask@0) (|PolymorphicMapType_18565_9708_78645#PolymorphicMapType_18565| Mask@0))) (state Heap@@50 Mask@1)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_9738_9739 Mask@1 xs@@9 next)) (=> (HasDirectPerm_9738_9739 Mask@1 xs@@9 next) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 5) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
