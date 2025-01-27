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
(declare-sort T@Field_17474_53 0)
(declare-sort T@Field_17487_17488 0)
(declare-sort T@Field_25291_25292 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_25242_5332 0)
(declare-sort T@Field_17474_25292 0)
(declare-sort T@Field_17474_25311 0)
(declare-sort T@Field_25291_53 0)
(declare-sort T@Field_25291_17488 0)
(declare-sort T@Field_25291_5332 0)
(declare-sort T@Field_25306_25311 0)
(declare-datatypes ((T@PolymorphicMapType_17435 0)) (((PolymorphicMapType_17435 (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| (Array T@Ref T@Field_25291_25292 Real)) (|PolymorphicMapType_17435_12811_53#PolymorphicMapType_17435| (Array T@Ref T@Field_25291_53 Real)) (|PolymorphicMapType_17435_12811_17488#PolymorphicMapType_17435| (Array T@Ref T@Field_25291_17488 Real)) (|PolymorphicMapType_17435_12811_5332#PolymorphicMapType_17435| (Array T@Ref T@Field_25291_5332 Real)) (|PolymorphicMapType_17435_12811_55851#PolymorphicMapType_17435| (Array T@Ref T@Field_25306_25311 Real)) (|PolymorphicMapType_17435_17474_12812#PolymorphicMapType_17435| (Array T@Ref T@Field_17474_25292 Real)) (|PolymorphicMapType_17435_17474_53#PolymorphicMapType_17435| (Array T@Ref T@Field_17474_53 Real)) (|PolymorphicMapType_17435_17474_17488#PolymorphicMapType_17435| (Array T@Ref T@Field_17487_17488 Real)) (|PolymorphicMapType_17435_17474_5332#PolymorphicMapType_17435| (Array T@Ref T@Field_25242_5332 Real)) (|PolymorphicMapType_17435_17474_56277#PolymorphicMapType_17435| (Array T@Ref T@Field_17474_25311 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_17963 0)) (((PolymorphicMapType_17963 (|PolymorphicMapType_17963_17474_53#PolymorphicMapType_17963| (Array T@Ref T@Field_17474_53 Bool)) (|PolymorphicMapType_17963_17474_17488#PolymorphicMapType_17963| (Array T@Ref T@Field_17487_17488 Bool)) (|PolymorphicMapType_17963_17474_5332#PolymorphicMapType_17963| (Array T@Ref T@Field_25242_5332 Bool)) (|PolymorphicMapType_17963_17474_25292#PolymorphicMapType_17963| (Array T@Ref T@Field_17474_25292 Bool)) (|PolymorphicMapType_17963_17474_49412#PolymorphicMapType_17963| (Array T@Ref T@Field_17474_25311 Bool)) (|PolymorphicMapType_17963_25291_53#PolymorphicMapType_17963| (Array T@Ref T@Field_25291_53 Bool)) (|PolymorphicMapType_17963_25291_17488#PolymorphicMapType_17963| (Array T@Ref T@Field_25291_17488 Bool)) (|PolymorphicMapType_17963_25291_5332#PolymorphicMapType_17963| (Array T@Ref T@Field_25291_5332 Bool)) (|PolymorphicMapType_17963_25291_25292#PolymorphicMapType_17963| (Array T@Ref T@Field_25291_25292 Bool)) (|PolymorphicMapType_17963_25291_50460#PolymorphicMapType_17963| (Array T@Ref T@Field_25306_25311 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_17414 0)) (((PolymorphicMapType_17414 (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| (Array T@Ref T@Field_17474_53 Bool)) (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| (Array T@Ref T@Field_17487_17488 T@Ref)) (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| (Array T@Ref T@Field_25291_25292 T@FrameType)) (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| (Array T@Ref T@Field_25242_5332 Int)) (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| (Array T@Ref T@Field_17474_25292 T@FrameType)) (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| (Array T@Ref T@Field_17474_25311 T@PolymorphicMapType_17963)) (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| (Array T@Ref T@Field_25291_53 Bool)) (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| (Array T@Ref T@Field_25291_17488 T@Ref)) (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| (Array T@Ref T@Field_25291_5332 Int)) (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| (Array T@Ref T@Field_25306_25311 T@PolymorphicMapType_17963)) ) ) ))
(declare-fun $allocated () T@Field_17474_53)
(declare-fun f_7 () T@Field_25242_5332)
(declare-fun succHeap (T@PolymorphicMapType_17414 T@PolymorphicMapType_17414) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_17414 T@PolymorphicMapType_17414) Bool)
(declare-fun __iar__assume_helper_8 (Bool Bool Bool Bool Bool Bool Bool Bool Real Real Real Real Real Real Real Real Real) Real)
(declare-fun NoPerm () Real)
(declare-fun state (T@PolymorphicMapType_17414 T@PolymorphicMapType_17435) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_17435) Bool)
(declare-fun __iar__assume_helper_1 (Bool Real Real) Real)
(declare-fun p_2 (T@Ref T@Ref T@Ref) T@Field_25291_25292)
(declare-fun IsPredicateField_12811_12812 (T@Field_25291_25292) Bool)
(declare-fun |p#trigger_12811| (T@PolymorphicMapType_17414 T@Field_25291_25292) Bool)
(declare-fun |p#everUsed_12811| (T@Field_25291_25292) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_17963)
(declare-fun getPredWandId_12811_12812 (T@Field_25291_25292) Int)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun __iar__assume_helper_7 (Bool Bool Bool Bool Bool Bool Bool Real Real Real Real Real Real Real Real) Real)
(declare-fun PredicateMaskField_12811 (T@Field_25291_25292) T@Field_25306_25311)
(declare-fun |p#sm| (T@Ref T@Ref T@Ref) T@Field_25306_25311)
(declare-fun __iar__assume_helper_6 (Bool Bool Bool Bool Bool Bool Real Real Real Real Real Real Real) Real)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_17414 T@PolymorphicMapType_17414 T@PolymorphicMapType_17435) Bool)
(declare-fun null () T@Ref)
(declare-fun HasDirectPerm_25291_25292 (T@PolymorphicMapType_17435 T@Ref T@Field_25291_25292) Bool)
(declare-fun IsPredicateField_17474_47928 (T@Field_17474_25292) Bool)
(declare-fun PredicateMaskField_17474 (T@Field_17474_25292) T@Field_17474_25311)
(declare-fun HasDirectPerm_17474_25292 (T@PolymorphicMapType_17435 T@Ref T@Field_17474_25292) Bool)
(declare-fun IsWandField_25291_51625 (T@Field_25291_25292) Bool)
(declare-fun WandMaskField_25291 (T@Field_25291_25292) T@Field_25306_25311)
(declare-fun IsWandField_17474_51268 (T@Field_17474_25292) Bool)
(declare-fun WandMaskField_17474 (T@Field_17474_25292) T@Field_17474_25311)
(declare-fun dummyHeap () T@PolymorphicMapType_17414)
(declare-fun ZeroMask () T@PolymorphicMapType_17435)
(declare-fun __iar__assume_helper_9 (Bool Bool Bool Bool Bool Bool Bool Bool Bool Real Real Real Real Real Real Real Real Real Real) Real)
(declare-fun InsidePredicate_25291_25291 (T@Field_25291_25292 T@FrameType T@Field_25291_25292 T@FrameType) Bool)
(declare-fun InsidePredicate_17474_17474 (T@Field_17474_25292 T@FrameType T@Field_17474_25292 T@FrameType) Bool)
(declare-fun __iar__assume_helper_2 (Bool Bool Real Real Real) Real)
(declare-fun IsPredicateField_12806_5332 (T@Field_25242_5332) Bool)
(declare-fun IsWandField_12806_5332 (T@Field_25242_5332) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_17474_58569 (T@Field_17474_25311) Bool)
(declare-fun IsWandField_17474_58585 (T@Field_17474_25311) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_17474_17488 (T@Field_17487_17488) Bool)
(declare-fun IsWandField_17474_17488 (T@Field_17487_17488) Bool)
(declare-fun IsPredicateField_17474_53 (T@Field_17474_53) Bool)
(declare-fun IsWandField_17474_53 (T@Field_17474_53) Bool)
(declare-fun IsPredicateField_12811_57752 (T@Field_25306_25311) Bool)
(declare-fun IsWandField_12811_57768 (T@Field_25306_25311) Bool)
(declare-fun IsPredicateField_12811_5332 (T@Field_25291_5332) Bool)
(declare-fun IsWandField_12811_5332 (T@Field_25291_5332) Bool)
(declare-fun IsPredicateField_12811_17488 (T@Field_25291_17488) Bool)
(declare-fun IsWandField_12811_17488 (T@Field_25291_17488) Bool)
(declare-fun IsPredicateField_12811_53 (T@Field_25291_53) Bool)
(declare-fun IsWandField_12811_53 (T@Field_25291_53) Bool)
(declare-fun HasDirectPerm_25291_47640 (T@PolymorphicMapType_17435 T@Ref T@Field_25306_25311) Bool)
(declare-fun HasDirectPerm_25291_5332 (T@PolymorphicMapType_17435 T@Ref T@Field_25291_5332) Bool)
(declare-fun HasDirectPerm_25291_17488 (T@PolymorphicMapType_17435 T@Ref T@Field_25291_17488) Bool)
(declare-fun HasDirectPerm_25291_53 (T@PolymorphicMapType_17435 T@Ref T@Field_25291_53) Bool)
(declare-fun HasDirectPerm_17474_46479 (T@PolymorphicMapType_17435 T@Ref T@Field_17474_25311) Bool)
(declare-fun HasDirectPerm_17474_5332 (T@PolymorphicMapType_17435 T@Ref T@Field_25242_5332) Bool)
(declare-fun HasDirectPerm_17474_17488 (T@PolymorphicMapType_17435 T@Ref T@Field_17487_17488) Bool)
(declare-fun HasDirectPerm_17474_53 (T@PolymorphicMapType_17435 T@Ref T@Field_17474_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun __iar__assume_helper_3 (Bool Bool Bool Real Real Real Real) Real)
(declare-fun sumMask (T@PolymorphicMapType_17435 T@PolymorphicMapType_17435 T@PolymorphicMapType_17435) Bool)
(declare-fun __iar__assume_helper_10 (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Real Real Real Real Real Real Real Real Real Real Real) Real)
(declare-fun __iar__assume_helper_4 (Bool Bool Bool Bool Real Real Real Real Real) Real)
(declare-fun InsidePredicate_25291_17474 (T@Field_25291_25292 T@FrameType T@Field_17474_25292 T@FrameType) Bool)
(declare-fun InsidePredicate_17474_25291 (T@Field_17474_25292 T@FrameType T@Field_25291_25292 T@FrameType) Bool)
(declare-fun __iar__assume_helper_5 (Bool Bool Bool Bool Bool Real Real Real Real Real Real) Real)
(assert (forall ((Heap0 T@PolymorphicMapType_17414) (Heap1 T@PolymorphicMapType_17414) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((c_8 Bool) (c_7 Bool) (c_6 Bool) (c_5 Bool) (c_4_2 Bool) (c_3 Bool) (c_2_2 Bool) (c_1 Bool) (p_8 Real) (p_7_2 Real) (p_6 Real) (p_5_2 Real) (p_4_1 Real) (p_3_2 Real) (p_2_1 Real) (p_1_1 Real) (p_0_1 Real) ) (! (= (__iar__assume_helper_8 c_8 c_7 c_6 c_5 c_4_2 c_3 c_2_2 c_1 p_8 p_7_2 p_6 p_5_2 p_4_1 p_3_2 p_2_1 p_1_1 p_0_1) (+ (+ (+ (+ (+ (+ (+ (+ p_0_1 (ite c_1 p_1_1 NoPerm)) (ite c_2_2 p_2_1 NoPerm)) (ite c_3 p_3_2 NoPerm)) (ite c_4_2 p_4_1 NoPerm)) (ite c_5 p_5_2 NoPerm)) (ite c_6 p_6 NoPerm)) (ite c_7 p_7_2 NoPerm)) (ite c_8 p_8 NoPerm)))
 :qid |stdinbpl.640:15|
 :skolemid |89|
 :pattern ( (__iar__assume_helper_8 c_8 c_7 c_6 c_5 c_4_2 c_3 c_2_2 c_1 p_8 p_7_2 p_6 p_5_2 p_4_1 p_3_2 p_2_1 p_1_1 p_0_1))
)))
(assert (forall ((Heap T@PolymorphicMapType_17414) (Mask T@PolymorphicMapType_17435) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_17414) (Heap1@@0 T@PolymorphicMapType_17414) (Heap2 T@PolymorphicMapType_17414) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((c_1@@0 Bool) (p_1_1@@0 Real) (p_0_1@@0 Real) ) (! (= (__iar__assume_helper_1 c_1@@0 p_1_1@@0 p_0_1@@0) (+ p_0_1@@0 (ite c_1@@0 p_1_1@@0 NoPerm)))
 :qid |stdinbpl.598:15|
 :skolemid |82|
 :pattern ( (__iar__assume_helper_1 c_1@@0 p_1_1@@0 p_0_1@@0))
)))
(assert (forall ((x T@Ref) (y T@Ref) (z T@Ref) ) (! (IsPredicateField_12811_12812 (p_2 x y z))
 :qid |stdinbpl.676:15|
 :skolemid |93|
 :pattern ( (p_2 x y z))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_17414) (x@@0 T@Ref) (y@@0 T@Ref) (z@@0 T@Ref) ) (! (|p#everUsed_12811| (p_2 x@@0 y@@0 z@@0))
 :qid |stdinbpl.695:15|
 :skolemid |97|
 :pattern ( (|p#trigger_12811| Heap@@0 (p_2 x@@0 y@@0 z@@0)))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_25306_25311) ) (!  (not (select (|PolymorphicMapType_17963_25291_50460#PolymorphicMapType_17963| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17963_25291_50460#PolymorphicMapType_17963| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_25291_25292) ) (!  (not (select (|PolymorphicMapType_17963_25291_25292#PolymorphicMapType_17963| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17963_25291_25292#PolymorphicMapType_17963| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_25291_5332) ) (!  (not (select (|PolymorphicMapType_17963_25291_5332#PolymorphicMapType_17963| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17963_25291_5332#PolymorphicMapType_17963| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_25291_17488) ) (!  (not (select (|PolymorphicMapType_17963_25291_17488#PolymorphicMapType_17963| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17963_25291_17488#PolymorphicMapType_17963| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_25291_53) ) (!  (not (select (|PolymorphicMapType_17963_25291_53#PolymorphicMapType_17963| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17963_25291_53#PolymorphicMapType_17963| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_17474_25311) ) (!  (not (select (|PolymorphicMapType_17963_17474_49412#PolymorphicMapType_17963| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17963_17474_49412#PolymorphicMapType_17963| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_17474_25292) ) (!  (not (select (|PolymorphicMapType_17963_17474_25292#PolymorphicMapType_17963| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17963_17474_25292#PolymorphicMapType_17963| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_25242_5332) ) (!  (not (select (|PolymorphicMapType_17963_17474_5332#PolymorphicMapType_17963| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17963_17474_5332#PolymorphicMapType_17963| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_17487_17488) ) (!  (not (select (|PolymorphicMapType_17963_17474_17488#PolymorphicMapType_17963| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17963_17474_17488#PolymorphicMapType_17963| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_17474_53) ) (!  (not (select (|PolymorphicMapType_17963_17474_53#PolymorphicMapType_17963| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17963_17474_53#PolymorphicMapType_17963| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((x@@1 T@Ref) (y@@1 T@Ref) (z@@1 T@Ref) ) (! (= (getPredWandId_12811_12812 (p_2 x@@1 y@@1 z@@1)) 0)
 :qid |stdinbpl.680:15|
 :skolemid |94|
 :pattern ( (p_2 x@@1 y@@1 z@@1))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.290:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((c_7@@0 Bool) (c_6@@0 Bool) (c_5@@0 Bool) (c_4_2@@0 Bool) (c_3@@0 Bool) (c_2_2@@0 Bool) (c_1@@1 Bool) (p_7_2@@0 Real) (p_6@@0 Real) (p_5_2@@0 Real) (p_4_1@@0 Real) (p_3_2@@0 Real) (p_2_1@@0 Real) (p_1_1@@1 Real) (p_0_1@@1 Real) ) (! (= (__iar__assume_helper_7 c_7@@0 c_6@@0 c_5@@0 c_4_2@@0 c_3@@0 c_2_2@@0 c_1@@1 p_7_2@@0 p_6@@0 p_5_2@@0 p_4_1@@0 p_3_2@@0 p_2_1@@0 p_1_1@@1 p_0_1@@1) (+ (+ (+ (+ (+ (+ (+ p_0_1@@1 (ite c_1@@1 p_1_1@@1 NoPerm)) (ite c_2_2@@0 p_2_1@@0 NoPerm)) (ite c_3@@0 p_3_2@@0 NoPerm)) (ite c_4_2@@0 p_4_1@@0 NoPerm)) (ite c_5@@0 p_5_2@@0 NoPerm)) (ite c_6@@0 p_6@@0 NoPerm)) (ite c_7@@0 p_7_2@@0 NoPerm)))
 :qid |stdinbpl.634:15|
 :skolemid |88|
 :pattern ( (__iar__assume_helper_7 c_7@@0 c_6@@0 c_5@@0 c_4_2@@0 c_3@@0 c_2_2@@0 c_1@@1 p_7_2@@0 p_6@@0 p_5_2@@0 p_4_1@@0 p_3_2@@0 p_2_1@@0 p_1_1@@1 p_0_1@@1))
)))
(assert (forall ((x@@2 T@Ref) (y@@2 T@Ref) (z@@2 T@Ref) ) (! (= (PredicateMaskField_12811 (p_2 x@@2 y@@2 z@@2)) (|p#sm| x@@2 y@@2 z@@2))
 :qid |stdinbpl.672:15|
 :skolemid |92|
 :pattern ( (PredicateMaskField_12811 (p_2 x@@2 y@@2 z@@2)))
)))
(assert (forall ((c_6@@1 Bool) (c_5@@1 Bool) (c_4_2@@1 Bool) (c_3@@1 Bool) (c_2_2@@1 Bool) (c_1@@2 Bool) (p_6@@1 Real) (p_5_2@@1 Real) (p_4_1@@1 Real) (p_3_2@@1 Real) (p_2_1@@1 Real) (p_1_1@@2 Real) (p_0_1@@2 Real) ) (! (= (__iar__assume_helper_6 c_6@@1 c_5@@1 c_4_2@@1 c_3@@1 c_2_2@@1 c_1@@2 p_6@@1 p_5_2@@1 p_4_1@@1 p_3_2@@1 p_2_1@@1 p_1_1@@2 p_0_1@@2) (+ (+ (+ (+ (+ (+ p_0_1@@2 (ite c_1@@2 p_1_1@@2 NoPerm)) (ite c_2_2@@1 p_2_1@@1 NoPerm)) (ite c_3@@1 p_3_2@@1 NoPerm)) (ite c_4_2@@1 p_4_1@@1 NoPerm)) (ite c_5@@1 p_5_2@@1 NoPerm)) (ite c_6@@1 p_6@@1 NoPerm)))
 :qid |stdinbpl.628:15|
 :skolemid |87|
 :pattern ( (__iar__assume_helper_6 c_6@@1 c_5@@1 c_4_2@@1 c_3@@1 c_2_2@@1 c_1@@2 p_6@@1 p_5_2@@1 p_4_1@@1 p_3_2@@1 p_2_1@@1 p_1_1@@2 p_0_1@@2))
)))
(assert (forall ((x@@3 T@Ref) (y@@3 T@Ref) (z@@3 T@Ref) (x2 T@Ref) (y2 T@Ref) (z2 T@Ref) ) (!  (=> (= (p_2 x@@3 y@@3 z@@3) (p_2 x2 y2 z2)) (and (= x@@3 x2) (and (= y@@3 y2) (= z@@3 z2))))
 :qid |stdinbpl.686:15|
 :skolemid |95|
 :pattern ( (p_2 x@@3 y@@3 z@@3) (p_2 x2 y2 z2))
)))
(assert (forall ((x@@4 T@Ref) (y@@4 T@Ref) (z@@4 T@Ref) (x2@@0 T@Ref) (y2@@0 T@Ref) (z2@@0 T@Ref) ) (!  (=> (= (|p#sm| x@@4 y@@4 z@@4) (|p#sm| x2@@0 y2@@0 z2@@0)) (and (= x@@4 x2@@0) (and (= y@@4 y2@@0) (= z@@4 z2@@0))))
 :qid |stdinbpl.690:15|
 :skolemid |96|
 :pattern ( (|p#sm| x@@4 y@@4 z@@4) (|p#sm| x2@@0 y2@@0 z2@@0))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.293:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_17414) (ExhaleHeap T@PolymorphicMapType_17414) (Mask@@0 T@PolymorphicMapType_17435) (pm_f_21 T@Field_25291_25292) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_25291_25292 Mask@@0 null pm_f_21) (IsPredicateField_12811_12812 pm_f_21)) (= (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@1) null (PredicateMaskField_12811 pm_f_21)) (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| ExhaleHeap) null (PredicateMaskField_12811 pm_f_21)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_12811_12812 pm_f_21) (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| ExhaleHeap) null (PredicateMaskField_12811 pm_f_21)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_17414) (ExhaleHeap@@0 T@PolymorphicMapType_17414) (Mask@@1 T@PolymorphicMapType_17435) (pm_f_21@@0 T@Field_17474_25292) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_17474_25292 Mask@@1 null pm_f_21@@0) (IsPredicateField_17474_47928 pm_f_21@@0)) (= (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@2) null (PredicateMaskField_17474 pm_f_21@@0)) (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| ExhaleHeap@@0) null (PredicateMaskField_17474 pm_f_21@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_17474_47928 pm_f_21@@0) (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| ExhaleHeap@@0) null (PredicateMaskField_17474 pm_f_21@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_17414) (ExhaleHeap@@1 T@PolymorphicMapType_17414) (Mask@@2 T@PolymorphicMapType_17435) (pm_f_21@@1 T@Field_25291_25292) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_25291_25292 Mask@@2 null pm_f_21@@1) (IsWandField_25291_51625 pm_f_21@@1)) (= (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@3) null (WandMaskField_25291 pm_f_21@@1)) (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| ExhaleHeap@@1) null (WandMaskField_25291 pm_f_21@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_25291_51625 pm_f_21@@1) (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| ExhaleHeap@@1) null (WandMaskField_25291 pm_f_21@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_17414) (ExhaleHeap@@2 T@PolymorphicMapType_17414) (Mask@@3 T@PolymorphicMapType_17435) (pm_f_21@@2 T@Field_17474_25292) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_17474_25292 Mask@@3 null pm_f_21@@2) (IsWandField_17474_51268 pm_f_21@@2)) (= (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@4) null (WandMaskField_17474 pm_f_21@@2)) (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| ExhaleHeap@@2) null (WandMaskField_17474 pm_f_21@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_17474_51268 pm_f_21@@2) (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| ExhaleHeap@@2) null (WandMaskField_17474 pm_f_21@@2)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_17414) (ExhaleHeap@@3 T@PolymorphicMapType_17414) (Mask@@4 T@PolymorphicMapType_17435) (pm_f_21@@3 T@Field_25291_25292) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_25291_25292 Mask@@4 null pm_f_21@@3) (IsPredicateField_12811_12812 pm_f_21@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_21 T@Ref) (f_56 T@Field_17474_53) ) (!  (=> (select (|PolymorphicMapType_17963_17474_53#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@5) null (PredicateMaskField_12811 pm_f_21@@3))) o2_21 f_56) (= (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@5) o2_21 f_56) (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| ExhaleHeap@@3) o2_21 f_56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| ExhaleHeap@@3) o2_21 f_56))
)) (forall ((o2_21@@0 T@Ref) (f_56@@0 T@Field_17487_17488) ) (!  (=> (select (|PolymorphicMapType_17963_17474_17488#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@5) null (PredicateMaskField_12811 pm_f_21@@3))) o2_21@@0 f_56@@0) (= (select (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@5) o2_21@@0 f_56@@0) (select (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| ExhaleHeap@@3) o2_21@@0 f_56@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| ExhaleHeap@@3) o2_21@@0 f_56@@0))
))) (forall ((o2_21@@1 T@Ref) (f_56@@1 T@Field_25242_5332) ) (!  (=> (select (|PolymorphicMapType_17963_17474_5332#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@5) null (PredicateMaskField_12811 pm_f_21@@3))) o2_21@@1 f_56@@1) (= (select (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@5) o2_21@@1 f_56@@1) (select (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| ExhaleHeap@@3) o2_21@@1 f_56@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| ExhaleHeap@@3) o2_21@@1 f_56@@1))
))) (forall ((o2_21@@2 T@Ref) (f_56@@2 T@Field_17474_25292) ) (!  (=> (select (|PolymorphicMapType_17963_17474_25292#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@5) null (PredicateMaskField_12811 pm_f_21@@3))) o2_21@@2 f_56@@2) (= (select (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@5) o2_21@@2 f_56@@2) (select (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| ExhaleHeap@@3) o2_21@@2 f_56@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| ExhaleHeap@@3) o2_21@@2 f_56@@2))
))) (forall ((o2_21@@3 T@Ref) (f_56@@3 T@Field_17474_25311) ) (!  (=> (select (|PolymorphicMapType_17963_17474_49412#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@5) null (PredicateMaskField_12811 pm_f_21@@3))) o2_21@@3 f_56@@3) (= (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@5) o2_21@@3 f_56@@3) (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| ExhaleHeap@@3) o2_21@@3 f_56@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| ExhaleHeap@@3) o2_21@@3 f_56@@3))
))) (forall ((o2_21@@4 T@Ref) (f_56@@4 T@Field_25291_53) ) (!  (=> (select (|PolymorphicMapType_17963_25291_53#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@5) null (PredicateMaskField_12811 pm_f_21@@3))) o2_21@@4 f_56@@4) (= (select (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@5) o2_21@@4 f_56@@4) (select (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| ExhaleHeap@@3) o2_21@@4 f_56@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| ExhaleHeap@@3) o2_21@@4 f_56@@4))
))) (forall ((o2_21@@5 T@Ref) (f_56@@5 T@Field_25291_17488) ) (!  (=> (select (|PolymorphicMapType_17963_25291_17488#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@5) null (PredicateMaskField_12811 pm_f_21@@3))) o2_21@@5 f_56@@5) (= (select (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@5) o2_21@@5 f_56@@5) (select (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| ExhaleHeap@@3) o2_21@@5 f_56@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| ExhaleHeap@@3) o2_21@@5 f_56@@5))
))) (forall ((o2_21@@6 T@Ref) (f_56@@6 T@Field_25291_5332) ) (!  (=> (select (|PolymorphicMapType_17963_25291_5332#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@5) null (PredicateMaskField_12811 pm_f_21@@3))) o2_21@@6 f_56@@6) (= (select (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@5) o2_21@@6 f_56@@6) (select (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| ExhaleHeap@@3) o2_21@@6 f_56@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| ExhaleHeap@@3) o2_21@@6 f_56@@6))
))) (forall ((o2_21@@7 T@Ref) (f_56@@7 T@Field_25291_25292) ) (!  (=> (select (|PolymorphicMapType_17963_25291_25292#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@5) null (PredicateMaskField_12811 pm_f_21@@3))) o2_21@@7 f_56@@7) (= (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@5) o2_21@@7 f_56@@7) (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| ExhaleHeap@@3) o2_21@@7 f_56@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| ExhaleHeap@@3) o2_21@@7 f_56@@7))
))) (forall ((o2_21@@8 T@Ref) (f_56@@8 T@Field_25306_25311) ) (!  (=> (select (|PolymorphicMapType_17963_25291_50460#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@5) null (PredicateMaskField_12811 pm_f_21@@3))) o2_21@@8 f_56@@8) (= (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@5) o2_21@@8 f_56@@8) (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| ExhaleHeap@@3) o2_21@@8 f_56@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| ExhaleHeap@@3) o2_21@@8 f_56@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_12811_12812 pm_f_21@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_17414) (ExhaleHeap@@4 T@PolymorphicMapType_17414) (Mask@@5 T@PolymorphicMapType_17435) (pm_f_21@@4 T@Field_17474_25292) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_17474_25292 Mask@@5 null pm_f_21@@4) (IsPredicateField_17474_47928 pm_f_21@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_21@@9 T@Ref) (f_56@@9 T@Field_17474_53) ) (!  (=> (select (|PolymorphicMapType_17963_17474_53#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@6) null (PredicateMaskField_17474 pm_f_21@@4))) o2_21@@9 f_56@@9) (= (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@6) o2_21@@9 f_56@@9) (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| ExhaleHeap@@4) o2_21@@9 f_56@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| ExhaleHeap@@4) o2_21@@9 f_56@@9))
)) (forall ((o2_21@@10 T@Ref) (f_56@@10 T@Field_17487_17488) ) (!  (=> (select (|PolymorphicMapType_17963_17474_17488#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@6) null (PredicateMaskField_17474 pm_f_21@@4))) o2_21@@10 f_56@@10) (= (select (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@6) o2_21@@10 f_56@@10) (select (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| ExhaleHeap@@4) o2_21@@10 f_56@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| ExhaleHeap@@4) o2_21@@10 f_56@@10))
))) (forall ((o2_21@@11 T@Ref) (f_56@@11 T@Field_25242_5332) ) (!  (=> (select (|PolymorphicMapType_17963_17474_5332#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@6) null (PredicateMaskField_17474 pm_f_21@@4))) o2_21@@11 f_56@@11) (= (select (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@6) o2_21@@11 f_56@@11) (select (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| ExhaleHeap@@4) o2_21@@11 f_56@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| ExhaleHeap@@4) o2_21@@11 f_56@@11))
))) (forall ((o2_21@@12 T@Ref) (f_56@@12 T@Field_17474_25292) ) (!  (=> (select (|PolymorphicMapType_17963_17474_25292#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@6) null (PredicateMaskField_17474 pm_f_21@@4))) o2_21@@12 f_56@@12) (= (select (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@6) o2_21@@12 f_56@@12) (select (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| ExhaleHeap@@4) o2_21@@12 f_56@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| ExhaleHeap@@4) o2_21@@12 f_56@@12))
))) (forall ((o2_21@@13 T@Ref) (f_56@@13 T@Field_17474_25311) ) (!  (=> (select (|PolymorphicMapType_17963_17474_49412#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@6) null (PredicateMaskField_17474 pm_f_21@@4))) o2_21@@13 f_56@@13) (= (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@6) o2_21@@13 f_56@@13) (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| ExhaleHeap@@4) o2_21@@13 f_56@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| ExhaleHeap@@4) o2_21@@13 f_56@@13))
))) (forall ((o2_21@@14 T@Ref) (f_56@@14 T@Field_25291_53) ) (!  (=> (select (|PolymorphicMapType_17963_25291_53#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@6) null (PredicateMaskField_17474 pm_f_21@@4))) o2_21@@14 f_56@@14) (= (select (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@6) o2_21@@14 f_56@@14) (select (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| ExhaleHeap@@4) o2_21@@14 f_56@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| ExhaleHeap@@4) o2_21@@14 f_56@@14))
))) (forall ((o2_21@@15 T@Ref) (f_56@@15 T@Field_25291_17488) ) (!  (=> (select (|PolymorphicMapType_17963_25291_17488#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@6) null (PredicateMaskField_17474 pm_f_21@@4))) o2_21@@15 f_56@@15) (= (select (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@6) o2_21@@15 f_56@@15) (select (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| ExhaleHeap@@4) o2_21@@15 f_56@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| ExhaleHeap@@4) o2_21@@15 f_56@@15))
))) (forall ((o2_21@@16 T@Ref) (f_56@@16 T@Field_25291_5332) ) (!  (=> (select (|PolymorphicMapType_17963_25291_5332#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@6) null (PredicateMaskField_17474 pm_f_21@@4))) o2_21@@16 f_56@@16) (= (select (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@6) o2_21@@16 f_56@@16) (select (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| ExhaleHeap@@4) o2_21@@16 f_56@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| ExhaleHeap@@4) o2_21@@16 f_56@@16))
))) (forall ((o2_21@@17 T@Ref) (f_56@@17 T@Field_25291_25292) ) (!  (=> (select (|PolymorphicMapType_17963_25291_25292#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@6) null (PredicateMaskField_17474 pm_f_21@@4))) o2_21@@17 f_56@@17) (= (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@6) o2_21@@17 f_56@@17) (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| ExhaleHeap@@4) o2_21@@17 f_56@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| ExhaleHeap@@4) o2_21@@17 f_56@@17))
))) (forall ((o2_21@@18 T@Ref) (f_56@@18 T@Field_25306_25311) ) (!  (=> (select (|PolymorphicMapType_17963_25291_50460#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@6) null (PredicateMaskField_17474 pm_f_21@@4))) o2_21@@18 f_56@@18) (= (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@6) o2_21@@18 f_56@@18) (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| ExhaleHeap@@4) o2_21@@18 f_56@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| ExhaleHeap@@4) o2_21@@18 f_56@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_17474_47928 pm_f_21@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_17414) (ExhaleHeap@@5 T@PolymorphicMapType_17414) (Mask@@6 T@PolymorphicMapType_17435) (pm_f_21@@5 T@Field_25291_25292) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_25291_25292 Mask@@6 null pm_f_21@@5) (IsWandField_25291_51625 pm_f_21@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_21@@19 T@Ref) (f_56@@19 T@Field_17474_53) ) (!  (=> (select (|PolymorphicMapType_17963_17474_53#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@7) null (WandMaskField_25291 pm_f_21@@5))) o2_21@@19 f_56@@19) (= (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@7) o2_21@@19 f_56@@19) (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| ExhaleHeap@@5) o2_21@@19 f_56@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| ExhaleHeap@@5) o2_21@@19 f_56@@19))
)) (forall ((o2_21@@20 T@Ref) (f_56@@20 T@Field_17487_17488) ) (!  (=> (select (|PolymorphicMapType_17963_17474_17488#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@7) null (WandMaskField_25291 pm_f_21@@5))) o2_21@@20 f_56@@20) (= (select (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@7) o2_21@@20 f_56@@20) (select (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| ExhaleHeap@@5) o2_21@@20 f_56@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| ExhaleHeap@@5) o2_21@@20 f_56@@20))
))) (forall ((o2_21@@21 T@Ref) (f_56@@21 T@Field_25242_5332) ) (!  (=> (select (|PolymorphicMapType_17963_17474_5332#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@7) null (WandMaskField_25291 pm_f_21@@5))) o2_21@@21 f_56@@21) (= (select (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@7) o2_21@@21 f_56@@21) (select (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| ExhaleHeap@@5) o2_21@@21 f_56@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| ExhaleHeap@@5) o2_21@@21 f_56@@21))
))) (forall ((o2_21@@22 T@Ref) (f_56@@22 T@Field_17474_25292) ) (!  (=> (select (|PolymorphicMapType_17963_17474_25292#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@7) null (WandMaskField_25291 pm_f_21@@5))) o2_21@@22 f_56@@22) (= (select (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@7) o2_21@@22 f_56@@22) (select (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| ExhaleHeap@@5) o2_21@@22 f_56@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| ExhaleHeap@@5) o2_21@@22 f_56@@22))
))) (forall ((o2_21@@23 T@Ref) (f_56@@23 T@Field_17474_25311) ) (!  (=> (select (|PolymorphicMapType_17963_17474_49412#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@7) null (WandMaskField_25291 pm_f_21@@5))) o2_21@@23 f_56@@23) (= (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@7) o2_21@@23 f_56@@23) (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| ExhaleHeap@@5) o2_21@@23 f_56@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| ExhaleHeap@@5) o2_21@@23 f_56@@23))
))) (forall ((o2_21@@24 T@Ref) (f_56@@24 T@Field_25291_53) ) (!  (=> (select (|PolymorphicMapType_17963_25291_53#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@7) null (WandMaskField_25291 pm_f_21@@5))) o2_21@@24 f_56@@24) (= (select (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@7) o2_21@@24 f_56@@24) (select (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| ExhaleHeap@@5) o2_21@@24 f_56@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| ExhaleHeap@@5) o2_21@@24 f_56@@24))
))) (forall ((o2_21@@25 T@Ref) (f_56@@25 T@Field_25291_17488) ) (!  (=> (select (|PolymorphicMapType_17963_25291_17488#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@7) null (WandMaskField_25291 pm_f_21@@5))) o2_21@@25 f_56@@25) (= (select (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@7) o2_21@@25 f_56@@25) (select (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| ExhaleHeap@@5) o2_21@@25 f_56@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| ExhaleHeap@@5) o2_21@@25 f_56@@25))
))) (forall ((o2_21@@26 T@Ref) (f_56@@26 T@Field_25291_5332) ) (!  (=> (select (|PolymorphicMapType_17963_25291_5332#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@7) null (WandMaskField_25291 pm_f_21@@5))) o2_21@@26 f_56@@26) (= (select (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@7) o2_21@@26 f_56@@26) (select (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| ExhaleHeap@@5) o2_21@@26 f_56@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| ExhaleHeap@@5) o2_21@@26 f_56@@26))
))) (forall ((o2_21@@27 T@Ref) (f_56@@27 T@Field_25291_25292) ) (!  (=> (select (|PolymorphicMapType_17963_25291_25292#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@7) null (WandMaskField_25291 pm_f_21@@5))) o2_21@@27 f_56@@27) (= (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@7) o2_21@@27 f_56@@27) (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| ExhaleHeap@@5) o2_21@@27 f_56@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| ExhaleHeap@@5) o2_21@@27 f_56@@27))
))) (forall ((o2_21@@28 T@Ref) (f_56@@28 T@Field_25306_25311) ) (!  (=> (select (|PolymorphicMapType_17963_25291_50460#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@7) null (WandMaskField_25291 pm_f_21@@5))) o2_21@@28 f_56@@28) (= (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@7) o2_21@@28 f_56@@28) (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| ExhaleHeap@@5) o2_21@@28 f_56@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| ExhaleHeap@@5) o2_21@@28 f_56@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_25291_51625 pm_f_21@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_17414) (ExhaleHeap@@6 T@PolymorphicMapType_17414) (Mask@@7 T@PolymorphicMapType_17435) (pm_f_21@@6 T@Field_17474_25292) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_17474_25292 Mask@@7 null pm_f_21@@6) (IsWandField_17474_51268 pm_f_21@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_21@@29 T@Ref) (f_56@@29 T@Field_17474_53) ) (!  (=> (select (|PolymorphicMapType_17963_17474_53#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@8) null (WandMaskField_17474 pm_f_21@@6))) o2_21@@29 f_56@@29) (= (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@8) o2_21@@29 f_56@@29) (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| ExhaleHeap@@6) o2_21@@29 f_56@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| ExhaleHeap@@6) o2_21@@29 f_56@@29))
)) (forall ((o2_21@@30 T@Ref) (f_56@@30 T@Field_17487_17488) ) (!  (=> (select (|PolymorphicMapType_17963_17474_17488#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@8) null (WandMaskField_17474 pm_f_21@@6))) o2_21@@30 f_56@@30) (= (select (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@8) o2_21@@30 f_56@@30) (select (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| ExhaleHeap@@6) o2_21@@30 f_56@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| ExhaleHeap@@6) o2_21@@30 f_56@@30))
))) (forall ((o2_21@@31 T@Ref) (f_56@@31 T@Field_25242_5332) ) (!  (=> (select (|PolymorphicMapType_17963_17474_5332#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@8) null (WandMaskField_17474 pm_f_21@@6))) o2_21@@31 f_56@@31) (= (select (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@8) o2_21@@31 f_56@@31) (select (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| ExhaleHeap@@6) o2_21@@31 f_56@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| ExhaleHeap@@6) o2_21@@31 f_56@@31))
))) (forall ((o2_21@@32 T@Ref) (f_56@@32 T@Field_17474_25292) ) (!  (=> (select (|PolymorphicMapType_17963_17474_25292#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@8) null (WandMaskField_17474 pm_f_21@@6))) o2_21@@32 f_56@@32) (= (select (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@8) o2_21@@32 f_56@@32) (select (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| ExhaleHeap@@6) o2_21@@32 f_56@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| ExhaleHeap@@6) o2_21@@32 f_56@@32))
))) (forall ((o2_21@@33 T@Ref) (f_56@@33 T@Field_17474_25311) ) (!  (=> (select (|PolymorphicMapType_17963_17474_49412#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@8) null (WandMaskField_17474 pm_f_21@@6))) o2_21@@33 f_56@@33) (= (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@8) o2_21@@33 f_56@@33) (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| ExhaleHeap@@6) o2_21@@33 f_56@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| ExhaleHeap@@6) o2_21@@33 f_56@@33))
))) (forall ((o2_21@@34 T@Ref) (f_56@@34 T@Field_25291_53) ) (!  (=> (select (|PolymorphicMapType_17963_25291_53#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@8) null (WandMaskField_17474 pm_f_21@@6))) o2_21@@34 f_56@@34) (= (select (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@8) o2_21@@34 f_56@@34) (select (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| ExhaleHeap@@6) o2_21@@34 f_56@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| ExhaleHeap@@6) o2_21@@34 f_56@@34))
))) (forall ((o2_21@@35 T@Ref) (f_56@@35 T@Field_25291_17488) ) (!  (=> (select (|PolymorphicMapType_17963_25291_17488#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@8) null (WandMaskField_17474 pm_f_21@@6))) o2_21@@35 f_56@@35) (= (select (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@8) o2_21@@35 f_56@@35) (select (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| ExhaleHeap@@6) o2_21@@35 f_56@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| ExhaleHeap@@6) o2_21@@35 f_56@@35))
))) (forall ((o2_21@@36 T@Ref) (f_56@@36 T@Field_25291_5332) ) (!  (=> (select (|PolymorphicMapType_17963_25291_5332#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@8) null (WandMaskField_17474 pm_f_21@@6))) o2_21@@36 f_56@@36) (= (select (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@8) o2_21@@36 f_56@@36) (select (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| ExhaleHeap@@6) o2_21@@36 f_56@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| ExhaleHeap@@6) o2_21@@36 f_56@@36))
))) (forall ((o2_21@@37 T@Ref) (f_56@@37 T@Field_25291_25292) ) (!  (=> (select (|PolymorphicMapType_17963_25291_25292#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@8) null (WandMaskField_17474 pm_f_21@@6))) o2_21@@37 f_56@@37) (= (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@8) o2_21@@37 f_56@@37) (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| ExhaleHeap@@6) o2_21@@37 f_56@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| ExhaleHeap@@6) o2_21@@37 f_56@@37))
))) (forall ((o2_21@@38 T@Ref) (f_56@@38 T@Field_25306_25311) ) (!  (=> (select (|PolymorphicMapType_17963_25291_50460#PolymorphicMapType_17963| (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@8) null (WandMaskField_17474 pm_f_21@@6))) o2_21@@38 f_56@@38) (= (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@8) o2_21@@38 f_56@@38) (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| ExhaleHeap@@6) o2_21@@38 f_56@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| ExhaleHeap@@6) o2_21@@38 f_56@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_17474_51268 pm_f_21@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((c_9 Bool) (c_8@@0 Bool) (c_7@@1 Bool) (c_6@@2 Bool) (c_5@@2 Bool) (c_4_2@@2 Bool) (c_3@@2 Bool) (c_2_2@@2 Bool) (c_1@@3 Bool) (p_9_1 Real) (p_8@@0 Real) (p_7_2@@1 Real) (p_6@@2 Real) (p_5_2@@2 Real) (p_4_1@@2 Real) (p_3_2@@2 Real) (p_2_1@@2 Real) (p_1_1@@3 Real) (p_0_1@@3 Real) ) (! (= (__iar__assume_helper_9 c_9 c_8@@0 c_7@@1 c_6@@2 c_5@@2 c_4_2@@2 c_3@@2 c_2_2@@2 c_1@@3 p_9_1 p_8@@0 p_7_2@@1 p_6@@2 p_5_2@@2 p_4_1@@2 p_3_2@@2 p_2_1@@2 p_1_1@@3 p_0_1@@3) (+ (+ (+ (+ (+ (+ (+ (+ (+ p_0_1@@3 (ite c_1@@3 p_1_1@@3 NoPerm)) (ite c_2_2@@2 p_2_1@@2 NoPerm)) (ite c_3@@2 p_3_2@@2 NoPerm)) (ite c_4_2@@2 p_4_1@@2 NoPerm)) (ite c_5@@2 p_5_2@@2 NoPerm)) (ite c_6@@2 p_6@@2 NoPerm)) (ite c_7@@1 p_7_2@@1 NoPerm)) (ite c_8@@0 p_8@@0 NoPerm)) (ite c_9 p_9_1 NoPerm)))
 :qid |stdinbpl.646:15|
 :skolemid |90|
 :pattern ( (__iar__assume_helper_9 c_9 c_8@@0 c_7@@1 c_6@@2 c_5@@2 c_4_2@@2 c_3@@2 c_2_2@@2 c_1@@3 p_9_1 p_8@@0 p_7_2@@1 p_6@@2 p_5_2@@2 p_4_1@@2 p_3_2@@2 p_2_1@@2 p_1_1@@3 p_0_1@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_17414) (ExhaleHeap@@7 T@PolymorphicMapType_17414) (Mask@@8 T@PolymorphicMapType_17435) (o_43 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@9) o_43 $allocated) (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| ExhaleHeap@@7) o_43 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| ExhaleHeap@@7) o_43 $allocated))
)))
(assert (forall ((p T@Field_25291_25292) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_25291_25291 p v_1 p w))
 :qid |stdinbpl.188:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_25291_25291 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_17474_25292) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_17474_17474 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.188:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17474_17474 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((c_2_2@@3 Bool) (c_1@@4 Bool) (p_2_1@@3 Real) (p_1_1@@4 Real) (p_0_1@@4 Real) ) (! (= (__iar__assume_helper_2 c_2_2@@3 c_1@@4 p_2_1@@3 p_1_1@@4 p_0_1@@4) (+ (+ p_0_1@@4 (ite c_1@@4 p_1_1@@4 NoPerm)) (ite c_2_2@@3 p_2_1@@3 NoPerm)))
 :qid |stdinbpl.604:15|
 :skolemid |83|
 :pattern ( (__iar__assume_helper_2 c_2_2@@3 c_1@@4 p_2_1@@3 p_1_1@@4 p_0_1@@4))
)))
(assert  (not (IsPredicateField_12806_5332 f_7)))
(assert  (not (IsWandField_12806_5332 f_7)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_17414) (ExhaleHeap@@8 T@PolymorphicMapType_17414) (Mask@@9 T@PolymorphicMapType_17435) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_17435) (o_2@@9 T@Ref) (f_4@@9 T@Field_17474_25311) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_17435_17474_56277#PolymorphicMapType_17435| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_17474_58569 f_4@@9))) (not (IsWandField_17474_58585 f_4@@9))) (<= (select (|PolymorphicMapType_17435_17474_56277#PolymorphicMapType_17435| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_17435_17474_56277#PolymorphicMapType_17435| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_17435) (o_2@@10 T@Ref) (f_4@@10 T@Field_25242_5332) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_17435_17474_5332#PolymorphicMapType_17435| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_12806_5332 f_4@@10))) (not (IsWandField_12806_5332 f_4@@10))) (<= (select (|PolymorphicMapType_17435_17474_5332#PolymorphicMapType_17435| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_17435_17474_5332#PolymorphicMapType_17435| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_17435) (o_2@@11 T@Ref) (f_4@@11 T@Field_17487_17488) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_17435_17474_17488#PolymorphicMapType_17435| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_17474_17488 f_4@@11))) (not (IsWandField_17474_17488 f_4@@11))) (<= (select (|PolymorphicMapType_17435_17474_17488#PolymorphicMapType_17435| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_17435_17474_17488#PolymorphicMapType_17435| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_17435) (o_2@@12 T@Ref) (f_4@@12 T@Field_17474_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_17435_17474_53#PolymorphicMapType_17435| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_17474_53 f_4@@12))) (not (IsWandField_17474_53 f_4@@12))) (<= (select (|PolymorphicMapType_17435_17474_53#PolymorphicMapType_17435| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_17435_17474_53#PolymorphicMapType_17435| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_17435) (o_2@@13 T@Ref) (f_4@@13 T@Field_17474_25292) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_17435_17474_12812#PolymorphicMapType_17435| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_17474_47928 f_4@@13))) (not (IsWandField_17474_51268 f_4@@13))) (<= (select (|PolymorphicMapType_17435_17474_12812#PolymorphicMapType_17435| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_17435_17474_12812#PolymorphicMapType_17435| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_17435) (o_2@@14 T@Ref) (f_4@@14 T@Field_25306_25311) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_17435_12811_55851#PolymorphicMapType_17435| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_12811_57752 f_4@@14))) (not (IsWandField_12811_57768 f_4@@14))) (<= (select (|PolymorphicMapType_17435_12811_55851#PolymorphicMapType_17435| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_17435_12811_55851#PolymorphicMapType_17435| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_17435) (o_2@@15 T@Ref) (f_4@@15 T@Field_25291_5332) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_17435_12811_5332#PolymorphicMapType_17435| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_12811_5332 f_4@@15))) (not (IsWandField_12811_5332 f_4@@15))) (<= (select (|PolymorphicMapType_17435_12811_5332#PolymorphicMapType_17435| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_17435_12811_5332#PolymorphicMapType_17435| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_17435) (o_2@@16 T@Ref) (f_4@@16 T@Field_25291_17488) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_17435_12811_17488#PolymorphicMapType_17435| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_12811_17488 f_4@@16))) (not (IsWandField_12811_17488 f_4@@16))) (<= (select (|PolymorphicMapType_17435_12811_17488#PolymorphicMapType_17435| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_17435_12811_17488#PolymorphicMapType_17435| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_17435) (o_2@@17 T@Ref) (f_4@@17 T@Field_25291_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_17435_12811_53#PolymorphicMapType_17435| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_12811_53 f_4@@17))) (not (IsWandField_12811_53 f_4@@17))) (<= (select (|PolymorphicMapType_17435_12811_53#PolymorphicMapType_17435| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_17435_12811_53#PolymorphicMapType_17435| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_17435) (o_2@@18 T@Ref) (f_4@@18 T@Field_25291_25292) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_12811_12812 f_4@@18))) (not (IsWandField_25291_51625 f_4@@18))) (<= (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_17435) (o_2@@19 T@Ref) (f_4@@19 T@Field_25306_25311) ) (! (= (HasDirectPerm_25291_47640 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_17435_12811_55851#PolymorphicMapType_17435| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25291_47640 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_17435) (o_2@@20 T@Ref) (f_4@@20 T@Field_25291_25292) ) (! (= (HasDirectPerm_25291_25292 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25291_25292 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_17435) (o_2@@21 T@Ref) (f_4@@21 T@Field_25291_5332) ) (! (= (HasDirectPerm_25291_5332 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_17435_12811_5332#PolymorphicMapType_17435| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25291_5332 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_17435) (o_2@@22 T@Ref) (f_4@@22 T@Field_25291_17488) ) (! (= (HasDirectPerm_25291_17488 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_17435_12811_17488#PolymorphicMapType_17435| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25291_17488 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_17435) (o_2@@23 T@Ref) (f_4@@23 T@Field_25291_53) ) (! (= (HasDirectPerm_25291_53 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_17435_12811_53#PolymorphicMapType_17435| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25291_53 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_17435) (o_2@@24 T@Ref) (f_4@@24 T@Field_17474_25311) ) (! (= (HasDirectPerm_17474_46479 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_17435_17474_56277#PolymorphicMapType_17435| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17474_46479 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_17435) (o_2@@25 T@Ref) (f_4@@25 T@Field_17474_25292) ) (! (= (HasDirectPerm_17474_25292 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_17435_17474_12812#PolymorphicMapType_17435| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17474_25292 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_17435) (o_2@@26 T@Ref) (f_4@@26 T@Field_25242_5332) ) (! (= (HasDirectPerm_17474_5332 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_17435_17474_5332#PolymorphicMapType_17435| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17474_5332 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_17435) (o_2@@27 T@Ref) (f_4@@27 T@Field_17487_17488) ) (! (= (HasDirectPerm_17474_17488 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_17435_17474_17488#PolymorphicMapType_17435| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17474_17488 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_17435) (o_2@@28 T@Ref) (f_4@@28 T@Field_17474_53) ) (! (= (HasDirectPerm_17474_53 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_17435_17474_53#PolymorphicMapType_17435| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17474_53 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.176:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_17414) (ExhaleHeap@@9 T@PolymorphicMapType_17414) (Mask@@30 T@PolymorphicMapType_17435) (o_43@@0 T@Ref) (f_56@@39 T@Field_25306_25311) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_25291_47640 Mask@@30 o_43@@0 f_56@@39) (= (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@11) o_43@@0 f_56@@39) (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| ExhaleHeap@@9) o_43@@0 f_56@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| ExhaleHeap@@9) o_43@@0 f_56@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_17414) (ExhaleHeap@@10 T@PolymorphicMapType_17414) (Mask@@31 T@PolymorphicMapType_17435) (o_43@@1 T@Ref) (f_56@@40 T@Field_25291_25292) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_25291_25292 Mask@@31 o_43@@1 f_56@@40) (= (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@12) o_43@@1 f_56@@40) (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| ExhaleHeap@@10) o_43@@1 f_56@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| ExhaleHeap@@10) o_43@@1 f_56@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_17414) (ExhaleHeap@@11 T@PolymorphicMapType_17414) (Mask@@32 T@PolymorphicMapType_17435) (o_43@@2 T@Ref) (f_56@@41 T@Field_25291_5332) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_25291_5332 Mask@@32 o_43@@2 f_56@@41) (= (select (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@13) o_43@@2 f_56@@41) (select (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| ExhaleHeap@@11) o_43@@2 f_56@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| ExhaleHeap@@11) o_43@@2 f_56@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_17414) (ExhaleHeap@@12 T@PolymorphicMapType_17414) (Mask@@33 T@PolymorphicMapType_17435) (o_43@@3 T@Ref) (f_56@@42 T@Field_25291_17488) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_25291_17488 Mask@@33 o_43@@3 f_56@@42) (= (select (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@14) o_43@@3 f_56@@42) (select (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| ExhaleHeap@@12) o_43@@3 f_56@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| ExhaleHeap@@12) o_43@@3 f_56@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_17414) (ExhaleHeap@@13 T@PolymorphicMapType_17414) (Mask@@34 T@PolymorphicMapType_17435) (o_43@@4 T@Ref) (f_56@@43 T@Field_25291_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_25291_53 Mask@@34 o_43@@4 f_56@@43) (= (select (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@15) o_43@@4 f_56@@43) (select (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| ExhaleHeap@@13) o_43@@4 f_56@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| ExhaleHeap@@13) o_43@@4 f_56@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_17414) (ExhaleHeap@@14 T@PolymorphicMapType_17414) (Mask@@35 T@PolymorphicMapType_17435) (o_43@@5 T@Ref) (f_56@@44 T@Field_17474_25311) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_17474_46479 Mask@@35 o_43@@5 f_56@@44) (= (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@16) o_43@@5 f_56@@44) (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| ExhaleHeap@@14) o_43@@5 f_56@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| ExhaleHeap@@14) o_43@@5 f_56@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_17414) (ExhaleHeap@@15 T@PolymorphicMapType_17414) (Mask@@36 T@PolymorphicMapType_17435) (o_43@@6 T@Ref) (f_56@@45 T@Field_17474_25292) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_17474_25292 Mask@@36 o_43@@6 f_56@@45) (= (select (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@17) o_43@@6 f_56@@45) (select (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| ExhaleHeap@@15) o_43@@6 f_56@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| ExhaleHeap@@15) o_43@@6 f_56@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_17414) (ExhaleHeap@@16 T@PolymorphicMapType_17414) (Mask@@37 T@PolymorphicMapType_17435) (o_43@@7 T@Ref) (f_56@@46 T@Field_25242_5332) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_17474_5332 Mask@@37 o_43@@7 f_56@@46) (= (select (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@18) o_43@@7 f_56@@46) (select (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| ExhaleHeap@@16) o_43@@7 f_56@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| ExhaleHeap@@16) o_43@@7 f_56@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_17414) (ExhaleHeap@@17 T@PolymorphicMapType_17414) (Mask@@38 T@PolymorphicMapType_17435) (o_43@@8 T@Ref) (f_56@@47 T@Field_17487_17488) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_17474_17488 Mask@@38 o_43@@8 f_56@@47) (= (select (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@19) o_43@@8 f_56@@47) (select (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| ExhaleHeap@@17) o_43@@8 f_56@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| ExhaleHeap@@17) o_43@@8 f_56@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_17414) (ExhaleHeap@@18 T@PolymorphicMapType_17414) (Mask@@39 T@PolymorphicMapType_17435) (o_43@@9 T@Ref) (f_56@@48 T@Field_17474_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_17474_53 Mask@@39 o_43@@9 f_56@@48) (= (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@20) o_43@@9 f_56@@48) (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| ExhaleHeap@@18) o_43@@9 f_56@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| ExhaleHeap@@18) o_43@@9 f_56@@48))
)))
(assert (forall ((c_3@@3 Bool) (c_2_2@@4 Bool) (c_1@@5 Bool) (p_3_2@@3 Real) (p_2_1@@4 Real) (p_1_1@@5 Real) (p_0_1@@5 Real) ) (! (= (__iar__assume_helper_3 c_3@@3 c_2_2@@4 c_1@@5 p_3_2@@3 p_2_1@@4 p_1_1@@5 p_0_1@@5) (+ (+ (+ p_0_1@@5 (ite c_1@@5 p_1_1@@5 NoPerm)) (ite c_2_2@@4 p_2_1@@4 NoPerm)) (ite c_3@@3 p_3_2@@3 NoPerm)))
 :qid |stdinbpl.610:15|
 :skolemid |84|
 :pattern ( (__iar__assume_helper_3 c_3@@3 c_2_2@@4 c_1@@5 p_3_2@@3 p_2_1@@4 p_1_1@@5 p_0_1@@5))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_17474_25311) ) (! (= (select (|PolymorphicMapType_17435_17474_56277#PolymorphicMapType_17435| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17435_17474_56277#PolymorphicMapType_17435| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_25242_5332) ) (! (= (select (|PolymorphicMapType_17435_17474_5332#PolymorphicMapType_17435| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17435_17474_5332#PolymorphicMapType_17435| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_17487_17488) ) (! (= (select (|PolymorphicMapType_17435_17474_17488#PolymorphicMapType_17435| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17435_17474_17488#PolymorphicMapType_17435| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_17474_53) ) (! (= (select (|PolymorphicMapType_17435_17474_53#PolymorphicMapType_17435| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17435_17474_53#PolymorphicMapType_17435| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_17474_25292) ) (! (= (select (|PolymorphicMapType_17435_17474_12812#PolymorphicMapType_17435| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17435_17474_12812#PolymorphicMapType_17435| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_25306_25311) ) (! (= (select (|PolymorphicMapType_17435_12811_55851#PolymorphicMapType_17435| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17435_12811_55851#PolymorphicMapType_17435| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_25291_5332) ) (! (= (select (|PolymorphicMapType_17435_12811_5332#PolymorphicMapType_17435| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17435_12811_5332#PolymorphicMapType_17435| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_25291_17488) ) (! (= (select (|PolymorphicMapType_17435_12811_17488#PolymorphicMapType_17435| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17435_12811_17488#PolymorphicMapType_17435| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_25291_53) ) (! (= (select (|PolymorphicMapType_17435_12811_53#PolymorphicMapType_17435| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17435_12811_53#PolymorphicMapType_17435| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_25291_25292) ) (! (= (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_17435) (SummandMask1 T@PolymorphicMapType_17435) (SummandMask2 T@PolymorphicMapType_17435) (o_2@@39 T@Ref) (f_4@@39 T@Field_17474_25311) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_17435_17474_56277#PolymorphicMapType_17435| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_17435_17474_56277#PolymorphicMapType_17435| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_17435_17474_56277#PolymorphicMapType_17435| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17435_17474_56277#PolymorphicMapType_17435| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17435_17474_56277#PolymorphicMapType_17435| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17435_17474_56277#PolymorphicMapType_17435| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_17435) (SummandMask1@@0 T@PolymorphicMapType_17435) (SummandMask2@@0 T@PolymorphicMapType_17435) (o_2@@40 T@Ref) (f_4@@40 T@Field_25242_5332) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_17435_17474_5332#PolymorphicMapType_17435| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_17435_17474_5332#PolymorphicMapType_17435| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_17435_17474_5332#PolymorphicMapType_17435| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17435_17474_5332#PolymorphicMapType_17435| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17435_17474_5332#PolymorphicMapType_17435| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17435_17474_5332#PolymorphicMapType_17435| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_17435) (SummandMask1@@1 T@PolymorphicMapType_17435) (SummandMask2@@1 T@PolymorphicMapType_17435) (o_2@@41 T@Ref) (f_4@@41 T@Field_17487_17488) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_17435_17474_17488#PolymorphicMapType_17435| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_17435_17474_17488#PolymorphicMapType_17435| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_17435_17474_17488#PolymorphicMapType_17435| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17435_17474_17488#PolymorphicMapType_17435| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17435_17474_17488#PolymorphicMapType_17435| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17435_17474_17488#PolymorphicMapType_17435| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_17435) (SummandMask1@@2 T@PolymorphicMapType_17435) (SummandMask2@@2 T@PolymorphicMapType_17435) (o_2@@42 T@Ref) (f_4@@42 T@Field_17474_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_17435_17474_53#PolymorphicMapType_17435| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_17435_17474_53#PolymorphicMapType_17435| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_17435_17474_53#PolymorphicMapType_17435| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17435_17474_53#PolymorphicMapType_17435| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17435_17474_53#PolymorphicMapType_17435| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17435_17474_53#PolymorphicMapType_17435| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_17435) (SummandMask1@@3 T@PolymorphicMapType_17435) (SummandMask2@@3 T@PolymorphicMapType_17435) (o_2@@43 T@Ref) (f_4@@43 T@Field_17474_25292) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_17435_17474_12812#PolymorphicMapType_17435| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_17435_17474_12812#PolymorphicMapType_17435| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_17435_17474_12812#PolymorphicMapType_17435| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17435_17474_12812#PolymorphicMapType_17435| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17435_17474_12812#PolymorphicMapType_17435| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17435_17474_12812#PolymorphicMapType_17435| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_17435) (SummandMask1@@4 T@PolymorphicMapType_17435) (SummandMask2@@4 T@PolymorphicMapType_17435) (o_2@@44 T@Ref) (f_4@@44 T@Field_25306_25311) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_17435_12811_55851#PolymorphicMapType_17435| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_17435_12811_55851#PolymorphicMapType_17435| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_17435_12811_55851#PolymorphicMapType_17435| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_17435_12811_55851#PolymorphicMapType_17435| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_17435_12811_55851#PolymorphicMapType_17435| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_17435_12811_55851#PolymorphicMapType_17435| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_17435) (SummandMask1@@5 T@PolymorphicMapType_17435) (SummandMask2@@5 T@PolymorphicMapType_17435) (o_2@@45 T@Ref) (f_4@@45 T@Field_25291_5332) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_17435_12811_5332#PolymorphicMapType_17435| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_17435_12811_5332#PolymorphicMapType_17435| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_17435_12811_5332#PolymorphicMapType_17435| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_17435_12811_5332#PolymorphicMapType_17435| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_17435_12811_5332#PolymorphicMapType_17435| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_17435_12811_5332#PolymorphicMapType_17435| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_17435) (SummandMask1@@6 T@PolymorphicMapType_17435) (SummandMask2@@6 T@PolymorphicMapType_17435) (o_2@@46 T@Ref) (f_4@@46 T@Field_25291_17488) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_17435_12811_17488#PolymorphicMapType_17435| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_17435_12811_17488#PolymorphicMapType_17435| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_17435_12811_17488#PolymorphicMapType_17435| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_17435_12811_17488#PolymorphicMapType_17435| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_17435_12811_17488#PolymorphicMapType_17435| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_17435_12811_17488#PolymorphicMapType_17435| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_17435) (SummandMask1@@7 T@PolymorphicMapType_17435) (SummandMask2@@7 T@PolymorphicMapType_17435) (o_2@@47 T@Ref) (f_4@@47 T@Field_25291_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_17435_12811_53#PolymorphicMapType_17435| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_17435_12811_53#PolymorphicMapType_17435| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_17435_12811_53#PolymorphicMapType_17435| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_17435_12811_53#PolymorphicMapType_17435| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_17435_12811_53#PolymorphicMapType_17435| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_17435_12811_53#PolymorphicMapType_17435| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_17435) (SummandMask1@@8 T@PolymorphicMapType_17435) (SummandMask2@@8 T@PolymorphicMapType_17435) (o_2@@48 T@Ref) (f_4@@48 T@Field_25291_25292) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((c_10_1 Bool) (c_9@@0 Bool) (c_8@@1 Bool) (c_7@@2 Bool) (c_6@@3 Bool) (c_5@@3 Bool) (c_4_2@@3 Bool) (c_3@@4 Bool) (c_2_2@@5 Bool) (c_1@@6 Bool) (p_10_1 Real) (p_9_1@@0 Real) (p_8@@1 Real) (p_7_2@@2 Real) (p_6@@3 Real) (p_5_2@@3 Real) (p_4_1@@3 Real) (p_3_2@@4 Real) (p_2_1@@5 Real) (p_1_1@@6 Real) (p_0_1@@6 Real) ) (! (= (__iar__assume_helper_10 c_10_1 c_9@@0 c_8@@1 c_7@@2 c_6@@3 c_5@@3 c_4_2@@3 c_3@@4 c_2_2@@5 c_1@@6 p_10_1 p_9_1@@0 p_8@@1 p_7_2@@2 p_6@@3 p_5_2@@3 p_4_1@@3 p_3_2@@4 p_2_1@@5 p_1_1@@6 p_0_1@@6) (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ p_0_1@@6 (ite c_1@@6 p_1_1@@6 NoPerm)) (ite c_2_2@@5 p_2_1@@5 NoPerm)) (ite c_3@@4 p_3_2@@4 NoPerm)) (ite c_4_2@@3 p_4_1@@3 NoPerm)) (ite c_5@@3 p_5_2@@3 NoPerm)) (ite c_6@@3 p_6@@3 NoPerm)) (ite c_7@@2 p_7_2@@2 NoPerm)) (ite c_8@@1 p_8@@1 NoPerm)) (ite c_9@@0 p_9_1@@0 NoPerm)) (ite c_10_1 p_10_1 NoPerm)))
 :qid |stdinbpl.652:15|
 :skolemid |91|
 :pattern ( (__iar__assume_helper_10 c_10_1 c_9@@0 c_8@@1 c_7@@2 c_6@@3 c_5@@3 c_4_2@@3 c_3@@4 c_2_2@@5 c_1@@6 p_10_1 p_9_1@@0 p_8@@1 p_7_2@@2 p_6@@3 p_5_2@@3 p_4_1@@3 p_3_2@@4 p_2_1@@5 p_1_1@@6 p_0_1@@6))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_17414) (o_11 T@Ref) (f_57 T@Field_25306_25311) (v T@PolymorphicMapType_17963) ) (! (succHeap Heap@@21 (PolymorphicMapType_17414 (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@21) (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@21) (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@21) (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@21) (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@21) (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@21) (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@21) (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@21) (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@21) (store (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@21) o_11 f_57 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17414 (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@21) (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@21) (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@21) (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@21) (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@21) (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@21) (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@21) (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@21) (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@21) (store (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@21) o_11 f_57 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_17414) (o_11@@0 T@Ref) (f_57@@0 T@Field_25291_5332) (v@@0 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_17414 (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@22) (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@22) (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@22) (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@22) (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@22) (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@22) (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@22) (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@22) (store (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@22) o_11@@0 f_57@@0 v@@0) (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17414 (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@22) (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@22) (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@22) (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@22) (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@22) (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@22) (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@22) (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@22) (store (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@22) o_11@@0 f_57@@0 v@@0) (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_17414) (o_11@@1 T@Ref) (f_57@@1 T@Field_25291_25292) (v@@1 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_17414 (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@23) (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@23) (store (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@23) o_11@@1 f_57@@1 v@@1) (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@23) (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@23) (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@23) (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@23) (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@23) (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@23) (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17414 (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@23) (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@23) (store (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@23) o_11@@1 f_57@@1 v@@1) (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@23) (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@23) (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@23) (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@23) (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@23) (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@23) (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_17414) (o_11@@2 T@Ref) (f_57@@2 T@Field_25291_17488) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_17414 (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@24) (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@24) (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@24) (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@24) (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@24) (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@24) (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@24) (store (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@24) o_11@@2 f_57@@2 v@@2) (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@24) (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17414 (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@24) (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@24) (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@24) (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@24) (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@24) (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@24) (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@24) (store (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@24) o_11@@2 f_57@@2 v@@2) (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@24) (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_17414) (o_11@@3 T@Ref) (f_57@@3 T@Field_25291_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_17414 (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@25) (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@25) (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@25) (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@25) (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@25) (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@25) (store (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@25) o_11@@3 f_57@@3 v@@3) (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@25) (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@25) (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17414 (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@25) (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@25) (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@25) (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@25) (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@25) (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@25) (store (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@25) o_11@@3 f_57@@3 v@@3) (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@25) (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@25) (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_17414) (o_11@@4 T@Ref) (f_57@@4 T@Field_17474_25311) (v@@4 T@PolymorphicMapType_17963) ) (! (succHeap Heap@@26 (PolymorphicMapType_17414 (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@26) (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@26) (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@26) (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@26) (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@26) (store (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@26) o_11@@4 f_57@@4 v@@4) (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@26) (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@26) (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@26) (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17414 (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@26) (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@26) (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@26) (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@26) (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@26) (store (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@26) o_11@@4 f_57@@4 v@@4) (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@26) (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@26) (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@26) (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_17414) (o_11@@5 T@Ref) (f_57@@5 T@Field_25242_5332) (v@@5 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_17414 (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@27) (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@27) (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@27) (store (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@27) o_11@@5 f_57@@5 v@@5) (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@27) (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@27) (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@27) (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@27) (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@27) (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17414 (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@27) (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@27) (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@27) (store (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@27) o_11@@5 f_57@@5 v@@5) (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@27) (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@27) (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@27) (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@27) (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@27) (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_17414) (o_11@@6 T@Ref) (f_57@@6 T@Field_17474_25292) (v@@6 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_17414 (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@28) (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@28) (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@28) (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@28) (store (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@28) o_11@@6 f_57@@6 v@@6) (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@28) (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@28) (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@28) (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@28) (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17414 (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@28) (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@28) (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@28) (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@28) (store (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@28) o_11@@6 f_57@@6 v@@6) (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@28) (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@28) (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@28) (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@28) (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_17414) (o_11@@7 T@Ref) (f_57@@7 T@Field_17487_17488) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_17414 (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@29) (store (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@29) o_11@@7 f_57@@7 v@@7) (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@29) (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@29) (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@29) (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@29) (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@29) (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@29) (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@29) (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17414 (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@29) (store (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@29) o_11@@7 f_57@@7 v@@7) (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@29) (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@29) (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@29) (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@29) (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@29) (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@29) (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@29) (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_17414) (o_11@@8 T@Ref) (f_57@@8 T@Field_17474_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_17414 (store (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@30) o_11@@8 f_57@@8 v@@8) (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@30) (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@30) (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@30) (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@30) (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@30) (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@30) (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@30) (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@30) (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17414 (store (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@30) o_11@@8 f_57@@8 v@@8) (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@30) (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@30) (|PolymorphicMapType_17414_17474_5332#PolymorphicMapType_17414| Heap@@30) (|PolymorphicMapType_17414_17474_25292#PolymorphicMapType_17414| Heap@@30) (|PolymorphicMapType_17414_17474_46521#PolymorphicMapType_17414| Heap@@30) (|PolymorphicMapType_17414_25291_53#PolymorphicMapType_17414| Heap@@30) (|PolymorphicMapType_17414_25291_17488#PolymorphicMapType_17414| Heap@@30) (|PolymorphicMapType_17414_25291_5332#PolymorphicMapType_17414| Heap@@30) (|PolymorphicMapType_17414_25291_47682#PolymorphicMapType_17414| Heap@@30)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.288:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.289:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_11@@9 T@Ref) (f_17 T@Field_17487_17488) (Heap@@31 T@PolymorphicMapType_17414) ) (!  (=> (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@31) o_11@@9 $allocated) (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@31) (select (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@31) o_11@@9 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_17414_12210_12211#PolymorphicMapType_17414| Heap@@31) o_11@@9 f_17))
)))
(assert (forall ((c_4_2@@4 Bool) (c_3@@5 Bool) (c_2_2@@6 Bool) (c_1@@7 Bool) (p_4_1@@4 Real) (p_3_2@@5 Real) (p_2_1@@6 Real) (p_1_1@@7 Real) (p_0_1@@7 Real) ) (! (= (__iar__assume_helper_4 c_4_2@@4 c_3@@5 c_2_2@@6 c_1@@7 p_4_1@@4 p_3_2@@5 p_2_1@@6 p_1_1@@7 p_0_1@@7) (+ (+ (+ (+ p_0_1@@7 (ite c_1@@7 p_1_1@@7 NoPerm)) (ite c_2_2@@6 p_2_1@@6 NoPerm)) (ite c_3@@5 p_3_2@@5 NoPerm)) (ite c_4_2@@4 p_4_1@@4 NoPerm)))
 :qid |stdinbpl.616:15|
 :skolemid |85|
 :pattern ( (__iar__assume_helper_4 c_4_2@@4 c_3@@5 c_2_2@@6 c_1@@7 p_4_1@@4 p_3_2@@5 p_2_1@@6 p_1_1@@7 p_0_1@@7))
)))
(assert (forall ((p@@2 T@Field_25291_25292) (v_1@@1 T@FrameType) (q T@Field_25291_25292) (w@@1 T@FrameType) (r T@Field_25291_25292) (u T@FrameType) ) (!  (=> (and (InsidePredicate_25291_25291 p@@2 v_1@@1 q w@@1) (InsidePredicate_25291_25291 q w@@1 r u)) (InsidePredicate_25291_25291 p@@2 v_1@@1 r u))
 :qid |stdinbpl.183:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25291_25291 p@@2 v_1@@1 q w@@1) (InsidePredicate_25291_25291 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_25291_25292) (v_1@@2 T@FrameType) (q@@0 T@Field_25291_25292) (w@@2 T@FrameType) (r@@0 T@Field_17474_25292) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_25291_25291 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_25291_17474 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_25291_17474 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.183:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25291_25291 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_25291_17474 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_25291_25292) (v_1@@3 T@FrameType) (q@@1 T@Field_17474_25292) (w@@3 T@FrameType) (r@@1 T@Field_25291_25292) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_25291_17474 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_17474_25291 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_25291_25291 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.183:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25291_17474 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_17474_25291 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_25291_25292) (v_1@@4 T@FrameType) (q@@2 T@Field_17474_25292) (w@@4 T@FrameType) (r@@2 T@Field_17474_25292) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_25291_17474 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_17474_17474 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_25291_17474 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.183:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25291_17474 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_17474_17474 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_17474_25292) (v_1@@5 T@FrameType) (q@@3 T@Field_25291_25292) (w@@5 T@FrameType) (r@@3 T@Field_25291_25292) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_17474_25291 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_25291_25291 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_17474_25291 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.183:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17474_25291 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_25291_25291 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_17474_25292) (v_1@@6 T@FrameType) (q@@4 T@Field_25291_25292) (w@@6 T@FrameType) (r@@4 T@Field_17474_25292) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_17474_25291 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_25291_17474 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_17474_17474 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.183:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17474_25291 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_25291_17474 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_17474_25292) (v_1@@7 T@FrameType) (q@@5 T@Field_17474_25292) (w@@7 T@FrameType) (r@@5 T@Field_25291_25292) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_17474_17474 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_17474_25291 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_17474_25291 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.183:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17474_17474 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_17474_25291 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_17474_25292) (v_1@@8 T@FrameType) (q@@6 T@Field_17474_25292) (w@@8 T@FrameType) (r@@6 T@Field_17474_25292) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_17474_17474 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_17474_17474 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_17474_17474 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.183:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17474_17474 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_17474_17474 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.294:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((c_5@@4 Bool) (c_4_2@@5 Bool) (c_3@@6 Bool) (c_2_2@@7 Bool) (c_1@@8 Bool) (p_5_2@@4 Real) (p_4_1@@5 Real) (p_3_2@@6 Real) (p_2_1@@7 Real) (p_1_1@@8 Real) (p_0_1@@8 Real) ) (! (= (__iar__assume_helper_5 c_5@@4 c_4_2@@5 c_3@@6 c_2_2@@7 c_1@@8 p_5_2@@4 p_4_1@@5 p_3_2@@6 p_2_1@@7 p_1_1@@8 p_0_1@@8) (+ (+ (+ (+ (+ p_0_1@@8 (ite c_1@@8 p_1_1@@8 NoPerm)) (ite c_2_2@@7 p_2_1@@7 NoPerm)) (ite c_3@@6 p_3_2@@6 NoPerm)) (ite c_4_2@@5 p_4_1@@5 NoPerm)) (ite c_5@@4 p_5_2@@4 NoPerm)))
 :qid |stdinbpl.622:15|
 :skolemid |86|
 :pattern ( (__iar__assume_helper_5 c_5@@4 c_4_2@@5 c_3@@6 c_2_2@@7 c_1@@8 p_5_2@@4 p_4_1@@5 p_3_2@@6 p_2_1@@7 p_1_1@@8 p_0_1@@8))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun q_1 () Real)
(declare-fun AssertMask@0 () T@PolymorphicMapType_17435)
(declare-fun QPMask@0 () T@PolymorphicMapType_17435)
(declare-fun a_2 () T@Ref)
(declare-fun b_24 () T@Ref)
(declare-fun c () T@Ref)
(declare-fun Heap@@32 () T@PolymorphicMapType_17414)
(declare-fun inv_55_0 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun inv_55_1 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun inv_55_2 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun xs11 () (Array T@Ref Bool))
(declare-fun ys11 () (Array T@Ref Bool))
(declare-fun zs11 () (Array T@Ref Bool))
(declare-fun xs1 () (Array T@Ref Bool))
(declare-fun inv_45_0 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun ys1 () (Array T@Ref Bool))
(declare-fun inv_45_1 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun zs1 () (Array T@Ref Bool))
(declare-fun inv_45_2 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun xs2 () (Array T@Ref Bool))
(declare-fun inv_46_0 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun ys2 () (Array T@Ref Bool))
(declare-fun inv_46_1 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun zs2 () (Array T@Ref Bool))
(declare-fun inv_46_2 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun xs3 () (Array T@Ref Bool))
(declare-fun inv_47_0 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun ys3 () (Array T@Ref Bool))
(declare-fun inv_47_1 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun zs3 () (Array T@Ref Bool))
(declare-fun inv_47_2 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun xs4 () (Array T@Ref Bool))
(declare-fun inv_48_0 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun ys4 () (Array T@Ref Bool))
(declare-fun inv_48_1 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun zs4 () (Array T@Ref Bool))
(declare-fun inv_48_2 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun xs5 () (Array T@Ref Bool))
(declare-fun inv_49_0 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun ys5 () (Array T@Ref Bool))
(declare-fun inv_49_1 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun zs5 () (Array T@Ref Bool))
(declare-fun inv_49_2 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun xs6 () (Array T@Ref Bool))
(declare-fun inv_50_0 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun ys6 () (Array T@Ref Bool))
(declare-fun inv_50_1 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun zs6 () (Array T@Ref Bool))
(declare-fun inv_50_2 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun xs7 () (Array T@Ref Bool))
(declare-fun inv_51_0 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun ys7 () (Array T@Ref Bool))
(declare-fun inv_51_1 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun zs7 () (Array T@Ref Bool))
(declare-fun inv_51_2 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun xs8 () (Array T@Ref Bool))
(declare-fun inv_52_0 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun ys8 () (Array T@Ref Bool))
(declare-fun inv_52_1 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun zs8 () (Array T@Ref Bool))
(declare-fun inv_52_2 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun xs9 () (Array T@Ref Bool))
(declare-fun inv_53_0 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun ys9 () (Array T@Ref Bool))
(declare-fun inv_53_1 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun zs9 () (Array T@Ref Bool))
(declare-fun inv_53_2 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun xs10 () (Array T@Ref Bool))
(declare-fun inv_54_0 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun ys10 () (Array T@Ref Bool))
(declare-fun inv_54_1 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun zs10 () (Array T@Ref Bool))
(declare-fun inv_54_2 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun neverTriggered3 (T@Ref T@Ref T@Ref) Bool)
(declare-fun xs () (Array T@Ref Bool))
(declare-fun ys () (Array T@Ref Bool))
(declare-fun zs () (Array T@Ref Bool))
(declare-fun invRecv1 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun invRecv2 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun invRecv3 (T@Ref T@Ref T@Ref) T@Ref)
(declare-fun qpRange3 (T@Ref T@Ref T@Ref) Bool)
(declare-fun getPredWandId_12806_5332 (T@Field_25242_5332) Int)
(declare-fun getPredWandId_12806_12812 (T@Field_17474_25292) Int)
(declare-fun getPredWandId_12806_53 (T@Field_17474_53) Int)
(declare-fun getPredWandId_12806_17488 (T@Field_17487_17488) Int)
(declare-fun getPredWandId_12806_64198 (T@Field_17474_25311) Int)
(declare-fun getPredWandId_12811_5332 (T@Field_25291_5332) Int)
(declare-fun getPredWandId_12811_53 (T@Field_25291_53) Int)
(declare-fun getPredWandId_12811_17488 (T@Field_25291_17488) Int)
(declare-fun getPredWandId_12811_65007 (T@Field_25306_25311) Int)
(set-info :boogie-vc-id m_17)
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
 (=> (= (ControlFlow 0 0) 80) (let ((anon108_Else_correct true))
(let ((anon108_Then_correct  (=> (and (< NoPerm q_1) (= (ControlFlow 0 36) (- 0 35))) false)))
(let ((anon70_correct  (=> (and (= AssertMask@0 (PolymorphicMapType_17435 (store (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| QPMask@0) null (p_2 a_2 b_24 c) (- (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| QPMask@0) null (p_2 a_2 b_24 c)) q_1)) (|PolymorphicMapType_17435_12811_53#PolymorphicMapType_17435| QPMask@0) (|PolymorphicMapType_17435_12811_17488#PolymorphicMapType_17435| QPMask@0) (|PolymorphicMapType_17435_12811_5332#PolymorphicMapType_17435| QPMask@0) (|PolymorphicMapType_17435_12811_55851#PolymorphicMapType_17435| QPMask@0) (|PolymorphicMapType_17435_17474_12812#PolymorphicMapType_17435| QPMask@0) (|PolymorphicMapType_17435_17474_53#PolymorphicMapType_17435| QPMask@0) (|PolymorphicMapType_17435_17474_17488#PolymorphicMapType_17435| QPMask@0) (|PolymorphicMapType_17435_17474_5332#PolymorphicMapType_17435| QPMask@0) (|PolymorphicMapType_17435_17474_56277#PolymorphicMapType_17435| QPMask@0))) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 38) 36) anon108_Then_correct) (=> (= (ControlFlow 0 38) 37) anon108_Else_correct)))))
(let ((anon107_Else_correct  (=> (and (= q_1 NoPerm) (= (ControlFlow 0 41) 38)) anon70_correct)))
(let ((anon107_Then_correct  (=> (not (= q_1 NoPerm)) (and (=> (= (ControlFlow 0 39) (- 0 40)) (<= q_1 (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| QPMask@0) null (p_2 a_2 b_24 c)))) (=> (<= q_1 (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| QPMask@0) null (p_2 a_2 b_24 c))) (=> (= (ControlFlow 0 39) 38) anon70_correct))))))
(let ((anon106_Else_correct  (=> (forall ((x_47 T@Ref) (y_47 T@Ref) (z_47 T@Ref) ) (!  (=> (and (select xs11 (inv_55_0 x_47 y_47 z_47)) (and (select ys11 (inv_55_1 x_47 y_47 z_47)) (select zs11 (inv_55_2 x_47 y_47 z_47)))) (<= (__iar__assume_helper_10  (and (and (select xs1 (inv_45_0 x_47 y_47 z_47)) (and (select ys1 (inv_45_1 x_47 y_47 z_47)) (select zs1 (inv_45_2 x_47 y_47 z_47)))) (and (and (= x_47 x_47) (= y_47 y_47)) (= z_47 z_47)))  (and (and (select xs2 (inv_46_0 x_47 y_47 z_47)) (and (select ys2 (inv_46_1 x_47 y_47 z_47)) (select zs2 (inv_46_2 x_47 y_47 z_47)))) (and (and (= x_47 x_47) (= y_47 y_47)) (= z_47 z_47)))  (and (and (select xs3 (inv_47_0 x_47 y_47 z_47)) (and (select ys3 (inv_47_1 x_47 y_47 z_47)) (select zs3 (inv_47_2 x_47 y_47 z_47)))) (and (and (= x_47 x_47) (= y_47 y_47)) (= z_47 z_47)))  (and (and (select xs4 (inv_48_0 x_47 y_47 z_47)) (and (select ys4 (inv_48_1 x_47 y_47 z_47)) (select zs4 (inv_48_2 x_47 y_47 z_47)))) (and (and (= x_47 x_47) (= y_47 y_47)) (= z_47 z_47)))  (and (and (select xs5 (inv_49_0 x_47 y_47 z_47)) (and (select ys5 (inv_49_1 x_47 y_47 z_47)) (select zs5 (inv_49_2 x_47 y_47 z_47)))) (and (and (= x_47 x_47) (= y_47 y_47)) (= z_47 z_47)))  (and (and (select xs6 (inv_50_0 x_47 y_47 z_47)) (and (select ys6 (inv_50_1 x_47 y_47 z_47)) (select zs6 (inv_50_2 x_47 y_47 z_47)))) (and (and (= x_47 x_47) (= y_47 y_47)) (= z_47 z_47)))  (and (and (select xs7 (inv_51_0 x_47 y_47 z_47)) (and (select ys7 (inv_51_1 x_47 y_47 z_47)) (select zs7 (inv_51_2 x_47 y_47 z_47)))) (and (and (= x_47 x_47) (= y_47 y_47)) (= z_47 z_47)))  (and (and (select xs8 (inv_52_0 x_47 y_47 z_47)) (and (select ys8 (inv_52_1 x_47 y_47 z_47)) (select zs8 (inv_52_2 x_47 y_47 z_47)))) (and (and (= x_47 x_47) (= y_47 y_47)) (= z_47 z_47)))  (and (and (select xs9 (inv_53_0 x_47 y_47 z_47)) (and (select ys9 (inv_53_1 x_47 y_47 z_47)) (select zs9 (inv_53_2 x_47 y_47 z_47)))) (and (and (= x_47 x_47) (= y_47 y_47)) (= z_47 z_47)))  (and (and (select xs10 (inv_54_0 x_47 y_47 z_47)) (and (select ys10 (inv_54_1 x_47 y_47 z_47)) (select zs10 (inv_54_2 x_47 y_47 z_47)))) (and (and (= x_47 x_47) (= y_47 y_47)) (= z_47 z_47))) q_1 q_1 q_1 q_1 q_1 q_1 q_1 q_1 q_1 q_1 q_1) (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| QPMask@0) null (p_2 x_47 y_47 z_47))))
 :qid |stdinbpl.1478:20|
 :skolemid |137|
 :pattern ( (inv_55_0 x_47 y_47 z_47) (inv_55_1 x_47 y_47 z_47) (inv_55_2 x_47 y_47 z_47))
)) (=> (and (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (select xs1 a_2) (state Heap@@32 QPMask@0))) (=> (and (and (and (and (state Heap@@32 QPMask@0) (select ys1 b_24)) (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0))) (and (and (select zs1 c) (state Heap@@32 QPMask@0)) (and (state Heap@@32 QPMask@0) (select xs2 a_2)))) (and (and (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (select ys2 b_24) (state Heap@@32 QPMask@0))) (and (and (state Heap@@32 QPMask@0) (select zs2 c)) (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0))))) (and (=> (= (ControlFlow 0 42) (- 0 43)) (>= q_1 NoPerm)) (=> (>= q_1 NoPerm) (and (=> (= (ControlFlow 0 42) 39) anon107_Then_correct) (=> (= (ControlFlow 0 42) 41) anon107_Else_correct)))))))))
(let ((anon106_Then_correct true))
(let ((anon105_Else_correct  (=> (forall ((x_45 T@Ref) (y_45 T@Ref) (z_45 T@Ref) ) (!  (=> (and (select xs11 (inv_55_0 x_45 y_45 z_45)) (and (select ys11 (inv_55_1 x_45 y_45 z_45)) (select zs11 (inv_55_2 x_45 y_45 z_45)))) (and (and (= (inv_55_0 x_45 y_45 z_45) x_45) (= (inv_55_1 x_45 y_45 z_45) y_45)) (= (inv_55_2 x_45 y_45 z_45) z_45)))
 :qid |stdinbpl.1440:20|
 :skolemid |136|
 :pattern ( (inv_55_0 x_45 y_45 z_45) (inv_55_1 x_45 y_45 z_45) (inv_55_2 x_45 y_45 z_45))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 44) 34) anon106_Then_correct) (=> (= (ControlFlow 0 44) 42) anon106_Else_correct))))))
(let ((anon105_Then_correct true))
(let ((anon104_Else_correct  (=> (forall ((x11_1 T@Ref) (y11_1 T@Ref) (z11_1 T@Ref) ) (!  (=> (and (select xs11 x11_1) (and (select ys11 y11_1) (select zs11 z11_1))) (and (and (= (inv_55_0 x11_1 y11_1 z11_1) x11_1) (= (inv_55_1 x11_1 y11_1 z11_1) y11_1)) (= (inv_55_2 x11_1 y11_1 z11_1) z11_1)))
 :qid |stdinbpl.1422:20|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@32) null (p_2 x11_1 y11_1 z11_1)))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 45) 33) anon105_Then_correct) (=> (= (ControlFlow 0 45) 44) anon105_Else_correct))))))
(let ((anon104_Then_correct true))
(let ((anon103_Else_correct  (=> (forall ((x_43 T@Ref) (y_43 T@Ref) (z_43 T@Ref) ) (!  (=> (and (select xs10 (inv_54_0 x_43 y_43 z_43)) (and (select ys10 (inv_54_1 x_43 y_43 z_43)) (select zs10 (inv_54_2 x_43 y_43 z_43)))) (<= (__iar__assume_helper_9  (and (and (select xs1 (inv_45_0 x_43 y_43 z_43)) (and (select ys1 (inv_45_1 x_43 y_43 z_43)) (select zs1 (inv_45_2 x_43 y_43 z_43)))) (and (and (= x_43 x_43) (= y_43 y_43)) (= z_43 z_43)))  (and (and (select xs2 (inv_46_0 x_43 y_43 z_43)) (and (select ys2 (inv_46_1 x_43 y_43 z_43)) (select zs2 (inv_46_2 x_43 y_43 z_43)))) (and (and (= x_43 x_43) (= y_43 y_43)) (= z_43 z_43)))  (and (and (select xs3 (inv_47_0 x_43 y_43 z_43)) (and (select ys3 (inv_47_1 x_43 y_43 z_43)) (select zs3 (inv_47_2 x_43 y_43 z_43)))) (and (and (= x_43 x_43) (= y_43 y_43)) (= z_43 z_43)))  (and (and (select xs4 (inv_48_0 x_43 y_43 z_43)) (and (select ys4 (inv_48_1 x_43 y_43 z_43)) (select zs4 (inv_48_2 x_43 y_43 z_43)))) (and (and (= x_43 x_43) (= y_43 y_43)) (= z_43 z_43)))  (and (and (select xs5 (inv_49_0 x_43 y_43 z_43)) (and (select ys5 (inv_49_1 x_43 y_43 z_43)) (select zs5 (inv_49_2 x_43 y_43 z_43)))) (and (and (= x_43 x_43) (= y_43 y_43)) (= z_43 z_43)))  (and (and (select xs6 (inv_50_0 x_43 y_43 z_43)) (and (select ys6 (inv_50_1 x_43 y_43 z_43)) (select zs6 (inv_50_2 x_43 y_43 z_43)))) (and (and (= x_43 x_43) (= y_43 y_43)) (= z_43 z_43)))  (and (and (select xs7 (inv_51_0 x_43 y_43 z_43)) (and (select ys7 (inv_51_1 x_43 y_43 z_43)) (select zs7 (inv_51_2 x_43 y_43 z_43)))) (and (and (= x_43 x_43) (= y_43 y_43)) (= z_43 z_43)))  (and (and (select xs8 (inv_52_0 x_43 y_43 z_43)) (and (select ys8 (inv_52_1 x_43 y_43 z_43)) (select zs8 (inv_52_2 x_43 y_43 z_43)))) (and (and (= x_43 x_43) (= y_43 y_43)) (= z_43 z_43)))  (and (and (select xs9 (inv_53_0 x_43 y_43 z_43)) (and (select ys9 (inv_53_1 x_43 y_43 z_43)) (select zs9 (inv_53_2 x_43 y_43 z_43)))) (and (and (= x_43 x_43) (= y_43 y_43)) (= z_43 z_43))) q_1 q_1 q_1 q_1 q_1 q_1 q_1 q_1 q_1 q_1) (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| QPMask@0) null (p_2 x_43 y_43 z_43))))
 :qid |stdinbpl.1405:20|
 :skolemid |134|
 :pattern ( (inv_54_0 x_43 y_43 z_43) (inv_54_1 x_43 y_43 z_43) (inv_54_2 x_43 y_43 z_43))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 46) 32) anon104_Then_correct) (=> (= (ControlFlow 0 46) 45) anon104_Else_correct))))))
(let ((anon103_Then_correct true))
(let ((anon102_Else_correct  (=> (forall ((x_41 T@Ref) (y_41 T@Ref) (z_41 T@Ref) ) (!  (=> (and (select xs10 (inv_54_0 x_41 y_41 z_41)) (and (select ys10 (inv_54_1 x_41 y_41 z_41)) (select zs10 (inv_54_2 x_41 y_41 z_41)))) (and (and (= (inv_54_0 x_41 y_41 z_41) x_41) (= (inv_54_1 x_41 y_41 z_41) y_41)) (= (inv_54_2 x_41 y_41 z_41) z_41)))
 :qid |stdinbpl.1369:20|
 :skolemid |133|
 :pattern ( (inv_54_0 x_41 y_41 z_41) (inv_54_1 x_41 y_41 z_41) (inv_54_2 x_41 y_41 z_41))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 47) 31) anon103_Then_correct) (=> (= (ControlFlow 0 47) 46) anon103_Else_correct))))))
(let ((anon102_Then_correct true))
(let ((anon101_Else_correct  (=> (forall ((x10_1 T@Ref) (y10_1 T@Ref) (z10_1 T@Ref) ) (!  (=> (and (select xs10 x10_1) (and (select ys10 y10_1) (select zs10 z10_1))) (and (and (= (inv_54_0 x10_1 y10_1 z10_1) x10_1) (= (inv_54_1 x10_1 y10_1 z10_1) y10_1)) (= (inv_54_2 x10_1 y10_1 z10_1) z10_1)))
 :qid |stdinbpl.1351:20|
 :skolemid |132|
 :pattern ( (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@32) null (p_2 x10_1 y10_1 z10_1)))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 48) 30) anon102_Then_correct) (=> (= (ControlFlow 0 48) 47) anon102_Else_correct))))))
(let ((anon101_Then_correct true))
(let ((anon100_Else_correct  (=> (forall ((x_39 T@Ref) (y_39 T@Ref) (z_39 T@Ref) ) (!  (=> (and (select xs9 (inv_53_0 x_39 y_39 z_39)) (and (select ys9 (inv_53_1 x_39 y_39 z_39)) (select zs9 (inv_53_2 x_39 y_39 z_39)))) (<= (__iar__assume_helper_8  (and (and (select xs1 (inv_45_0 x_39 y_39 z_39)) (and (select ys1 (inv_45_1 x_39 y_39 z_39)) (select zs1 (inv_45_2 x_39 y_39 z_39)))) (and (and (= x_39 x_39) (= y_39 y_39)) (= z_39 z_39)))  (and (and (select xs2 (inv_46_0 x_39 y_39 z_39)) (and (select ys2 (inv_46_1 x_39 y_39 z_39)) (select zs2 (inv_46_2 x_39 y_39 z_39)))) (and (and (= x_39 x_39) (= y_39 y_39)) (= z_39 z_39)))  (and (and (select xs3 (inv_47_0 x_39 y_39 z_39)) (and (select ys3 (inv_47_1 x_39 y_39 z_39)) (select zs3 (inv_47_2 x_39 y_39 z_39)))) (and (and (= x_39 x_39) (= y_39 y_39)) (= z_39 z_39)))  (and (and (select xs4 (inv_48_0 x_39 y_39 z_39)) (and (select ys4 (inv_48_1 x_39 y_39 z_39)) (select zs4 (inv_48_2 x_39 y_39 z_39)))) (and (and (= x_39 x_39) (= y_39 y_39)) (= z_39 z_39)))  (and (and (select xs5 (inv_49_0 x_39 y_39 z_39)) (and (select ys5 (inv_49_1 x_39 y_39 z_39)) (select zs5 (inv_49_2 x_39 y_39 z_39)))) (and (and (= x_39 x_39) (= y_39 y_39)) (= z_39 z_39)))  (and (and (select xs6 (inv_50_0 x_39 y_39 z_39)) (and (select ys6 (inv_50_1 x_39 y_39 z_39)) (select zs6 (inv_50_2 x_39 y_39 z_39)))) (and (and (= x_39 x_39) (= y_39 y_39)) (= z_39 z_39)))  (and (and (select xs7 (inv_51_0 x_39 y_39 z_39)) (and (select ys7 (inv_51_1 x_39 y_39 z_39)) (select zs7 (inv_51_2 x_39 y_39 z_39)))) (and (and (= x_39 x_39) (= y_39 y_39)) (= z_39 z_39)))  (and (and (select xs8 (inv_52_0 x_39 y_39 z_39)) (and (select ys8 (inv_52_1 x_39 y_39 z_39)) (select zs8 (inv_52_2 x_39 y_39 z_39)))) (and (and (= x_39 x_39) (= y_39 y_39)) (= z_39 z_39))) q_1 q_1 q_1 q_1 q_1 q_1 q_1 q_1 q_1) (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| QPMask@0) null (p_2 x_39 y_39 z_39))))
 :qid |stdinbpl.1334:20|
 :skolemid |131|
 :pattern ( (inv_53_0 x_39 y_39 z_39) (inv_53_1 x_39 y_39 z_39) (inv_53_2 x_39 y_39 z_39))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 49) 29) anon101_Then_correct) (=> (= (ControlFlow 0 49) 48) anon101_Else_correct))))))
(let ((anon100_Then_correct true))
(let ((anon99_Else_correct  (=> (forall ((x_37_1 T@Ref) (y_37 T@Ref) (z_37 T@Ref) ) (!  (=> (and (select xs9 (inv_53_0 x_37_1 y_37 z_37)) (and (select ys9 (inv_53_1 x_37_1 y_37 z_37)) (select zs9 (inv_53_2 x_37_1 y_37 z_37)))) (and (and (= (inv_53_0 x_37_1 y_37 z_37) x_37_1) (= (inv_53_1 x_37_1 y_37 z_37) y_37)) (= (inv_53_2 x_37_1 y_37 z_37) z_37)))
 :qid |stdinbpl.1300:20|
 :skolemid |130|
 :pattern ( (inv_53_0 x_37_1 y_37 z_37) (inv_53_1 x_37_1 y_37 z_37) (inv_53_2 x_37_1 y_37 z_37))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 50) 28) anon100_Then_correct) (=> (= (ControlFlow 0 50) 49) anon100_Else_correct))))))
(let ((anon99_Then_correct true))
(let ((anon98_Else_correct  (=> (forall ((x9_1 T@Ref) (y9_1 T@Ref) (z9_1 T@Ref) ) (!  (=> (and (select xs9 x9_1) (and (select ys9 y9_1) (select zs9 z9_1))) (and (and (= (inv_53_0 x9_1 y9_1 z9_1) x9_1) (= (inv_53_1 x9_1 y9_1 z9_1) y9_1)) (= (inv_53_2 x9_1 y9_1 z9_1) z9_1)))
 :qid |stdinbpl.1282:20|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@32) null (p_2 x9_1 y9_1 z9_1)))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 51) 27) anon99_Then_correct) (=> (= (ControlFlow 0 51) 50) anon99_Else_correct))))))
(let ((anon98_Then_correct true))
(let ((anon97_Else_correct  (=> (forall ((x_35_1 T@Ref) (y_35 T@Ref) (z_35 T@Ref) ) (!  (=> (and (select xs8 (inv_52_0 x_35_1 y_35 z_35)) (and (select ys8 (inv_52_1 x_35_1 y_35 z_35)) (select zs8 (inv_52_2 x_35_1 y_35 z_35)))) (<= (__iar__assume_helper_7  (and (and (select xs1 (inv_45_0 x_35_1 y_35 z_35)) (and (select ys1 (inv_45_1 x_35_1 y_35 z_35)) (select zs1 (inv_45_2 x_35_1 y_35 z_35)))) (and (and (= x_35_1 x_35_1) (= y_35 y_35)) (= z_35 z_35)))  (and (and (select xs2 (inv_46_0 x_35_1 y_35 z_35)) (and (select ys2 (inv_46_1 x_35_1 y_35 z_35)) (select zs2 (inv_46_2 x_35_1 y_35 z_35)))) (and (and (= x_35_1 x_35_1) (= y_35 y_35)) (= z_35 z_35)))  (and (and (select xs3 (inv_47_0 x_35_1 y_35 z_35)) (and (select ys3 (inv_47_1 x_35_1 y_35 z_35)) (select zs3 (inv_47_2 x_35_1 y_35 z_35)))) (and (and (= x_35_1 x_35_1) (= y_35 y_35)) (= z_35 z_35)))  (and (and (select xs4 (inv_48_0 x_35_1 y_35 z_35)) (and (select ys4 (inv_48_1 x_35_1 y_35 z_35)) (select zs4 (inv_48_2 x_35_1 y_35 z_35)))) (and (and (= x_35_1 x_35_1) (= y_35 y_35)) (= z_35 z_35)))  (and (and (select xs5 (inv_49_0 x_35_1 y_35 z_35)) (and (select ys5 (inv_49_1 x_35_1 y_35 z_35)) (select zs5 (inv_49_2 x_35_1 y_35 z_35)))) (and (and (= x_35_1 x_35_1) (= y_35 y_35)) (= z_35 z_35)))  (and (and (select xs6 (inv_50_0 x_35_1 y_35 z_35)) (and (select ys6 (inv_50_1 x_35_1 y_35 z_35)) (select zs6 (inv_50_2 x_35_1 y_35 z_35)))) (and (and (= x_35_1 x_35_1) (= y_35 y_35)) (= z_35 z_35)))  (and (and (select xs7 (inv_51_0 x_35_1 y_35 z_35)) (and (select ys7 (inv_51_1 x_35_1 y_35 z_35)) (select zs7 (inv_51_2 x_35_1 y_35 z_35)))) (and (and (= x_35_1 x_35_1) (= y_35 y_35)) (= z_35 z_35))) q_1 q_1 q_1 q_1 q_1 q_1 q_1 q_1) (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| QPMask@0) null (p_2 x_35_1 y_35 z_35))))
 :qid |stdinbpl.1265:20|
 :skolemid |128|
 :pattern ( (inv_52_0 x_35_1 y_35 z_35) (inv_52_1 x_35_1 y_35 z_35) (inv_52_2 x_35_1 y_35 z_35))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 52) 26) anon98_Then_correct) (=> (= (ControlFlow 0 52) 51) anon98_Else_correct))))))
(let ((anon97_Then_correct true))
(let ((anon96_Else_correct  (=> (forall ((x_33_1 T@Ref) (y_33 T@Ref) (z_33 T@Ref) ) (!  (=> (and (select xs8 (inv_52_0 x_33_1 y_33 z_33)) (and (select ys8 (inv_52_1 x_33_1 y_33 z_33)) (select zs8 (inv_52_2 x_33_1 y_33 z_33)))) (and (and (= (inv_52_0 x_33_1 y_33 z_33) x_33_1) (= (inv_52_1 x_33_1 y_33 z_33) y_33)) (= (inv_52_2 x_33_1 y_33 z_33) z_33)))
 :qid |stdinbpl.1233:20|
 :skolemid |127|
 :pattern ( (inv_52_0 x_33_1 y_33 z_33) (inv_52_1 x_33_1 y_33 z_33) (inv_52_2 x_33_1 y_33 z_33))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 53) 25) anon97_Then_correct) (=> (= (ControlFlow 0 53) 52) anon97_Else_correct))))))
(let ((anon96_Then_correct true))
(let ((anon95_Else_correct  (=> (forall ((x8_1 T@Ref) (y8_1 T@Ref) (z8_1 T@Ref) ) (!  (=> (and (select xs8 x8_1) (and (select ys8 y8_1) (select zs8 z8_1))) (and (and (= (inv_52_0 x8_1 y8_1 z8_1) x8_1) (= (inv_52_1 x8_1 y8_1 z8_1) y8_1)) (= (inv_52_2 x8_1 y8_1 z8_1) z8_1)))
 :qid |stdinbpl.1215:20|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@32) null (p_2 x8_1 y8_1 z8_1)))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 54) 24) anon96_Then_correct) (=> (= (ControlFlow 0 54) 53) anon96_Else_correct))))))
(let ((anon95_Then_correct true))
(let ((anon94_Else_correct  (=> (forall ((x_31_1 T@Ref) (y_31 T@Ref) (z_31 T@Ref) ) (!  (=> (and (select xs7 (inv_51_0 x_31_1 y_31 z_31)) (and (select ys7 (inv_51_1 x_31_1 y_31 z_31)) (select zs7 (inv_51_2 x_31_1 y_31 z_31)))) (<= (__iar__assume_helper_6  (and (and (select xs1 (inv_45_0 x_31_1 y_31 z_31)) (and (select ys1 (inv_45_1 x_31_1 y_31 z_31)) (select zs1 (inv_45_2 x_31_1 y_31 z_31)))) (and (and (= x_31_1 x_31_1) (= y_31 y_31)) (= z_31 z_31)))  (and (and (select xs2 (inv_46_0 x_31_1 y_31 z_31)) (and (select ys2 (inv_46_1 x_31_1 y_31 z_31)) (select zs2 (inv_46_2 x_31_1 y_31 z_31)))) (and (and (= x_31_1 x_31_1) (= y_31 y_31)) (= z_31 z_31)))  (and (and (select xs3 (inv_47_0 x_31_1 y_31 z_31)) (and (select ys3 (inv_47_1 x_31_1 y_31 z_31)) (select zs3 (inv_47_2 x_31_1 y_31 z_31)))) (and (and (= x_31_1 x_31_1) (= y_31 y_31)) (= z_31 z_31)))  (and (and (select xs4 (inv_48_0 x_31_1 y_31 z_31)) (and (select ys4 (inv_48_1 x_31_1 y_31 z_31)) (select zs4 (inv_48_2 x_31_1 y_31 z_31)))) (and (and (= x_31_1 x_31_1) (= y_31 y_31)) (= z_31 z_31)))  (and (and (select xs5 (inv_49_0 x_31_1 y_31 z_31)) (and (select ys5 (inv_49_1 x_31_1 y_31 z_31)) (select zs5 (inv_49_2 x_31_1 y_31 z_31)))) (and (and (= x_31_1 x_31_1) (= y_31 y_31)) (= z_31 z_31)))  (and (and (select xs6 (inv_50_0 x_31_1 y_31 z_31)) (and (select ys6 (inv_50_1 x_31_1 y_31 z_31)) (select zs6 (inv_50_2 x_31_1 y_31 z_31)))) (and (and (= x_31_1 x_31_1) (= y_31 y_31)) (= z_31 z_31))) q_1 q_1 q_1 q_1 q_1 q_1 q_1) (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| QPMask@0) null (p_2 x_31_1 y_31 z_31))))
 :qid |stdinbpl.1198:20|
 :skolemid |125|
 :pattern ( (inv_51_0 x_31_1 y_31 z_31) (inv_51_1 x_31_1 y_31 z_31) (inv_51_2 x_31_1 y_31 z_31))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 55) 23) anon95_Then_correct) (=> (= (ControlFlow 0 55) 54) anon95_Else_correct))))))
(let ((anon94_Then_correct true))
(let ((anon93_Else_correct  (=> (forall ((x_29_1 T@Ref) (y_29 T@Ref) (z_29 T@Ref) ) (!  (=> (and (select xs7 (inv_51_0 x_29_1 y_29 z_29)) (and (select ys7 (inv_51_1 x_29_1 y_29 z_29)) (select zs7 (inv_51_2 x_29_1 y_29 z_29)))) (and (and (= (inv_51_0 x_29_1 y_29 z_29) x_29_1) (= (inv_51_1 x_29_1 y_29 z_29) y_29)) (= (inv_51_2 x_29_1 y_29 z_29) z_29)))
 :qid |stdinbpl.1168:20|
 :skolemid |124|
 :pattern ( (inv_51_0 x_29_1 y_29 z_29) (inv_51_1 x_29_1 y_29 z_29) (inv_51_2 x_29_1 y_29 z_29))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 56) 22) anon94_Then_correct) (=> (= (ControlFlow 0 56) 55) anon94_Else_correct))))))
(let ((anon93_Then_correct true))
(let ((anon92_Else_correct  (=> (forall ((x7_1 T@Ref) (y7_1 T@Ref) (z7_1 T@Ref) ) (!  (=> (and (select xs7 x7_1) (and (select ys7 y7_1) (select zs7 z7_1))) (and (and (= (inv_51_0 x7_1 y7_1 z7_1) x7_1) (= (inv_51_1 x7_1 y7_1 z7_1) y7_1)) (= (inv_51_2 x7_1 y7_1 z7_1) z7_1)))
 :qid |stdinbpl.1150:20|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@32) null (p_2 x7_1 y7_1 z7_1)))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 57) 21) anon93_Then_correct) (=> (= (ControlFlow 0 57) 56) anon93_Else_correct))))))
(let ((anon92_Then_correct true))
(let ((anon91_Else_correct  (=> (forall ((x_27_1 T@Ref) (y_27 T@Ref) (z_27 T@Ref) ) (!  (=> (and (select xs6 (inv_50_0 x_27_1 y_27 z_27)) (and (select ys6 (inv_50_1 x_27_1 y_27 z_27)) (select zs6 (inv_50_2 x_27_1 y_27 z_27)))) (<= (__iar__assume_helper_5  (and (and (select xs1 (inv_45_0 x_27_1 y_27 z_27)) (and (select ys1 (inv_45_1 x_27_1 y_27 z_27)) (select zs1 (inv_45_2 x_27_1 y_27 z_27)))) (and (and (= x_27_1 x_27_1) (= y_27 y_27)) (= z_27 z_27)))  (and (and (select xs2 (inv_46_0 x_27_1 y_27 z_27)) (and (select ys2 (inv_46_1 x_27_1 y_27 z_27)) (select zs2 (inv_46_2 x_27_1 y_27 z_27)))) (and (and (= x_27_1 x_27_1) (= y_27 y_27)) (= z_27 z_27)))  (and (and (select xs3 (inv_47_0 x_27_1 y_27 z_27)) (and (select ys3 (inv_47_1 x_27_1 y_27 z_27)) (select zs3 (inv_47_2 x_27_1 y_27 z_27)))) (and (and (= x_27_1 x_27_1) (= y_27 y_27)) (= z_27 z_27)))  (and (and (select xs4 (inv_48_0 x_27_1 y_27 z_27)) (and (select ys4 (inv_48_1 x_27_1 y_27 z_27)) (select zs4 (inv_48_2 x_27_1 y_27 z_27)))) (and (and (= x_27_1 x_27_1) (= y_27 y_27)) (= z_27 z_27)))  (and (and (select xs5 (inv_49_0 x_27_1 y_27 z_27)) (and (select ys5 (inv_49_1 x_27_1 y_27 z_27)) (select zs5 (inv_49_2 x_27_1 y_27 z_27)))) (and (and (= x_27_1 x_27_1) (= y_27 y_27)) (= z_27 z_27))) q_1 q_1 q_1 q_1 q_1 q_1) (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| QPMask@0) null (p_2 x_27_1 y_27 z_27))))
 :qid |stdinbpl.1133:20|
 :skolemid |122|
 :pattern ( (inv_50_0 x_27_1 y_27 z_27) (inv_50_1 x_27_1 y_27 z_27) (inv_50_2 x_27_1 y_27 z_27))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 58) 20) anon92_Then_correct) (=> (= (ControlFlow 0 58) 57) anon92_Else_correct))))))
(let ((anon91_Then_correct true))
(let ((anon90_Else_correct  (=> (forall ((x_25_2 T@Ref) (y_25 T@Ref) (z_25 T@Ref) ) (!  (=> (and (select xs6 (inv_50_0 x_25_2 y_25 z_25)) (and (select ys6 (inv_50_1 x_25_2 y_25 z_25)) (select zs6 (inv_50_2 x_25_2 y_25 z_25)))) (and (and (= (inv_50_0 x_25_2 y_25 z_25) x_25_2) (= (inv_50_1 x_25_2 y_25 z_25) y_25)) (= (inv_50_2 x_25_2 y_25 z_25) z_25)))
 :qid |stdinbpl.1105:20|
 :skolemid |121|
 :pattern ( (inv_50_0 x_25_2 y_25 z_25) (inv_50_1 x_25_2 y_25 z_25) (inv_50_2 x_25_2 y_25 z_25))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 59) 19) anon91_Then_correct) (=> (= (ControlFlow 0 59) 58) anon91_Else_correct))))))
(let ((anon90_Then_correct true))
(let ((anon89_Else_correct  (=> (forall ((x6_1 T@Ref) (y6_1 T@Ref) (z6_1 T@Ref) ) (!  (=> (and (select xs6 x6_1) (and (select ys6 y6_1) (select zs6 z6_1))) (and (and (= (inv_50_0 x6_1 y6_1 z6_1) x6_1) (= (inv_50_1 x6_1 y6_1 z6_1) y6_1)) (= (inv_50_2 x6_1 y6_1 z6_1) z6_1)))
 :qid |stdinbpl.1087:20|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@32) null (p_2 x6_1 y6_1 z6_1)))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 60) 18) anon90_Then_correct) (=> (= (ControlFlow 0 60) 59) anon90_Else_correct))))))
(let ((anon89_Then_correct true))
(let ((anon88_Else_correct  (=> (forall ((x_23_2 T@Ref) (y_23 T@Ref) (z_23 T@Ref) ) (!  (=> (and (select xs5 (inv_49_0 x_23_2 y_23 z_23)) (and (select ys5 (inv_49_1 x_23_2 y_23 z_23)) (select zs5 (inv_49_2 x_23_2 y_23 z_23)))) (<= (__iar__assume_helper_4  (and (and (select xs1 (inv_45_0 x_23_2 y_23 z_23)) (and (select ys1 (inv_45_1 x_23_2 y_23 z_23)) (select zs1 (inv_45_2 x_23_2 y_23 z_23)))) (and (and (= x_23_2 x_23_2) (= y_23 y_23)) (= z_23 z_23)))  (and (and (select xs2 (inv_46_0 x_23_2 y_23 z_23)) (and (select ys2 (inv_46_1 x_23_2 y_23 z_23)) (select zs2 (inv_46_2 x_23_2 y_23 z_23)))) (and (and (= x_23_2 x_23_2) (= y_23 y_23)) (= z_23 z_23)))  (and (and (select xs3 (inv_47_0 x_23_2 y_23 z_23)) (and (select ys3 (inv_47_1 x_23_2 y_23 z_23)) (select zs3 (inv_47_2 x_23_2 y_23 z_23)))) (and (and (= x_23_2 x_23_2) (= y_23 y_23)) (= z_23 z_23)))  (and (and (select xs4 (inv_48_0 x_23_2 y_23 z_23)) (and (select ys4 (inv_48_1 x_23_2 y_23 z_23)) (select zs4 (inv_48_2 x_23_2 y_23 z_23)))) (and (and (= x_23_2 x_23_2) (= y_23 y_23)) (= z_23 z_23))) q_1 q_1 q_1 q_1 q_1) (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| QPMask@0) null (p_2 x_23_2 y_23 z_23))))
 :qid |stdinbpl.1070:20|
 :skolemid |119|
 :pattern ( (inv_49_0 x_23_2 y_23 z_23) (inv_49_1 x_23_2 y_23 z_23) (inv_49_2 x_23_2 y_23 z_23))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 61) 17) anon89_Then_correct) (=> (= (ControlFlow 0 61) 60) anon89_Else_correct))))))
(let ((anon88_Then_correct true))
(let ((anon87_Else_correct  (=> (forall ((x_21_1 T@Ref) (y_21 T@Ref) (z_21 T@Ref) ) (!  (=> (and (select xs5 (inv_49_0 x_21_1 y_21 z_21)) (and (select ys5 (inv_49_1 x_21_1 y_21 z_21)) (select zs5 (inv_49_2 x_21_1 y_21 z_21)))) (and (and (= (inv_49_0 x_21_1 y_21 z_21) x_21_1) (= (inv_49_1 x_21_1 y_21 z_21) y_21)) (= (inv_49_2 x_21_1 y_21 z_21) z_21)))
 :qid |stdinbpl.1044:20|
 :skolemid |118|
 :pattern ( (inv_49_0 x_21_1 y_21 z_21) (inv_49_1 x_21_1 y_21 z_21) (inv_49_2 x_21_1 y_21 z_21))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 62) 16) anon88_Then_correct) (=> (= (ControlFlow 0 62) 61) anon88_Else_correct))))))
(let ((anon87_Then_correct true))
(let ((anon86_Else_correct  (=> (forall ((x5_1 T@Ref) (y5_1 T@Ref) (z5_1 T@Ref) ) (!  (=> (and (select xs5 x5_1) (and (select ys5 y5_1) (select zs5 z5_1))) (and (and (= (inv_49_0 x5_1 y5_1 z5_1) x5_1) (= (inv_49_1 x5_1 y5_1 z5_1) y5_1)) (= (inv_49_2 x5_1 y5_1 z5_1) z5_1)))
 :qid |stdinbpl.1026:20|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@32) null (p_2 x5_1 y5_1 z5_1)))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 63) 15) anon87_Then_correct) (=> (= (ControlFlow 0 63) 62) anon87_Else_correct))))))
(let ((anon86_Then_correct true))
(let ((anon85_Else_correct  (=> (forall ((x_19_1 T@Ref) (y_19 T@Ref) (z_19 T@Ref) ) (!  (=> (and (select xs4 (inv_48_0 x_19_1 y_19 z_19)) (and (select ys4 (inv_48_1 x_19_1 y_19 z_19)) (select zs4 (inv_48_2 x_19_1 y_19 z_19)))) (<= (__iar__assume_helper_3  (and (and (select xs1 (inv_45_0 x_19_1 y_19 z_19)) (and (select ys1 (inv_45_1 x_19_1 y_19 z_19)) (select zs1 (inv_45_2 x_19_1 y_19 z_19)))) (and (and (= x_19_1 x_19_1) (= y_19 y_19)) (= z_19 z_19)))  (and (and (select xs2 (inv_46_0 x_19_1 y_19 z_19)) (and (select ys2 (inv_46_1 x_19_1 y_19 z_19)) (select zs2 (inv_46_2 x_19_1 y_19 z_19)))) (and (and (= x_19_1 x_19_1) (= y_19 y_19)) (= z_19 z_19)))  (and (and (select xs3 (inv_47_0 x_19_1 y_19 z_19)) (and (select ys3 (inv_47_1 x_19_1 y_19 z_19)) (select zs3 (inv_47_2 x_19_1 y_19 z_19)))) (and (and (= x_19_1 x_19_1) (= y_19 y_19)) (= z_19 z_19))) q_1 q_1 q_1 q_1) (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| QPMask@0) null (p_2 x_19_1 y_19 z_19))))
 :qid |stdinbpl.1009:20|
 :skolemid |116|
 :pattern ( (inv_48_0 x_19_1 y_19 z_19) (inv_48_1 x_19_1 y_19 z_19) (inv_48_2 x_19_1 y_19 z_19))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 64) 14) anon86_Then_correct) (=> (= (ControlFlow 0 64) 63) anon86_Else_correct))))))
(let ((anon85_Then_correct true))
(let ((anon84_Else_correct  (=> (forall ((x_17 T@Ref) (y_17 T@Ref) (z_17 T@Ref) ) (!  (=> (and (select xs4 (inv_48_0 x_17 y_17 z_17)) (and (select ys4 (inv_48_1 x_17 y_17 z_17)) (select zs4 (inv_48_2 x_17 y_17 z_17)))) (and (and (= (inv_48_0 x_17 y_17 z_17) x_17) (= (inv_48_1 x_17 y_17 z_17) y_17)) (= (inv_48_2 x_17 y_17 z_17) z_17)))
 :qid |stdinbpl.985:20|
 :skolemid |115|
 :pattern ( (inv_48_0 x_17 y_17 z_17) (inv_48_1 x_17 y_17 z_17) (inv_48_2 x_17 y_17 z_17))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 65) 13) anon85_Then_correct) (=> (= (ControlFlow 0 65) 64) anon85_Else_correct))))))
(let ((anon84_Then_correct true))
(let ((anon83_Else_correct  (=> (forall ((x4_1 T@Ref) (y4_1 T@Ref) (z4_1 T@Ref) ) (!  (=> (and (select xs4 x4_1) (and (select ys4 y4_1) (select zs4 z4_1))) (and (and (= (inv_48_0 x4_1 y4_1 z4_1) x4_1) (= (inv_48_1 x4_1 y4_1 z4_1) y4_1)) (= (inv_48_2 x4_1 y4_1 z4_1) z4_1)))
 :qid |stdinbpl.967:20|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@32) null (p_2 x4_1 y4_1 z4_1)))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 66) 12) anon84_Then_correct) (=> (= (ControlFlow 0 66) 65) anon84_Else_correct))))))
(let ((anon83_Then_correct true))
(let ((anon82_Else_correct  (=> (forall ((x_15_2 T@Ref) (y_15 T@Ref) (z_15 T@Ref) ) (!  (=> (and (select xs3 (inv_47_0 x_15_2 y_15 z_15)) (and (select ys3 (inv_47_1 x_15_2 y_15 z_15)) (select zs3 (inv_47_2 x_15_2 y_15 z_15)))) (<= (__iar__assume_helper_2  (and (and (select xs1 (inv_45_0 x_15_2 y_15 z_15)) (and (select ys1 (inv_45_1 x_15_2 y_15 z_15)) (select zs1 (inv_45_2 x_15_2 y_15 z_15)))) (and (and (= x_15_2 x_15_2) (= y_15 y_15)) (= z_15 z_15)))  (and (and (select xs2 (inv_46_0 x_15_2 y_15 z_15)) (and (select ys2 (inv_46_1 x_15_2 y_15 z_15)) (select zs2 (inv_46_2 x_15_2 y_15 z_15)))) (and (and (= x_15_2 x_15_2) (= y_15 y_15)) (= z_15 z_15))) q_1 q_1 q_1) (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| QPMask@0) null (p_2 x_15_2 y_15 z_15))))
 :qid |stdinbpl.950:20|
 :skolemid |113|
 :pattern ( (inv_47_0 x_15_2 y_15 z_15) (inv_47_1 x_15_2 y_15 z_15) (inv_47_2 x_15_2 y_15 z_15))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 67) 11) anon83_Then_correct) (=> (= (ControlFlow 0 67) 66) anon83_Else_correct))))))
(let ((anon82_Then_correct true))
(let ((anon81_Else_correct  (=> (forall ((x_13_2 T@Ref) (y_13 T@Ref) (z_13 T@Ref) ) (!  (=> (and (select xs3 (inv_47_0 x_13_2 y_13 z_13)) (and (select ys3 (inv_47_1 x_13_2 y_13 z_13)) (select zs3 (inv_47_2 x_13_2 y_13 z_13)))) (and (and (= (inv_47_0 x_13_2 y_13 z_13) x_13_2) (= (inv_47_1 x_13_2 y_13 z_13) y_13)) (= (inv_47_2 x_13_2 y_13 z_13) z_13)))
 :qid |stdinbpl.928:20|
 :skolemid |112|
 :pattern ( (inv_47_0 x_13_2 y_13 z_13) (inv_47_1 x_13_2 y_13 z_13) (inv_47_2 x_13_2 y_13 z_13))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 68) 10) anon82_Then_correct) (=> (= (ControlFlow 0 68) 67) anon82_Else_correct))))))
(let ((anon81_Then_correct true))
(let ((anon80_Else_correct  (=> (forall ((x3_1 T@Ref) (y3_1 T@Ref) (z3_1 T@Ref) ) (!  (=> (and (select xs3 x3_1) (and (select ys3 y3_1) (select zs3 z3_1))) (and (and (= (inv_47_0 x3_1 y3_1 z3_1) x3_1) (= (inv_47_1 x3_1 y3_1 z3_1) y3_1)) (= (inv_47_2 x3_1 y3_1 z3_1) z3_1)))
 :qid |stdinbpl.910:20|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@32) null (p_2 x3_1 y3_1 z3_1)))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 69) 9) anon81_Then_correct) (=> (= (ControlFlow 0 69) 68) anon81_Else_correct))))))
(let ((anon80_Then_correct true))
(let ((anon79_Else_correct  (=> (forall ((x_11 T@Ref) (y_11 T@Ref) (z_11_1 T@Ref) ) (!  (=> (and (select xs2 (inv_46_0 x_11 y_11 z_11_1)) (and (select ys2 (inv_46_1 x_11 y_11 z_11_1)) (select zs2 (inv_46_2 x_11 y_11 z_11_1)))) (<= (__iar__assume_helper_1  (and (and (select xs1 (inv_45_0 x_11 y_11 z_11_1)) (and (select ys1 (inv_45_1 x_11 y_11 z_11_1)) (select zs1 (inv_45_2 x_11 y_11 z_11_1)))) (and (and (= x_11 x_11) (= y_11 y_11)) (= z_11_1 z_11_1))) q_1 q_1) (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| QPMask@0) null (p_2 x_11 y_11 z_11_1))))
 :qid |stdinbpl.893:20|
 :skolemid |110|
 :pattern ( (inv_46_0 x_11 y_11 z_11_1) (inv_46_1 x_11 y_11 z_11_1) (inv_46_2 x_11 y_11 z_11_1))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 70) 8) anon80_Then_correct) (=> (= (ControlFlow 0 70) 69) anon80_Else_correct))))))
(let ((anon79_Then_correct true))
(let ((anon78_Else_correct  (=> (forall ((x_9 T@Ref) (y_9 T@Ref) (z_9 T@Ref) ) (!  (=> (and (select xs2 (inv_46_0 x_9 y_9 z_9)) (and (select ys2 (inv_46_1 x_9 y_9 z_9)) (select zs2 (inv_46_2 x_9 y_9 z_9)))) (and (and (= (inv_46_0 x_9 y_9 z_9) x_9) (= (inv_46_1 x_9 y_9 z_9) y_9)) (= (inv_46_2 x_9 y_9 z_9) z_9)))
 :qid |stdinbpl.873:20|
 :skolemid |109|
 :pattern ( (inv_46_0 x_9 y_9 z_9) (inv_46_1 x_9 y_9 z_9) (inv_46_2 x_9 y_9 z_9))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 71) 7) anon79_Then_correct) (=> (= (ControlFlow 0 71) 70) anon79_Else_correct))))))
(let ((anon78_Then_correct true))
(let ((anon77_Else_correct  (=> (forall ((x2_1_1 T@Ref) (y2_1 T@Ref) (z2_1 T@Ref) ) (!  (=> (and (select xs2 x2_1_1) (and (select ys2 y2_1) (select zs2 z2_1))) (and (and (= (inv_46_0 x2_1_1 y2_1 z2_1) x2_1_1) (= (inv_46_1 x2_1_1 y2_1 z2_1) y2_1)) (= (inv_46_2 x2_1_1 y2_1 z2_1) z2_1)))
 :qid |stdinbpl.855:20|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@32) null (p_2 x2_1_1 y2_1 z2_1)))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 72) 6) anon78_Then_correct) (=> (= (ControlFlow 0 72) 71) anon78_Else_correct))))))
(let ((anon77_Then_correct true))
(let ((anon76_Else_correct  (=> (forall ((x_7 T@Ref) (y_7 T@Ref) (z_7 T@Ref) ) (!  (=> (and (select xs1 (inv_45_0 x_7 y_7 z_7)) (and (select ys1 (inv_45_1 x_7 y_7 z_7)) (select zs1 (inv_45_2 x_7 y_7 z_7)))) (<= q_1 (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| QPMask@0) null (p_2 x_7 y_7 z_7))))
 :qid |stdinbpl.838:20|
 :skolemid |107|
 :pattern ( (inv_45_0 x_7 y_7 z_7) (inv_45_1 x_7 y_7 z_7) (inv_45_2 x_7 y_7 z_7))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 73) 5) anon77_Then_correct) (=> (= (ControlFlow 0 73) 72) anon77_Else_correct))))))
(let ((anon76_Then_correct true))
(let ((anon75_Else_correct  (=> (forall ((x_5 T@Ref) (y_5_2 T@Ref) (z_5 T@Ref) ) (!  (=> (and (select xs1 (inv_45_0 x_5 y_5_2 z_5)) (and (select ys1 (inv_45_1 x_5 y_5_2 z_5)) (select zs1 (inv_45_2 x_5 y_5_2 z_5)))) (and (and (= (inv_45_0 x_5 y_5_2 z_5) x_5) (= (inv_45_1 x_5 y_5_2 z_5) y_5_2)) (= (inv_45_2 x_5 y_5_2 z_5) z_5)))
 :qid |stdinbpl.821:20|
 :skolemid |106|
 :pattern ( (inv_45_0 x_5 y_5_2 z_5) (inv_45_1 x_5 y_5_2 z_5) (inv_45_2 x_5 y_5_2 z_5))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 74) 4) anon76_Then_correct) (=> (= (ControlFlow 0 74) 73) anon76_Else_correct))))))
(let ((anon75_Then_correct true))
(let ((anon74_Else_correct  (=> (forall ((x1_1 T@Ref) (y1_1 T@Ref) (z1_1 T@Ref) ) (!  (=> (and (select xs1 x1_1) (and (select ys1 y1_1) (select zs1 z1_1))) (and (and (= (inv_45_0 x1_1 y1_1 z1_1) x1_1) (= (inv_45_1 x1_1 y1_1 z1_1) y1_1)) (= (inv_45_2 x1_1 y1_1 z1_1) z1_1)))
 :qid |stdinbpl.803:20|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@32) null (p_2 x1_1 y1_1 z1_1)))
)) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 75) 3) anon75_Then_correct) (=> (= (ControlFlow 0 75) 74) anon75_Else_correct))))))
(let ((anon74_Then_correct true))
(let ((anon73_Else_correct  (and (=> (= (ControlFlow 0 76) (- 0 78)) (forall ((x_1 T@Ref) (y_1 T@Ref) (z_1 T@Ref) (x_1_1 T@Ref) (y_1_1 T@Ref) (z_1_1 T@Ref) ) (!  (=> (and (and (and (and (and (and (not (= x_1 x_1_1)) (not (= y_1 y_1_1))) (not (= z_1 z_1_1))) (and (select xs x_1) (and (select ys y_1) (select zs z_1)))) (and (select xs x_1_1) (and (select ys y_1_1) (select zs z_1_1)))) (< NoPerm q_1)) (< NoPerm q_1)) (or (or (not (= x_1 x_1_1)) (not (= y_1 y_1_1))) (not (= z_1 z_1_1))))
 :qid |stdinbpl.752:17|
 :skolemid |98|
 :pattern ( (neverTriggered3 x_1 y_1 z_1) (neverTriggered3 x_1_1 y_1_1 z_1_1))
))) (=> (forall ((x_1@@0 T@Ref) (y_1@@0 T@Ref) (z_1@@0 T@Ref) (x_1_1@@0 T@Ref) (y_1_1@@0 T@Ref) (z_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (not (= y_1@@0 y_1_1@@0))) (not (= z_1@@0 z_1_1@@0))) (and (select xs x_1@@0) (and (select ys y_1@@0) (select zs z_1@@0)))) (and (select xs x_1_1@@0) (and (select ys y_1_1@@0) (select zs z_1_1@@0)))) (< NoPerm q_1)) (< NoPerm q_1)) (or (or (not (= x_1@@0 x_1_1@@0)) (not (= y_1@@0 y_1_1@@0))) (not (= z_1@@0 z_1_1@@0))))
 :qid |stdinbpl.752:17|
 :skolemid |98|
 :pattern ( (neverTriggered3 x_1@@0 y_1@@0 z_1@@0) (neverTriggered3 x_1_1@@0 y_1_1@@0 z_1_1@@0))
)) (=> (and (forall ((x_1@@1 T@Ref) (y_1@@1 T@Ref) (z_1@@1 T@Ref) ) (!  (=> (and (and (select xs x_1@@1) (and (select ys y_1@@1) (select zs z_1@@1))) (< NoPerm q_1)) (and (and (and (= (invRecv1 x_1@@1 y_1@@1 z_1@@1) x_1@@1) (= (invRecv2 x_1@@1 y_1@@1 z_1@@1) y_1@@1)) (= (invRecv3 x_1@@1 y_1@@1 z_1@@1) z_1@@1)) (qpRange3 x_1@@1 y_1@@1 z_1@@1)))
 :qid |stdinbpl.758:22|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@32) null (p_2 x_1@@1 y_1@@1 z_1@@1)))
 :pattern ( (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| ZeroMask) null (p_2 x_1@@1 y_1@@1 z_1@@1)))
 :pattern ( (select xs x_1@@1) (select ys y_1@@1) (select zs z_1@@1))
)) (forall ((x_2_1 T@Ref) (y_2_1_1 T@Ref) (z_2_1 T@Ref) ) (!  (=> (and (and (and (select xs (invRecv1 x_2_1 y_2_1_1 z_2_1)) (and (select ys (invRecv2 x_2_1 y_2_1_1 z_2_1)) (select zs (invRecv3 x_2_1 y_2_1_1 z_2_1)))) (< NoPerm q_1)) (qpRange3 x_2_1 y_2_1_1 z_2_1)) (and (and (= (invRecv1 x_2_1 y_2_1_1 z_2_1) x_2_1) (= (invRecv2 x_2_1 y_2_1_1 z_2_1) y_2_1_1)) (= (invRecv3 x_2_1 y_2_1_1 z_2_1) z_2_1)))
 :qid |stdinbpl.762:22|
 :skolemid |100|
 :pattern ( (invRecv1 x_2_1 y_2_1_1 z_2_1) (invRecv2 x_2_1 y_2_1_1 z_2_1) (invRecv3 x_2_1 y_2_1_1 z_2_1))
))) (and (=> (= (ControlFlow 0 76) (- 0 77)) (forall ((x_1@@2 T@Ref) (y_1@@2 T@Ref) (z_1@@2 T@Ref) ) (!  (=> (and (select xs x_1@@2) (and (select ys y_1@@2) (select zs z_1@@2))) (>= q_1 NoPerm))
 :qid |stdinbpl.768:15|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@32) null (p_2 x_1@@2 y_1@@2 z_1@@2)))
 :pattern ( (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| ZeroMask) null (p_2 x_1@@2 y_1@@2 z_1@@2)))
 :pattern ( (select xs x_1@@2) (select ys y_1@@2) (select zs z_1@@2))
))) (=> (forall ((x_1@@3 T@Ref) (y_1@@3 T@Ref) (z_1@@3 T@Ref) ) (!  (=> (and (select xs x_1@@3) (and (select ys y_1@@3) (select zs z_1@@3))) (>= q_1 NoPerm))
 :qid |stdinbpl.768:15|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_17414_12811_12812#PolymorphicMapType_17414| Heap@@32) null (p_2 x_1@@3 y_1@@3 z_1@@3)))
 :pattern ( (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| ZeroMask) null (p_2 x_1@@3 y_1@@3 z_1@@3)))
 :pattern ( (select xs x_1@@3) (select ys y_1@@3) (select zs z_1@@3))
)) (=> (forall ((x_2_1@@0 T@Ref) (y_2_1_1@@0 T@Ref) (z_2_1@@0 T@Ref) ) (!  (=> (and (and (and (select xs (invRecv1 x_2_1@@0 y_2_1_1@@0 z_2_1@@0)) (and (select ys (invRecv2 x_2_1@@0 y_2_1_1@@0 z_2_1@@0)) (select zs (invRecv3 x_2_1@@0 y_2_1_1@@0 z_2_1@@0)))) (< NoPerm q_1)) (qpRange3 x_2_1@@0 y_2_1_1@@0 z_2_1@@0)) (and (=> (< NoPerm q_1) (and (and (= (invRecv1 x_2_1@@0 y_2_1_1@@0 z_2_1@@0) x_2_1@@0) (= (invRecv2 x_2_1@@0 y_2_1_1@@0 z_2_1@@0) y_2_1_1@@0)) (= (invRecv3 x_2_1@@0 y_2_1_1@@0 z_2_1@@0) z_2_1@@0))) (= (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| QPMask@0) null (p_2 x_2_1@@0 y_2_1_1@@0 z_2_1@@0)) (+ (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| ZeroMask) null (p_2 x_2_1@@0 y_2_1_1@@0 z_2_1@@0)) q_1))))
 :qid |stdinbpl.774:22|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| QPMask@0) null (p_2 x_2_1@@0 y_2_1_1@@0 z_2_1@@0)))
)) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_9 T@Ref) (f_5 T@Field_25242_5332) ) (!  (=> (or (or (not (= o_9 null)) (not (IsPredicateField_12806_5332 f_5))) (not (= (getPredWandId_12806_5332 f_5) 0))) (= (select (|PolymorphicMapType_17435_17474_5332#PolymorphicMapType_17435| ZeroMask) o_9 f_5) (select (|PolymorphicMapType_17435_17474_5332#PolymorphicMapType_17435| QPMask@0) o_9 f_5)))
 :qid |stdinbpl.780:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_17435_17474_5332#PolymorphicMapType_17435| ZeroMask) o_9 f_5))
 :pattern ( (select (|PolymorphicMapType_17435_17474_5332#PolymorphicMapType_17435| QPMask@0) o_9 f_5))
)) (forall ((o_9@@0 T@Ref) (f_5@@0 T@Field_17474_25292) ) (!  (=> (or (or (not (= o_9@@0 null)) (not (IsPredicateField_17474_47928 f_5@@0))) (not (= (getPredWandId_12806_12812 f_5@@0) 0))) (= (select (|PolymorphicMapType_17435_17474_12812#PolymorphicMapType_17435| ZeroMask) o_9@@0 f_5@@0) (select (|PolymorphicMapType_17435_17474_12812#PolymorphicMapType_17435| QPMask@0) o_9@@0 f_5@@0)))
 :qid |stdinbpl.780:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_17435_17474_12812#PolymorphicMapType_17435| ZeroMask) o_9@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_17435_17474_12812#PolymorphicMapType_17435| QPMask@0) o_9@@0 f_5@@0))
))) (forall ((o_9@@1 T@Ref) (f_5@@1 T@Field_17474_53) ) (!  (=> (or (or (not (= o_9@@1 null)) (not (IsPredicateField_17474_53 f_5@@1))) (not (= (getPredWandId_12806_53 f_5@@1) 0))) (= (select (|PolymorphicMapType_17435_17474_53#PolymorphicMapType_17435| ZeroMask) o_9@@1 f_5@@1) (select (|PolymorphicMapType_17435_17474_53#PolymorphicMapType_17435| QPMask@0) o_9@@1 f_5@@1)))
 :qid |stdinbpl.780:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_17435_17474_53#PolymorphicMapType_17435| ZeroMask) o_9@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_17435_17474_53#PolymorphicMapType_17435| QPMask@0) o_9@@1 f_5@@1))
))) (forall ((o_9@@2 T@Ref) (f_5@@2 T@Field_17487_17488) ) (!  (=> (or (or (not (= o_9@@2 null)) (not (IsPredicateField_17474_17488 f_5@@2))) (not (= (getPredWandId_12806_17488 f_5@@2) 0))) (= (select (|PolymorphicMapType_17435_17474_17488#PolymorphicMapType_17435| ZeroMask) o_9@@2 f_5@@2) (select (|PolymorphicMapType_17435_17474_17488#PolymorphicMapType_17435| QPMask@0) o_9@@2 f_5@@2)))
 :qid |stdinbpl.780:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_17435_17474_17488#PolymorphicMapType_17435| ZeroMask) o_9@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_17435_17474_17488#PolymorphicMapType_17435| QPMask@0) o_9@@2 f_5@@2))
))) (forall ((o_9@@3 T@Ref) (f_5@@3 T@Field_17474_25311) ) (!  (=> (or (or (not (= o_9@@3 null)) (not (IsPredicateField_17474_58569 f_5@@3))) (not (= (getPredWandId_12806_64198 f_5@@3) 0))) (= (select (|PolymorphicMapType_17435_17474_56277#PolymorphicMapType_17435| ZeroMask) o_9@@3 f_5@@3) (select (|PolymorphicMapType_17435_17474_56277#PolymorphicMapType_17435| QPMask@0) o_9@@3 f_5@@3)))
 :qid |stdinbpl.780:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_17435_17474_56277#PolymorphicMapType_17435| ZeroMask) o_9@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_17435_17474_56277#PolymorphicMapType_17435| QPMask@0) o_9@@3 f_5@@3))
))) (forall ((o_9@@4 T@Ref) (f_5@@4 T@Field_25291_5332) ) (!  (=> (or (or (not (= o_9@@4 null)) (not (IsPredicateField_12811_5332 f_5@@4))) (not (= (getPredWandId_12811_5332 f_5@@4) 0))) (= (select (|PolymorphicMapType_17435_12811_5332#PolymorphicMapType_17435| ZeroMask) o_9@@4 f_5@@4) (select (|PolymorphicMapType_17435_12811_5332#PolymorphicMapType_17435| QPMask@0) o_9@@4 f_5@@4)))
 :qid |stdinbpl.780:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_17435_12811_5332#PolymorphicMapType_17435| ZeroMask) o_9@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_17435_12811_5332#PolymorphicMapType_17435| QPMask@0) o_9@@4 f_5@@4))
))) (forall ((o_9@@5 T@Ref) (f_5@@5 T@Field_25291_25292) ) (!  (=> (or (or (not (= o_9@@5 null)) (not (IsPredicateField_12811_12812 f_5@@5))) (not (= (getPredWandId_12811_12812 f_5@@5) 0))) (= (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| ZeroMask) o_9@@5 f_5@@5) (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| QPMask@0) o_9@@5 f_5@@5)))
 :qid |stdinbpl.780:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| ZeroMask) o_9@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| QPMask@0) o_9@@5 f_5@@5))
))) (forall ((o_9@@6 T@Ref) (f_5@@6 T@Field_25291_53) ) (!  (=> (or (or (not (= o_9@@6 null)) (not (IsPredicateField_12811_53 f_5@@6))) (not (= (getPredWandId_12811_53 f_5@@6) 0))) (= (select (|PolymorphicMapType_17435_12811_53#PolymorphicMapType_17435| ZeroMask) o_9@@6 f_5@@6) (select (|PolymorphicMapType_17435_12811_53#PolymorphicMapType_17435| QPMask@0) o_9@@6 f_5@@6)))
 :qid |stdinbpl.780:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_17435_12811_53#PolymorphicMapType_17435| ZeroMask) o_9@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_17435_12811_53#PolymorphicMapType_17435| QPMask@0) o_9@@6 f_5@@6))
))) (forall ((o_9@@7 T@Ref) (f_5@@7 T@Field_25291_17488) ) (!  (=> (or (or (not (= o_9@@7 null)) (not (IsPredicateField_12811_17488 f_5@@7))) (not (= (getPredWandId_12811_17488 f_5@@7) 0))) (= (select (|PolymorphicMapType_17435_12811_17488#PolymorphicMapType_17435| ZeroMask) o_9@@7 f_5@@7) (select (|PolymorphicMapType_17435_12811_17488#PolymorphicMapType_17435| QPMask@0) o_9@@7 f_5@@7)))
 :qid |stdinbpl.780:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_17435_12811_17488#PolymorphicMapType_17435| ZeroMask) o_9@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_17435_12811_17488#PolymorphicMapType_17435| QPMask@0) o_9@@7 f_5@@7))
))) (forall ((o_9@@8 T@Ref) (f_5@@8 T@Field_25306_25311) ) (!  (=> (or (or (not (= o_9@@8 null)) (not (IsPredicateField_12811_57752 f_5@@8))) (not (= (getPredWandId_12811_65007 f_5@@8) 0))) (= (select (|PolymorphicMapType_17435_12811_55851#PolymorphicMapType_17435| ZeroMask) o_9@@8 f_5@@8) (select (|PolymorphicMapType_17435_12811_55851#PolymorphicMapType_17435| QPMask@0) o_9@@8 f_5@@8)))
 :qid |stdinbpl.780:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_17435_12811_55851#PolymorphicMapType_17435| ZeroMask) o_9@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_17435_12811_55851#PolymorphicMapType_17435| QPMask@0) o_9@@8 f_5@@8))
))) (and (and (forall ((x_2_1@@1 T@Ref) (y_2_1_1@@1 T@Ref) (z_2_1@@1 T@Ref) ) (!  (=> (not (and (and (and (select xs (invRecv1 x_2_1@@1 y_2_1_1@@1 z_2_1@@1)) (and (select ys (invRecv2 x_2_1@@1 y_2_1_1@@1 z_2_1@@1)) (select zs (invRecv3 x_2_1@@1 y_2_1_1@@1 z_2_1@@1)))) (< NoPerm q_1)) (qpRange3 x_2_1@@1 y_2_1_1@@1 z_2_1@@1))) (= (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| QPMask@0) null (p_2 x_2_1@@1 y_2_1_1@@1 z_2_1@@1)) (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| ZeroMask) null (p_2 x_2_1@@1 y_2_1_1@@1 z_2_1@@1))))
 :qid |stdinbpl.784:22|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_17435_12811_12812#PolymorphicMapType_17435| QPMask@0) null (p_2 x_2_1@@1 y_2_1_1@@1 z_2_1@@1)))
)) (state Heap@@32 QPMask@0)) (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)))) (and (=> (= (ControlFlow 0 76) 2) anon74_Then_correct) (=> (= (ControlFlow 0 76) 75) anon74_Else_correct)))))))))))
(let ((anon73_Then_correct true))
(let ((anon0_correct  (=> (and (and (and (state Heap@@32 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@32) a_2 $allocated) (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@32) b_24 $allocated))) (and (and (select (|PolymorphicMapType_17414_12207_53#PolymorphicMapType_17414| Heap@@32) c $allocated) (<= NoPerm q_1)) (and (state Heap@@32 ZeroMask) (state Heap@@32 ZeroMask)))) (and (=> (= (ControlFlow 0 79) 1) anon73_Then_correct) (=> (= (ControlFlow 0 79) 76) anon73_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 80) 79) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 39) (- 40))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 36) (- 35))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
