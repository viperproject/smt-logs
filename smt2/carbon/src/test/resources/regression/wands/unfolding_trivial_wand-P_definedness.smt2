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
(declare-sort T@Field_4611_53 0)
(declare-sort T@Field_4624_4625 0)
(declare-sort T@Field_8716_8717 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_8669_1565 0)
(declare-sort T@Field_8729_8734 0)
(declare-sort T@Field_4611_7959 0)
(declare-sort T@Field_4611_7972 0)
(declare-sort T@Field_7940_53 0)
(declare-sort T@Field_7940_4625 0)
(declare-sort T@Field_7940_1207 0)
(declare-sort T@Field_7954_7959 0)
(declare-sort T@Field_7971_7972 0)
(declare-sort T@Field_8716_53 0)
(declare-sort T@Field_8716_4625 0)
(declare-sort T@Field_8716_1207 0)
(declare-datatypes ((T@PolymorphicMapType_4572 0)) (((PolymorphicMapType_4572 (|PolymorphicMapType_4572_2629_1565#PolymorphicMapType_4572| (Array T@Ref T@Field_8669_1565 Real)) (|PolymorphicMapType_4572_2632_2633#PolymorphicMapType_4572| (Array T@Ref T@Field_8716_8717 Real)) (|PolymorphicMapType_4572_2581_1207#PolymorphicMapType_4572| (Array T@Ref T@Field_7940_1207 Real)) (|PolymorphicMapType_4572_2629_2633#PolymorphicMapType_4572| (Array T@Ref T@Field_4611_7972 Real)) (|PolymorphicMapType_4572_2629_53#PolymorphicMapType_4572| (Array T@Ref T@Field_4611_53 Real)) (|PolymorphicMapType_4572_2629_4625#PolymorphicMapType_4572| (Array T@Ref T@Field_4624_4625 Real)) (|PolymorphicMapType_4572_2629_28296#PolymorphicMapType_4572| (Array T@Ref T@Field_4611_7959 Real)) (|PolymorphicMapType_4572_2632_1565#PolymorphicMapType_4572| (Array T@Ref T@Field_8716_1207 Real)) (|PolymorphicMapType_4572_2632_53#PolymorphicMapType_4572| (Array T@Ref T@Field_8716_53 Real)) (|PolymorphicMapType_4572_2632_4625#PolymorphicMapType_4572| (Array T@Ref T@Field_8716_4625 Real)) (|PolymorphicMapType_4572_2632_28707#PolymorphicMapType_4572| (Array T@Ref T@Field_8729_8734 Real)) (|PolymorphicMapType_4572_2581_2633#PolymorphicMapType_4572| (Array T@Ref T@Field_7971_7972 Real)) (|PolymorphicMapType_4572_2581_53#PolymorphicMapType_4572| (Array T@Ref T@Field_7940_53 Real)) (|PolymorphicMapType_4572_2581_4625#PolymorphicMapType_4572| (Array T@Ref T@Field_7940_4625 Real)) (|PolymorphicMapType_4572_2581_29121#PolymorphicMapType_4572| (Array T@Ref T@Field_7954_7959 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5100 0)) (((PolymorphicMapType_5100 (|PolymorphicMapType_5100_2629_1565#PolymorphicMapType_5100| (Array T@Ref T@Field_8669_1565 Bool)) (|PolymorphicMapType_5100_2629_53#PolymorphicMapType_5100| (Array T@Ref T@Field_4611_53 Bool)) (|PolymorphicMapType_5100_2629_4625#PolymorphicMapType_5100| (Array T@Ref T@Field_4624_4625 Bool)) (|PolymorphicMapType_5100_2629_18184#PolymorphicMapType_5100| (Array T@Ref T@Field_4611_7959 Bool)) (|PolymorphicMapType_5100_2629_7972#PolymorphicMapType_5100| (Array T@Ref T@Field_4611_7972 Bool)) (|PolymorphicMapType_5100_7940_1565#PolymorphicMapType_5100| (Array T@Ref T@Field_7940_1207 Bool)) (|PolymorphicMapType_5100_7940_53#PolymorphicMapType_5100| (Array T@Ref T@Field_7940_53 Bool)) (|PolymorphicMapType_5100_7940_4625#PolymorphicMapType_5100| (Array T@Ref T@Field_7940_4625 Bool)) (|PolymorphicMapType_5100_7940_19232#PolymorphicMapType_5100| (Array T@Ref T@Field_7954_7959 Bool)) (|PolymorphicMapType_5100_7940_7972#PolymorphicMapType_5100| (Array T@Ref T@Field_7971_7972 Bool)) (|PolymorphicMapType_5100_8716_1565#PolymorphicMapType_5100| (Array T@Ref T@Field_8716_1207 Bool)) (|PolymorphicMapType_5100_8716_53#PolymorphicMapType_5100| (Array T@Ref T@Field_8716_53 Bool)) (|PolymorphicMapType_5100_8716_4625#PolymorphicMapType_5100| (Array T@Ref T@Field_8716_4625 Bool)) (|PolymorphicMapType_5100_8716_20280#PolymorphicMapType_5100| (Array T@Ref T@Field_8729_8734 Bool)) (|PolymorphicMapType_5100_8716_7972#PolymorphicMapType_5100| (Array T@Ref T@Field_8716_8717 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4551 0)) (((PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| (Array T@Ref T@Field_4611_53 Bool)) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| (Array T@Ref T@Field_4624_4625 T@Ref)) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| (Array T@Ref T@Field_8716_8717 T@FrameType)) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| (Array T@Ref T@Field_8669_1565 Int)) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| (Array T@Ref T@Field_8729_8734 T@PolymorphicMapType_5100)) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| (Array T@Ref T@Field_4611_7959 T@PolymorphicMapType_5100)) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| (Array T@Ref T@Field_4611_7972 T@FrameType)) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| (Array T@Ref T@Field_7940_53 Bool)) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| (Array T@Ref T@Field_7940_4625 T@Ref)) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| (Array T@Ref T@Field_7940_1207 Int)) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| (Array T@Ref T@Field_7954_7959 T@PolymorphicMapType_5100)) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| (Array T@Ref T@Field_7971_7972 T@FrameType)) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| (Array T@Ref T@Field_8716_53 Bool)) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| (Array T@Ref T@Field_8716_4625 T@Ref)) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| (Array T@Ref T@Field_8716_1207 Int)) ) ) ))
(declare-fun $allocated () T@Field_4611_53)
(declare-fun f_7 () T@Field_8669_1565)
(declare-fun succHeap (T@PolymorphicMapType_4551 T@PolymorphicMapType_4551) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4551 T@PolymorphicMapType_4551) Bool)
(declare-fun wand (T@Ref Real T@Ref T@Ref Bool) T@Field_7940_1207)
(declare-fun state (T@PolymorphicMapType_4551 T@PolymorphicMapType_4572) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4572) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5100)
(declare-fun P (T@Ref) T@Field_8716_8717)
(declare-fun IsPredicateField_2632_2633 (T@Field_8716_8717) Bool)
(declare-fun |P#trigger_2632| (T@PolymorphicMapType_4551 T@Field_8716_8717) Bool)
(declare-fun |P#everUsed_2632| (T@Field_8716_8717) Bool)
(declare-fun getPredWandId_2581_1207 (T@Field_7940_1207) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4551 T@PolymorphicMapType_4551 T@PolymorphicMapType_4572) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2632 (T@Field_8716_8717) T@Field_8729_8734)
(declare-fun HasDirectPerm_8716_7972 (T@PolymorphicMapType_4572 T@Ref T@Field_8716_8717) Bool)
(declare-fun IsPredicateField_2594_2595 (T@Field_7971_7972) Bool)
(declare-fun PredicateMaskField_7940 (T@Field_7971_7972) T@Field_7954_7959)
(declare-fun HasDirectPerm_7940_7972 (T@PolymorphicMapType_4572 T@Ref T@Field_7971_7972) Bool)
(declare-fun IsPredicateField_4611_16566 (T@Field_4611_7972) Bool)
(declare-fun PredicateMaskField_4611 (T@Field_4611_7972) T@Field_4611_7959)
(declare-fun HasDirectPerm_4611_7972 (T@PolymorphicMapType_4572 T@Ref T@Field_4611_7972) Bool)
(declare-fun IsWandField_8716_22255 (T@Field_8716_8717) Bool)
(declare-fun WandMaskField_8716 (T@Field_8716_8717) T@Field_8729_8734)
(declare-fun IsWandField_2594_2595 (T@Field_7971_7972) Bool)
(declare-fun WandMaskField_2594 (T@Field_7971_7972) T@Field_7954_7959)
(declare-fun IsWandField_4611_21573 (T@Field_4611_7972) Bool)
(declare-fun WandMaskField_4611 (T@Field_4611_7972) T@Field_4611_7959)
(declare-fun |P#sm| (T@Ref) T@Field_8729_8734)
(declare-fun dummyHeap () T@PolymorphicMapType_4551)
(declare-fun ZeroMask () T@PolymorphicMapType_4572)
(declare-fun InsidePredicate_8716_8716 (T@Field_8716_8717 T@FrameType T@Field_8716_8717 T@FrameType) Bool)
(declare-fun InsidePredicate_7940_7940 (T@Field_7971_7972 T@FrameType T@Field_7971_7972 T@FrameType) Bool)
(declare-fun InsidePredicate_4611_4611 (T@Field_4611_7972 T@FrameType T@Field_4611_7972 T@FrameType) Bool)
(declare-fun IsWandField_2581_1207 (T@Field_7940_1207) Bool)
(declare-fun |wand#ft| (T@Ref Real T@Ref T@Ref Bool) T@Field_7971_7972)
(declare-fun IsPredicateField_2629_1565 (T@Field_8669_1565) Bool)
(declare-fun IsWandField_2629_1565 (T@Field_8669_1565) Bool)
(declare-fun IsPredicateField_2581_1207 (T@Field_7940_1207) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2581_32562 (T@Field_7954_7959) Bool)
(declare-fun IsWandField_2581_32578 (T@Field_7954_7959) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2581_4625 (T@Field_7940_4625) Bool)
(declare-fun IsWandField_2581_4625 (T@Field_7940_4625) Bool)
(declare-fun IsPredicateField_2581_53 (T@Field_7940_53) Bool)
(declare-fun IsWandField_2581_53 (T@Field_7940_53) Bool)
(declare-fun IsPredicateField_2632_31745 (T@Field_8729_8734) Bool)
(declare-fun IsWandField_2632_31761 (T@Field_8729_8734) Bool)
(declare-fun IsPredicateField_2632_4625 (T@Field_8716_4625) Bool)
(declare-fun IsWandField_2632_4625 (T@Field_8716_4625) Bool)
(declare-fun IsPredicateField_2632_53 (T@Field_8716_53) Bool)
(declare-fun IsWandField_2632_53 (T@Field_8716_53) Bool)
(declare-fun IsPredicateField_2632_1565 (T@Field_8716_1207) Bool)
(declare-fun IsWandField_2632_1565 (T@Field_8716_1207) Bool)
(declare-fun IsPredicateField_2629_30914 (T@Field_4611_7959) Bool)
(declare-fun IsWandField_2629_30930 (T@Field_4611_7959) Bool)
(declare-fun IsPredicateField_2629_4625 (T@Field_4624_4625) Bool)
(declare-fun IsWandField_2629_4625 (T@Field_4624_4625) Bool)
(declare-fun IsPredicateField_2629_53 (T@Field_4611_53) Bool)
(declare-fun IsWandField_2629_53 (T@Field_4611_53) Bool)
(declare-fun HasDirectPerm_8716_16110 (T@PolymorphicMapType_4572 T@Ref T@Field_8729_8734) Bool)
(declare-fun HasDirectPerm_8716_1207 (T@PolymorphicMapType_4572 T@Ref T@Field_8716_1207) Bool)
(declare-fun HasDirectPerm_8716_4625 (T@PolymorphicMapType_4572 T@Ref T@Field_8716_4625) Bool)
(declare-fun HasDirectPerm_8716_53 (T@PolymorphicMapType_4572 T@Ref T@Field_8716_53) Bool)
(declare-fun HasDirectPerm_7940_14932 (T@PolymorphicMapType_4572 T@Ref T@Field_7954_7959) Bool)
(declare-fun HasDirectPerm_7940_1207 (T@PolymorphicMapType_4572 T@Ref T@Field_7940_1207) Bool)
(declare-fun HasDirectPerm_7940_4625 (T@PolymorphicMapType_4572 T@Ref T@Field_7940_4625) Bool)
(declare-fun HasDirectPerm_7940_53 (T@PolymorphicMapType_4572 T@Ref T@Field_7940_53) Bool)
(declare-fun HasDirectPerm_4611_13754 (T@PolymorphicMapType_4572 T@Ref T@Field_4611_7959) Bool)
(declare-fun HasDirectPerm_4611_1207 (T@PolymorphicMapType_4572 T@Ref T@Field_8669_1565) Bool)
(declare-fun HasDirectPerm_4611_4625 (T@PolymorphicMapType_4572 T@Ref T@Field_4624_4625) Bool)
(declare-fun HasDirectPerm_4611_53 (T@PolymorphicMapType_4572 T@Ref T@Field_4611_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4572 T@PolymorphicMapType_4572 T@PolymorphicMapType_4572) Bool)
(declare-fun |wand#sm| (T@Ref Real T@Ref T@Ref Bool) T@Field_7954_7959)
(declare-fun getPredWandId_2632_2633 (T@Field_8716_8717) Int)
(declare-fun InsidePredicate_8716_7940 (T@Field_8716_8717 T@FrameType T@Field_7971_7972 T@FrameType) Bool)
(declare-fun InsidePredicate_8716_4611 (T@Field_8716_8717 T@FrameType T@Field_4611_7972 T@FrameType) Bool)
(declare-fun InsidePredicate_7940_8716 (T@Field_7971_7972 T@FrameType T@Field_8716_8717 T@FrameType) Bool)
(declare-fun InsidePredicate_7940_4611 (T@Field_7971_7972 T@FrameType T@Field_4611_7972 T@FrameType) Bool)
(declare-fun InsidePredicate_4611_8716 (T@Field_4611_7972 T@FrameType T@Field_8716_8717 T@FrameType) Bool)
(declare-fun InsidePredicate_4611_7940 (T@Field_4611_7972 T@FrameType T@Field_7971_7972 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_4551) (Heap1 T@PolymorphicMapType_4551) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 T@Ref) (arg5 Bool) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 T@Ref) (arg4_2 T@Ref) (arg5_2 Bool) ) (!  (=> (= (wand arg1 arg2 arg3 arg4 arg5) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2)) (and (= arg1 arg1_2) (and (= arg2 arg2_2) (and (= arg3 arg3_2) (and (= arg4 arg4_2) (= arg5 arg5_2))))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1 arg2 arg3 arg4 arg5) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2))
)))
(assert (forall ((Heap T@PolymorphicMapType_4551) (Mask T@PolymorphicMapType_4572) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4551) (Heap1@@0 T@PolymorphicMapType_4551) (Heap2 T@PolymorphicMapType_4551) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8716_8717) ) (!  (not (select (|PolymorphicMapType_5100_8716_7972#PolymorphicMapType_5100| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5100_8716_7972#PolymorphicMapType_5100| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8729_8734) ) (!  (not (select (|PolymorphicMapType_5100_8716_20280#PolymorphicMapType_5100| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5100_8716_20280#PolymorphicMapType_5100| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8716_4625) ) (!  (not (select (|PolymorphicMapType_5100_8716_4625#PolymorphicMapType_5100| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5100_8716_4625#PolymorphicMapType_5100| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8716_53) ) (!  (not (select (|PolymorphicMapType_5100_8716_53#PolymorphicMapType_5100| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5100_8716_53#PolymorphicMapType_5100| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8716_1207) ) (!  (not (select (|PolymorphicMapType_5100_8716_1565#PolymorphicMapType_5100| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5100_8716_1565#PolymorphicMapType_5100| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_7971_7972) ) (!  (not (select (|PolymorphicMapType_5100_7940_7972#PolymorphicMapType_5100| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5100_7940_7972#PolymorphicMapType_5100| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_7954_7959) ) (!  (not (select (|PolymorphicMapType_5100_7940_19232#PolymorphicMapType_5100| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5100_7940_19232#PolymorphicMapType_5100| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7940_4625) ) (!  (not (select (|PolymorphicMapType_5100_7940_4625#PolymorphicMapType_5100| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5100_7940_4625#PolymorphicMapType_5100| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_7940_53) ) (!  (not (select (|PolymorphicMapType_5100_7940_53#PolymorphicMapType_5100| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5100_7940_53#PolymorphicMapType_5100| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_7940_1207) ) (!  (not (select (|PolymorphicMapType_5100_7940_1565#PolymorphicMapType_5100| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5100_7940_1565#PolymorphicMapType_5100| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_4611_7972) ) (!  (not (select (|PolymorphicMapType_5100_2629_7972#PolymorphicMapType_5100| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5100_2629_7972#PolymorphicMapType_5100| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_4611_7959) ) (!  (not (select (|PolymorphicMapType_5100_2629_18184#PolymorphicMapType_5100| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5100_2629_18184#PolymorphicMapType_5100| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_4624_4625) ) (!  (not (select (|PolymorphicMapType_5100_2629_4625#PolymorphicMapType_5100| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5100_2629_4625#PolymorphicMapType_5100| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_4611_53) ) (!  (not (select (|PolymorphicMapType_5100_2629_53#PolymorphicMapType_5100| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5100_2629_53#PolymorphicMapType_5100| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_8669_1565) ) (!  (not (select (|PolymorphicMapType_5100_2629_1565#PolymorphicMapType_5100| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5100_2629_1565#PolymorphicMapType_5100| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_2632_2633 (P x))
 :qid |stdinbpl.232:15|
 :skolemid |30|
 :pattern ( (P x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4551) (x@@0 T@Ref) ) (! (|P#everUsed_2632| (P x@@0))
 :qid |stdinbpl.251:15|
 :skolemid |34|
 :pattern ( (|P#trigger_2632| Heap@@0 (P x@@0)))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 T@Ref) (arg4@@0 T@Ref) (arg5@@0 Bool) ) (! (= (getPredWandId_2581_1207 (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0)) 1)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4551) (ExhaleHeap T@PolymorphicMapType_4551) (Mask@@0 T@PolymorphicMapType_4572) (pm_f T@Field_8716_8717) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8716_7972 Mask@@0 null pm_f) (IsPredicateField_2632_2633 pm_f)) (= (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@1) null (PredicateMaskField_2632 pm_f)) (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| ExhaleHeap) null (PredicateMaskField_2632 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_2632_2633 pm_f) (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| ExhaleHeap) null (PredicateMaskField_2632 pm_f)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4551) (ExhaleHeap@@0 T@PolymorphicMapType_4551) (Mask@@1 T@PolymorphicMapType_4572) (pm_f@@0 T@Field_7971_7972) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7940_7972 Mask@@1 null pm_f@@0) (IsPredicateField_2594_2595 pm_f@@0)) (= (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@2) null (PredicateMaskField_7940 pm_f@@0)) (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| ExhaleHeap@@0) null (PredicateMaskField_7940 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_2594_2595 pm_f@@0) (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| ExhaleHeap@@0) null (PredicateMaskField_7940 pm_f@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4551) (ExhaleHeap@@1 T@PolymorphicMapType_4551) (Mask@@2 T@PolymorphicMapType_4572) (pm_f@@1 T@Field_4611_7972) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4611_7972 Mask@@2 null pm_f@@1) (IsPredicateField_4611_16566 pm_f@@1)) (= (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@3) null (PredicateMaskField_4611 pm_f@@1)) (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| ExhaleHeap@@1) null (PredicateMaskField_4611 pm_f@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsPredicateField_4611_16566 pm_f@@1) (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| ExhaleHeap@@1) null (PredicateMaskField_4611 pm_f@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4551) (ExhaleHeap@@2 T@PolymorphicMapType_4551) (Mask@@3 T@PolymorphicMapType_4572) (pm_f@@2 T@Field_8716_8717) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_8716_7972 Mask@@3 null pm_f@@2) (IsWandField_8716_22255 pm_f@@2)) (= (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@4) null (WandMaskField_8716 pm_f@@2)) (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| ExhaleHeap@@2) null (WandMaskField_8716 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_8716_22255 pm_f@@2) (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| ExhaleHeap@@2) null (WandMaskField_8716 pm_f@@2)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4551) (ExhaleHeap@@3 T@PolymorphicMapType_4551) (Mask@@4 T@PolymorphicMapType_4572) (pm_f@@3 T@Field_7971_7972) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_7940_7972 Mask@@4 null pm_f@@3) (IsWandField_2594_2595 pm_f@@3)) (= (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@5) null (WandMaskField_2594 pm_f@@3)) (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| ExhaleHeap@@3) null (WandMaskField_2594 pm_f@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsWandField_2594_2595 pm_f@@3) (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| ExhaleHeap@@3) null (WandMaskField_2594 pm_f@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4551) (ExhaleHeap@@4 T@PolymorphicMapType_4551) (Mask@@5 T@PolymorphicMapType_4572) (pm_f@@4 T@Field_4611_7972) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4611_7972 Mask@@5 null pm_f@@4) (IsWandField_4611_21573 pm_f@@4)) (= (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@6) null (WandMaskField_4611 pm_f@@4)) (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| ExhaleHeap@@4) null (WandMaskField_4611 pm_f@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsWandField_4611_21573 pm_f@@4) (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| ExhaleHeap@@4) null (WandMaskField_4611 pm_f@@4)))
)))
(assert (forall ((x@@1 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@1) (P x2)) (= x@@1 x2))
 :qid |stdinbpl.242:15|
 :skolemid |32|
 :pattern ( (P x@@1) (P x2))
)))
(assert (forall ((x@@2 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@2) (|P#sm| x2@@0)) (= x@@2 x2@@0))
 :qid |stdinbpl.246:15|
 :skolemid |33|
 :pattern ( (|P#sm| x@@2) (|P#sm| x2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4551) (ExhaleHeap@@5 T@PolymorphicMapType_4551) (Mask@@6 T@PolymorphicMapType_4572) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@7) o_1 $allocated) (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| ExhaleHeap@@5) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| ExhaleHeap@@5) o_1 $allocated))
)))
(assert (forall ((p T@Field_8716_8717) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8716_8716 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8716_8716 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_7971_7972) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_7940_7940 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7940_7940 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_4611_7972) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_4611_4611 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4611_4611 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 T@Ref) (arg4@@1 T@Ref) (arg5@@1 Bool) ) (! (IsWandField_2581_1207 (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 T@Ref) (arg4@@2 T@Ref) (arg5@@2 Bool) ) (! (IsWandField_2594_2595 (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2))
)))
(assert  (not (IsPredicateField_2629_1565 f_7)))
(assert  (not (IsWandField_2629_1565 f_7)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4551) (ExhaleHeap@@6 T@PolymorphicMapType_4551) (Mask@@7 T@PolymorphicMapType_4572) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@8 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 T@Ref) (arg4@@3 T@Ref) (arg5@@3 Bool) ) (!  (not (IsPredicateField_2581_1207 (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@4 T@Ref) (arg4@@4 T@Ref) (arg5@@4 Bool) ) (!  (not (IsPredicateField_2594_2595 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_4572) (o_2@@14 T@Ref) (f_4@@14 T@Field_7954_7959) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_4572_2581_29121#PolymorphicMapType_4572| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2581_32562 f_4@@14))) (not (IsWandField_2581_32578 f_4@@14))) (<= (select (|PolymorphicMapType_4572_2581_29121#PolymorphicMapType_4572| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_4572_2581_29121#PolymorphicMapType_4572| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_4572) (o_2@@15 T@Ref) (f_4@@15 T@Field_7940_4625) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_4572_2581_4625#PolymorphicMapType_4572| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_2581_4625 f_4@@15))) (not (IsWandField_2581_4625 f_4@@15))) (<= (select (|PolymorphicMapType_4572_2581_4625#PolymorphicMapType_4572| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_4572_2581_4625#PolymorphicMapType_4572| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4572) (o_2@@16 T@Ref) (f_4@@16 T@Field_7940_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_4572_2581_53#PolymorphicMapType_4572| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_2581_53 f_4@@16))) (not (IsWandField_2581_53 f_4@@16))) (<= (select (|PolymorphicMapType_4572_2581_53#PolymorphicMapType_4572| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_4572_2581_53#PolymorphicMapType_4572| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4572) (o_2@@17 T@Ref) (f_4@@17 T@Field_7971_7972) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_4572_2581_2633#PolymorphicMapType_4572| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_2594_2595 f_4@@17))) (not (IsWandField_2594_2595 f_4@@17))) (<= (select (|PolymorphicMapType_4572_2581_2633#PolymorphicMapType_4572| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_4572_2581_2633#PolymorphicMapType_4572| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4572) (o_2@@18 T@Ref) (f_4@@18 T@Field_7940_1207) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_4572_2581_1207#PolymorphicMapType_4572| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_2581_1207 f_4@@18))) (not (IsWandField_2581_1207 f_4@@18))) (<= (select (|PolymorphicMapType_4572_2581_1207#PolymorphicMapType_4572| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_4572_2581_1207#PolymorphicMapType_4572| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4572) (o_2@@19 T@Ref) (f_4@@19 T@Field_8729_8734) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_4572_2632_28707#PolymorphicMapType_4572| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_2632_31745 f_4@@19))) (not (IsWandField_2632_31761 f_4@@19))) (<= (select (|PolymorphicMapType_4572_2632_28707#PolymorphicMapType_4572| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_4572_2632_28707#PolymorphicMapType_4572| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4572) (o_2@@20 T@Ref) (f_4@@20 T@Field_8716_4625) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_4572_2632_4625#PolymorphicMapType_4572| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_2632_4625 f_4@@20))) (not (IsWandField_2632_4625 f_4@@20))) (<= (select (|PolymorphicMapType_4572_2632_4625#PolymorphicMapType_4572| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_4572_2632_4625#PolymorphicMapType_4572| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_4572) (o_2@@21 T@Ref) (f_4@@21 T@Field_8716_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_4572_2632_53#PolymorphicMapType_4572| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_2632_53 f_4@@21))) (not (IsWandField_2632_53 f_4@@21))) (<= (select (|PolymorphicMapType_4572_2632_53#PolymorphicMapType_4572| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_4572_2632_53#PolymorphicMapType_4572| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_4572) (o_2@@22 T@Ref) (f_4@@22 T@Field_8716_8717) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_4572_2632_2633#PolymorphicMapType_4572| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_2632_2633 f_4@@22))) (not (IsWandField_8716_22255 f_4@@22))) (<= (select (|PolymorphicMapType_4572_2632_2633#PolymorphicMapType_4572| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_4572_2632_2633#PolymorphicMapType_4572| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_4572) (o_2@@23 T@Ref) (f_4@@23 T@Field_8716_1207) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_4572_2632_1565#PolymorphicMapType_4572| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_2632_1565 f_4@@23))) (not (IsWandField_2632_1565 f_4@@23))) (<= (select (|PolymorphicMapType_4572_2632_1565#PolymorphicMapType_4572| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_4572_2632_1565#PolymorphicMapType_4572| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_4572) (o_2@@24 T@Ref) (f_4@@24 T@Field_4611_7959) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_4572_2629_28296#PolymorphicMapType_4572| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_2629_30914 f_4@@24))) (not (IsWandField_2629_30930 f_4@@24))) (<= (select (|PolymorphicMapType_4572_2629_28296#PolymorphicMapType_4572| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_4572_2629_28296#PolymorphicMapType_4572| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_4572) (o_2@@25 T@Ref) (f_4@@25 T@Field_4624_4625) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_4572_2629_4625#PolymorphicMapType_4572| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_2629_4625 f_4@@25))) (not (IsWandField_2629_4625 f_4@@25))) (<= (select (|PolymorphicMapType_4572_2629_4625#PolymorphicMapType_4572| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_4572_2629_4625#PolymorphicMapType_4572| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_4572) (o_2@@26 T@Ref) (f_4@@26 T@Field_4611_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_4572_2629_53#PolymorphicMapType_4572| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_2629_53 f_4@@26))) (not (IsWandField_2629_53 f_4@@26))) (<= (select (|PolymorphicMapType_4572_2629_53#PolymorphicMapType_4572| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_4572_2629_53#PolymorphicMapType_4572| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_4572) (o_2@@27 T@Ref) (f_4@@27 T@Field_4611_7972) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_4572_2629_2633#PolymorphicMapType_4572| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_4611_16566 f_4@@27))) (not (IsWandField_4611_21573 f_4@@27))) (<= (select (|PolymorphicMapType_4572_2629_2633#PolymorphicMapType_4572| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_4572_2629_2633#PolymorphicMapType_4572| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_4572) (o_2@@28 T@Ref) (f_4@@28 T@Field_8669_1565) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_4572_2629_1565#PolymorphicMapType_4572| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_2629_1565 f_4@@28))) (not (IsWandField_2629_1565 f_4@@28))) (<= (select (|PolymorphicMapType_4572_2629_1565#PolymorphicMapType_4572| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_4572_2629_1565#PolymorphicMapType_4572| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_4572) (o_2@@29 T@Ref) (f_4@@29 T@Field_8716_8717) ) (! (= (HasDirectPerm_8716_7972 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_4572_2632_2633#PolymorphicMapType_4572| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8716_7972 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_4572) (o_2@@30 T@Ref) (f_4@@30 T@Field_8729_8734) ) (! (= (HasDirectPerm_8716_16110 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_4572_2632_28707#PolymorphicMapType_4572| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8716_16110 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_4572) (o_2@@31 T@Ref) (f_4@@31 T@Field_8716_1207) ) (! (= (HasDirectPerm_8716_1207 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_4572_2632_1565#PolymorphicMapType_4572| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8716_1207 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_4572) (o_2@@32 T@Ref) (f_4@@32 T@Field_8716_4625) ) (! (= (HasDirectPerm_8716_4625 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_4572_2632_4625#PolymorphicMapType_4572| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8716_4625 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_4572) (o_2@@33 T@Ref) (f_4@@33 T@Field_8716_53) ) (! (= (HasDirectPerm_8716_53 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_4572_2632_53#PolymorphicMapType_4572| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8716_53 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_4572) (o_2@@34 T@Ref) (f_4@@34 T@Field_7971_7972) ) (! (= (HasDirectPerm_7940_7972 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_4572_2581_2633#PolymorphicMapType_4572| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7940_7972 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_4572) (o_2@@35 T@Ref) (f_4@@35 T@Field_7954_7959) ) (! (= (HasDirectPerm_7940_14932 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_4572_2581_29121#PolymorphicMapType_4572| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7940_14932 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_4572) (o_2@@36 T@Ref) (f_4@@36 T@Field_7940_1207) ) (! (= (HasDirectPerm_7940_1207 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_4572_2581_1207#PolymorphicMapType_4572| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7940_1207 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_4572) (o_2@@37 T@Ref) (f_4@@37 T@Field_7940_4625) ) (! (= (HasDirectPerm_7940_4625 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_4572_2581_4625#PolymorphicMapType_4572| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7940_4625 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_4572) (o_2@@38 T@Ref) (f_4@@38 T@Field_7940_53) ) (! (= (HasDirectPerm_7940_53 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_4572_2581_53#PolymorphicMapType_4572| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7940_53 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_4572) (o_2@@39 T@Ref) (f_4@@39 T@Field_4611_7972) ) (! (= (HasDirectPerm_4611_7972 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_4572_2629_2633#PolymorphicMapType_4572| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4611_7972 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_4572) (o_2@@40 T@Ref) (f_4@@40 T@Field_4611_7959) ) (! (= (HasDirectPerm_4611_13754 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_4572_2629_28296#PolymorphicMapType_4572| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4611_13754 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_4572) (o_2@@41 T@Ref) (f_4@@41 T@Field_8669_1565) ) (! (= (HasDirectPerm_4611_1207 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_4572_2629_1565#PolymorphicMapType_4572| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4611_1207 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_4572) (o_2@@42 T@Ref) (f_4@@42 T@Field_4624_4625) ) (! (= (HasDirectPerm_4611_4625 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_4572_2629_4625#PolymorphicMapType_4572| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4611_4625 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_4572) (o_2@@43 T@Ref) (f_4@@43 T@Field_4611_53) ) (! (= (HasDirectPerm_4611_53 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_4572_2629_53#PolymorphicMapType_4572| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4611_53 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4551) (ExhaleHeap@@7 T@PolymorphicMapType_4551) (Mask@@38 T@PolymorphicMapType_4572) (o_1@@0 T@Ref) (f_2 T@Field_8716_8717) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_8716_7972 Mask@@38 o_1@@0 f_2) (= (select (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@9) o_1@@0 f_2) (select (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| ExhaleHeap@@7) o_1@@0 f_2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| ExhaleHeap@@7) o_1@@0 f_2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4551) (ExhaleHeap@@8 T@PolymorphicMapType_4551) (Mask@@39 T@PolymorphicMapType_4572) (o_1@@1 T@Ref) (f_2@@0 T@Field_8729_8734) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_8716_16110 Mask@@39 o_1@@1 f_2@@0) (= (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@10) o_1@@1 f_2@@0) (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| ExhaleHeap@@8) o_1@@1 f_2@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| ExhaleHeap@@8) o_1@@1 f_2@@0))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4551) (ExhaleHeap@@9 T@PolymorphicMapType_4551) (Mask@@40 T@PolymorphicMapType_4572) (o_1@@2 T@Ref) (f_2@@1 T@Field_8716_1207) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_8716_1207 Mask@@40 o_1@@2 f_2@@1) (= (select (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@11) o_1@@2 f_2@@1) (select (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| ExhaleHeap@@9) o_1@@2 f_2@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| ExhaleHeap@@9) o_1@@2 f_2@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4551) (ExhaleHeap@@10 T@PolymorphicMapType_4551) (Mask@@41 T@PolymorphicMapType_4572) (o_1@@3 T@Ref) (f_2@@2 T@Field_8716_4625) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_8716_4625 Mask@@41 o_1@@3 f_2@@2) (= (select (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@12) o_1@@3 f_2@@2) (select (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| ExhaleHeap@@10) o_1@@3 f_2@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| ExhaleHeap@@10) o_1@@3 f_2@@2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4551) (ExhaleHeap@@11 T@PolymorphicMapType_4551) (Mask@@42 T@PolymorphicMapType_4572) (o_1@@4 T@Ref) (f_2@@3 T@Field_8716_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_8716_53 Mask@@42 o_1@@4 f_2@@3) (= (select (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@13) o_1@@4 f_2@@3) (select (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| ExhaleHeap@@11) o_1@@4 f_2@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| ExhaleHeap@@11) o_1@@4 f_2@@3))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4551) (ExhaleHeap@@12 T@PolymorphicMapType_4551) (Mask@@43 T@PolymorphicMapType_4572) (o_1@@5 T@Ref) (f_2@@4 T@Field_7971_7972) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_7940_7972 Mask@@43 o_1@@5 f_2@@4) (= (select (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@14) o_1@@5 f_2@@4) (select (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| ExhaleHeap@@12) o_1@@5 f_2@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| ExhaleHeap@@12) o_1@@5 f_2@@4))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4551) (ExhaleHeap@@13 T@PolymorphicMapType_4551) (Mask@@44 T@PolymorphicMapType_4572) (o_1@@6 T@Ref) (f_2@@5 T@Field_7954_7959) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_7940_14932 Mask@@44 o_1@@6 f_2@@5) (= (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@15) o_1@@6 f_2@@5) (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| ExhaleHeap@@13) o_1@@6 f_2@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| ExhaleHeap@@13) o_1@@6 f_2@@5))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4551) (ExhaleHeap@@14 T@PolymorphicMapType_4551) (Mask@@45 T@PolymorphicMapType_4572) (o_1@@7 T@Ref) (f_2@@6 T@Field_7940_1207) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_7940_1207 Mask@@45 o_1@@7 f_2@@6) (= (select (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@16) o_1@@7 f_2@@6) (select (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| ExhaleHeap@@14) o_1@@7 f_2@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| ExhaleHeap@@14) o_1@@7 f_2@@6))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4551) (ExhaleHeap@@15 T@PolymorphicMapType_4551) (Mask@@46 T@PolymorphicMapType_4572) (o_1@@8 T@Ref) (f_2@@7 T@Field_7940_4625) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_7940_4625 Mask@@46 o_1@@8 f_2@@7) (= (select (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@17) o_1@@8 f_2@@7) (select (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| ExhaleHeap@@15) o_1@@8 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| ExhaleHeap@@15) o_1@@8 f_2@@7))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4551) (ExhaleHeap@@16 T@PolymorphicMapType_4551) (Mask@@47 T@PolymorphicMapType_4572) (o_1@@9 T@Ref) (f_2@@8 T@Field_7940_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_7940_53 Mask@@47 o_1@@9 f_2@@8) (= (select (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@18) o_1@@9 f_2@@8) (select (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| ExhaleHeap@@16) o_1@@9 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| ExhaleHeap@@16) o_1@@9 f_2@@8))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4551) (ExhaleHeap@@17 T@PolymorphicMapType_4551) (Mask@@48 T@PolymorphicMapType_4572) (o_1@@10 T@Ref) (f_2@@9 T@Field_4611_7972) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_4611_7972 Mask@@48 o_1@@10 f_2@@9) (= (select (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@19) o_1@@10 f_2@@9) (select (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| ExhaleHeap@@17) o_1@@10 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| ExhaleHeap@@17) o_1@@10 f_2@@9))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4551) (ExhaleHeap@@18 T@PolymorphicMapType_4551) (Mask@@49 T@PolymorphicMapType_4572) (o_1@@11 T@Ref) (f_2@@10 T@Field_4611_7959) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_4611_13754 Mask@@49 o_1@@11 f_2@@10) (= (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@20) o_1@@11 f_2@@10) (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| ExhaleHeap@@18) o_1@@11 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| ExhaleHeap@@18) o_1@@11 f_2@@10))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4551) (ExhaleHeap@@19 T@PolymorphicMapType_4551) (Mask@@50 T@PolymorphicMapType_4572) (o_1@@12 T@Ref) (f_2@@11 T@Field_8669_1565) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_4611_1207 Mask@@50 o_1@@12 f_2@@11) (= (select (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@21) o_1@@12 f_2@@11) (select (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| ExhaleHeap@@19) o_1@@12 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| ExhaleHeap@@19) o_1@@12 f_2@@11))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4551) (ExhaleHeap@@20 T@PolymorphicMapType_4551) (Mask@@51 T@PolymorphicMapType_4572) (o_1@@13 T@Ref) (f_2@@12 T@Field_4624_4625) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_4611_4625 Mask@@51 o_1@@13 f_2@@12) (= (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@22) o_1@@13 f_2@@12) (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| ExhaleHeap@@20) o_1@@13 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| ExhaleHeap@@20) o_1@@13 f_2@@12))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4551) (ExhaleHeap@@21 T@PolymorphicMapType_4551) (Mask@@52 T@PolymorphicMapType_4572) (o_1@@14 T@Ref) (f_2@@13 T@Field_4611_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_4611_53 Mask@@52 o_1@@14 f_2@@13) (= (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@23) o_1@@14 f_2@@13) (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| ExhaleHeap@@21) o_1@@14 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| ExhaleHeap@@21) o_1@@14 f_2@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_7954_7959) ) (! (= (select (|PolymorphicMapType_4572_2581_29121#PolymorphicMapType_4572| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4572_2581_29121#PolymorphicMapType_4572| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_7940_4625) ) (! (= (select (|PolymorphicMapType_4572_2581_4625#PolymorphicMapType_4572| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4572_2581_4625#PolymorphicMapType_4572| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_7940_53) ) (! (= (select (|PolymorphicMapType_4572_2581_53#PolymorphicMapType_4572| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4572_2581_53#PolymorphicMapType_4572| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_7971_7972) ) (! (= (select (|PolymorphicMapType_4572_2581_2633#PolymorphicMapType_4572| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4572_2581_2633#PolymorphicMapType_4572| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_7940_1207) ) (! (= (select (|PolymorphicMapType_4572_2581_1207#PolymorphicMapType_4572| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4572_2581_1207#PolymorphicMapType_4572| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_8729_8734) ) (! (= (select (|PolymorphicMapType_4572_2632_28707#PolymorphicMapType_4572| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4572_2632_28707#PolymorphicMapType_4572| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_8716_4625) ) (! (= (select (|PolymorphicMapType_4572_2632_4625#PolymorphicMapType_4572| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4572_2632_4625#PolymorphicMapType_4572| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_8716_53) ) (! (= (select (|PolymorphicMapType_4572_2632_53#PolymorphicMapType_4572| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4572_2632_53#PolymorphicMapType_4572| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_8716_8717) ) (! (= (select (|PolymorphicMapType_4572_2632_2633#PolymorphicMapType_4572| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4572_2632_2633#PolymorphicMapType_4572| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_8716_1207) ) (! (= (select (|PolymorphicMapType_4572_2632_1565#PolymorphicMapType_4572| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4572_2632_1565#PolymorphicMapType_4572| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_4611_7959) ) (! (= (select (|PolymorphicMapType_4572_2629_28296#PolymorphicMapType_4572| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4572_2629_28296#PolymorphicMapType_4572| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_4624_4625) ) (! (= (select (|PolymorphicMapType_4572_2629_4625#PolymorphicMapType_4572| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4572_2629_4625#PolymorphicMapType_4572| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_4611_53) ) (! (= (select (|PolymorphicMapType_4572_2629_53#PolymorphicMapType_4572| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4572_2629_53#PolymorphicMapType_4572| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_4611_7972) ) (! (= (select (|PolymorphicMapType_4572_2629_2633#PolymorphicMapType_4572| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4572_2629_2633#PolymorphicMapType_4572| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_8669_1565) ) (! (= (select (|PolymorphicMapType_4572_2629_1565#PolymorphicMapType_4572| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4572_2629_1565#PolymorphicMapType_4572| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4572) (SummandMask1 T@PolymorphicMapType_4572) (SummandMask2 T@PolymorphicMapType_4572) (o_2@@59 T@Ref) (f_4@@59 T@Field_7954_7959) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4572_2581_29121#PolymorphicMapType_4572| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_4572_2581_29121#PolymorphicMapType_4572| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_4572_2581_29121#PolymorphicMapType_4572| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4572_2581_29121#PolymorphicMapType_4572| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4572_2581_29121#PolymorphicMapType_4572| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4572_2581_29121#PolymorphicMapType_4572| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4572) (SummandMask1@@0 T@PolymorphicMapType_4572) (SummandMask2@@0 T@PolymorphicMapType_4572) (o_2@@60 T@Ref) (f_4@@60 T@Field_7940_4625) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4572_2581_4625#PolymorphicMapType_4572| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_4572_2581_4625#PolymorphicMapType_4572| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_4572_2581_4625#PolymorphicMapType_4572| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4572_2581_4625#PolymorphicMapType_4572| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4572_2581_4625#PolymorphicMapType_4572| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4572_2581_4625#PolymorphicMapType_4572| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4572) (SummandMask1@@1 T@PolymorphicMapType_4572) (SummandMask2@@1 T@PolymorphicMapType_4572) (o_2@@61 T@Ref) (f_4@@61 T@Field_7940_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4572_2581_53#PolymorphicMapType_4572| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_4572_2581_53#PolymorphicMapType_4572| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_4572_2581_53#PolymorphicMapType_4572| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4572_2581_53#PolymorphicMapType_4572| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4572_2581_53#PolymorphicMapType_4572| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4572_2581_53#PolymorphicMapType_4572| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4572) (SummandMask1@@2 T@PolymorphicMapType_4572) (SummandMask2@@2 T@PolymorphicMapType_4572) (o_2@@62 T@Ref) (f_4@@62 T@Field_7971_7972) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4572_2581_2633#PolymorphicMapType_4572| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_4572_2581_2633#PolymorphicMapType_4572| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_4572_2581_2633#PolymorphicMapType_4572| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4572_2581_2633#PolymorphicMapType_4572| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4572_2581_2633#PolymorphicMapType_4572| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4572_2581_2633#PolymorphicMapType_4572| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4572) (SummandMask1@@3 T@PolymorphicMapType_4572) (SummandMask2@@3 T@PolymorphicMapType_4572) (o_2@@63 T@Ref) (f_4@@63 T@Field_7940_1207) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4572_2581_1207#PolymorphicMapType_4572| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_4572_2581_1207#PolymorphicMapType_4572| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_4572_2581_1207#PolymorphicMapType_4572| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4572_2581_1207#PolymorphicMapType_4572| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4572_2581_1207#PolymorphicMapType_4572| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4572_2581_1207#PolymorphicMapType_4572| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_4572) (SummandMask1@@4 T@PolymorphicMapType_4572) (SummandMask2@@4 T@PolymorphicMapType_4572) (o_2@@64 T@Ref) (f_4@@64 T@Field_8729_8734) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_4572_2632_28707#PolymorphicMapType_4572| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_4572_2632_28707#PolymorphicMapType_4572| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_4572_2632_28707#PolymorphicMapType_4572| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4572_2632_28707#PolymorphicMapType_4572| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4572_2632_28707#PolymorphicMapType_4572| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4572_2632_28707#PolymorphicMapType_4572| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_4572) (SummandMask1@@5 T@PolymorphicMapType_4572) (SummandMask2@@5 T@PolymorphicMapType_4572) (o_2@@65 T@Ref) (f_4@@65 T@Field_8716_4625) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_4572_2632_4625#PolymorphicMapType_4572| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_4572_2632_4625#PolymorphicMapType_4572| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_4572_2632_4625#PolymorphicMapType_4572| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4572_2632_4625#PolymorphicMapType_4572| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4572_2632_4625#PolymorphicMapType_4572| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4572_2632_4625#PolymorphicMapType_4572| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_4572) (SummandMask1@@6 T@PolymorphicMapType_4572) (SummandMask2@@6 T@PolymorphicMapType_4572) (o_2@@66 T@Ref) (f_4@@66 T@Field_8716_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_4572_2632_53#PolymorphicMapType_4572| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_4572_2632_53#PolymorphicMapType_4572| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_4572_2632_53#PolymorphicMapType_4572| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4572_2632_53#PolymorphicMapType_4572| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4572_2632_53#PolymorphicMapType_4572| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4572_2632_53#PolymorphicMapType_4572| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_4572) (SummandMask1@@7 T@PolymorphicMapType_4572) (SummandMask2@@7 T@PolymorphicMapType_4572) (o_2@@67 T@Ref) (f_4@@67 T@Field_8716_8717) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_4572_2632_2633#PolymorphicMapType_4572| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_4572_2632_2633#PolymorphicMapType_4572| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_4572_2632_2633#PolymorphicMapType_4572| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4572_2632_2633#PolymorphicMapType_4572| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4572_2632_2633#PolymorphicMapType_4572| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4572_2632_2633#PolymorphicMapType_4572| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_4572) (SummandMask1@@8 T@PolymorphicMapType_4572) (SummandMask2@@8 T@PolymorphicMapType_4572) (o_2@@68 T@Ref) (f_4@@68 T@Field_8716_1207) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_4572_2632_1565#PolymorphicMapType_4572| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_4572_2632_1565#PolymorphicMapType_4572| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_4572_2632_1565#PolymorphicMapType_4572| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4572_2632_1565#PolymorphicMapType_4572| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4572_2632_1565#PolymorphicMapType_4572| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4572_2632_1565#PolymorphicMapType_4572| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_4572) (SummandMask1@@9 T@PolymorphicMapType_4572) (SummandMask2@@9 T@PolymorphicMapType_4572) (o_2@@69 T@Ref) (f_4@@69 T@Field_4611_7959) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_4572_2629_28296#PolymorphicMapType_4572| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_4572_2629_28296#PolymorphicMapType_4572| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_4572_2629_28296#PolymorphicMapType_4572| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_4572_2629_28296#PolymorphicMapType_4572| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_4572_2629_28296#PolymorphicMapType_4572| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_4572_2629_28296#PolymorphicMapType_4572| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_4572) (SummandMask1@@10 T@PolymorphicMapType_4572) (SummandMask2@@10 T@PolymorphicMapType_4572) (o_2@@70 T@Ref) (f_4@@70 T@Field_4624_4625) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_4572_2629_4625#PolymorphicMapType_4572| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_4572_2629_4625#PolymorphicMapType_4572| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_4572_2629_4625#PolymorphicMapType_4572| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_4572_2629_4625#PolymorphicMapType_4572| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_4572_2629_4625#PolymorphicMapType_4572| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_4572_2629_4625#PolymorphicMapType_4572| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_4572) (SummandMask1@@11 T@PolymorphicMapType_4572) (SummandMask2@@11 T@PolymorphicMapType_4572) (o_2@@71 T@Ref) (f_4@@71 T@Field_4611_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_4572_2629_53#PolymorphicMapType_4572| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_4572_2629_53#PolymorphicMapType_4572| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_4572_2629_53#PolymorphicMapType_4572| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_4572_2629_53#PolymorphicMapType_4572| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_4572_2629_53#PolymorphicMapType_4572| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_4572_2629_53#PolymorphicMapType_4572| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_4572) (SummandMask1@@12 T@PolymorphicMapType_4572) (SummandMask2@@12 T@PolymorphicMapType_4572) (o_2@@72 T@Ref) (f_4@@72 T@Field_4611_7972) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_4572_2629_2633#PolymorphicMapType_4572| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_4572_2629_2633#PolymorphicMapType_4572| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_4572_2629_2633#PolymorphicMapType_4572| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_4572_2629_2633#PolymorphicMapType_4572| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_4572_2629_2633#PolymorphicMapType_4572| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_4572_2629_2633#PolymorphicMapType_4572| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_4572) (SummandMask1@@13 T@PolymorphicMapType_4572) (SummandMask2@@13 T@PolymorphicMapType_4572) (o_2@@73 T@Ref) (f_4@@73 T@Field_8669_1565) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_4572_2629_1565#PolymorphicMapType_4572| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_4572_2629_1565#PolymorphicMapType_4572| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_4572_2629_1565#PolymorphicMapType_4572| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_4572_2629_1565#PolymorphicMapType_4572| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_4572_2629_1565#PolymorphicMapType_4572| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_4572_2629_1565#PolymorphicMapType_4572| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4551) (ExhaleHeap@@22 T@PolymorphicMapType_4551) (Mask@@53 T@PolymorphicMapType_4572) (pm_f@@5 T@Field_8716_8717) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_8716_7972 Mask@@53 null pm_f@@5) (IsPredicateField_2632_2633 pm_f@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2@@14 T@Field_8669_1565) ) (!  (=> (select (|PolymorphicMapType_5100_2629_1565#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@24) null (PredicateMaskField_2632 pm_f@@5))) o2 f_2@@14) (= (select (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@24) o2 f_2@@14) (select (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| ExhaleHeap@@22) o2 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| ExhaleHeap@@22) o2 f_2@@14))
)) (forall ((o2@@0 T@Ref) (f_2@@15 T@Field_4611_53) ) (!  (=> (select (|PolymorphicMapType_5100_2629_53#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@24) null (PredicateMaskField_2632 pm_f@@5))) o2@@0 f_2@@15) (= (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@24) o2@@0 f_2@@15) (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@0 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@0 f_2@@15))
))) (forall ((o2@@1 T@Ref) (f_2@@16 T@Field_4624_4625) ) (!  (=> (select (|PolymorphicMapType_5100_2629_4625#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@24) null (PredicateMaskField_2632 pm_f@@5))) o2@@1 f_2@@16) (= (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@24) o2@@1 f_2@@16) (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@1 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@1 f_2@@16))
))) (forall ((o2@@2 T@Ref) (f_2@@17 T@Field_4611_7959) ) (!  (=> (select (|PolymorphicMapType_5100_2629_18184#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@24) null (PredicateMaskField_2632 pm_f@@5))) o2@@2 f_2@@17) (= (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@24) o2@@2 f_2@@17) (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@2 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@2 f_2@@17))
))) (forall ((o2@@3 T@Ref) (f_2@@18 T@Field_4611_7972) ) (!  (=> (select (|PolymorphicMapType_5100_2629_7972#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@24) null (PredicateMaskField_2632 pm_f@@5))) o2@@3 f_2@@18) (= (select (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@24) o2@@3 f_2@@18) (select (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@3 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@3 f_2@@18))
))) (forall ((o2@@4 T@Ref) (f_2@@19 T@Field_7940_1207) ) (!  (=> (select (|PolymorphicMapType_5100_7940_1565#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@24) null (PredicateMaskField_2632 pm_f@@5))) o2@@4 f_2@@19) (= (select (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@24) o2@@4 f_2@@19) (select (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@4 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@4 f_2@@19))
))) (forall ((o2@@5 T@Ref) (f_2@@20 T@Field_7940_53) ) (!  (=> (select (|PolymorphicMapType_5100_7940_53#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@24) null (PredicateMaskField_2632 pm_f@@5))) o2@@5 f_2@@20) (= (select (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@24) o2@@5 f_2@@20) (select (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@5 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@5 f_2@@20))
))) (forall ((o2@@6 T@Ref) (f_2@@21 T@Field_7940_4625) ) (!  (=> (select (|PolymorphicMapType_5100_7940_4625#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@24) null (PredicateMaskField_2632 pm_f@@5))) o2@@6 f_2@@21) (= (select (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@24) o2@@6 f_2@@21) (select (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@6 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@6 f_2@@21))
))) (forall ((o2@@7 T@Ref) (f_2@@22 T@Field_7954_7959) ) (!  (=> (select (|PolymorphicMapType_5100_7940_19232#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@24) null (PredicateMaskField_2632 pm_f@@5))) o2@@7 f_2@@22) (= (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@24) o2@@7 f_2@@22) (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@7 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@7 f_2@@22))
))) (forall ((o2@@8 T@Ref) (f_2@@23 T@Field_7971_7972) ) (!  (=> (select (|PolymorphicMapType_5100_7940_7972#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@24) null (PredicateMaskField_2632 pm_f@@5))) o2@@8 f_2@@23) (= (select (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@24) o2@@8 f_2@@23) (select (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@8 f_2@@23)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@8 f_2@@23))
))) (forall ((o2@@9 T@Ref) (f_2@@24 T@Field_8716_1207) ) (!  (=> (select (|PolymorphicMapType_5100_8716_1565#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@24) null (PredicateMaskField_2632 pm_f@@5))) o2@@9 f_2@@24) (= (select (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@24) o2@@9 f_2@@24) (select (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@9 f_2@@24)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@9 f_2@@24))
))) (forall ((o2@@10 T@Ref) (f_2@@25 T@Field_8716_53) ) (!  (=> (select (|PolymorphicMapType_5100_8716_53#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@24) null (PredicateMaskField_2632 pm_f@@5))) o2@@10 f_2@@25) (= (select (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@24) o2@@10 f_2@@25) (select (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@10 f_2@@25)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@10 f_2@@25))
))) (forall ((o2@@11 T@Ref) (f_2@@26 T@Field_8716_4625) ) (!  (=> (select (|PolymorphicMapType_5100_8716_4625#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@24) null (PredicateMaskField_2632 pm_f@@5))) o2@@11 f_2@@26) (= (select (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@24) o2@@11 f_2@@26) (select (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@11 f_2@@26)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@11 f_2@@26))
))) (forall ((o2@@12 T@Ref) (f_2@@27 T@Field_8729_8734) ) (!  (=> (select (|PolymorphicMapType_5100_8716_20280#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@24) null (PredicateMaskField_2632 pm_f@@5))) o2@@12 f_2@@27) (= (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@24) o2@@12 f_2@@27) (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@12 f_2@@27)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@12 f_2@@27))
))) (forall ((o2@@13 T@Ref) (f_2@@28 T@Field_8716_8717) ) (!  (=> (select (|PolymorphicMapType_5100_8716_7972#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@24) null (PredicateMaskField_2632 pm_f@@5))) o2@@13 f_2@@28) (= (select (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@24) o2@@13 f_2@@28) (select (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@13 f_2@@28)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| ExhaleHeap@@22) o2@@13 f_2@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@53) (IsPredicateField_2632_2633 pm_f@@5))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_4551) (ExhaleHeap@@23 T@PolymorphicMapType_4551) (Mask@@54 T@PolymorphicMapType_4572) (pm_f@@6 T@Field_7971_7972) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_7940_7972 Mask@@54 null pm_f@@6) (IsPredicateField_2594_2595 pm_f@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@14 T@Ref) (f_2@@29 T@Field_8669_1565) ) (!  (=> (select (|PolymorphicMapType_5100_2629_1565#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@25) null (PredicateMaskField_7940 pm_f@@6))) o2@@14 f_2@@29) (= (select (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@25) o2@@14 f_2@@29) (select (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@14 f_2@@29)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@14 f_2@@29))
)) (forall ((o2@@15 T@Ref) (f_2@@30 T@Field_4611_53) ) (!  (=> (select (|PolymorphicMapType_5100_2629_53#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@25) null (PredicateMaskField_7940 pm_f@@6))) o2@@15 f_2@@30) (= (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@25) o2@@15 f_2@@30) (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@15 f_2@@30)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@15 f_2@@30))
))) (forall ((o2@@16 T@Ref) (f_2@@31 T@Field_4624_4625) ) (!  (=> (select (|PolymorphicMapType_5100_2629_4625#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@25) null (PredicateMaskField_7940 pm_f@@6))) o2@@16 f_2@@31) (= (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@25) o2@@16 f_2@@31) (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@16 f_2@@31)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@16 f_2@@31))
))) (forall ((o2@@17 T@Ref) (f_2@@32 T@Field_4611_7959) ) (!  (=> (select (|PolymorphicMapType_5100_2629_18184#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@25) null (PredicateMaskField_7940 pm_f@@6))) o2@@17 f_2@@32) (= (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@25) o2@@17 f_2@@32) (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@17 f_2@@32)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@17 f_2@@32))
))) (forall ((o2@@18 T@Ref) (f_2@@33 T@Field_4611_7972) ) (!  (=> (select (|PolymorphicMapType_5100_2629_7972#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@25) null (PredicateMaskField_7940 pm_f@@6))) o2@@18 f_2@@33) (= (select (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@25) o2@@18 f_2@@33) (select (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@18 f_2@@33)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@18 f_2@@33))
))) (forall ((o2@@19 T@Ref) (f_2@@34 T@Field_7940_1207) ) (!  (=> (select (|PolymorphicMapType_5100_7940_1565#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@25) null (PredicateMaskField_7940 pm_f@@6))) o2@@19 f_2@@34) (= (select (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@25) o2@@19 f_2@@34) (select (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@19 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@19 f_2@@34))
))) (forall ((o2@@20 T@Ref) (f_2@@35 T@Field_7940_53) ) (!  (=> (select (|PolymorphicMapType_5100_7940_53#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@25) null (PredicateMaskField_7940 pm_f@@6))) o2@@20 f_2@@35) (= (select (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@25) o2@@20 f_2@@35) (select (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@20 f_2@@35)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@20 f_2@@35))
))) (forall ((o2@@21 T@Ref) (f_2@@36 T@Field_7940_4625) ) (!  (=> (select (|PolymorphicMapType_5100_7940_4625#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@25) null (PredicateMaskField_7940 pm_f@@6))) o2@@21 f_2@@36) (= (select (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@25) o2@@21 f_2@@36) (select (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@21 f_2@@36)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@21 f_2@@36))
))) (forall ((o2@@22 T@Ref) (f_2@@37 T@Field_7954_7959) ) (!  (=> (select (|PolymorphicMapType_5100_7940_19232#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@25) null (PredicateMaskField_7940 pm_f@@6))) o2@@22 f_2@@37) (= (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@25) o2@@22 f_2@@37) (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@22 f_2@@37)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@22 f_2@@37))
))) (forall ((o2@@23 T@Ref) (f_2@@38 T@Field_7971_7972) ) (!  (=> (select (|PolymorphicMapType_5100_7940_7972#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@25) null (PredicateMaskField_7940 pm_f@@6))) o2@@23 f_2@@38) (= (select (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@25) o2@@23 f_2@@38) (select (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@23 f_2@@38)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@23 f_2@@38))
))) (forall ((o2@@24 T@Ref) (f_2@@39 T@Field_8716_1207) ) (!  (=> (select (|PolymorphicMapType_5100_8716_1565#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@25) null (PredicateMaskField_7940 pm_f@@6))) o2@@24 f_2@@39) (= (select (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@25) o2@@24 f_2@@39) (select (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@24 f_2@@39)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@24 f_2@@39))
))) (forall ((o2@@25 T@Ref) (f_2@@40 T@Field_8716_53) ) (!  (=> (select (|PolymorphicMapType_5100_8716_53#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@25) null (PredicateMaskField_7940 pm_f@@6))) o2@@25 f_2@@40) (= (select (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@25) o2@@25 f_2@@40) (select (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@25 f_2@@40)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@25 f_2@@40))
))) (forall ((o2@@26 T@Ref) (f_2@@41 T@Field_8716_4625) ) (!  (=> (select (|PolymorphicMapType_5100_8716_4625#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@25) null (PredicateMaskField_7940 pm_f@@6))) o2@@26 f_2@@41) (= (select (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@25) o2@@26 f_2@@41) (select (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@26 f_2@@41)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@26 f_2@@41))
))) (forall ((o2@@27 T@Ref) (f_2@@42 T@Field_8729_8734) ) (!  (=> (select (|PolymorphicMapType_5100_8716_20280#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@25) null (PredicateMaskField_7940 pm_f@@6))) o2@@27 f_2@@42) (= (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@25) o2@@27 f_2@@42) (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@27 f_2@@42)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@27 f_2@@42))
))) (forall ((o2@@28 T@Ref) (f_2@@43 T@Field_8716_8717) ) (!  (=> (select (|PolymorphicMapType_5100_8716_7972#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@25) null (PredicateMaskField_7940 pm_f@@6))) o2@@28 f_2@@43) (= (select (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@25) o2@@28 f_2@@43) (select (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@28 f_2@@43)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| ExhaleHeap@@23) o2@@28 f_2@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@54) (IsPredicateField_2594_2595 pm_f@@6))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_4551) (ExhaleHeap@@24 T@PolymorphicMapType_4551) (Mask@@55 T@PolymorphicMapType_4572) (pm_f@@7 T@Field_4611_7972) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_4611_7972 Mask@@55 null pm_f@@7) (IsPredicateField_4611_16566 pm_f@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@44 T@Field_8669_1565) ) (!  (=> (select (|PolymorphicMapType_5100_2629_1565#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@26) null (PredicateMaskField_4611 pm_f@@7))) o2@@29 f_2@@44) (= (select (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@26) o2@@29 f_2@@44) (select (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@29 f_2@@44)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@29 f_2@@44))
)) (forall ((o2@@30 T@Ref) (f_2@@45 T@Field_4611_53) ) (!  (=> (select (|PolymorphicMapType_5100_2629_53#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@26) null (PredicateMaskField_4611 pm_f@@7))) o2@@30 f_2@@45) (= (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@26) o2@@30 f_2@@45) (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@30 f_2@@45)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@30 f_2@@45))
))) (forall ((o2@@31 T@Ref) (f_2@@46 T@Field_4624_4625) ) (!  (=> (select (|PolymorphicMapType_5100_2629_4625#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@26) null (PredicateMaskField_4611 pm_f@@7))) o2@@31 f_2@@46) (= (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@26) o2@@31 f_2@@46) (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@31 f_2@@46)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@31 f_2@@46))
))) (forall ((o2@@32 T@Ref) (f_2@@47 T@Field_4611_7959) ) (!  (=> (select (|PolymorphicMapType_5100_2629_18184#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@26) null (PredicateMaskField_4611 pm_f@@7))) o2@@32 f_2@@47) (= (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@26) o2@@32 f_2@@47) (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@32 f_2@@47)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@32 f_2@@47))
))) (forall ((o2@@33 T@Ref) (f_2@@48 T@Field_4611_7972) ) (!  (=> (select (|PolymorphicMapType_5100_2629_7972#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@26) null (PredicateMaskField_4611 pm_f@@7))) o2@@33 f_2@@48) (= (select (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@26) o2@@33 f_2@@48) (select (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@33 f_2@@48)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@33 f_2@@48))
))) (forall ((o2@@34 T@Ref) (f_2@@49 T@Field_7940_1207) ) (!  (=> (select (|PolymorphicMapType_5100_7940_1565#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@26) null (PredicateMaskField_4611 pm_f@@7))) o2@@34 f_2@@49) (= (select (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@26) o2@@34 f_2@@49) (select (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@34 f_2@@49)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@34 f_2@@49))
))) (forall ((o2@@35 T@Ref) (f_2@@50 T@Field_7940_53) ) (!  (=> (select (|PolymorphicMapType_5100_7940_53#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@26) null (PredicateMaskField_4611 pm_f@@7))) o2@@35 f_2@@50) (= (select (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@26) o2@@35 f_2@@50) (select (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@35 f_2@@50)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@35 f_2@@50))
))) (forall ((o2@@36 T@Ref) (f_2@@51 T@Field_7940_4625) ) (!  (=> (select (|PolymorphicMapType_5100_7940_4625#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@26) null (PredicateMaskField_4611 pm_f@@7))) o2@@36 f_2@@51) (= (select (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@26) o2@@36 f_2@@51) (select (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@36 f_2@@51)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@36 f_2@@51))
))) (forall ((o2@@37 T@Ref) (f_2@@52 T@Field_7954_7959) ) (!  (=> (select (|PolymorphicMapType_5100_7940_19232#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@26) null (PredicateMaskField_4611 pm_f@@7))) o2@@37 f_2@@52) (= (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@26) o2@@37 f_2@@52) (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@37 f_2@@52)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@37 f_2@@52))
))) (forall ((o2@@38 T@Ref) (f_2@@53 T@Field_7971_7972) ) (!  (=> (select (|PolymorphicMapType_5100_7940_7972#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@26) null (PredicateMaskField_4611 pm_f@@7))) o2@@38 f_2@@53) (= (select (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@26) o2@@38 f_2@@53) (select (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@38 f_2@@53)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@38 f_2@@53))
))) (forall ((o2@@39 T@Ref) (f_2@@54 T@Field_8716_1207) ) (!  (=> (select (|PolymorphicMapType_5100_8716_1565#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@26) null (PredicateMaskField_4611 pm_f@@7))) o2@@39 f_2@@54) (= (select (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@26) o2@@39 f_2@@54) (select (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@39 f_2@@54)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@39 f_2@@54))
))) (forall ((o2@@40 T@Ref) (f_2@@55 T@Field_8716_53) ) (!  (=> (select (|PolymorphicMapType_5100_8716_53#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@26) null (PredicateMaskField_4611 pm_f@@7))) o2@@40 f_2@@55) (= (select (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@26) o2@@40 f_2@@55) (select (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@40 f_2@@55)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@40 f_2@@55))
))) (forall ((o2@@41 T@Ref) (f_2@@56 T@Field_8716_4625) ) (!  (=> (select (|PolymorphicMapType_5100_8716_4625#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@26) null (PredicateMaskField_4611 pm_f@@7))) o2@@41 f_2@@56) (= (select (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@26) o2@@41 f_2@@56) (select (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@41 f_2@@56)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@41 f_2@@56))
))) (forall ((o2@@42 T@Ref) (f_2@@57 T@Field_8729_8734) ) (!  (=> (select (|PolymorphicMapType_5100_8716_20280#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@26) null (PredicateMaskField_4611 pm_f@@7))) o2@@42 f_2@@57) (= (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@26) o2@@42 f_2@@57) (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@42 f_2@@57)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@42 f_2@@57))
))) (forall ((o2@@43 T@Ref) (f_2@@58 T@Field_8716_8717) ) (!  (=> (select (|PolymorphicMapType_5100_8716_7972#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@26) null (PredicateMaskField_4611 pm_f@@7))) o2@@43 f_2@@58) (= (select (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@26) o2@@43 f_2@@58) (select (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@43 f_2@@58)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| ExhaleHeap@@24) o2@@43 f_2@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@55) (IsPredicateField_4611_16566 pm_f@@7))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_4551) (ExhaleHeap@@25 T@PolymorphicMapType_4551) (Mask@@56 T@PolymorphicMapType_4572) (pm_f@@8 T@Field_8716_8717) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_8716_7972 Mask@@56 null pm_f@@8) (IsWandField_8716_22255 pm_f@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@44 T@Ref) (f_2@@59 T@Field_8669_1565) ) (!  (=> (select (|PolymorphicMapType_5100_2629_1565#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@27) null (WandMaskField_8716 pm_f@@8))) o2@@44 f_2@@59) (= (select (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@27) o2@@44 f_2@@59) (select (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@44 f_2@@59)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@44 f_2@@59))
)) (forall ((o2@@45 T@Ref) (f_2@@60 T@Field_4611_53) ) (!  (=> (select (|PolymorphicMapType_5100_2629_53#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@27) null (WandMaskField_8716 pm_f@@8))) o2@@45 f_2@@60) (= (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@27) o2@@45 f_2@@60) (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@45 f_2@@60)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@45 f_2@@60))
))) (forall ((o2@@46 T@Ref) (f_2@@61 T@Field_4624_4625) ) (!  (=> (select (|PolymorphicMapType_5100_2629_4625#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@27) null (WandMaskField_8716 pm_f@@8))) o2@@46 f_2@@61) (= (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@27) o2@@46 f_2@@61) (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@46 f_2@@61)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@46 f_2@@61))
))) (forall ((o2@@47 T@Ref) (f_2@@62 T@Field_4611_7959) ) (!  (=> (select (|PolymorphicMapType_5100_2629_18184#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@27) null (WandMaskField_8716 pm_f@@8))) o2@@47 f_2@@62) (= (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@27) o2@@47 f_2@@62) (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@47 f_2@@62)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@47 f_2@@62))
))) (forall ((o2@@48 T@Ref) (f_2@@63 T@Field_4611_7972) ) (!  (=> (select (|PolymorphicMapType_5100_2629_7972#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@27) null (WandMaskField_8716 pm_f@@8))) o2@@48 f_2@@63) (= (select (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@27) o2@@48 f_2@@63) (select (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@48 f_2@@63)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@48 f_2@@63))
))) (forall ((o2@@49 T@Ref) (f_2@@64 T@Field_7940_1207) ) (!  (=> (select (|PolymorphicMapType_5100_7940_1565#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@27) null (WandMaskField_8716 pm_f@@8))) o2@@49 f_2@@64) (= (select (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@27) o2@@49 f_2@@64) (select (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@49 f_2@@64)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@49 f_2@@64))
))) (forall ((o2@@50 T@Ref) (f_2@@65 T@Field_7940_53) ) (!  (=> (select (|PolymorphicMapType_5100_7940_53#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@27) null (WandMaskField_8716 pm_f@@8))) o2@@50 f_2@@65) (= (select (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@27) o2@@50 f_2@@65) (select (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@50 f_2@@65)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@50 f_2@@65))
))) (forall ((o2@@51 T@Ref) (f_2@@66 T@Field_7940_4625) ) (!  (=> (select (|PolymorphicMapType_5100_7940_4625#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@27) null (WandMaskField_8716 pm_f@@8))) o2@@51 f_2@@66) (= (select (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@27) o2@@51 f_2@@66) (select (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@51 f_2@@66)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@51 f_2@@66))
))) (forall ((o2@@52 T@Ref) (f_2@@67 T@Field_7954_7959) ) (!  (=> (select (|PolymorphicMapType_5100_7940_19232#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@27) null (WandMaskField_8716 pm_f@@8))) o2@@52 f_2@@67) (= (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@27) o2@@52 f_2@@67) (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@52 f_2@@67)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@52 f_2@@67))
))) (forall ((o2@@53 T@Ref) (f_2@@68 T@Field_7971_7972) ) (!  (=> (select (|PolymorphicMapType_5100_7940_7972#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@27) null (WandMaskField_8716 pm_f@@8))) o2@@53 f_2@@68) (= (select (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@27) o2@@53 f_2@@68) (select (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@53 f_2@@68)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@53 f_2@@68))
))) (forall ((o2@@54 T@Ref) (f_2@@69 T@Field_8716_1207) ) (!  (=> (select (|PolymorphicMapType_5100_8716_1565#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@27) null (WandMaskField_8716 pm_f@@8))) o2@@54 f_2@@69) (= (select (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@27) o2@@54 f_2@@69) (select (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@54 f_2@@69)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@54 f_2@@69))
))) (forall ((o2@@55 T@Ref) (f_2@@70 T@Field_8716_53) ) (!  (=> (select (|PolymorphicMapType_5100_8716_53#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@27) null (WandMaskField_8716 pm_f@@8))) o2@@55 f_2@@70) (= (select (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@27) o2@@55 f_2@@70) (select (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@55 f_2@@70)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@55 f_2@@70))
))) (forall ((o2@@56 T@Ref) (f_2@@71 T@Field_8716_4625) ) (!  (=> (select (|PolymorphicMapType_5100_8716_4625#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@27) null (WandMaskField_8716 pm_f@@8))) o2@@56 f_2@@71) (= (select (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@27) o2@@56 f_2@@71) (select (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@56 f_2@@71)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@56 f_2@@71))
))) (forall ((o2@@57 T@Ref) (f_2@@72 T@Field_8729_8734) ) (!  (=> (select (|PolymorphicMapType_5100_8716_20280#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@27) null (WandMaskField_8716 pm_f@@8))) o2@@57 f_2@@72) (= (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@27) o2@@57 f_2@@72) (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@57 f_2@@72)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@57 f_2@@72))
))) (forall ((o2@@58 T@Ref) (f_2@@73 T@Field_8716_8717) ) (!  (=> (select (|PolymorphicMapType_5100_8716_7972#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@27) null (WandMaskField_8716 pm_f@@8))) o2@@58 f_2@@73) (= (select (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@27) o2@@58 f_2@@73) (select (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@58 f_2@@73)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| ExhaleHeap@@25) o2@@58 f_2@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@56) (IsWandField_8716_22255 pm_f@@8))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_4551) (ExhaleHeap@@26 T@PolymorphicMapType_4551) (Mask@@57 T@PolymorphicMapType_4572) (pm_f@@9 T@Field_7971_7972) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_7940_7972 Mask@@57 null pm_f@@9) (IsWandField_2594_2595 pm_f@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@59 T@Ref) (f_2@@74 T@Field_8669_1565) ) (!  (=> (select (|PolymorphicMapType_5100_2629_1565#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@28) null (WandMaskField_2594 pm_f@@9))) o2@@59 f_2@@74) (= (select (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@28) o2@@59 f_2@@74) (select (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@59 f_2@@74)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@59 f_2@@74))
)) (forall ((o2@@60 T@Ref) (f_2@@75 T@Field_4611_53) ) (!  (=> (select (|PolymorphicMapType_5100_2629_53#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@28) null (WandMaskField_2594 pm_f@@9))) o2@@60 f_2@@75) (= (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@28) o2@@60 f_2@@75) (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@60 f_2@@75)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@60 f_2@@75))
))) (forall ((o2@@61 T@Ref) (f_2@@76 T@Field_4624_4625) ) (!  (=> (select (|PolymorphicMapType_5100_2629_4625#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@28) null (WandMaskField_2594 pm_f@@9))) o2@@61 f_2@@76) (= (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@28) o2@@61 f_2@@76) (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@61 f_2@@76)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@61 f_2@@76))
))) (forall ((o2@@62 T@Ref) (f_2@@77 T@Field_4611_7959) ) (!  (=> (select (|PolymorphicMapType_5100_2629_18184#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@28) null (WandMaskField_2594 pm_f@@9))) o2@@62 f_2@@77) (= (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@28) o2@@62 f_2@@77) (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@62 f_2@@77)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@62 f_2@@77))
))) (forall ((o2@@63 T@Ref) (f_2@@78 T@Field_4611_7972) ) (!  (=> (select (|PolymorphicMapType_5100_2629_7972#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@28) null (WandMaskField_2594 pm_f@@9))) o2@@63 f_2@@78) (= (select (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@28) o2@@63 f_2@@78) (select (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@63 f_2@@78)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@63 f_2@@78))
))) (forall ((o2@@64 T@Ref) (f_2@@79 T@Field_7940_1207) ) (!  (=> (select (|PolymorphicMapType_5100_7940_1565#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@28) null (WandMaskField_2594 pm_f@@9))) o2@@64 f_2@@79) (= (select (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@28) o2@@64 f_2@@79) (select (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@64 f_2@@79)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@64 f_2@@79))
))) (forall ((o2@@65 T@Ref) (f_2@@80 T@Field_7940_53) ) (!  (=> (select (|PolymorphicMapType_5100_7940_53#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@28) null (WandMaskField_2594 pm_f@@9))) o2@@65 f_2@@80) (= (select (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@28) o2@@65 f_2@@80) (select (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@65 f_2@@80)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@65 f_2@@80))
))) (forall ((o2@@66 T@Ref) (f_2@@81 T@Field_7940_4625) ) (!  (=> (select (|PolymorphicMapType_5100_7940_4625#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@28) null (WandMaskField_2594 pm_f@@9))) o2@@66 f_2@@81) (= (select (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@28) o2@@66 f_2@@81) (select (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@66 f_2@@81)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@66 f_2@@81))
))) (forall ((o2@@67 T@Ref) (f_2@@82 T@Field_7954_7959) ) (!  (=> (select (|PolymorphicMapType_5100_7940_19232#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@28) null (WandMaskField_2594 pm_f@@9))) o2@@67 f_2@@82) (= (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@28) o2@@67 f_2@@82) (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@67 f_2@@82)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@67 f_2@@82))
))) (forall ((o2@@68 T@Ref) (f_2@@83 T@Field_7971_7972) ) (!  (=> (select (|PolymorphicMapType_5100_7940_7972#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@28) null (WandMaskField_2594 pm_f@@9))) o2@@68 f_2@@83) (= (select (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@28) o2@@68 f_2@@83) (select (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@68 f_2@@83)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@68 f_2@@83))
))) (forall ((o2@@69 T@Ref) (f_2@@84 T@Field_8716_1207) ) (!  (=> (select (|PolymorphicMapType_5100_8716_1565#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@28) null (WandMaskField_2594 pm_f@@9))) o2@@69 f_2@@84) (= (select (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@28) o2@@69 f_2@@84) (select (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@69 f_2@@84)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@69 f_2@@84))
))) (forall ((o2@@70 T@Ref) (f_2@@85 T@Field_8716_53) ) (!  (=> (select (|PolymorphicMapType_5100_8716_53#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@28) null (WandMaskField_2594 pm_f@@9))) o2@@70 f_2@@85) (= (select (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@28) o2@@70 f_2@@85) (select (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@70 f_2@@85)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@70 f_2@@85))
))) (forall ((o2@@71 T@Ref) (f_2@@86 T@Field_8716_4625) ) (!  (=> (select (|PolymorphicMapType_5100_8716_4625#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@28) null (WandMaskField_2594 pm_f@@9))) o2@@71 f_2@@86) (= (select (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@28) o2@@71 f_2@@86) (select (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@71 f_2@@86)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@71 f_2@@86))
))) (forall ((o2@@72 T@Ref) (f_2@@87 T@Field_8729_8734) ) (!  (=> (select (|PolymorphicMapType_5100_8716_20280#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@28) null (WandMaskField_2594 pm_f@@9))) o2@@72 f_2@@87) (= (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@28) o2@@72 f_2@@87) (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@72 f_2@@87)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@72 f_2@@87))
))) (forall ((o2@@73 T@Ref) (f_2@@88 T@Field_8716_8717) ) (!  (=> (select (|PolymorphicMapType_5100_8716_7972#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@28) null (WandMaskField_2594 pm_f@@9))) o2@@73 f_2@@88) (= (select (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@28) o2@@73 f_2@@88) (select (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@73 f_2@@88)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| ExhaleHeap@@26) o2@@73 f_2@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@57) (IsWandField_2594_2595 pm_f@@9))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_4551) (ExhaleHeap@@27 T@PolymorphicMapType_4551) (Mask@@58 T@PolymorphicMapType_4572) (pm_f@@10 T@Field_4611_7972) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_4611_7972 Mask@@58 null pm_f@@10) (IsWandField_4611_21573 pm_f@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@74 T@Ref) (f_2@@89 T@Field_8669_1565) ) (!  (=> (select (|PolymorphicMapType_5100_2629_1565#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@29) null (WandMaskField_4611 pm_f@@10))) o2@@74 f_2@@89) (= (select (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@29) o2@@74 f_2@@89) (select (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@74 f_2@@89)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@74 f_2@@89))
)) (forall ((o2@@75 T@Ref) (f_2@@90 T@Field_4611_53) ) (!  (=> (select (|PolymorphicMapType_5100_2629_53#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@29) null (WandMaskField_4611 pm_f@@10))) o2@@75 f_2@@90) (= (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@29) o2@@75 f_2@@90) (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@75 f_2@@90)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@75 f_2@@90))
))) (forall ((o2@@76 T@Ref) (f_2@@91 T@Field_4624_4625) ) (!  (=> (select (|PolymorphicMapType_5100_2629_4625#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@29) null (WandMaskField_4611 pm_f@@10))) o2@@76 f_2@@91) (= (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@29) o2@@76 f_2@@91) (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@76 f_2@@91)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@76 f_2@@91))
))) (forall ((o2@@77 T@Ref) (f_2@@92 T@Field_4611_7959) ) (!  (=> (select (|PolymorphicMapType_5100_2629_18184#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@29) null (WandMaskField_4611 pm_f@@10))) o2@@77 f_2@@92) (= (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@29) o2@@77 f_2@@92) (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@77 f_2@@92)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@77 f_2@@92))
))) (forall ((o2@@78 T@Ref) (f_2@@93 T@Field_4611_7972) ) (!  (=> (select (|PolymorphicMapType_5100_2629_7972#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@29) null (WandMaskField_4611 pm_f@@10))) o2@@78 f_2@@93) (= (select (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@29) o2@@78 f_2@@93) (select (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@78 f_2@@93)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@78 f_2@@93))
))) (forall ((o2@@79 T@Ref) (f_2@@94 T@Field_7940_1207) ) (!  (=> (select (|PolymorphicMapType_5100_7940_1565#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@29) null (WandMaskField_4611 pm_f@@10))) o2@@79 f_2@@94) (= (select (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@29) o2@@79 f_2@@94) (select (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@79 f_2@@94)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@79 f_2@@94))
))) (forall ((o2@@80 T@Ref) (f_2@@95 T@Field_7940_53) ) (!  (=> (select (|PolymorphicMapType_5100_7940_53#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@29) null (WandMaskField_4611 pm_f@@10))) o2@@80 f_2@@95) (= (select (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@29) o2@@80 f_2@@95) (select (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@80 f_2@@95)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@80 f_2@@95))
))) (forall ((o2@@81 T@Ref) (f_2@@96 T@Field_7940_4625) ) (!  (=> (select (|PolymorphicMapType_5100_7940_4625#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@29) null (WandMaskField_4611 pm_f@@10))) o2@@81 f_2@@96) (= (select (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@29) o2@@81 f_2@@96) (select (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@81 f_2@@96)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@81 f_2@@96))
))) (forall ((o2@@82 T@Ref) (f_2@@97 T@Field_7954_7959) ) (!  (=> (select (|PolymorphicMapType_5100_7940_19232#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@29) null (WandMaskField_4611 pm_f@@10))) o2@@82 f_2@@97) (= (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@29) o2@@82 f_2@@97) (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@82 f_2@@97)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@82 f_2@@97))
))) (forall ((o2@@83 T@Ref) (f_2@@98 T@Field_7971_7972) ) (!  (=> (select (|PolymorphicMapType_5100_7940_7972#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@29) null (WandMaskField_4611 pm_f@@10))) o2@@83 f_2@@98) (= (select (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@29) o2@@83 f_2@@98) (select (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@83 f_2@@98)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@83 f_2@@98))
))) (forall ((o2@@84 T@Ref) (f_2@@99 T@Field_8716_1207) ) (!  (=> (select (|PolymorphicMapType_5100_8716_1565#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@29) null (WandMaskField_4611 pm_f@@10))) o2@@84 f_2@@99) (= (select (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@29) o2@@84 f_2@@99) (select (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@84 f_2@@99)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@84 f_2@@99))
))) (forall ((o2@@85 T@Ref) (f_2@@100 T@Field_8716_53) ) (!  (=> (select (|PolymorphicMapType_5100_8716_53#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@29) null (WandMaskField_4611 pm_f@@10))) o2@@85 f_2@@100) (= (select (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@29) o2@@85 f_2@@100) (select (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@85 f_2@@100)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@85 f_2@@100))
))) (forall ((o2@@86 T@Ref) (f_2@@101 T@Field_8716_4625) ) (!  (=> (select (|PolymorphicMapType_5100_8716_4625#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@29) null (WandMaskField_4611 pm_f@@10))) o2@@86 f_2@@101) (= (select (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@29) o2@@86 f_2@@101) (select (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@86 f_2@@101)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@86 f_2@@101))
))) (forall ((o2@@87 T@Ref) (f_2@@102 T@Field_8729_8734) ) (!  (=> (select (|PolymorphicMapType_5100_8716_20280#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@29) null (WandMaskField_4611 pm_f@@10))) o2@@87 f_2@@102) (= (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@29) o2@@87 f_2@@102) (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@87 f_2@@102)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@87 f_2@@102))
))) (forall ((o2@@88 T@Ref) (f_2@@103 T@Field_8716_8717) ) (!  (=> (select (|PolymorphicMapType_5100_8716_7972#PolymorphicMapType_5100| (select (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@29) null (WandMaskField_4611 pm_f@@10))) o2@@88 f_2@@103) (= (select (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@29) o2@@88 f_2@@103) (select (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@88 f_2@@103)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| ExhaleHeap@@27) o2@@88 f_2@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@58) (IsWandField_4611_21573 pm_f@@10))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 T@Ref) (arg4@@5 T@Ref) (arg5@@5 Bool) ) (! (= (|wand#sm| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5) (WandMaskField_2594 (|wand#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_2594 (|wand#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5)))
)))
(assert (forall ((x@@3 T@Ref) ) (! (= (getPredWandId_2632_2633 (P x@@3)) 0)
 :qid |stdinbpl.236:15|
 :skolemid |31|
 :pattern ( (P x@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_4551) (o T@Ref) (f_3 T@Field_7954_7959) (v T@PolymorphicMapType_5100) ) (! (succHeap Heap@@30 (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@30) (store (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@30) o f_3 v) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@30) (store (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@30) o f_3 v) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@30) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_4551) (o@@0 T@Ref) (f_3@@0 T@Field_7940_1207) (v@@0 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@31) (store (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@31) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@31) (store (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@31) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@31) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_4551) (o@@1 T@Ref) (f_3@@1 T@Field_7971_7972) (v@@1 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@32) (store (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@32) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@32) (store (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@32) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@32) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_4551) (o@@2 T@Ref) (f_3@@2 T@Field_7940_4625) (v@@2 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@33) (store (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@33) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@33) (store (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@33) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@33) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_4551) (o@@3 T@Ref) (f_3@@3 T@Field_7940_53) (v@@3 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@34) (store (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@34) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@34) (store (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@34) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@34) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_4551) (o@@4 T@Ref) (f_3@@4 T@Field_8729_8734) (v@@4 T@PolymorphicMapType_5100) ) (! (succHeap Heap@@35 (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@35) (store (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@35) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@35) (store (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@35) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@35) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_4551) (o@@5 T@Ref) (f_3@@5 T@Field_8716_1207) (v@@5 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@36) (store (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@36) o@@5 f_3@@5 v@@5)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@36) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@36) (store (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@36) o@@5 f_3@@5 v@@5)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_4551) (o@@6 T@Ref) (f_3@@6 T@Field_8716_8717) (v@@6 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@37) (store (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@37) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@37) (store (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@37) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@37) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_4551) (o@@7 T@Ref) (f_3@@7 T@Field_8716_4625) (v@@7 T@Ref) ) (! (succHeap Heap@@38 (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@38) (store (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@38) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@38) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@38) (store (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@38) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_4551) (o@@8 T@Ref) (f_3@@8 T@Field_8716_53) (v@@8 Bool) ) (! (succHeap Heap@@39 (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@39) (store (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@39) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@39) (store (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@39) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@39) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_4551) (o@@9 T@Ref) (f_3@@9 T@Field_4611_7959) (v@@9 T@PolymorphicMapType_5100) ) (! (succHeap Heap@@40 (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@40) (store (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@40) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@40) (store (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@40) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@40) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_4551) (o@@10 T@Ref) (f_3@@10 T@Field_8669_1565) (v@@10 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@41) (store (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@41) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@41) (store (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@41) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@41) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_4551) (o@@11 T@Ref) (f_3@@11 T@Field_4611_7972) (v@@11 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@42) (store (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@42) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@42) (store (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@42) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@42) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_4551) (o@@12 T@Ref) (f_3@@12 T@Field_4624_4625) (v@@12 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@43) (store (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@43) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4551 (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@43) (store (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@43) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@43) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_4551) (o@@13 T@Ref) (f_3@@13 T@Field_4611_53) (v@@13 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_4551 (store (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@44) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4551 (store (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@44) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_2632_2633#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_2629_1565#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_2636_11976#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_4611_13796#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_4611_7972#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_7940_53#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_7940_4625#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_7940_1207#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_7940_14974#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_7940_7972#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_8716_53#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_8716_4625#PolymorphicMapType_4551| Heap@@44) (|PolymorphicMapType_4551_8716_1207#PolymorphicMapType_4551| Heap@@44)))
)))
(assert (forall ((x@@4 T@Ref) ) (! (= (PredicateMaskField_2632 (P x@@4)) (|P#sm| x@@4))
 :qid |stdinbpl.228:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_2632 (P x@@4)))
)))
(assert (forall ((o@@14 T@Ref) (f T@Field_4624_4625) (Heap@@45 T@PolymorphicMapType_4551) ) (!  (=> (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@45) o@@14 $allocated) (select (|PolymorphicMapType_4551_2449_53#PolymorphicMapType_4551| Heap@@45) (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@45) o@@14 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4551_2452_2453#PolymorphicMapType_4551| Heap@@45) o@@14 f))
)))
(assert (forall ((p@@3 T@Field_8716_8717) (v_1@@2 T@FrameType) (q T@Field_8716_8717) (w@@2 T@FrameType) (r T@Field_8716_8717) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8716_8716 p@@3 v_1@@2 q w@@2) (InsidePredicate_8716_8716 q w@@2 r u)) (InsidePredicate_8716_8716 p@@3 v_1@@2 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8716_8716 p@@3 v_1@@2 q w@@2) (InsidePredicate_8716_8716 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_8716_8717) (v_1@@3 T@FrameType) (q@@0 T@Field_8716_8717) (w@@3 T@FrameType) (r@@0 T@Field_7971_7972) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_8716_8716 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_8716_7940 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_8716_7940 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8716_8716 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_8716_7940 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_8716_8717) (v_1@@4 T@FrameType) (q@@1 T@Field_8716_8717) (w@@4 T@FrameType) (r@@1 T@Field_4611_7972) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_8716_8716 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_8716_4611 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_8716_4611 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8716_8716 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_8716_4611 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_8716_8717) (v_1@@5 T@FrameType) (q@@2 T@Field_7971_7972) (w@@5 T@FrameType) (r@@2 T@Field_8716_8717) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_8716_7940 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_7940_8716 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_8716_8716 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8716_7940 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_7940_8716 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_8716_8717) (v_1@@6 T@FrameType) (q@@3 T@Field_7971_7972) (w@@6 T@FrameType) (r@@3 T@Field_7971_7972) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8716_7940 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_7940_7940 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_8716_7940 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8716_7940 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_7940_7940 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_8716_8717) (v_1@@7 T@FrameType) (q@@4 T@Field_7971_7972) (w@@7 T@FrameType) (r@@4 T@Field_4611_7972) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8716_7940 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_7940_4611 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_8716_4611 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8716_7940 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_7940_4611 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_8716_8717) (v_1@@8 T@FrameType) (q@@5 T@Field_4611_7972) (w@@8 T@FrameType) (r@@5 T@Field_8716_8717) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8716_4611 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_4611_8716 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_8716_8716 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8716_4611 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_4611_8716 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_8716_8717) (v_1@@9 T@FrameType) (q@@6 T@Field_4611_7972) (w@@9 T@FrameType) (r@@6 T@Field_7971_7972) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8716_4611 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_4611_7940 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_8716_7940 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8716_4611 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_4611_7940 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_8716_8717) (v_1@@10 T@FrameType) (q@@7 T@Field_4611_7972) (w@@10 T@FrameType) (r@@7 T@Field_4611_7972) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_8716_4611 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_4611_4611 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_8716_4611 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8716_4611 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_4611_4611 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_7971_7972) (v_1@@11 T@FrameType) (q@@8 T@Field_8716_8717) (w@@11 T@FrameType) (r@@8 T@Field_8716_8717) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_7940_8716 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_8716_8716 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_7940_8716 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7940_8716 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_8716_8716 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_7971_7972) (v_1@@12 T@FrameType) (q@@9 T@Field_8716_8717) (w@@12 T@FrameType) (r@@9 T@Field_7971_7972) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_7940_8716 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_8716_7940 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_7940_7940 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7940_8716 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_8716_7940 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_7971_7972) (v_1@@13 T@FrameType) (q@@10 T@Field_8716_8717) (w@@13 T@FrameType) (r@@10 T@Field_4611_7972) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_7940_8716 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_8716_4611 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_7940_4611 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7940_8716 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_8716_4611 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_7971_7972) (v_1@@14 T@FrameType) (q@@11 T@Field_7971_7972) (w@@14 T@FrameType) (r@@11 T@Field_8716_8717) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_7940_7940 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_7940_8716 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_7940_8716 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7940_7940 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_7940_8716 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_7971_7972) (v_1@@15 T@FrameType) (q@@12 T@Field_7971_7972) (w@@15 T@FrameType) (r@@12 T@Field_7971_7972) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_7940_7940 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_7940_7940 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_7940_7940 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7940_7940 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_7940_7940 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_7971_7972) (v_1@@16 T@FrameType) (q@@13 T@Field_7971_7972) (w@@16 T@FrameType) (r@@13 T@Field_4611_7972) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_7940_7940 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_7940_4611 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_7940_4611 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7940_7940 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_7940_4611 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_7971_7972) (v_1@@17 T@FrameType) (q@@14 T@Field_4611_7972) (w@@17 T@FrameType) (r@@14 T@Field_8716_8717) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_7940_4611 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_4611_8716 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_7940_8716 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7940_4611 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_4611_8716 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_7971_7972) (v_1@@18 T@FrameType) (q@@15 T@Field_4611_7972) (w@@18 T@FrameType) (r@@15 T@Field_7971_7972) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_7940_4611 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_4611_7940 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_7940_7940 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7940_4611 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_4611_7940 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_7971_7972) (v_1@@19 T@FrameType) (q@@16 T@Field_4611_7972) (w@@19 T@FrameType) (r@@16 T@Field_4611_7972) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_7940_4611 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_4611_4611 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_7940_4611 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7940_4611 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_4611_4611 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_4611_7972) (v_1@@20 T@FrameType) (q@@17 T@Field_8716_8717) (w@@20 T@FrameType) (r@@17 T@Field_8716_8717) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_4611_8716 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_8716_8716 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_4611_8716 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4611_8716 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_8716_8716 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_4611_7972) (v_1@@21 T@FrameType) (q@@18 T@Field_8716_8717) (w@@21 T@FrameType) (r@@18 T@Field_7971_7972) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_4611_8716 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_8716_7940 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_4611_7940 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4611_8716 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_8716_7940 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_4611_7972) (v_1@@22 T@FrameType) (q@@19 T@Field_8716_8717) (w@@22 T@FrameType) (r@@19 T@Field_4611_7972) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_4611_8716 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_8716_4611 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_4611_4611 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4611_8716 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_8716_4611 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_4611_7972) (v_1@@23 T@FrameType) (q@@20 T@Field_7971_7972) (w@@23 T@FrameType) (r@@20 T@Field_8716_8717) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_4611_7940 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_7940_8716 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_4611_8716 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4611_7940 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_7940_8716 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_4611_7972) (v_1@@24 T@FrameType) (q@@21 T@Field_7971_7972) (w@@24 T@FrameType) (r@@21 T@Field_7971_7972) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_4611_7940 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_7940_7940 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_4611_7940 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4611_7940 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_7940_7940 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_4611_7972) (v_1@@25 T@FrameType) (q@@22 T@Field_7971_7972) (w@@25 T@FrameType) (r@@22 T@Field_4611_7972) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_4611_7940 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_7940_4611 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_4611_4611 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4611_7940 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_7940_4611 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_4611_7972) (v_1@@26 T@FrameType) (q@@23 T@Field_4611_7972) (w@@26 T@FrameType) (r@@23 T@Field_8716_8717) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_4611_4611 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_4611_8716 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_4611_8716 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4611_4611 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_4611_8716 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_4611_7972) (v_1@@27 T@FrameType) (q@@24 T@Field_4611_7972) (w@@27 T@FrameType) (r@@24 T@Field_7971_7972) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_4611_4611 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_4611_7940 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_4611_7940 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4611_4611 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_4611_7940 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_4611_7972) (v_1@@28 T@FrameType) (q@@25 T@Field_4611_7972) (w@@28 T@FrameType) (r@@25 T@Field_4611_7972) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_4611_4611 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_4611_4611 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_4611_4611 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4611_4611 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_4611_4611 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |P#definedness|)
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