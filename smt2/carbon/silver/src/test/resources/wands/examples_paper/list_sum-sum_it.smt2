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
(declare-sort T@Field_19150_53 0)
(declare-sort T@Field_19163_19164 0)
(declare-sort T@Field_23355_1682 0)
(declare-sort T@Field_23822_23823 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_26559_26564 0)
(declare-sort T@Field_22496_22501 0)
(declare-sort T@Field_10382_10419 0)
(declare-sort T@Field_10382_22501 0)
(declare-sort T@Field_10418_1682 0)
(declare-sort T@Field_10418_10385 0)
(declare-sort T@Field_10418_53 0)
(declare-sort T@Field_22481_1218 0)
(declare-sort T@Field_22481_10385 0)
(declare-sort T@Field_22514_22515 0)
(declare-sort T@Field_22481_53 0)
(declare-datatypes ((T@PolymorphicMapType_19111 0)) (((PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| (Array T@Ref T@Field_23822_23823 Real)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| (Array T@Ref T@Field_23355_1682 Real)) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| (Array T@Ref T@Field_19163_19164 Real)) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| (Array T@Ref T@Field_22481_1218 Real)) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| (Array T@Ref T@Field_10418_1682 Real)) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| (Array T@Ref T@Field_10418_10385 Real)) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| (Array T@Ref T@Field_10418_53 Real)) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| (Array T@Ref T@Field_26559_26564 Real)) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| (Array T@Ref T@Field_10382_10419 Real)) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| (Array T@Ref T@Field_19150_53 Real)) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| (Array T@Ref T@Field_10382_22501 Real)) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| (Array T@Ref T@Field_22514_22515 Real)) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| (Array T@Ref T@Field_22481_10385 Real)) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| (Array T@Ref T@Field_22481_53 Real)) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| (Array T@Ref T@Field_22496_22501 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19639 0)) (((PolymorphicMapType_19639 (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (Array T@Ref T@Field_23355_1682 Bool)) (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (Array T@Ref T@Field_19163_19164 Bool)) (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (Array T@Ref T@Field_19150_53 Bool)) (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (Array T@Ref T@Field_10382_22501 Bool)) (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (Array T@Ref T@Field_10382_10419 Bool)) (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (Array T@Ref T@Field_22481_1218 Bool)) (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (Array T@Ref T@Field_22481_10385 Bool)) (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (Array T@Ref T@Field_22481_53 Bool)) (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (Array T@Ref T@Field_22496_22501 Bool)) (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (Array T@Ref T@Field_22514_22515 Bool)) (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (Array T@Ref T@Field_10418_1682 Bool)) (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (Array T@Ref T@Field_10418_10385 Bool)) (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (Array T@Ref T@Field_10418_53 Bool)) (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (Array T@Ref T@Field_26559_26564 Bool)) (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (Array T@Ref T@Field_23822_23823 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19090 0)) (((PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| (Array T@Ref T@Field_19150_53 Bool)) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| (Array T@Ref T@Field_19163_19164 T@Ref)) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| (Array T@Ref T@Field_23355_1682 Int)) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| (Array T@Ref T@Field_23822_23823 T@FrameType)) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| (Array T@Ref T@Field_26559_26564 T@PolymorphicMapType_19639)) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| (Array T@Ref T@Field_22496_22501 T@PolymorphicMapType_19639)) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| (Array T@Ref T@Field_10382_10419 T@FrameType)) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| (Array T@Ref T@Field_10382_22501 T@PolymorphicMapType_19639)) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| (Array T@Ref T@Field_10418_1682 Int)) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| (Array T@Ref T@Field_10418_10385 T@Ref)) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| (Array T@Ref T@Field_10418_53 Bool)) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| (Array T@Ref T@Field_22481_1218 Int)) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| (Array T@Ref T@Field_22481_10385 T@Ref)) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| (Array T@Ref T@Field_22514_22515 T@FrameType)) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| (Array T@Ref T@Field_22481_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_19150_53)
(declare-fun val () T@Field_23355_1682)
(declare-fun next () T@Field_19163_19164)
(declare-fun succHeap (T@PolymorphicMapType_19090 T@PolymorphicMapType_19090) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_19090 T@PolymorphicMapType_19090) Bool)
(declare-fun state (T@PolymorphicMapType_19090 T@PolymorphicMapType_19111) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_19111) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_19639)
(declare-fun List (T@Ref) T@Field_23822_23823)
(declare-fun IsPredicateField_10418_10419 (T@Field_23822_23823) Bool)
(declare-fun |sum_rec'| (T@PolymorphicMapType_19090 T@Ref) Int)
(declare-fun dummyFunction_1930 (Int) Bool)
(declare-fun |sum_rec#triggerStateless| (T@Ref) Int)
(declare-fun |List#trigger_10418| (T@PolymorphicMapType_19090 T@Field_23822_23823) Bool)
(declare-fun |List#everUsed_10418| (T@Field_23822_23823) Bool)
(declare-fun sum_rec (T@PolymorphicMapType_19090 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_19090 T@PolymorphicMapType_19090 T@PolymorphicMapType_19111) Bool)
(declare-fun IsPredicateField_10347_10348 (T@Field_22514_22515) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_22481 (T@Field_22514_22515) T@Field_22496_22501)
(declare-fun HasDirectPerm_22481_10419 (T@PolymorphicMapType_19111 T@Ref T@Field_22514_22515) Bool)
(declare-fun PredicateMaskField_10418 (T@Field_23822_23823) T@Field_26559_26564)
(declare-fun HasDirectPerm_10418_10419 (T@PolymorphicMapType_19111 T@Ref T@Field_23822_23823) Bool)
(declare-fun IsPredicateField_10382_65874 (T@Field_10382_10419) Bool)
(declare-fun PredicateMaskField_10382 (T@Field_10382_10419) T@Field_10382_22501)
(declare-fun HasDirectPerm_10382_10419 (T@PolymorphicMapType_19111 T@Ref T@Field_10382_10419) Bool)
(declare-fun IsWandField_10347_10348 (T@Field_22514_22515) Bool)
(declare-fun WandMaskField_10347 (T@Field_22514_22515) T@Field_22496_22501)
(declare-fun IsWandField_10418_71223 (T@Field_23822_23823) Bool)
(declare-fun WandMaskField_10418 (T@Field_23822_23823) T@Field_26559_26564)
(declare-fun IsWandField_10382_70866 (T@Field_10382_10419) Bool)
(declare-fun WandMaskField_10382 (T@Field_10382_10419) T@Field_10382_22501)
(declare-fun |List#sm| (T@Ref) T@Field_26559_26564)
(declare-fun dummyHeap () T@PolymorphicMapType_19090)
(declare-fun ZeroMask () T@PolymorphicMapType_19111)
(declare-fun InsidePredicate_22481_22481 (T@Field_22514_22515 T@FrameType T@Field_22514_22515 T@FrameType) Bool)
(declare-fun InsidePredicate_19150_19150 (T@Field_10382_10419 T@FrameType T@Field_10382_10419 T@FrameType) Bool)
(declare-fun InsidePredicate_10418_10418 (T@Field_23822_23823 T@FrameType T@Field_23822_23823 T@FrameType) Bool)
(declare-fun IsPredicateField_10382_1682 (T@Field_23355_1682) Bool)
(declare-fun IsWandField_10382_1682 (T@Field_23355_1682) Bool)
(declare-fun IsPredicateField_10384_10385 (T@Field_19163_19164) Bool)
(declare-fun IsWandField_10384_10385 (T@Field_19163_19164) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_10334_81826 (T@Field_22496_22501) Bool)
(declare-fun IsWandField_10334_81842 (T@Field_22496_22501) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_10334_53 (T@Field_22481_53) Bool)
(declare-fun IsWandField_10334_53 (T@Field_22481_53) Bool)
(declare-fun IsPredicateField_10334_10385 (T@Field_22481_10385) Bool)
(declare-fun IsWandField_10334_10385 (T@Field_22481_10385) Bool)
(declare-fun IsPredicateField_10334_1218 (T@Field_22481_1218) Bool)
(declare-fun IsWandField_10334_1218 (T@Field_22481_1218) Bool)
(declare-fun IsPredicateField_10382_81009 (T@Field_10382_22501) Bool)
(declare-fun IsWandField_10382_81025 (T@Field_10382_22501) Bool)
(declare-fun IsPredicateField_10382_53 (T@Field_19150_53) Bool)
(declare-fun IsWandField_10382_53 (T@Field_19150_53) Bool)
(declare-fun IsPredicateField_10418_80206 (T@Field_26559_26564) Bool)
(declare-fun IsWandField_10418_80222 (T@Field_26559_26564) Bool)
(declare-fun IsPredicateField_10418_53 (T@Field_10418_53) Bool)
(declare-fun IsWandField_10418_53 (T@Field_10418_53) Bool)
(declare-fun IsPredicateField_10418_10385 (T@Field_10418_10385) Bool)
(declare-fun IsWandField_10418_10385 (T@Field_10418_10385) Bool)
(declare-fun IsPredicateField_10418_1682 (T@Field_10418_1682) Bool)
(declare-fun IsWandField_10418_1682 (T@Field_10418_1682) Bool)
(declare-fun HasDirectPerm_22481_65629 (T@PolymorphicMapType_19111 T@Ref T@Field_22496_22501) Bool)
(declare-fun HasDirectPerm_22481_53 (T@PolymorphicMapType_19111 T@Ref T@Field_22481_53) Bool)
(declare-fun HasDirectPerm_22481_10385 (T@PolymorphicMapType_19111 T@Ref T@Field_22481_10385) Bool)
(declare-fun HasDirectPerm_22481_1682 (T@PolymorphicMapType_19111 T@Ref T@Field_22481_1218) Bool)
(declare-fun HasDirectPerm_10418_64495 (T@PolymorphicMapType_19111 T@Ref T@Field_26559_26564) Bool)
(declare-fun HasDirectPerm_10418_53 (T@PolymorphicMapType_19111 T@Ref T@Field_10418_53) Bool)
(declare-fun HasDirectPerm_10418_10385 (T@PolymorphicMapType_19111 T@Ref T@Field_10418_10385) Bool)
(declare-fun HasDirectPerm_10418_1682 (T@PolymorphicMapType_19111 T@Ref T@Field_10418_1682) Bool)
(declare-fun HasDirectPerm_10382_63354 (T@PolymorphicMapType_19111 T@Ref T@Field_10382_22501) Bool)
(declare-fun HasDirectPerm_10382_53 (T@PolymorphicMapType_19111 T@Ref T@Field_19150_53) Bool)
(declare-fun HasDirectPerm_10384_10385 (T@PolymorphicMapType_19111 T@Ref T@Field_19163_19164) Bool)
(declare-fun HasDirectPerm_10382_1682 (T@PolymorphicMapType_19111 T@Ref T@Field_23355_1682) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_19111 T@PolymorphicMapType_19111 T@PolymorphicMapType_19111) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun wand (Bool T@Ref T@Ref Int T@Ref T@Ref Int) T@Field_22481_1218)
(declare-fun |sum_rec#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_10418_10419 (T@Field_23822_23823) Int)
(declare-fun |wand#ft| (Bool T@Ref T@Ref Int T@Ref T@Ref Int) T@Field_22514_22515)
(declare-fun |wand#sm| (Bool T@Ref T@Ref Int T@Ref T@Ref Int) T@Field_22496_22501)
(declare-fun InsidePredicate_22481_19150 (T@Field_22514_22515 T@FrameType T@Field_10382_10419 T@FrameType) Bool)
(declare-fun InsidePredicate_22481_10418 (T@Field_22514_22515 T@FrameType T@Field_23822_23823 T@FrameType) Bool)
(declare-fun InsidePredicate_19150_22481 (T@Field_10382_10419 T@FrameType T@Field_22514_22515 T@FrameType) Bool)
(declare-fun InsidePredicate_19150_10418 (T@Field_10382_10419 T@FrameType T@Field_23822_23823 T@FrameType) Bool)
(declare-fun InsidePredicate_10418_22481 (T@Field_23822_23823 T@FrameType T@Field_22514_22515 T@FrameType) Bool)
(declare-fun InsidePredicate_10418_19150 (T@Field_23822_23823 T@FrameType T@Field_10382_10419 T@FrameType) Bool)
(declare-fun getPredWandId_10334_1218 (T@Field_22481_1218) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_19090) (Heap1 T@PolymorphicMapType_19090) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_19090) (Mask T@PolymorphicMapType_19111) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_19090) (Heap1@@0 T@PolymorphicMapType_19090) (Heap2 T@PolymorphicMapType_19090) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_23822_23823) ) (!  (not (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_26559_26564) ) (!  (not (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10418_53) ) (!  (not (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10418_10385) ) (!  (not (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10418_1682) ) (!  (not (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_22514_22515) ) (!  (not (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_22496_22501) ) (!  (not (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_22481_53) ) (!  (not (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_22481_10385) ) (!  (not (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_22481_1218) ) (!  (not (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_10382_10419) ) (!  (not (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_10382_22501) ) (!  (not (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_19150_53) ) (!  (not (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_19163_19164) ) (!  (not (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_23355_1682) ) (!  (not (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((ys T@Ref) ) (! (IsPredicateField_10418_10419 (List ys))
 :qid |stdinbpl.371:15|
 :skolemid |35|
 :pattern ( (List ys))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_19090) (ys@@0 T@Ref) ) (! (dummyFunction_1930 (|sum_rec#triggerStateless| ys@@0))
 :qid |stdinbpl.238:15|
 :skolemid |30|
 :pattern ( (|sum_rec'| Heap@@0 ys@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_19090) (ys@@1 T@Ref) ) (! (|List#everUsed_10418| (List ys@@1))
 :qid |stdinbpl.390:15|
 :skolemid |39|
 :pattern ( (|List#trigger_10418| Heap@@1 (List ys@@1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_19090) (ys@@2 T@Ref) ) (!  (and (= (sum_rec Heap@@2 ys@@2) (|sum_rec'| Heap@@2 ys@@2)) (dummyFunction_1930 (|sum_rec#triggerStateless| ys@@2)))
 :qid |stdinbpl.234:15|
 :skolemid |29|
 :pattern ( (sum_rec Heap@@2 ys@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_19090) (ExhaleHeap T@PolymorphicMapType_19090) (Mask@@0 T@PolymorphicMapType_19111) (pm_f_4 T@Field_22514_22515) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_22481_10419 Mask@@0 null pm_f_4) (IsPredicateField_10347_10348 pm_f_4)) (= (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@3) null (PredicateMaskField_22481 pm_f_4)) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap) null (PredicateMaskField_22481 pm_f_4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_10347_10348 pm_f_4) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap) null (PredicateMaskField_22481 pm_f_4)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_19090) (ExhaleHeap@@0 T@PolymorphicMapType_19090) (Mask@@1 T@PolymorphicMapType_19111) (pm_f_4@@0 T@Field_23822_23823) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_10418_10419 Mask@@1 null pm_f_4@@0) (IsPredicateField_10418_10419 pm_f_4@@0)) (= (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@4) null (PredicateMaskField_10418 pm_f_4@@0)) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@0) null (PredicateMaskField_10418 pm_f_4@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_10418_10419 pm_f_4@@0) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@0) null (PredicateMaskField_10418 pm_f_4@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_19090) (ExhaleHeap@@1 T@PolymorphicMapType_19090) (Mask@@2 T@PolymorphicMapType_19111) (pm_f_4@@1 T@Field_10382_10419) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_10382_10419 Mask@@2 null pm_f_4@@1) (IsPredicateField_10382_65874 pm_f_4@@1)) (= (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@5) null (PredicateMaskField_10382 pm_f_4@@1)) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@1) null (PredicateMaskField_10382 pm_f_4@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsPredicateField_10382_65874 pm_f_4@@1) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@1) null (PredicateMaskField_10382 pm_f_4@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_19090) (ExhaleHeap@@2 T@PolymorphicMapType_19090) (Mask@@3 T@PolymorphicMapType_19111) (pm_f_4@@2 T@Field_22514_22515) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_22481_10419 Mask@@3 null pm_f_4@@2) (IsWandField_10347_10348 pm_f_4@@2)) (= (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@6) null (WandMaskField_10347 pm_f_4@@2)) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@2) null (WandMaskField_10347 pm_f_4@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsWandField_10347_10348 pm_f_4@@2) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@2) null (WandMaskField_10347 pm_f_4@@2)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_19090) (ExhaleHeap@@3 T@PolymorphicMapType_19090) (Mask@@4 T@PolymorphicMapType_19111) (pm_f_4@@3 T@Field_23822_23823) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_10418_10419 Mask@@4 null pm_f_4@@3) (IsWandField_10418_71223 pm_f_4@@3)) (= (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@7) null (WandMaskField_10418 pm_f_4@@3)) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@3) null (WandMaskField_10418 pm_f_4@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsWandField_10418_71223 pm_f_4@@3) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@3) null (WandMaskField_10418 pm_f_4@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_19090) (ExhaleHeap@@4 T@PolymorphicMapType_19090) (Mask@@5 T@PolymorphicMapType_19111) (pm_f_4@@4 T@Field_10382_10419) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_10382_10419 Mask@@5 null pm_f_4@@4) (IsWandField_10382_70866 pm_f_4@@4)) (= (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@8) null (WandMaskField_10382 pm_f_4@@4)) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@4) null (WandMaskField_10382 pm_f_4@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsWandField_10382_70866 pm_f_4@@4) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@4) null (WandMaskField_10382 pm_f_4@@4)))
)))
(assert (forall ((ys@@3 T@Ref) (ys2 T@Ref) ) (!  (=> (= (List ys@@3) (List ys2)) (= ys@@3 ys2))
 :qid |stdinbpl.381:15|
 :skolemid |37|
 :pattern ( (List ys@@3) (List ys2))
)))
(assert (forall ((ys@@4 T@Ref) (ys2@@0 T@Ref) ) (!  (=> (= (|List#sm| ys@@4) (|List#sm| ys2@@0)) (= ys@@4 ys2@@0))
 :qid |stdinbpl.385:15|
 :skolemid |38|
 :pattern ( (|List#sm| ys@@4) (|List#sm| ys2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_19090) (ExhaleHeap@@5 T@PolymorphicMapType_19090) (Mask@@6 T@PolymorphicMapType_19111) (o_13 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@9) o_13 $allocated) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@5) o_13 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@5) o_13 $allocated))
)))
(assert (forall ((p T@Field_22514_22515) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_22481_22481 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22481_22481 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_10382_10419) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_19150_19150 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_19150_19150 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_23822_23823) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_10418_10418 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10418_10418 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_10382_1682 val)))
(assert  (not (IsWandField_10382_1682 val)))
(assert  (not (IsPredicateField_10384_10385 next)))
(assert  (not (IsWandField_10384_10385 next)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_19090) (ExhaleHeap@@6 T@PolymorphicMapType_19090) (Mask@@7 T@PolymorphicMapType_19111) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@10 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_19111) (o_2@@14 T@Ref) (f_4@@14 T@Field_22496_22501) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_10334_81826 f_4@@14))) (not (IsWandField_10334_81842 f_4@@14))) (<= (select (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_19111) (o_2@@15 T@Ref) (f_4@@15 T@Field_22481_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_10334_53 f_4@@15))) (not (IsWandField_10334_53 f_4@@15))) (<= (select (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_19111) (o_2@@16 T@Ref) (f_4@@16 T@Field_22481_10385) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_10334_10385 f_4@@16))) (not (IsWandField_10334_10385 f_4@@16))) (<= (select (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_19111) (o_2@@17 T@Ref) (f_4@@17 T@Field_22481_1218) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_10334_1218 f_4@@17))) (not (IsWandField_10334_1218 f_4@@17))) (<= (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_19111) (o_2@@18 T@Ref) (f_4@@18 T@Field_22514_22515) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_10347_10348 f_4@@18))) (not (IsWandField_10347_10348 f_4@@18))) (<= (select (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_19111) (o_2@@19 T@Ref) (f_4@@19 T@Field_10382_22501) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_10382_81009 f_4@@19))) (not (IsWandField_10382_81025 f_4@@19))) (<= (select (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_19111) (o_2@@20 T@Ref) (f_4@@20 T@Field_19150_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_10382_53 f_4@@20))) (not (IsWandField_10382_53 f_4@@20))) (<= (select (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_19111) (o_2@@21 T@Ref) (f_4@@21 T@Field_19163_19164) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_10384_10385 f_4@@21))) (not (IsWandField_10384_10385 f_4@@21))) (<= (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_19111) (o_2@@22 T@Ref) (f_4@@22 T@Field_23355_1682) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_10382_1682 f_4@@22))) (not (IsWandField_10382_1682 f_4@@22))) (<= (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_19111) (o_2@@23 T@Ref) (f_4@@23 T@Field_10382_10419) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_10382_65874 f_4@@23))) (not (IsWandField_10382_70866 f_4@@23))) (<= (select (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_19111) (o_2@@24 T@Ref) (f_4@@24 T@Field_26559_26564) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_10418_80206 f_4@@24))) (not (IsWandField_10418_80222 f_4@@24))) (<= (select (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_19111) (o_2@@25 T@Ref) (f_4@@25 T@Field_10418_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_10418_53 f_4@@25))) (not (IsWandField_10418_53 f_4@@25))) (<= (select (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_19111) (o_2@@26 T@Ref) (f_4@@26 T@Field_10418_10385) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_10418_10385 f_4@@26))) (not (IsWandField_10418_10385 f_4@@26))) (<= (select (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_19111) (o_2@@27 T@Ref) (f_4@@27 T@Field_10418_1682) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_10418_1682 f_4@@27))) (not (IsWandField_10418_1682 f_4@@27))) (<= (select (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_19111) (o_2@@28 T@Ref) (f_4@@28 T@Field_23822_23823) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_10418_10419 f_4@@28))) (not (IsWandField_10418_71223 f_4@@28))) (<= (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_19111) (o_2@@29 T@Ref) (f_4@@29 T@Field_22496_22501) ) (! (= (HasDirectPerm_22481_65629 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22481_65629 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_19111) (o_2@@30 T@Ref) (f_4@@30 T@Field_22481_53) ) (! (= (HasDirectPerm_22481_53 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22481_53 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_19111) (o_2@@31 T@Ref) (f_4@@31 T@Field_22514_22515) ) (! (= (HasDirectPerm_22481_10419 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22481_10419 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_19111) (o_2@@32 T@Ref) (f_4@@32 T@Field_22481_10385) ) (! (= (HasDirectPerm_22481_10385 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22481_10385 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_19111) (o_2@@33 T@Ref) (f_4@@33 T@Field_22481_1218) ) (! (= (HasDirectPerm_22481_1682 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22481_1682 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_19111) (o_2@@34 T@Ref) (f_4@@34 T@Field_26559_26564) ) (! (= (HasDirectPerm_10418_64495 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10418_64495 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_19111) (o_2@@35 T@Ref) (f_4@@35 T@Field_10418_53) ) (! (= (HasDirectPerm_10418_53 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10418_53 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_19111) (o_2@@36 T@Ref) (f_4@@36 T@Field_23822_23823) ) (! (= (HasDirectPerm_10418_10419 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10418_10419 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_19111) (o_2@@37 T@Ref) (f_4@@37 T@Field_10418_10385) ) (! (= (HasDirectPerm_10418_10385 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10418_10385 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_19111) (o_2@@38 T@Ref) (f_4@@38 T@Field_10418_1682) ) (! (= (HasDirectPerm_10418_1682 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10418_1682 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_19111) (o_2@@39 T@Ref) (f_4@@39 T@Field_10382_22501) ) (! (= (HasDirectPerm_10382_63354 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10382_63354 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_19111) (o_2@@40 T@Ref) (f_4@@40 T@Field_19150_53) ) (! (= (HasDirectPerm_10382_53 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10382_53 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_19111) (o_2@@41 T@Ref) (f_4@@41 T@Field_10382_10419) ) (! (= (HasDirectPerm_10382_10419 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10382_10419 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_19111) (o_2@@42 T@Ref) (f_4@@42 T@Field_19163_19164) ) (! (= (HasDirectPerm_10384_10385 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10384_10385 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_19111) (o_2@@43 T@Ref) (f_4@@43 T@Field_23355_1682) ) (! (= (HasDirectPerm_10382_1682 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10382_1682 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_19090) (ExhaleHeap@@7 T@PolymorphicMapType_19090) (Mask@@38 T@PolymorphicMapType_19111) (o_13@@0 T@Ref) (f_20 T@Field_22496_22501) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_22481_65629 Mask@@38 o_13@@0 f_20) (= (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@11) o_13@@0 f_20) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@7) o_13@@0 f_20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@7) o_13@@0 f_20))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_19090) (ExhaleHeap@@8 T@PolymorphicMapType_19090) (Mask@@39 T@PolymorphicMapType_19111) (o_13@@1 T@Ref) (f_20@@0 T@Field_22481_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_22481_53 Mask@@39 o_13@@1 f_20@@0) (= (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@12) o_13@@1 f_20@@0) (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@8) o_13@@1 f_20@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@8) o_13@@1 f_20@@0))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_19090) (ExhaleHeap@@9 T@PolymorphicMapType_19090) (Mask@@40 T@PolymorphicMapType_19111) (o_13@@2 T@Ref) (f_20@@1 T@Field_22514_22515) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_22481_10419 Mask@@40 o_13@@2 f_20@@1) (= (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@13) o_13@@2 f_20@@1) (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@9) o_13@@2 f_20@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@9) o_13@@2 f_20@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_19090) (ExhaleHeap@@10 T@PolymorphicMapType_19090) (Mask@@41 T@PolymorphicMapType_19111) (o_13@@3 T@Ref) (f_20@@2 T@Field_22481_10385) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_22481_10385 Mask@@41 o_13@@3 f_20@@2) (= (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@14) o_13@@3 f_20@@2) (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@10) o_13@@3 f_20@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@10) o_13@@3 f_20@@2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_19090) (ExhaleHeap@@11 T@PolymorphicMapType_19090) (Mask@@42 T@PolymorphicMapType_19111) (o_13@@4 T@Ref) (f_20@@3 T@Field_22481_1218) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_22481_1682 Mask@@42 o_13@@4 f_20@@3) (= (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@15) o_13@@4 f_20@@3) (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@11) o_13@@4 f_20@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@11) o_13@@4 f_20@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_19090) (ExhaleHeap@@12 T@PolymorphicMapType_19090) (Mask@@43 T@PolymorphicMapType_19111) (o_13@@5 T@Ref) (f_20@@4 T@Field_26559_26564) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_10418_64495 Mask@@43 o_13@@5 f_20@@4) (= (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@16) o_13@@5 f_20@@4) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@12) o_13@@5 f_20@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@12) o_13@@5 f_20@@4))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_19090) (ExhaleHeap@@13 T@PolymorphicMapType_19090) (Mask@@44 T@PolymorphicMapType_19111) (o_13@@6 T@Ref) (f_20@@5 T@Field_10418_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_10418_53 Mask@@44 o_13@@6 f_20@@5) (= (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@17) o_13@@6 f_20@@5) (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@13) o_13@@6 f_20@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@13) o_13@@6 f_20@@5))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_19090) (ExhaleHeap@@14 T@PolymorphicMapType_19090) (Mask@@45 T@PolymorphicMapType_19111) (o_13@@7 T@Ref) (f_20@@6 T@Field_23822_23823) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_10418_10419 Mask@@45 o_13@@7 f_20@@6) (= (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@18) o_13@@7 f_20@@6) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@14) o_13@@7 f_20@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@14) o_13@@7 f_20@@6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_19090) (ExhaleHeap@@15 T@PolymorphicMapType_19090) (Mask@@46 T@PolymorphicMapType_19111) (o_13@@8 T@Ref) (f_20@@7 T@Field_10418_10385) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_10418_10385 Mask@@46 o_13@@8 f_20@@7) (= (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@19) o_13@@8 f_20@@7) (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@15) o_13@@8 f_20@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@15) o_13@@8 f_20@@7))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_19090) (ExhaleHeap@@16 T@PolymorphicMapType_19090) (Mask@@47 T@PolymorphicMapType_19111) (o_13@@9 T@Ref) (f_20@@8 T@Field_10418_1682) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_10418_1682 Mask@@47 o_13@@9 f_20@@8) (= (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@20) o_13@@9 f_20@@8) (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@16) o_13@@9 f_20@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@16) o_13@@9 f_20@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_19090) (ExhaleHeap@@17 T@PolymorphicMapType_19090) (Mask@@48 T@PolymorphicMapType_19111) (o_13@@10 T@Ref) (f_20@@9 T@Field_10382_22501) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_10382_63354 Mask@@48 o_13@@10 f_20@@9) (= (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@21) o_13@@10 f_20@@9) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@17) o_13@@10 f_20@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@17) o_13@@10 f_20@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_19090) (ExhaleHeap@@18 T@PolymorphicMapType_19090) (Mask@@49 T@PolymorphicMapType_19111) (o_13@@11 T@Ref) (f_20@@10 T@Field_19150_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_10382_53 Mask@@49 o_13@@11 f_20@@10) (= (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@22) o_13@@11 f_20@@10) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@18) o_13@@11 f_20@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@18) o_13@@11 f_20@@10))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_19090) (ExhaleHeap@@19 T@PolymorphicMapType_19090) (Mask@@50 T@PolymorphicMapType_19111) (o_13@@12 T@Ref) (f_20@@11 T@Field_10382_10419) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_10382_10419 Mask@@50 o_13@@12 f_20@@11) (= (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@23) o_13@@12 f_20@@11) (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@19) o_13@@12 f_20@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@19) o_13@@12 f_20@@11))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_19090) (ExhaleHeap@@20 T@PolymorphicMapType_19090) (Mask@@51 T@PolymorphicMapType_19111) (o_13@@13 T@Ref) (f_20@@12 T@Field_19163_19164) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_10384_10385 Mask@@51 o_13@@13 f_20@@12) (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@24) o_13@@13 f_20@@12) (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@20) o_13@@13 f_20@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@20) o_13@@13 f_20@@12))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_19090) (ExhaleHeap@@21 T@PolymorphicMapType_19090) (Mask@@52 T@PolymorphicMapType_19111) (o_13@@14 T@Ref) (f_20@@13 T@Field_23355_1682) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_10382_1682 Mask@@52 o_13@@14 f_20@@13) (= (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@25) o_13@@14 f_20@@13) (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@21) o_13@@14 f_20@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@21) o_13@@14 f_20@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_22496_22501) ) (! (= (select (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_22481_53) ) (! (= (select (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_22481_10385) ) (! (= (select (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_22481_1218) ) (! (= (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_22514_22515) ) (! (= (select (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_10382_22501) ) (! (= (select (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_19150_53) ) (! (= (select (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_19163_19164) ) (! (= (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_23355_1682) ) (! (= (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_10382_10419) ) (! (= (select (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_26559_26564) ) (! (= (select (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_10418_53) ) (! (= (select (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_10418_10385) ) (! (= (select (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_10418_1682) ) (! (= (select (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_23822_23823) ) (! (= (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_19111) (SummandMask1 T@PolymorphicMapType_19111) (SummandMask2 T@PolymorphicMapType_19111) (o_2@@59 T@Ref) (f_4@@59 T@Field_22496_22501) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_19111) (SummandMask1@@0 T@PolymorphicMapType_19111) (SummandMask2@@0 T@PolymorphicMapType_19111) (o_2@@60 T@Ref) (f_4@@60 T@Field_22481_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_19111) (SummandMask1@@1 T@PolymorphicMapType_19111) (SummandMask2@@1 T@PolymorphicMapType_19111) (o_2@@61 T@Ref) (f_4@@61 T@Field_22481_10385) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_19111) (SummandMask1@@2 T@PolymorphicMapType_19111) (SummandMask2@@2 T@PolymorphicMapType_19111) (o_2@@62 T@Ref) (f_4@@62 T@Field_22481_1218) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_19111) (SummandMask1@@3 T@PolymorphicMapType_19111) (SummandMask2@@3 T@PolymorphicMapType_19111) (o_2@@63 T@Ref) (f_4@@63 T@Field_22514_22515) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_19111) (SummandMask1@@4 T@PolymorphicMapType_19111) (SummandMask2@@4 T@PolymorphicMapType_19111) (o_2@@64 T@Ref) (f_4@@64 T@Field_10382_22501) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_19111) (SummandMask1@@5 T@PolymorphicMapType_19111) (SummandMask2@@5 T@PolymorphicMapType_19111) (o_2@@65 T@Ref) (f_4@@65 T@Field_19150_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_19111) (SummandMask1@@6 T@PolymorphicMapType_19111) (SummandMask2@@6 T@PolymorphicMapType_19111) (o_2@@66 T@Ref) (f_4@@66 T@Field_19163_19164) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_19111) (SummandMask1@@7 T@PolymorphicMapType_19111) (SummandMask2@@7 T@PolymorphicMapType_19111) (o_2@@67 T@Ref) (f_4@@67 T@Field_23355_1682) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_19111) (SummandMask1@@8 T@PolymorphicMapType_19111) (SummandMask2@@8 T@PolymorphicMapType_19111) (o_2@@68 T@Ref) (f_4@@68 T@Field_10382_10419) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_19111) (SummandMask1@@9 T@PolymorphicMapType_19111) (SummandMask2@@9 T@PolymorphicMapType_19111) (o_2@@69 T@Ref) (f_4@@69 T@Field_26559_26564) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_19111) (SummandMask1@@10 T@PolymorphicMapType_19111) (SummandMask2@@10 T@PolymorphicMapType_19111) (o_2@@70 T@Ref) (f_4@@70 T@Field_10418_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_19111) (SummandMask1@@11 T@PolymorphicMapType_19111) (SummandMask2@@11 T@PolymorphicMapType_19111) (o_2@@71 T@Ref) (f_4@@71 T@Field_10418_10385) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_19111) (SummandMask1@@12 T@PolymorphicMapType_19111) (SummandMask2@@12 T@PolymorphicMapType_19111) (o_2@@72 T@Ref) (f_4@@72 T@Field_10418_1682) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_19111) (SummandMask1@@13 T@PolymorphicMapType_19111) (SummandMask2@@13 T@PolymorphicMapType_19111) (o_2@@73 T@Ref) (f_4@@73 T@Field_23822_23823) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_19090) (ExhaleHeap@@22 T@PolymorphicMapType_19090) (Mask@@53 T@PolymorphicMapType_19111) (pm_f_4@@5 T@Field_22514_22515) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_22481_10419 Mask@@53 null pm_f_4@@5) (IsPredicateField_10347_10348 pm_f_4@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4 T@Ref) (f_20@@14 T@Field_23355_1682) ) (!  (=> (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_4@@5))) o2_4 f_20@@14) (= (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@26) o2_4 f_20@@14) (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4 f_20@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4 f_20@@14))
)) (forall ((o2_4@@0 T@Ref) (f_20@@15 T@Field_19163_19164) ) (!  (=> (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_4@@5))) o2_4@@0 f_20@@15) (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@26) o2_4@@0 f_20@@15) (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@0 f_20@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@0 f_20@@15))
))) (forall ((o2_4@@1 T@Ref) (f_20@@16 T@Field_19150_53) ) (!  (=> (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_4@@5))) o2_4@@1 f_20@@16) (= (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@26) o2_4@@1 f_20@@16) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@1 f_20@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@1 f_20@@16))
))) (forall ((o2_4@@2 T@Ref) (f_20@@17 T@Field_10382_22501) ) (!  (=> (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_4@@5))) o2_4@@2 f_20@@17) (= (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@26) o2_4@@2 f_20@@17) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@2 f_20@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@2 f_20@@17))
))) (forall ((o2_4@@3 T@Ref) (f_20@@18 T@Field_10382_10419) ) (!  (=> (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_4@@5))) o2_4@@3 f_20@@18) (= (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@26) o2_4@@3 f_20@@18) (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@3 f_20@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@3 f_20@@18))
))) (forall ((o2_4@@4 T@Ref) (f_20@@19 T@Field_22481_1218) ) (!  (=> (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_4@@5))) o2_4@@4 f_20@@19) (= (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@26) o2_4@@4 f_20@@19) (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@4 f_20@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@4 f_20@@19))
))) (forall ((o2_4@@5 T@Ref) (f_20@@20 T@Field_22481_10385) ) (!  (=> (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_4@@5))) o2_4@@5 f_20@@20) (= (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@26) o2_4@@5 f_20@@20) (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@5 f_20@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@5 f_20@@20))
))) (forall ((o2_4@@6 T@Ref) (f_20@@21 T@Field_22481_53) ) (!  (=> (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_4@@5))) o2_4@@6 f_20@@21) (= (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@26) o2_4@@6 f_20@@21) (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@6 f_20@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@6 f_20@@21))
))) (forall ((o2_4@@7 T@Ref) (f_20@@22 T@Field_22496_22501) ) (!  (=> (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_4@@5))) o2_4@@7 f_20@@22) (= (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) o2_4@@7 f_20@@22) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@7 f_20@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@7 f_20@@22))
))) (forall ((o2_4@@8 T@Ref) (f_20@@23 T@Field_22514_22515) ) (!  (=> (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_4@@5))) o2_4@@8 f_20@@23) (= (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@26) o2_4@@8 f_20@@23) (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@8 f_20@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@8 f_20@@23))
))) (forall ((o2_4@@9 T@Ref) (f_20@@24 T@Field_10418_1682) ) (!  (=> (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_4@@5))) o2_4@@9 f_20@@24) (= (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@26) o2_4@@9 f_20@@24) (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@9 f_20@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@9 f_20@@24))
))) (forall ((o2_4@@10 T@Ref) (f_20@@25 T@Field_10418_10385) ) (!  (=> (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_4@@5))) o2_4@@10 f_20@@25) (= (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@26) o2_4@@10 f_20@@25) (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@10 f_20@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@10 f_20@@25))
))) (forall ((o2_4@@11 T@Ref) (f_20@@26 T@Field_10418_53) ) (!  (=> (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_4@@5))) o2_4@@11 f_20@@26) (= (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@26) o2_4@@11 f_20@@26) (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@11 f_20@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@11 f_20@@26))
))) (forall ((o2_4@@12 T@Ref) (f_20@@27 T@Field_26559_26564) ) (!  (=> (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_4@@5))) o2_4@@12 f_20@@27) (= (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@26) o2_4@@12 f_20@@27) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@12 f_20@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@12 f_20@@27))
))) (forall ((o2_4@@13 T@Ref) (f_20@@28 T@Field_23822_23823) ) (!  (=> (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_4@@5))) o2_4@@13 f_20@@28) (= (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@26) o2_4@@13 f_20@@28) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@13 f_20@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@22) o2_4@@13 f_20@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@22 Mask@@53) (IsPredicateField_10347_10348 pm_f_4@@5))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_19090) (ExhaleHeap@@23 T@PolymorphicMapType_19090) (Mask@@54 T@PolymorphicMapType_19111) (pm_f_4@@6 T@Field_23822_23823) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_10418_10419 Mask@@54 null pm_f_4@@6) (IsPredicateField_10418_10419 pm_f_4@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4@@14 T@Ref) (f_20@@29 T@Field_23355_1682) ) (!  (=> (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_4@@6))) o2_4@@14 f_20@@29) (= (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@27) o2_4@@14 f_20@@29) (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@14 f_20@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@14 f_20@@29))
)) (forall ((o2_4@@15 T@Ref) (f_20@@30 T@Field_19163_19164) ) (!  (=> (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_4@@6))) o2_4@@15 f_20@@30) (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@27) o2_4@@15 f_20@@30) (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@15 f_20@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@15 f_20@@30))
))) (forall ((o2_4@@16 T@Ref) (f_20@@31 T@Field_19150_53) ) (!  (=> (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_4@@6))) o2_4@@16 f_20@@31) (= (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@27) o2_4@@16 f_20@@31) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@16 f_20@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@16 f_20@@31))
))) (forall ((o2_4@@17 T@Ref) (f_20@@32 T@Field_10382_22501) ) (!  (=> (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_4@@6))) o2_4@@17 f_20@@32) (= (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@27) o2_4@@17 f_20@@32) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@17 f_20@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@17 f_20@@32))
))) (forall ((o2_4@@18 T@Ref) (f_20@@33 T@Field_10382_10419) ) (!  (=> (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_4@@6))) o2_4@@18 f_20@@33) (= (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@27) o2_4@@18 f_20@@33) (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@18 f_20@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@18 f_20@@33))
))) (forall ((o2_4@@19 T@Ref) (f_20@@34 T@Field_22481_1218) ) (!  (=> (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_4@@6))) o2_4@@19 f_20@@34) (= (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@27) o2_4@@19 f_20@@34) (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@19 f_20@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@19 f_20@@34))
))) (forall ((o2_4@@20 T@Ref) (f_20@@35 T@Field_22481_10385) ) (!  (=> (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_4@@6))) o2_4@@20 f_20@@35) (= (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@27) o2_4@@20 f_20@@35) (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@20 f_20@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@20 f_20@@35))
))) (forall ((o2_4@@21 T@Ref) (f_20@@36 T@Field_22481_53) ) (!  (=> (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_4@@6))) o2_4@@21 f_20@@36) (= (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@27) o2_4@@21 f_20@@36) (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@21 f_20@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@21 f_20@@36))
))) (forall ((o2_4@@22 T@Ref) (f_20@@37 T@Field_22496_22501) ) (!  (=> (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_4@@6))) o2_4@@22 f_20@@37) (= (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@27) o2_4@@22 f_20@@37) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@22 f_20@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@22 f_20@@37))
))) (forall ((o2_4@@23 T@Ref) (f_20@@38 T@Field_22514_22515) ) (!  (=> (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_4@@6))) o2_4@@23 f_20@@38) (= (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@27) o2_4@@23 f_20@@38) (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@23 f_20@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@23 f_20@@38))
))) (forall ((o2_4@@24 T@Ref) (f_20@@39 T@Field_10418_1682) ) (!  (=> (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_4@@6))) o2_4@@24 f_20@@39) (= (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@27) o2_4@@24 f_20@@39) (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@24 f_20@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@24 f_20@@39))
))) (forall ((o2_4@@25 T@Ref) (f_20@@40 T@Field_10418_10385) ) (!  (=> (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_4@@6))) o2_4@@25 f_20@@40) (= (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@27) o2_4@@25 f_20@@40) (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@25 f_20@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@25 f_20@@40))
))) (forall ((o2_4@@26 T@Ref) (f_20@@41 T@Field_10418_53) ) (!  (=> (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_4@@6))) o2_4@@26 f_20@@41) (= (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@27) o2_4@@26 f_20@@41) (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@26 f_20@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@26 f_20@@41))
))) (forall ((o2_4@@27 T@Ref) (f_20@@42 T@Field_26559_26564) ) (!  (=> (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_4@@6))) o2_4@@27 f_20@@42) (= (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) o2_4@@27 f_20@@42) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@27 f_20@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@27 f_20@@42))
))) (forall ((o2_4@@28 T@Ref) (f_20@@43 T@Field_23822_23823) ) (!  (=> (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_4@@6))) o2_4@@28 f_20@@43) (= (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@27) o2_4@@28 f_20@@43) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@28 f_20@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@23) o2_4@@28 f_20@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@23 Mask@@54) (IsPredicateField_10418_10419 pm_f_4@@6))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_19090) (ExhaleHeap@@24 T@PolymorphicMapType_19090) (Mask@@55 T@PolymorphicMapType_19111) (pm_f_4@@7 T@Field_10382_10419) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_10382_10419 Mask@@55 null pm_f_4@@7) (IsPredicateField_10382_65874 pm_f_4@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4@@29 T@Ref) (f_20@@44 T@Field_23355_1682) ) (!  (=> (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_4@@7))) o2_4@@29 f_20@@44) (= (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@28) o2_4@@29 f_20@@44) (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@29 f_20@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@29 f_20@@44))
)) (forall ((o2_4@@30 T@Ref) (f_20@@45 T@Field_19163_19164) ) (!  (=> (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_4@@7))) o2_4@@30 f_20@@45) (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@28) o2_4@@30 f_20@@45) (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@30 f_20@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@30 f_20@@45))
))) (forall ((o2_4@@31 T@Ref) (f_20@@46 T@Field_19150_53) ) (!  (=> (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_4@@7))) o2_4@@31 f_20@@46) (= (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@28) o2_4@@31 f_20@@46) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@31 f_20@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@31 f_20@@46))
))) (forall ((o2_4@@32 T@Ref) (f_20@@47 T@Field_10382_22501) ) (!  (=> (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_4@@7))) o2_4@@32 f_20@@47) (= (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) o2_4@@32 f_20@@47) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@32 f_20@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@32 f_20@@47))
))) (forall ((o2_4@@33 T@Ref) (f_20@@48 T@Field_10382_10419) ) (!  (=> (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_4@@7))) o2_4@@33 f_20@@48) (= (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@28) o2_4@@33 f_20@@48) (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@33 f_20@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@33 f_20@@48))
))) (forall ((o2_4@@34 T@Ref) (f_20@@49 T@Field_22481_1218) ) (!  (=> (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_4@@7))) o2_4@@34 f_20@@49) (= (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@28) o2_4@@34 f_20@@49) (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@34 f_20@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@34 f_20@@49))
))) (forall ((o2_4@@35 T@Ref) (f_20@@50 T@Field_22481_10385) ) (!  (=> (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_4@@7))) o2_4@@35 f_20@@50) (= (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@28) o2_4@@35 f_20@@50) (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@35 f_20@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@35 f_20@@50))
))) (forall ((o2_4@@36 T@Ref) (f_20@@51 T@Field_22481_53) ) (!  (=> (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_4@@7))) o2_4@@36 f_20@@51) (= (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@28) o2_4@@36 f_20@@51) (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@36 f_20@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@36 f_20@@51))
))) (forall ((o2_4@@37 T@Ref) (f_20@@52 T@Field_22496_22501) ) (!  (=> (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_4@@7))) o2_4@@37 f_20@@52) (= (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@28) o2_4@@37 f_20@@52) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@37 f_20@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@37 f_20@@52))
))) (forall ((o2_4@@38 T@Ref) (f_20@@53 T@Field_22514_22515) ) (!  (=> (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_4@@7))) o2_4@@38 f_20@@53) (= (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@28) o2_4@@38 f_20@@53) (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@38 f_20@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@38 f_20@@53))
))) (forall ((o2_4@@39 T@Ref) (f_20@@54 T@Field_10418_1682) ) (!  (=> (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_4@@7))) o2_4@@39 f_20@@54) (= (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@28) o2_4@@39 f_20@@54) (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@39 f_20@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@39 f_20@@54))
))) (forall ((o2_4@@40 T@Ref) (f_20@@55 T@Field_10418_10385) ) (!  (=> (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_4@@7))) o2_4@@40 f_20@@55) (= (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@28) o2_4@@40 f_20@@55) (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@40 f_20@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@40 f_20@@55))
))) (forall ((o2_4@@41 T@Ref) (f_20@@56 T@Field_10418_53) ) (!  (=> (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_4@@7))) o2_4@@41 f_20@@56) (= (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@28) o2_4@@41 f_20@@56) (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@41 f_20@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@41 f_20@@56))
))) (forall ((o2_4@@42 T@Ref) (f_20@@57 T@Field_26559_26564) ) (!  (=> (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_4@@7))) o2_4@@42 f_20@@57) (= (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@28) o2_4@@42 f_20@@57) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@42 f_20@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@42 f_20@@57))
))) (forall ((o2_4@@43 T@Ref) (f_20@@58 T@Field_23822_23823) ) (!  (=> (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_4@@7))) o2_4@@43 f_20@@58) (= (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@28) o2_4@@43 f_20@@58) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@43 f_20@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@24) o2_4@@43 f_20@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@24 Mask@@55) (IsPredicateField_10382_65874 pm_f_4@@7))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_19090) (ExhaleHeap@@25 T@PolymorphicMapType_19090) (Mask@@56 T@PolymorphicMapType_19111) (pm_f_4@@8 T@Field_22514_22515) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_22481_10419 Mask@@56 null pm_f_4@@8) (IsWandField_10347_10348 pm_f_4@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4@@44 T@Ref) (f_20@@59 T@Field_23355_1682) ) (!  (=> (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_4@@8))) o2_4@@44 f_20@@59) (= (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@29) o2_4@@44 f_20@@59) (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@44 f_20@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@44 f_20@@59))
)) (forall ((o2_4@@45 T@Ref) (f_20@@60 T@Field_19163_19164) ) (!  (=> (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_4@@8))) o2_4@@45 f_20@@60) (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@29) o2_4@@45 f_20@@60) (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@45 f_20@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@45 f_20@@60))
))) (forall ((o2_4@@46 T@Ref) (f_20@@61 T@Field_19150_53) ) (!  (=> (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_4@@8))) o2_4@@46 f_20@@61) (= (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@29) o2_4@@46 f_20@@61) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@46 f_20@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@46 f_20@@61))
))) (forall ((o2_4@@47 T@Ref) (f_20@@62 T@Field_10382_22501) ) (!  (=> (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_4@@8))) o2_4@@47 f_20@@62) (= (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@29) o2_4@@47 f_20@@62) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@47 f_20@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@47 f_20@@62))
))) (forall ((o2_4@@48 T@Ref) (f_20@@63 T@Field_10382_10419) ) (!  (=> (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_4@@8))) o2_4@@48 f_20@@63) (= (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@29) o2_4@@48 f_20@@63) (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@48 f_20@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@48 f_20@@63))
))) (forall ((o2_4@@49 T@Ref) (f_20@@64 T@Field_22481_1218) ) (!  (=> (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_4@@8))) o2_4@@49 f_20@@64) (= (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@29) o2_4@@49 f_20@@64) (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@49 f_20@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@49 f_20@@64))
))) (forall ((o2_4@@50 T@Ref) (f_20@@65 T@Field_22481_10385) ) (!  (=> (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_4@@8))) o2_4@@50 f_20@@65) (= (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@29) o2_4@@50 f_20@@65) (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@50 f_20@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@50 f_20@@65))
))) (forall ((o2_4@@51 T@Ref) (f_20@@66 T@Field_22481_53) ) (!  (=> (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_4@@8))) o2_4@@51 f_20@@66) (= (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@29) o2_4@@51 f_20@@66) (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@51 f_20@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@51 f_20@@66))
))) (forall ((o2_4@@52 T@Ref) (f_20@@67 T@Field_22496_22501) ) (!  (=> (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_4@@8))) o2_4@@52 f_20@@67) (= (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) o2_4@@52 f_20@@67) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@52 f_20@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@52 f_20@@67))
))) (forall ((o2_4@@53 T@Ref) (f_20@@68 T@Field_22514_22515) ) (!  (=> (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_4@@8))) o2_4@@53 f_20@@68) (= (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@29) o2_4@@53 f_20@@68) (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@53 f_20@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@53 f_20@@68))
))) (forall ((o2_4@@54 T@Ref) (f_20@@69 T@Field_10418_1682) ) (!  (=> (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_4@@8))) o2_4@@54 f_20@@69) (= (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@29) o2_4@@54 f_20@@69) (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@54 f_20@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@54 f_20@@69))
))) (forall ((o2_4@@55 T@Ref) (f_20@@70 T@Field_10418_10385) ) (!  (=> (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_4@@8))) o2_4@@55 f_20@@70) (= (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@29) o2_4@@55 f_20@@70) (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@55 f_20@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@55 f_20@@70))
))) (forall ((o2_4@@56 T@Ref) (f_20@@71 T@Field_10418_53) ) (!  (=> (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_4@@8))) o2_4@@56 f_20@@71) (= (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@29) o2_4@@56 f_20@@71) (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@56 f_20@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@56 f_20@@71))
))) (forall ((o2_4@@57 T@Ref) (f_20@@72 T@Field_26559_26564) ) (!  (=> (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_4@@8))) o2_4@@57 f_20@@72) (= (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@29) o2_4@@57 f_20@@72) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@57 f_20@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@57 f_20@@72))
))) (forall ((o2_4@@58 T@Ref) (f_20@@73 T@Field_23822_23823) ) (!  (=> (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_4@@8))) o2_4@@58 f_20@@73) (= (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@29) o2_4@@58 f_20@@73) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@58 f_20@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@25) o2_4@@58 f_20@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@25 Mask@@56) (IsWandField_10347_10348 pm_f_4@@8))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_19090) (ExhaleHeap@@26 T@PolymorphicMapType_19090) (Mask@@57 T@PolymorphicMapType_19111) (pm_f_4@@9 T@Field_23822_23823) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_10418_10419 Mask@@57 null pm_f_4@@9) (IsWandField_10418_71223 pm_f_4@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4@@59 T@Ref) (f_20@@74 T@Field_23355_1682) ) (!  (=> (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_4@@9))) o2_4@@59 f_20@@74) (= (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@30) o2_4@@59 f_20@@74) (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@59 f_20@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@59 f_20@@74))
)) (forall ((o2_4@@60 T@Ref) (f_20@@75 T@Field_19163_19164) ) (!  (=> (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_4@@9))) o2_4@@60 f_20@@75) (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@30) o2_4@@60 f_20@@75) (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@60 f_20@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@60 f_20@@75))
))) (forall ((o2_4@@61 T@Ref) (f_20@@76 T@Field_19150_53) ) (!  (=> (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_4@@9))) o2_4@@61 f_20@@76) (= (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@30) o2_4@@61 f_20@@76) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@61 f_20@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@61 f_20@@76))
))) (forall ((o2_4@@62 T@Ref) (f_20@@77 T@Field_10382_22501) ) (!  (=> (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_4@@9))) o2_4@@62 f_20@@77) (= (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@30) o2_4@@62 f_20@@77) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@62 f_20@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@62 f_20@@77))
))) (forall ((o2_4@@63 T@Ref) (f_20@@78 T@Field_10382_10419) ) (!  (=> (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_4@@9))) o2_4@@63 f_20@@78) (= (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@30) o2_4@@63 f_20@@78) (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@63 f_20@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@63 f_20@@78))
))) (forall ((o2_4@@64 T@Ref) (f_20@@79 T@Field_22481_1218) ) (!  (=> (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_4@@9))) o2_4@@64 f_20@@79) (= (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@30) o2_4@@64 f_20@@79) (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@64 f_20@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@64 f_20@@79))
))) (forall ((o2_4@@65 T@Ref) (f_20@@80 T@Field_22481_10385) ) (!  (=> (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_4@@9))) o2_4@@65 f_20@@80) (= (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@30) o2_4@@65 f_20@@80) (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@65 f_20@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@65 f_20@@80))
))) (forall ((o2_4@@66 T@Ref) (f_20@@81 T@Field_22481_53) ) (!  (=> (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_4@@9))) o2_4@@66 f_20@@81) (= (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@30) o2_4@@66 f_20@@81) (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@66 f_20@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@66 f_20@@81))
))) (forall ((o2_4@@67 T@Ref) (f_20@@82 T@Field_22496_22501) ) (!  (=> (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_4@@9))) o2_4@@67 f_20@@82) (= (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@30) o2_4@@67 f_20@@82) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@67 f_20@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@67 f_20@@82))
))) (forall ((o2_4@@68 T@Ref) (f_20@@83 T@Field_22514_22515) ) (!  (=> (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_4@@9))) o2_4@@68 f_20@@83) (= (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@30) o2_4@@68 f_20@@83) (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@68 f_20@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@68 f_20@@83))
))) (forall ((o2_4@@69 T@Ref) (f_20@@84 T@Field_10418_1682) ) (!  (=> (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_4@@9))) o2_4@@69 f_20@@84) (= (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@30) o2_4@@69 f_20@@84) (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@69 f_20@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@69 f_20@@84))
))) (forall ((o2_4@@70 T@Ref) (f_20@@85 T@Field_10418_10385) ) (!  (=> (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_4@@9))) o2_4@@70 f_20@@85) (= (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@30) o2_4@@70 f_20@@85) (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@70 f_20@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@70 f_20@@85))
))) (forall ((o2_4@@71 T@Ref) (f_20@@86 T@Field_10418_53) ) (!  (=> (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_4@@9))) o2_4@@71 f_20@@86) (= (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@30) o2_4@@71 f_20@@86) (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@71 f_20@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@71 f_20@@86))
))) (forall ((o2_4@@72 T@Ref) (f_20@@87 T@Field_26559_26564) ) (!  (=> (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_4@@9))) o2_4@@72 f_20@@87) (= (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) o2_4@@72 f_20@@87) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@72 f_20@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@72 f_20@@87))
))) (forall ((o2_4@@73 T@Ref) (f_20@@88 T@Field_23822_23823) ) (!  (=> (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_4@@9))) o2_4@@73 f_20@@88) (= (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@30) o2_4@@73 f_20@@88) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@73 f_20@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@26) o2_4@@73 f_20@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@26 Mask@@57) (IsWandField_10418_71223 pm_f_4@@9))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_19090) (ExhaleHeap@@27 T@PolymorphicMapType_19090) (Mask@@58 T@PolymorphicMapType_19111) (pm_f_4@@10 T@Field_10382_10419) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_10382_10419 Mask@@58 null pm_f_4@@10) (IsWandField_10382_70866 pm_f_4@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4@@74 T@Ref) (f_20@@89 T@Field_23355_1682) ) (!  (=> (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_4@@10))) o2_4@@74 f_20@@89) (= (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@31) o2_4@@74 f_20@@89) (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@74 f_20@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@74 f_20@@89))
)) (forall ((o2_4@@75 T@Ref) (f_20@@90 T@Field_19163_19164) ) (!  (=> (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_4@@10))) o2_4@@75 f_20@@90) (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@31) o2_4@@75 f_20@@90) (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@75 f_20@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@75 f_20@@90))
))) (forall ((o2_4@@76 T@Ref) (f_20@@91 T@Field_19150_53) ) (!  (=> (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_4@@10))) o2_4@@76 f_20@@91) (= (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@31) o2_4@@76 f_20@@91) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@76 f_20@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@76 f_20@@91))
))) (forall ((o2_4@@77 T@Ref) (f_20@@92 T@Field_10382_22501) ) (!  (=> (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_4@@10))) o2_4@@77 f_20@@92) (= (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) o2_4@@77 f_20@@92) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@77 f_20@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@77 f_20@@92))
))) (forall ((o2_4@@78 T@Ref) (f_20@@93 T@Field_10382_10419) ) (!  (=> (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_4@@10))) o2_4@@78 f_20@@93) (= (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@31) o2_4@@78 f_20@@93) (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@78 f_20@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@78 f_20@@93))
))) (forall ((o2_4@@79 T@Ref) (f_20@@94 T@Field_22481_1218) ) (!  (=> (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_4@@10))) o2_4@@79 f_20@@94) (= (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@31) o2_4@@79 f_20@@94) (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@79 f_20@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@79 f_20@@94))
))) (forall ((o2_4@@80 T@Ref) (f_20@@95 T@Field_22481_10385) ) (!  (=> (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_4@@10))) o2_4@@80 f_20@@95) (= (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@31) o2_4@@80 f_20@@95) (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@80 f_20@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@80 f_20@@95))
))) (forall ((o2_4@@81 T@Ref) (f_20@@96 T@Field_22481_53) ) (!  (=> (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_4@@10))) o2_4@@81 f_20@@96) (= (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@31) o2_4@@81 f_20@@96) (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@81 f_20@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@81 f_20@@96))
))) (forall ((o2_4@@82 T@Ref) (f_20@@97 T@Field_22496_22501) ) (!  (=> (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_4@@10))) o2_4@@82 f_20@@97) (= (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@31) o2_4@@82 f_20@@97) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@82 f_20@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@82 f_20@@97))
))) (forall ((o2_4@@83 T@Ref) (f_20@@98 T@Field_22514_22515) ) (!  (=> (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_4@@10))) o2_4@@83 f_20@@98) (= (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@31) o2_4@@83 f_20@@98) (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@83 f_20@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@83 f_20@@98))
))) (forall ((o2_4@@84 T@Ref) (f_20@@99 T@Field_10418_1682) ) (!  (=> (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_4@@10))) o2_4@@84 f_20@@99) (= (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@31) o2_4@@84 f_20@@99) (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@84 f_20@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@84 f_20@@99))
))) (forall ((o2_4@@85 T@Ref) (f_20@@100 T@Field_10418_10385) ) (!  (=> (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_4@@10))) o2_4@@85 f_20@@100) (= (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@31) o2_4@@85 f_20@@100) (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@85 f_20@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@85 f_20@@100))
))) (forall ((o2_4@@86 T@Ref) (f_20@@101 T@Field_10418_53) ) (!  (=> (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_4@@10))) o2_4@@86 f_20@@101) (= (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@31) o2_4@@86 f_20@@101) (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@86 f_20@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@86 f_20@@101))
))) (forall ((o2_4@@87 T@Ref) (f_20@@102 T@Field_26559_26564) ) (!  (=> (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_4@@10))) o2_4@@87 f_20@@102) (= (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@31) o2_4@@87 f_20@@102) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@87 f_20@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@87 f_20@@102))
))) (forall ((o2_4@@88 T@Ref) (f_20@@103 T@Field_23822_23823) ) (!  (=> (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_4@@10))) o2_4@@88 f_20@@103) (= (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@31) o2_4@@88 f_20@@103) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@88 f_20@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@27) o2_4@@88 f_20@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@27 Mask@@58) (IsWandField_10382_70866 pm_f_4@@10))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_19090) (Mask@@59 T@PolymorphicMapType_19111) (ys@@5 T@Ref) ) (!  (=> (and (state Heap@@32 Mask@@59) (< AssumeFunctionsAbove 0)) (= (sum_rec Heap@@32 ys@@5) (+ (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@32) ys@@5 val) (ite (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@32) ys@@5 next) null) 0 (|sum_rec'| Heap@@32 (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@32) ys@@5 next))))))
 :qid |stdinbpl.244:15|
 :skolemid |31|
 :pattern ( (state Heap@@32 Mask@@59) (sum_rec Heap@@32 ys@@5))
 :pattern ( (state Heap@@32 Mask@@59) (|sum_rec#triggerStateless| ys@@5) (|List#trigger_10418| Heap@@32 (List ys@@5)))
)))
(assert (forall ((arg1 Bool) (arg2 T@Ref) (arg3 T@Ref) (arg4 Int) (arg5 T@Ref) (arg6 T@Ref) (arg7 Int) (arg1_2 Bool) (arg2_2 T@Ref) (arg3_2 T@Ref) (arg4_2 Int) (arg5_2 T@Ref) (arg6_2 T@Ref) (arg7_2 Int) ) (!  (=> (= (wand arg1 arg2 arg3 arg4 arg5 arg6 arg7) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2)) (and (= arg1 arg1_2) (and (= arg2 arg2_2) (and (= arg3 arg3_2) (and (= arg4 arg4_2) (and (= arg5 arg5_2) (and (= arg6 arg6_2) (= arg7 arg7_2))))))))
 :qid |stdinbpl.211:15|
 :skolemid |28|
 :pattern ( (wand arg1 arg2 arg3 arg4 arg5 arg6 arg7) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_19090) (Mask@@60 T@PolymorphicMapType_19111) (ys@@6 T@Ref) ) (!  (=> (state Heap@@33 Mask@@60) (= (|sum_rec'| Heap@@33 ys@@6) (|sum_rec#frame| (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@33) null (List ys@@6)) ys@@6)))
 :qid |stdinbpl.251:15|
 :skolemid |32|
 :pattern ( (state Heap@@33 Mask@@60) (|sum_rec'| Heap@@33 ys@@6))
 :pattern ( (state Heap@@33 Mask@@60) (|sum_rec#triggerStateless| ys@@6) (|List#trigger_10418| Heap@@33 (List ys@@6)))
)))
(assert (forall ((ys@@7 T@Ref) ) (! (= (getPredWandId_10418_10419 (List ys@@7)) 0)
 :qid |stdinbpl.375:15|
 :skolemid |36|
 :pattern ( (List ys@@7))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_19090) (o_12 T@Ref) (f_21 T@Field_22496_22501) (v T@PolymorphicMapType_19639) ) (! (succHeap Heap@@34 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@34) (store (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@34) o_12 f_21 v) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@34) (store (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@34) o_12 f_21 v) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_19090) (o_12@@0 T@Ref) (f_21@@0 T@Field_22514_22515) (v@@0 T@FrameType) ) (! (succHeap Heap@@35 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@35) (store (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@35) o_12@@0 f_21@@0 v@@0) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@35) (store (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@35) o_12@@0 f_21@@0 v@@0) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_19090) (o_12@@1 T@Ref) (f_21@@1 T@Field_22481_1218) (v@@1 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@36) (store (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@36) o_12@@1 f_21@@1 v@@1) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@36) (store (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@36) o_12@@1 f_21@@1 v@@1) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_19090) (o_12@@2 T@Ref) (f_21@@2 T@Field_22481_10385) (v@@2 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@37) (store (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@37) o_12@@2 f_21@@2 v@@2) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@37) (store (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@37) o_12@@2 f_21@@2 v@@2) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_19090) (o_12@@3 T@Ref) (f_21@@3 T@Field_22481_53) (v@@3 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@38) (store (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@38) o_12@@3 f_21@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@38) (store (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@38) o_12@@3 f_21@@3 v@@3)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_19090) (o_12@@4 T@Ref) (f_21@@4 T@Field_26559_26564) (v@@4 T@PolymorphicMapType_19639) ) (! (succHeap Heap@@39 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@39) (store (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@39) o_12@@4 f_21@@4 v@@4) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@39) (store (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@39) o_12@@4 f_21@@4 v@@4) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_19090) (o_12@@5 T@Ref) (f_21@@5 T@Field_23822_23823) (v@@5 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@40) (store (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@40) o_12@@5 f_21@@5 v@@5) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@40) (store (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@40) o_12@@5 f_21@@5 v@@5) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_19090) (o_12@@6 T@Ref) (f_21@@6 T@Field_10418_1682) (v@@6 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@41) (store (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@41) o_12@@6 f_21@@6 v@@6) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@41) (store (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@41) o_12@@6 f_21@@6 v@@6) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_19090) (o_12@@7 T@Ref) (f_21@@7 T@Field_10418_10385) (v@@7 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@42) (store (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@42) o_12@@7 f_21@@7 v@@7) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@42) (store (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@42) o_12@@7 f_21@@7 v@@7) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_19090) (o_12@@8 T@Ref) (f_21@@8 T@Field_10418_53) (v@@8 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@43) (store (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@43) o_12@@8 f_21@@8 v@@8) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@43) (store (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@43) o_12@@8 f_21@@8 v@@8) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_19090) (o_12@@9 T@Ref) (f_21@@9 T@Field_10382_22501) (v@@9 T@PolymorphicMapType_19639) ) (! (succHeap Heap@@44 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@44) (store (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@44) o_12@@9 f_21@@9 v@@9) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@44) (store (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@44) o_12@@9 f_21@@9 v@@9) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_19090) (o_12@@10 T@Ref) (f_21@@10 T@Field_10382_10419) (v@@10 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@45) (store (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@45) o_12@@10 f_21@@10 v@@10) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@45) (store (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@45) o_12@@10 f_21@@10 v@@10) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_19090) (o_12@@11 T@Ref) (f_21@@11 T@Field_23355_1682) (v@@11 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@46) (store (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@46) o_12@@11 f_21@@11 v@@11) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@46) (store (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@46) o_12@@11 f_21@@11 v@@11) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_19090) (o_12@@12 T@Ref) (f_21@@12 T@Field_19163_19164) (v@@12 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@47) (store (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@47) o_12@@12 f_21@@12 v@@12) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@47) (store (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@47) o_12@@12 f_21@@12 v@@12) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_19090) (o_12@@13 T@Ref) (f_21@@13 T@Field_19150_53) (v@@13 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_19090 (store (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@48) o_12@@13 f_21@@13 v@@13) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (store (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@48) o_12@@13 f_21@@13 v@@13) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@48)))
)))
(assert (forall ((ys@@8 T@Ref) ) (! (= (PredicateMaskField_10418 (List ys@@8)) (|List#sm| ys@@8))
 :qid |stdinbpl.367:15|
 :skolemid |34|
 :pattern ( (PredicateMaskField_10418 (List ys@@8)))
)))
(assert (forall ((arg1@@0 Bool) (arg2@@0 T@Ref) (arg3@@0 T@Ref) (arg4@@0 Int) (arg5@@0 T@Ref) (arg6@@0 T@Ref) (arg7@@0 Int) ) (! (= (|wand#sm| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0) (WandMaskField_10347 (|wand#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0)))
 :qid |stdinbpl.203:15|
 :skolemid |26|
 :pattern ( (WandMaskField_10347 (|wand#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0)))
)))
(assert (forall ((o_12@@14 T@Ref) (f_19 T@Field_19163_19164) (Heap@@49 T@PolymorphicMapType_19090) ) (!  (=> (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@49) o_12@@14 $allocated) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@49) (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@49) o_12@@14 f_19) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@49) o_12@@14 f_19))
)))
(assert (forall ((p@@3 T@Field_22514_22515) (v_1@@2 T@FrameType) (q T@Field_22514_22515) (w@@2 T@FrameType) (r T@Field_22514_22515) (u T@FrameType) ) (!  (=> (and (InsidePredicate_22481_22481 p@@3 v_1@@2 q w@@2) (InsidePredicate_22481_22481 q w@@2 r u)) (InsidePredicate_22481_22481 p@@3 v_1@@2 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22481_22481 p@@3 v_1@@2 q w@@2) (InsidePredicate_22481_22481 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_22514_22515) (v_1@@3 T@FrameType) (q@@0 T@Field_22514_22515) (w@@3 T@FrameType) (r@@0 T@Field_10382_10419) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_22481_22481 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_22481_19150 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_22481_19150 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22481_22481 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_22481_19150 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_22514_22515) (v_1@@4 T@FrameType) (q@@1 T@Field_22514_22515) (w@@4 T@FrameType) (r@@1 T@Field_23822_23823) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_22481_22481 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_22481_10418 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_22481_10418 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22481_22481 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_22481_10418 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_22514_22515) (v_1@@5 T@FrameType) (q@@2 T@Field_10382_10419) (w@@5 T@FrameType) (r@@2 T@Field_22514_22515) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_22481_19150 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_19150_22481 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_22481_22481 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22481_19150 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_19150_22481 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_22514_22515) (v_1@@6 T@FrameType) (q@@3 T@Field_10382_10419) (w@@6 T@FrameType) (r@@3 T@Field_10382_10419) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_22481_19150 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_19150_19150 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_22481_19150 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22481_19150 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_19150_19150 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_22514_22515) (v_1@@7 T@FrameType) (q@@4 T@Field_10382_10419) (w@@7 T@FrameType) (r@@4 T@Field_23822_23823) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_22481_19150 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_19150_10418 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_22481_10418 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22481_19150 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_19150_10418 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_22514_22515) (v_1@@8 T@FrameType) (q@@5 T@Field_23822_23823) (w@@8 T@FrameType) (r@@5 T@Field_22514_22515) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_22481_10418 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_10418_22481 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_22481_22481 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22481_10418 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_10418_22481 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_22514_22515) (v_1@@9 T@FrameType) (q@@6 T@Field_23822_23823) (w@@9 T@FrameType) (r@@6 T@Field_10382_10419) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_22481_10418 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_10418_19150 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_22481_19150 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22481_10418 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_10418_19150 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_22514_22515) (v_1@@10 T@FrameType) (q@@7 T@Field_23822_23823) (w@@10 T@FrameType) (r@@7 T@Field_23822_23823) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_22481_10418 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_10418_10418 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_22481_10418 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22481_10418 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_10418_10418 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_10382_10419) (v_1@@11 T@FrameType) (q@@8 T@Field_22514_22515) (w@@11 T@FrameType) (r@@8 T@Field_22514_22515) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_19150_22481 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_22481_22481 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_19150_22481 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19150_22481 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_22481_22481 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_10382_10419) (v_1@@12 T@FrameType) (q@@9 T@Field_22514_22515) (w@@12 T@FrameType) (r@@9 T@Field_10382_10419) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_19150_22481 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_22481_19150 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_19150_19150 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19150_22481 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_22481_19150 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_10382_10419) (v_1@@13 T@FrameType) (q@@10 T@Field_22514_22515) (w@@13 T@FrameType) (r@@10 T@Field_23822_23823) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_19150_22481 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_22481_10418 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_19150_10418 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19150_22481 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_22481_10418 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_10382_10419) (v_1@@14 T@FrameType) (q@@11 T@Field_10382_10419) (w@@14 T@FrameType) (r@@11 T@Field_22514_22515) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_19150_19150 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_19150_22481 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_19150_22481 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19150_19150 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_19150_22481 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_10382_10419) (v_1@@15 T@FrameType) (q@@12 T@Field_10382_10419) (w@@15 T@FrameType) (r@@12 T@Field_10382_10419) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_19150_19150 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_19150_19150 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_19150_19150 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19150_19150 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_19150_19150 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_10382_10419) (v_1@@16 T@FrameType) (q@@13 T@Field_10382_10419) (w@@16 T@FrameType) (r@@13 T@Field_23822_23823) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_19150_19150 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_19150_10418 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_19150_10418 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19150_19150 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_19150_10418 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_10382_10419) (v_1@@17 T@FrameType) (q@@14 T@Field_23822_23823) (w@@17 T@FrameType) (r@@14 T@Field_22514_22515) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_19150_10418 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_10418_22481 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_19150_22481 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19150_10418 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_10418_22481 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_10382_10419) (v_1@@18 T@FrameType) (q@@15 T@Field_23822_23823) (w@@18 T@FrameType) (r@@15 T@Field_10382_10419) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_19150_10418 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_10418_19150 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_19150_19150 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19150_10418 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_10418_19150 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_10382_10419) (v_1@@19 T@FrameType) (q@@16 T@Field_23822_23823) (w@@19 T@FrameType) (r@@16 T@Field_23822_23823) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_19150_10418 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_10418_10418 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_19150_10418 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19150_10418 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_10418_10418 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_23822_23823) (v_1@@20 T@FrameType) (q@@17 T@Field_22514_22515) (w@@20 T@FrameType) (r@@17 T@Field_22514_22515) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_10418_22481 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_22481_22481 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_10418_22481 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10418_22481 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_22481_22481 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_23822_23823) (v_1@@21 T@FrameType) (q@@18 T@Field_22514_22515) (w@@21 T@FrameType) (r@@18 T@Field_10382_10419) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_10418_22481 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_22481_19150 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_10418_19150 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10418_22481 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_22481_19150 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_23822_23823) (v_1@@22 T@FrameType) (q@@19 T@Field_22514_22515) (w@@22 T@FrameType) (r@@19 T@Field_23822_23823) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_10418_22481 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_22481_10418 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_10418_10418 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10418_22481 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_22481_10418 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_23822_23823) (v_1@@23 T@FrameType) (q@@20 T@Field_10382_10419) (w@@23 T@FrameType) (r@@20 T@Field_22514_22515) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_10418_19150 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_19150_22481 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_10418_22481 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10418_19150 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_19150_22481 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_23822_23823) (v_1@@24 T@FrameType) (q@@21 T@Field_10382_10419) (w@@24 T@FrameType) (r@@21 T@Field_10382_10419) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_10418_19150 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_19150_19150 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_10418_19150 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10418_19150 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_19150_19150 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_23822_23823) (v_1@@25 T@FrameType) (q@@22 T@Field_10382_10419) (w@@25 T@FrameType) (r@@22 T@Field_23822_23823) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_10418_19150 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_19150_10418 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_10418_10418 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10418_19150 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_19150_10418 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_23822_23823) (v_1@@26 T@FrameType) (q@@23 T@Field_23822_23823) (w@@26 T@FrameType) (r@@23 T@Field_22514_22515) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_10418_10418 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_10418_22481 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_10418_22481 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10418_10418 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_10418_22481 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_23822_23823) (v_1@@27 T@FrameType) (q@@24 T@Field_23822_23823) (w@@27 T@FrameType) (r@@24 T@Field_10382_10419) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_10418_10418 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_10418_19150 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_10418_19150 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10418_10418 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_10418_19150 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_23822_23823) (v_1@@28 T@FrameType) (q@@25 T@Field_23822_23823) (w@@28 T@FrameType) (r@@25 T@Field_23822_23823) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_10418_10418 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_10418_10418 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_10418_10418 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10418_10418 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_10418_10418 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((arg1@@1 Bool) (arg2@@1 T@Ref) (arg3@@1 T@Ref) (arg4@@1 Int) (arg5@@1 T@Ref) (arg6@@1 T@Ref) (arg7@@1 Int) ) (! (IsWandField_10334_1218 (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1))
 :qid |stdinbpl.187:15|
 :skolemid |22|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1))
)))
(assert (forall ((arg1@@2 Bool) (arg2@@2 T@Ref) (arg3@@2 T@Ref) (arg4@@2 Int) (arg5@@2 T@Ref) (arg6@@2 T@Ref) (arg7@@2 Int) ) (! (IsWandField_10347_10348 (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2))
 :qid |stdinbpl.191:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2))
)))
(assert (forall ((arg1@@3 Bool) (arg2@@3 T@Ref) (arg3@@3 T@Ref) (arg4@@3 Int) (arg5@@3 T@Ref) (arg6@@3 T@Ref) (arg7@@3 Int) ) (!  (not (IsPredicateField_10334_1218 (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3)))
 :qid |stdinbpl.195:15|
 :skolemid |24|
 :pattern ( (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3))
)))
(assert (forall ((arg1@@4 Bool) (arg2@@4 T@Ref) (arg3@@4 T@Ref) (arg4@@4 Int) (arg5@@4 T@Ref) (arg6@@4 T@Ref) (arg7@@4 Int) ) (!  (not (IsPredicateField_10347_10348 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4)))
 :qid |stdinbpl.199:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4))
)))
(assert (forall ((arg1@@5 Bool) (arg2@@5 T@Ref) (arg3@@5 T@Ref) (arg4@@5 Int) (arg5@@5 T@Ref) (arg6@@5 T@Ref) (arg7@@5 Int) ) (! (= (getPredWandId_10334_1218 (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5)) 1)
 :qid |stdinbpl.207:15|
 :skolemid |27|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@0 () T@PolymorphicMapType_19111)
(declare-fun ys@@9 () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_19090)
(declare-fun PostMask@0 () T@PolymorphicMapType_19111)
(declare-fun ResultMask@@14 () T@PolymorphicMapType_19111)
(declare-fun WandDefLHSMask@0 () T@PolymorphicMapType_19111)
(declare-fun xs@0 () T@Ref)
(declare-fun WandDefRHSMask@0 () T@PolymorphicMapType_19111)
(declare-fun WandDefLHSHeap@0 () T@PolymorphicMapType_19090)
(declare-fun WandDefLHSMask@1 () T@PolymorphicMapType_19111)
(declare-fun WandDefRHSHeap@0 () T@PolymorphicMapType_19090)
(declare-fun old_sum_xs@1 () Int)
(declare-fun Result_6Mask () T@PolymorphicMapType_19111)
(declare-fun Result_8Mask () T@PolymorphicMapType_19111)
(declare-fun old_sum_xs@2 () Int)
(declare-fun xs@1 () T@Ref)
(declare-fun Heap@17 () T@PolymorphicMapType_19090)
(declare-fun sum_3@1 () Int)
(declare-fun Heap@@50 () T@PolymorphicMapType_19090)
(declare-fun Mask@41 () T@PolymorphicMapType_19111)
(declare-fun Mask@40 () T@PolymorphicMapType_19111)
(declare-fun Mask@39 () T@PolymorphicMapType_19111)
(declare-fun b_5@44 () Bool)
(declare-fun b_16@6 () Bool)
(declare-fun Result_8Heap () T@PolymorphicMapType_19090)
(declare-fun Mask@38 () T@PolymorphicMapType_19111)
(declare-fun b_5@43 () Bool)
(declare-fun neededTransfer@27 () Real)
(declare-fun Used_6Mask@3 () T@PolymorphicMapType_19111)
(declare-fun initNeededTransfer@6 () Real)
(declare-fun b_17@0 () Bool)
(declare-fun b_17@1 () Bool)
(declare-fun b_17@2 () Bool)
(declare-fun Ops_3Mask@20 () T@PolymorphicMapType_19111)
(declare-fun b_17@3 () Bool)
(declare-fun Ops_3Heap@11 () T@PolymorphicMapType_19090)
(declare-fun Used_6Heap@0 () T@PolymorphicMapType_19090)
(declare-fun b_17@4 () Bool)
(declare-fun takeTransfer@13 () Real)
(declare-fun neededTransfer@25 () Real)
(declare-fun Heap@15 () T@PolymorphicMapType_19090)
(declare-fun Mask@36 () T@PolymorphicMapType_19111)
(declare-fun b_16@3 () Bool)
(declare-fun Used_6Mask@1 () T@PolymorphicMapType_19111)
(declare-fun neededTransfer@26 () Real)
(declare-fun Used_6Mask@2 () T@PolymorphicMapType_19111)
(declare-fun b_16@4 () Bool)
(declare-fun TempMask@7 () T@PolymorphicMapType_19111)
(declare-fun b_16@5 () Bool)
(declare-fun Mask@37 () T@PolymorphicMapType_19111)
(declare-fun newPMask@4 () T@PolymorphicMapType_19639)
(declare-fun Heap@16 () T@PolymorphicMapType_19090)
(declare-fun maskTransfer@13 () Real)
(declare-fun takeTransfer@12 () Real)
(declare-fun Ops_3Mask@18 () T@PolymorphicMapType_19111)
(declare-fun b_16@0 () Bool)
(declare-fun neededTransfer@24 () Real)
(declare-fun Used_6Mask@0 () T@PolymorphicMapType_19111)
(declare-fun b_16@1 () Bool)
(declare-fun TempMask@6 () T@PolymorphicMapType_19111)
(declare-fun b_16@2 () Bool)
(declare-fun Ops_3Mask@19 () T@PolymorphicMapType_19111)
(declare-fun maskTransfer@12 () Real)
(declare-fun b_16 () Bool)
(declare-fun b_15@0 () Bool)
(declare-fun b_5@34 () Bool)
(declare-fun b_13@7 () Bool)
(declare-fun b_15@1 () Bool)
(declare-fun Result_7Heap () T@PolymorphicMapType_19090)
(declare-fun Result_7Mask () T@PolymorphicMapType_19111)
(declare-fun b_15@2 () Bool)
(declare-fun Ops_3Mask@16 () T@PolymorphicMapType_19111)
(declare-fun Used_5Mask@4 () T@PolymorphicMapType_19111)
(declare-fun b_15@3 () Bool)
(declare-fun Ops_3Heap@10 () T@PolymorphicMapType_19090)
(declare-fun Used_5Heap@0 () T@PolymorphicMapType_19090)
(declare-fun b_15@4 () Bool)
(declare-fun b_5@35 () Bool)
(declare-fun b_5@36 () Bool)
(declare-fun Ops_3Mask@17 () T@PolymorphicMapType_19111)
(declare-fun b_5@37 () Bool)
(declare-fun b_5@38 () Bool)
(declare-fun b_5@39 () Bool)
(declare-fun b_5@40 () Bool)
(declare-fun ExhaleHeap@9 () T@PolymorphicMapType_19090)
(declare-fun b_5@41 () Bool)
(declare-fun b_5@42 () Bool)
(declare-fun Heap@14 () T@PolymorphicMapType_19090)
(declare-fun Mask@35 () T@PolymorphicMapType_19111)
(declare-fun b_5@31 () Bool)
(declare-fun b_13@6 () Bool)
(declare-fun Result_6Heap () T@PolymorphicMapType_19090)
(declare-fun b_5@32 () Bool)
(declare-fun b_5@33 () Bool)
(declare-fun Used_5Mask@3 () T@PolymorphicMapType_19111)
(declare-fun Mask@34 () T@PolymorphicMapType_19111)
(declare-fun Ops_3Mask@15 () T@PolymorphicMapType_19111)
(declare-fun Heap@13 () T@PolymorphicMapType_19090)
(declare-fun b_5@28 () Bool)
(declare-fun neededTransfer@23 () Real)
(declare-fun initNeededTransfer@5 () Real)
(declare-fun b_14@0 () Bool)
(declare-fun b_14@1 () Bool)
(declare-fun b_14@2 () Bool)
(declare-fun b_14@3 () Bool)
(declare-fun b_14@4 () Bool)
(declare-fun b_5@29 () Bool)
(declare-fun b_5@30 () Bool)
(declare-fun takeTransfer@11 () Real)
(declare-fun Heap@11 () T@PolymorphicMapType_19090)
(declare-fun b_13@3 () Bool)
(declare-fun Mask@32 () T@PolymorphicMapType_19111)
(declare-fun Used_5Mask@1 () T@PolymorphicMapType_19111)
(declare-fun neededTransfer@21 () Real)
(declare-fun neededTransfer@22 () Real)
(declare-fun Used_5Mask@2 () T@PolymorphicMapType_19111)
(declare-fun b_13@4 () Bool)
(declare-fun TempMask@5 () T@PolymorphicMapType_19111)
(declare-fun b_13@5 () Bool)
(declare-fun Mask@33 () T@PolymorphicMapType_19111)
(declare-fun newPMask@3 () T@PolymorphicMapType_19639)
(declare-fun Heap@12 () T@PolymorphicMapType_19090)
(declare-fun maskTransfer@11 () Real)
(declare-fun takeTransfer@10 () Real)
(declare-fun Ops_3Mask@13 () T@PolymorphicMapType_19111)
(declare-fun b_13@0 () Bool)
(declare-fun neededTransfer@20 () Real)
(declare-fun Used_5Mask@0 () T@PolymorphicMapType_19111)
(declare-fun b_13@1 () Bool)
(declare-fun TempMask@4 () T@PolymorphicMapType_19111)
(declare-fun b_13@2 () Bool)
(declare-fun Ops_3Mask@14 () T@PolymorphicMapType_19111)
(declare-fun maskTransfer@10 () Real)
(declare-fun b_5@24 () Bool)
(declare-fun b_11@4 () Bool)
(declare-fun neededTransfer@19 () Real)
(declare-fun Used_4Mask@3 () T@PolymorphicMapType_19111)
(declare-fun initNeededTransfer@4 () Real)
(declare-fun b_12@0 () Bool)
(declare-fun b_12@1 () Bool)
(declare-fun Result_5Heap () T@PolymorphicMapType_19090)
(declare-fun Result_5Mask () T@PolymorphicMapType_19111)
(declare-fun b_12@2 () Bool)
(declare-fun b_12@3 () Bool)
(declare-fun Used_4Heap@0 () T@PolymorphicMapType_19090)
(declare-fun b_12@4 () Bool)
(declare-fun b_5@25 () Bool)
(declare-fun b_5@26 () Bool)
(declare-fun b_5@27 () Bool)
(declare-fun b_13 () Bool)
(declare-fun takeTransfer@9 () Real)
(declare-fun Mask@30 () T@PolymorphicMapType_19111)
(declare-fun neededTransfer@17 () Real)
(declare-fun b_11@2 () Bool)
(declare-fun Used_4Mask@1 () T@PolymorphicMapType_19111)
(declare-fun neededTransfer@18 () Real)
(declare-fun Used_4Mask@2 () T@PolymorphicMapType_19111)
(declare-fun b_11@3 () Bool)
(declare-fun Mask@31 () T@PolymorphicMapType_19111)
(declare-fun maskTransfer@9 () Real)
(declare-fun takeTransfer@8 () Real)
(declare-fun Ops_3Mask@11 () T@PolymorphicMapType_19111)
(declare-fun b_11@0 () Bool)
(declare-fun neededTransfer@16 () Real)
(declare-fun Used_4Mask@0 () T@PolymorphicMapType_19111)
(declare-fun b_11@1 () Bool)
(declare-fun Ops_3Mask@12 () T@PolymorphicMapType_19111)
(declare-fun maskTransfer@8 () Real)
(declare-fun b_11 () Bool)
(declare-fun Ops_3Heap@9 () T@PolymorphicMapType_19090)
(declare-fun Ops_3Mask@10 () T@PolymorphicMapType_19111)
(declare-fun b_5@23 () Bool)
(declare-fun b_5@22 () Bool)
(declare-fun Mask@29 () T@PolymorphicMapType_19111)
(declare-fun Heap@10 () T@PolymorphicMapType_19090)
(declare-fun Ops_3Heap@7 () T@PolymorphicMapType_19090)
(declare-fun newPMask@2 () T@PolymorphicMapType_19639)
(declare-fun Ops_3Heap@8 () T@PolymorphicMapType_19090)
(declare-fun Ops_3Heap@6 () T@PolymorphicMapType_19090)
(declare-fun Ops_3Heap@5 () T@PolymorphicMapType_19090)
(declare-fun Ops_3Heap@2 () T@PolymorphicMapType_19090)
(declare-fun Ops_3Heap@3 () T@PolymorphicMapType_19090)
(declare-fun Ops_3Heap@4 () T@PolymorphicMapType_19090)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun b_10@0 () Bool)
(declare-fun b_5@19 () Bool)
(declare-fun b_6@19 () Bool)
(declare-fun b_10@1 () Bool)
(declare-fun Result_4Heap () T@PolymorphicMapType_19090)
(declare-fun Result_4Mask () T@PolymorphicMapType_19111)
(declare-fun b_10@2 () Bool)
(declare-fun Ops_3Mask@9 () T@PolymorphicMapType_19111)
(declare-fun Used_3Mask@12 () T@PolymorphicMapType_19111)
(declare-fun b_10@3 () Bool)
(declare-fun Used_3Heap@0 () T@PolymorphicMapType_19090)
(declare-fun b_10@4 () Bool)
(declare-fun b_5@20 () Bool)
(declare-fun b_5@21 () Bool)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1682 (Int) T@FrameType)
(declare-fun FrameFragment_10385 (T@Ref) T@FrameType)
(declare-fun FrameFragment_10419 (T@FrameType) T@FrameType)
(declare-fun b_5@15 () Bool)
(declare-fun b_6@18 () Bool)
(declare-fun neededTransfer@15 () Real)
(declare-fun Used_3Mask@11 () T@PolymorphicMapType_19111)
(declare-fun arg_1_13@0 () T@Ref)
(declare-fun initNeededTransfer@3 () Real)
(declare-fun b_9@0 () Bool)
(declare-fun b_9@1 () Bool)
(declare-fun Result_3Heap () T@PolymorphicMapType_19090)
(declare-fun Result_3Mask () T@PolymorphicMapType_19111)
(declare-fun b_9@2 () Bool)
(declare-fun Ops_3Mask@8 () T@PolymorphicMapType_19111)
(declare-fun b_9@3 () Bool)
(declare-fun b_9@4 () Bool)
(declare-fun b_5@16 () Bool)
(declare-fun b_5@17 () Bool)
(declare-fun b_5@18 () Bool)
(declare-fun Mask@28 () T@PolymorphicMapType_19111)
(declare-fun Heap@9 () T@PolymorphicMapType_19090)
(declare-fun takeTransfer@7 () Real)
(declare-fun b_6@15 () Bool)
(declare-fun Used_3Mask@9 () T@PolymorphicMapType_19111)
(declare-fun Heap@7 () T@PolymorphicMapType_19090)
(declare-fun Mask@26 () T@PolymorphicMapType_19111)
(declare-fun neededTransfer@13 () Real)
(declare-fun neededTransfer@14 () Real)
(declare-fun Used_3Mask@10 () T@PolymorphicMapType_19111)
(declare-fun b_6@16 () Bool)
(declare-fun TempMask@3 () T@PolymorphicMapType_19111)
(declare-fun b_6@17 () Bool)
(declare-fun Mask@27 () T@PolymorphicMapType_19111)
(declare-fun newPMask@1 () T@PolymorphicMapType_19639)
(declare-fun Heap@8 () T@PolymorphicMapType_19090)
(declare-fun maskTransfer@7 () Real)
(declare-fun takeTransfer@6 () Real)
(declare-fun Used_3Mask@7 () T@PolymorphicMapType_19111)
(declare-fun Ops_3Mask@6 () T@PolymorphicMapType_19111)
(declare-fun b_6@12 () Bool)
(declare-fun neededTransfer@12 () Real)
(declare-fun Used_3Mask@8 () T@PolymorphicMapType_19111)
(declare-fun b_6@13 () Bool)
(declare-fun TempMask@2 () T@PolymorphicMapType_19111)
(declare-fun b_6@14 () Bool)
(declare-fun Ops_3Mask@7 () T@PolymorphicMapType_19111)
(declare-fun maskTransfer@6 () Real)
(declare-fun Result_2Heap () T@PolymorphicMapType_19090)
(declare-fun Result_2Mask () T@PolymorphicMapType_19111)
(declare-fun b_5@12 () Bool)
(declare-fun neededTransfer@11 () Real)
(declare-fun initNeededTransfer@2 () Real)
(declare-fun b_8@0 () Bool)
(declare-fun b_8@1 () Bool)
(declare-fun b_8@2 () Bool)
(declare-fun b_8@3 () Bool)
(declare-fun b_8@4 () Bool)
(declare-fun b_5@13 () Bool)
(declare-fun b_5@14 () Bool)
(declare-fun takeTransfer@5 () Real)
(declare-fun b_6@9 () Bool)
(declare-fun Mask@24 () T@PolymorphicMapType_19111)
(declare-fun Heap@5 () T@PolymorphicMapType_19090)
(declare-fun Used_3Mask@5 () T@PolymorphicMapType_19111)
(declare-fun neededTransfer@9 () Real)
(declare-fun neededTransfer@10 () Real)
(declare-fun Used_3Mask@6 () T@PolymorphicMapType_19111)
(declare-fun b_6@10 () Bool)
(declare-fun b_6@11 () Bool)
(declare-fun Mask@25 () T@PolymorphicMapType_19111)
(declare-fun Heap@6 () T@PolymorphicMapType_19090)
(declare-fun maskTransfer@5 () Real)
(declare-fun takeTransfer@4 () Real)
(declare-fun Used_3Mask@3 () T@PolymorphicMapType_19111)
(declare-fun Ops_3Mask@4 () T@PolymorphicMapType_19111)
(declare-fun b_6@6 () Bool)
(declare-fun neededTransfer@8 () Real)
(declare-fun Used_3Mask@4 () T@PolymorphicMapType_19111)
(declare-fun b_6@7 () Bool)
(declare-fun b_6@8 () Bool)
(declare-fun Ops_3Mask@5 () T@PolymorphicMapType_19111)
(declare-fun maskTransfer@4 () Real)
(declare-fun b_5@9 () Bool)
(declare-fun neededTransfer@7 () Real)
(declare-fun initNeededTransfer@1 () Real)
(declare-fun b_7@0 () Bool)
(declare-fun b_7@1 () Bool)
(declare-fun Result_1Heap () T@PolymorphicMapType_19090)
(declare-fun Result_1Mask () T@PolymorphicMapType_19111)
(declare-fun b_7@2 () Bool)
(declare-fun b_7@3 () Bool)
(declare-fun b_7@4 () Bool)
(declare-fun b_5@10 () Bool)
(declare-fun b_5@11 () Bool)
(declare-fun takeTransfer@3 () Real)
(declare-fun b_6@3 () Bool)
(declare-fun Heap@3 () T@PolymorphicMapType_19090)
(declare-fun Used_3Mask@1 () T@PolymorphicMapType_19111)
(declare-fun Mask@22 () T@PolymorphicMapType_19111)
(declare-fun neededTransfer@5 () Real)
(declare-fun neededTransfer@6 () Real)
(declare-fun Used_3Mask@2 () T@PolymorphicMapType_19111)
(declare-fun b_6@4 () Bool)
(declare-fun b_6@5 () Bool)
(declare-fun Mask@23 () T@PolymorphicMapType_19111)
(declare-fun Heap@4 () T@PolymorphicMapType_19090)
(declare-fun maskTransfer@3 () Real)
(declare-fun takeTransfer@2 () Real)
(declare-fun Ops_3Mask@2 () T@PolymorphicMapType_19111)
(declare-fun b_6@0 () Bool)
(declare-fun neededTransfer@4 () Real)
(declare-fun Used_3Mask@0 () T@PolymorphicMapType_19111)
(declare-fun b_6@1 () Bool)
(declare-fun b_6@2 () Bool)
(declare-fun Ops_3Mask@3 () T@PolymorphicMapType_19111)
(declare-fun maskTransfer@2 () Real)
(declare-fun b_6 () Bool)
(declare-fun b_5@8 () Bool)
(declare-fun b_5@7 () Bool)
(declare-fun b_5@6 () Bool)
(declare-fun b_5@5 () Bool)
(declare-fun Ops_3Heap@1 () T@PolymorphicMapType_19090)
(declare-fun Ops_3Mask@1 () T@PolymorphicMapType_19111)
(declare-fun Ops_3Heap@0 () T@PolymorphicMapType_19090)
(declare-fun b_5@3 () Bool)
(declare-fun b_5@4 () Bool)
(declare-fun ExhaleHeap@7 () T@PolymorphicMapType_19090)
(declare-fun b_5@2 () Bool)
(declare-fun b_5@0 () Bool)
(declare-fun Ops_3Mask@0 () T@PolymorphicMapType_19111)
(declare-fun b_5@1 () Bool)
(declare-fun b_5 () Bool)
(declare-fun b_4@0 () Bool)
(declare-fun b_4 () Bool)
(declare-fun Used_2Heap@0 () T@PolymorphicMapType_19090)
(declare-fun sum_3@0 () Int)
(declare-fun Mask@20 () T@PolymorphicMapType_19111)
(declare-fun Mask@21 () T@PolymorphicMapType_19111)
(declare-fun Mask@19 () T@PolymorphicMapType_19111)
(declare-fun Mask@18 () T@PolymorphicMapType_19111)
(declare-fun ExhaleHeap@3 () T@PolymorphicMapType_19090)
(declare-fun Heap@2 () T@PolymorphicMapType_19090)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@17 () T@PolymorphicMapType_19111)
(declare-fun Mask@16 () T@PolymorphicMapType_19111)
(declare-fun oldXs () T@Ref)
(declare-fun zs () T@Ref)
(declare-fun Mask@15 () T@PolymorphicMapType_19111)
(declare-fun Mask@14 () T@PolymorphicMapType_19111)
(declare-fun Mask@13 () T@PolymorphicMapType_19111)
(declare-fun Mask@12 () T@PolymorphicMapType_19111)
(declare-fun ExhaleHeap@4 () T@PolymorphicMapType_19090)
(declare-fun Mask@11 () T@PolymorphicMapType_19111)
(declare-fun Mask@10 () T@PolymorphicMapType_19111)
(declare-fun Mask@8 () T@PolymorphicMapType_19111)
(declare-fun Mask@9 () T@PolymorphicMapType_19111)
(declare-fun Mask@6 () T@PolymorphicMapType_19111)
(declare-fun Mask@7 () T@PolymorphicMapType_19111)
(declare-fun WandDefLHSMask@2 () T@PolymorphicMapType_19111)
(declare-fun WandDefRHSMask@1 () T@PolymorphicMapType_19111)
(declare-fun WandDefLHSHeap@1 () T@PolymorphicMapType_19090)
(declare-fun WandDefLHSMask@3 () T@PolymorphicMapType_19111)
(declare-fun WandDefRHSHeap@1 () T@PolymorphicMapType_19090)
(declare-fun Mask@44 () T@PolymorphicMapType_19111)
(declare-fun Mask@43 () T@PolymorphicMapType_19111)
(declare-fun old_sum_xs@0 () Int)
(declare-fun Heap@1 () T@PolymorphicMapType_19090)
(declare-fun Mask@5 () T@PolymorphicMapType_19111)
(declare-fun Mask@4 () T@PolymorphicMapType_19111)
(declare-fun Mask@3 () T@PolymorphicMapType_19111)
(declare-fun b_1_1@10 () Bool)
(declare-fun b_2_1@6 () Bool)
(declare-fun ResultHeap () T@PolymorphicMapType_19090)
(declare-fun Mask@2 () T@PolymorphicMapType_19111)
(declare-fun b_1_1@9 () Bool)
(declare-fun neededTransfer@3 () Real)
(declare-fun Used_1Mask@3 () T@PolymorphicMapType_19111)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun b_3@0 () Bool)
(declare-fun b_3@1 () Bool)
(declare-fun b_3@2 () Bool)
(declare-fun Ops_1Mask@4 () T@PolymorphicMapType_19111)
(declare-fun b_3@3 () Bool)
(declare-fun Ops_1Heap@2 () T@PolymorphicMapType_19090)
(declare-fun Used_1Heap@0 () T@PolymorphicMapType_19090)
(declare-fun b_3@4 () Bool)
(declare-fun takeTransfer@1 () Real)
(declare-fun neededTransfer@1 () Real)
(declare-fun b_2_1@3 () Bool)
(declare-fun Used_1Mask@1 () T@PolymorphicMapType_19111)
(declare-fun neededTransfer@2 () Real)
(declare-fun Used_1Mask@2 () T@PolymorphicMapType_19111)
(declare-fun b_2_1@4 () Bool)
(declare-fun TempMask@1 () T@PolymorphicMapType_19111)
(declare-fun b_2_1@5 () Bool)
(declare-fun Mask@1 () T@PolymorphicMapType_19111)
(declare-fun newPMask@0 () T@PolymorphicMapType_19639)
(declare-fun Heap@0 () T@PolymorphicMapType_19090)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun Ops_1Mask@2 () T@PolymorphicMapType_19111)
(declare-fun b_2_1@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun Used_1Mask@0 () T@PolymorphicMapType_19111)
(declare-fun b_2_1@1 () Bool)
(declare-fun TempMask@0 () T@PolymorphicMapType_19111)
(declare-fun b_2_1@2 () Bool)
(declare-fun Ops_1Mask@3 () T@PolymorphicMapType_19111)
(declare-fun maskTransfer@0 () Real)
(declare-fun b_1_1@8 () Bool)
(declare-fun b_1_1@7 () Bool)
(declare-fun b_2_1 () Bool)
(declare-fun b_1_1@6 () Bool)
(declare-fun b_1_1@5 () Bool)
(declare-fun Ops_1Heap@1 () T@PolymorphicMapType_19090)
(declare-fun Ops_1Mask@1 () T@PolymorphicMapType_19111)
(declare-fun Ops_1Heap@0 () T@PolymorphicMapType_19090)
(declare-fun b_1_1@3 () Bool)
(declare-fun b_1_1@4 () Bool)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_19090)
(declare-fun b_1_1@2 () Bool)
(declare-fun b_1_1@0 () Bool)
(declare-fun Ops_1Mask@0 () T@PolymorphicMapType_19111)
(declare-fun b_1_1@1 () Bool)
(declare-fun b_1_1 () Bool)
(declare-fun b_2@0 () Bool)
(declare-fun b_2 () Bool)
(declare-fun UsedHeap@0 () T@PolymorphicMapType_19090)
(declare-fun xs () T@Ref)
(set-info :boogie-vc-id sum_it)
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
 (=> (= (ControlFlow 0 0) 298) (let ((anon205_Else_correct true))
(let ((anon205_Then_correct  (=> (= (ControlFlow 0 294) (- 0 293)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@0) null (List ys@@9)))))))
(let ((anon204_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (and (= PostMask@0 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9)) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask))) (state PostHeap@0 PostMask@0)) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 296) 294) anon205_Then_correct) (=> (= (ControlFlow 0 296) 295) anon205_Else_correct))))))
(let ((anon223_Then_correct  (=> (= (ControlFlow 0 256) (- 0 255)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@0) null (List ys@@9)))))))
(let ((anon222_Then_correct  (=> (= (ControlFlow 0 254) (- 0 253)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ResultMask@@14) null (List ys@@9)))))))
(let ((anon279_Then_correct  (=> (= (ControlFlow 0 135) (- 0 134)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| WandDefLHSMask@0) null (List xs@0)))))))
(let ((anon281_Else_correct true))
(let ((anon281_Then_correct  (=> (= (ControlFlow 0 130) (- 0 129)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@0) null (List ys@@9)))))))
(let ((anon280_Then_correct  (=> (= (ControlFlow 0 128) (- 0 127)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| WandDefRHSMask@0) null (List ys@@9)))))))
(let ((anon136_correct  (=> (state WandDefLHSHeap@0 WandDefLHSMask@1) (=> (and (and (state WandDefLHSHeap@0 WandDefLHSMask@1) (= WandDefRHSMask@0 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9)) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask)))) (and (state WandDefRHSHeap@0 WandDefRHSMask@0) (state WandDefRHSHeap@0 WandDefRHSMask@0))) (and (and (=> (= (ControlFlow 0 132) 128) anon280_Then_correct) (=> (= (ControlFlow 0 132) 130) anon281_Then_correct)) (=> (= (ControlFlow 0 132) 131) anon281_Else_correct))))))
(let ((anon279_Else_correct  (=> (= (sum_rec WandDefLHSHeap@0 xs@0) old_sum_xs@1) (=> (and (= WandDefLHSMask@1 WandDefLHSMask@0) (= (ControlFlow 0 136) 132)) anon136_correct))))
(let ((anon278_Then_correct  (=> (and (and (not (= xs@0 null)) (= WandDefLHSMask@0 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List xs@0) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List xs@0)) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask)))) (and (state WandDefLHSHeap@0 WandDefLHSMask@0) (state WandDefLHSHeap@0 WandDefLHSMask@0))) (and (=> (= (ControlFlow 0 137) 135) anon279_Then_correct) (=> (= (ControlFlow 0 137) 136) anon279_Else_correct)))))
(let ((anon278_Else_correct  (=> (= xs@0 null) (=> (and (= WandDefLHSMask@1 ZeroMask) (= (ControlFlow 0 133) 132)) anon136_correct))))
(let ((anon297_Then_correct  (=> (= (ControlFlow 0 90) (- 0 89)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Result_6Mask) null (List xs@0)))))))
(let ((anon307_Then_correct  (=> (= (ControlFlow 0 63) (- 0 62)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@0) null (List ys@@9)))))))
(let ((anon306_Then_correct  (=> (= (ControlFlow 0 61) (- 0 60)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Result_8Mask) null (List ys@@9)))))))
(let ((anon194_correct  (and (=> (= (ControlFlow 0 47) (- 0 49)) (= old_sum_xs@2 (ite (= xs@1 null) 0 (sum_rec Heap@17 xs@1)))) (=> (= old_sum_xs@2 (ite (= xs@1 null) 0 (sum_rec Heap@17 xs@1))) (and (=> (= (ControlFlow 0 47) (- 0 48)) (= sum_3@1 (- (sum_rec Heap@@50 ys@@9) old_sum_xs@2))) (=> (= sum_3@1 (- (sum_rec Heap@@50 ys@@9) old_sum_xs@2)) (=> (= (ControlFlow 0 47) (- 0 46)) (<= FullPerm (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@41) null (wand (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))))))))))
(let ((anon193_correct  (=> (= Mask@40 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@39) null (List xs@1) (- (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@39) null (List xs@1)) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@39) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@39) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@39) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@39) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@39) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@39) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@39) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@39) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@39) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@39) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@39) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@39) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@39) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@39))) (=> (and (= Mask@41 Mask@40) (= (ControlFlow 0 51) 47)) anon194_correct))))
(let ((anon309_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 54) 51)) anon193_correct)))
(let ((anon309_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 52) (- 0 53)) (<= FullPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@39) null (List xs@1)))) (=> (<= FullPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@39) null (List xs@1))) (=> (= (ControlFlow 0 52) 51) anon193_correct))))))
(let ((anon308_Then_correct  (=> (not (= xs@1 null)) (and (=> (= (ControlFlow 0 55) 52) anon309_Then_correct) (=> (= (ControlFlow 0 55) 54) anon309_Else_correct)))))
(let ((anon308_Else_correct  (=> (= xs@1 null) (=> (and (= Mask@41 Mask@39) (= (ControlFlow 0 50) 47)) anon194_correct))))
(let ((anon190_correct  (and (=> (= (ControlFlow 0 56) (- 0 57)) (=> (and (and b_5@44 b_5@44) b_16@6) (= (sum_rec Result_8Heap ys@@9) (sum_rec Heap@@50 ys@@9)))) (=> (=> (and (and b_5@44 b_5@44) b_16@6) (= (sum_rec Result_8Heap ys@@9) (sum_rec Heap@@50 ys@@9))) (=> (state Heap@17 Mask@38) (=> (and (and (= Mask@39 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@38) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@38) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@38) (store (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@38) null (wand (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)) (+ (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@38) null (wand (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9))) FullPerm)) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@38) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@38) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@38) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@38) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@38) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@38) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@38) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@38) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@38) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@38) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@38))) (state Heap@17 Mask@39)) (and (state Heap@17 Mask@39) (state Heap@17 Mask@39))) (and (=> (= (ControlFlow 0 56) 55) anon308_Then_correct) (=> (= (ControlFlow 0 56) 50) anon308_Else_correct))))))))
(let ((anon305_Then_correct  (=> b_5@44 (and (and (=> (= (ControlFlow 0 64) 61) anon306_Then_correct) (=> (= (ControlFlow 0 64) 63) anon307_Then_correct)) (=> (= (ControlFlow 0 64) 56) anon190_correct)))))
(let ((anon305_Else_correct  (=> (and (not b_5@44) (= (ControlFlow 0 59) 56)) anon190_correct)))
(let ((anon304_Then_correct  (=> (and (and b_5@44 b_5@44) b_16@6) (and (=> (= (ControlFlow 0 65) 64) anon305_Then_correct) (=> (= (ControlFlow 0 65) 59) anon305_Else_correct)))))
(let ((anon304_Else_correct  (=> (and (not (and (and b_5@44 b_5@44) b_16@6)) (= (ControlFlow 0 58) 56)) anon190_correct)))
(let ((anon184_correct  (and (=> (= (ControlFlow 0 66) (- 0 67)) (=> (and (and b_5@43 b_5@43) b_16@6) (and (= neededTransfer@27 0.0) (= (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_6Mask@3) null (List ys@@9)) initNeededTransfer@6)))) (=> (=> (and (and b_5@43 b_5@43) b_16@6) (and (= neededTransfer@27 0.0) (= (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_6Mask@3) null (List ys@@9)) initNeededTransfer@6))) (=> (and (= b_17@0  (and b_5@43 b_16@6)) (= b_17@1  (and b_17@0 (state Result_8Heap Result_8Mask)))) (=> (and (and (= b_17@2  (and b_17@1 (sumMask Result_8Mask Ops_3Mask@20 Used_6Mask@3))) (= b_17@3  (and (and b_17@2 (IdenticalOnKnownLocations Ops_3Heap@11 Result_8Heap Ops_3Mask@20)) (IdenticalOnKnownLocations Used_6Heap@0 Result_8Heap Used_6Mask@3)))) (and (= b_17@4  (and b_17@3 (state Result_8Heap Result_8Mask))) (= b_5@44  (and b_5@43 b_17@4)))) (and (=> (= (ControlFlow 0 66) 65) anon304_Then_correct) (=> (= (ControlFlow 0 66) 58) anon304_Else_correct))))))))
(let ((anon303_Else_correct  (=> (>= 0.0 takeTransfer@13) (=> (and (= neededTransfer@27 neededTransfer@25) (= Heap@17 Heap@15)) (=> (and (and (= Mask@38 Mask@36) (= b_16@6 b_16@3)) (and (= Used_6Mask@3 Used_6Mask@1) (= (ControlFlow 0 70) 66))) anon184_correct)))))
(let ((anon303_Then_correct  (=> (> takeTransfer@13 0.0) (=> (and (= neededTransfer@26 (- neededTransfer@25 takeTransfer@13)) (= Used_6Mask@2 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_6Mask@1) null (List ys@@9) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_6Mask@1) null (List ys@@9)) takeTransfer@13)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Used_6Mask@1) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Used_6Mask@1) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Used_6Mask@1) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Used_6Mask@1) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Used_6Mask@1) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Used_6Mask@1) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Used_6Mask@1) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Used_6Mask@1) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Used_6Mask@1) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Used_6Mask@1) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Used_6Mask@1) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Used_6Mask@1) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Used_6Mask@1) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Used_6Mask@1)))) (=> (and (and (= b_16@4  (and b_16@3 (state Used_6Heap@0 Used_6Mask@2))) (= TempMask@7 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9) FullPerm) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask)))) (and (= b_16@5  (and b_16@4 (IdenticalOnKnownLocations Heap@15 Used_6Heap@0 TempMask@7))) (= Mask@37 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@36) null (List ys@@9) (- (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@36) null (List ys@@9)) takeTransfer@13)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@36) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@36) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@36) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@36) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@36) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@36) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@36) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@36) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@36) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@36) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@36) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@36) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@36) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@36))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o T@Ref) (f_61 T@Field_23355_1682) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@15) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o f_61) (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@15) null (|List#sm| ys@@9))) o f_61)) (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| newPMask@4) o f_61))
 :qid |stdinbpl.1675:43|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| newPMask@4) o f_61))
)) (forall ((o@@0 T@Ref) (f_61@@0 T@Field_19163_19164) ) (!  (=> (or (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@15) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o@@0 f_61@@0) (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@15) null (|List#sm| ys@@9))) o@@0 f_61@@0)) (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| newPMask@4) o@@0 f_61@@0))
 :qid |stdinbpl.1675:43|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| newPMask@4) o@@0 f_61@@0))
))) (forall ((o@@1 T@Ref) (f_61@@1 T@Field_19150_53) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@15) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o@@1 f_61@@1) (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@15) null (|List#sm| ys@@9))) o@@1 f_61@@1)) (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| newPMask@4) o@@1 f_61@@1))
 :qid |stdinbpl.1675:43|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| newPMask@4) o@@1 f_61@@1))
))) (forall ((o@@2 T@Ref) (f_61@@2 T@Field_10382_22501) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@15) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o@@2 f_61@@2) (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@15) null (|List#sm| ys@@9))) o@@2 f_61@@2)) (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| newPMask@4) o@@2 f_61@@2))
 :qid |stdinbpl.1675:43|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| newPMask@4) o@@2 f_61@@2))
))) (forall ((o@@3 T@Ref) (f_61@@3 T@Field_10382_10419) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@15) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o@@3 f_61@@3) (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@15) null (|List#sm| ys@@9))) o@@3 f_61@@3)) (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| newPMask@4) o@@3 f_61@@3))
 :qid |stdinbpl.1675:43|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| newPMask@4) o@@3 f_61@@3))
))) (forall ((o@@4 T@Ref) (f_61@@4 T@Field_22481_1218) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@15) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o@@4 f_61@@4) (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@15) null (|List#sm| ys@@9))) o@@4 f_61@@4)) (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| newPMask@4) o@@4 f_61@@4))
 :qid |stdinbpl.1675:43|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| newPMask@4) o@@4 f_61@@4))
))) (forall ((o@@5 T@Ref) (f_61@@5 T@Field_22481_10385) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@15) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o@@5 f_61@@5) (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@15) null (|List#sm| ys@@9))) o@@5 f_61@@5)) (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| newPMask@4) o@@5 f_61@@5))
 :qid |stdinbpl.1675:43|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| newPMask@4) o@@5 f_61@@5))
))) (forall ((o@@6 T@Ref) (f_61@@6 T@Field_22481_53) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@15) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o@@6 f_61@@6) (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@15) null (|List#sm| ys@@9))) o@@6 f_61@@6)) (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| newPMask@4) o@@6 f_61@@6))
 :qid |stdinbpl.1675:43|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| newPMask@4) o@@6 f_61@@6))
))) (forall ((o@@7 T@Ref) (f_61@@7 T@Field_22496_22501) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@15) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o@@7 f_61@@7) (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@15) null (|List#sm| ys@@9))) o@@7 f_61@@7)) (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| newPMask@4) o@@7 f_61@@7))
 :qid |stdinbpl.1675:43|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| newPMask@4) o@@7 f_61@@7))
))) (forall ((o@@8 T@Ref) (f_61@@8 T@Field_22514_22515) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@15) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o@@8 f_61@@8) (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@15) null (|List#sm| ys@@9))) o@@8 f_61@@8)) (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| newPMask@4) o@@8 f_61@@8))
 :qid |stdinbpl.1675:43|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| newPMask@4) o@@8 f_61@@8))
))) (forall ((o@@9 T@Ref) (f_61@@9 T@Field_10418_1682) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@15) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o@@9 f_61@@9) (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@15) null (|List#sm| ys@@9))) o@@9 f_61@@9)) (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| newPMask@4) o@@9 f_61@@9))
 :qid |stdinbpl.1675:43|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| newPMask@4) o@@9 f_61@@9))
))) (forall ((o@@10 T@Ref) (f_61@@10 T@Field_10418_10385) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@15) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o@@10 f_61@@10) (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@15) null (|List#sm| ys@@9))) o@@10 f_61@@10)) (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| newPMask@4) o@@10 f_61@@10))
 :qid |stdinbpl.1675:43|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| newPMask@4) o@@10 f_61@@10))
))) (forall ((o@@11 T@Ref) (f_61@@11 T@Field_10418_53) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@15) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o@@11 f_61@@11) (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@15) null (|List#sm| ys@@9))) o@@11 f_61@@11)) (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| newPMask@4) o@@11 f_61@@11))
 :qid |stdinbpl.1675:43|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| newPMask@4) o@@11 f_61@@11))
))) (forall ((o@@12 T@Ref) (f_61@@12 T@Field_26559_26564) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@15) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o@@12 f_61@@12) (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@15) null (|List#sm| ys@@9))) o@@12 f_61@@12)) (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| newPMask@4) o@@12 f_61@@12))
 :qid |stdinbpl.1675:43|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| newPMask@4) o@@12 f_61@@12))
))) (forall ((o@@13 T@Ref) (f_61@@13 T@Field_23822_23823) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@15) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o@@13 f_61@@13) (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@15) null (|List#sm| ys@@9))) o@@13 f_61@@13)) (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| newPMask@4) o@@13 f_61@@13))
 :qid |stdinbpl.1675:43|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| newPMask@4) o@@13 f_61@@13))
))) (= Heap@16 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@15) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@15) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@15) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@15) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@15) (store (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@15) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)) newPMask@4) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@15) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@15) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@15) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@15) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@15) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@15) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@15) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@15) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@15)))) (and (= neededTransfer@27 neededTransfer@26) (= Heap@17 Heap@16))) (and (and (= Mask@38 Mask@37) (= b_16@6 b_16@5)) (and (= Used_6Mask@3 Used_6Mask@2) (= (ControlFlow 0 69) 66)))) anon184_correct))))))
(let ((anon302_Else_correct  (=> (and (< maskTransfer@13 neededTransfer@25) (= takeTransfer@13 maskTransfer@13)) (and (=> (= (ControlFlow 0 72) 69) anon303_Then_correct) (=> (= (ControlFlow 0 72) 70) anon303_Else_correct)))))
(let ((anon302_Then_correct  (=> (and (<= neededTransfer@25 maskTransfer@13) (= takeTransfer@13 neededTransfer@25)) (and (=> (= (ControlFlow 0 71) 69) anon303_Then_correct) (=> (= (ControlFlow 0 71) 70) anon303_Else_correct)))))
(let ((anon301_Then_correct  (=> (and (and (and (and (and b_5@43 b_5@43) b_16@3) true) (> neededTransfer@25 0.0)) (= maskTransfer@13 (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@36) null (List ys@@9)))) (and (=> (= (ControlFlow 0 73) 71) anon302_Then_correct) (=> (= (ControlFlow 0 73) 72) anon302_Else_correct)))))
(let ((anon301_Else_correct  (=> (not (and (and (and (and b_5@43 b_5@43) b_16@3) true) (> neededTransfer@25 0.0))) (=> (and (= neededTransfer@27 neededTransfer@25) (= Heap@17 Heap@15)) (=> (and (and (= Mask@38 Mask@36) (= b_16@6 b_16@3)) (and (= Used_6Mask@3 Used_6Mask@1) (= (ControlFlow 0 68) 66))) anon184_correct)))))
(let ((anon300_Else_correct  (=> (>= 0.0 takeTransfer@12) (=> (and (and (= Ops_3Mask@20 Ops_3Mask@18) (= Used_6Mask@1 ZeroMask)) (and (= b_16@3 b_16@0) (= neededTransfer@25 FullPerm))) (and (=> (= (ControlFlow 0 76) 73) anon301_Then_correct) (=> (= (ControlFlow 0 76) 68) anon301_Else_correct))))))
(let ((anon300_Then_correct  (=> (> takeTransfer@12 0.0) (=> (and (= neededTransfer@24 (- FullPerm takeTransfer@12)) (= Used_6Mask@0 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9)) takeTransfer@12)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask)))) (=> (and (and (and (= b_16@1  (and b_16@0 (state Used_6Heap@0 Used_6Mask@0))) (= TempMask@6 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9) FullPerm) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask)))) (and (= b_16@2  (and b_16@1 (IdenticalOnKnownLocations Ops_3Heap@11 Used_6Heap@0 TempMask@6))) (= Ops_3Mask@19 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_3Mask@18) null (List ys@@9) (- (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_3Mask@18) null (List ys@@9)) takeTransfer@12)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Ops_3Mask@18) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Ops_3Mask@18) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Ops_3Mask@18) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Ops_3Mask@18) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Ops_3Mask@18) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Ops_3Mask@18) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Ops_3Mask@18) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Ops_3Mask@18) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Ops_3Mask@18) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Ops_3Mask@18) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Ops_3Mask@18) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Ops_3Mask@18) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Ops_3Mask@18) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Ops_3Mask@18))))) (and (and (= Ops_3Mask@20 Ops_3Mask@19) (= Used_6Mask@1 Used_6Mask@0)) (and (= b_16@3 b_16@2) (= neededTransfer@25 neededTransfer@24)))) (and (=> (= (ControlFlow 0 75) 73) anon301_Then_correct) (=> (= (ControlFlow 0 75) 68) anon301_Else_correct)))))))
(let ((anon299_Else_correct  (=> (and (< maskTransfer@12 FullPerm) (= takeTransfer@12 maskTransfer@12)) (and (=> (= (ControlFlow 0 78) 75) anon300_Then_correct) (=> (= (ControlFlow 0 78) 76) anon300_Else_correct)))))
(let ((anon299_Then_correct  (=> (and (<= FullPerm maskTransfer@12) (= takeTransfer@12 FullPerm)) (and (=> (= (ControlFlow 0 77) 75) anon300_Then_correct) (=> (= (ControlFlow 0 77) 76) anon300_Else_correct)))))
(let ((anon298_Then_correct  (=> (and (and (and (and (and b_5@43 b_5@43) b_16@0) true) (> FullPerm 0.0)) (= maskTransfer@12 (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_3Mask@18) null (List ys@@9)))) (and (=> (= (ControlFlow 0 79) 77) anon299_Then_correct) (=> (= (ControlFlow 0 79) 78) anon299_Else_correct)))))
(let ((anon298_Else_correct  (=> (not (and (and (and (and b_5@43 b_5@43) b_16@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_3Mask@20 Ops_3Mask@18) (= Used_6Mask@1 ZeroMask)) (and (= b_16@3 b_16@0) (= neededTransfer@25 FullPerm))) (and (=> (= (ControlFlow 0 74) 73) anon301_Then_correct) (=> (= (ControlFlow 0 74) 68) anon301_Else_correct))))))
(let ((anon172_correct  (=> (and (= b_16@0  (and b_16 (state Used_6Heap@0 ZeroMask))) (= initNeededTransfer@6 (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9)) FullPerm))) (and (=> (= (ControlFlow 0 80) (- 0 81)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 80) 79) anon298_Then_correct) (=> (= (ControlFlow 0 80) 74) anon298_Else_correct)))))))
(let ((anon171_correct  (=> (= b_15@0  (and b_5@34 b_13@7)) (=> (and (and (= b_15@1  (and b_15@0 (state Result_7Heap Result_7Mask))) (= b_15@2  (and b_15@1 (sumMask Result_7Mask Ops_3Mask@16 Used_5Mask@4)))) (and (= b_15@3  (and (and b_15@2 (IdenticalOnKnownLocations Ops_3Heap@10 Result_7Heap Ops_3Mask@16)) (IdenticalOnKnownLocations Used_5Heap@0 Result_7Heap Used_5Mask@4))) (= b_15@4  (and b_15@3 (state Result_7Heap Result_7Mask))))) (=> (and (and (and (and (= b_5@35  (and b_5@34 b_15@4)) (= b_5@36  (and b_5@35 (state Ops_3Heap@10 Ops_3Mask@16)))) (and (= Ops_3Mask@17 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_3Mask@16) null (List ys@@9) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_3Mask@16) null (List ys@@9)) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Ops_3Mask@16) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Ops_3Mask@16) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Ops_3Mask@16) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Ops_3Mask@16) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Ops_3Mask@16) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Ops_3Mask@16) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Ops_3Mask@16) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Ops_3Mask@16) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Ops_3Mask@16) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Ops_3Mask@16) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Ops_3Mask@16) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Ops_3Mask@16) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Ops_3Mask@16) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Ops_3Mask@16))) (= b_5@37  (and b_5@36 (state Ops_3Heap@10 Ops_3Mask@17))))) (and (and (= b_5@38  (and b_5@37 (state Ops_3Heap@10 Ops_3Mask@17))) (= b_5@39  (and b_5@38 (= (sum_rec Ops_3Heap@10 ys@@9) (sum_rec Heap@@50 ys@@9))))) (and (= b_5@40  (and b_5@39 (state Ops_3Heap@10 Ops_3Mask@17))) (IdenticalOnKnownLocations Ops_3Heap@10 ExhaleHeap@9 Ops_3Mask@17)))) (and (and (and (= b_5@41  (and b_5@40 (state ExhaleHeap@9 Ops_3Mask@17))) (= b_5@42  (and b_5@41 (state ExhaleHeap@9 Ops_3Mask@17)))) (and (= Ops_3Heap@11 ExhaleHeap@9) (= b_5@43 b_5@42))) (and (and (= Heap@15 Heap@14) (= Mask@36 Mask@35)) (and (= Ops_3Mask@18 Ops_3Mask@17) (= (ControlFlow 0 83) 80))))) anon172_correct)))))
(let ((anon170_correct  (and (=> (= (ControlFlow 0 85) (- 0 86)) (=> (and b_5@31 b_13@6) (= (sum_rec Result_6Heap xs@0) old_sum_xs@1))) (=> (=> (and b_5@31 b_13@6) (= (sum_rec Result_6Heap xs@0) old_sum_xs@1)) (=> (= b_5@32  (and b_5@31 b_13@6)) (=> (and (and (and (= b_5@33  (and b_5@32 (= Used_5Heap@0 Ops_3Heap@10))) (= b_5@34 b_5@33)) (and (= Used_5Mask@4 Used_5Mask@3) (= Mask@35 Mask@34))) (and (and (= b_13@7 b_13@6) (= Ops_3Mask@16 Ops_3Mask@15)) (and (= Heap@14 Heap@13) (= (ControlFlow 0 85) 83)))) anon171_correct))))))
(let ((anon296_Then_correct  (=> b_5@31 (and (=> (= (ControlFlow 0 91) 90) anon297_Then_correct) (=> (= (ControlFlow 0 91) 85) anon170_correct)))))
(let ((anon296_Else_correct  (=> (and (not b_5@31) (= (ControlFlow 0 88) 85)) anon170_correct)))
(let ((anon295_Then_correct  (=> (and b_5@31 b_13@6) (and (=> (= (ControlFlow 0 92) 91) anon296_Then_correct) (=> (= (ControlFlow 0 92) 88) anon296_Else_correct)))))
(let ((anon295_Else_correct  (=> (and (not (and b_5@31 b_13@6)) (= (ControlFlow 0 87) 85)) anon170_correct)))
(let ((anon166_correct  (and (=> (= (ControlFlow 0 93) (- 0 94)) (=> (and b_5@28 b_13@6) (and (= neededTransfer@23 0.0) (= (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_5Mask@3) null (List xs@0)) initNeededTransfer@5)))) (=> (=> (and b_5@28 b_13@6) (and (= neededTransfer@23 0.0) (= (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_5Mask@3) null (List xs@0)) initNeededTransfer@5))) (=> (and (and (and (= b_14@0  (and b_5@28 b_13@6)) (= b_14@1  (and b_14@0 (state Result_6Heap Result_6Mask)))) (and (= b_14@2  (and b_14@1 (sumMask Result_6Mask Ops_3Mask@15 Used_5Mask@3))) (= b_14@3  (and (and b_14@2 (IdenticalOnKnownLocations Ops_3Heap@10 Result_6Heap Ops_3Mask@15)) (IdenticalOnKnownLocations Used_5Heap@0 Result_6Heap Used_5Mask@3))))) (and (and (= b_14@4  (and b_14@3 (state Result_6Heap Result_6Mask))) (= b_5@29  (and b_5@28 b_14@4))) (and (= b_5@30  (and b_5@29 b_13@6)) (= b_5@31  (and b_5@30 (= Used_5Heap@0 Ops_3Heap@10)))))) (and (=> (= (ControlFlow 0 93) 92) anon295_Then_correct) (=> (= (ControlFlow 0 93) 87) anon295_Else_correct)))))))
(let ((anon294_Else_correct  (=> (>= 0.0 takeTransfer@11) (=> (and (= Heap@13 Heap@11) (= b_13@6 b_13@3)) (=> (and (and (= Mask@34 Mask@32) (= Used_5Mask@3 Used_5Mask@1)) (and (= neededTransfer@23 neededTransfer@21) (= (ControlFlow 0 97) 93))) anon166_correct)))))
(let ((anon294_Then_correct  (=> (> takeTransfer@11 0.0) (=> (and (= neededTransfer@22 (- neededTransfer@21 takeTransfer@11)) (= Used_5Mask@2 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_5Mask@1) null (List xs@0) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_5Mask@1) null (List xs@0)) takeTransfer@11)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Used_5Mask@1) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Used_5Mask@1) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Used_5Mask@1) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Used_5Mask@1) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Used_5Mask@1) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Used_5Mask@1) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Used_5Mask@1) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Used_5Mask@1) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Used_5Mask@1) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Used_5Mask@1) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Used_5Mask@1) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Used_5Mask@1) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Used_5Mask@1) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Used_5Mask@1)))) (=> (and (and (= b_13@4  (and b_13@3 (state Used_5Heap@0 Used_5Mask@2))) (= TempMask@5 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List xs@0) FullPerm) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask)))) (and (= b_13@5  (and b_13@4 (IdenticalOnKnownLocations Heap@11 Used_5Heap@0 TempMask@5))) (= Mask@33 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@32) null (List xs@0) (- (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@32) null (List xs@0)) takeTransfer@11)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@32) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@32) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@32) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@32) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@32) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@32) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@32) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@32) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@32) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@32) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@32) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@32) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@32) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@32))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_46 T@Ref) (f_60 T@Field_23355_1682) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@11) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_46 f_60) (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@11) null (|List#sm| xs@0))) o_46 f_60)) (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| newPMask@3) o_46 f_60))
 :qid |stdinbpl.1555:51|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| newPMask@3) o_46 f_60))
)) (forall ((o_46@@0 T@Ref) (f_60@@0 T@Field_19163_19164) ) (!  (=> (or (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@11) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_46@@0 f_60@@0) (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@11) null (|List#sm| xs@0))) o_46@@0 f_60@@0)) (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| newPMask@3) o_46@@0 f_60@@0))
 :qid |stdinbpl.1555:51|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| newPMask@3) o_46@@0 f_60@@0))
))) (forall ((o_46@@1 T@Ref) (f_60@@1 T@Field_19150_53) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@11) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_46@@1 f_60@@1) (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@11) null (|List#sm| xs@0))) o_46@@1 f_60@@1)) (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| newPMask@3) o_46@@1 f_60@@1))
 :qid |stdinbpl.1555:51|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| newPMask@3) o_46@@1 f_60@@1))
))) (forall ((o_46@@2 T@Ref) (f_60@@2 T@Field_10382_22501) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@11) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_46@@2 f_60@@2) (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@11) null (|List#sm| xs@0))) o_46@@2 f_60@@2)) (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| newPMask@3) o_46@@2 f_60@@2))
 :qid |stdinbpl.1555:51|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| newPMask@3) o_46@@2 f_60@@2))
))) (forall ((o_46@@3 T@Ref) (f_60@@3 T@Field_10382_10419) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@11) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_46@@3 f_60@@3) (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@11) null (|List#sm| xs@0))) o_46@@3 f_60@@3)) (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| newPMask@3) o_46@@3 f_60@@3))
 :qid |stdinbpl.1555:51|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| newPMask@3) o_46@@3 f_60@@3))
))) (forall ((o_46@@4 T@Ref) (f_60@@4 T@Field_22481_1218) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@11) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_46@@4 f_60@@4) (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@11) null (|List#sm| xs@0))) o_46@@4 f_60@@4)) (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| newPMask@3) o_46@@4 f_60@@4))
 :qid |stdinbpl.1555:51|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| newPMask@3) o_46@@4 f_60@@4))
))) (forall ((o_46@@5 T@Ref) (f_60@@5 T@Field_22481_10385) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@11) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_46@@5 f_60@@5) (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@11) null (|List#sm| xs@0))) o_46@@5 f_60@@5)) (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| newPMask@3) o_46@@5 f_60@@5))
 :qid |stdinbpl.1555:51|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| newPMask@3) o_46@@5 f_60@@5))
))) (forall ((o_46@@6 T@Ref) (f_60@@6 T@Field_22481_53) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@11) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_46@@6 f_60@@6) (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@11) null (|List#sm| xs@0))) o_46@@6 f_60@@6)) (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| newPMask@3) o_46@@6 f_60@@6))
 :qid |stdinbpl.1555:51|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| newPMask@3) o_46@@6 f_60@@6))
))) (forall ((o_46@@7 T@Ref) (f_60@@7 T@Field_22496_22501) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@11) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_46@@7 f_60@@7) (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@11) null (|List#sm| xs@0))) o_46@@7 f_60@@7)) (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| newPMask@3) o_46@@7 f_60@@7))
 :qid |stdinbpl.1555:51|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| newPMask@3) o_46@@7 f_60@@7))
))) (forall ((o_46@@8 T@Ref) (f_60@@8 T@Field_22514_22515) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@11) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_46@@8 f_60@@8) (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@11) null (|List#sm| xs@0))) o_46@@8 f_60@@8)) (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| newPMask@3) o_46@@8 f_60@@8))
 :qid |stdinbpl.1555:51|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| newPMask@3) o_46@@8 f_60@@8))
))) (forall ((o_46@@9 T@Ref) (f_60@@9 T@Field_10418_1682) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@11) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_46@@9 f_60@@9) (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@11) null (|List#sm| xs@0))) o_46@@9 f_60@@9)) (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| newPMask@3) o_46@@9 f_60@@9))
 :qid |stdinbpl.1555:51|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| newPMask@3) o_46@@9 f_60@@9))
))) (forall ((o_46@@10 T@Ref) (f_60@@10 T@Field_10418_10385) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@11) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_46@@10 f_60@@10) (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@11) null (|List#sm| xs@0))) o_46@@10 f_60@@10)) (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| newPMask@3) o_46@@10 f_60@@10))
 :qid |stdinbpl.1555:51|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| newPMask@3) o_46@@10 f_60@@10))
))) (forall ((o_46@@11 T@Ref) (f_60@@11 T@Field_10418_53) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@11) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_46@@11 f_60@@11) (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@11) null (|List#sm| xs@0))) o_46@@11 f_60@@11)) (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| newPMask@3) o_46@@11 f_60@@11))
 :qid |stdinbpl.1555:51|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| newPMask@3) o_46@@11 f_60@@11))
))) (forall ((o_46@@12 T@Ref) (f_60@@12 T@Field_26559_26564) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@11) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_46@@12 f_60@@12) (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@11) null (|List#sm| xs@0))) o_46@@12 f_60@@12)) (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| newPMask@3) o_46@@12 f_60@@12))
 :qid |stdinbpl.1555:51|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| newPMask@3) o_46@@12 f_60@@12))
))) (forall ((o_46@@13 T@Ref) (f_60@@13 T@Field_23822_23823) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@11) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_46@@13 f_60@@13) (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@11) null (|List#sm| xs@0))) o_46@@13 f_60@@13)) (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| newPMask@3) o_46@@13 f_60@@13))
 :qid |stdinbpl.1555:51|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| newPMask@3) o_46@@13 f_60@@13))
))) (= Heap@12 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@11) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@11) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@11) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@11) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@11) (store (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@11) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)) newPMask@3) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@11) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@11) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@11) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@11) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@11) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@11) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@11) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@11) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@11)))) (and (= Heap@13 Heap@12) (= b_13@6 b_13@5))) (and (and (= Mask@34 Mask@33) (= Used_5Mask@3 Used_5Mask@2)) (and (= neededTransfer@23 neededTransfer@22) (= (ControlFlow 0 96) 93)))) anon166_correct))))))
(let ((anon293_Else_correct  (=> (and (< maskTransfer@11 neededTransfer@21) (= takeTransfer@11 maskTransfer@11)) (and (=> (= (ControlFlow 0 99) 96) anon294_Then_correct) (=> (= (ControlFlow 0 99) 97) anon294_Else_correct)))))
(let ((anon293_Then_correct  (=> (and (<= neededTransfer@21 maskTransfer@11) (= takeTransfer@11 neededTransfer@21)) (and (=> (= (ControlFlow 0 98) 96) anon294_Then_correct) (=> (= (ControlFlow 0 98) 97) anon294_Else_correct)))))
(let ((anon292_Then_correct  (=> (and (and (and (and b_5@28 b_13@3) true) (> neededTransfer@21 0.0)) (= maskTransfer@11 (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@32) null (List xs@0)))) (and (=> (= (ControlFlow 0 100) 98) anon293_Then_correct) (=> (= (ControlFlow 0 100) 99) anon293_Else_correct)))))
(let ((anon292_Else_correct  (=> (not (and (and (and b_5@28 b_13@3) true) (> neededTransfer@21 0.0))) (=> (and (= Heap@13 Heap@11) (= b_13@6 b_13@3)) (=> (and (and (= Mask@34 Mask@32) (= Used_5Mask@3 Used_5Mask@1)) (and (= neededTransfer@23 neededTransfer@21) (= (ControlFlow 0 95) 93))) anon166_correct)))))
(let ((anon291_Else_correct  (=> (>= 0.0 takeTransfer@10) (=> (and (and (= neededTransfer@21 FullPerm) (= Ops_3Mask@15 Ops_3Mask@13)) (and (= Used_5Mask@1 ZeroMask) (= b_13@3 b_13@0))) (and (=> (= (ControlFlow 0 103) 100) anon292_Then_correct) (=> (= (ControlFlow 0 103) 95) anon292_Else_correct))))))
(let ((anon291_Then_correct  (=> (> takeTransfer@10 0.0) (=> (and (= neededTransfer@20 (- FullPerm takeTransfer@10)) (= Used_5Mask@0 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List xs@0) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List xs@0)) takeTransfer@10)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask)))) (=> (and (and (and (= b_13@1  (and b_13@0 (state Used_5Heap@0 Used_5Mask@0))) (= TempMask@4 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List xs@0) FullPerm) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask)))) (and (= b_13@2  (and b_13@1 (IdenticalOnKnownLocations Ops_3Heap@10 Used_5Heap@0 TempMask@4))) (= Ops_3Mask@14 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_3Mask@13) null (List xs@0) (- (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_3Mask@13) null (List xs@0)) takeTransfer@10)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Ops_3Mask@13) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Ops_3Mask@13) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Ops_3Mask@13) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Ops_3Mask@13) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Ops_3Mask@13) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Ops_3Mask@13) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Ops_3Mask@13) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Ops_3Mask@13) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Ops_3Mask@13) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Ops_3Mask@13) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Ops_3Mask@13) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Ops_3Mask@13) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Ops_3Mask@13) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Ops_3Mask@13))))) (and (and (= neededTransfer@21 neededTransfer@20) (= Ops_3Mask@15 Ops_3Mask@14)) (and (= Used_5Mask@1 Used_5Mask@0) (= b_13@3 b_13@2)))) (and (=> (= (ControlFlow 0 102) 100) anon292_Then_correct) (=> (= (ControlFlow 0 102) 95) anon292_Else_correct)))))))
(let ((anon290_Else_correct  (=> (and (< maskTransfer@10 FullPerm) (= takeTransfer@10 maskTransfer@10)) (and (=> (= (ControlFlow 0 105) 102) anon291_Then_correct) (=> (= (ControlFlow 0 105) 103) anon291_Else_correct)))))
(let ((anon290_Then_correct  (=> (and (<= FullPerm maskTransfer@10) (= takeTransfer@10 FullPerm)) (and (=> (= (ControlFlow 0 104) 102) anon291_Then_correct) (=> (= (ControlFlow 0 104) 103) anon291_Else_correct)))))
(let ((anon289_Then_correct  (=> (and (and (and (and b_5@28 b_13@0) true) (> FullPerm 0.0)) (= maskTransfer@10 (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_3Mask@13) null (List xs@0)))) (and (=> (= (ControlFlow 0 106) 104) anon290_Then_correct) (=> (= (ControlFlow 0 106) 105) anon290_Else_correct)))))
(let ((anon289_Else_correct  (=> (not (and (and (and b_5@28 b_13@0) true) (> FullPerm 0.0))) (=> (and (and (= neededTransfer@21 FullPerm) (= Ops_3Mask@15 Ops_3Mask@13)) (and (= Used_5Mask@1 ZeroMask) (= b_13@3 b_13@0))) (and (=> (= (ControlFlow 0 101) 100) anon292_Then_correct) (=> (= (ControlFlow 0 101) 95) anon292_Else_correct))))))
(let ((anon288_Then_correct  (=> (and (=> b_5@28 (not (= xs@0 null))) (= initNeededTransfer@5 (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List xs@0)) FullPerm))) (and (=> (= (ControlFlow 0 107) (- 0 108)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 107) 106) anon289_Then_correct) (=> (= (ControlFlow 0 107) 101) anon289_Else_correct)))))))
(let ((anon288_Else_correct  (=> (and (and (and (not (=> b_5@28 (not (= xs@0 null)))) (= b_5@34 b_5@28)) (and (= Used_5Mask@4 ZeroMask) (= Mask@35 Mask@32))) (and (and (= b_13@7 b_13@0) (= Ops_3Mask@16 Ops_3Mask@13)) (and (= Heap@14 Heap@11) (= (ControlFlow 0 84) 83)))) anon171_correct)))
(let ((anon153_correct  (and (=> (= (ControlFlow 0 109) (- 0 110)) (=> (and b_5@24 b_11@4) (and (= neededTransfer@19 0.0) (= (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Used_4Mask@3) null (wand (not (= xs@0 null)) xs@0 xs@0 old_sum_xs@1 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9))) initNeededTransfer@4)))) (=> (=> (and b_5@24 b_11@4) (and (= neededTransfer@19 0.0) (= (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Used_4Mask@3) null (wand (not (= xs@0 null)) xs@0 xs@0 old_sum_xs@1 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9))) initNeededTransfer@4))) (=> (and (= b_12@0  (and b_5@24 b_11@4)) (= b_12@1  (and b_12@0 (state Result_5Heap Result_5Mask)))) (=> (and (and (and (= b_12@2  (and b_12@1 (sumMask Result_5Mask Ops_3Mask@13 Used_4Mask@3))) (= b_12@3  (and (and b_12@2 (IdenticalOnKnownLocations Ops_3Heap@10 Result_5Heap Ops_3Mask@13)) (IdenticalOnKnownLocations Used_4Heap@0 Result_5Heap Used_4Mask@3)))) (and (= b_12@4  (and b_12@3 (state Result_5Heap Result_5Mask))) (= b_5@25  (and b_5@24 b_12@4)))) (and (and (= b_5@26  (and b_5@25 b_11@4)) (= b_5@27  (and b_5@26 (= Used_4Heap@0 Ops_3Heap@10)))) (and (= b_5@28  (and b_5@27 (state Ops_3Heap@10 Ops_3Mask@13))) (= b_13@0  (and b_13 (state Used_5Heap@0 ZeroMask)))))) (and (=> (= (ControlFlow 0 109) 107) anon288_Then_correct) (=> (= (ControlFlow 0 109) 84) anon288_Else_correct))))))))
(let ((anon287_Else_correct  (=> (and (>= 0.0 takeTransfer@9) (= Mask@32 Mask@30)) (=> (and (and (= neededTransfer@19 neededTransfer@17) (= b_11@4 b_11@2)) (and (= Used_4Mask@3 Used_4Mask@1) (= (ControlFlow 0 113) 109))) anon153_correct))))
(let ((anon287_Then_correct  (=> (and (> takeTransfer@9 0.0) (= neededTransfer@18 (- neededTransfer@17 takeTransfer@9))) (=> (and (and (and (= Used_4Mask@2 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_4Mask@1) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Used_4Mask@1) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Used_4Mask@1) (store (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Used_4Mask@1) null (wand (not (= xs@0 null)) xs@0 xs@0 old_sum_xs@1 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)) (+ (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Used_4Mask@1) null (wand (not (= xs@0 null)) xs@0 xs@0 old_sum_xs@1 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9))) takeTransfer@9)) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Used_4Mask@1) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Used_4Mask@1) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Used_4Mask@1) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Used_4Mask@1) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Used_4Mask@1) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Used_4Mask@1) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Used_4Mask@1) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Used_4Mask@1) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Used_4Mask@1) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Used_4Mask@1) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Used_4Mask@1))) (= b_11@3  (and b_11@2 (state Used_4Heap@0 Used_4Mask@2)))) (and (= Mask@31 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@30) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@30) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@30) (store (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@30) null (wand (not (= xs@0 null)) xs@0 xs@0 old_sum_xs@1 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)) (- (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@30) null (wand (not (= xs@0 null)) xs@0 xs@0 old_sum_xs@1 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9))) takeTransfer@9)) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@30) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@30) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@30) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@30) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@30) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@30) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@30) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@30) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@30) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@30) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@30))) (= Mask@32 Mask@31))) (and (and (= neededTransfer@19 neededTransfer@18) (= b_11@4 b_11@3)) (and (= Used_4Mask@3 Used_4Mask@2) (= (ControlFlow 0 112) 109)))) anon153_correct))))
(let ((anon286_Else_correct  (=> (and (< maskTransfer@9 neededTransfer@17) (= takeTransfer@9 maskTransfer@9)) (and (=> (= (ControlFlow 0 115) 112) anon287_Then_correct) (=> (= (ControlFlow 0 115) 113) anon287_Else_correct)))))
(let ((anon286_Then_correct  (=> (and (<= neededTransfer@17 maskTransfer@9) (= takeTransfer@9 neededTransfer@17)) (and (=> (= (ControlFlow 0 114) 112) anon287_Then_correct) (=> (= (ControlFlow 0 114) 113) anon287_Else_correct)))))
(let ((anon285_Then_correct  (=> (and (and (and (and b_5@24 b_11@2) true) (> neededTransfer@17 0.0)) (= maskTransfer@9 (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@30) null (wand (not (= xs@0 null)) xs@0 xs@0 old_sum_xs@1 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9))))) (and (=> (= (ControlFlow 0 116) 114) anon286_Then_correct) (=> (= (ControlFlow 0 116) 115) anon286_Else_correct)))))
(let ((anon285_Else_correct  (=> (and (not (and (and (and b_5@24 b_11@2) true) (> neededTransfer@17 0.0))) (= Mask@32 Mask@30)) (=> (and (and (= neededTransfer@19 neededTransfer@17) (= b_11@4 b_11@2)) (and (= Used_4Mask@3 Used_4Mask@1) (= (ControlFlow 0 111) 109))) anon153_correct))))
(let ((anon284_Else_correct  (=> (>= 0.0 takeTransfer@8) (=> (and (and (= Ops_3Mask@13 Ops_3Mask@11) (= Used_4Mask@1 ZeroMask)) (and (= b_11@2 b_11@0) (= neededTransfer@17 1.0))) (and (=> (= (ControlFlow 0 119) 116) anon285_Then_correct) (=> (= (ControlFlow 0 119) 111) anon285_Else_correct))))))
(let ((anon284_Then_correct  (=> (> takeTransfer@8 0.0) (=> (and (and (and (= neededTransfer@16 (- 1.0 takeTransfer@8)) (= Used_4Mask@0 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (store (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) null (wand (not (= xs@0 null)) xs@0 xs@0 old_sum_xs@1 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)) (+ (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) null (wand (not (= xs@0 null)) xs@0 xs@0 old_sum_xs@1 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9))) takeTransfer@8)) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask)))) (and (= b_11@1  (and b_11@0 (state Used_4Heap@0 Used_4Mask@0))) (= Ops_3Mask@12 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_3Mask@11) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Ops_3Mask@11) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Ops_3Mask@11) (store (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Ops_3Mask@11) null (wand (not (= xs@0 null)) xs@0 xs@0 old_sum_xs@1 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)) (- (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Ops_3Mask@11) null (wand (not (= xs@0 null)) xs@0 xs@0 old_sum_xs@1 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9))) takeTransfer@8)) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Ops_3Mask@11) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Ops_3Mask@11) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Ops_3Mask@11) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Ops_3Mask@11) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Ops_3Mask@11) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Ops_3Mask@11) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Ops_3Mask@11) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Ops_3Mask@11) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Ops_3Mask@11) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Ops_3Mask@11) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Ops_3Mask@11))))) (and (and (= Ops_3Mask@13 Ops_3Mask@12) (= Used_4Mask@1 Used_4Mask@0)) (and (= b_11@2 b_11@1) (= neededTransfer@17 neededTransfer@16)))) (and (=> (= (ControlFlow 0 118) 116) anon285_Then_correct) (=> (= (ControlFlow 0 118) 111) anon285_Else_correct))))))
(let ((anon283_Else_correct  (=> (and (< maskTransfer@8 1.0) (= takeTransfer@8 maskTransfer@8)) (and (=> (= (ControlFlow 0 121) 118) anon284_Then_correct) (=> (= (ControlFlow 0 121) 119) anon284_Else_correct)))))
(let ((anon283_Then_correct  (=> (and (<= 1.0 maskTransfer@8) (= takeTransfer@8 1.0)) (and (=> (= (ControlFlow 0 120) 118) anon284_Then_correct) (=> (= (ControlFlow 0 120) 119) anon284_Else_correct)))))
(let ((anon282_Then_correct  (=> (and (and (and (and b_5@24 b_11@0) true) (> 1.0 0.0)) (= maskTransfer@8 (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Ops_3Mask@11) null (wand (not (= xs@0 null)) xs@0 xs@0 old_sum_xs@1 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9))))) (and (=> (= (ControlFlow 0 122) 120) anon283_Then_correct) (=> (= (ControlFlow 0 122) 121) anon283_Else_correct)))))
(let ((anon282_Else_correct  (=> (not (and (and (and b_5@24 b_11@0) true) (> 1.0 0.0))) (=> (and (and (= Ops_3Mask@13 Ops_3Mask@11) (= Used_4Mask@1 ZeroMask)) (and (= b_11@2 b_11@0) (= neededTransfer@17 1.0))) (and (=> (= (ControlFlow 0 117) 116) anon285_Then_correct) (=> (= (ControlFlow 0 117) 111) anon285_Else_correct))))))
(let ((anon141_correct  (=> (= initNeededTransfer@4 (+ (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) null (wand (not (= xs@0 null)) xs@0 xs@0 old_sum_xs@1 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9))) 1.0)) (and (=> (= (ControlFlow 0 123) (- 0 124)) (>= 1.0 0.0)) (=> (>= 1.0 0.0) (and (=> (= (ControlFlow 0 123) 122) anon282_Then_correct) (=> (= (ControlFlow 0 123) 117) anon282_Else_correct)))))))
(let ((anon276_Then_correct  (=> b_5@24 (and (and (=> (= (ControlFlow 0 138) 123) anon141_correct) (=> (= (ControlFlow 0 138) 137) anon278_Then_correct)) (=> (= (ControlFlow 0 138) 133) anon278_Else_correct)))))
(let ((anon276_Else_correct  (=> (and (not b_5@24) (= (ControlFlow 0 126) 123)) anon141_correct)))
(let ((anon275_Then_correct  (=> (and b_5@24 b_11@0) (and (=> (= (ControlFlow 0 139) 138) anon276_Then_correct) (=> (= (ControlFlow 0 139) 126) anon276_Else_correct)))))
(let ((anon275_Else_correct  (=> (and (not (and b_5@24 b_11@0)) (= (ControlFlow 0 125) 123)) anon141_correct)))
(let ((anon274_Then_correct  (=> (and b_5@24 (= b_11@0  (and b_11 (state Used_4Heap@0 ZeroMask)))) (and (=> (= (ControlFlow 0 140) 139) anon275_Then_correct) (=> (= (ControlFlow 0 140) 125) anon275_Else_correct)))))
(let ((anon274_Else_correct  (=> (not b_5@24) (=> (and (= Ops_3Heap@11 Ops_3Heap@10) (= b_5@43 b_5@24)) (=> (and (and (= Heap@15 Heap@11) (= Mask@36 Mask@30)) (and (= Ops_3Mask@18 Ops_3Mask@11) (= (ControlFlow 0 82) 80))) anon172_correct)))))
(let ((anon127_correct  (=> (state Ops_3Heap@9 Ops_3Mask@10) (=> (and (= b_5@23  (and b_5@22 (state Ops_3Heap@9 Ops_3Mask@10))) (= Mask@30 Mask@29)) (=> (and (and (= Ops_3Heap@10 Ops_3Heap@9) (= b_5@24 b_5@23)) (and (= Heap@11 Heap@10) (= Ops_3Mask@11 Ops_3Mask@10))) (and (=> (= (ControlFlow 0 142) 140) anon274_Then_correct) (=> (= (ControlFlow 0 142) 82) anon274_Else_correct)))))))
(let ((anon273_Else_correct  (=> (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@7) xs@0 next) null) (=> (and (= Ops_3Heap@9 Ops_3Heap@7) (= (ControlFlow 0 144) 142)) anon127_correct))))
(let ((anon273_Then_correct  (=> (not (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@7) xs@0 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_42 T@Ref) (f_55 T@Field_23355_1682) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| xs@0))) o_42 f_55) (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@7) xs@0 next)))) o_42 f_55)) (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| newPMask@2) o_42 f_55))
 :qid |stdinbpl.1343:41|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| newPMask@2) o_42 f_55))
)) (forall ((o_42@@0 T@Ref) (f_55@@0 T@Field_19163_19164) ) (!  (=> (or (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| xs@0))) o_42@@0 f_55@@0) (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@7) xs@0 next)))) o_42@@0 f_55@@0)) (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| newPMask@2) o_42@@0 f_55@@0))
 :qid |stdinbpl.1343:41|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| newPMask@2) o_42@@0 f_55@@0))
))) (forall ((o_42@@1 T@Ref) (f_55@@1 T@Field_19150_53) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| xs@0))) o_42@@1 f_55@@1) (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@7) xs@0 next)))) o_42@@1 f_55@@1)) (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| newPMask@2) o_42@@1 f_55@@1))
 :qid |stdinbpl.1343:41|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| newPMask@2) o_42@@1 f_55@@1))
))) (forall ((o_42@@2 T@Ref) (f_55@@2 T@Field_10382_22501) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| xs@0))) o_42@@2 f_55@@2) (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@7) xs@0 next)))) o_42@@2 f_55@@2)) (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| newPMask@2) o_42@@2 f_55@@2))
 :qid |stdinbpl.1343:41|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| newPMask@2) o_42@@2 f_55@@2))
))) (forall ((o_42@@3 T@Ref) (f_55@@3 T@Field_10382_10419) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| xs@0))) o_42@@3 f_55@@3) (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@7) xs@0 next)))) o_42@@3 f_55@@3)) (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| newPMask@2) o_42@@3 f_55@@3))
 :qid |stdinbpl.1343:41|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| newPMask@2) o_42@@3 f_55@@3))
))) (forall ((o_42@@4 T@Ref) (f_55@@4 T@Field_22481_1218) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| xs@0))) o_42@@4 f_55@@4) (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@7) xs@0 next)))) o_42@@4 f_55@@4)) (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| newPMask@2) o_42@@4 f_55@@4))
 :qid |stdinbpl.1343:41|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| newPMask@2) o_42@@4 f_55@@4))
))) (forall ((o_42@@5 T@Ref) (f_55@@5 T@Field_22481_10385) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| xs@0))) o_42@@5 f_55@@5) (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@7) xs@0 next)))) o_42@@5 f_55@@5)) (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| newPMask@2) o_42@@5 f_55@@5))
 :qid |stdinbpl.1343:41|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| newPMask@2) o_42@@5 f_55@@5))
))) (forall ((o_42@@6 T@Ref) (f_55@@6 T@Field_22481_53) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| xs@0))) o_42@@6 f_55@@6) (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@7) xs@0 next)))) o_42@@6 f_55@@6)) (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| newPMask@2) o_42@@6 f_55@@6))
 :qid |stdinbpl.1343:41|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| newPMask@2) o_42@@6 f_55@@6))
))) (forall ((o_42@@7 T@Ref) (f_55@@7 T@Field_22496_22501) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| xs@0))) o_42@@7 f_55@@7) (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@7) xs@0 next)))) o_42@@7 f_55@@7)) (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| newPMask@2) o_42@@7 f_55@@7))
 :qid |stdinbpl.1343:41|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| newPMask@2) o_42@@7 f_55@@7))
))) (forall ((o_42@@8 T@Ref) (f_55@@8 T@Field_22514_22515) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| xs@0))) o_42@@8 f_55@@8) (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@7) xs@0 next)))) o_42@@8 f_55@@8)) (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| newPMask@2) o_42@@8 f_55@@8))
 :qid |stdinbpl.1343:41|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| newPMask@2) o_42@@8 f_55@@8))
))) (forall ((o_42@@9 T@Ref) (f_55@@9 T@Field_10418_1682) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| xs@0))) o_42@@9 f_55@@9) (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@7) xs@0 next)))) o_42@@9 f_55@@9)) (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| newPMask@2) o_42@@9 f_55@@9))
 :qid |stdinbpl.1343:41|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| newPMask@2) o_42@@9 f_55@@9))
))) (forall ((o_42@@10 T@Ref) (f_55@@10 T@Field_10418_10385) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| xs@0))) o_42@@10 f_55@@10) (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@7) xs@0 next)))) o_42@@10 f_55@@10)) (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| newPMask@2) o_42@@10 f_55@@10))
 :qid |stdinbpl.1343:41|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| newPMask@2) o_42@@10 f_55@@10))
))) (forall ((o_42@@11 T@Ref) (f_55@@11 T@Field_10418_53) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| xs@0))) o_42@@11 f_55@@11) (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@7) xs@0 next)))) o_42@@11 f_55@@11)) (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| newPMask@2) o_42@@11 f_55@@11))
 :qid |stdinbpl.1343:41|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| newPMask@2) o_42@@11 f_55@@11))
))) (forall ((o_42@@12 T@Ref) (f_55@@12 T@Field_26559_26564) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| xs@0))) o_42@@12 f_55@@12) (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@7) xs@0 next)))) o_42@@12 f_55@@12)) (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| newPMask@2) o_42@@12 f_55@@12))
 :qid |stdinbpl.1343:41|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| newPMask@2) o_42@@12 f_55@@12))
))) (forall ((o_42@@13 T@Ref) (f_55@@13 T@Field_23822_23823) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| xs@0))) o_42@@13 f_55@@13) (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@7) xs@0 next)))) o_42@@13 f_55@@13)) (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| newPMask@2) o_42@@13 f_55@@13))
 :qid |stdinbpl.1343:41|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| newPMask@2) o_42@@13 f_55@@13))
))) (= Ops_3Heap@8 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Ops_3Heap@7) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@7) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Ops_3Heap@7) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Ops_3Heap@7) (store (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@7) null (|List#sm| xs@0) newPMask@2) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Ops_3Heap@7) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Ops_3Heap@7) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Ops_3Heap@7) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Ops_3Heap@7) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Ops_3Heap@7) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Ops_3Heap@7) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Ops_3Heap@7) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Ops_3Heap@7) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Ops_3Heap@7) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Ops_3Heap@7)))) (and (= Ops_3Heap@9 Ops_3Heap@8) (= (ControlFlow 0 143) 142))) anon127_correct))))
(let ((anon125_correct  (=> (and (= Ops_3Heap@6 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Ops_3Heap@5) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@5) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Ops_3Heap@5) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Ops_3Heap@5) (store (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@5) null (|List#sm| xs@0) (PolymorphicMapType_19639 (store (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@5) null (|List#sm| xs@0))) xs@0 val true) (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@5) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@5) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@5) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@5) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@5) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@5) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@5) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@5) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@5) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@5) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@5) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@5) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@5) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@5) null (|List#sm| xs@0))))) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Ops_3Heap@5) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Ops_3Heap@5) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Ops_3Heap@5) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Ops_3Heap@5) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Ops_3Heap@5) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Ops_3Heap@5) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Ops_3Heap@5) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Ops_3Heap@5) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Ops_3Heap@5) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Ops_3Heap@5))) (= Ops_3Heap@7 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Ops_3Heap@6) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@6) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Ops_3Heap@6) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Ops_3Heap@6) (store (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@6) null (|List#sm| xs@0) (PolymorphicMapType_19639 (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@6) null (|List#sm| xs@0))) (store (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@6) null (|List#sm| xs@0))) xs@0 next true) (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@6) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@6) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@6) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@6) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@6) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@6) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@6) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@6) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@6) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@6) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@6) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@6) null (|List#sm| xs@0))) (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@6) null (|List#sm| xs@0))))) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Ops_3Heap@6) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Ops_3Heap@6) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Ops_3Heap@6) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Ops_3Heap@6) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Ops_3Heap@6) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Ops_3Heap@6) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Ops_3Heap@6) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Ops_3Heap@6) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Ops_3Heap@6) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Ops_3Heap@6)))) (and (=> (= (ControlFlow 0 145) 143) anon273_Then_correct) (=> (= (ControlFlow 0 145) 144) anon273_Else_correct)))))
(let ((anon272_Else_correct  (=> (HasDirectPerm_10418_10419 Ops_3Mask@10 null (List xs@0)) (=> (and (= Ops_3Heap@5 Ops_3Heap@2) (= (ControlFlow 0 147) 145)) anon125_correct))))
(let ((anon272_Then_correct  (=> (not (HasDirectPerm_10418_10419 Ops_3Mask@10 null (List xs@0))) (=> (and (and (= Ops_3Heap@3 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Ops_3Heap@2) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@2) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Ops_3Heap@2) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Ops_3Heap@2) (store (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@2) null (|List#sm| xs@0) ZeroPMask) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Ops_3Heap@2) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Ops_3Heap@2) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Ops_3Heap@2) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Ops_3Heap@2) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Ops_3Heap@2) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Ops_3Heap@2) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Ops_3Heap@2) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Ops_3Heap@2) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Ops_3Heap@2) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Ops_3Heap@2))) (= Ops_3Heap@4 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Ops_3Heap@3) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@3) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Ops_3Heap@3) (store (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Ops_3Heap@3) null (List xs@0) freshVersion@0) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Ops_3Heap@3) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Ops_3Heap@3) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Ops_3Heap@3) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Ops_3Heap@3) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Ops_3Heap@3) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Ops_3Heap@3) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Ops_3Heap@3) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Ops_3Heap@3) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Ops_3Heap@3) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Ops_3Heap@3) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Ops_3Heap@3)))) (and (= Ops_3Heap@5 Ops_3Heap@4) (= (ControlFlow 0 146) 145))) anon125_correct))))
(let ((anon123_correct  (=> (= b_10@0  (and b_5@19 b_6@19)) (=> (and (= b_10@1  (and b_10@0 (state Result_4Heap Result_4Mask))) (= b_10@2  (and b_10@1 (sumMask Result_4Mask Ops_3Mask@9 Used_3Mask@12)))) (=> (and (and (and (= b_10@3  (and (and b_10@2 (IdenticalOnKnownLocations Ops_3Heap@2 Result_4Heap Ops_3Mask@9)) (IdenticalOnKnownLocations Used_3Heap@0 Result_4Heap Used_3Mask@12))) (= b_10@4  (and b_10@3 (state Result_4Heap Result_4Mask)))) (and (= b_5@20  (and b_5@19 b_10@4)) (= Ops_3Mask@10 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_3Mask@9) null (List xs@0) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_3Mask@9) null (List xs@0)) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Ops_3Mask@9) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Ops_3Mask@9) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Ops_3Mask@9) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Ops_3Mask@9) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Ops_3Mask@9) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Ops_3Mask@9) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Ops_3Mask@9) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Ops_3Mask@9) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Ops_3Mask@9) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Ops_3Mask@9) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Ops_3Mask@9) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Ops_3Mask@9) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Ops_3Mask@9) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Ops_3Mask@9))))) (and (and (= b_5@21  (and b_5@20 (state Ops_3Heap@2 Ops_3Mask@10))) (= b_5@22  (and b_5@21 (state Ops_3Heap@2 Ops_3Mask@10)))) (and (|List#trigger_10418| Ops_3Heap@2 (List xs@0)) (= (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Ops_3Heap@2) null (List xs@0)) (CombineFrames (FrameFragment_1682 (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Ops_3Heap@2) xs@0 val)) (CombineFrames (FrameFragment_10385 (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@2) xs@0 next)) (FrameFragment_10419 (ite (not (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@2) xs@0 next) null)) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Ops_3Heap@2) null (List (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@2) xs@0 next))) EmptyFrame)))))))) (and (=> (= (ControlFlow 0 148) 146) anon272_Then_correct) (=> (= (ControlFlow 0 148) 147) anon272_Else_correct)))))))
(let ((anon122_correct  (and (=> (= (ControlFlow 0 150) (- 0 151)) (=> (and b_5@15 b_6@18) (and (= neededTransfer@15 0.0) (= (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_3Mask@11) null (List arg_1_13@0)) initNeededTransfer@3)))) (=> (=> (and b_5@15 b_6@18) (and (= neededTransfer@15 0.0) (= (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_3Mask@11) null (List arg_1_13@0)) initNeededTransfer@3))) (=> (= b_9@0  (and b_5@15 b_6@18)) (=> (and (= b_9@1  (and b_9@0 (state Result_3Heap Result_3Mask))) (= b_9@2  (and b_9@1 (sumMask Result_3Mask Ops_3Mask@8 Used_3Mask@11)))) (=> (and (and (= b_9@3  (and (and b_9@2 (IdenticalOnKnownLocations Ops_3Heap@2 Result_3Heap Ops_3Mask@8)) (IdenticalOnKnownLocations Used_3Heap@0 Result_3Heap Used_3Mask@11))) (= b_9@4  (and b_9@3 (state Result_3Heap Result_3Mask)))) (and (= b_5@16  (and b_5@15 b_9@4)) (= b_5@17  (and b_5@16 b_6@18)))) (=> (and (and (and (= b_5@18  (and b_5@17 (= Used_3Heap@0 Ops_3Heap@2))) (= Ops_3Mask@9 Ops_3Mask@8)) (and (= Mask@29 Mask@28) (= Heap@10 Heap@9))) (and (and (= b_5@19 b_5@18) (= Used_3Mask@12 Used_3Mask@11)) (and (= b_6@19 b_6@18) (= (ControlFlow 0 150) 148)))) anon123_correct))))))))
(let ((anon271_Else_correct  (=> (>= 0.0 takeTransfer@7) (=> (and (= b_6@18 b_6@15) (= Used_3Mask@11 Used_3Mask@9)) (=> (and (and (= Heap@9 Heap@7) (= Mask@28 Mask@26)) (and (= neededTransfer@15 neededTransfer@13) (= (ControlFlow 0 154) 150))) anon122_correct)))))
(let ((anon271_Then_correct  (=> (> takeTransfer@7 0.0) (=> (and (= neededTransfer@14 (- neededTransfer@13 takeTransfer@7)) (= Used_3Mask@10 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_3Mask@9) null (List arg_1_13@0) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_3Mask@9) null (List arg_1_13@0)) takeTransfer@7)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Used_3Mask@9) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Used_3Mask@9) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Used_3Mask@9) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Used_3Mask@9) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Used_3Mask@9) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Used_3Mask@9) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Used_3Mask@9) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Used_3Mask@9) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Used_3Mask@9) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Used_3Mask@9) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Used_3Mask@9) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Used_3Mask@9) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Used_3Mask@9) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Used_3Mask@9)))) (=> (and (and (= b_6@16  (and b_6@15 (state Used_3Heap@0 Used_3Mask@10))) (= TempMask@3 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List arg_1_13@0) FullPerm) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask)))) (and (= b_6@17  (and b_6@16 (IdenticalOnKnownLocations Heap@7 Used_3Heap@0 TempMask@3))) (= Mask@27 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@26) null (List arg_1_13@0) (- (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@26) null (List arg_1_13@0)) takeTransfer@7)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@26) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@26) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@26) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@26) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@26) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@26) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@26) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@26) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@26) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@26) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@26) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@26) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@26) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@26))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_40 T@Ref) (f_52 T@Field_23355_1682) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@7) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_40 f_52) (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@7) xs@0 next)))) o_40 f_52)) (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| newPMask@1) o_40 f_52))
 :qid |stdinbpl.1299:49|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| newPMask@1) o_40 f_52))
)) (forall ((o_40@@0 T@Ref) (f_52@@0 T@Field_19163_19164) ) (!  (=> (or (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@7) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_40@@0 f_52@@0) (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@7) xs@0 next)))) o_40@@0 f_52@@0)) (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| newPMask@1) o_40@@0 f_52@@0))
 :qid |stdinbpl.1299:49|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| newPMask@1) o_40@@0 f_52@@0))
))) (forall ((o_40@@1 T@Ref) (f_52@@1 T@Field_19150_53) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@7) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_40@@1 f_52@@1) (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@7) xs@0 next)))) o_40@@1 f_52@@1)) (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| newPMask@1) o_40@@1 f_52@@1))
 :qid |stdinbpl.1299:49|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| newPMask@1) o_40@@1 f_52@@1))
))) (forall ((o_40@@2 T@Ref) (f_52@@2 T@Field_10382_22501) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@7) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_40@@2 f_52@@2) (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@7) xs@0 next)))) o_40@@2 f_52@@2)) (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| newPMask@1) o_40@@2 f_52@@2))
 :qid |stdinbpl.1299:49|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| newPMask@1) o_40@@2 f_52@@2))
))) (forall ((o_40@@3 T@Ref) (f_52@@3 T@Field_10382_10419) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@7) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_40@@3 f_52@@3) (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@7) xs@0 next)))) o_40@@3 f_52@@3)) (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| newPMask@1) o_40@@3 f_52@@3))
 :qid |stdinbpl.1299:49|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| newPMask@1) o_40@@3 f_52@@3))
))) (forall ((o_40@@4 T@Ref) (f_52@@4 T@Field_22481_1218) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@7) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_40@@4 f_52@@4) (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@7) xs@0 next)))) o_40@@4 f_52@@4)) (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| newPMask@1) o_40@@4 f_52@@4))
 :qid |stdinbpl.1299:49|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| newPMask@1) o_40@@4 f_52@@4))
))) (forall ((o_40@@5 T@Ref) (f_52@@5 T@Field_22481_10385) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@7) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_40@@5 f_52@@5) (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@7) xs@0 next)))) o_40@@5 f_52@@5)) (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| newPMask@1) o_40@@5 f_52@@5))
 :qid |stdinbpl.1299:49|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| newPMask@1) o_40@@5 f_52@@5))
))) (forall ((o_40@@6 T@Ref) (f_52@@6 T@Field_22481_53) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@7) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_40@@6 f_52@@6) (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@7) xs@0 next)))) o_40@@6 f_52@@6)) (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| newPMask@1) o_40@@6 f_52@@6))
 :qid |stdinbpl.1299:49|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| newPMask@1) o_40@@6 f_52@@6))
))) (forall ((o_40@@7 T@Ref) (f_52@@7 T@Field_22496_22501) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@7) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_40@@7 f_52@@7) (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@7) xs@0 next)))) o_40@@7 f_52@@7)) (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| newPMask@1) o_40@@7 f_52@@7))
 :qid |stdinbpl.1299:49|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| newPMask@1) o_40@@7 f_52@@7))
))) (forall ((o_40@@8 T@Ref) (f_52@@8 T@Field_22514_22515) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@7) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_40@@8 f_52@@8) (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@7) xs@0 next)))) o_40@@8 f_52@@8)) (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| newPMask@1) o_40@@8 f_52@@8))
 :qid |stdinbpl.1299:49|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| newPMask@1) o_40@@8 f_52@@8))
))) (forall ((o_40@@9 T@Ref) (f_52@@9 T@Field_10418_1682) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@7) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_40@@9 f_52@@9) (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@7) xs@0 next)))) o_40@@9 f_52@@9)) (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| newPMask@1) o_40@@9 f_52@@9))
 :qid |stdinbpl.1299:49|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| newPMask@1) o_40@@9 f_52@@9))
))) (forall ((o_40@@10 T@Ref) (f_52@@10 T@Field_10418_10385) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@7) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_40@@10 f_52@@10) (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@7) xs@0 next)))) o_40@@10 f_52@@10)) (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| newPMask@1) o_40@@10 f_52@@10))
 :qid |stdinbpl.1299:49|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| newPMask@1) o_40@@10 f_52@@10))
))) (forall ((o_40@@11 T@Ref) (f_52@@11 T@Field_10418_53) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@7) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_40@@11 f_52@@11) (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@7) xs@0 next)))) o_40@@11 f_52@@11)) (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| newPMask@1) o_40@@11 f_52@@11))
 :qid |stdinbpl.1299:49|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| newPMask@1) o_40@@11 f_52@@11))
))) (forall ((o_40@@12 T@Ref) (f_52@@12 T@Field_26559_26564) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@7) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_40@@12 f_52@@12) (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@7) xs@0 next)))) o_40@@12 f_52@@12)) (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| newPMask@1) o_40@@12 f_52@@12))
 :qid |stdinbpl.1299:49|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| newPMask@1) o_40@@12 f_52@@12))
))) (forall ((o_40@@13 T@Ref) (f_52@@13 T@Field_23822_23823) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@7) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_40@@13 f_52@@13) (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@7) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@7) xs@0 next)))) o_40@@13 f_52@@13)) (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| newPMask@1) o_40@@13 f_52@@13))
 :qid |stdinbpl.1299:49|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| newPMask@1) o_40@@13 f_52@@13))
))) (= Heap@8 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@7) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@7) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@7) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@7) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@7) (store (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@7) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)) newPMask@1) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@7) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@7) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@7) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@7) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@7) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@7) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@7) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@7) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@7)))) (and (= b_6@18 b_6@17) (= Used_3Mask@11 Used_3Mask@10))) (and (and (= Heap@9 Heap@8) (= Mask@28 Mask@27)) (and (= neededTransfer@15 neededTransfer@14) (= (ControlFlow 0 153) 150)))) anon122_correct))))))
(let ((anon270_Else_correct  (=> (and (< maskTransfer@7 neededTransfer@13) (= takeTransfer@7 maskTransfer@7)) (and (=> (= (ControlFlow 0 156) 153) anon271_Then_correct) (=> (= (ControlFlow 0 156) 154) anon271_Else_correct)))))
(let ((anon270_Then_correct  (=> (and (<= neededTransfer@13 maskTransfer@7) (= takeTransfer@7 neededTransfer@13)) (and (=> (= (ControlFlow 0 155) 153) anon271_Then_correct) (=> (= (ControlFlow 0 155) 154) anon271_Else_correct)))))
(let ((anon269_Then_correct  (=> (and (and (and (and b_5@15 b_6@15) true) (> neededTransfer@13 0.0)) (= maskTransfer@7 (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@26) null (List arg_1_13@0)))) (and (=> (= (ControlFlow 0 157) 155) anon270_Then_correct) (=> (= (ControlFlow 0 157) 156) anon270_Else_correct)))))
(let ((anon269_Else_correct  (=> (not (and (and (and b_5@15 b_6@15) true) (> neededTransfer@13 0.0))) (=> (and (= b_6@18 b_6@15) (= Used_3Mask@11 Used_3Mask@9)) (=> (and (and (= Heap@9 Heap@7) (= Mask@28 Mask@26)) (and (= neededTransfer@15 neededTransfer@13) (= (ControlFlow 0 152) 150))) anon122_correct)))))
(let ((anon268_Else_correct  (=> (>= 0.0 takeTransfer@6) (=> (and (and (= neededTransfer@13 FullPerm) (= Used_3Mask@9 Used_3Mask@7)) (and (= Ops_3Mask@8 Ops_3Mask@6) (= b_6@15 b_6@12))) (and (=> (= (ControlFlow 0 160) 157) anon269_Then_correct) (=> (= (ControlFlow 0 160) 152) anon269_Else_correct))))))
(let ((anon268_Then_correct  (=> (> takeTransfer@6 0.0) (=> (and (= neededTransfer@12 (- FullPerm takeTransfer@6)) (= Used_3Mask@8 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_3Mask@7) null (List arg_1_13@0) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_3Mask@7) null (List arg_1_13@0)) takeTransfer@6)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Used_3Mask@7) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Used_3Mask@7) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Used_3Mask@7) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Used_3Mask@7) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Used_3Mask@7) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Used_3Mask@7) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Used_3Mask@7) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Used_3Mask@7) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Used_3Mask@7) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Used_3Mask@7) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Used_3Mask@7) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Used_3Mask@7) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Used_3Mask@7) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Used_3Mask@7)))) (=> (and (and (and (= b_6@13  (and b_6@12 (state Used_3Heap@0 Used_3Mask@8))) (= TempMask@2 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List arg_1_13@0) FullPerm) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask)))) (and (= b_6@14  (and b_6@13 (IdenticalOnKnownLocations Ops_3Heap@2 Used_3Heap@0 TempMask@2))) (= Ops_3Mask@7 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_3Mask@6) null (List arg_1_13@0) (- (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_3Mask@6) null (List arg_1_13@0)) takeTransfer@6)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Ops_3Mask@6) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Ops_3Mask@6) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Ops_3Mask@6) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Ops_3Mask@6) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Ops_3Mask@6) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Ops_3Mask@6) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Ops_3Mask@6) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Ops_3Mask@6) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Ops_3Mask@6) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Ops_3Mask@6) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Ops_3Mask@6) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Ops_3Mask@6) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Ops_3Mask@6) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Ops_3Mask@6))))) (and (and (= neededTransfer@13 neededTransfer@12) (= Used_3Mask@9 Used_3Mask@8)) (and (= Ops_3Mask@8 Ops_3Mask@7) (= b_6@15 b_6@14)))) (and (=> (= (ControlFlow 0 159) 157) anon269_Then_correct) (=> (= (ControlFlow 0 159) 152) anon269_Else_correct)))))))
(let ((anon267_Else_correct  (=> (and (< maskTransfer@6 FullPerm) (= takeTransfer@6 maskTransfer@6)) (and (=> (= (ControlFlow 0 162) 159) anon268_Then_correct) (=> (= (ControlFlow 0 162) 160) anon268_Else_correct)))))
(let ((anon267_Then_correct  (=> (and (<= FullPerm maskTransfer@6) (= takeTransfer@6 FullPerm)) (and (=> (= (ControlFlow 0 161) 159) anon268_Then_correct) (=> (= (ControlFlow 0 161) 160) anon268_Else_correct)))))
(let ((anon266_Then_correct  (=> (and (and (and (and b_5@15 b_6@12) true) (> FullPerm 0.0)) (= maskTransfer@6 (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_3Mask@6) null (List arg_1_13@0)))) (and (=> (= (ControlFlow 0 163) 161) anon267_Then_correct) (=> (= (ControlFlow 0 163) 162) anon267_Else_correct)))))
(let ((anon266_Else_correct  (=> (not (and (and (and b_5@15 b_6@12) true) (> FullPerm 0.0))) (=> (and (and (= neededTransfer@13 FullPerm) (= Used_3Mask@9 Used_3Mask@7)) (and (= Ops_3Mask@8 Ops_3Mask@6) (= b_6@15 b_6@12))) (and (=> (= (ControlFlow 0 158) 157) anon269_Then_correct) (=> (= (ControlFlow 0 158) 152) anon269_Else_correct))))))
(let ((anon110_correct  (=> (and (= arg_1_13@0 (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Result_2Heap) xs@0 next)) (= initNeededTransfer@3 (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_3Mask@7) null (List arg_1_13@0)) FullPerm))) (and (=> (= (ControlFlow 0 164) (- 0 165)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 164) 163) anon266_Then_correct) (=> (= (ControlFlow 0 164) 158) anon266_Else_correct)))))))
(let ((anon265_Else_correct  (=> (and (not b_5@15) (= (ControlFlow 0 169) 164)) anon110_correct)))
(let ((anon265_Then_correct  (=> b_5@15 (and (=> (= (ControlFlow 0 167) (- 0 168)) (HasDirectPerm_10384_10385 Result_2Mask xs@0 next)) (=> (HasDirectPerm_10384_10385 Result_2Mask xs@0 next) (=> (= (ControlFlow 0 167) 164) anon110_correct))))))
(let ((anon264_Then_correct  (=> (and b_5@15 b_6@12) (and (=> (= (ControlFlow 0 170) 167) anon265_Then_correct) (=> (= (ControlFlow 0 170) 169) anon265_Else_correct)))))
(let ((anon264_Else_correct  (=> (and (not (and b_5@15 b_6@12)) (= (ControlFlow 0 166) 164)) anon110_correct)))
(let ((anon263_Then_correct  (=> (=> b_5@15 (not (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Result_2Heap) xs@0 next) null))) (and (=> (= (ControlFlow 0 171) 170) anon264_Then_correct) (=> (= (ControlFlow 0 171) 166) anon264_Else_correct)))))
(let ((anon263_Else_correct  (=> (and (and (and (not (=> b_5@15 (not (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Result_2Heap) xs@0 next) null)))) (= Ops_3Mask@9 Ops_3Mask@6)) (and (= Mask@29 Mask@26) (= Heap@10 Heap@7))) (and (and (= b_5@19 b_5@15) (= Used_3Mask@12 Used_3Mask@7)) (and (= b_6@19 b_6@12) (= (ControlFlow 0 149) 148)))) anon123_correct)))
(let ((anon106_correct  (and (=> (= (ControlFlow 0 172) (- 0 173)) (=> (and b_5@12 b_6@12) (and (= neededTransfer@11 0.0) (= (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Used_3Mask@7) xs@0 next) initNeededTransfer@2)))) (=> (=> (and b_5@12 b_6@12) (and (= neededTransfer@11 0.0) (= (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Used_3Mask@7) xs@0 next) initNeededTransfer@2))) (=> (and (and (and (= b_8@0  (and b_5@12 b_6@12)) (= b_8@1  (and b_8@0 (state Result_2Heap Result_2Mask)))) (and (= b_8@2  (and b_8@1 (sumMask Result_2Mask Ops_3Mask@6 Used_3Mask@7))) (= b_8@3  (and (and b_8@2 (IdenticalOnKnownLocations Ops_3Heap@2 Result_2Heap Ops_3Mask@6)) (IdenticalOnKnownLocations Used_3Heap@0 Result_2Heap Used_3Mask@7))))) (and (and (= b_8@4  (and b_8@3 (state Result_2Heap Result_2Mask))) (= b_5@13  (and b_5@12 b_8@4))) (and (= b_5@14  (and b_5@13 b_6@12)) (= b_5@15  (and b_5@14 (= Used_3Heap@0 Ops_3Heap@2)))))) (and (=> (= (ControlFlow 0 172) 171) anon263_Then_correct) (=> (= (ControlFlow 0 172) 149) anon263_Else_correct)))))))
(let ((anon262_Else_correct  (=> (>= 0.0 takeTransfer@5) (=> (and (= b_6@12 b_6@9) (= Mask@26 Mask@24)) (=> (and (and (= Heap@7 Heap@5) (= Used_3Mask@7 Used_3Mask@5)) (and (= neededTransfer@11 neededTransfer@9) (= (ControlFlow 0 176) 172))) anon106_correct)))))
(let ((anon262_Then_correct  (=> (> takeTransfer@5 0.0) (=> (and (and (= neededTransfer@10 (- neededTransfer@9 takeTransfer@5)) (= Used_3Mask@6 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_3Mask@5) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Used_3Mask@5) (store (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Used_3Mask@5) xs@0 next (+ (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Used_3Mask@5) xs@0 next) takeTransfer@5)) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Used_3Mask@5) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Used_3Mask@5) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Used_3Mask@5) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Used_3Mask@5) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Used_3Mask@5) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Used_3Mask@5) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Used_3Mask@5) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Used_3Mask@5) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Used_3Mask@5) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Used_3Mask@5) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Used_3Mask@5) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Used_3Mask@5)))) (and (= b_6@10  (and b_6@9 (state Used_3Heap@0 Used_3Mask@6))) (= b_6@11  (and b_6@10 (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@5) xs@0 next) (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Used_3Heap@0) xs@0 next)))))) (=> (and (and (and (= Mask@25 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@24) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@24) (store (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@24) xs@0 next (- (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@24) xs@0 next) takeTransfer@5)) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@24) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@24) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@24) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@24) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@24) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@24) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@24) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@24) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@24) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@24) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@24) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@24))) (= Heap@6 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@5) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@5) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@5) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@5) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@5) (store (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@5) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)) (PolymorphicMapType_19639 (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@5) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (store (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@5) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) xs@0 next true) (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@5) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@5) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@5) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@5) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@5) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@5) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@5) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@5) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@5) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@5) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@5) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@5) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@5) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))))) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@5) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@5) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@5) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@5) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@5) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@5) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@5) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@5) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@5)))) (and (= b_6@12 b_6@11) (= Mask@26 Mask@25))) (and (and (= Heap@7 Heap@6) (= Used_3Mask@7 Used_3Mask@6)) (and (= neededTransfer@11 neededTransfer@10) (= (ControlFlow 0 175) 172)))) anon106_correct)))))
(let ((anon261_Else_correct  (=> (and (< maskTransfer@5 neededTransfer@9) (= takeTransfer@5 maskTransfer@5)) (and (=> (= (ControlFlow 0 178) 175) anon262_Then_correct) (=> (= (ControlFlow 0 178) 176) anon262_Else_correct)))))
(let ((anon261_Then_correct  (=> (and (<= neededTransfer@9 maskTransfer@5) (= takeTransfer@5 neededTransfer@9)) (and (=> (= (ControlFlow 0 177) 175) anon262_Then_correct) (=> (= (ControlFlow 0 177) 176) anon262_Else_correct)))))
(let ((anon260_Then_correct  (=> (and (and (and (and b_5@12 b_6@9) true) (> neededTransfer@9 0.0)) (= maskTransfer@5 (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@24) xs@0 next))) (and (=> (= (ControlFlow 0 179) 177) anon261_Then_correct) (=> (= (ControlFlow 0 179) 178) anon261_Else_correct)))))
(let ((anon260_Else_correct  (=> (not (and (and (and b_5@12 b_6@9) true) (> neededTransfer@9 0.0))) (=> (and (= b_6@12 b_6@9) (= Mask@26 Mask@24)) (=> (and (and (= Heap@7 Heap@5) (= Used_3Mask@7 Used_3Mask@5)) (and (= neededTransfer@11 neededTransfer@9) (= (ControlFlow 0 174) 172))) anon106_correct)))))
(let ((anon259_Else_correct  (=> (>= 0.0 takeTransfer@4) (=> (and (and (= neededTransfer@9 FullPerm) (= Used_3Mask@5 Used_3Mask@3)) (and (= Ops_3Mask@6 Ops_3Mask@4) (= b_6@9 b_6@6))) (and (=> (= (ControlFlow 0 182) 179) anon260_Then_correct) (=> (= (ControlFlow 0 182) 174) anon260_Else_correct))))))
(let ((anon259_Then_correct  (=> (and (> takeTransfer@4 0.0) (= neededTransfer@8 (- FullPerm takeTransfer@4))) (=> (and (and (and (= Used_3Mask@4 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_3Mask@3) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Used_3Mask@3) (store (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Used_3Mask@3) xs@0 next (+ (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Used_3Mask@3) xs@0 next) takeTransfer@4)) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Used_3Mask@3) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Used_3Mask@3) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Used_3Mask@3) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Used_3Mask@3) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Used_3Mask@3) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Used_3Mask@3) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Used_3Mask@3) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Used_3Mask@3) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Used_3Mask@3) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Used_3Mask@3) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Used_3Mask@3) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Used_3Mask@3))) (= b_6@7  (and b_6@6 (state Used_3Heap@0 Used_3Mask@4)))) (and (= b_6@8  (and b_6@7 (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Ops_3Heap@2) xs@0 next) (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Used_3Heap@0) xs@0 next)))) (= Ops_3Mask@5 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_3Mask@4) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Ops_3Mask@4) (store (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Ops_3Mask@4) xs@0 next (- (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Ops_3Mask@4) xs@0 next) takeTransfer@4)) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Ops_3Mask@4) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Ops_3Mask@4) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Ops_3Mask@4) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Ops_3Mask@4) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Ops_3Mask@4) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Ops_3Mask@4) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Ops_3Mask@4) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Ops_3Mask@4) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Ops_3Mask@4) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Ops_3Mask@4) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Ops_3Mask@4) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Ops_3Mask@4))))) (and (and (= neededTransfer@9 neededTransfer@8) (= Used_3Mask@5 Used_3Mask@4)) (and (= Ops_3Mask@6 Ops_3Mask@5) (= b_6@9 b_6@8)))) (and (=> (= (ControlFlow 0 181) 179) anon260_Then_correct) (=> (= (ControlFlow 0 181) 174) anon260_Else_correct))))))
(let ((anon258_Else_correct  (=> (and (< maskTransfer@4 FullPerm) (= takeTransfer@4 maskTransfer@4)) (and (=> (= (ControlFlow 0 184) 181) anon259_Then_correct) (=> (= (ControlFlow 0 184) 182) anon259_Else_correct)))))
(let ((anon258_Then_correct  (=> (and (<= FullPerm maskTransfer@4) (= takeTransfer@4 FullPerm)) (and (=> (= (ControlFlow 0 183) 181) anon259_Then_correct) (=> (= (ControlFlow 0 183) 182) anon259_Else_correct)))))
(let ((anon257_Then_correct  (=> (and (and (and (and b_5@12 b_6@6) true) (> FullPerm 0.0)) (= maskTransfer@4 (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Ops_3Mask@4) xs@0 next))) (and (=> (= (ControlFlow 0 185) 183) anon258_Then_correct) (=> (= (ControlFlow 0 185) 184) anon258_Else_correct)))))
(let ((anon257_Else_correct  (=> (not (and (and (and b_5@12 b_6@6) true) (> FullPerm 0.0))) (=> (and (and (= neededTransfer@9 FullPerm) (= Used_3Mask@5 Used_3Mask@3)) (and (= Ops_3Mask@6 Ops_3Mask@4) (= b_6@9 b_6@6))) (and (=> (= (ControlFlow 0 180) 179) anon260_Then_correct) (=> (= (ControlFlow 0 180) 174) anon260_Else_correct))))))
(let ((anon94_correct  (and (=> (= (ControlFlow 0 186) (- 0 188)) (=> (and b_5@9 b_6@6) (and (= neededTransfer@7 0.0) (= (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Used_3Mask@3) xs@0 val) initNeededTransfer@1)))) (=> (=> (and b_5@9 b_6@6) (and (= neededTransfer@7 0.0) (= (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Used_3Mask@3) xs@0 val) initNeededTransfer@1))) (=> (= b_7@0  (and b_5@9 b_6@6)) (=> (and (and (and (= b_7@1  (and b_7@0 (state Result_1Heap Result_1Mask))) (= b_7@2  (and b_7@1 (sumMask Result_1Mask Ops_3Mask@4 Used_3Mask@3)))) (and (= b_7@3  (and (and b_7@2 (IdenticalOnKnownLocations Ops_3Heap@2 Result_1Heap Ops_3Mask@4)) (IdenticalOnKnownLocations Used_3Heap@0 Result_1Heap Used_3Mask@3))) (= b_7@4  (and b_7@3 (state Result_1Heap Result_1Mask))))) (and (and (= b_5@10  (and b_5@9 b_7@4)) (= b_5@11  (and b_5@10 b_6@6))) (and (= b_5@12  (and b_5@11 (= Used_3Heap@0 Ops_3Heap@2))) (= initNeededTransfer@2 (+ (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Used_3Mask@3) xs@0 next) FullPerm))))) (and (=> (= (ControlFlow 0 186) (- 0 187)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 186) 185) anon257_Then_correct) (=> (= (ControlFlow 0 186) 180) anon257_Else_correct))))))))))
(let ((anon256_Else_correct  (=> (>= 0.0 takeTransfer@3) (=> (and (= b_6@6 b_6@3) (= Heap@5 Heap@3)) (=> (and (and (= Used_3Mask@3 Used_3Mask@1) (= Mask@24 Mask@22)) (and (= neededTransfer@7 neededTransfer@5) (= (ControlFlow 0 191) 186))) anon94_correct)))))
(let ((anon256_Then_correct  (=> (> takeTransfer@3 0.0) (=> (and (and (= neededTransfer@6 (- neededTransfer@5 takeTransfer@3)) (= Used_3Mask@2 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_3Mask@1) (store (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Used_3Mask@1) xs@0 val (+ (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Used_3Mask@1) xs@0 val) takeTransfer@3)) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Used_3Mask@1) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Used_3Mask@1) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Used_3Mask@1) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Used_3Mask@1) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Used_3Mask@1) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Used_3Mask@1) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Used_3Mask@1) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Used_3Mask@1) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Used_3Mask@1) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Used_3Mask@1) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Used_3Mask@1) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Used_3Mask@1) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Used_3Mask@1)))) (and (= b_6@4  (and b_6@3 (state Used_3Heap@0 Used_3Mask@2))) (= b_6@5  (and b_6@4 (= (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@3) xs@0 val) (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Used_3Heap@0) xs@0 val)))))) (=> (and (and (and (= Mask@23 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@22) (store (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@22) xs@0 val (- (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@22) xs@0 val) takeTransfer@3)) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@22) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@22) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@22) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@22) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@22) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@22) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@22) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@22) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@22) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@22) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@22) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@22) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@22))) (= Heap@4 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@3) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@3) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@3) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@3) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@3) (store (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@3) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)) (PolymorphicMapType_19639 (store (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@3) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) xs@0 val true) (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@3) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@3) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@3) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@3) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@3) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@3) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@3) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@3) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@3) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@3) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@3) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@3) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@3) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@3) null (|wand#sm| (not (= xs@1 null)) xs@1 xs@1 old_sum_xs@2 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))))) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@3) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@3) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@3) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@3) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@3) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@3) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@3) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@3) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@3)))) (and (= b_6@6 b_6@5) (= Heap@5 Heap@4))) (and (and (= Used_3Mask@3 Used_3Mask@2) (= Mask@24 Mask@23)) (and (= neededTransfer@7 neededTransfer@6) (= (ControlFlow 0 190) 186)))) anon94_correct)))))
(let ((anon255_Else_correct  (=> (and (< maskTransfer@3 neededTransfer@5) (= takeTransfer@3 maskTransfer@3)) (and (=> (= (ControlFlow 0 193) 190) anon256_Then_correct) (=> (= (ControlFlow 0 193) 191) anon256_Else_correct)))))
(let ((anon255_Then_correct  (=> (and (<= neededTransfer@5 maskTransfer@3) (= takeTransfer@3 neededTransfer@5)) (and (=> (= (ControlFlow 0 192) 190) anon256_Then_correct) (=> (= (ControlFlow 0 192) 191) anon256_Else_correct)))))
(let ((anon254_Then_correct  (=> (and (and (and (and b_5@9 b_6@3) true) (> neededTransfer@5 0.0)) (= maskTransfer@3 (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@22) xs@0 val))) (and (=> (= (ControlFlow 0 194) 192) anon255_Then_correct) (=> (= (ControlFlow 0 194) 193) anon255_Else_correct)))))
(let ((anon254_Else_correct  (=> (not (and (and (and b_5@9 b_6@3) true) (> neededTransfer@5 0.0))) (=> (and (= b_6@6 b_6@3) (= Heap@5 Heap@3)) (=> (and (and (= Used_3Mask@3 Used_3Mask@1) (= Mask@24 Mask@22)) (and (= neededTransfer@7 neededTransfer@5) (= (ControlFlow 0 189) 186))) anon94_correct)))))
(let ((anon253_Else_correct  (=> (>= 0.0 takeTransfer@2) (=> (and (and (= neededTransfer@5 FullPerm) (= Ops_3Mask@4 Ops_3Mask@2)) (and (= Used_3Mask@1 ZeroMask) (= b_6@3 b_6@0))) (and (=> (= (ControlFlow 0 197) 194) anon254_Then_correct) (=> (= (ControlFlow 0 197) 189) anon254_Else_correct))))))
(let ((anon253_Then_correct  (=> (and (> takeTransfer@2 0.0) (= neededTransfer@4 (- FullPerm takeTransfer@2))) (=> (and (and (and (= Used_3Mask@0 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) (store (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) xs@0 val (+ (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) xs@0 val) takeTransfer@2)) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask))) (= b_6@1  (and b_6@0 (state Used_3Heap@0 Used_3Mask@0)))) (and (= b_6@2  (and b_6@1 (= (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Ops_3Heap@2) xs@0 val) (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Used_3Heap@0) xs@0 val)))) (= Ops_3Mask@3 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_3Mask@2) (store (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Ops_3Mask@2) xs@0 val (- (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Ops_3Mask@2) xs@0 val) takeTransfer@2)) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Ops_3Mask@2) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Ops_3Mask@2) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Ops_3Mask@2) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Ops_3Mask@2) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Ops_3Mask@2) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Ops_3Mask@2) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Ops_3Mask@2) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Ops_3Mask@2) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Ops_3Mask@2) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Ops_3Mask@2) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Ops_3Mask@2) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Ops_3Mask@2) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Ops_3Mask@2))))) (and (and (= neededTransfer@5 neededTransfer@4) (= Ops_3Mask@4 Ops_3Mask@3)) (and (= Used_3Mask@1 Used_3Mask@0) (= b_6@3 b_6@2)))) (and (=> (= (ControlFlow 0 196) 194) anon254_Then_correct) (=> (= (ControlFlow 0 196) 189) anon254_Else_correct))))))
(let ((anon252_Else_correct  (=> (and (< maskTransfer@2 FullPerm) (= takeTransfer@2 maskTransfer@2)) (and (=> (= (ControlFlow 0 199) 196) anon253_Then_correct) (=> (= (ControlFlow 0 199) 197) anon253_Else_correct)))))
(let ((anon252_Then_correct  (=> (and (<= FullPerm maskTransfer@2) (= takeTransfer@2 FullPerm)) (and (=> (= (ControlFlow 0 198) 196) anon253_Then_correct) (=> (= (ControlFlow 0 198) 197) anon253_Else_correct)))))
(let ((anon251_Then_correct  (=> (and (and (and (and b_5@9 b_6@0) true) (> FullPerm 0.0)) (= maskTransfer@2 (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Ops_3Mask@2) xs@0 val))) (and (=> (= (ControlFlow 0 200) 198) anon252_Then_correct) (=> (= (ControlFlow 0 200) 199) anon252_Else_correct)))))
(let ((anon251_Else_correct  (=> (not (and (and (and b_5@9 b_6@0) true) (> FullPerm 0.0))) (=> (and (and (= neededTransfer@5 FullPerm) (= Ops_3Mask@4 Ops_3Mask@2)) (and (= Used_3Mask@1 ZeroMask) (= b_6@3 b_6@0))) (and (=> (= (ControlFlow 0 195) 194) anon254_Then_correct) (=> (= (ControlFlow 0 195) 189) anon254_Else_correct))))))
(let ((anon250_Then_correct  (=> b_5@9 (=> (and (= b_6@0  (and b_6 (state Used_3Heap@0 ZeroMask))) (= initNeededTransfer@1 (+ (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) xs@0 val) FullPerm))) (and (=> (= (ControlFlow 0 201) (- 0 202)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 201) 200) anon251_Then_correct) (=> (= (ControlFlow 0 201) 195) anon251_Else_correct))))))))
(let ((anon250_Else_correct  (=> (and (not b_5@9) (= Mask@30 Mask@22)) (=> (and (and (= Ops_3Heap@10 Ops_3Heap@2) (= b_5@24 b_5@9)) (and (= Heap@11 Heap@3) (= Ops_3Mask@11 Ops_3Mask@2))) (and (=> (= (ControlFlow 0 141) 140) anon274_Then_correct) (=> (= (ControlFlow 0 141) 82) anon274_Else_correct))))))
(let ((anon81_correct  (=> (and (= b_5@8  (and b_5@7 (state Ops_3Heap@2 Ops_3Mask@2))) (= b_5@9  (and b_5@8 (state Ops_3Heap@2 Ops_3Mask@2)))) (and (=> (= (ControlFlow 0 203) 201) anon250_Then_correct) (=> (= (ControlFlow 0 203) 141) anon250_Else_correct)))))
(let ((anon80_correct  (=> (= b_5@6  (and b_5@5 (= (sum_rec Ops_3Heap@1 xs@1) old_sum_xs@2))) (=> (and (and (= b_5@7 b_5@6) (= Ops_3Mask@2 Ops_3Mask@1)) (and (= Ops_3Heap@2 Ops_3Heap@1) (= (ControlFlow 0 208) 203))) anon81_correct))))
(let ((anon249_Else_correct  (=> (= Ops_3Heap@1 Ops_3Heap@0) (=> (and (= b_5@5 b_5@3) (= (ControlFlow 0 212) 208)) anon80_correct))))
(let ((anon249_Then_correct  (and (=> (= (ControlFlow 0 210) (- 0 211)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_3Mask@1) null (List xs@1))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_3Mask@1) null (List xs@1)))) (=> (and (and (= b_5@4  (and b_5@3 (IdenticalOnKnownLocations Ops_3Heap@0 ExhaleHeap@7 Ops_3Mask@1))) (= Ops_3Heap@1 ExhaleHeap@7)) (and (= b_5@5 false) (= (ControlFlow 0 210) 208))) anon80_correct)))))
(let ((anon248_Then_correct  (=> b_5@3 (and (=> (= (ControlFlow 0 213) 210) anon249_Then_correct) (=> (= (ControlFlow 0 213) 212) anon249_Else_correct)))))
(let ((anon248_Else_correct  (=> (and (and (not b_5@3) (= Ops_3Heap@1 Ops_3Heap@0)) (and (= b_5@5 b_5@3) (= (ControlFlow 0 209) 208))) anon80_correct)))
(let ((anon247_Then_correct  (=> (and b_5@2 (= b_5@3  (and b_5@2 (state Ops_3Heap@0 Ops_3Mask@1)))) (and (=> (= (ControlFlow 0 214) 213) anon248_Then_correct) (=> (= (ControlFlow 0 214) 209) anon248_Else_correct)))))
(let ((anon247_Else_correct  (=> (not b_5@2) (=> (and (and (= b_5@7 b_5@2) (= Ops_3Mask@2 Ops_3Mask@1)) (and (= Ops_3Heap@2 Ops_3Heap@0) (= (ControlFlow 0 207) 203))) anon81_correct))))
(let ((anon246_Else_correct  (=> (not b_5@0) (=> (and (= Ops_3Mask@1 ZeroMask) (= b_5@2 b_5@0)) (and (=> (= (ControlFlow 0 216) 214) anon247_Then_correct) (=> (= (ControlFlow 0 216) 207) anon247_Else_correct))))))
(let ((anon246_Then_correct  (=> b_5@0 (=> (and (and (= Ops_3Mask@0 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List xs@1) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List xs@1)) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask))) (= b_5@1  (and b_5@0 (state Ops_3Heap@0 Ops_3Mask@0)))) (and (= Ops_3Mask@1 Ops_3Mask@0) (= b_5@2 b_5@1))) (and (=> (= (ControlFlow 0 215) 214) anon247_Then_correct) (=> (= (ControlFlow 0 215) 207) anon247_Else_correct))))))
(let ((anon245_Then_correct  (=> b_5@0 (and (=> (= (ControlFlow 0 217) 215) anon246_Then_correct) (=> (= (ControlFlow 0 217) 216) anon246_Else_correct)))))
(let ((anon245_Else_correct  (=> (not b_5@0) (=> (and (and (= b_5@7 b_5@0) (= Ops_3Mask@2 ZeroMask)) (and (= Ops_3Heap@2 Ops_3Heap@0) (= (ControlFlow 0 206) 203))) anon81_correct))))
(let ((anon244_Then_correct  (=> (=> b_5@0 (not (= xs@1 null))) (and (=> (= (ControlFlow 0 218) 217) anon245_Then_correct) (=> (= (ControlFlow 0 218) 206) anon245_Else_correct)))))
(let ((anon244_Else_correct  (=> (not (=> b_5@0 (not (= xs@1 null)))) (=> (and (and (= b_5@7 b_5@0) (= Ops_3Mask@2 ZeroMask)) (and (= Ops_3Heap@2 Ops_3Heap@0) (= (ControlFlow 0 205) 203))) anon81_correct))))
(let ((anon243_Then_correct  (=> b_5@0 (and (=> (= (ControlFlow 0 219) 218) anon244_Then_correct) (=> (= (ControlFlow 0 219) 205) anon244_Else_correct)))))
(let ((anon243_Else_correct  (=> (not b_5@0) (=> (and (and (= b_5@7 b_5@0) (= Ops_3Mask@2 ZeroMask)) (and (= Ops_3Heap@2 Ops_3Heap@0) (= (ControlFlow 0 204) 203))) anon81_correct))))
(let ((anon71_correct  (=> (and (and (= old_sum_xs@2 (ite (= xs@1 null) 0 (sum_rec Heap@3 xs@1))) (state Heap@3 Mask@22)) (and (= b_5@0  (and b_5 (state Ops_3Heap@0 ZeroMask))) (= b_4@0  (and b_4 (state Used_2Heap@0 ZeroMask))))) (and (=> (= (ControlFlow 0 220) 219) anon243_Then_correct) (=> (= (ControlFlow 0 220) 204) anon243_Else_correct)))))
(let ((anon241_Then_correct  (=> (and (= xs@1 null) (= (ControlFlow 0 221) 220)) anon71_correct)))
(let ((anon242_Then_correct  (=> (= (ControlFlow 0 45) (- 0 44)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@22) null (List xs@1)))))))
(let ((anon241_Else_correct  (=> (not (= xs@1 null)) (and (=> (= (ControlFlow 0 222) 45) anon242_Then_correct) (=> (= (ControlFlow 0 222) 220) anon71_correct)))))
(let ((anon67_correct  (=> (and (state Heap@3 Mask@22) (state Heap@3 Mask@22)) (and (=> (= (ControlFlow 0 223) (- 0 225)) (HasDirectPerm_10382_1682 Mask@22 xs@0 val)) (=> (HasDirectPerm_10382_1682 Mask@22 xs@0 val) (=> (and (= sum_3@1 (+ sum_3@0 (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@3) xs@0 val))) (state Heap@3 Mask@22)) (and (=> (= (ControlFlow 0 223) (- 0 224)) (HasDirectPerm_10384_10385 Mask@22 xs@0 next)) (=> (HasDirectPerm_10384_10385 Mask@22 xs@0 next) (=> (and (= xs@1 (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@3) xs@0 next)) (state Heap@3 Mask@22)) (and (=> (= (ControlFlow 0 223) 221) anon241_Then_correct) (=> (= (ControlFlow 0 223) 222) anon241_Else_correct)))))))))))
(let ((anon240_Else_correct  (=> (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@3) xs@0 next) null) (=> (and (= Mask@22 Mask@20) (= (ControlFlow 0 227) 223)) anon67_correct))))
(let ((anon240_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@3) xs@0 next) null)) (= Mask@21 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@20) null (List (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@3) xs@0 next)) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@20) null (List (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@3) xs@0 next))) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@20) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@20) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@20) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@20) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@20) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@20) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@20) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@20) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@20) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@20) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@20) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@20) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@20) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@20)))) (=> (and (and (InsidePredicate_10418_10418 (List xs@0) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@3) null (List xs@0)) (List (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@3) xs@0 next)) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@3) null (List (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@3) xs@0 next)))) (state Heap@3 Mask@21)) (and (= Mask@22 Mask@21) (= (ControlFlow 0 226) 223))) anon67_correct))))
(let ((anon65_correct  (=> (and (not (= xs@0 null)) (= Mask@19 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@18) (store (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@18) xs@0 val (+ (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@18) xs@0 val) FullPerm)) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@18) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@18) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@18) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@18) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@18) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@18) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@18) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@18) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@18) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@18) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@18) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@18) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@18)))) (=> (and (and (state Heap@3 Mask@19) (not (= xs@0 null))) (and (= Mask@20 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@19) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@19) (store (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@19) xs@0 next (+ (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@19) xs@0 next) FullPerm)) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@19) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@19) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@19) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@19) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@19) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@19) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@19) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@19) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@19) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@19) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@19) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@19))) (state Heap@3 Mask@20))) (and (=> (= (ControlFlow 0 228) 226) anon240_Then_correct) (=> (= (ControlFlow 0 228) 227) anon240_Else_correct))))))
(let ((anon239_Else_correct  (=> (HasDirectPerm_10418_10419 Mask@18 null (List xs@0)) (=> (and (= Heap@3 ExhaleHeap@3) (= (ControlFlow 0 230) 228)) anon65_correct))))
(let ((anon239_Then_correct  (=> (and (and (not (HasDirectPerm_10418_10419 Mask@18 null (List xs@0))) (= Heap@2 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@3) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@3) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@3) (store (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@3) null (List xs@0) newVersion@0) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@3) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@3) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@3) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@3) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@3) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@3) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@3) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@3) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@3) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@3) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@3)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 229) 228))) anon65_correct)))
(let ((anon63_correct  (=> (= Mask@18 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@17) null (List xs@0) (- (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@17) null (List xs@0)) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@17) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@17) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@17) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@17) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@17) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@17) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@17) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@17) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@17) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@17) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@17) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@17) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@17) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@17))) (and (=> (= (ControlFlow 0 231) 229) anon239_Then_correct) (=> (= (ControlFlow 0 231) 230) anon239_Else_correct)))))
(let ((anon238_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 234) 231)) anon63_correct)))
(let ((anon238_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 232) (- 0 233)) (<= FullPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@17) null (List xs@0)))) (=> (<= FullPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@17) null (List xs@0))) (=> (= (ControlFlow 0 232) 231) anon63_correct))))))
(let ((anon61_correct  (=> (state ExhaleHeap@3 Mask@16) (=> (and (and (and (and (= old_sum_xs@1 (ite (= xs@0 null) 0 (sum_rec ExhaleHeap@3 xs@0))) (state ExhaleHeap@3 Mask@16)) (and (= sum_3@0 (- (sum_rec Heap@@50 ys@@9) old_sum_xs@1)) (state ExhaleHeap@3 Mask@16))) (and (and (= Mask@17 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@16) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@16) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@16) (store (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@16) null (wand (not (= xs@0 null)) xs@0 xs@0 old_sum_xs@1 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)) (+ (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@16) null (wand (not (= xs@0 null)) xs@0 xs@0 old_sum_xs@1 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9))) FullPerm)) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@16) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@16) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@16) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@16) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@16) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@16) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@16) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@16) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@16) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@16) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@16))) (state ExhaleHeap@3 Mask@17)) (and (state ExhaleHeap@3 Mask@17) (not (= xs@0 null))))) (and (and (and (state ExhaleHeap@3 Mask@17) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@3) oldXs $allocated)) (and (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@3) zs $allocated) (state ExhaleHeap@3 Mask@17))) (and (and (state ExhaleHeap@3 Mask@17) (state ExhaleHeap@3 Mask@17)) (and (|List#trigger_10418| ExhaleHeap@3 (List xs@0)) (= (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@3) null (List xs@0)) (CombineFrames (FrameFragment_1682 (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@3) xs@0 val)) (CombineFrames (FrameFragment_10385 (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@3) xs@0 next)) (FrameFragment_10419 (ite (not (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@3) xs@0 next) null)) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@3) null (List (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@3) xs@0 next))) EmptyFrame))))))))) (and (=> (= (ControlFlow 0 235) 232) anon238_Then_correct) (=> (= (ControlFlow 0 235) 234) anon238_Else_correct))))))
(let ((anon237_Else_correct  (=> (= xs@0 null) (=> (and (= Mask@16 ZeroMask) (= (ControlFlow 0 237) 235)) anon61_correct))))
(let ((anon237_Then_correct  (=> (not (= xs@0 null)) (=> (and (and (= Mask@15 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List xs@0) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List xs@0)) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask))) (state ExhaleHeap@3 Mask@15)) (and (= Mask@16 Mask@15) (= (ControlFlow 0 236) 235))) anon61_correct))))
(let ((anon236_Then_correct  (=> (state ExhaleHeap@3 ZeroMask) (and (=> (= (ControlFlow 0 238) 236) anon237_Then_correct) (=> (= (ControlFlow 0 238) 237) anon237_Else_correct)))))
(let ((anon203_correct  (=> (and (= Mask@14 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@13) null (List ys@@9) (- (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@13) null (List ys@@9)) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@13) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@13) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@13) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@13) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@13) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@13) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@13) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@13) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@13) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@13) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@13) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@13) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@13) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@13))) (= (ControlFlow 0 27) (- 0 26))) (= sum_3@0 (sum_rec Heap@@50 ys@@9)))))
(let ((anon313_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 30) 27)) anon203_correct)))
(let ((anon313_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (<= FullPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@13) null (List ys@@9)))) (=> (<= FullPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@13) null (List ys@@9))) (=> (= (ControlFlow 0 28) 27) anon203_correct))))))
(let ((anon201_correct  (=> (state ExhaleHeap@3 Mask@12) (=> (and (and (and (= Mask@13 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@12) null (List ys@@9) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@12) null (List ys@@9)) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@12) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@12) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@12) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@12) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@12) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@12) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@12) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@12) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@12) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@12) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@12) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@12) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@12) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@12))) (state ExhaleHeap@3 Mask@13)) (and (state ExhaleHeap@3 Mask@13) (= (sum_rec ExhaleHeap@3 ys@@9) (sum_rec Heap@@50 ys@@9)))) (and (and (state ExhaleHeap@3 Mask@13) (IdenticalOnKnownLocations ExhaleHeap@3 ExhaleHeap@4 Mask@13)) (and (state ExhaleHeap@4 Mask@13) (state ExhaleHeap@4 Mask@13)))) (and (=> (= (ControlFlow 0 31) 28) anon313_Then_correct) (=> (= (ControlFlow 0 31) 30) anon313_Else_correct))))))
(let ((anon200_correct  (=> (= Mask@11 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@10) null (List xs@0) (- (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@10) null (List xs@0)) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@10) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@10) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@10) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@10) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@10) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@10) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@10) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@10) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@10) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@10) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@10) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@10) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@10) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@10))) (and (=> (= (ControlFlow 0 33) (- 0 34)) (= (sum_rec ExhaleHeap@3 xs@0) old_sum_xs@1)) (=> (= (sum_rec ExhaleHeap@3 xs@0) old_sum_xs@1) (=> (and (= Mask@12 Mask@11) (= (ControlFlow 0 33) 31)) anon201_correct))))))
(let ((anon312_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 37) 33)) anon200_correct)))
(let ((anon312_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 35) (- 0 36)) (<= FullPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@10) null (List xs@0)))) (=> (<= FullPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@10) null (List xs@0))) (=> (= (ControlFlow 0 35) 33) anon200_correct))))))
(let ((anon311_Then_correct  (=> (not (= xs@0 null)) (and (=> (= (ControlFlow 0 38) 35) anon312_Then_correct) (=> (= (ControlFlow 0 38) 37) anon312_Else_correct)))))
(let ((anon311_Else_correct  (=> (= xs@0 null) (=> (and (= Mask@12 Mask@10) (= (ControlFlow 0 32) 31)) anon201_correct))))
(let ((anon197_correct  (=> (state ExhaleHeap@3 Mask@8) (=> (and (and (and (= old_sum_xs@1 (ite (= xs@0 null) 0 (sum_rec ExhaleHeap@3 xs@0))) (state ExhaleHeap@3 Mask@8)) (and (= sum_3@0 (- (sum_rec Heap@@50 ys@@9) old_sum_xs@1)) (state ExhaleHeap@3 Mask@8))) (and (and (= Mask@9 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@8) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@8) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@8) (store (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@8) null (wand (not (= xs@0 null)) xs@0 xs@0 old_sum_xs@1 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)) (+ (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@8) null (wand (not (= xs@0 null)) xs@0 xs@0 old_sum_xs@1 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9))) FullPerm)) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@8) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@8) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@8) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@8) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@8) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@8) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@8) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@8) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@8) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@8) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@8))) (state ExhaleHeap@3 Mask@9)) (and (state ExhaleHeap@3 Mask@9) (state ExhaleHeap@3 Mask@9)))) (and (=> (= (ControlFlow 0 39) (- 0 40)) (<= FullPerm (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@9) null (wand (not (= xs@0 null)) xs@0 xs@0 old_sum_xs@1 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9))))) (=> (<= FullPerm (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@9) null (wand (not (= xs@0 null)) xs@0 xs@0 old_sum_xs@1 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (=> (and (= Mask@10 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@9) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@9) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@9) (store (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@9) null (wand (not (= xs@0 null)) xs@0 xs@0 old_sum_xs@1 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)) (- (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@9) null (wand (not (= xs@0 null)) xs@0 xs@0 old_sum_xs@1 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9))) FullPerm)) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@9) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@9) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@9) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@9) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@9) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@9) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@9) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@9) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@9) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@9) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@9))) (state ExhaleHeap@3 Mask@10)) (and (=> (= (ControlFlow 0 39) 38) anon311_Then_correct) (=> (= (ControlFlow 0 39) 32) anon311_Else_correct)))))))))
(let ((anon310_Else_correct  (=> (= xs@0 null) (=> (and (= Mask@8 Mask@6) (= (ControlFlow 0 42) 39)) anon197_correct))))
(let ((anon310_Then_correct  (=> (not (= xs@0 null)) (=> (and (and (= Mask@7 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@6) null (List xs@0) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@6) null (List xs@0)) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@6))) (state ExhaleHeap@3 Mask@7)) (and (= Mask@8 Mask@7) (= (ControlFlow 0 41) 39))) anon197_correct))))
(let ((anon236_Else_correct  (=> (and (not (not (= xs@0 null))) (state ExhaleHeap@3 Mask@6)) (and (=> (= (ControlFlow 0 43) 41) anon310_Then_correct) (=> (= (ControlFlow 0 43) 42) anon310_Else_correct)))))
(let ((anon233_Then_correct  (=> (= (ControlFlow 0 16) (- 0 15)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| WandDefLHSMask@2) null (List xs@0)))))))
(let ((anon235_Else_correct true))
(let ((anon235_Then_correct  (=> (= (ControlFlow 0 11) (- 0 10)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@0) null (List ys@@9)))))))
(let ((anon234_Then_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| WandDefRHSMask@1) null (List ys@@9)))))))
(let ((anon52_correct  (=> (state WandDefLHSHeap@1 WandDefLHSMask@3) (=> (and (and (state WandDefLHSHeap@1 WandDefLHSMask@3) (= WandDefRHSMask@1 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9)) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask)))) (and (state WandDefRHSHeap@1 WandDefRHSMask@1) (state WandDefRHSHeap@1 WandDefRHSMask@1))) (and (and (=> (= (ControlFlow 0 13) 9) anon234_Then_correct) (=> (= (ControlFlow 0 13) 11) anon235_Then_correct)) (=> (= (ControlFlow 0 13) 12) anon235_Else_correct))))))
(let ((anon233_Else_correct  (=> (= (sum_rec WandDefLHSHeap@1 xs@0) old_sum_xs@1) (=> (and (= WandDefLHSMask@3 WandDefLHSMask@2) (= (ControlFlow 0 17) 13)) anon52_correct))))
(let ((anon232_Then_correct  (=> (and (and (not (= xs@0 null)) (= WandDefLHSMask@2 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List xs@0) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List xs@0)) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask)))) (and (state WandDefLHSHeap@1 WandDefLHSMask@2) (state WandDefLHSHeap@1 WandDefLHSMask@2))) (and (=> (= (ControlFlow 0 18) 16) anon233_Then_correct) (=> (= (ControlFlow 0 18) 17) anon233_Else_correct)))))
(let ((anon232_Else_correct  (=> (= xs@0 null) (=> (and (= WandDefLHSMask@3 ZeroMask) (= (ControlFlow 0 14) 13)) anon52_correct))))
(let ((anon231_Else_correct true))
(let ((anon230_Else_correct  (=> (= sum_3@0 (- (sum_rec Heap@@50 ys@@9) old_sum_xs@1)) (=> (and (state ExhaleHeap@3 Mask@44) (state ExhaleHeap@3 Mask@44)) (and (and (=> (= (ControlFlow 0 19) 7) anon231_Else_correct) (=> (= (ControlFlow 0 19) 18) anon232_Then_correct)) (=> (= (ControlFlow 0 19) 14) anon232_Else_correct))))))
(let ((anon230_Then_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@0) null (List ys@@9)))))))
(let ((anon45_correct  (=> (= old_sum_xs@1 (ite (= xs@0 null) 0 (sum_rec ExhaleHeap@3 xs@0))) (=> (and (state ExhaleHeap@3 Mask@44) (state ExhaleHeap@3 Mask@44)) (and (=> (= (ControlFlow 0 20) 6) anon230_Then_correct) (=> (= (ControlFlow 0 20) 19) anon230_Else_correct))))))
(let ((anon228_Then_correct  (=> (and (= xs@0 null) (= (ControlFlow 0 21) 20)) anon45_correct)))
(let ((anon229_Then_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@44) null (List xs@0)))))))
(let ((anon228_Else_correct  (=> (not (= xs@0 null)) (and (=> (= (ControlFlow 0 22) 4) anon229_Then_correct) (=> (= (ControlFlow 0 22) 20) anon45_correct)))))
(let ((anon41_correct  (=> (and (state ExhaleHeap@3 Mask@44) (state ExhaleHeap@3 Mask@44)) (and (=> (= (ControlFlow 0 23) 21) anon228_Then_correct) (=> (= (ControlFlow 0 23) 22) anon228_Else_correct)))))
(let ((anon227_Else_correct  (=> (= xs@0 null) (=> (and (= Mask@44 Mask@6) (= (ControlFlow 0 25) 23)) anon41_correct))))
(let ((anon227_Then_correct  (=> (not (= xs@0 null)) (=> (and (and (= Mask@43 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@6) null (List xs@0) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@6) null (List xs@0)) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@6) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@6))) (state ExhaleHeap@3 Mask@43)) (and (= Mask@44 Mask@43) (= (ControlFlow 0 24) 23))) anon41_correct))))
(let ((anon38_correct  (and (=> (= (ControlFlow 0 239) (- 0 242)) (= old_sum_xs@0 (ite (= ys@@9 null) 0 (sum_rec Heap@1 ys@@9)))) (=> (= old_sum_xs@0 (ite (= ys@@9 null) 0 (sum_rec Heap@1 ys@@9))) (and (=> (= (ControlFlow 0 239) (- 0 241)) (= 0 (- (sum_rec Heap@@50 ys@@9) old_sum_xs@0))) (=> (= 0 (- (sum_rec Heap@@50 ys@@9) old_sum_xs@0)) (and (=> (= (ControlFlow 0 239) (- 0 240)) (<= FullPerm (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@5) null (wand (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9))))) (=> (<= FullPerm (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@5) null (wand (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) (=> (= Mask@6 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@5) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@5) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@5) (store (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@5) null (wand (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)) (- (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@5) null (wand (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9))) FullPerm)) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@5) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@5) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@5) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@5) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@5) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@5) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@5) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@5) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@5) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@5) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@5))) (=> (and (IdenticalOnKnownLocations Heap@1 ExhaleHeap@3 Mask@6) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@3) xs@0 $allocated)) (and (and (and (=> (= (ControlFlow 0 239) 238) anon236_Then_correct) (=> (= (ControlFlow 0 239) 43) anon236_Else_correct)) (=> (= (ControlFlow 0 239) 24) anon227_Then_correct)) (=> (= (ControlFlow 0 239) 25) anon227_Else_correct))))))))))))
(let ((anon37_correct  (=> (= Mask@4 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@3) null (List ys@@9) (- (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@3) null (List ys@@9)) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@3) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@3) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@3) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@3) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@3) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@3) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@3) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@3) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@3) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@3) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@3) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@3) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@3) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@3))) (=> (and (= Mask@5 Mask@4) (= (ControlFlow 0 244) 239)) anon38_correct))))
(let ((anon225_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 247) 244)) anon37_correct)))
(let ((anon225_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 245) (- 0 246)) (<= FullPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@3) null (List ys@@9)))) (=> (<= FullPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@3) null (List ys@@9))) (=> (= (ControlFlow 0 245) 244) anon37_correct))))))
(let ((anon224_Then_correct  (=> (not (= ys@@9 null)) (and (=> (= (ControlFlow 0 248) 245) anon225_Then_correct) (=> (= (ControlFlow 0 248) 247) anon225_Else_correct)))))
(let ((anon224_Else_correct  (=> (= ys@@9 null) (=> (and (= Mask@5 Mask@3) (= (ControlFlow 0 243) 239)) anon38_correct))))
(let ((anon34_correct  (and (=> (= (ControlFlow 0 249) (- 0 250)) (=> (and (and b_1_1@10 b_1_1@10) b_2_1@6) (= (sum_rec ResultHeap ys@@9) (sum_rec Heap@@50 ys@@9)))) (=> (=> (and (and b_1_1@10 b_1_1@10) b_2_1@6) (= (sum_rec ResultHeap ys@@9) (sum_rec Heap@@50 ys@@9))) (=> (state Heap@1 Mask@2) (=> (and (and (= Mask@3 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@2) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@2) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@2) (store (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@2) null (wand (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)) (+ (select (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@2) null (wand (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9))) FullPerm)) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@2) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@2) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@2) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@2) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@2) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@2) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@2) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@2) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@2) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@2) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@2))) (state Heap@1 Mask@3)) (and (state Heap@1 Mask@3) (state Heap@1 Mask@3))) (and (=> (= (ControlFlow 0 249) 248) anon224_Then_correct) (=> (= (ControlFlow 0 249) 243) anon224_Else_correct))))))))
(let ((anon221_Then_correct  (=> b_1_1@10 (and (and (=> (= (ControlFlow 0 257) 254) anon222_Then_correct) (=> (= (ControlFlow 0 257) 256) anon223_Then_correct)) (=> (= (ControlFlow 0 257) 249) anon34_correct)))))
(let ((anon221_Else_correct  (=> (and (not b_1_1@10) (= (ControlFlow 0 252) 249)) anon34_correct)))
(let ((anon220_Then_correct  (=> (and (and b_1_1@10 b_1_1@10) b_2_1@6) (and (=> (= (ControlFlow 0 258) 257) anon221_Then_correct) (=> (= (ControlFlow 0 258) 252) anon221_Else_correct)))))
(let ((anon220_Else_correct  (=> (and (not (and (and b_1_1@10 b_1_1@10) b_2_1@6)) (= (ControlFlow 0 251) 249)) anon34_correct)))
(let ((anon28_correct  (and (=> (= (ControlFlow 0 259) (- 0 260)) (=> (and (and b_1_1@9 b_1_1@9) b_2_1@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_1Mask@3) null (List ys@@9)) initNeededTransfer@0)))) (=> (=> (and (and b_1_1@9 b_1_1@9) b_2_1@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_1Mask@3) null (List ys@@9)) initNeededTransfer@0))) (=> (and (= b_3@0  (and b_1_1@9 b_2_1@6)) (= b_3@1  (and b_3@0 (state ResultHeap ResultMask@@14)))) (=> (and (and (= b_3@2  (and b_3@1 (sumMask ResultMask@@14 Ops_1Mask@4 Used_1Mask@3))) (= b_3@3  (and (and b_3@2 (IdenticalOnKnownLocations Ops_1Heap@2 ResultHeap Ops_1Mask@4)) (IdenticalOnKnownLocations Used_1Heap@0 ResultHeap Used_1Mask@3)))) (and (= b_3@4  (and b_3@3 (state ResultHeap ResultMask@@14))) (= b_1_1@10  (and b_1_1@9 b_3@4)))) (and (=> (= (ControlFlow 0 259) 258) anon220_Then_correct) (=> (= (ControlFlow 0 259) 251) anon220_Else_correct))))))))
(let ((anon219_Else_correct  (=> (>= 0.0 takeTransfer@1) (=> (and (= Mask@2 Mask@0) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_2_1@6 b_2_1@3) (= Used_1Mask@3 Used_1Mask@1)) (and (= Heap@1 Heap@@50) (= (ControlFlow 0 263) 259))) anon28_correct)))))
(let ((anon219_Then_correct  (=> (> takeTransfer@1 0.0) (=> (and (= neededTransfer@2 (- neededTransfer@1 takeTransfer@1)) (= Used_1Mask@2 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_1Mask@1) null (List ys@@9) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Used_1Mask@1) null (List ys@@9)) takeTransfer@1)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Used_1Mask@1) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Used_1Mask@1) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Used_1Mask@1) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Used_1Mask@1) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Used_1Mask@1) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Used_1Mask@1) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Used_1Mask@1) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Used_1Mask@1) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Used_1Mask@1) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Used_1Mask@1) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Used_1Mask@1) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Used_1Mask@1) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Used_1Mask@1) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Used_1Mask@1)))) (=> (and (and (= b_2_1@4  (and b_2_1@3 (state Used_1Heap@0 Used_1Mask@2))) (= TempMask@1 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9) FullPerm) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask)))) (and (= b_2_1@5  (and b_2_1@4 (IdenticalOnKnownLocations Heap@@50 Used_1Heap@0 TempMask@1))) (= Mask@1 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@0) null (List ys@@9) (- (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@0) null (List ys@@9)) takeTransfer@1)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@0))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_6 T@Ref) (f_12 T@Field_23355_1682) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@50) null (|wand#sm| (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_6 f_12) (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) o_6 f_12)) (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| newPMask@0) o_6 f_12))
 :qid |stdinbpl.725:35|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| newPMask@0) o_6 f_12))
)) (forall ((o_6@@0 T@Ref) (f_12@@0 T@Field_19163_19164) ) (!  (=> (or (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@50) null (|wand#sm| (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_6@@0 f_12@@0) (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) o_6@@0 f_12@@0)) (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| newPMask@0) o_6@@0 f_12@@0))
 :qid |stdinbpl.725:35|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| newPMask@0) o_6@@0 f_12@@0))
))) (forall ((o_6@@1 T@Ref) (f_12@@1 T@Field_19150_53) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@50) null (|wand#sm| (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_6@@1 f_12@@1) (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) o_6@@1 f_12@@1)) (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| newPMask@0) o_6@@1 f_12@@1))
 :qid |stdinbpl.725:35|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| newPMask@0) o_6@@1 f_12@@1))
))) (forall ((o_6@@2 T@Ref) (f_12@@2 T@Field_10382_22501) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@50) null (|wand#sm| (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_6@@2 f_12@@2) (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) o_6@@2 f_12@@2)) (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| newPMask@0) o_6@@2 f_12@@2))
 :qid |stdinbpl.725:35|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| newPMask@0) o_6@@2 f_12@@2))
))) (forall ((o_6@@3 T@Ref) (f_12@@3 T@Field_10382_10419) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@50) null (|wand#sm| (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_6@@3 f_12@@3) (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) o_6@@3 f_12@@3)) (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| newPMask@0) o_6@@3 f_12@@3))
 :qid |stdinbpl.725:35|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| newPMask@0) o_6@@3 f_12@@3))
))) (forall ((o_6@@4 T@Ref) (f_12@@4 T@Field_22481_1218) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@50) null (|wand#sm| (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_6@@4 f_12@@4) (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) o_6@@4 f_12@@4)) (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| newPMask@0) o_6@@4 f_12@@4))
 :qid |stdinbpl.725:35|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| newPMask@0) o_6@@4 f_12@@4))
))) (forall ((o_6@@5 T@Ref) (f_12@@5 T@Field_22481_10385) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@50) null (|wand#sm| (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_6@@5 f_12@@5) (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) o_6@@5 f_12@@5)) (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| newPMask@0) o_6@@5 f_12@@5))
 :qid |stdinbpl.725:35|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| newPMask@0) o_6@@5 f_12@@5))
))) (forall ((o_6@@6 T@Ref) (f_12@@6 T@Field_22481_53) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@50) null (|wand#sm| (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_6@@6 f_12@@6) (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) o_6@@6 f_12@@6)) (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| newPMask@0) o_6@@6 f_12@@6))
 :qid |stdinbpl.725:35|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| newPMask@0) o_6@@6 f_12@@6))
))) (forall ((o_6@@7 T@Ref) (f_12@@7 T@Field_22496_22501) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@50) null (|wand#sm| (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_6@@7 f_12@@7) (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) o_6@@7 f_12@@7)) (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| newPMask@0) o_6@@7 f_12@@7))
 :qid |stdinbpl.725:35|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| newPMask@0) o_6@@7 f_12@@7))
))) (forall ((o_6@@8 T@Ref) (f_12@@8 T@Field_22514_22515) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@50) null (|wand#sm| (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_6@@8 f_12@@8) (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) o_6@@8 f_12@@8)) (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| newPMask@0) o_6@@8 f_12@@8))
 :qid |stdinbpl.725:35|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| newPMask@0) o_6@@8 f_12@@8))
))) (forall ((o_6@@9 T@Ref) (f_12@@9 T@Field_10418_1682) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@50) null (|wand#sm| (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_6@@9 f_12@@9) (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) o_6@@9 f_12@@9)) (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| newPMask@0) o_6@@9 f_12@@9))
 :qid |stdinbpl.725:35|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| newPMask@0) o_6@@9 f_12@@9))
))) (forall ((o_6@@10 T@Ref) (f_12@@10 T@Field_10418_10385) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@50) null (|wand#sm| (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_6@@10 f_12@@10) (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) o_6@@10 f_12@@10)) (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| newPMask@0) o_6@@10 f_12@@10))
 :qid |stdinbpl.725:35|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| newPMask@0) o_6@@10 f_12@@10))
))) (forall ((o_6@@11 T@Ref) (f_12@@11 T@Field_10418_53) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@50) null (|wand#sm| (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_6@@11 f_12@@11) (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) o_6@@11 f_12@@11)) (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| newPMask@0) o_6@@11 f_12@@11))
 :qid |stdinbpl.725:35|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| newPMask@0) o_6@@11 f_12@@11))
))) (forall ((o_6@@12 T@Ref) (f_12@@12 T@Field_26559_26564) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@50) null (|wand#sm| (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_6@@12 f_12@@12) (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) o_6@@12 f_12@@12)) (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| newPMask@0) o_6@@12 f_12@@12))
 :qid |stdinbpl.725:35|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| newPMask@0) o_6@@12 f_12@@12))
))) (forall ((o_6@@13 T@Ref) (f_12@@13 T@Field_23822_23823) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@50) null (|wand#sm| (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)))) o_6@@13 f_12@@13) (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) o_6@@13 f_12@@13)) (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| newPMask@0) o_6@@13 f_12@@13))
 :qid |stdinbpl.725:35|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| newPMask@0) o_6@@13 f_12@@13))
))) (= Heap@0 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) (store (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@50) null (|wand#sm| (not (= ys@@9 null)) ys@@9 ys@@9 old_sum_xs@0 ys@@9 ys@@9 (sum_rec Heap@@50 ys@@9)) newPMask@0) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@50)))) (and (= Mask@2 Mask@1) (= neededTransfer@3 neededTransfer@2))) (and (and (= b_2_1@6 b_2_1@5) (= Used_1Mask@3 Used_1Mask@2)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 262) 259)))) anon28_correct))))))
(let ((anon218_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@1) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 265) 262) anon219_Then_correct) (=> (= (ControlFlow 0 265) 263) anon219_Else_correct)))))
(let ((anon218_Then_correct  (=> (and (<= neededTransfer@1 maskTransfer@1) (= takeTransfer@1 neededTransfer@1)) (and (=> (= (ControlFlow 0 264) 262) anon219_Then_correct) (=> (= (ControlFlow 0 264) 263) anon219_Else_correct)))))
(let ((anon217_Then_correct  (=> (and (and (and (and (and b_1_1@9 b_1_1@9) b_2_1@3) true) (> neededTransfer@1 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@0) null (List ys@@9)))) (and (=> (= (ControlFlow 0 266) 264) anon218_Then_correct) (=> (= (ControlFlow 0 266) 265) anon218_Else_correct)))))
(let ((anon217_Else_correct  (=> (not (and (and (and (and b_1_1@9 b_1_1@9) b_2_1@3) true) (> neededTransfer@1 0.0))) (=> (and (= Mask@2 Mask@0) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_2_1@6 b_2_1@3) (= Used_1Mask@3 Used_1Mask@1)) (and (= Heap@1 Heap@@50) (= (ControlFlow 0 261) 259))) anon28_correct)))))
(let ((anon216_Else_correct  (=> (>= 0.0 takeTransfer@0) (=> (and (and (= Ops_1Mask@4 Ops_1Mask@2) (= Used_1Mask@1 ZeroMask)) (and (= b_2_1@3 b_2_1@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 269) 266) anon217_Then_correct) (=> (= (ControlFlow 0 269) 261) anon217_Else_correct))))))
(let ((anon216_Then_correct  (=> (> takeTransfer@0 0.0) (=> (and (= neededTransfer@0 (- FullPerm takeTransfer@0)) (= Used_1Mask@0 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9)) takeTransfer@0)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask)))) (=> (and (and (and (= b_2_1@1  (and b_2_1@0 (state Used_1Heap@0 Used_1Mask@0))) (= TempMask@0 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9) FullPerm) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask)))) (and (= b_2_1@2  (and b_2_1@1 (IdenticalOnKnownLocations Ops_1Heap@2 Used_1Heap@0 TempMask@0))) (= Ops_1Mask@3 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_1Mask@2) null (List ys@@9) (- (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_1Mask@2) null (List ys@@9)) takeTransfer@0)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Ops_1Mask@2) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Ops_1Mask@2) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Ops_1Mask@2) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Ops_1Mask@2) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Ops_1Mask@2) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Ops_1Mask@2) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Ops_1Mask@2) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Ops_1Mask@2) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Ops_1Mask@2) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Ops_1Mask@2) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Ops_1Mask@2) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Ops_1Mask@2) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Ops_1Mask@2) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Ops_1Mask@2))))) (and (and (= Ops_1Mask@4 Ops_1Mask@3) (= Used_1Mask@1 Used_1Mask@0)) (and (= b_2_1@3 b_2_1@2) (= neededTransfer@1 neededTransfer@0)))) (and (=> (= (ControlFlow 0 268) 266) anon217_Then_correct) (=> (= (ControlFlow 0 268) 261) anon217_Else_correct)))))))
(let ((anon215_Else_correct  (=> (and (< maskTransfer@0 FullPerm) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 271) 268) anon216_Then_correct) (=> (= (ControlFlow 0 271) 269) anon216_Else_correct)))))
(let ((anon215_Then_correct  (=> (and (<= FullPerm maskTransfer@0) (= takeTransfer@0 FullPerm)) (and (=> (= (ControlFlow 0 270) 268) anon216_Then_correct) (=> (= (ControlFlow 0 270) 269) anon216_Else_correct)))))
(let ((anon214_Then_correct  (=> (and (and (and (and (and b_1_1@9 b_1_1@9) b_2_1@0) true) (> FullPerm 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_1Mask@2) null (List ys@@9)))) (and (=> (= (ControlFlow 0 272) 270) anon215_Then_correct) (=> (= (ControlFlow 0 272) 271) anon215_Else_correct)))))
(let ((anon214_Else_correct  (=> (not (and (and (and (and b_1_1@9 b_1_1@9) b_2_1@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_1Mask@4 Ops_1Mask@2) (= Used_1Mask@1 ZeroMask)) (and (= b_2_1@3 b_2_1@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 267) 266) anon217_Then_correct) (=> (= (ControlFlow 0 267) 261) anon217_Else_correct))))))
(let ((anon16_correct  (=> (and (and (= b_1_1@8  (and b_1_1@7 (state Ops_1Heap@2 Ops_1Mask@2))) (= b_1_1@9  (and b_1_1@8 (state Ops_1Heap@2 Ops_1Mask@2)))) (and (= b_2_1@0  (and b_2_1 (state Used_1Heap@0 ZeroMask))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9)) FullPerm)))) (and (=> (= (ControlFlow 0 273) (- 0 274)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 273) 272) anon214_Then_correct) (=> (= (ControlFlow 0 273) 267) anon214_Else_correct)))))))
(let ((anon15_correct  (=> (= b_1_1@6  (and b_1_1@5 (= (sum_rec Ops_1Heap@1 ys@@9) old_sum_xs@0))) (=> (and (and (= b_1_1@7 b_1_1@6) (= Ops_1Mask@2 Ops_1Mask@1)) (and (= Ops_1Heap@2 Ops_1Heap@1) (= (ControlFlow 0 279) 273))) anon16_correct))))
(let ((anon213_Else_correct  (=> (= Ops_1Heap@1 Ops_1Heap@0) (=> (and (= b_1_1@5 b_1_1@3) (= (ControlFlow 0 283) 279)) anon15_correct))))
(let ((anon213_Then_correct  (and (=> (= (ControlFlow 0 281) (- 0 282)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_1Mask@1) null (List ys@@9))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Ops_1Mask@1) null (List ys@@9)))) (=> (and (and (= b_1_1@4  (and b_1_1@3 (IdenticalOnKnownLocations Ops_1Heap@0 ExhaleHeap@1 Ops_1Mask@1))) (= Ops_1Heap@1 ExhaleHeap@1)) (and (= b_1_1@5 false) (= (ControlFlow 0 281) 279))) anon15_correct)))))
(let ((anon212_Then_correct  (=> b_1_1@3 (and (=> (= (ControlFlow 0 284) 281) anon213_Then_correct) (=> (= (ControlFlow 0 284) 283) anon213_Else_correct)))))
(let ((anon212_Else_correct  (=> (and (and (not b_1_1@3) (= Ops_1Heap@1 Ops_1Heap@0)) (and (= b_1_1@5 b_1_1@3) (= (ControlFlow 0 280) 279))) anon15_correct)))
(let ((anon211_Then_correct  (=> (and b_1_1@2 (= b_1_1@3  (and b_1_1@2 (state Ops_1Heap@0 Ops_1Mask@1)))) (and (=> (= (ControlFlow 0 285) 284) anon212_Then_correct) (=> (= (ControlFlow 0 285) 280) anon212_Else_correct)))))
(let ((anon211_Else_correct  (=> (not b_1_1@2) (=> (and (and (= b_1_1@7 b_1_1@2) (= Ops_1Mask@2 Ops_1Mask@1)) (and (= Ops_1Heap@2 Ops_1Heap@0) (= (ControlFlow 0 278) 273))) anon16_correct))))
(let ((anon210_Else_correct  (=> (not b_1_1@0) (=> (and (= Ops_1Mask@1 ZeroMask) (= b_1_1@2 b_1_1@0)) (and (=> (= (ControlFlow 0 287) 285) anon211_Then_correct) (=> (= (ControlFlow 0 287) 278) anon211_Else_correct))))))
(let ((anon210_Then_correct  (=> b_1_1@0 (=> (and (and (= Ops_1Mask@0 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9)) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask))) (= b_1_1@1  (and b_1_1@0 (state Ops_1Heap@0 Ops_1Mask@0)))) (and (= Ops_1Mask@1 Ops_1Mask@0) (= b_1_1@2 b_1_1@1))) (and (=> (= (ControlFlow 0 286) 285) anon211_Then_correct) (=> (= (ControlFlow 0 286) 278) anon211_Else_correct))))))
(let ((anon209_Then_correct  (=> b_1_1@0 (and (=> (= (ControlFlow 0 288) 286) anon210_Then_correct) (=> (= (ControlFlow 0 288) 287) anon210_Else_correct)))))
(let ((anon209_Else_correct  (=> (not b_1_1@0) (=> (and (and (= b_1_1@7 b_1_1@0) (= Ops_1Mask@2 ZeroMask)) (and (= Ops_1Heap@2 Ops_1Heap@0) (= (ControlFlow 0 277) 273))) anon16_correct))))
(let ((anon208_Then_correct  (=> (=> b_1_1@0 (not (= ys@@9 null))) (and (=> (= (ControlFlow 0 289) 288) anon209_Then_correct) (=> (= (ControlFlow 0 289) 277) anon209_Else_correct)))))
(let ((anon208_Else_correct  (=> (not (=> b_1_1@0 (not (= ys@@9 null)))) (=> (and (and (= b_1_1@7 b_1_1@0) (= Ops_1Mask@2 ZeroMask)) (and (= Ops_1Heap@2 Ops_1Heap@0) (= (ControlFlow 0 276) 273))) anon16_correct))))
(let ((anon207_Then_correct  (=> b_1_1@0 (and (=> (= (ControlFlow 0 290) 289) anon208_Then_correct) (=> (= (ControlFlow 0 290) 276) anon208_Else_correct)))))
(let ((anon207_Else_correct  (=> (not b_1_1@0) (=> (and (and (= b_1_1@7 b_1_1@0) (= Ops_1Mask@2 ZeroMask)) (and (= Ops_1Heap@2 Ops_1Heap@0) (= (ControlFlow 0 275) 273))) anon16_correct))))
(let ((anon206_Else_correct  (=> (and (and (= old_sum_xs@0 (sum_rec Heap@@50 ys@@9)) (state Heap@@50 Mask@0)) (and (= b_1_1@0  (and b_1_1 (state Ops_1Heap@0 ZeroMask))) (= b_2@0  (and b_2 (state UsedHeap@0 ZeroMask))))) (and (=> (= (ControlFlow 0 291) 290) anon207_Then_correct) (=> (= (ControlFlow 0 291) 275) anon207_Else_correct)))))
(let ((anon206_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@0) null (List ys@@9)))))))
(let ((anon204_Else_correct  (=> (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@50) xs $allocated) (=> (and (state Heap@@50 Mask@0) (state Heap@@50 Mask@0)) (and (=> (= (ControlFlow 0 292) 2) anon206_Then_correct) (=> (= (ControlFlow 0 292) 291) anon206_Else_correct))))))
(let ((anon0_correct  (=> (state Heap@@50 ZeroMask) (=> (and (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@50) ys@@9 $allocated) (not (= ys@@9 null)))) (and (and (state Heap@@50 ZeroMask) (= Mask@0 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9)) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask)))) (and (state Heap@@50 Mask@0) (state Heap@@50 Mask@0)))) (and (=> (= (ControlFlow 0 297) 296) anon204_Then_correct) (=> (= (ControlFlow 0 297) 292) anon204_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 298) 297) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
