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
(assert (forall ((Heap@@3 T@PolymorphicMapType_19090) (ExhaleHeap T@PolymorphicMapType_19090) (Mask@@0 T@PolymorphicMapType_19111) (pm_f_16 T@Field_22514_22515) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_22481_10419 Mask@@0 null pm_f_16) (IsPredicateField_10347_10348 pm_f_16)) (= (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@3) null (PredicateMaskField_22481 pm_f_16)) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap) null (PredicateMaskField_22481 pm_f_16)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_10347_10348 pm_f_16) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap) null (PredicateMaskField_22481 pm_f_16)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_19090) (ExhaleHeap@@0 T@PolymorphicMapType_19090) (Mask@@1 T@PolymorphicMapType_19111) (pm_f_16@@0 T@Field_23822_23823) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_10418_10419 Mask@@1 null pm_f_16@@0) (IsPredicateField_10418_10419 pm_f_16@@0)) (= (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@4) null (PredicateMaskField_10418 pm_f_16@@0)) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@0) null (PredicateMaskField_10418 pm_f_16@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_10418_10419 pm_f_16@@0) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@0) null (PredicateMaskField_10418 pm_f_16@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_19090) (ExhaleHeap@@1 T@PolymorphicMapType_19090) (Mask@@2 T@PolymorphicMapType_19111) (pm_f_16@@1 T@Field_10382_10419) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_10382_10419 Mask@@2 null pm_f_16@@1) (IsPredicateField_10382_65874 pm_f_16@@1)) (= (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@5) null (PredicateMaskField_10382 pm_f_16@@1)) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@1) null (PredicateMaskField_10382 pm_f_16@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsPredicateField_10382_65874 pm_f_16@@1) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@1) null (PredicateMaskField_10382 pm_f_16@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_19090) (ExhaleHeap@@2 T@PolymorphicMapType_19090) (Mask@@3 T@PolymorphicMapType_19111) (pm_f_16@@2 T@Field_22514_22515) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_22481_10419 Mask@@3 null pm_f_16@@2) (IsWandField_10347_10348 pm_f_16@@2)) (= (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@6) null (WandMaskField_10347 pm_f_16@@2)) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@2) null (WandMaskField_10347 pm_f_16@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsWandField_10347_10348 pm_f_16@@2) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@2) null (WandMaskField_10347 pm_f_16@@2)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_19090) (ExhaleHeap@@3 T@PolymorphicMapType_19090) (Mask@@4 T@PolymorphicMapType_19111) (pm_f_16@@3 T@Field_23822_23823) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_10418_10419 Mask@@4 null pm_f_16@@3) (IsWandField_10418_71223 pm_f_16@@3)) (= (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@7) null (WandMaskField_10418 pm_f_16@@3)) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@3) null (WandMaskField_10418 pm_f_16@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsWandField_10418_71223 pm_f_16@@3) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@3) null (WandMaskField_10418 pm_f_16@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_19090) (ExhaleHeap@@4 T@PolymorphicMapType_19090) (Mask@@5 T@PolymorphicMapType_19111) (pm_f_16@@4 T@Field_10382_10419) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_10382_10419 Mask@@5 null pm_f_16@@4) (IsWandField_10382_70866 pm_f_16@@4)) (= (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@8) null (WandMaskField_10382 pm_f_16@@4)) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@4) null (WandMaskField_10382 pm_f_16@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsWandField_10382_70866 pm_f_16@@4) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@4) null (WandMaskField_10382 pm_f_16@@4)))
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
(assert (forall ((Heap@@9 T@PolymorphicMapType_19090) (ExhaleHeap@@5 T@PolymorphicMapType_19090) (Mask@@6 T@PolymorphicMapType_19111) (o_34 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@9) o_34 $allocated) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@5) o_34 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@5) o_34 $allocated))
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
(assert (forall ((Heap@@11 T@PolymorphicMapType_19090) (ExhaleHeap@@7 T@PolymorphicMapType_19090) (Mask@@38 T@PolymorphicMapType_19111) (o_34@@0 T@Ref) (f_40 T@Field_22496_22501) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_22481_65629 Mask@@38 o_34@@0 f_40) (= (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@11) o_34@@0 f_40) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@7) o_34@@0 f_40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@7) o_34@@0 f_40))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_19090) (ExhaleHeap@@8 T@PolymorphicMapType_19090) (Mask@@39 T@PolymorphicMapType_19111) (o_34@@1 T@Ref) (f_40@@0 T@Field_22481_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_22481_53 Mask@@39 o_34@@1 f_40@@0) (= (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@12) o_34@@1 f_40@@0) (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@8) o_34@@1 f_40@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@8) o_34@@1 f_40@@0))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_19090) (ExhaleHeap@@9 T@PolymorphicMapType_19090) (Mask@@40 T@PolymorphicMapType_19111) (o_34@@2 T@Ref) (f_40@@1 T@Field_22514_22515) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_22481_10419 Mask@@40 o_34@@2 f_40@@1) (= (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@13) o_34@@2 f_40@@1) (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@9) o_34@@2 f_40@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@9) o_34@@2 f_40@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_19090) (ExhaleHeap@@10 T@PolymorphicMapType_19090) (Mask@@41 T@PolymorphicMapType_19111) (o_34@@3 T@Ref) (f_40@@2 T@Field_22481_10385) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_22481_10385 Mask@@41 o_34@@3 f_40@@2) (= (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@14) o_34@@3 f_40@@2) (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@10) o_34@@3 f_40@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@10) o_34@@3 f_40@@2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_19090) (ExhaleHeap@@11 T@PolymorphicMapType_19090) (Mask@@42 T@PolymorphicMapType_19111) (o_34@@4 T@Ref) (f_40@@3 T@Field_22481_1218) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_22481_1682 Mask@@42 o_34@@4 f_40@@3) (= (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@15) o_34@@4 f_40@@3) (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@11) o_34@@4 f_40@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@11) o_34@@4 f_40@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_19090) (ExhaleHeap@@12 T@PolymorphicMapType_19090) (Mask@@43 T@PolymorphicMapType_19111) (o_34@@5 T@Ref) (f_40@@4 T@Field_26559_26564) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_10418_64495 Mask@@43 o_34@@5 f_40@@4) (= (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@16) o_34@@5 f_40@@4) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@12) o_34@@5 f_40@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@12) o_34@@5 f_40@@4))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_19090) (ExhaleHeap@@13 T@PolymorphicMapType_19090) (Mask@@44 T@PolymorphicMapType_19111) (o_34@@6 T@Ref) (f_40@@5 T@Field_10418_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_10418_53 Mask@@44 o_34@@6 f_40@@5) (= (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@17) o_34@@6 f_40@@5) (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@13) o_34@@6 f_40@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@13) o_34@@6 f_40@@5))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_19090) (ExhaleHeap@@14 T@PolymorphicMapType_19090) (Mask@@45 T@PolymorphicMapType_19111) (o_34@@7 T@Ref) (f_40@@6 T@Field_23822_23823) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_10418_10419 Mask@@45 o_34@@7 f_40@@6) (= (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@18) o_34@@7 f_40@@6) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@14) o_34@@7 f_40@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@14) o_34@@7 f_40@@6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_19090) (ExhaleHeap@@15 T@PolymorphicMapType_19090) (Mask@@46 T@PolymorphicMapType_19111) (o_34@@8 T@Ref) (f_40@@7 T@Field_10418_10385) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_10418_10385 Mask@@46 o_34@@8 f_40@@7) (= (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@19) o_34@@8 f_40@@7) (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@15) o_34@@8 f_40@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@15) o_34@@8 f_40@@7))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_19090) (ExhaleHeap@@16 T@PolymorphicMapType_19090) (Mask@@47 T@PolymorphicMapType_19111) (o_34@@9 T@Ref) (f_40@@8 T@Field_10418_1682) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_10418_1682 Mask@@47 o_34@@9 f_40@@8) (= (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@20) o_34@@9 f_40@@8) (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@16) o_34@@9 f_40@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@16) o_34@@9 f_40@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_19090) (ExhaleHeap@@17 T@PolymorphicMapType_19090) (Mask@@48 T@PolymorphicMapType_19111) (o_34@@10 T@Ref) (f_40@@9 T@Field_10382_22501) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_10382_63354 Mask@@48 o_34@@10 f_40@@9) (= (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@21) o_34@@10 f_40@@9) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@17) o_34@@10 f_40@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@17) o_34@@10 f_40@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_19090) (ExhaleHeap@@18 T@PolymorphicMapType_19090) (Mask@@49 T@PolymorphicMapType_19111) (o_34@@11 T@Ref) (f_40@@10 T@Field_19150_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_10382_53 Mask@@49 o_34@@11 f_40@@10) (= (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@22) o_34@@11 f_40@@10) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@18) o_34@@11 f_40@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@18) o_34@@11 f_40@@10))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_19090) (ExhaleHeap@@19 T@PolymorphicMapType_19090) (Mask@@50 T@PolymorphicMapType_19111) (o_34@@12 T@Ref) (f_40@@11 T@Field_10382_10419) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_10382_10419 Mask@@50 o_34@@12 f_40@@11) (= (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@23) o_34@@12 f_40@@11) (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@19) o_34@@12 f_40@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@19) o_34@@12 f_40@@11))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_19090) (ExhaleHeap@@20 T@PolymorphicMapType_19090) (Mask@@51 T@PolymorphicMapType_19111) (o_34@@13 T@Ref) (f_40@@12 T@Field_19163_19164) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_10384_10385 Mask@@51 o_34@@13 f_40@@12) (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@24) o_34@@13 f_40@@12) (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@20) o_34@@13 f_40@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@20) o_34@@13 f_40@@12))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_19090) (ExhaleHeap@@21 T@PolymorphicMapType_19090) (Mask@@52 T@PolymorphicMapType_19111) (o_34@@14 T@Ref) (f_40@@13 T@Field_23355_1682) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_10382_1682 Mask@@52 o_34@@14 f_40@@13) (= (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@25) o_34@@14 f_40@@13) (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@21) o_34@@14 f_40@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@21) o_34@@14 f_40@@13))
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
(assert (forall ((Heap@@26 T@PolymorphicMapType_19090) (ExhaleHeap@@22 T@PolymorphicMapType_19090) (Mask@@53 T@PolymorphicMapType_19111) (pm_f_16@@5 T@Field_22514_22515) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_22481_10419 Mask@@53 null pm_f_16@@5) (IsPredicateField_10347_10348 pm_f_16@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16 T@Ref) (f_40@@14 T@Field_23355_1682) ) (!  (=> (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_16@@5))) o2_16 f_40@@14) (= (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@26) o2_16 f_40@@14) (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16 f_40@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16 f_40@@14))
)) (forall ((o2_16@@0 T@Ref) (f_40@@15 T@Field_19163_19164) ) (!  (=> (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_16@@5))) o2_16@@0 f_40@@15) (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@26) o2_16@@0 f_40@@15) (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@0 f_40@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@0 f_40@@15))
))) (forall ((o2_16@@1 T@Ref) (f_40@@16 T@Field_19150_53) ) (!  (=> (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_16@@5))) o2_16@@1 f_40@@16) (= (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@26) o2_16@@1 f_40@@16) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@1 f_40@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@1 f_40@@16))
))) (forall ((o2_16@@2 T@Ref) (f_40@@17 T@Field_10382_22501) ) (!  (=> (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_16@@5))) o2_16@@2 f_40@@17) (= (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@26) o2_16@@2 f_40@@17) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@2 f_40@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@2 f_40@@17))
))) (forall ((o2_16@@3 T@Ref) (f_40@@18 T@Field_10382_10419) ) (!  (=> (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_16@@5))) o2_16@@3 f_40@@18) (= (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@26) o2_16@@3 f_40@@18) (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@3 f_40@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@3 f_40@@18))
))) (forall ((o2_16@@4 T@Ref) (f_40@@19 T@Field_22481_1218) ) (!  (=> (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_16@@5))) o2_16@@4 f_40@@19) (= (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@26) o2_16@@4 f_40@@19) (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@4 f_40@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@4 f_40@@19))
))) (forall ((o2_16@@5 T@Ref) (f_40@@20 T@Field_22481_10385) ) (!  (=> (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_16@@5))) o2_16@@5 f_40@@20) (= (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@26) o2_16@@5 f_40@@20) (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@5 f_40@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@5 f_40@@20))
))) (forall ((o2_16@@6 T@Ref) (f_40@@21 T@Field_22481_53) ) (!  (=> (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_16@@5))) o2_16@@6 f_40@@21) (= (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@26) o2_16@@6 f_40@@21) (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@6 f_40@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@6 f_40@@21))
))) (forall ((o2_16@@7 T@Ref) (f_40@@22 T@Field_22496_22501) ) (!  (=> (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_16@@5))) o2_16@@7 f_40@@22) (= (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) o2_16@@7 f_40@@22) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@7 f_40@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@7 f_40@@22))
))) (forall ((o2_16@@8 T@Ref) (f_40@@23 T@Field_22514_22515) ) (!  (=> (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_16@@5))) o2_16@@8 f_40@@23) (= (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@26) o2_16@@8 f_40@@23) (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@8 f_40@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@8 f_40@@23))
))) (forall ((o2_16@@9 T@Ref) (f_40@@24 T@Field_10418_1682) ) (!  (=> (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_16@@5))) o2_16@@9 f_40@@24) (= (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@26) o2_16@@9 f_40@@24) (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@9 f_40@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@9 f_40@@24))
))) (forall ((o2_16@@10 T@Ref) (f_40@@25 T@Field_10418_10385) ) (!  (=> (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_16@@5))) o2_16@@10 f_40@@25) (= (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@26) o2_16@@10 f_40@@25) (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@10 f_40@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@10 f_40@@25))
))) (forall ((o2_16@@11 T@Ref) (f_40@@26 T@Field_10418_53) ) (!  (=> (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_16@@5))) o2_16@@11 f_40@@26) (= (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@26) o2_16@@11 f_40@@26) (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@11 f_40@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@11 f_40@@26))
))) (forall ((o2_16@@12 T@Ref) (f_40@@27 T@Field_26559_26564) ) (!  (=> (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_16@@5))) o2_16@@12 f_40@@27) (= (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@26) o2_16@@12 f_40@@27) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@12 f_40@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@12 f_40@@27))
))) (forall ((o2_16@@13 T@Ref) (f_40@@28 T@Field_23822_23823) ) (!  (=> (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@26) null (PredicateMaskField_22481 pm_f_16@@5))) o2_16@@13 f_40@@28) (= (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@26) o2_16@@13 f_40@@28) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@13 f_40@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@22) o2_16@@13 f_40@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@22 Mask@@53) (IsPredicateField_10347_10348 pm_f_16@@5))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_19090) (ExhaleHeap@@23 T@PolymorphicMapType_19090) (Mask@@54 T@PolymorphicMapType_19111) (pm_f_16@@6 T@Field_23822_23823) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_10418_10419 Mask@@54 null pm_f_16@@6) (IsPredicateField_10418_10419 pm_f_16@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16@@14 T@Ref) (f_40@@29 T@Field_23355_1682) ) (!  (=> (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_16@@6))) o2_16@@14 f_40@@29) (= (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@27) o2_16@@14 f_40@@29) (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@14 f_40@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@14 f_40@@29))
)) (forall ((o2_16@@15 T@Ref) (f_40@@30 T@Field_19163_19164) ) (!  (=> (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_16@@6))) o2_16@@15 f_40@@30) (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@27) o2_16@@15 f_40@@30) (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@15 f_40@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@15 f_40@@30))
))) (forall ((o2_16@@16 T@Ref) (f_40@@31 T@Field_19150_53) ) (!  (=> (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_16@@6))) o2_16@@16 f_40@@31) (= (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@27) o2_16@@16 f_40@@31) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@16 f_40@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@16 f_40@@31))
))) (forall ((o2_16@@17 T@Ref) (f_40@@32 T@Field_10382_22501) ) (!  (=> (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_16@@6))) o2_16@@17 f_40@@32) (= (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@27) o2_16@@17 f_40@@32) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@17 f_40@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@17 f_40@@32))
))) (forall ((o2_16@@18 T@Ref) (f_40@@33 T@Field_10382_10419) ) (!  (=> (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_16@@6))) o2_16@@18 f_40@@33) (= (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@27) o2_16@@18 f_40@@33) (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@18 f_40@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@18 f_40@@33))
))) (forall ((o2_16@@19 T@Ref) (f_40@@34 T@Field_22481_1218) ) (!  (=> (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_16@@6))) o2_16@@19 f_40@@34) (= (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@27) o2_16@@19 f_40@@34) (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@19 f_40@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@19 f_40@@34))
))) (forall ((o2_16@@20 T@Ref) (f_40@@35 T@Field_22481_10385) ) (!  (=> (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_16@@6))) o2_16@@20 f_40@@35) (= (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@27) o2_16@@20 f_40@@35) (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@20 f_40@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@20 f_40@@35))
))) (forall ((o2_16@@21 T@Ref) (f_40@@36 T@Field_22481_53) ) (!  (=> (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_16@@6))) o2_16@@21 f_40@@36) (= (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@27) o2_16@@21 f_40@@36) (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@21 f_40@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@21 f_40@@36))
))) (forall ((o2_16@@22 T@Ref) (f_40@@37 T@Field_22496_22501) ) (!  (=> (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_16@@6))) o2_16@@22 f_40@@37) (= (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@27) o2_16@@22 f_40@@37) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@22 f_40@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@22 f_40@@37))
))) (forall ((o2_16@@23 T@Ref) (f_40@@38 T@Field_22514_22515) ) (!  (=> (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_16@@6))) o2_16@@23 f_40@@38) (= (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@27) o2_16@@23 f_40@@38) (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@23 f_40@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@23 f_40@@38))
))) (forall ((o2_16@@24 T@Ref) (f_40@@39 T@Field_10418_1682) ) (!  (=> (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_16@@6))) o2_16@@24 f_40@@39) (= (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@27) o2_16@@24 f_40@@39) (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@24 f_40@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@24 f_40@@39))
))) (forall ((o2_16@@25 T@Ref) (f_40@@40 T@Field_10418_10385) ) (!  (=> (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_16@@6))) o2_16@@25 f_40@@40) (= (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@27) o2_16@@25 f_40@@40) (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@25 f_40@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@25 f_40@@40))
))) (forall ((o2_16@@26 T@Ref) (f_40@@41 T@Field_10418_53) ) (!  (=> (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_16@@6))) o2_16@@26 f_40@@41) (= (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@27) o2_16@@26 f_40@@41) (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@26 f_40@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@26 f_40@@41))
))) (forall ((o2_16@@27 T@Ref) (f_40@@42 T@Field_26559_26564) ) (!  (=> (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_16@@6))) o2_16@@27 f_40@@42) (= (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) o2_16@@27 f_40@@42) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@27 f_40@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@27 f_40@@42))
))) (forall ((o2_16@@28 T@Ref) (f_40@@43 T@Field_23822_23823) ) (!  (=> (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@27) null (PredicateMaskField_10418 pm_f_16@@6))) o2_16@@28 f_40@@43) (= (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@27) o2_16@@28 f_40@@43) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@28 f_40@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@23) o2_16@@28 f_40@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@23 Mask@@54) (IsPredicateField_10418_10419 pm_f_16@@6))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_19090) (ExhaleHeap@@24 T@PolymorphicMapType_19090) (Mask@@55 T@PolymorphicMapType_19111) (pm_f_16@@7 T@Field_10382_10419) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_10382_10419 Mask@@55 null pm_f_16@@7) (IsPredicateField_10382_65874 pm_f_16@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16@@29 T@Ref) (f_40@@44 T@Field_23355_1682) ) (!  (=> (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_16@@7))) o2_16@@29 f_40@@44) (= (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@28) o2_16@@29 f_40@@44) (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@29 f_40@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@29 f_40@@44))
)) (forall ((o2_16@@30 T@Ref) (f_40@@45 T@Field_19163_19164) ) (!  (=> (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_16@@7))) o2_16@@30 f_40@@45) (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@28) o2_16@@30 f_40@@45) (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@30 f_40@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@30 f_40@@45))
))) (forall ((o2_16@@31 T@Ref) (f_40@@46 T@Field_19150_53) ) (!  (=> (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_16@@7))) o2_16@@31 f_40@@46) (= (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@28) o2_16@@31 f_40@@46) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@31 f_40@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@31 f_40@@46))
))) (forall ((o2_16@@32 T@Ref) (f_40@@47 T@Field_10382_22501) ) (!  (=> (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_16@@7))) o2_16@@32 f_40@@47) (= (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) o2_16@@32 f_40@@47) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@32 f_40@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@32 f_40@@47))
))) (forall ((o2_16@@33 T@Ref) (f_40@@48 T@Field_10382_10419) ) (!  (=> (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_16@@7))) o2_16@@33 f_40@@48) (= (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@28) o2_16@@33 f_40@@48) (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@33 f_40@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@33 f_40@@48))
))) (forall ((o2_16@@34 T@Ref) (f_40@@49 T@Field_22481_1218) ) (!  (=> (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_16@@7))) o2_16@@34 f_40@@49) (= (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@28) o2_16@@34 f_40@@49) (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@34 f_40@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@34 f_40@@49))
))) (forall ((o2_16@@35 T@Ref) (f_40@@50 T@Field_22481_10385) ) (!  (=> (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_16@@7))) o2_16@@35 f_40@@50) (= (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@28) o2_16@@35 f_40@@50) (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@35 f_40@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@35 f_40@@50))
))) (forall ((o2_16@@36 T@Ref) (f_40@@51 T@Field_22481_53) ) (!  (=> (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_16@@7))) o2_16@@36 f_40@@51) (= (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@28) o2_16@@36 f_40@@51) (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@36 f_40@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@36 f_40@@51))
))) (forall ((o2_16@@37 T@Ref) (f_40@@52 T@Field_22496_22501) ) (!  (=> (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_16@@7))) o2_16@@37 f_40@@52) (= (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@28) o2_16@@37 f_40@@52) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@37 f_40@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@37 f_40@@52))
))) (forall ((o2_16@@38 T@Ref) (f_40@@53 T@Field_22514_22515) ) (!  (=> (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_16@@7))) o2_16@@38 f_40@@53) (= (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@28) o2_16@@38 f_40@@53) (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@38 f_40@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@38 f_40@@53))
))) (forall ((o2_16@@39 T@Ref) (f_40@@54 T@Field_10418_1682) ) (!  (=> (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_16@@7))) o2_16@@39 f_40@@54) (= (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@28) o2_16@@39 f_40@@54) (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@39 f_40@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@39 f_40@@54))
))) (forall ((o2_16@@40 T@Ref) (f_40@@55 T@Field_10418_10385) ) (!  (=> (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_16@@7))) o2_16@@40 f_40@@55) (= (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@28) o2_16@@40 f_40@@55) (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@40 f_40@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@40 f_40@@55))
))) (forall ((o2_16@@41 T@Ref) (f_40@@56 T@Field_10418_53) ) (!  (=> (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_16@@7))) o2_16@@41 f_40@@56) (= (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@28) o2_16@@41 f_40@@56) (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@41 f_40@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@41 f_40@@56))
))) (forall ((o2_16@@42 T@Ref) (f_40@@57 T@Field_26559_26564) ) (!  (=> (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_16@@7))) o2_16@@42 f_40@@57) (= (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@28) o2_16@@42 f_40@@57) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@42 f_40@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@42 f_40@@57))
))) (forall ((o2_16@@43 T@Ref) (f_40@@58 T@Field_23822_23823) ) (!  (=> (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@28) null (PredicateMaskField_10382 pm_f_16@@7))) o2_16@@43 f_40@@58) (= (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@28) o2_16@@43 f_40@@58) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@43 f_40@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@24) o2_16@@43 f_40@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@24 Mask@@55) (IsPredicateField_10382_65874 pm_f_16@@7))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_19090) (ExhaleHeap@@25 T@PolymorphicMapType_19090) (Mask@@56 T@PolymorphicMapType_19111) (pm_f_16@@8 T@Field_22514_22515) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_22481_10419 Mask@@56 null pm_f_16@@8) (IsWandField_10347_10348 pm_f_16@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16@@44 T@Ref) (f_40@@59 T@Field_23355_1682) ) (!  (=> (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_16@@8))) o2_16@@44 f_40@@59) (= (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@29) o2_16@@44 f_40@@59) (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@44 f_40@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@44 f_40@@59))
)) (forall ((o2_16@@45 T@Ref) (f_40@@60 T@Field_19163_19164) ) (!  (=> (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_16@@8))) o2_16@@45 f_40@@60) (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@29) o2_16@@45 f_40@@60) (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@45 f_40@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@45 f_40@@60))
))) (forall ((o2_16@@46 T@Ref) (f_40@@61 T@Field_19150_53) ) (!  (=> (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_16@@8))) o2_16@@46 f_40@@61) (= (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@29) o2_16@@46 f_40@@61) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@46 f_40@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@46 f_40@@61))
))) (forall ((o2_16@@47 T@Ref) (f_40@@62 T@Field_10382_22501) ) (!  (=> (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_16@@8))) o2_16@@47 f_40@@62) (= (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@29) o2_16@@47 f_40@@62) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@47 f_40@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@47 f_40@@62))
))) (forall ((o2_16@@48 T@Ref) (f_40@@63 T@Field_10382_10419) ) (!  (=> (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_16@@8))) o2_16@@48 f_40@@63) (= (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@29) o2_16@@48 f_40@@63) (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@48 f_40@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@48 f_40@@63))
))) (forall ((o2_16@@49 T@Ref) (f_40@@64 T@Field_22481_1218) ) (!  (=> (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_16@@8))) o2_16@@49 f_40@@64) (= (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@29) o2_16@@49 f_40@@64) (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@49 f_40@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@49 f_40@@64))
))) (forall ((o2_16@@50 T@Ref) (f_40@@65 T@Field_22481_10385) ) (!  (=> (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_16@@8))) o2_16@@50 f_40@@65) (= (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@29) o2_16@@50 f_40@@65) (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@50 f_40@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@50 f_40@@65))
))) (forall ((o2_16@@51 T@Ref) (f_40@@66 T@Field_22481_53) ) (!  (=> (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_16@@8))) o2_16@@51 f_40@@66) (= (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@29) o2_16@@51 f_40@@66) (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@51 f_40@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@51 f_40@@66))
))) (forall ((o2_16@@52 T@Ref) (f_40@@67 T@Field_22496_22501) ) (!  (=> (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_16@@8))) o2_16@@52 f_40@@67) (= (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) o2_16@@52 f_40@@67) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@52 f_40@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@52 f_40@@67))
))) (forall ((o2_16@@53 T@Ref) (f_40@@68 T@Field_22514_22515) ) (!  (=> (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_16@@8))) o2_16@@53 f_40@@68) (= (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@29) o2_16@@53 f_40@@68) (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@53 f_40@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@53 f_40@@68))
))) (forall ((o2_16@@54 T@Ref) (f_40@@69 T@Field_10418_1682) ) (!  (=> (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_16@@8))) o2_16@@54 f_40@@69) (= (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@29) o2_16@@54 f_40@@69) (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@54 f_40@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@54 f_40@@69))
))) (forall ((o2_16@@55 T@Ref) (f_40@@70 T@Field_10418_10385) ) (!  (=> (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_16@@8))) o2_16@@55 f_40@@70) (= (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@29) o2_16@@55 f_40@@70) (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@55 f_40@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@55 f_40@@70))
))) (forall ((o2_16@@56 T@Ref) (f_40@@71 T@Field_10418_53) ) (!  (=> (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_16@@8))) o2_16@@56 f_40@@71) (= (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@29) o2_16@@56 f_40@@71) (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@56 f_40@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@56 f_40@@71))
))) (forall ((o2_16@@57 T@Ref) (f_40@@72 T@Field_26559_26564) ) (!  (=> (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_16@@8))) o2_16@@57 f_40@@72) (= (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@29) o2_16@@57 f_40@@72) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@57 f_40@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@57 f_40@@72))
))) (forall ((o2_16@@58 T@Ref) (f_40@@73 T@Field_23822_23823) ) (!  (=> (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@29) null (WandMaskField_10347 pm_f_16@@8))) o2_16@@58 f_40@@73) (= (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@29) o2_16@@58 f_40@@73) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@58 f_40@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@25) o2_16@@58 f_40@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@25 Mask@@56) (IsWandField_10347_10348 pm_f_16@@8))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_19090) (ExhaleHeap@@26 T@PolymorphicMapType_19090) (Mask@@57 T@PolymorphicMapType_19111) (pm_f_16@@9 T@Field_23822_23823) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_10418_10419 Mask@@57 null pm_f_16@@9) (IsWandField_10418_71223 pm_f_16@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16@@59 T@Ref) (f_40@@74 T@Field_23355_1682) ) (!  (=> (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_16@@9))) o2_16@@59 f_40@@74) (= (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@30) o2_16@@59 f_40@@74) (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@59 f_40@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@59 f_40@@74))
)) (forall ((o2_16@@60 T@Ref) (f_40@@75 T@Field_19163_19164) ) (!  (=> (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_16@@9))) o2_16@@60 f_40@@75) (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@30) o2_16@@60 f_40@@75) (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@60 f_40@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@60 f_40@@75))
))) (forall ((o2_16@@61 T@Ref) (f_40@@76 T@Field_19150_53) ) (!  (=> (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_16@@9))) o2_16@@61 f_40@@76) (= (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@30) o2_16@@61 f_40@@76) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@61 f_40@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@61 f_40@@76))
))) (forall ((o2_16@@62 T@Ref) (f_40@@77 T@Field_10382_22501) ) (!  (=> (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_16@@9))) o2_16@@62 f_40@@77) (= (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@30) o2_16@@62 f_40@@77) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@62 f_40@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@62 f_40@@77))
))) (forall ((o2_16@@63 T@Ref) (f_40@@78 T@Field_10382_10419) ) (!  (=> (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_16@@9))) o2_16@@63 f_40@@78) (= (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@30) o2_16@@63 f_40@@78) (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@63 f_40@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@63 f_40@@78))
))) (forall ((o2_16@@64 T@Ref) (f_40@@79 T@Field_22481_1218) ) (!  (=> (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_16@@9))) o2_16@@64 f_40@@79) (= (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@30) o2_16@@64 f_40@@79) (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@64 f_40@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@64 f_40@@79))
))) (forall ((o2_16@@65 T@Ref) (f_40@@80 T@Field_22481_10385) ) (!  (=> (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_16@@9))) o2_16@@65 f_40@@80) (= (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@30) o2_16@@65 f_40@@80) (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@65 f_40@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@65 f_40@@80))
))) (forall ((o2_16@@66 T@Ref) (f_40@@81 T@Field_22481_53) ) (!  (=> (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_16@@9))) o2_16@@66 f_40@@81) (= (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@30) o2_16@@66 f_40@@81) (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@66 f_40@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@66 f_40@@81))
))) (forall ((o2_16@@67 T@Ref) (f_40@@82 T@Field_22496_22501) ) (!  (=> (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_16@@9))) o2_16@@67 f_40@@82) (= (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@30) o2_16@@67 f_40@@82) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@67 f_40@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@67 f_40@@82))
))) (forall ((o2_16@@68 T@Ref) (f_40@@83 T@Field_22514_22515) ) (!  (=> (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_16@@9))) o2_16@@68 f_40@@83) (= (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@30) o2_16@@68 f_40@@83) (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@68 f_40@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@68 f_40@@83))
))) (forall ((o2_16@@69 T@Ref) (f_40@@84 T@Field_10418_1682) ) (!  (=> (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_16@@9))) o2_16@@69 f_40@@84) (= (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@30) o2_16@@69 f_40@@84) (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@69 f_40@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@69 f_40@@84))
))) (forall ((o2_16@@70 T@Ref) (f_40@@85 T@Field_10418_10385) ) (!  (=> (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_16@@9))) o2_16@@70 f_40@@85) (= (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@30) o2_16@@70 f_40@@85) (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@70 f_40@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@70 f_40@@85))
))) (forall ((o2_16@@71 T@Ref) (f_40@@86 T@Field_10418_53) ) (!  (=> (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_16@@9))) o2_16@@71 f_40@@86) (= (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@30) o2_16@@71 f_40@@86) (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@71 f_40@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@71 f_40@@86))
))) (forall ((o2_16@@72 T@Ref) (f_40@@87 T@Field_26559_26564) ) (!  (=> (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_16@@9))) o2_16@@72 f_40@@87) (= (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) o2_16@@72 f_40@@87) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@72 f_40@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@72 f_40@@87))
))) (forall ((o2_16@@73 T@Ref) (f_40@@88 T@Field_23822_23823) ) (!  (=> (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@30) null (WandMaskField_10418 pm_f_16@@9))) o2_16@@73 f_40@@88) (= (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@30) o2_16@@73 f_40@@88) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@73 f_40@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@26) o2_16@@73 f_40@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@26 Mask@@57) (IsWandField_10418_71223 pm_f_16@@9))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_19090) (ExhaleHeap@@27 T@PolymorphicMapType_19090) (Mask@@58 T@PolymorphicMapType_19111) (pm_f_16@@10 T@Field_10382_10419) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_10382_10419 Mask@@58 null pm_f_16@@10) (IsWandField_10382_70866 pm_f_16@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16@@74 T@Ref) (f_40@@89 T@Field_23355_1682) ) (!  (=> (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_16@@10))) o2_16@@74 f_40@@89) (= (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@31) o2_16@@74 f_40@@89) (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@74 f_40@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@74 f_40@@89))
)) (forall ((o2_16@@75 T@Ref) (f_40@@90 T@Field_19163_19164) ) (!  (=> (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_16@@10))) o2_16@@75 f_40@@90) (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@31) o2_16@@75 f_40@@90) (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@75 f_40@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@75 f_40@@90))
))) (forall ((o2_16@@76 T@Ref) (f_40@@91 T@Field_19150_53) ) (!  (=> (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_16@@10))) o2_16@@76 f_40@@91) (= (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@31) o2_16@@76 f_40@@91) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@76 f_40@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@76 f_40@@91))
))) (forall ((o2_16@@77 T@Ref) (f_40@@92 T@Field_10382_22501) ) (!  (=> (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_16@@10))) o2_16@@77 f_40@@92) (= (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) o2_16@@77 f_40@@92) (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@77 f_40@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@77 f_40@@92))
))) (forall ((o2_16@@78 T@Ref) (f_40@@93 T@Field_10382_10419) ) (!  (=> (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_16@@10))) o2_16@@78 f_40@@93) (= (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@31) o2_16@@78 f_40@@93) (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@78 f_40@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@78 f_40@@93))
))) (forall ((o2_16@@79 T@Ref) (f_40@@94 T@Field_22481_1218) ) (!  (=> (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_16@@10))) o2_16@@79 f_40@@94) (= (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@31) o2_16@@79 f_40@@94) (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@79 f_40@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@79 f_40@@94))
))) (forall ((o2_16@@80 T@Ref) (f_40@@95 T@Field_22481_10385) ) (!  (=> (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_16@@10))) o2_16@@80 f_40@@95) (= (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@31) o2_16@@80 f_40@@95) (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@80 f_40@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@80 f_40@@95))
))) (forall ((o2_16@@81 T@Ref) (f_40@@96 T@Field_22481_53) ) (!  (=> (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_16@@10))) o2_16@@81 f_40@@96) (= (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@31) o2_16@@81 f_40@@96) (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@81 f_40@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@81 f_40@@96))
))) (forall ((o2_16@@82 T@Ref) (f_40@@97 T@Field_22496_22501) ) (!  (=> (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_16@@10))) o2_16@@82 f_40@@97) (= (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@31) o2_16@@82 f_40@@97) (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@82 f_40@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@82 f_40@@97))
))) (forall ((o2_16@@83 T@Ref) (f_40@@98 T@Field_22514_22515) ) (!  (=> (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_16@@10))) o2_16@@83 f_40@@98) (= (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@31) o2_16@@83 f_40@@98) (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@83 f_40@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@83 f_40@@98))
))) (forall ((o2_16@@84 T@Ref) (f_40@@99 T@Field_10418_1682) ) (!  (=> (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_16@@10))) o2_16@@84 f_40@@99) (= (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@31) o2_16@@84 f_40@@99) (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@84 f_40@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@84 f_40@@99))
))) (forall ((o2_16@@85 T@Ref) (f_40@@100 T@Field_10418_10385) ) (!  (=> (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_16@@10))) o2_16@@85 f_40@@100) (= (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@31) o2_16@@85 f_40@@100) (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@85 f_40@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@85 f_40@@100))
))) (forall ((o2_16@@86 T@Ref) (f_40@@101 T@Field_10418_53) ) (!  (=> (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_16@@10))) o2_16@@86 f_40@@101) (= (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@31) o2_16@@86 f_40@@101) (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@86 f_40@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@86 f_40@@101))
))) (forall ((o2_16@@87 T@Ref) (f_40@@102 T@Field_26559_26564) ) (!  (=> (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_16@@10))) o2_16@@87 f_40@@102) (= (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@31) o2_16@@87 f_40@@102) (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@87 f_40@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@87 f_40@@102))
))) (forall ((o2_16@@88 T@Ref) (f_40@@103 T@Field_23822_23823) ) (!  (=> (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@31) null (WandMaskField_10382 pm_f_16@@10))) o2_16@@88 f_40@@103) (= (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@31) o2_16@@88 f_40@@103) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@88 f_40@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| ExhaleHeap@@27) o2_16@@88 f_40@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@27 Mask@@58) (IsWandField_10382_70866 pm_f_16@@10))
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
(assert (forall ((Heap@@34 T@PolymorphicMapType_19090) (o_3 T@Ref) (f_35 T@Field_22496_22501) (v T@PolymorphicMapType_19639) ) (! (succHeap Heap@@34 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@34) (store (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@34) o_3 f_35 v) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@34) (store (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@34) o_3 f_35 v) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@34) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_19090) (o_3@@0 T@Ref) (f_35@@0 T@Field_22514_22515) (v@@0 T@FrameType) ) (! (succHeap Heap@@35 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@35) (store (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@35) o_3@@0 f_35@@0 v@@0) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@35) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@35) (store (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@35) o_3@@0 f_35@@0 v@@0) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_19090) (o_3@@1 T@Ref) (f_35@@1 T@Field_22481_1218) (v@@1 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@36) (store (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@36) o_3@@1 f_35@@1 v@@1) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@36) (store (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@36) o_3@@1 f_35@@1 v@@1) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@36) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_19090) (o_3@@2 T@Ref) (f_35@@2 T@Field_22481_10385) (v@@2 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@37) (store (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@37) o_3@@2 f_35@@2 v@@2) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@37) (store (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@37) o_3@@2 f_35@@2 v@@2) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@37) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_19090) (o_3@@3 T@Ref) (f_35@@3 T@Field_22481_53) (v@@3 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@38) (store (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@38) o_3@@3 f_35@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@38) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@38) (store (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@38) o_3@@3 f_35@@3 v@@3)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_19090) (o_3@@4 T@Ref) (f_35@@4 T@Field_26559_26564) (v@@4 T@PolymorphicMapType_19639) ) (! (succHeap Heap@@39 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@39) (store (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@39) o_3@@4 f_35@@4 v@@4) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@39) (store (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@39) o_3@@4 f_35@@4 v@@4) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@39) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_19090) (o_3@@5 T@Ref) (f_35@@5 T@Field_23822_23823) (v@@5 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@40) (store (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@40) o_3@@5 f_35@@5 v@@5) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@40) (store (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@40) o_3@@5 f_35@@5 v@@5) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@40) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_19090) (o_3@@6 T@Ref) (f_35@@6 T@Field_10418_1682) (v@@6 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@41) (store (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@41) o_3@@6 f_35@@6 v@@6) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@41) (store (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@41) o_3@@6 f_35@@6 v@@6) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@41) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_19090) (o_3@@7 T@Ref) (f_35@@7 T@Field_10418_10385) (v@@7 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@42) (store (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@42) o_3@@7 f_35@@7 v@@7) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@42) (store (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@42) o_3@@7 f_35@@7 v@@7) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@42) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_19090) (o_3@@8 T@Ref) (f_35@@8 T@Field_10418_53) (v@@8 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@43) (store (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@43) o_3@@8 f_35@@8 v@@8) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@43) (store (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@43) o_3@@8 f_35@@8 v@@8) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@43) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_19090) (o_3@@9 T@Ref) (f_35@@9 T@Field_10382_22501) (v@@9 T@PolymorphicMapType_19639) ) (! (succHeap Heap@@44 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@44) (store (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@44) o_3@@9 f_35@@9 v@@9) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@44) (store (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@44) o_3@@9 f_35@@9 v@@9) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@44) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_19090) (o_3@@10 T@Ref) (f_35@@10 T@Field_10382_10419) (v@@10 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@45) (store (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@45) o_3@@10 f_35@@10 v@@10) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@45) (store (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@45) o_3@@10 f_35@@10 v@@10) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@45) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_19090) (o_3@@11 T@Ref) (f_35@@11 T@Field_23355_1682) (v@@11 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@46) (store (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@46) o_3@@11 f_35@@11 v@@11) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@46) (store (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@46) o_3@@11 f_35@@11 v@@11) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@46) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_19090) (o_3@@12 T@Ref) (f_35@@12 T@Field_19163_19164) (v@@12 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@47) (store (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@47) o_3@@12 f_35@@12 v@@12) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@47) (store (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@47) o_3@@12 f_35@@12 v@@12) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@47) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_19090) (o_3@@13 T@Ref) (f_35@@13 T@Field_19150_53) (v@@13 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_19090 (store (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@48) o_3@@13 f_35@@13 v@@13) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19090 (store (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@48) o_3@@13 f_35@@13 v@@13) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@48) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@48)))
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
(assert (forall ((o_3@@14 T@Ref) (f_8 T@Field_19163_19164) (Heap@@49 T@PolymorphicMapType_19090) ) (!  (=> (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@49) o_3@@14 $allocated) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@49) (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@49) o_3@@14 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@49) o_3@@14 f_8))
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
(declare-fun Heap@1 () T@PolymorphicMapType_19090)
(declare-fun ys@@9 () T@Ref)
(declare-fun Heap@3 () T@PolymorphicMapType_19090)
(declare-fun newPMask@0 () T@PolymorphicMapType_19639)
(declare-fun Heap@2 () T@PolymorphicMapType_19090)
(declare-fun Heap@0 () T@PolymorphicMapType_19090)
(declare-fun Heap@@50 () T@PolymorphicMapType_19090)
(declare-fun |sum_rec#trigger| (T@FrameType T@Ref) Bool)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_19111)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_19111)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_19111)
(declare-fun Mask@0 () T@PolymorphicMapType_19111)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1682 (Int) T@FrameType)
(declare-fun FrameFragment_10385 (T@Ref) T@FrameType)
(declare-fun FrameFragment_10419 (T@FrameType) T@FrameType)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_19111)
(set-info :boogie-vc-id |sum_rec#definedness|)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon9_correct true))
(let ((anon13_Else_correct  (=> (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@1) ys@@9 next) null) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 5) 3)) anon9_correct))))
(let ((anon13_Then_correct  (=> (not (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@1) ys@@9 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_15 T@Ref) (f_20 T@Field_23355_1682) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| ys@@9))) o_15 f_20) (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@1) ys@@9 next)))) o_15 f_20)) (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| newPMask@0) o_15 f_20))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| newPMask@0) o_15 f_20))
)) (forall ((o_15@@0 T@Ref) (f_20@@0 T@Field_19163_19164) ) (!  (=> (or (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| ys@@9))) o_15@@0 f_20@@0) (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@1) ys@@9 next)))) o_15@@0 f_20@@0)) (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| newPMask@0) o_15@@0 f_20@@0))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| newPMask@0) o_15@@0 f_20@@0))
))) (forall ((o_15@@1 T@Ref) (f_20@@1 T@Field_19150_53) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| ys@@9))) o_15@@1 f_20@@1) (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@1) ys@@9 next)))) o_15@@1 f_20@@1)) (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| newPMask@0) o_15@@1 f_20@@1))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| newPMask@0) o_15@@1 f_20@@1))
))) (forall ((o_15@@2 T@Ref) (f_20@@2 T@Field_10382_22501) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| ys@@9))) o_15@@2 f_20@@2) (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@1) ys@@9 next)))) o_15@@2 f_20@@2)) (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| newPMask@0) o_15@@2 f_20@@2))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| newPMask@0) o_15@@2 f_20@@2))
))) (forall ((o_15@@3 T@Ref) (f_20@@3 T@Field_10382_10419) ) (!  (=> (or (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| ys@@9))) o_15@@3 f_20@@3) (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@1) ys@@9 next)))) o_15@@3 f_20@@3)) (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| newPMask@0) o_15@@3 f_20@@3))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| newPMask@0) o_15@@3 f_20@@3))
))) (forall ((o_15@@4 T@Ref) (f_20@@4 T@Field_22481_1218) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| ys@@9))) o_15@@4 f_20@@4) (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@1) ys@@9 next)))) o_15@@4 f_20@@4)) (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| newPMask@0) o_15@@4 f_20@@4))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| newPMask@0) o_15@@4 f_20@@4))
))) (forall ((o_15@@5 T@Ref) (f_20@@5 T@Field_22481_10385) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| ys@@9))) o_15@@5 f_20@@5) (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@1) ys@@9 next)))) o_15@@5 f_20@@5)) (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| newPMask@0) o_15@@5 f_20@@5))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| newPMask@0) o_15@@5 f_20@@5))
))) (forall ((o_15@@6 T@Ref) (f_20@@6 T@Field_22481_53) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| ys@@9))) o_15@@6 f_20@@6) (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@1) ys@@9 next)))) o_15@@6 f_20@@6)) (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| newPMask@0) o_15@@6 f_20@@6))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| newPMask@0) o_15@@6 f_20@@6))
))) (forall ((o_15@@7 T@Ref) (f_20@@7 T@Field_22496_22501) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| ys@@9))) o_15@@7 f_20@@7) (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@1) ys@@9 next)))) o_15@@7 f_20@@7)) (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| newPMask@0) o_15@@7 f_20@@7))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| newPMask@0) o_15@@7 f_20@@7))
))) (forall ((o_15@@8 T@Ref) (f_20@@8 T@Field_22514_22515) ) (!  (=> (or (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| ys@@9))) o_15@@8 f_20@@8) (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@1) ys@@9 next)))) o_15@@8 f_20@@8)) (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| newPMask@0) o_15@@8 f_20@@8))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| newPMask@0) o_15@@8 f_20@@8))
))) (forall ((o_15@@9 T@Ref) (f_20@@9 T@Field_10418_1682) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| ys@@9))) o_15@@9 f_20@@9) (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@1) ys@@9 next)))) o_15@@9 f_20@@9)) (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| newPMask@0) o_15@@9 f_20@@9))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| newPMask@0) o_15@@9 f_20@@9))
))) (forall ((o_15@@10 T@Ref) (f_20@@10 T@Field_10418_10385) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| ys@@9))) o_15@@10 f_20@@10) (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@1) ys@@9 next)))) o_15@@10 f_20@@10)) (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| newPMask@0) o_15@@10 f_20@@10))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| newPMask@0) o_15@@10 f_20@@10))
))) (forall ((o_15@@11 T@Ref) (f_20@@11 T@Field_10418_53) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| ys@@9))) o_15@@11 f_20@@11) (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@1) ys@@9 next)))) o_15@@11 f_20@@11)) (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| newPMask@0) o_15@@11 f_20@@11))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| newPMask@0) o_15@@11 f_20@@11))
))) (forall ((o_15@@12 T@Ref) (f_20@@12 T@Field_26559_26564) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| ys@@9))) o_15@@12 f_20@@12) (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@1) ys@@9 next)))) o_15@@12 f_20@@12)) (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| newPMask@0) o_15@@12 f_20@@12))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| newPMask@0) o_15@@12 f_20@@12))
))) (forall ((o_15@@13 T@Ref) (f_20@@13 T@Field_23822_23823) ) (!  (=> (or (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| ys@@9))) o_15@@13 f_20@@13) (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@1) ys@@9 next)))) o_15@@13 f_20@@13)) (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| newPMask@0) o_15@@13 f_20@@13))
 :qid |stdinbpl.348:33|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| newPMask@0) o_15@@13 f_20@@13))
))) (= Heap@2 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@1) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@1) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@1) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@1) (store (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@1) null (|List#sm| ys@@9) newPMask@0) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@1) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@1) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@1) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@1) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@1) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@1) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@1) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@1) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@1) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 4) 3))) anon9_correct))))
(let ((anon7_correct  (=> (and (= Heap@0 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@50) (store (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9) (PolymorphicMapType_19639 (store (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) ys@@9 val true) (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@@50) null (|List#sm| ys@@9))))) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@@50) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@@50))) (= Heap@1 (PolymorphicMapType_19090 (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@0) (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@0) (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@0) (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@0) (store (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@0) null (|List#sm| ys@@9) (PolymorphicMapType_19639 (|PolymorphicMapType_19639_10382_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@0) null (|List#sm| ys@@9))) (store (|PolymorphicMapType_19639_10384_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@0) null (|List#sm| ys@@9))) ys@@9 next true) (|PolymorphicMapType_19639_10382_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@0) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_10382_67477#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@0) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_10382_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@0) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_22481_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@0) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_22481_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@0) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_22481_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@0) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_22481_68525#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@0) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_22481_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@0) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_23822_1682#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@0) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_23822_10385#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@0) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_23822_53#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@0) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_23822_69573#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@0) null (|List#sm| ys@@9))) (|PolymorphicMapType_19639_23822_22515#PolymorphicMapType_19639| (select (|PolymorphicMapType_19090_10422_26651#PolymorphicMapType_19090| Heap@0) null (|List#sm| ys@@9))))) (|PolymorphicMapType_19090_10340_32889#PolymorphicMapType_19090| Heap@0) (|PolymorphicMapType_19090_10382_10419#PolymorphicMapType_19090| Heap@0) (|PolymorphicMapType_19090_10382_63396#PolymorphicMapType_19090| Heap@0) (|PolymorphicMapType_19090_10418_1682#PolymorphicMapType_19090| Heap@0) (|PolymorphicMapType_19090_10418_10385#PolymorphicMapType_19090| Heap@0) (|PolymorphicMapType_19090_10418_53#PolymorphicMapType_19090| Heap@0) (|PolymorphicMapType_19090_22481_1682#PolymorphicMapType_19090| Heap@0) (|PolymorphicMapType_19090_22481_10385#PolymorphicMapType_19090| Heap@0) (|PolymorphicMapType_19090_22481_10419#PolymorphicMapType_19090| Heap@0) (|PolymorphicMapType_19090_22481_53#PolymorphicMapType_19090| Heap@0)))) (and (=> (= (ControlFlow 0 6) 4) anon13_Then_correct) (=> (= (ControlFlow 0 6) 5) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (|sum_rec#trigger| (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@50) null (List (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@50) ys@@9 next))) (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@50) ys@@9 next)) (= (ControlFlow 0 8) 6)) anon7_correct)))
(let ((anon11_Then_correct  (=> (and (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@50) ys@@9 next) null) (= (ControlFlow 0 7) 6)) anon7_correct)))
(let ((anon12_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| UnfoldingMask@3) null (List (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@50) ys@@9 next))))))))
(let ((anon11_Else_correct  (=> (not (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@50) ys@@9 next) null)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (HasDirectPerm_10384_10385 UnfoldingMask@3 ys@@9 next)) (=> (HasDirectPerm_10384_10385 UnfoldingMask@3 ys@@9 next) (and (=> (= (ControlFlow 0 9) 2) anon12_Then_correct) (=> (= (ControlFlow 0 9) 8) anon12_Else_correct)))))))
(let ((anon2_correct  (=> (state Heap@@50 UnfoldingMask@3) (and (=> (= (ControlFlow 0 11) (- 0 13)) (HasDirectPerm_10382_1682 UnfoldingMask@3 ys@@9 val)) (=> (HasDirectPerm_10382_1682 UnfoldingMask@3 ys@@9 val) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_10384_10385 UnfoldingMask@3 ys@@9 next)) (=> (HasDirectPerm_10384_10385 UnfoldingMask@3 ys@@9 next) (and (=> (= (ControlFlow 0 11) 7) anon11_Then_correct) (=> (= (ControlFlow 0 11) 9) anon11_Else_correct)))))))))
(let ((anon10_Else_correct  (=> (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@50) ys@@9 next) null) (=> (and (= UnfoldingMask@3 UnfoldingMask@1) (= (ControlFlow 0 15) 11)) anon2_correct))))
(let ((anon10_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@50) ys@@9 next) null)) (= UnfoldingMask@2 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| UnfoldingMask@1) null (List (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@50) ys@@9 next)) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| UnfoldingMask@1) null (List (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@50) ys@@9 next))) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| UnfoldingMask@1) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| UnfoldingMask@1) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| UnfoldingMask@1) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| UnfoldingMask@1) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| UnfoldingMask@1) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| UnfoldingMask@1) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| UnfoldingMask@1) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| UnfoldingMask@1) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| UnfoldingMask@1) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| UnfoldingMask@1) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| UnfoldingMask@1) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| UnfoldingMask@1) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| UnfoldingMask@1) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| UnfoldingMask@1)))) (=> (and (and (InsidePredicate_10418_10418 (List ys@@9) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@50) null (List ys@@9)) (List (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@50) ys@@9 next)) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@50) null (List (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@50) ys@@9 next)))) (state Heap@@50 UnfoldingMask@2)) (and (= UnfoldingMask@3 UnfoldingMask@2) (= (ControlFlow 0 14) 11))) anon2_correct))))
(let ((anon0_correct  (=> (state Heap@@50 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_19090_10202_53#PolymorphicMapType_19090| Heap@@50) ys@@9 $allocated)) (and (= AssumeFunctionsAbove 0) (= Mask@0 (PolymorphicMapType_19111 (store (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9) (+ (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| ZeroMask) null (List ys@@9)) FullPerm)) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| ZeroMask) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| ZeroMask))))) (and (and (state Heap@@50 Mask@0) (state Heap@@50 Mask@0)) (and (|List#trigger_10418| Heap@@50 (List ys@@9)) (= (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@50) null (List ys@@9)) (CombineFrames (FrameFragment_1682 (select (|PolymorphicMapType_19090_10382_1682#PolymorphicMapType_19090| Heap@@50) ys@@9 val)) (CombineFrames (FrameFragment_10385 (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@50) ys@@9 next)) (FrameFragment_10419 (ite (not (= (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@50) ys@@9 next) null)) (select (|PolymorphicMapType_19090_10418_10419#PolymorphicMapType_19090| Heap@@50) null (List (select (|PolymorphicMapType_19090_10205_10206#PolymorphicMapType_19090| Heap@@50) ys@@9 next))) EmptyFrame)))))))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@0) null (List ys@@9))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@0) null (List ys@@9)))) (=> (and (not (= ys@@9 null)) (= UnfoldingMask@0 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| Mask@0) (store (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@0) ys@@9 val (+ (select (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| Mask@0) ys@@9 val) FullPerm)) (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| Mask@0) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| Mask@0)))) (=> (and (and (state Heap@@50 UnfoldingMask@0) (not (= ys@@9 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_19111 (|PolymorphicMapType_19111_10418_10419#PolymorphicMapType_19111| UnfoldingMask@0) (|PolymorphicMapType_19111_10382_1682#PolymorphicMapType_19111| UnfoldingMask@0) (store (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| UnfoldingMask@0) ys@@9 next (+ (select (|PolymorphicMapType_19111_10384_10385#PolymorphicMapType_19111| UnfoldingMask@0) ys@@9 next) FullPerm)) (|PolymorphicMapType_19111_10334_1218#PolymorphicMapType_19111| UnfoldingMask@0) (|PolymorphicMapType_19111_10418_1682#PolymorphicMapType_19111| UnfoldingMask@0) (|PolymorphicMapType_19111_10418_10385#PolymorphicMapType_19111| UnfoldingMask@0) (|PolymorphicMapType_19111_10418_53#PolymorphicMapType_19111| UnfoldingMask@0) (|PolymorphicMapType_19111_10418_77586#PolymorphicMapType_19111| UnfoldingMask@0) (|PolymorphicMapType_19111_10382_10419#PolymorphicMapType_19111| UnfoldingMask@0) (|PolymorphicMapType_19111_10382_53#PolymorphicMapType_19111| UnfoldingMask@0) (|PolymorphicMapType_19111_10382_77985#PolymorphicMapType_19111| UnfoldingMask@0) (|PolymorphicMapType_19111_10334_10419#PolymorphicMapType_19111| UnfoldingMask@0) (|PolymorphicMapType_19111_10334_10385#PolymorphicMapType_19111| UnfoldingMask@0) (|PolymorphicMapType_19111_10334_53#PolymorphicMapType_19111| UnfoldingMask@0) (|PolymorphicMapType_19111_10334_78399#PolymorphicMapType_19111| UnfoldingMask@0))) (state Heap@@50 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 16) 14) anon10_Then_correct) (=> (= (ControlFlow 0 16) 15) anon10_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 18) 16) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
