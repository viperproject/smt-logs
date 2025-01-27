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
(declare-sort T@Field_9355_53 0)
(declare-sort T@Field_9368_9369 0)
(declare-sort T@Field_13597_13598 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_12700_12705 0)
(declare-sort T@Field_13610_13615 0)
(declare-sort T@Field_5335_1211 0)
(declare-sort T@Field_5335_12705 0)
(declare-sort T@Field_5335_12719 0)
(declare-sort T@Field_12685_1622 0)
(declare-sort T@Field_12685_5338 0)
(declare-sort T@Field_12685_1211 0)
(declare-sort T@Field_12718_12719 0)
(declare-sort T@Field_13597_1622 0)
(declare-sort T@Field_13597_5338 0)
(declare-sort T@Field_13597_1211 0)
(declare-datatypes ((T@PolymorphicMapType_9316 0)) (((PolymorphicMapType_9316 (|PolymorphicMapType_9316_5335_1622#PolymorphicMapType_9316| (Array T@Ref T@Field_9355_53 Real)) (|PolymorphicMapType_9316_5337_5338#PolymorphicMapType_9316| (Array T@Ref T@Field_9368_9369 Real)) (|PolymorphicMapType_9316_5341_5342#PolymorphicMapType_9316| (Array T@Ref T@Field_13597_13598 Real)) (|PolymorphicMapType_9316_5267_1211#PolymorphicMapType_9316| (Array T@Ref T@Field_12685_1211 Real)) (|PolymorphicMapType_9316_5335_5342#PolymorphicMapType_9316| (Array T@Ref T@Field_5335_12719 Real)) (|PolymorphicMapType_9316_5335_1211#PolymorphicMapType_9316| (Array T@Ref T@Field_5335_1211 Real)) (|PolymorphicMapType_9316_5335_44266#PolymorphicMapType_9316| (Array T@Ref T@Field_5335_12705 Real)) (|PolymorphicMapType_9316_5341_1622#PolymorphicMapType_9316| (Array T@Ref T@Field_13597_1622 Real)) (|PolymorphicMapType_9316_5341_5338#PolymorphicMapType_9316| (Array T@Ref T@Field_13597_5338 Real)) (|PolymorphicMapType_9316_5341_1211#PolymorphicMapType_9316| (Array T@Ref T@Field_13597_1211 Real)) (|PolymorphicMapType_9316_5341_44677#PolymorphicMapType_9316| (Array T@Ref T@Field_13610_13615 Real)) (|PolymorphicMapType_9316_5267_1622#PolymorphicMapType_9316| (Array T@Ref T@Field_12685_1622 Real)) (|PolymorphicMapType_9316_5267_5338#PolymorphicMapType_9316| (Array T@Ref T@Field_12685_5338 Real)) (|PolymorphicMapType_9316_5267_5342#PolymorphicMapType_9316| (Array T@Ref T@Field_12718_12719 Real)) (|PolymorphicMapType_9316_5267_45091#PolymorphicMapType_9316| (Array T@Ref T@Field_12700_12705 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9844 0)) (((PolymorphicMapType_9844 (|PolymorphicMapType_9844_5337_5338#PolymorphicMapType_9844| (Array T@Ref T@Field_9368_9369 Bool)) (|PolymorphicMapType_9844_5335_1622#PolymorphicMapType_9844| (Array T@Ref T@Field_9355_53 Bool)) (|PolymorphicMapType_9844_5337_1211#PolymorphicMapType_9844| (Array T@Ref T@Field_5335_1211 Bool)) (|PolymorphicMapType_9844_5337_34169#PolymorphicMapType_9844| (Array T@Ref T@Field_5335_12705 Bool)) (|PolymorphicMapType_9844_5337_12719#PolymorphicMapType_9844| (Array T@Ref T@Field_5335_12719 Bool)) (|PolymorphicMapType_9844_12685_5338#PolymorphicMapType_9844| (Array T@Ref T@Field_12685_5338 Bool)) (|PolymorphicMapType_9844_12685_1622#PolymorphicMapType_9844| (Array T@Ref T@Field_12685_1622 Bool)) (|PolymorphicMapType_9844_12685_1211#PolymorphicMapType_9844| (Array T@Ref T@Field_12685_1211 Bool)) (|PolymorphicMapType_9844_12685_35217#PolymorphicMapType_9844| (Array T@Ref T@Field_12700_12705 Bool)) (|PolymorphicMapType_9844_12685_12719#PolymorphicMapType_9844| (Array T@Ref T@Field_12718_12719 Bool)) (|PolymorphicMapType_9844_13597_5338#PolymorphicMapType_9844| (Array T@Ref T@Field_13597_5338 Bool)) (|PolymorphicMapType_9844_13597_1622#PolymorphicMapType_9844| (Array T@Ref T@Field_13597_1622 Bool)) (|PolymorphicMapType_9844_13597_1211#PolymorphicMapType_9844| (Array T@Ref T@Field_13597_1211 Bool)) (|PolymorphicMapType_9844_13597_36265#PolymorphicMapType_9844| (Array T@Ref T@Field_13610_13615 Bool)) (|PolymorphicMapType_9844_13597_12719#PolymorphicMapType_9844| (Array T@Ref T@Field_13597_13598 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9295 0)) (((PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| (Array T@Ref T@Field_9355_53 Bool)) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| (Array T@Ref T@Field_9368_9369 T@Ref)) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| (Array T@Ref T@Field_13597_13598 T@FrameType)) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| (Array T@Ref T@Field_12700_12705 T@PolymorphicMapType_9844)) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| (Array T@Ref T@Field_13610_13615 T@PolymorphicMapType_9844)) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| (Array T@Ref T@Field_5335_1211 Int)) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| (Array T@Ref T@Field_5335_12705 T@PolymorphicMapType_9844)) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| (Array T@Ref T@Field_5335_12719 T@FrameType)) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| (Array T@Ref T@Field_12685_1622 Bool)) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| (Array T@Ref T@Field_12685_5338 T@Ref)) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| (Array T@Ref T@Field_12685_1211 Int)) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| (Array T@Ref T@Field_12718_12719 T@FrameType)) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| (Array T@Ref T@Field_13597_1622 Bool)) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| (Array T@Ref T@Field_13597_5338 T@Ref)) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| (Array T@Ref T@Field_13597_1211 Int)) ) ) ))
(declare-fun $allocated () T@Field_9355_53)
(declare-fun b_32 () T@Field_9355_53)
(declare-fun f_7 () T@Field_9368_9369)
(declare-fun succHeap (T@PolymorphicMapType_9295 T@PolymorphicMapType_9295) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9295 T@PolymorphicMapType_9295) Bool)
(declare-fun state (T@PolymorphicMapType_9295 T@PolymorphicMapType_9316) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9316) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9844)
(declare-fun Cell (T@Ref) T@Field_13597_13598)
(declare-fun IsPredicateField_5341_5342 (T@Field_13597_13598) Bool)
(declare-fun |Cell#trigger_5341| (T@PolymorphicMapType_9295 T@Field_13597_13598) Bool)
(declare-fun |Cell#everUsed_5341| (T@Field_13597_13598) Bool)
(declare-fun WandMaskField_5284 (T@Field_12718_12719) T@Field_12700_12705)
(declare-fun |wand#ft| (T@Ref T@Ref Real T@Ref Real T@Ref) T@Field_12718_12719)
(declare-fun |wand#sm| (T@Ref T@Ref Real T@Ref Real T@Ref) T@Field_12700_12705)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9295 T@PolymorphicMapType_9295 T@PolymorphicMapType_9316) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5341 (T@Field_13597_13598) T@Field_13610_13615)
(declare-fun HasDirectPerm_13597_12719 (T@PolymorphicMapType_9316 T@Ref T@Field_13597_13598) Bool)
(declare-fun IsPredicateField_5284_5285 (T@Field_12718_12719) Bool)
(declare-fun PredicateMaskField_12685 (T@Field_12718_12719) T@Field_12700_12705)
(declare-fun HasDirectPerm_12685_12719 (T@PolymorphicMapType_9316 T@Ref T@Field_12718_12719) Bool)
(declare-fun IsPredicateField_5335_32566 (T@Field_5335_12719) Bool)
(declare-fun PredicateMaskField_5335 (T@Field_5335_12719) T@Field_5335_12705)
(declare-fun HasDirectPerm_5335_12719 (T@PolymorphicMapType_9316 T@Ref T@Field_5335_12719) Bool)
(declare-fun IsWandField_13597_38240 (T@Field_13597_13598) Bool)
(declare-fun WandMaskField_13597 (T@Field_13597_13598) T@Field_13610_13615)
(declare-fun IsWandField_5284_5285 (T@Field_12718_12719) Bool)
(declare-fun IsWandField_5335_37558 (T@Field_5335_12719) Bool)
(declare-fun WandMaskField_5335 (T@Field_5335_12719) T@Field_5335_12705)
(declare-fun |Cell#sm| (T@Ref) T@Field_13610_13615)
(declare-fun dummyHeap () T@PolymorphicMapType_9295)
(declare-fun ZeroMask () T@PolymorphicMapType_9316)
(declare-fun InsidePredicate_12685_12685 (T@Field_12718_12719 T@FrameType T@Field_12718_12719 T@FrameType) Bool)
(declare-fun InsidePredicate_9355_9355 (T@Field_5335_12719 T@FrameType T@Field_5335_12719 T@FrameType) Bool)
(declare-fun InsidePredicate_5341_5341 (T@Field_13597_13598 T@FrameType T@Field_13597_13598 T@FrameType) Bool)
(declare-fun IsPredicateField_5335_1622 (T@Field_9355_53) Bool)
(declare-fun IsWandField_5335_1622 (T@Field_9355_53) Bool)
(declare-fun IsPredicateField_5337_5338 (T@Field_9368_9369) Bool)
(declare-fun IsWandField_5337_5338 (T@Field_9368_9369) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5267_48518 (T@Field_12700_12705) Bool)
(declare-fun IsWandField_5267_48534 (T@Field_12700_12705) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5267_1211 (T@Field_12685_1211) Bool)
(declare-fun IsWandField_5267_1211 (T@Field_12685_1211) Bool)
(declare-fun IsPredicateField_5267_5338 (T@Field_12685_5338) Bool)
(declare-fun IsWandField_5267_5338 (T@Field_12685_5338) Bool)
(declare-fun IsPredicateField_5267_1622 (T@Field_12685_1622) Bool)
(declare-fun IsWandField_5267_1622 (T@Field_12685_1622) Bool)
(declare-fun IsPredicateField_5341_47701 (T@Field_13610_13615) Bool)
(declare-fun IsWandField_5341_47717 (T@Field_13610_13615) Bool)
(declare-fun IsPredicateField_5341_1211 (T@Field_13597_1211) Bool)
(declare-fun IsWandField_5341_1211 (T@Field_13597_1211) Bool)
(declare-fun IsPredicateField_5341_5338 (T@Field_13597_5338) Bool)
(declare-fun IsWandField_5341_5338 (T@Field_13597_5338) Bool)
(declare-fun IsPredicateField_5341_1622 (T@Field_13597_1622) Bool)
(declare-fun IsWandField_5341_1622 (T@Field_13597_1622) Bool)
(declare-fun IsPredicateField_5335_46870 (T@Field_5335_12705) Bool)
(declare-fun IsWandField_5335_46886 (T@Field_5335_12705) Bool)
(declare-fun IsPredicateField_5335_1211 (T@Field_5335_1211) Bool)
(declare-fun IsWandField_5335_1211 (T@Field_5335_1211) Bool)
(declare-fun HasDirectPerm_13597_32110 (T@PolymorphicMapType_9316 T@Ref T@Field_13610_13615) Bool)
(declare-fun HasDirectPerm_13597_1211 (T@PolymorphicMapType_9316 T@Ref T@Field_13597_1211) Bool)
(declare-fun HasDirectPerm_13597_5338 (T@PolymorphicMapType_9316 T@Ref T@Field_13597_5338) Bool)
(declare-fun HasDirectPerm_13597_1622 (T@PolymorphicMapType_9316 T@Ref T@Field_13597_1622) Bool)
(declare-fun HasDirectPerm_12685_30975 (T@PolymorphicMapType_9316 T@Ref T@Field_12700_12705) Bool)
(declare-fun HasDirectPerm_12685_1211 (T@PolymorphicMapType_9316 T@Ref T@Field_12685_1211) Bool)
(declare-fun HasDirectPerm_12685_5338 (T@PolymorphicMapType_9316 T@Ref T@Field_12685_5338) Bool)
(declare-fun HasDirectPerm_12685_1622 (T@PolymorphicMapType_9316 T@Ref T@Field_12685_1622) Bool)
(declare-fun HasDirectPerm_5335_29797 (T@PolymorphicMapType_9316 T@Ref T@Field_5335_12705) Bool)
(declare-fun HasDirectPerm_5335_1211 (T@PolymorphicMapType_9316 T@Ref T@Field_5335_1211) Bool)
(declare-fun HasDirectPerm_5337_5338 (T@PolymorphicMapType_9316 T@Ref T@Field_9368_9369) Bool)
(declare-fun HasDirectPerm_5335_1622 (T@PolymorphicMapType_9316 T@Ref T@Field_9355_53) Bool)
(declare-fun wand (T@Ref T@Ref Real T@Ref Real T@Ref) T@Field_12685_1211)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun getPredWandId_5267_1211 (T@Field_12685_1211) Int)
(declare-fun sumMask (T@PolymorphicMapType_9316 T@PolymorphicMapType_9316 T@PolymorphicMapType_9316) Bool)
(declare-fun getPredWandId_5341_5342 (T@Field_13597_13598) Int)
(declare-fun InsidePredicate_12685_9355 (T@Field_12718_12719 T@FrameType T@Field_5335_12719 T@FrameType) Bool)
(declare-fun InsidePredicate_12685_5341 (T@Field_12718_12719 T@FrameType T@Field_13597_13598 T@FrameType) Bool)
(declare-fun InsidePredicate_9355_12685 (T@Field_5335_12719 T@FrameType T@Field_12718_12719 T@FrameType) Bool)
(declare-fun InsidePredicate_9355_5341 (T@Field_5335_12719 T@FrameType T@Field_13597_13598 T@FrameType) Bool)
(declare-fun InsidePredicate_5341_12685 (T@Field_13597_13598 T@FrameType T@Field_12718_12719 T@FrameType) Bool)
(declare-fun InsidePredicate_5341_9355 (T@Field_13597_13598 T@FrameType T@Field_5335_12719 T@FrameType) Bool)
(assert (distinct $allocated b_32)
)
(assert (forall ((Heap0 T@PolymorphicMapType_9295) (Heap1 T@PolymorphicMapType_9295) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9295) (Mask T@PolymorphicMapType_9316) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9295) (Heap1@@0 T@PolymorphicMapType_9295) (Heap2 T@PolymorphicMapType_9295) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_13597_13598) ) (!  (not (select (|PolymorphicMapType_9844_13597_12719#PolymorphicMapType_9844| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9844_13597_12719#PolymorphicMapType_9844| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_13610_13615) ) (!  (not (select (|PolymorphicMapType_9844_13597_36265#PolymorphicMapType_9844| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9844_13597_36265#PolymorphicMapType_9844| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13597_1211) ) (!  (not (select (|PolymorphicMapType_9844_13597_1211#PolymorphicMapType_9844| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9844_13597_1211#PolymorphicMapType_9844| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_13597_1622) ) (!  (not (select (|PolymorphicMapType_9844_13597_1622#PolymorphicMapType_9844| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9844_13597_1622#PolymorphicMapType_9844| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_13597_5338) ) (!  (not (select (|PolymorphicMapType_9844_13597_5338#PolymorphicMapType_9844| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9844_13597_5338#PolymorphicMapType_9844| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_12718_12719) ) (!  (not (select (|PolymorphicMapType_9844_12685_12719#PolymorphicMapType_9844| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9844_12685_12719#PolymorphicMapType_9844| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_12700_12705) ) (!  (not (select (|PolymorphicMapType_9844_12685_35217#PolymorphicMapType_9844| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9844_12685_35217#PolymorphicMapType_9844| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_12685_1211) ) (!  (not (select (|PolymorphicMapType_9844_12685_1211#PolymorphicMapType_9844| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9844_12685_1211#PolymorphicMapType_9844| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_12685_1622) ) (!  (not (select (|PolymorphicMapType_9844_12685_1622#PolymorphicMapType_9844| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9844_12685_1622#PolymorphicMapType_9844| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_12685_5338) ) (!  (not (select (|PolymorphicMapType_9844_12685_5338#PolymorphicMapType_9844| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9844_12685_5338#PolymorphicMapType_9844| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_5335_12719) ) (!  (not (select (|PolymorphicMapType_9844_5337_12719#PolymorphicMapType_9844| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9844_5337_12719#PolymorphicMapType_9844| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_5335_12705) ) (!  (not (select (|PolymorphicMapType_9844_5337_34169#PolymorphicMapType_9844| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9844_5337_34169#PolymorphicMapType_9844| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5335_1211) ) (!  (not (select (|PolymorphicMapType_9844_5337_1211#PolymorphicMapType_9844| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9844_5337_1211#PolymorphicMapType_9844| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_9355_53) ) (!  (not (select (|PolymorphicMapType_9844_5335_1622#PolymorphicMapType_9844| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9844_5335_1622#PolymorphicMapType_9844| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_9368_9369) ) (!  (not (select (|PolymorphicMapType_9844_5337_5338#PolymorphicMapType_9844| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9844_5337_5338#PolymorphicMapType_9844| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_5341_5342 (Cell x))
 :qid |stdinbpl.235:15|
 :skolemid |30|
 :pattern ( (Cell x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9295) (x@@0 T@Ref) ) (! (|Cell#everUsed_5341| (Cell x@@0))
 :qid |stdinbpl.254:15|
 :skolemid |34|
 :pattern ( (|Cell#trigger_5341| Heap@@0 (Cell x@@0)))
)))
(assert (forall ((arg1 T@Ref) (arg2 T@Ref) (arg3 Real) (arg4 T@Ref) (arg5 Real) (arg6 T@Ref) ) (! (= (|wand#sm| arg1 arg2 arg3 arg4 arg5 arg6) (WandMaskField_5284 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_5284 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9295) (ExhaleHeap T@PolymorphicMapType_9295) (Mask@@0 T@PolymorphicMapType_9316) (pm_f_19 T@Field_13597_13598) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_13597_12719 Mask@@0 null pm_f_19) (IsPredicateField_5341_5342 pm_f_19)) (= (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@1) null (PredicateMaskField_5341 pm_f_19)) (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| ExhaleHeap) null (PredicateMaskField_5341 pm_f_19)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_5341_5342 pm_f_19) (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| ExhaleHeap) null (PredicateMaskField_5341 pm_f_19)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9295) (ExhaleHeap@@0 T@PolymorphicMapType_9295) (Mask@@1 T@PolymorphicMapType_9316) (pm_f_19@@0 T@Field_12718_12719) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_12685_12719 Mask@@1 null pm_f_19@@0) (IsPredicateField_5284_5285 pm_f_19@@0)) (= (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@2) null (PredicateMaskField_12685 pm_f_19@@0)) (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| ExhaleHeap@@0) null (PredicateMaskField_12685 pm_f_19@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5284_5285 pm_f_19@@0) (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| ExhaleHeap@@0) null (PredicateMaskField_12685 pm_f_19@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9295) (ExhaleHeap@@1 T@PolymorphicMapType_9295) (Mask@@2 T@PolymorphicMapType_9316) (pm_f_19@@1 T@Field_5335_12719) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5335_12719 Mask@@2 null pm_f_19@@1) (IsPredicateField_5335_32566 pm_f_19@@1)) (= (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@3) null (PredicateMaskField_5335 pm_f_19@@1)) (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| ExhaleHeap@@1) null (PredicateMaskField_5335 pm_f_19@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5335_32566 pm_f_19@@1) (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| ExhaleHeap@@1) null (PredicateMaskField_5335 pm_f_19@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9295) (ExhaleHeap@@2 T@PolymorphicMapType_9295) (Mask@@3 T@PolymorphicMapType_9316) (pm_f_19@@2 T@Field_13597_13598) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_13597_12719 Mask@@3 null pm_f_19@@2) (IsWandField_13597_38240 pm_f_19@@2)) (= (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@4) null (WandMaskField_13597 pm_f_19@@2)) (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| ExhaleHeap@@2) null (WandMaskField_13597 pm_f_19@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_13597_38240 pm_f_19@@2) (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| ExhaleHeap@@2) null (WandMaskField_13597 pm_f_19@@2)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9295) (ExhaleHeap@@3 T@PolymorphicMapType_9295) (Mask@@4 T@PolymorphicMapType_9316) (pm_f_19@@3 T@Field_12718_12719) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_12685_12719 Mask@@4 null pm_f_19@@3) (IsWandField_5284_5285 pm_f_19@@3)) (= (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@5) null (WandMaskField_5284 pm_f_19@@3)) (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| ExhaleHeap@@3) null (WandMaskField_5284 pm_f_19@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsWandField_5284_5285 pm_f_19@@3) (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| ExhaleHeap@@3) null (WandMaskField_5284 pm_f_19@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9295) (ExhaleHeap@@4 T@PolymorphicMapType_9295) (Mask@@5 T@PolymorphicMapType_9316) (pm_f_19@@4 T@Field_5335_12719) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5335_12719 Mask@@5 null pm_f_19@@4) (IsWandField_5335_37558 pm_f_19@@4)) (= (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@6) null (WandMaskField_5335 pm_f_19@@4)) (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| ExhaleHeap@@4) null (WandMaskField_5335 pm_f_19@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsWandField_5335_37558 pm_f_19@@4) (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| ExhaleHeap@@4) null (WandMaskField_5335 pm_f_19@@4)))
)))
(assert (forall ((x@@1 T@Ref) (x2 T@Ref) ) (!  (=> (= (Cell x@@1) (Cell x2)) (= x@@1 x2))
 :qid |stdinbpl.245:15|
 :skolemid |32|
 :pattern ( (Cell x@@1) (Cell x2))
)))
(assert (forall ((x@@2 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|Cell#sm| x@@2) (|Cell#sm| x2@@0)) (= x@@2 x2@@0))
 :qid |stdinbpl.249:15|
 :skolemid |33|
 :pattern ( (|Cell#sm| x@@2) (|Cell#sm| x2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9295) (ExhaleHeap@@5 T@PolymorphicMapType_9295) (Mask@@6 T@PolymorphicMapType_9316) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@7) o_12 $allocated) (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| ExhaleHeap@@5) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| ExhaleHeap@@5) o_12 $allocated))
)))
(assert (forall ((p T@Field_12718_12719) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12685_12685 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12685_12685 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_5335_12719) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_9355_9355 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9355_9355 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_13597_13598) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_5341_5341 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5341_5341 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_5335_1622 b_32)))
(assert  (not (IsWandField_5335_1622 b_32)))
(assert  (not (IsPredicateField_5337_5338 f_7)))
(assert  (not (IsWandField_5337_5338 f_7)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9295) (ExhaleHeap@@6 T@PolymorphicMapType_9295) (Mask@@7 T@PolymorphicMapType_9316) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@8 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_9316) (o_2@@14 T@Ref) (f_4@@14 T@Field_12700_12705) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_9316_5267_45091#PolymorphicMapType_9316| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5267_48518 f_4@@14))) (not (IsWandField_5267_48534 f_4@@14))) (<= (select (|PolymorphicMapType_9316_5267_45091#PolymorphicMapType_9316| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_9316_5267_45091#PolymorphicMapType_9316| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_9316) (o_2@@15 T@Ref) (f_4@@15 T@Field_12685_1211) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_9316_5267_1211#PolymorphicMapType_9316| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5267_1211 f_4@@15))) (not (IsWandField_5267_1211 f_4@@15))) (<= (select (|PolymorphicMapType_9316_5267_1211#PolymorphicMapType_9316| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_9316_5267_1211#PolymorphicMapType_9316| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9316) (o_2@@16 T@Ref) (f_4@@16 T@Field_12718_12719) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_9316_5267_5342#PolymorphicMapType_9316| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5284_5285 f_4@@16))) (not (IsWandField_5284_5285 f_4@@16))) (<= (select (|PolymorphicMapType_9316_5267_5342#PolymorphicMapType_9316| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_9316_5267_5342#PolymorphicMapType_9316| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9316) (o_2@@17 T@Ref) (f_4@@17 T@Field_12685_5338) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_9316_5267_5338#PolymorphicMapType_9316| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5267_5338 f_4@@17))) (not (IsWandField_5267_5338 f_4@@17))) (<= (select (|PolymorphicMapType_9316_5267_5338#PolymorphicMapType_9316| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_9316_5267_5338#PolymorphicMapType_9316| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9316) (o_2@@18 T@Ref) (f_4@@18 T@Field_12685_1622) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_9316_5267_1622#PolymorphicMapType_9316| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5267_1622 f_4@@18))) (not (IsWandField_5267_1622 f_4@@18))) (<= (select (|PolymorphicMapType_9316_5267_1622#PolymorphicMapType_9316| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_9316_5267_1622#PolymorphicMapType_9316| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9316) (o_2@@19 T@Ref) (f_4@@19 T@Field_13610_13615) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_9316_5341_44677#PolymorphicMapType_9316| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5341_47701 f_4@@19))) (not (IsWandField_5341_47717 f_4@@19))) (<= (select (|PolymorphicMapType_9316_5341_44677#PolymorphicMapType_9316| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_9316_5341_44677#PolymorphicMapType_9316| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9316) (o_2@@20 T@Ref) (f_4@@20 T@Field_13597_1211) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_9316_5341_1211#PolymorphicMapType_9316| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5341_1211 f_4@@20))) (not (IsWandField_5341_1211 f_4@@20))) (<= (select (|PolymorphicMapType_9316_5341_1211#PolymorphicMapType_9316| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_9316_5341_1211#PolymorphicMapType_9316| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_9316) (o_2@@21 T@Ref) (f_4@@21 T@Field_13597_13598) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_9316_5341_5342#PolymorphicMapType_9316| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5341_5342 f_4@@21))) (not (IsWandField_13597_38240 f_4@@21))) (<= (select (|PolymorphicMapType_9316_5341_5342#PolymorphicMapType_9316| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_9316_5341_5342#PolymorphicMapType_9316| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_9316) (o_2@@22 T@Ref) (f_4@@22 T@Field_13597_5338) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_9316_5341_5338#PolymorphicMapType_9316| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5341_5338 f_4@@22))) (not (IsWandField_5341_5338 f_4@@22))) (<= (select (|PolymorphicMapType_9316_5341_5338#PolymorphicMapType_9316| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_9316_5341_5338#PolymorphicMapType_9316| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_9316) (o_2@@23 T@Ref) (f_4@@23 T@Field_13597_1622) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_9316_5341_1622#PolymorphicMapType_9316| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5341_1622 f_4@@23))) (not (IsWandField_5341_1622 f_4@@23))) (<= (select (|PolymorphicMapType_9316_5341_1622#PolymorphicMapType_9316| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_9316_5341_1622#PolymorphicMapType_9316| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9316) (o_2@@24 T@Ref) (f_4@@24 T@Field_5335_12705) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_9316_5335_44266#PolymorphicMapType_9316| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5335_46870 f_4@@24))) (not (IsWandField_5335_46886 f_4@@24))) (<= (select (|PolymorphicMapType_9316_5335_44266#PolymorphicMapType_9316| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_9316_5335_44266#PolymorphicMapType_9316| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9316) (o_2@@25 T@Ref) (f_4@@25 T@Field_5335_1211) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_9316_5335_1211#PolymorphicMapType_9316| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5335_1211 f_4@@25))) (not (IsWandField_5335_1211 f_4@@25))) (<= (select (|PolymorphicMapType_9316_5335_1211#PolymorphicMapType_9316| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_9316_5335_1211#PolymorphicMapType_9316| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9316) (o_2@@26 T@Ref) (f_4@@26 T@Field_5335_12719) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_9316_5335_5342#PolymorphicMapType_9316| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5335_32566 f_4@@26))) (not (IsWandField_5335_37558 f_4@@26))) (<= (select (|PolymorphicMapType_9316_5335_5342#PolymorphicMapType_9316| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_9316_5335_5342#PolymorphicMapType_9316| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9316) (o_2@@27 T@Ref) (f_4@@27 T@Field_9368_9369) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_9316_5337_5338#PolymorphicMapType_9316| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5337_5338 f_4@@27))) (not (IsWandField_5337_5338 f_4@@27))) (<= (select (|PolymorphicMapType_9316_5337_5338#PolymorphicMapType_9316| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_9316_5337_5338#PolymorphicMapType_9316| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9316) (o_2@@28 T@Ref) (f_4@@28 T@Field_9355_53) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_9316_5335_1622#PolymorphicMapType_9316| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_5335_1622 f_4@@28))) (not (IsWandField_5335_1622 f_4@@28))) (<= (select (|PolymorphicMapType_9316_5335_1622#PolymorphicMapType_9316| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_9316_5335_1622#PolymorphicMapType_9316| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9316) (o_2@@29 T@Ref) (f_4@@29 T@Field_13597_13598) ) (! (= (HasDirectPerm_13597_12719 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_9316_5341_5342#PolymorphicMapType_9316| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13597_12719 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_9316) (o_2@@30 T@Ref) (f_4@@30 T@Field_13610_13615) ) (! (= (HasDirectPerm_13597_32110 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_9316_5341_44677#PolymorphicMapType_9316| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13597_32110 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_9316) (o_2@@31 T@Ref) (f_4@@31 T@Field_13597_1211) ) (! (= (HasDirectPerm_13597_1211 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_9316_5341_1211#PolymorphicMapType_9316| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13597_1211 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_9316) (o_2@@32 T@Ref) (f_4@@32 T@Field_13597_5338) ) (! (= (HasDirectPerm_13597_5338 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_9316_5341_5338#PolymorphicMapType_9316| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13597_5338 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_9316) (o_2@@33 T@Ref) (f_4@@33 T@Field_13597_1622) ) (! (= (HasDirectPerm_13597_1622 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_9316_5341_1622#PolymorphicMapType_9316| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13597_1622 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_9316) (o_2@@34 T@Ref) (f_4@@34 T@Field_12718_12719) ) (! (= (HasDirectPerm_12685_12719 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_9316_5267_5342#PolymorphicMapType_9316| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12685_12719 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_9316) (o_2@@35 T@Ref) (f_4@@35 T@Field_12700_12705) ) (! (= (HasDirectPerm_12685_30975 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_9316_5267_45091#PolymorphicMapType_9316| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12685_30975 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_9316) (o_2@@36 T@Ref) (f_4@@36 T@Field_12685_1211) ) (! (= (HasDirectPerm_12685_1211 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_9316_5267_1211#PolymorphicMapType_9316| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12685_1211 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_9316) (o_2@@37 T@Ref) (f_4@@37 T@Field_12685_5338) ) (! (= (HasDirectPerm_12685_5338 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_9316_5267_5338#PolymorphicMapType_9316| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12685_5338 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_9316) (o_2@@38 T@Ref) (f_4@@38 T@Field_12685_1622) ) (! (= (HasDirectPerm_12685_1622 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_9316_5267_1622#PolymorphicMapType_9316| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12685_1622 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_9316) (o_2@@39 T@Ref) (f_4@@39 T@Field_5335_12719) ) (! (= (HasDirectPerm_5335_12719 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_9316_5335_5342#PolymorphicMapType_9316| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5335_12719 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_9316) (o_2@@40 T@Ref) (f_4@@40 T@Field_5335_12705) ) (! (= (HasDirectPerm_5335_29797 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_9316_5335_44266#PolymorphicMapType_9316| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5335_29797 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_9316) (o_2@@41 T@Ref) (f_4@@41 T@Field_5335_1211) ) (! (= (HasDirectPerm_5335_1211 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_9316_5335_1211#PolymorphicMapType_9316| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5335_1211 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_9316) (o_2@@42 T@Ref) (f_4@@42 T@Field_9368_9369) ) (! (= (HasDirectPerm_5337_5338 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_9316_5337_5338#PolymorphicMapType_9316| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5337_5338 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_9316) (o_2@@43 T@Ref) (f_4@@43 T@Field_9355_53) ) (! (= (HasDirectPerm_5335_1622 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_9316_5335_1622#PolymorphicMapType_9316| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5335_1622 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 T@Ref) (arg3@@0 Real) (arg4@@0 T@Ref) (arg5@@0 Real) (arg6@@0 T@Ref) (arg1_2 T@Ref) (arg2_2 T@Ref) (arg3_2 Real) (arg4_2 T@Ref) (arg5_2 Real) (arg6_2 T@Ref) ) (!  (=> (= (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2)) (and (= arg1@@0 arg1_2) (and (= arg2@@0 arg2_2) (and (= arg3@@0 arg3_2) (and (= arg4@@0 arg4_2) (and (= arg5@@0 arg5_2) (= arg6@@0 arg6_2)))))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9295) (ExhaleHeap@@7 T@PolymorphicMapType_9295) (Mask@@38 T@PolymorphicMapType_9316) (o_12@@0 T@Ref) (f_19 T@Field_13597_13598) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_13597_12719 Mask@@38 o_12@@0 f_19) (= (select (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@9) o_12@@0 f_19) (select (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| ExhaleHeap@@7) o_12@@0 f_19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| ExhaleHeap@@7) o_12@@0 f_19))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9295) (ExhaleHeap@@8 T@PolymorphicMapType_9295) (Mask@@39 T@PolymorphicMapType_9316) (o_12@@1 T@Ref) (f_19@@0 T@Field_13610_13615) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_13597_32110 Mask@@39 o_12@@1 f_19@@0) (= (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@10) o_12@@1 f_19@@0) (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| ExhaleHeap@@8) o_12@@1 f_19@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| ExhaleHeap@@8) o_12@@1 f_19@@0))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9295) (ExhaleHeap@@9 T@PolymorphicMapType_9295) (Mask@@40 T@PolymorphicMapType_9316) (o_12@@2 T@Ref) (f_19@@1 T@Field_13597_1211) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_13597_1211 Mask@@40 o_12@@2 f_19@@1) (= (select (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@11) o_12@@2 f_19@@1) (select (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| ExhaleHeap@@9) o_12@@2 f_19@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| ExhaleHeap@@9) o_12@@2 f_19@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9295) (ExhaleHeap@@10 T@PolymorphicMapType_9295) (Mask@@41 T@PolymorphicMapType_9316) (o_12@@3 T@Ref) (f_19@@2 T@Field_13597_5338) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_13597_5338 Mask@@41 o_12@@3 f_19@@2) (= (select (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@12) o_12@@3 f_19@@2) (select (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| ExhaleHeap@@10) o_12@@3 f_19@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| ExhaleHeap@@10) o_12@@3 f_19@@2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9295) (ExhaleHeap@@11 T@PolymorphicMapType_9295) (Mask@@42 T@PolymorphicMapType_9316) (o_12@@4 T@Ref) (f_19@@3 T@Field_13597_1622) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_13597_1622 Mask@@42 o_12@@4 f_19@@3) (= (select (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@13) o_12@@4 f_19@@3) (select (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| ExhaleHeap@@11) o_12@@4 f_19@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| ExhaleHeap@@11) o_12@@4 f_19@@3))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9295) (ExhaleHeap@@12 T@PolymorphicMapType_9295) (Mask@@43 T@PolymorphicMapType_9316) (o_12@@5 T@Ref) (f_19@@4 T@Field_12718_12719) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_12685_12719 Mask@@43 o_12@@5 f_19@@4) (= (select (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@14) o_12@@5 f_19@@4) (select (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| ExhaleHeap@@12) o_12@@5 f_19@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| ExhaleHeap@@12) o_12@@5 f_19@@4))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9295) (ExhaleHeap@@13 T@PolymorphicMapType_9295) (Mask@@44 T@PolymorphicMapType_9316) (o_12@@6 T@Ref) (f_19@@5 T@Field_12700_12705) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_12685_30975 Mask@@44 o_12@@6 f_19@@5) (= (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@15) o_12@@6 f_19@@5) (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| ExhaleHeap@@13) o_12@@6 f_19@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| ExhaleHeap@@13) o_12@@6 f_19@@5))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9295) (ExhaleHeap@@14 T@PolymorphicMapType_9295) (Mask@@45 T@PolymorphicMapType_9316) (o_12@@7 T@Ref) (f_19@@6 T@Field_12685_1211) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_12685_1211 Mask@@45 o_12@@7 f_19@@6) (= (select (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@16) o_12@@7 f_19@@6) (select (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| ExhaleHeap@@14) o_12@@7 f_19@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| ExhaleHeap@@14) o_12@@7 f_19@@6))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9295) (ExhaleHeap@@15 T@PolymorphicMapType_9295) (Mask@@46 T@PolymorphicMapType_9316) (o_12@@8 T@Ref) (f_19@@7 T@Field_12685_5338) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_12685_5338 Mask@@46 o_12@@8 f_19@@7) (= (select (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@17) o_12@@8 f_19@@7) (select (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| ExhaleHeap@@15) o_12@@8 f_19@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| ExhaleHeap@@15) o_12@@8 f_19@@7))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9295) (ExhaleHeap@@16 T@PolymorphicMapType_9295) (Mask@@47 T@PolymorphicMapType_9316) (o_12@@9 T@Ref) (f_19@@8 T@Field_12685_1622) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_12685_1622 Mask@@47 o_12@@9 f_19@@8) (= (select (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@18) o_12@@9 f_19@@8) (select (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| ExhaleHeap@@16) o_12@@9 f_19@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| ExhaleHeap@@16) o_12@@9 f_19@@8))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9295) (ExhaleHeap@@17 T@PolymorphicMapType_9295) (Mask@@48 T@PolymorphicMapType_9316) (o_12@@10 T@Ref) (f_19@@9 T@Field_5335_12719) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_5335_12719 Mask@@48 o_12@@10 f_19@@9) (= (select (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@19) o_12@@10 f_19@@9) (select (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| ExhaleHeap@@17) o_12@@10 f_19@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| ExhaleHeap@@17) o_12@@10 f_19@@9))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9295) (ExhaleHeap@@18 T@PolymorphicMapType_9295) (Mask@@49 T@PolymorphicMapType_9316) (o_12@@11 T@Ref) (f_19@@10 T@Field_5335_12705) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_5335_29797 Mask@@49 o_12@@11 f_19@@10) (= (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@20) o_12@@11 f_19@@10) (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| ExhaleHeap@@18) o_12@@11 f_19@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| ExhaleHeap@@18) o_12@@11 f_19@@10))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9295) (ExhaleHeap@@19 T@PolymorphicMapType_9295) (Mask@@50 T@PolymorphicMapType_9316) (o_12@@12 T@Ref) (f_19@@11 T@Field_5335_1211) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_5335_1211 Mask@@50 o_12@@12 f_19@@11) (= (select (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@21) o_12@@12 f_19@@11) (select (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| ExhaleHeap@@19) o_12@@12 f_19@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| ExhaleHeap@@19) o_12@@12 f_19@@11))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9295) (ExhaleHeap@@20 T@PolymorphicMapType_9295) (Mask@@51 T@PolymorphicMapType_9316) (o_12@@13 T@Ref) (f_19@@12 T@Field_9368_9369) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_5337_5338 Mask@@51 o_12@@13 f_19@@12) (= (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@22) o_12@@13 f_19@@12) (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| ExhaleHeap@@20) o_12@@13 f_19@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| ExhaleHeap@@20) o_12@@13 f_19@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9295) (ExhaleHeap@@21 T@PolymorphicMapType_9295) (Mask@@52 T@PolymorphicMapType_9316) (o_12@@14 T@Ref) (f_19@@13 T@Field_9355_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_5335_1622 Mask@@52 o_12@@14 f_19@@13) (= (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@23) o_12@@14 f_19@@13) (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| ExhaleHeap@@21) o_12@@14 f_19@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| ExhaleHeap@@21) o_12@@14 f_19@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_12700_12705) ) (! (= (select (|PolymorphicMapType_9316_5267_45091#PolymorphicMapType_9316| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9316_5267_45091#PolymorphicMapType_9316| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_12685_1211) ) (! (= (select (|PolymorphicMapType_9316_5267_1211#PolymorphicMapType_9316| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9316_5267_1211#PolymorphicMapType_9316| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_12718_12719) ) (! (= (select (|PolymorphicMapType_9316_5267_5342#PolymorphicMapType_9316| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9316_5267_5342#PolymorphicMapType_9316| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_12685_5338) ) (! (= (select (|PolymorphicMapType_9316_5267_5338#PolymorphicMapType_9316| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9316_5267_5338#PolymorphicMapType_9316| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_12685_1622) ) (! (= (select (|PolymorphicMapType_9316_5267_1622#PolymorphicMapType_9316| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9316_5267_1622#PolymorphicMapType_9316| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_13610_13615) ) (! (= (select (|PolymorphicMapType_9316_5341_44677#PolymorphicMapType_9316| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9316_5341_44677#PolymorphicMapType_9316| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_13597_1211) ) (! (= (select (|PolymorphicMapType_9316_5341_1211#PolymorphicMapType_9316| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9316_5341_1211#PolymorphicMapType_9316| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_13597_13598) ) (! (= (select (|PolymorphicMapType_9316_5341_5342#PolymorphicMapType_9316| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9316_5341_5342#PolymorphicMapType_9316| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_13597_5338) ) (! (= (select (|PolymorphicMapType_9316_5341_5338#PolymorphicMapType_9316| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9316_5341_5338#PolymorphicMapType_9316| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_13597_1622) ) (! (= (select (|PolymorphicMapType_9316_5341_1622#PolymorphicMapType_9316| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9316_5341_1622#PolymorphicMapType_9316| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_5335_12705) ) (! (= (select (|PolymorphicMapType_9316_5335_44266#PolymorphicMapType_9316| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9316_5335_44266#PolymorphicMapType_9316| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_5335_1211) ) (! (= (select (|PolymorphicMapType_9316_5335_1211#PolymorphicMapType_9316| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9316_5335_1211#PolymorphicMapType_9316| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_5335_12719) ) (! (= (select (|PolymorphicMapType_9316_5335_5342#PolymorphicMapType_9316| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9316_5335_5342#PolymorphicMapType_9316| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_9368_9369) ) (! (= (select (|PolymorphicMapType_9316_5337_5338#PolymorphicMapType_9316| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9316_5337_5338#PolymorphicMapType_9316| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_9355_53) ) (! (= (select (|PolymorphicMapType_9316_5335_1622#PolymorphicMapType_9316| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9316_5335_1622#PolymorphicMapType_9316| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 T@Ref) (arg3@@1 Real) (arg4@@1 T@Ref) (arg5@@1 Real) (arg6@@1 T@Ref) ) (! (= (getPredWandId_5267_1211 (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1)) 1)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9316) (SummandMask1 T@PolymorphicMapType_9316) (SummandMask2 T@PolymorphicMapType_9316) (o_2@@59 T@Ref) (f_4@@59 T@Field_12700_12705) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9316_5267_45091#PolymorphicMapType_9316| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_9316_5267_45091#PolymorphicMapType_9316| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_9316_5267_45091#PolymorphicMapType_9316| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9316_5267_45091#PolymorphicMapType_9316| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9316_5267_45091#PolymorphicMapType_9316| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9316_5267_45091#PolymorphicMapType_9316| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9316) (SummandMask1@@0 T@PolymorphicMapType_9316) (SummandMask2@@0 T@PolymorphicMapType_9316) (o_2@@60 T@Ref) (f_4@@60 T@Field_12685_1211) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9316_5267_1211#PolymorphicMapType_9316| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_9316_5267_1211#PolymorphicMapType_9316| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_9316_5267_1211#PolymorphicMapType_9316| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9316_5267_1211#PolymorphicMapType_9316| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9316_5267_1211#PolymorphicMapType_9316| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9316_5267_1211#PolymorphicMapType_9316| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9316) (SummandMask1@@1 T@PolymorphicMapType_9316) (SummandMask2@@1 T@PolymorphicMapType_9316) (o_2@@61 T@Ref) (f_4@@61 T@Field_12718_12719) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9316_5267_5342#PolymorphicMapType_9316| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_9316_5267_5342#PolymorphicMapType_9316| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_9316_5267_5342#PolymorphicMapType_9316| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9316_5267_5342#PolymorphicMapType_9316| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9316_5267_5342#PolymorphicMapType_9316| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9316_5267_5342#PolymorphicMapType_9316| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9316) (SummandMask1@@2 T@PolymorphicMapType_9316) (SummandMask2@@2 T@PolymorphicMapType_9316) (o_2@@62 T@Ref) (f_4@@62 T@Field_12685_5338) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9316_5267_5338#PolymorphicMapType_9316| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_9316_5267_5338#PolymorphicMapType_9316| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_9316_5267_5338#PolymorphicMapType_9316| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9316_5267_5338#PolymorphicMapType_9316| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9316_5267_5338#PolymorphicMapType_9316| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9316_5267_5338#PolymorphicMapType_9316| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9316) (SummandMask1@@3 T@PolymorphicMapType_9316) (SummandMask2@@3 T@PolymorphicMapType_9316) (o_2@@63 T@Ref) (f_4@@63 T@Field_12685_1622) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9316_5267_1622#PolymorphicMapType_9316| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_9316_5267_1622#PolymorphicMapType_9316| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_9316_5267_1622#PolymorphicMapType_9316| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9316_5267_1622#PolymorphicMapType_9316| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9316_5267_1622#PolymorphicMapType_9316| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9316_5267_1622#PolymorphicMapType_9316| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9316) (SummandMask1@@4 T@PolymorphicMapType_9316) (SummandMask2@@4 T@PolymorphicMapType_9316) (o_2@@64 T@Ref) (f_4@@64 T@Field_13610_13615) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9316_5341_44677#PolymorphicMapType_9316| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_9316_5341_44677#PolymorphicMapType_9316| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_9316_5341_44677#PolymorphicMapType_9316| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9316_5341_44677#PolymorphicMapType_9316| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9316_5341_44677#PolymorphicMapType_9316| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9316_5341_44677#PolymorphicMapType_9316| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_9316) (SummandMask1@@5 T@PolymorphicMapType_9316) (SummandMask2@@5 T@PolymorphicMapType_9316) (o_2@@65 T@Ref) (f_4@@65 T@Field_13597_1211) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_9316_5341_1211#PolymorphicMapType_9316| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_9316_5341_1211#PolymorphicMapType_9316| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_9316_5341_1211#PolymorphicMapType_9316| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9316_5341_1211#PolymorphicMapType_9316| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9316_5341_1211#PolymorphicMapType_9316| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9316_5341_1211#PolymorphicMapType_9316| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_9316) (SummandMask1@@6 T@PolymorphicMapType_9316) (SummandMask2@@6 T@PolymorphicMapType_9316) (o_2@@66 T@Ref) (f_4@@66 T@Field_13597_13598) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_9316_5341_5342#PolymorphicMapType_9316| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_9316_5341_5342#PolymorphicMapType_9316| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_9316_5341_5342#PolymorphicMapType_9316| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9316_5341_5342#PolymorphicMapType_9316| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9316_5341_5342#PolymorphicMapType_9316| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9316_5341_5342#PolymorphicMapType_9316| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_9316) (SummandMask1@@7 T@PolymorphicMapType_9316) (SummandMask2@@7 T@PolymorphicMapType_9316) (o_2@@67 T@Ref) (f_4@@67 T@Field_13597_5338) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_9316_5341_5338#PolymorphicMapType_9316| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_9316_5341_5338#PolymorphicMapType_9316| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_9316_5341_5338#PolymorphicMapType_9316| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9316_5341_5338#PolymorphicMapType_9316| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9316_5341_5338#PolymorphicMapType_9316| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9316_5341_5338#PolymorphicMapType_9316| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_9316) (SummandMask1@@8 T@PolymorphicMapType_9316) (SummandMask2@@8 T@PolymorphicMapType_9316) (o_2@@68 T@Ref) (f_4@@68 T@Field_13597_1622) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_9316_5341_1622#PolymorphicMapType_9316| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_9316_5341_1622#PolymorphicMapType_9316| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_9316_5341_1622#PolymorphicMapType_9316| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9316_5341_1622#PolymorphicMapType_9316| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9316_5341_1622#PolymorphicMapType_9316| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9316_5341_1622#PolymorphicMapType_9316| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_9316) (SummandMask1@@9 T@PolymorphicMapType_9316) (SummandMask2@@9 T@PolymorphicMapType_9316) (o_2@@69 T@Ref) (f_4@@69 T@Field_5335_12705) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_9316_5335_44266#PolymorphicMapType_9316| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_9316_5335_44266#PolymorphicMapType_9316| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_9316_5335_44266#PolymorphicMapType_9316| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9316_5335_44266#PolymorphicMapType_9316| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9316_5335_44266#PolymorphicMapType_9316| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9316_5335_44266#PolymorphicMapType_9316| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_9316) (SummandMask1@@10 T@PolymorphicMapType_9316) (SummandMask2@@10 T@PolymorphicMapType_9316) (o_2@@70 T@Ref) (f_4@@70 T@Field_5335_1211) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_9316_5335_1211#PolymorphicMapType_9316| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_9316_5335_1211#PolymorphicMapType_9316| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_9316_5335_1211#PolymorphicMapType_9316| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9316_5335_1211#PolymorphicMapType_9316| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9316_5335_1211#PolymorphicMapType_9316| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9316_5335_1211#PolymorphicMapType_9316| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_9316) (SummandMask1@@11 T@PolymorphicMapType_9316) (SummandMask2@@11 T@PolymorphicMapType_9316) (o_2@@71 T@Ref) (f_4@@71 T@Field_5335_12719) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_9316_5335_5342#PolymorphicMapType_9316| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_9316_5335_5342#PolymorphicMapType_9316| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_9316_5335_5342#PolymorphicMapType_9316| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9316_5335_5342#PolymorphicMapType_9316| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9316_5335_5342#PolymorphicMapType_9316| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9316_5335_5342#PolymorphicMapType_9316| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_9316) (SummandMask1@@12 T@PolymorphicMapType_9316) (SummandMask2@@12 T@PolymorphicMapType_9316) (o_2@@72 T@Ref) (f_4@@72 T@Field_9368_9369) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_9316_5337_5338#PolymorphicMapType_9316| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_9316_5337_5338#PolymorphicMapType_9316| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_9316_5337_5338#PolymorphicMapType_9316| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9316_5337_5338#PolymorphicMapType_9316| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9316_5337_5338#PolymorphicMapType_9316| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9316_5337_5338#PolymorphicMapType_9316| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_9316) (SummandMask1@@13 T@PolymorphicMapType_9316) (SummandMask2@@13 T@PolymorphicMapType_9316) (o_2@@73 T@Ref) (f_4@@73 T@Field_9355_53) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_9316_5335_1622#PolymorphicMapType_9316| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_9316_5335_1622#PolymorphicMapType_9316| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_9316_5335_1622#PolymorphicMapType_9316| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9316_5335_1622#PolymorphicMapType_9316| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9316_5335_1622#PolymorphicMapType_9316| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9316_5335_1622#PolymorphicMapType_9316| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9295) (ExhaleHeap@@22 T@PolymorphicMapType_9295) (Mask@@53 T@PolymorphicMapType_9316) (pm_f_19@@5 T@Field_13597_13598) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_13597_12719 Mask@@53 null pm_f_19@@5) (IsPredicateField_5341_5342 pm_f_19@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19 T@Ref) (f_19@@14 T@Field_9368_9369) ) (!  (=> (select (|PolymorphicMapType_9844_5337_5338#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@24) null (PredicateMaskField_5341 pm_f_19@@5))) o2_19 f_19@@14) (= (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@24) o2_19 f_19@@14) (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19 f_19@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19 f_19@@14))
)) (forall ((o2_19@@0 T@Ref) (f_19@@15 T@Field_9355_53) ) (!  (=> (select (|PolymorphicMapType_9844_5335_1622#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@24) null (PredicateMaskField_5341 pm_f_19@@5))) o2_19@@0 f_19@@15) (= (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@24) o2_19@@0 f_19@@15) (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@0 f_19@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@0 f_19@@15))
))) (forall ((o2_19@@1 T@Ref) (f_19@@16 T@Field_5335_1211) ) (!  (=> (select (|PolymorphicMapType_9844_5337_1211#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@24) null (PredicateMaskField_5341 pm_f_19@@5))) o2_19@@1 f_19@@16) (= (select (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@24) o2_19@@1 f_19@@16) (select (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@1 f_19@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@1 f_19@@16))
))) (forall ((o2_19@@2 T@Ref) (f_19@@17 T@Field_5335_12705) ) (!  (=> (select (|PolymorphicMapType_9844_5337_34169#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@24) null (PredicateMaskField_5341 pm_f_19@@5))) o2_19@@2 f_19@@17) (= (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@24) o2_19@@2 f_19@@17) (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@2 f_19@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@2 f_19@@17))
))) (forall ((o2_19@@3 T@Ref) (f_19@@18 T@Field_5335_12719) ) (!  (=> (select (|PolymorphicMapType_9844_5337_12719#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@24) null (PredicateMaskField_5341 pm_f_19@@5))) o2_19@@3 f_19@@18) (= (select (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@24) o2_19@@3 f_19@@18) (select (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@3 f_19@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@3 f_19@@18))
))) (forall ((o2_19@@4 T@Ref) (f_19@@19 T@Field_12685_5338) ) (!  (=> (select (|PolymorphicMapType_9844_12685_5338#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@24) null (PredicateMaskField_5341 pm_f_19@@5))) o2_19@@4 f_19@@19) (= (select (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@24) o2_19@@4 f_19@@19) (select (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@4 f_19@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@4 f_19@@19))
))) (forall ((o2_19@@5 T@Ref) (f_19@@20 T@Field_12685_1622) ) (!  (=> (select (|PolymorphicMapType_9844_12685_1622#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@24) null (PredicateMaskField_5341 pm_f_19@@5))) o2_19@@5 f_19@@20) (= (select (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@24) o2_19@@5 f_19@@20) (select (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@5 f_19@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@5 f_19@@20))
))) (forall ((o2_19@@6 T@Ref) (f_19@@21 T@Field_12685_1211) ) (!  (=> (select (|PolymorphicMapType_9844_12685_1211#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@24) null (PredicateMaskField_5341 pm_f_19@@5))) o2_19@@6 f_19@@21) (= (select (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@24) o2_19@@6 f_19@@21) (select (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@6 f_19@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@6 f_19@@21))
))) (forall ((o2_19@@7 T@Ref) (f_19@@22 T@Field_12700_12705) ) (!  (=> (select (|PolymorphicMapType_9844_12685_35217#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@24) null (PredicateMaskField_5341 pm_f_19@@5))) o2_19@@7 f_19@@22) (= (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@24) o2_19@@7 f_19@@22) (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@7 f_19@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@7 f_19@@22))
))) (forall ((o2_19@@8 T@Ref) (f_19@@23 T@Field_12718_12719) ) (!  (=> (select (|PolymorphicMapType_9844_12685_12719#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@24) null (PredicateMaskField_5341 pm_f_19@@5))) o2_19@@8 f_19@@23) (= (select (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@24) o2_19@@8 f_19@@23) (select (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@8 f_19@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@8 f_19@@23))
))) (forall ((o2_19@@9 T@Ref) (f_19@@24 T@Field_13597_5338) ) (!  (=> (select (|PolymorphicMapType_9844_13597_5338#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@24) null (PredicateMaskField_5341 pm_f_19@@5))) o2_19@@9 f_19@@24) (= (select (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@24) o2_19@@9 f_19@@24) (select (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@9 f_19@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@9 f_19@@24))
))) (forall ((o2_19@@10 T@Ref) (f_19@@25 T@Field_13597_1622) ) (!  (=> (select (|PolymorphicMapType_9844_13597_1622#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@24) null (PredicateMaskField_5341 pm_f_19@@5))) o2_19@@10 f_19@@25) (= (select (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@24) o2_19@@10 f_19@@25) (select (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@10 f_19@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@10 f_19@@25))
))) (forall ((o2_19@@11 T@Ref) (f_19@@26 T@Field_13597_1211) ) (!  (=> (select (|PolymorphicMapType_9844_13597_1211#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@24) null (PredicateMaskField_5341 pm_f_19@@5))) o2_19@@11 f_19@@26) (= (select (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@24) o2_19@@11 f_19@@26) (select (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@11 f_19@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@11 f_19@@26))
))) (forall ((o2_19@@12 T@Ref) (f_19@@27 T@Field_13610_13615) ) (!  (=> (select (|PolymorphicMapType_9844_13597_36265#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@24) null (PredicateMaskField_5341 pm_f_19@@5))) o2_19@@12 f_19@@27) (= (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@24) o2_19@@12 f_19@@27) (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@12 f_19@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@12 f_19@@27))
))) (forall ((o2_19@@13 T@Ref) (f_19@@28 T@Field_13597_13598) ) (!  (=> (select (|PolymorphicMapType_9844_13597_12719#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@24) null (PredicateMaskField_5341 pm_f_19@@5))) o2_19@@13 f_19@@28) (= (select (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@24) o2_19@@13 f_19@@28) (select (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@13 f_19@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| ExhaleHeap@@22) o2_19@@13 f_19@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@53) (IsPredicateField_5341_5342 pm_f_19@@5))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9295) (ExhaleHeap@@23 T@PolymorphicMapType_9295) (Mask@@54 T@PolymorphicMapType_9316) (pm_f_19@@6 T@Field_12718_12719) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_12685_12719 Mask@@54 null pm_f_19@@6) (IsPredicateField_5284_5285 pm_f_19@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19@@14 T@Ref) (f_19@@29 T@Field_9368_9369) ) (!  (=> (select (|PolymorphicMapType_9844_5337_5338#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@25) null (PredicateMaskField_12685 pm_f_19@@6))) o2_19@@14 f_19@@29) (= (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@25) o2_19@@14 f_19@@29) (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@14 f_19@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@14 f_19@@29))
)) (forall ((o2_19@@15 T@Ref) (f_19@@30 T@Field_9355_53) ) (!  (=> (select (|PolymorphicMapType_9844_5335_1622#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@25) null (PredicateMaskField_12685 pm_f_19@@6))) o2_19@@15 f_19@@30) (= (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@25) o2_19@@15 f_19@@30) (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@15 f_19@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@15 f_19@@30))
))) (forall ((o2_19@@16 T@Ref) (f_19@@31 T@Field_5335_1211) ) (!  (=> (select (|PolymorphicMapType_9844_5337_1211#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@25) null (PredicateMaskField_12685 pm_f_19@@6))) o2_19@@16 f_19@@31) (= (select (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@25) o2_19@@16 f_19@@31) (select (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@16 f_19@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@16 f_19@@31))
))) (forall ((o2_19@@17 T@Ref) (f_19@@32 T@Field_5335_12705) ) (!  (=> (select (|PolymorphicMapType_9844_5337_34169#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@25) null (PredicateMaskField_12685 pm_f_19@@6))) o2_19@@17 f_19@@32) (= (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@25) o2_19@@17 f_19@@32) (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@17 f_19@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@17 f_19@@32))
))) (forall ((o2_19@@18 T@Ref) (f_19@@33 T@Field_5335_12719) ) (!  (=> (select (|PolymorphicMapType_9844_5337_12719#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@25) null (PredicateMaskField_12685 pm_f_19@@6))) o2_19@@18 f_19@@33) (= (select (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@25) o2_19@@18 f_19@@33) (select (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@18 f_19@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@18 f_19@@33))
))) (forall ((o2_19@@19 T@Ref) (f_19@@34 T@Field_12685_5338) ) (!  (=> (select (|PolymorphicMapType_9844_12685_5338#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@25) null (PredicateMaskField_12685 pm_f_19@@6))) o2_19@@19 f_19@@34) (= (select (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@25) o2_19@@19 f_19@@34) (select (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@19 f_19@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@19 f_19@@34))
))) (forall ((o2_19@@20 T@Ref) (f_19@@35 T@Field_12685_1622) ) (!  (=> (select (|PolymorphicMapType_9844_12685_1622#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@25) null (PredicateMaskField_12685 pm_f_19@@6))) o2_19@@20 f_19@@35) (= (select (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@25) o2_19@@20 f_19@@35) (select (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@20 f_19@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@20 f_19@@35))
))) (forall ((o2_19@@21 T@Ref) (f_19@@36 T@Field_12685_1211) ) (!  (=> (select (|PolymorphicMapType_9844_12685_1211#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@25) null (PredicateMaskField_12685 pm_f_19@@6))) o2_19@@21 f_19@@36) (= (select (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@25) o2_19@@21 f_19@@36) (select (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@21 f_19@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@21 f_19@@36))
))) (forall ((o2_19@@22 T@Ref) (f_19@@37 T@Field_12700_12705) ) (!  (=> (select (|PolymorphicMapType_9844_12685_35217#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@25) null (PredicateMaskField_12685 pm_f_19@@6))) o2_19@@22 f_19@@37) (= (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@25) o2_19@@22 f_19@@37) (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@22 f_19@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@22 f_19@@37))
))) (forall ((o2_19@@23 T@Ref) (f_19@@38 T@Field_12718_12719) ) (!  (=> (select (|PolymorphicMapType_9844_12685_12719#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@25) null (PredicateMaskField_12685 pm_f_19@@6))) o2_19@@23 f_19@@38) (= (select (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@25) o2_19@@23 f_19@@38) (select (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@23 f_19@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@23 f_19@@38))
))) (forall ((o2_19@@24 T@Ref) (f_19@@39 T@Field_13597_5338) ) (!  (=> (select (|PolymorphicMapType_9844_13597_5338#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@25) null (PredicateMaskField_12685 pm_f_19@@6))) o2_19@@24 f_19@@39) (= (select (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@25) o2_19@@24 f_19@@39) (select (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@24 f_19@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@24 f_19@@39))
))) (forall ((o2_19@@25 T@Ref) (f_19@@40 T@Field_13597_1622) ) (!  (=> (select (|PolymorphicMapType_9844_13597_1622#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@25) null (PredicateMaskField_12685 pm_f_19@@6))) o2_19@@25 f_19@@40) (= (select (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@25) o2_19@@25 f_19@@40) (select (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@25 f_19@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@25 f_19@@40))
))) (forall ((o2_19@@26 T@Ref) (f_19@@41 T@Field_13597_1211) ) (!  (=> (select (|PolymorphicMapType_9844_13597_1211#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@25) null (PredicateMaskField_12685 pm_f_19@@6))) o2_19@@26 f_19@@41) (= (select (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@25) o2_19@@26 f_19@@41) (select (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@26 f_19@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@26 f_19@@41))
))) (forall ((o2_19@@27 T@Ref) (f_19@@42 T@Field_13610_13615) ) (!  (=> (select (|PolymorphicMapType_9844_13597_36265#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@25) null (PredicateMaskField_12685 pm_f_19@@6))) o2_19@@27 f_19@@42) (= (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@25) o2_19@@27 f_19@@42) (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@27 f_19@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@27 f_19@@42))
))) (forall ((o2_19@@28 T@Ref) (f_19@@43 T@Field_13597_13598) ) (!  (=> (select (|PolymorphicMapType_9844_13597_12719#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@25) null (PredicateMaskField_12685 pm_f_19@@6))) o2_19@@28 f_19@@43) (= (select (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@25) o2_19@@28 f_19@@43) (select (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@28 f_19@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| ExhaleHeap@@23) o2_19@@28 f_19@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@54) (IsPredicateField_5284_5285 pm_f_19@@6))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9295) (ExhaleHeap@@24 T@PolymorphicMapType_9295) (Mask@@55 T@PolymorphicMapType_9316) (pm_f_19@@7 T@Field_5335_12719) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_5335_12719 Mask@@55 null pm_f_19@@7) (IsPredicateField_5335_32566 pm_f_19@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19@@29 T@Ref) (f_19@@44 T@Field_9368_9369) ) (!  (=> (select (|PolymorphicMapType_9844_5337_5338#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@26) null (PredicateMaskField_5335 pm_f_19@@7))) o2_19@@29 f_19@@44) (= (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@26) o2_19@@29 f_19@@44) (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@29 f_19@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@29 f_19@@44))
)) (forall ((o2_19@@30 T@Ref) (f_19@@45 T@Field_9355_53) ) (!  (=> (select (|PolymorphicMapType_9844_5335_1622#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@26) null (PredicateMaskField_5335 pm_f_19@@7))) o2_19@@30 f_19@@45) (= (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@26) o2_19@@30 f_19@@45) (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@30 f_19@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@30 f_19@@45))
))) (forall ((o2_19@@31 T@Ref) (f_19@@46 T@Field_5335_1211) ) (!  (=> (select (|PolymorphicMapType_9844_5337_1211#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@26) null (PredicateMaskField_5335 pm_f_19@@7))) o2_19@@31 f_19@@46) (= (select (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@26) o2_19@@31 f_19@@46) (select (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@31 f_19@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@31 f_19@@46))
))) (forall ((o2_19@@32 T@Ref) (f_19@@47 T@Field_5335_12705) ) (!  (=> (select (|PolymorphicMapType_9844_5337_34169#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@26) null (PredicateMaskField_5335 pm_f_19@@7))) o2_19@@32 f_19@@47) (= (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@26) o2_19@@32 f_19@@47) (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@32 f_19@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@32 f_19@@47))
))) (forall ((o2_19@@33 T@Ref) (f_19@@48 T@Field_5335_12719) ) (!  (=> (select (|PolymorphicMapType_9844_5337_12719#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@26) null (PredicateMaskField_5335 pm_f_19@@7))) o2_19@@33 f_19@@48) (= (select (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@26) o2_19@@33 f_19@@48) (select (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@33 f_19@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@33 f_19@@48))
))) (forall ((o2_19@@34 T@Ref) (f_19@@49 T@Field_12685_5338) ) (!  (=> (select (|PolymorphicMapType_9844_12685_5338#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@26) null (PredicateMaskField_5335 pm_f_19@@7))) o2_19@@34 f_19@@49) (= (select (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@26) o2_19@@34 f_19@@49) (select (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@34 f_19@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@34 f_19@@49))
))) (forall ((o2_19@@35 T@Ref) (f_19@@50 T@Field_12685_1622) ) (!  (=> (select (|PolymorphicMapType_9844_12685_1622#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@26) null (PredicateMaskField_5335 pm_f_19@@7))) o2_19@@35 f_19@@50) (= (select (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@26) o2_19@@35 f_19@@50) (select (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@35 f_19@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@35 f_19@@50))
))) (forall ((o2_19@@36 T@Ref) (f_19@@51 T@Field_12685_1211) ) (!  (=> (select (|PolymorphicMapType_9844_12685_1211#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@26) null (PredicateMaskField_5335 pm_f_19@@7))) o2_19@@36 f_19@@51) (= (select (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@26) o2_19@@36 f_19@@51) (select (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@36 f_19@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@36 f_19@@51))
))) (forall ((o2_19@@37 T@Ref) (f_19@@52 T@Field_12700_12705) ) (!  (=> (select (|PolymorphicMapType_9844_12685_35217#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@26) null (PredicateMaskField_5335 pm_f_19@@7))) o2_19@@37 f_19@@52) (= (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@26) o2_19@@37 f_19@@52) (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@37 f_19@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@37 f_19@@52))
))) (forall ((o2_19@@38 T@Ref) (f_19@@53 T@Field_12718_12719) ) (!  (=> (select (|PolymorphicMapType_9844_12685_12719#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@26) null (PredicateMaskField_5335 pm_f_19@@7))) o2_19@@38 f_19@@53) (= (select (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@26) o2_19@@38 f_19@@53) (select (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@38 f_19@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@38 f_19@@53))
))) (forall ((o2_19@@39 T@Ref) (f_19@@54 T@Field_13597_5338) ) (!  (=> (select (|PolymorphicMapType_9844_13597_5338#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@26) null (PredicateMaskField_5335 pm_f_19@@7))) o2_19@@39 f_19@@54) (= (select (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@26) o2_19@@39 f_19@@54) (select (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@39 f_19@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@39 f_19@@54))
))) (forall ((o2_19@@40 T@Ref) (f_19@@55 T@Field_13597_1622) ) (!  (=> (select (|PolymorphicMapType_9844_13597_1622#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@26) null (PredicateMaskField_5335 pm_f_19@@7))) o2_19@@40 f_19@@55) (= (select (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@26) o2_19@@40 f_19@@55) (select (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@40 f_19@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@40 f_19@@55))
))) (forall ((o2_19@@41 T@Ref) (f_19@@56 T@Field_13597_1211) ) (!  (=> (select (|PolymorphicMapType_9844_13597_1211#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@26) null (PredicateMaskField_5335 pm_f_19@@7))) o2_19@@41 f_19@@56) (= (select (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@26) o2_19@@41 f_19@@56) (select (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@41 f_19@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@41 f_19@@56))
))) (forall ((o2_19@@42 T@Ref) (f_19@@57 T@Field_13610_13615) ) (!  (=> (select (|PolymorphicMapType_9844_13597_36265#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@26) null (PredicateMaskField_5335 pm_f_19@@7))) o2_19@@42 f_19@@57) (= (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@26) o2_19@@42 f_19@@57) (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@42 f_19@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@42 f_19@@57))
))) (forall ((o2_19@@43 T@Ref) (f_19@@58 T@Field_13597_13598) ) (!  (=> (select (|PolymorphicMapType_9844_13597_12719#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@26) null (PredicateMaskField_5335 pm_f_19@@7))) o2_19@@43 f_19@@58) (= (select (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@26) o2_19@@43 f_19@@58) (select (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@43 f_19@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| ExhaleHeap@@24) o2_19@@43 f_19@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@55) (IsPredicateField_5335_32566 pm_f_19@@7))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9295) (ExhaleHeap@@25 T@PolymorphicMapType_9295) (Mask@@56 T@PolymorphicMapType_9316) (pm_f_19@@8 T@Field_13597_13598) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_13597_12719 Mask@@56 null pm_f_19@@8) (IsWandField_13597_38240 pm_f_19@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19@@44 T@Ref) (f_19@@59 T@Field_9368_9369) ) (!  (=> (select (|PolymorphicMapType_9844_5337_5338#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@27) null (WandMaskField_13597 pm_f_19@@8))) o2_19@@44 f_19@@59) (= (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@27) o2_19@@44 f_19@@59) (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@44 f_19@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@44 f_19@@59))
)) (forall ((o2_19@@45 T@Ref) (f_19@@60 T@Field_9355_53) ) (!  (=> (select (|PolymorphicMapType_9844_5335_1622#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@27) null (WandMaskField_13597 pm_f_19@@8))) o2_19@@45 f_19@@60) (= (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@27) o2_19@@45 f_19@@60) (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@45 f_19@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@45 f_19@@60))
))) (forall ((o2_19@@46 T@Ref) (f_19@@61 T@Field_5335_1211) ) (!  (=> (select (|PolymorphicMapType_9844_5337_1211#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@27) null (WandMaskField_13597 pm_f_19@@8))) o2_19@@46 f_19@@61) (= (select (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@27) o2_19@@46 f_19@@61) (select (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@46 f_19@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@46 f_19@@61))
))) (forall ((o2_19@@47 T@Ref) (f_19@@62 T@Field_5335_12705) ) (!  (=> (select (|PolymorphicMapType_9844_5337_34169#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@27) null (WandMaskField_13597 pm_f_19@@8))) o2_19@@47 f_19@@62) (= (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@27) o2_19@@47 f_19@@62) (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@47 f_19@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@47 f_19@@62))
))) (forall ((o2_19@@48 T@Ref) (f_19@@63 T@Field_5335_12719) ) (!  (=> (select (|PolymorphicMapType_9844_5337_12719#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@27) null (WandMaskField_13597 pm_f_19@@8))) o2_19@@48 f_19@@63) (= (select (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@27) o2_19@@48 f_19@@63) (select (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@48 f_19@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@48 f_19@@63))
))) (forall ((o2_19@@49 T@Ref) (f_19@@64 T@Field_12685_5338) ) (!  (=> (select (|PolymorphicMapType_9844_12685_5338#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@27) null (WandMaskField_13597 pm_f_19@@8))) o2_19@@49 f_19@@64) (= (select (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@27) o2_19@@49 f_19@@64) (select (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@49 f_19@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@49 f_19@@64))
))) (forall ((o2_19@@50 T@Ref) (f_19@@65 T@Field_12685_1622) ) (!  (=> (select (|PolymorphicMapType_9844_12685_1622#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@27) null (WandMaskField_13597 pm_f_19@@8))) o2_19@@50 f_19@@65) (= (select (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@27) o2_19@@50 f_19@@65) (select (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@50 f_19@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@50 f_19@@65))
))) (forall ((o2_19@@51 T@Ref) (f_19@@66 T@Field_12685_1211) ) (!  (=> (select (|PolymorphicMapType_9844_12685_1211#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@27) null (WandMaskField_13597 pm_f_19@@8))) o2_19@@51 f_19@@66) (= (select (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@27) o2_19@@51 f_19@@66) (select (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@51 f_19@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@51 f_19@@66))
))) (forall ((o2_19@@52 T@Ref) (f_19@@67 T@Field_12700_12705) ) (!  (=> (select (|PolymorphicMapType_9844_12685_35217#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@27) null (WandMaskField_13597 pm_f_19@@8))) o2_19@@52 f_19@@67) (= (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@27) o2_19@@52 f_19@@67) (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@52 f_19@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@52 f_19@@67))
))) (forall ((o2_19@@53 T@Ref) (f_19@@68 T@Field_12718_12719) ) (!  (=> (select (|PolymorphicMapType_9844_12685_12719#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@27) null (WandMaskField_13597 pm_f_19@@8))) o2_19@@53 f_19@@68) (= (select (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@27) o2_19@@53 f_19@@68) (select (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@53 f_19@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@53 f_19@@68))
))) (forall ((o2_19@@54 T@Ref) (f_19@@69 T@Field_13597_5338) ) (!  (=> (select (|PolymorphicMapType_9844_13597_5338#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@27) null (WandMaskField_13597 pm_f_19@@8))) o2_19@@54 f_19@@69) (= (select (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@27) o2_19@@54 f_19@@69) (select (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@54 f_19@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@54 f_19@@69))
))) (forall ((o2_19@@55 T@Ref) (f_19@@70 T@Field_13597_1622) ) (!  (=> (select (|PolymorphicMapType_9844_13597_1622#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@27) null (WandMaskField_13597 pm_f_19@@8))) o2_19@@55 f_19@@70) (= (select (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@27) o2_19@@55 f_19@@70) (select (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@55 f_19@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@55 f_19@@70))
))) (forall ((o2_19@@56 T@Ref) (f_19@@71 T@Field_13597_1211) ) (!  (=> (select (|PolymorphicMapType_9844_13597_1211#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@27) null (WandMaskField_13597 pm_f_19@@8))) o2_19@@56 f_19@@71) (= (select (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@27) o2_19@@56 f_19@@71) (select (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@56 f_19@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@56 f_19@@71))
))) (forall ((o2_19@@57 T@Ref) (f_19@@72 T@Field_13610_13615) ) (!  (=> (select (|PolymorphicMapType_9844_13597_36265#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@27) null (WandMaskField_13597 pm_f_19@@8))) o2_19@@57 f_19@@72) (= (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@27) o2_19@@57 f_19@@72) (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@57 f_19@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@57 f_19@@72))
))) (forall ((o2_19@@58 T@Ref) (f_19@@73 T@Field_13597_13598) ) (!  (=> (select (|PolymorphicMapType_9844_13597_12719#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@27) null (WandMaskField_13597 pm_f_19@@8))) o2_19@@58 f_19@@73) (= (select (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@27) o2_19@@58 f_19@@73) (select (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@58 f_19@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| ExhaleHeap@@25) o2_19@@58 f_19@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@56) (IsWandField_13597_38240 pm_f_19@@8))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9295) (ExhaleHeap@@26 T@PolymorphicMapType_9295) (Mask@@57 T@PolymorphicMapType_9316) (pm_f_19@@9 T@Field_12718_12719) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_12685_12719 Mask@@57 null pm_f_19@@9) (IsWandField_5284_5285 pm_f_19@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19@@59 T@Ref) (f_19@@74 T@Field_9368_9369) ) (!  (=> (select (|PolymorphicMapType_9844_5337_5338#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@28) null (WandMaskField_5284 pm_f_19@@9))) o2_19@@59 f_19@@74) (= (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@28) o2_19@@59 f_19@@74) (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@59 f_19@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@59 f_19@@74))
)) (forall ((o2_19@@60 T@Ref) (f_19@@75 T@Field_9355_53) ) (!  (=> (select (|PolymorphicMapType_9844_5335_1622#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@28) null (WandMaskField_5284 pm_f_19@@9))) o2_19@@60 f_19@@75) (= (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@28) o2_19@@60 f_19@@75) (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@60 f_19@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@60 f_19@@75))
))) (forall ((o2_19@@61 T@Ref) (f_19@@76 T@Field_5335_1211) ) (!  (=> (select (|PolymorphicMapType_9844_5337_1211#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@28) null (WandMaskField_5284 pm_f_19@@9))) o2_19@@61 f_19@@76) (= (select (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@28) o2_19@@61 f_19@@76) (select (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@61 f_19@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@61 f_19@@76))
))) (forall ((o2_19@@62 T@Ref) (f_19@@77 T@Field_5335_12705) ) (!  (=> (select (|PolymorphicMapType_9844_5337_34169#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@28) null (WandMaskField_5284 pm_f_19@@9))) o2_19@@62 f_19@@77) (= (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@28) o2_19@@62 f_19@@77) (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@62 f_19@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@62 f_19@@77))
))) (forall ((o2_19@@63 T@Ref) (f_19@@78 T@Field_5335_12719) ) (!  (=> (select (|PolymorphicMapType_9844_5337_12719#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@28) null (WandMaskField_5284 pm_f_19@@9))) o2_19@@63 f_19@@78) (= (select (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@28) o2_19@@63 f_19@@78) (select (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@63 f_19@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@63 f_19@@78))
))) (forall ((o2_19@@64 T@Ref) (f_19@@79 T@Field_12685_5338) ) (!  (=> (select (|PolymorphicMapType_9844_12685_5338#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@28) null (WandMaskField_5284 pm_f_19@@9))) o2_19@@64 f_19@@79) (= (select (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@28) o2_19@@64 f_19@@79) (select (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@64 f_19@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@64 f_19@@79))
))) (forall ((o2_19@@65 T@Ref) (f_19@@80 T@Field_12685_1622) ) (!  (=> (select (|PolymorphicMapType_9844_12685_1622#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@28) null (WandMaskField_5284 pm_f_19@@9))) o2_19@@65 f_19@@80) (= (select (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@28) o2_19@@65 f_19@@80) (select (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@65 f_19@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@65 f_19@@80))
))) (forall ((o2_19@@66 T@Ref) (f_19@@81 T@Field_12685_1211) ) (!  (=> (select (|PolymorphicMapType_9844_12685_1211#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@28) null (WandMaskField_5284 pm_f_19@@9))) o2_19@@66 f_19@@81) (= (select (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@28) o2_19@@66 f_19@@81) (select (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@66 f_19@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@66 f_19@@81))
))) (forall ((o2_19@@67 T@Ref) (f_19@@82 T@Field_12700_12705) ) (!  (=> (select (|PolymorphicMapType_9844_12685_35217#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@28) null (WandMaskField_5284 pm_f_19@@9))) o2_19@@67 f_19@@82) (= (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@28) o2_19@@67 f_19@@82) (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@67 f_19@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@67 f_19@@82))
))) (forall ((o2_19@@68 T@Ref) (f_19@@83 T@Field_12718_12719) ) (!  (=> (select (|PolymorphicMapType_9844_12685_12719#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@28) null (WandMaskField_5284 pm_f_19@@9))) o2_19@@68 f_19@@83) (= (select (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@28) o2_19@@68 f_19@@83) (select (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@68 f_19@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@68 f_19@@83))
))) (forall ((o2_19@@69 T@Ref) (f_19@@84 T@Field_13597_5338) ) (!  (=> (select (|PolymorphicMapType_9844_13597_5338#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@28) null (WandMaskField_5284 pm_f_19@@9))) o2_19@@69 f_19@@84) (= (select (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@28) o2_19@@69 f_19@@84) (select (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@69 f_19@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@69 f_19@@84))
))) (forall ((o2_19@@70 T@Ref) (f_19@@85 T@Field_13597_1622) ) (!  (=> (select (|PolymorphicMapType_9844_13597_1622#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@28) null (WandMaskField_5284 pm_f_19@@9))) o2_19@@70 f_19@@85) (= (select (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@28) o2_19@@70 f_19@@85) (select (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@70 f_19@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@70 f_19@@85))
))) (forall ((o2_19@@71 T@Ref) (f_19@@86 T@Field_13597_1211) ) (!  (=> (select (|PolymorphicMapType_9844_13597_1211#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@28) null (WandMaskField_5284 pm_f_19@@9))) o2_19@@71 f_19@@86) (= (select (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@28) o2_19@@71 f_19@@86) (select (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@71 f_19@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@71 f_19@@86))
))) (forall ((o2_19@@72 T@Ref) (f_19@@87 T@Field_13610_13615) ) (!  (=> (select (|PolymorphicMapType_9844_13597_36265#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@28) null (WandMaskField_5284 pm_f_19@@9))) o2_19@@72 f_19@@87) (= (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@28) o2_19@@72 f_19@@87) (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@72 f_19@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@72 f_19@@87))
))) (forall ((o2_19@@73 T@Ref) (f_19@@88 T@Field_13597_13598) ) (!  (=> (select (|PolymorphicMapType_9844_13597_12719#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@28) null (WandMaskField_5284 pm_f_19@@9))) o2_19@@73 f_19@@88) (= (select (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@28) o2_19@@73 f_19@@88) (select (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@73 f_19@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| ExhaleHeap@@26) o2_19@@73 f_19@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@57) (IsWandField_5284_5285 pm_f_19@@9))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9295) (ExhaleHeap@@27 T@PolymorphicMapType_9295) (Mask@@58 T@PolymorphicMapType_9316) (pm_f_19@@10 T@Field_5335_12719) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_5335_12719 Mask@@58 null pm_f_19@@10) (IsWandField_5335_37558 pm_f_19@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19@@74 T@Ref) (f_19@@89 T@Field_9368_9369) ) (!  (=> (select (|PolymorphicMapType_9844_5337_5338#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@29) null (WandMaskField_5335 pm_f_19@@10))) o2_19@@74 f_19@@89) (= (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@29) o2_19@@74 f_19@@89) (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@74 f_19@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@74 f_19@@89))
)) (forall ((o2_19@@75 T@Ref) (f_19@@90 T@Field_9355_53) ) (!  (=> (select (|PolymorphicMapType_9844_5335_1622#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@29) null (WandMaskField_5335 pm_f_19@@10))) o2_19@@75 f_19@@90) (= (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@29) o2_19@@75 f_19@@90) (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@75 f_19@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@75 f_19@@90))
))) (forall ((o2_19@@76 T@Ref) (f_19@@91 T@Field_5335_1211) ) (!  (=> (select (|PolymorphicMapType_9844_5337_1211#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@29) null (WandMaskField_5335 pm_f_19@@10))) o2_19@@76 f_19@@91) (= (select (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@29) o2_19@@76 f_19@@91) (select (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@76 f_19@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@76 f_19@@91))
))) (forall ((o2_19@@77 T@Ref) (f_19@@92 T@Field_5335_12705) ) (!  (=> (select (|PolymorphicMapType_9844_5337_34169#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@29) null (WandMaskField_5335 pm_f_19@@10))) o2_19@@77 f_19@@92) (= (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@29) o2_19@@77 f_19@@92) (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@77 f_19@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@77 f_19@@92))
))) (forall ((o2_19@@78 T@Ref) (f_19@@93 T@Field_5335_12719) ) (!  (=> (select (|PolymorphicMapType_9844_5337_12719#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@29) null (WandMaskField_5335 pm_f_19@@10))) o2_19@@78 f_19@@93) (= (select (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@29) o2_19@@78 f_19@@93) (select (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@78 f_19@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@78 f_19@@93))
))) (forall ((o2_19@@79 T@Ref) (f_19@@94 T@Field_12685_5338) ) (!  (=> (select (|PolymorphicMapType_9844_12685_5338#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@29) null (WandMaskField_5335 pm_f_19@@10))) o2_19@@79 f_19@@94) (= (select (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@29) o2_19@@79 f_19@@94) (select (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@79 f_19@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@79 f_19@@94))
))) (forall ((o2_19@@80 T@Ref) (f_19@@95 T@Field_12685_1622) ) (!  (=> (select (|PolymorphicMapType_9844_12685_1622#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@29) null (WandMaskField_5335 pm_f_19@@10))) o2_19@@80 f_19@@95) (= (select (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@29) o2_19@@80 f_19@@95) (select (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@80 f_19@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@80 f_19@@95))
))) (forall ((o2_19@@81 T@Ref) (f_19@@96 T@Field_12685_1211) ) (!  (=> (select (|PolymorphicMapType_9844_12685_1211#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@29) null (WandMaskField_5335 pm_f_19@@10))) o2_19@@81 f_19@@96) (= (select (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@29) o2_19@@81 f_19@@96) (select (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@81 f_19@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@81 f_19@@96))
))) (forall ((o2_19@@82 T@Ref) (f_19@@97 T@Field_12700_12705) ) (!  (=> (select (|PolymorphicMapType_9844_12685_35217#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@29) null (WandMaskField_5335 pm_f_19@@10))) o2_19@@82 f_19@@97) (= (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@29) o2_19@@82 f_19@@97) (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@82 f_19@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@82 f_19@@97))
))) (forall ((o2_19@@83 T@Ref) (f_19@@98 T@Field_12718_12719) ) (!  (=> (select (|PolymorphicMapType_9844_12685_12719#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@29) null (WandMaskField_5335 pm_f_19@@10))) o2_19@@83 f_19@@98) (= (select (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@29) o2_19@@83 f_19@@98) (select (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@83 f_19@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@83 f_19@@98))
))) (forall ((o2_19@@84 T@Ref) (f_19@@99 T@Field_13597_5338) ) (!  (=> (select (|PolymorphicMapType_9844_13597_5338#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@29) null (WandMaskField_5335 pm_f_19@@10))) o2_19@@84 f_19@@99) (= (select (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@29) o2_19@@84 f_19@@99) (select (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@84 f_19@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@84 f_19@@99))
))) (forall ((o2_19@@85 T@Ref) (f_19@@100 T@Field_13597_1622) ) (!  (=> (select (|PolymorphicMapType_9844_13597_1622#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@29) null (WandMaskField_5335 pm_f_19@@10))) o2_19@@85 f_19@@100) (= (select (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@29) o2_19@@85 f_19@@100) (select (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@85 f_19@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@85 f_19@@100))
))) (forall ((o2_19@@86 T@Ref) (f_19@@101 T@Field_13597_1211) ) (!  (=> (select (|PolymorphicMapType_9844_13597_1211#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@29) null (WandMaskField_5335 pm_f_19@@10))) o2_19@@86 f_19@@101) (= (select (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@29) o2_19@@86 f_19@@101) (select (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@86 f_19@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@86 f_19@@101))
))) (forall ((o2_19@@87 T@Ref) (f_19@@102 T@Field_13610_13615) ) (!  (=> (select (|PolymorphicMapType_9844_13597_36265#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@29) null (WandMaskField_5335 pm_f_19@@10))) o2_19@@87 f_19@@102) (= (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@29) o2_19@@87 f_19@@102) (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@87 f_19@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@87 f_19@@102))
))) (forall ((o2_19@@88 T@Ref) (f_19@@103 T@Field_13597_13598) ) (!  (=> (select (|PolymorphicMapType_9844_13597_12719#PolymorphicMapType_9844| (select (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@29) null (WandMaskField_5335 pm_f_19@@10))) o2_19@@88 f_19@@103) (= (select (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@29) o2_19@@88 f_19@@103) (select (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@88 f_19@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| ExhaleHeap@@27) o2_19@@88 f_19@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@58) (IsWandField_5335_37558 pm_f_19@@10))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 T@Ref) (arg3@@2 Real) (arg4@@2 T@Ref) (arg5@@2 Real) (arg6@@2 T@Ref) ) (! (IsWandField_5267_1211 (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 T@Ref) (arg3@@3 Real) (arg4@@3 T@Ref) (arg5@@3 Real) (arg6@@3 T@Ref) ) (! (IsWandField_5284_5285 (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 T@Ref) (arg3@@4 Real) (arg4@@4 T@Ref) (arg5@@4 Real) (arg6@@4 T@Ref) ) (!  (not (IsPredicateField_5267_1211 (wand arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 T@Ref) (arg3@@5 Real) (arg4@@5 T@Ref) (arg5@@5 Real) (arg6@@5 T@Ref) ) (!  (not (IsPredicateField_5284_5285 (|wand#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5))
)))
(assert (forall ((x@@3 T@Ref) ) (! (= (getPredWandId_5341_5342 (Cell x@@3)) 0)
 :qid |stdinbpl.239:15|
 :skolemid |31|
 :pattern ( (Cell x@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9295) (o_1 T@Ref) (f_51 T@Field_12685_1211) (v Int) ) (! (succHeap Heap@@30 (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@30) (store (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@30) o_1 f_51 v) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@30) (store (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@30) o_1 f_51 v) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@30) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_9295) (o_1@@0 T@Ref) (f_51@@0 T@Field_12700_12705) (v@@0 T@PolymorphicMapType_9844) ) (! (succHeap Heap@@31 (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@31) (store (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@31) o_1@@0 f_51@@0 v@@0) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@31) (store (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@31) o_1@@0 f_51@@0 v@@0) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@31) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_9295) (o_1@@1 T@Ref) (f_51@@1 T@Field_12718_12719) (v@@1 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@32) (store (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@32) o_1@@1 f_51@@1 v@@1) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@32) (store (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@32) o_1@@1 f_51@@1 v@@1) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@32) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_9295) (o_1@@2 T@Ref) (f_51@@2 T@Field_12685_5338) (v@@2 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@33) (store (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@33) o_1@@2 f_51@@2 v@@2) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@33) (store (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@33) o_1@@2 f_51@@2 v@@2) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@33) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_9295) (o_1@@3 T@Ref) (f_51@@3 T@Field_12685_1622) (v@@3 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@34) (store (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@34) o_1@@3 f_51@@3 v@@3) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@34) (store (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@34) o_1@@3 f_51@@3 v@@3) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@34) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_9295) (o_1@@4 T@Ref) (f_51@@4 T@Field_13597_1211) (v@@4 Int) ) (! (succHeap Heap@@35 (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@35) (store (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@35) o_1@@4 f_51@@4 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@35) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@35) (store (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@35) o_1@@4 f_51@@4 v@@4)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_9295) (o_1@@5 T@Ref) (f_51@@5 T@Field_13610_13615) (v@@5 T@PolymorphicMapType_9844) ) (! (succHeap Heap@@36 (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@36) (store (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@36) o_1@@5 f_51@@5 v@@5) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@36) (store (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@36) o_1@@5 f_51@@5 v@@5) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@36) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_9295) (o_1@@6 T@Ref) (f_51@@6 T@Field_13597_13598) (v@@6 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@37) (store (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@37) o_1@@6 f_51@@6 v@@6) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@37) (store (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@37) o_1@@6 f_51@@6 v@@6) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@37) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_9295) (o_1@@7 T@Ref) (f_51@@7 T@Field_13597_5338) (v@@7 T@Ref) ) (! (succHeap Heap@@38 (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@38) (store (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@38) o_1@@7 f_51@@7 v@@7) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@38) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@38) (store (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@38) o_1@@7 f_51@@7 v@@7) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_9295) (o_1@@8 T@Ref) (f_51@@8 T@Field_13597_1622) (v@@8 Bool) ) (! (succHeap Heap@@39 (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@39) (store (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@39) o_1@@8 f_51@@8 v@@8) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@39) (store (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@39) o_1@@8 f_51@@8 v@@8) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@39) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_9295) (o_1@@9 T@Ref) (f_51@@9 T@Field_5335_1211) (v@@9 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@40) (store (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@40) o_1@@9 f_51@@9 v@@9) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@40) (store (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@40) o_1@@9 f_51@@9 v@@9) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@40) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_9295) (o_1@@10 T@Ref) (f_51@@10 T@Field_5335_12705) (v@@10 T@PolymorphicMapType_9844) ) (! (succHeap Heap@@41 (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@41) (store (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@41) o_1@@10 f_51@@10 v@@10) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@41) (store (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@41) o_1@@10 f_51@@10 v@@10) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@41) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_9295) (o_1@@11 T@Ref) (f_51@@11 T@Field_5335_12719) (v@@11 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@42) (store (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@42) o_1@@11 f_51@@11 v@@11) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@42) (store (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@42) o_1@@11 f_51@@11 v@@11) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@42) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_9295) (o_1@@12 T@Ref) (f_51@@12 T@Field_9368_9369) (v@@12 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@43) (store (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@43) o_1@@12 f_51@@12 v@@12) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9295 (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@43) (store (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@43) o_1@@12 f_51@@12 v@@12) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@43) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_9295) (o_1@@13 T@Ref) (f_51@@13 T@Field_9355_53) (v@@13 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_9295 (store (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@44) o_1@@13 f_51@@13 v@@13) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9295 (store (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@44) o_1@@13 f_51@@13 v@@13) (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_5341_5342#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_5275_17626#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_5345_17745#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_5335_1211#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_5335_29839#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_5335_12719#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_12685_1622#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_12685_5338#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_12685_1211#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_12685_12719#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_13597_1622#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_13597_5338#PolymorphicMapType_9295| Heap@@44) (|PolymorphicMapType_9295_13597_1211#PolymorphicMapType_9295| Heap@@44)))
)))
(assert (forall ((x@@4 T@Ref) ) (! (= (PredicateMaskField_5341 (Cell x@@4)) (|Cell#sm| x@@4))
 :qid |stdinbpl.231:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_5341 (Cell x@@4)))
)))
(assert (forall ((o_1@@14 T@Ref) (f_2 T@Field_9368_9369) (Heap@@45 T@PolymorphicMapType_9295) ) (!  (=> (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@45) o_1@@14 $allocated) (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@45) (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@45) o_1@@14 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@45) o_1@@14 f_2))
)))
(assert (forall ((p@@3 T@Field_12718_12719) (v_1@@2 T@FrameType) (q T@Field_12718_12719) (w@@2 T@FrameType) (r T@Field_12718_12719) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12685_12685 p@@3 v_1@@2 q w@@2) (InsidePredicate_12685_12685 q w@@2 r u)) (InsidePredicate_12685_12685 p@@3 v_1@@2 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12685_12685 p@@3 v_1@@2 q w@@2) (InsidePredicate_12685_12685 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_12718_12719) (v_1@@3 T@FrameType) (q@@0 T@Field_12718_12719) (w@@3 T@FrameType) (r@@0 T@Field_5335_12719) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_12685_12685 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_12685_9355 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_12685_9355 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12685_12685 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_12685_9355 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_12718_12719) (v_1@@4 T@FrameType) (q@@1 T@Field_12718_12719) (w@@4 T@FrameType) (r@@1 T@Field_13597_13598) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_12685_12685 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_12685_5341 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_12685_5341 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12685_12685 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_12685_5341 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_12718_12719) (v_1@@5 T@FrameType) (q@@2 T@Field_5335_12719) (w@@5 T@FrameType) (r@@2 T@Field_12718_12719) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_12685_9355 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_9355_12685 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_12685_12685 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12685_9355 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_9355_12685 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_12718_12719) (v_1@@6 T@FrameType) (q@@3 T@Field_5335_12719) (w@@6 T@FrameType) (r@@3 T@Field_5335_12719) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_12685_9355 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_9355_9355 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_12685_9355 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12685_9355 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_9355_9355 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_12718_12719) (v_1@@7 T@FrameType) (q@@4 T@Field_5335_12719) (w@@7 T@FrameType) (r@@4 T@Field_13597_13598) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_12685_9355 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_9355_5341 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_12685_5341 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12685_9355 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_9355_5341 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_12718_12719) (v_1@@8 T@FrameType) (q@@5 T@Field_13597_13598) (w@@8 T@FrameType) (r@@5 T@Field_12718_12719) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_12685_5341 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_5341_12685 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_12685_12685 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12685_5341 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_5341_12685 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_12718_12719) (v_1@@9 T@FrameType) (q@@6 T@Field_13597_13598) (w@@9 T@FrameType) (r@@6 T@Field_5335_12719) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_12685_5341 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_5341_9355 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_12685_9355 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12685_5341 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_5341_9355 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_12718_12719) (v_1@@10 T@FrameType) (q@@7 T@Field_13597_13598) (w@@10 T@FrameType) (r@@7 T@Field_13597_13598) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_12685_5341 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_5341_5341 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_12685_5341 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12685_5341 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_5341_5341 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_5335_12719) (v_1@@11 T@FrameType) (q@@8 T@Field_12718_12719) (w@@11 T@FrameType) (r@@8 T@Field_12718_12719) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_9355_12685 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_12685_12685 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_9355_12685 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9355_12685 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_12685_12685 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_5335_12719) (v_1@@12 T@FrameType) (q@@9 T@Field_12718_12719) (w@@12 T@FrameType) (r@@9 T@Field_5335_12719) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_9355_12685 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_12685_9355 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_9355_9355 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9355_12685 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_12685_9355 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_5335_12719) (v_1@@13 T@FrameType) (q@@10 T@Field_12718_12719) (w@@13 T@FrameType) (r@@10 T@Field_13597_13598) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_9355_12685 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_12685_5341 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_9355_5341 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9355_12685 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_12685_5341 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_5335_12719) (v_1@@14 T@FrameType) (q@@11 T@Field_5335_12719) (w@@14 T@FrameType) (r@@11 T@Field_12718_12719) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_9355_9355 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_9355_12685 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_9355_12685 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9355_9355 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_9355_12685 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_5335_12719) (v_1@@15 T@FrameType) (q@@12 T@Field_5335_12719) (w@@15 T@FrameType) (r@@12 T@Field_5335_12719) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_9355_9355 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_9355_9355 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_9355_9355 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9355_9355 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_9355_9355 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_5335_12719) (v_1@@16 T@FrameType) (q@@13 T@Field_5335_12719) (w@@16 T@FrameType) (r@@13 T@Field_13597_13598) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_9355_9355 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_9355_5341 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_9355_5341 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9355_9355 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_9355_5341 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_5335_12719) (v_1@@17 T@FrameType) (q@@14 T@Field_13597_13598) (w@@17 T@FrameType) (r@@14 T@Field_12718_12719) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_9355_5341 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_5341_12685 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_9355_12685 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9355_5341 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_5341_12685 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_5335_12719) (v_1@@18 T@FrameType) (q@@15 T@Field_13597_13598) (w@@18 T@FrameType) (r@@15 T@Field_5335_12719) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_9355_5341 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_5341_9355 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_9355_9355 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9355_5341 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_5341_9355 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_5335_12719) (v_1@@19 T@FrameType) (q@@16 T@Field_13597_13598) (w@@19 T@FrameType) (r@@16 T@Field_13597_13598) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_9355_5341 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_5341_5341 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_9355_5341 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9355_5341 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_5341_5341 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_13597_13598) (v_1@@20 T@FrameType) (q@@17 T@Field_12718_12719) (w@@20 T@FrameType) (r@@17 T@Field_12718_12719) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_5341_12685 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_12685_12685 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_5341_12685 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5341_12685 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_12685_12685 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_13597_13598) (v_1@@21 T@FrameType) (q@@18 T@Field_12718_12719) (w@@21 T@FrameType) (r@@18 T@Field_5335_12719) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_5341_12685 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_12685_9355 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_5341_9355 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5341_12685 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_12685_9355 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_13597_13598) (v_1@@22 T@FrameType) (q@@19 T@Field_12718_12719) (w@@22 T@FrameType) (r@@19 T@Field_13597_13598) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_5341_12685 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_12685_5341 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_5341_5341 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5341_12685 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_12685_5341 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_13597_13598) (v_1@@23 T@FrameType) (q@@20 T@Field_5335_12719) (w@@23 T@FrameType) (r@@20 T@Field_12718_12719) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_5341_9355 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_9355_12685 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_5341_12685 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5341_9355 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_9355_12685 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_13597_13598) (v_1@@24 T@FrameType) (q@@21 T@Field_5335_12719) (w@@24 T@FrameType) (r@@21 T@Field_5335_12719) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_5341_9355 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_9355_9355 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_5341_9355 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5341_9355 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_9355_9355 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_13597_13598) (v_1@@25 T@FrameType) (q@@22 T@Field_5335_12719) (w@@25 T@FrameType) (r@@22 T@Field_13597_13598) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_5341_9355 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_9355_5341 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_5341_5341 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5341_9355 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_9355_5341 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_13597_13598) (v_1@@26 T@FrameType) (q@@23 T@Field_13597_13598) (w@@26 T@FrameType) (r@@23 T@Field_12718_12719) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_5341_5341 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_5341_12685 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_5341_12685 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5341_5341 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_5341_12685 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_13597_13598) (v_1@@27 T@FrameType) (q@@24 T@Field_13597_13598) (w@@27 T@FrameType) (r@@24 T@Field_5335_12719) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_5341_5341 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_5341_9355 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_5341_9355 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5341_5341 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_5341_9355 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_13597_13598) (v_1@@28 T@FrameType) (q@@25 T@Field_13597_13598) (w@@28 T@FrameType) (r@@25 T@Field_13597_13598) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_5341_5341 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_5341_5341 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_5341_5341 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5341_5341 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_5341_5341 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@46 () T@PolymorphicMapType_9295)
(declare-fun x@@5 () T@Ref)
(declare-fun Mask@3 () T@PolymorphicMapType_9316)
(declare-fun Mask@1 () T@PolymorphicMapType_9316)
(declare-fun Mask@2 () T@PolymorphicMapType_9316)
(declare-fun Mask@0 () T@PolymorphicMapType_9316)
(set-info :boogie-vc-id |Cell#definedness|)
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
(let ((anon3_Else_correct  (=> (not (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@46) x@@5 b_32)) (=> (and (= Mask@3 Mask@1) (= (ControlFlow 0 4) 1)) anon2_correct))))
(let ((anon3_Then_correct  (=> (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@46) x@@5 b_32) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_5337_5338 Mask@1 x@@5 f_7)) (=> (HasDirectPerm_5337_5338 Mask@1 x@@5 f_7) (=> (and (and (= Mask@2 (PolymorphicMapType_9316 (|PolymorphicMapType_9316_5335_1622#PolymorphicMapType_9316| Mask@1) (|PolymorphicMapType_9316_5337_5338#PolymorphicMapType_9316| Mask@1) (store (|PolymorphicMapType_9316_5341_5342#PolymorphicMapType_9316| Mask@1) null (Cell (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@46) x@@5 f_7)) (+ (select (|PolymorphicMapType_9316_5341_5342#PolymorphicMapType_9316| Mask@1) null (Cell (select (|PolymorphicMapType_9295_5136_5137#PolymorphicMapType_9295| Heap@@46) x@@5 f_7))) FullPerm)) (|PolymorphicMapType_9316_5267_1211#PolymorphicMapType_9316| Mask@1) (|PolymorphicMapType_9316_5335_5342#PolymorphicMapType_9316| Mask@1) (|PolymorphicMapType_9316_5335_1211#PolymorphicMapType_9316| Mask@1) (|PolymorphicMapType_9316_5335_44266#PolymorphicMapType_9316| Mask@1) (|PolymorphicMapType_9316_5341_1622#PolymorphicMapType_9316| Mask@1) (|PolymorphicMapType_9316_5341_5338#PolymorphicMapType_9316| Mask@1) (|PolymorphicMapType_9316_5341_1211#PolymorphicMapType_9316| Mask@1) (|PolymorphicMapType_9316_5341_44677#PolymorphicMapType_9316| Mask@1) (|PolymorphicMapType_9316_5267_1622#PolymorphicMapType_9316| Mask@1) (|PolymorphicMapType_9316_5267_5338#PolymorphicMapType_9316| Mask@1) (|PolymorphicMapType_9316_5267_5342#PolymorphicMapType_9316| Mask@1) (|PolymorphicMapType_9316_5267_45091#PolymorphicMapType_9316| Mask@1))) (state Heap@@46 Mask@2)) (and (= Mask@3 Mask@2) (= (ControlFlow 0 2) 1))) anon2_correct))))))
(let ((anon0_correct  (=> (state Heap@@46 ZeroMask) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_9295_5133_53#PolymorphicMapType_9295| Heap@@46) x@@5 $allocated)) (and (not (= x@@5 null)) (= Mask@0 (PolymorphicMapType_9316 (store (|PolymorphicMapType_9316_5335_1622#PolymorphicMapType_9316| ZeroMask) x@@5 b_32 (+ (select (|PolymorphicMapType_9316_5335_1622#PolymorphicMapType_9316| ZeroMask) x@@5 b_32) FullPerm)) (|PolymorphicMapType_9316_5337_5338#PolymorphicMapType_9316| ZeroMask) (|PolymorphicMapType_9316_5341_5342#PolymorphicMapType_9316| ZeroMask) (|PolymorphicMapType_9316_5267_1211#PolymorphicMapType_9316| ZeroMask) (|PolymorphicMapType_9316_5335_5342#PolymorphicMapType_9316| ZeroMask) (|PolymorphicMapType_9316_5335_1211#PolymorphicMapType_9316| ZeroMask) (|PolymorphicMapType_9316_5335_44266#PolymorphicMapType_9316| ZeroMask) (|PolymorphicMapType_9316_5341_1622#PolymorphicMapType_9316| ZeroMask) (|PolymorphicMapType_9316_5341_5338#PolymorphicMapType_9316| ZeroMask) (|PolymorphicMapType_9316_5341_1211#PolymorphicMapType_9316| ZeroMask) (|PolymorphicMapType_9316_5341_44677#PolymorphicMapType_9316| ZeroMask) (|PolymorphicMapType_9316_5267_1622#PolymorphicMapType_9316| ZeroMask) (|PolymorphicMapType_9316_5267_5338#PolymorphicMapType_9316| ZeroMask) (|PolymorphicMapType_9316_5267_5342#PolymorphicMapType_9316| ZeroMask) (|PolymorphicMapType_9316_5267_45091#PolymorphicMapType_9316| ZeroMask))))) (and (and (state Heap@@46 Mask@0) (not (= x@@5 null))) (and (= Mask@1 (PolymorphicMapType_9316 (|PolymorphicMapType_9316_5335_1622#PolymorphicMapType_9316| Mask@0) (store (|PolymorphicMapType_9316_5337_5338#PolymorphicMapType_9316| Mask@0) x@@5 f_7 (+ (select (|PolymorphicMapType_9316_5337_5338#PolymorphicMapType_9316| Mask@0) x@@5 f_7) FullPerm)) (|PolymorphicMapType_9316_5341_5342#PolymorphicMapType_9316| Mask@0) (|PolymorphicMapType_9316_5267_1211#PolymorphicMapType_9316| Mask@0) (|PolymorphicMapType_9316_5335_5342#PolymorphicMapType_9316| Mask@0) (|PolymorphicMapType_9316_5335_1211#PolymorphicMapType_9316| Mask@0) (|PolymorphicMapType_9316_5335_44266#PolymorphicMapType_9316| Mask@0) (|PolymorphicMapType_9316_5341_1622#PolymorphicMapType_9316| Mask@0) (|PolymorphicMapType_9316_5341_5338#PolymorphicMapType_9316| Mask@0) (|PolymorphicMapType_9316_5341_1211#PolymorphicMapType_9316| Mask@0) (|PolymorphicMapType_9316_5341_44677#PolymorphicMapType_9316| Mask@0) (|PolymorphicMapType_9316_5267_1622#PolymorphicMapType_9316| Mask@0) (|PolymorphicMapType_9316_5267_5338#PolymorphicMapType_9316| Mask@0) (|PolymorphicMapType_9316_5267_5342#PolymorphicMapType_9316| Mask@0) (|PolymorphicMapType_9316_5267_45091#PolymorphicMapType_9316| Mask@0))) (state Heap@@46 Mask@1)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_5335_1622 Mask@1 x@@5 b_32)) (=> (HasDirectPerm_5335_1622 Mask@1 x@@5 b_32) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 5) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
