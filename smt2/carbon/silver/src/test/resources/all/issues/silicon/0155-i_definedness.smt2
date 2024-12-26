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
(declare-sort T@Field_5294_53 0)
(declare-sort T@Field_5307_5308 0)
(declare-sort T@Field_9028_9029 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_11408_11413 0)
(declare-sort T@Field_2813_9029 0)
(declare-sort T@Field_2813_11413 0)
(declare-sort T@Field_9028_2814 0)
(declare-sort T@Field_9028_53 0)
(declare-datatypes ((T@PolymorphicMapType_5255 0)) (((PolymorphicMapType_5255 (|PolymorphicMapType_5255_2847_2848#PolymorphicMapType_5255| (Array T@Ref T@Field_9028_9029 Real)) (|PolymorphicMapType_5255_2813_2814#PolymorphicMapType_5255| (Array T@Ref T@Field_5307_5308 Real)) (|PolymorphicMapType_5255_2847_2814#PolymorphicMapType_5255| (Array T@Ref T@Field_9028_2814 Real)) (|PolymorphicMapType_5255_2847_53#PolymorphicMapType_5255| (Array T@Ref T@Field_9028_53 Real)) (|PolymorphicMapType_5255_2847_24116#PolymorphicMapType_5255| (Array T@Ref T@Field_11408_11413 Real)) (|PolymorphicMapType_5255_2813_2848#PolymorphicMapType_5255| (Array T@Ref T@Field_2813_9029 Real)) (|PolymorphicMapType_5255_2813_53#PolymorphicMapType_5255| (Array T@Ref T@Field_5294_53 Real)) (|PolymorphicMapType_5255_2813_24447#PolymorphicMapType_5255| (Array T@Ref T@Field_2813_11413 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5783 0)) (((PolymorphicMapType_5783 (|PolymorphicMapType_5783_2813_2814#PolymorphicMapType_5783| (Array T@Ref T@Field_5307_5308 Bool)) (|PolymorphicMapType_5783_2813_53#PolymorphicMapType_5783| (Array T@Ref T@Field_5294_53 Bool)) (|PolymorphicMapType_5783_2813_9029#PolymorphicMapType_5783| (Array T@Ref T@Field_2813_9029 Bool)) (|PolymorphicMapType_5783_2813_18545#PolymorphicMapType_5783| (Array T@Ref T@Field_2813_11413 Bool)) (|PolymorphicMapType_5783_9028_2814#PolymorphicMapType_5783| (Array T@Ref T@Field_9028_2814 Bool)) (|PolymorphicMapType_5783_9028_53#PolymorphicMapType_5783| (Array T@Ref T@Field_9028_53 Bool)) (|PolymorphicMapType_5783_9028_9029#PolymorphicMapType_5783| (Array T@Ref T@Field_9028_9029 Bool)) (|PolymorphicMapType_5783_9028_19395#PolymorphicMapType_5783| (Array T@Ref T@Field_11408_11413 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5234 0)) (((PolymorphicMapType_5234 (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| (Array T@Ref T@Field_5294_53 Bool)) (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| (Array T@Ref T@Field_5307_5308 T@Ref)) (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| (Array T@Ref T@Field_9028_9029 T@FrameType)) (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| (Array T@Ref T@Field_11408_11413 T@PolymorphicMapType_5783)) (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| (Array T@Ref T@Field_2813_9029 T@FrameType)) (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| (Array T@Ref T@Field_2813_11413 T@PolymorphicMapType_5783)) (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| (Array T@Ref T@Field_9028_2814 T@Ref)) (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| (Array T@Ref T@Field_9028_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_5294_53)
(declare-fun next () T@Field_5307_5308)
(declare-fun succHeap (T@PolymorphicMapType_5234 T@PolymorphicMapType_5234) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5234 T@PolymorphicMapType_5234) Bool)
(declare-fun state (T@PolymorphicMapType_5234 T@PolymorphicMapType_5255) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5255) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5234 T@PolymorphicMapType_5234 T@PolymorphicMapType_5255) Bool)
(declare-fun IsPredicateField_2847_2848 (T@Field_9028_9029) Bool)
(declare-fun HasDirectPerm_9028_9029 (T@PolymorphicMapType_5255 T@Ref T@Field_9028_9029) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2847 (T@Field_9028_9029) T@Field_11408_11413)
(declare-fun IsPredicateField_2813_17274 (T@Field_2813_9029) Bool)
(declare-fun HasDirectPerm_2813_9029 (T@PolymorphicMapType_5255 T@Ref T@Field_2813_9029) Bool)
(declare-fun PredicateMaskField_2813 (T@Field_2813_9029) T@Field_2813_11413)
(declare-fun IsWandField_9028_20560 (T@Field_9028_9029) Bool)
(declare-fun WandMaskField_9028 (T@Field_9028_9029) T@Field_11408_11413)
(declare-fun IsWandField_2813_20203 (T@Field_2813_9029) Bool)
(declare-fun WandMaskField_2813 (T@Field_2813_9029) T@Field_2813_11413)
(declare-fun |i'| (T@PolymorphicMapType_5234 T@Ref Int Bool) Bool)
(declare-fun dummyFunction_1505 (Bool) Bool)
(declare-fun |i#triggerStateless| (T@Ref Int Bool) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5783)
(declare-fun i_100 (T@PolymorphicMapType_5234 T@Ref Int Bool) Bool)
(declare-fun valid (T@Ref) T@Field_9028_9029)
(declare-fun |valid#trigger_2847| (T@PolymorphicMapType_5234 T@Field_9028_9029) Bool)
(declare-fun |valid#everUsed_2847| (T@Field_9028_9029) Bool)
(declare-fun |valid#sm| (T@Ref) T@Field_11408_11413)
(declare-fun dummyHeap () T@PolymorphicMapType_5234)
(declare-fun ZeroMask () T@PolymorphicMapType_5255)
(declare-fun InsidePredicate_5294_5294 (T@Field_2813_9029 T@FrameType T@Field_2813_9029 T@FrameType) Bool)
(declare-fun InsidePredicate_2847_2847 (T@Field_9028_9029 T@FrameType T@Field_9028_9029 T@FrameType) Bool)
(declare-fun IsPredicateField_2813_2814 (T@Field_5307_5308) Bool)
(declare-fun IsWandField_2813_2814 (T@Field_5307_5308) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2813_26271 (T@Field_2813_11413) Bool)
(declare-fun IsWandField_2813_26287 (T@Field_2813_11413) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2813_53 (T@Field_5294_53) Bool)
(declare-fun IsWandField_2813_53 (T@Field_5294_53) Bool)
(declare-fun IsPredicateField_2847_25622 (T@Field_11408_11413) Bool)
(declare-fun IsWandField_2847_25638 (T@Field_11408_11413) Bool)
(declare-fun IsPredicateField_2847_53 (T@Field_9028_53) Bool)
(declare-fun IsWandField_2847_53 (T@Field_9028_53) Bool)
(declare-fun IsPredicateField_2847_2814 (T@Field_9028_2814) Bool)
(declare-fun IsWandField_2847_2814 (T@Field_9028_2814) Bool)
(declare-fun HasDirectPerm_9028_17029 (T@PolymorphicMapType_5255 T@Ref T@Field_11408_11413) Bool)
(declare-fun HasDirectPerm_9028_53 (T@PolymorphicMapType_5255 T@Ref T@Field_9028_53) Bool)
(declare-fun HasDirectPerm_9028_2814 (T@PolymorphicMapType_5255 T@Ref T@Field_9028_2814) Bool)
(declare-fun HasDirectPerm_2813_16089 (T@PolymorphicMapType_5255 T@Ref T@Field_2813_11413) Bool)
(declare-fun HasDirectPerm_2813_53 (T@PolymorphicMapType_5255 T@Ref T@Field_5294_53) Bool)
(declare-fun HasDirectPerm_2813_2814 (T@PolymorphicMapType_5255 T@Ref T@Field_5307_5308) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5255 T@PolymorphicMapType_5255 T@PolymorphicMapType_5255) Bool)
(declare-fun |i#frame| (T@FrameType T@Ref Int Bool) Bool)
(declare-fun getPredWandId_2847_2848 (T@Field_9028_9029) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun InsidePredicate_5294_2847 (T@Field_2813_9029 T@FrameType T@Field_9028_9029 T@FrameType) Bool)
(declare-fun InsidePredicate_2847_5294 (T@Field_9028_9029 T@FrameType T@Field_2813_9029 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_5234) (Heap1 T@PolymorphicMapType_5234) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5234) (Mask T@PolymorphicMapType_5255) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5234) (ExhaleHeap T@PolymorphicMapType_5234) (Mask@@0 T@PolymorphicMapType_5255) (pm_f_9 T@Field_9028_9029) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9028_9029 Mask@@0 null pm_f_9) (IsPredicateField_2847_2848 pm_f_9)) (and (and (and (and (and (and (and (forall ((o2_9 T@Ref) (f_24 T@Field_5307_5308) ) (!  (=> (select (|PolymorphicMapType_5783_2813_2814#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@0) null (PredicateMaskField_2847 pm_f_9))) o2_9 f_24) (= (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@0) o2_9 f_24) (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| ExhaleHeap) o2_9 f_24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| ExhaleHeap) o2_9 f_24))
)) (forall ((o2_9@@0 T@Ref) (f_24@@0 T@Field_5294_53) ) (!  (=> (select (|PolymorphicMapType_5783_2813_53#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@0) null (PredicateMaskField_2847 pm_f_9))) o2_9@@0 f_24@@0) (= (select (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@0) o2_9@@0 f_24@@0) (select (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| ExhaleHeap) o2_9@@0 f_24@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| ExhaleHeap) o2_9@@0 f_24@@0))
))) (forall ((o2_9@@1 T@Ref) (f_24@@1 T@Field_2813_9029) ) (!  (=> (select (|PolymorphicMapType_5783_2813_9029#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@0) null (PredicateMaskField_2847 pm_f_9))) o2_9@@1 f_24@@1) (= (select (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| Heap@@0) o2_9@@1 f_24@@1) (select (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| ExhaleHeap) o2_9@@1 f_24@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| ExhaleHeap) o2_9@@1 f_24@@1))
))) (forall ((o2_9@@2 T@Ref) (f_24@@2 T@Field_2813_11413) ) (!  (=> (select (|PolymorphicMapType_5783_2813_18545#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@0) null (PredicateMaskField_2847 pm_f_9))) o2_9@@2 f_24@@2) (= (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@0) o2_9@@2 f_24@@2) (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| ExhaleHeap) o2_9@@2 f_24@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| ExhaleHeap) o2_9@@2 f_24@@2))
))) (forall ((o2_9@@3 T@Ref) (f_24@@3 T@Field_9028_2814) ) (!  (=> (select (|PolymorphicMapType_5783_9028_2814#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@0) null (PredicateMaskField_2847 pm_f_9))) o2_9@@3 f_24@@3) (= (select (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| Heap@@0) o2_9@@3 f_24@@3) (select (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| ExhaleHeap) o2_9@@3 f_24@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| ExhaleHeap) o2_9@@3 f_24@@3))
))) (forall ((o2_9@@4 T@Ref) (f_24@@4 T@Field_9028_53) ) (!  (=> (select (|PolymorphicMapType_5783_9028_53#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@0) null (PredicateMaskField_2847 pm_f_9))) o2_9@@4 f_24@@4) (= (select (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| Heap@@0) o2_9@@4 f_24@@4) (select (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| ExhaleHeap) o2_9@@4 f_24@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| ExhaleHeap) o2_9@@4 f_24@@4))
))) (forall ((o2_9@@5 T@Ref) (f_24@@5 T@Field_9028_9029) ) (!  (=> (select (|PolymorphicMapType_5783_9028_9029#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@0) null (PredicateMaskField_2847 pm_f_9))) o2_9@@5 f_24@@5) (= (select (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@0) o2_9@@5 f_24@@5) (select (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| ExhaleHeap) o2_9@@5 f_24@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| ExhaleHeap) o2_9@@5 f_24@@5))
))) (forall ((o2_9@@6 T@Ref) (f_24@@6 T@Field_11408_11413) ) (!  (=> (select (|PolymorphicMapType_5783_9028_19395#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@0) null (PredicateMaskField_2847 pm_f_9))) o2_9@@6 f_24@@6) (= (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@0) o2_9@@6 f_24@@6) (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| ExhaleHeap) o2_9@@6 f_24@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| ExhaleHeap) o2_9@@6 f_24@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_2847_2848 pm_f_9))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5234) (ExhaleHeap@@0 T@PolymorphicMapType_5234) (Mask@@1 T@PolymorphicMapType_5255) (pm_f_9@@0 T@Field_2813_9029) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2813_9029 Mask@@1 null pm_f_9@@0) (IsPredicateField_2813_17274 pm_f_9@@0)) (and (and (and (and (and (and (and (forall ((o2_9@@7 T@Ref) (f_24@@7 T@Field_5307_5308) ) (!  (=> (select (|PolymorphicMapType_5783_2813_2814#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@1) null (PredicateMaskField_2813 pm_f_9@@0))) o2_9@@7 f_24@@7) (= (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@1) o2_9@@7 f_24@@7) (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| ExhaleHeap@@0) o2_9@@7 f_24@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| ExhaleHeap@@0) o2_9@@7 f_24@@7))
)) (forall ((o2_9@@8 T@Ref) (f_24@@8 T@Field_5294_53) ) (!  (=> (select (|PolymorphicMapType_5783_2813_53#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@1) null (PredicateMaskField_2813 pm_f_9@@0))) o2_9@@8 f_24@@8) (= (select (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@1) o2_9@@8 f_24@@8) (select (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| ExhaleHeap@@0) o2_9@@8 f_24@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| ExhaleHeap@@0) o2_9@@8 f_24@@8))
))) (forall ((o2_9@@9 T@Ref) (f_24@@9 T@Field_2813_9029) ) (!  (=> (select (|PolymorphicMapType_5783_2813_9029#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@1) null (PredicateMaskField_2813 pm_f_9@@0))) o2_9@@9 f_24@@9) (= (select (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| Heap@@1) o2_9@@9 f_24@@9) (select (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| ExhaleHeap@@0) o2_9@@9 f_24@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| ExhaleHeap@@0) o2_9@@9 f_24@@9))
))) (forall ((o2_9@@10 T@Ref) (f_24@@10 T@Field_2813_11413) ) (!  (=> (select (|PolymorphicMapType_5783_2813_18545#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@1) null (PredicateMaskField_2813 pm_f_9@@0))) o2_9@@10 f_24@@10) (= (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@1) o2_9@@10 f_24@@10) (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| ExhaleHeap@@0) o2_9@@10 f_24@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| ExhaleHeap@@0) o2_9@@10 f_24@@10))
))) (forall ((o2_9@@11 T@Ref) (f_24@@11 T@Field_9028_2814) ) (!  (=> (select (|PolymorphicMapType_5783_9028_2814#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@1) null (PredicateMaskField_2813 pm_f_9@@0))) o2_9@@11 f_24@@11) (= (select (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| Heap@@1) o2_9@@11 f_24@@11) (select (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| ExhaleHeap@@0) o2_9@@11 f_24@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| ExhaleHeap@@0) o2_9@@11 f_24@@11))
))) (forall ((o2_9@@12 T@Ref) (f_24@@12 T@Field_9028_53) ) (!  (=> (select (|PolymorphicMapType_5783_9028_53#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@1) null (PredicateMaskField_2813 pm_f_9@@0))) o2_9@@12 f_24@@12) (= (select (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| Heap@@1) o2_9@@12 f_24@@12) (select (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| ExhaleHeap@@0) o2_9@@12 f_24@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| ExhaleHeap@@0) o2_9@@12 f_24@@12))
))) (forall ((o2_9@@13 T@Ref) (f_24@@13 T@Field_9028_9029) ) (!  (=> (select (|PolymorphicMapType_5783_9028_9029#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@1) null (PredicateMaskField_2813 pm_f_9@@0))) o2_9@@13 f_24@@13) (= (select (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@1) o2_9@@13 f_24@@13) (select (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| ExhaleHeap@@0) o2_9@@13 f_24@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| ExhaleHeap@@0) o2_9@@13 f_24@@13))
))) (forall ((o2_9@@14 T@Ref) (f_24@@14 T@Field_11408_11413) ) (!  (=> (select (|PolymorphicMapType_5783_9028_19395#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@1) null (PredicateMaskField_2813 pm_f_9@@0))) o2_9@@14 f_24@@14) (= (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@1) o2_9@@14 f_24@@14) (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| ExhaleHeap@@0) o2_9@@14 f_24@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| ExhaleHeap@@0) o2_9@@14 f_24@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_2813_17274 pm_f_9@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5234) (ExhaleHeap@@1 T@PolymorphicMapType_5234) (Mask@@2 T@PolymorphicMapType_5255) (pm_f_9@@1 T@Field_9028_9029) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_9028_9029 Mask@@2 null pm_f_9@@1) (IsWandField_9028_20560 pm_f_9@@1)) (and (and (and (and (and (and (and (forall ((o2_9@@15 T@Ref) (f_24@@15 T@Field_5307_5308) ) (!  (=> (select (|PolymorphicMapType_5783_2813_2814#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@2) null (WandMaskField_9028 pm_f_9@@1))) o2_9@@15 f_24@@15) (= (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@2) o2_9@@15 f_24@@15) (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| ExhaleHeap@@1) o2_9@@15 f_24@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| ExhaleHeap@@1) o2_9@@15 f_24@@15))
)) (forall ((o2_9@@16 T@Ref) (f_24@@16 T@Field_5294_53) ) (!  (=> (select (|PolymorphicMapType_5783_2813_53#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@2) null (WandMaskField_9028 pm_f_9@@1))) o2_9@@16 f_24@@16) (= (select (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@2) o2_9@@16 f_24@@16) (select (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| ExhaleHeap@@1) o2_9@@16 f_24@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| ExhaleHeap@@1) o2_9@@16 f_24@@16))
))) (forall ((o2_9@@17 T@Ref) (f_24@@17 T@Field_2813_9029) ) (!  (=> (select (|PolymorphicMapType_5783_2813_9029#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@2) null (WandMaskField_9028 pm_f_9@@1))) o2_9@@17 f_24@@17) (= (select (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| Heap@@2) o2_9@@17 f_24@@17) (select (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| ExhaleHeap@@1) o2_9@@17 f_24@@17)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| ExhaleHeap@@1) o2_9@@17 f_24@@17))
))) (forall ((o2_9@@18 T@Ref) (f_24@@18 T@Field_2813_11413) ) (!  (=> (select (|PolymorphicMapType_5783_2813_18545#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@2) null (WandMaskField_9028 pm_f_9@@1))) o2_9@@18 f_24@@18) (= (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@2) o2_9@@18 f_24@@18) (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| ExhaleHeap@@1) o2_9@@18 f_24@@18)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| ExhaleHeap@@1) o2_9@@18 f_24@@18))
))) (forall ((o2_9@@19 T@Ref) (f_24@@19 T@Field_9028_2814) ) (!  (=> (select (|PolymorphicMapType_5783_9028_2814#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@2) null (WandMaskField_9028 pm_f_9@@1))) o2_9@@19 f_24@@19) (= (select (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| Heap@@2) o2_9@@19 f_24@@19) (select (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| ExhaleHeap@@1) o2_9@@19 f_24@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| ExhaleHeap@@1) o2_9@@19 f_24@@19))
))) (forall ((o2_9@@20 T@Ref) (f_24@@20 T@Field_9028_53) ) (!  (=> (select (|PolymorphicMapType_5783_9028_53#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@2) null (WandMaskField_9028 pm_f_9@@1))) o2_9@@20 f_24@@20) (= (select (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| Heap@@2) o2_9@@20 f_24@@20) (select (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| ExhaleHeap@@1) o2_9@@20 f_24@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| ExhaleHeap@@1) o2_9@@20 f_24@@20))
))) (forall ((o2_9@@21 T@Ref) (f_24@@21 T@Field_9028_9029) ) (!  (=> (select (|PolymorphicMapType_5783_9028_9029#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@2) null (WandMaskField_9028 pm_f_9@@1))) o2_9@@21 f_24@@21) (= (select (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@2) o2_9@@21 f_24@@21) (select (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| ExhaleHeap@@1) o2_9@@21 f_24@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| ExhaleHeap@@1) o2_9@@21 f_24@@21))
))) (forall ((o2_9@@22 T@Ref) (f_24@@22 T@Field_11408_11413) ) (!  (=> (select (|PolymorphicMapType_5783_9028_19395#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@2) null (WandMaskField_9028 pm_f_9@@1))) o2_9@@22 f_24@@22) (= (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@2) o2_9@@22 f_24@@22) (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| ExhaleHeap@@1) o2_9@@22 f_24@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| ExhaleHeap@@1) o2_9@@22 f_24@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_9028_20560 pm_f_9@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5234) (ExhaleHeap@@2 T@PolymorphicMapType_5234) (Mask@@3 T@PolymorphicMapType_5255) (pm_f_9@@2 T@Field_2813_9029) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_2813_9029 Mask@@3 null pm_f_9@@2) (IsWandField_2813_20203 pm_f_9@@2)) (and (and (and (and (and (and (and (forall ((o2_9@@23 T@Ref) (f_24@@23 T@Field_5307_5308) ) (!  (=> (select (|PolymorphicMapType_5783_2813_2814#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@3) null (WandMaskField_2813 pm_f_9@@2))) o2_9@@23 f_24@@23) (= (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@3) o2_9@@23 f_24@@23) (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| ExhaleHeap@@2) o2_9@@23 f_24@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| ExhaleHeap@@2) o2_9@@23 f_24@@23))
)) (forall ((o2_9@@24 T@Ref) (f_24@@24 T@Field_5294_53) ) (!  (=> (select (|PolymorphicMapType_5783_2813_53#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@3) null (WandMaskField_2813 pm_f_9@@2))) o2_9@@24 f_24@@24) (= (select (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@3) o2_9@@24 f_24@@24) (select (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| ExhaleHeap@@2) o2_9@@24 f_24@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| ExhaleHeap@@2) o2_9@@24 f_24@@24))
))) (forall ((o2_9@@25 T@Ref) (f_24@@25 T@Field_2813_9029) ) (!  (=> (select (|PolymorphicMapType_5783_2813_9029#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@3) null (WandMaskField_2813 pm_f_9@@2))) o2_9@@25 f_24@@25) (= (select (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| Heap@@3) o2_9@@25 f_24@@25) (select (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| ExhaleHeap@@2) o2_9@@25 f_24@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| ExhaleHeap@@2) o2_9@@25 f_24@@25))
))) (forall ((o2_9@@26 T@Ref) (f_24@@26 T@Field_2813_11413) ) (!  (=> (select (|PolymorphicMapType_5783_2813_18545#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@3) null (WandMaskField_2813 pm_f_9@@2))) o2_9@@26 f_24@@26) (= (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@3) o2_9@@26 f_24@@26) (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| ExhaleHeap@@2) o2_9@@26 f_24@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| ExhaleHeap@@2) o2_9@@26 f_24@@26))
))) (forall ((o2_9@@27 T@Ref) (f_24@@27 T@Field_9028_2814) ) (!  (=> (select (|PolymorphicMapType_5783_9028_2814#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@3) null (WandMaskField_2813 pm_f_9@@2))) o2_9@@27 f_24@@27) (= (select (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| Heap@@3) o2_9@@27 f_24@@27) (select (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| ExhaleHeap@@2) o2_9@@27 f_24@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| ExhaleHeap@@2) o2_9@@27 f_24@@27))
))) (forall ((o2_9@@28 T@Ref) (f_24@@28 T@Field_9028_53) ) (!  (=> (select (|PolymorphicMapType_5783_9028_53#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@3) null (WandMaskField_2813 pm_f_9@@2))) o2_9@@28 f_24@@28) (= (select (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| Heap@@3) o2_9@@28 f_24@@28) (select (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| ExhaleHeap@@2) o2_9@@28 f_24@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| ExhaleHeap@@2) o2_9@@28 f_24@@28))
))) (forall ((o2_9@@29 T@Ref) (f_24@@29 T@Field_9028_9029) ) (!  (=> (select (|PolymorphicMapType_5783_9028_9029#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@3) null (WandMaskField_2813 pm_f_9@@2))) o2_9@@29 f_24@@29) (= (select (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@3) o2_9@@29 f_24@@29) (select (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| ExhaleHeap@@2) o2_9@@29 f_24@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| ExhaleHeap@@2) o2_9@@29 f_24@@29))
))) (forall ((o2_9@@30 T@Ref) (f_24@@30 T@Field_11408_11413) ) (!  (=> (select (|PolymorphicMapType_5783_9028_19395#PolymorphicMapType_5783| (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@3) null (WandMaskField_2813 pm_f_9@@2))) o2_9@@30 f_24@@30) (= (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@3) o2_9@@30 f_24@@30) (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| ExhaleHeap@@2) o2_9@@30 f_24@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| ExhaleHeap@@2) o2_9@@30 f_24@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_2813_20203 pm_f_9@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5234) (Heap1@@0 T@PolymorphicMapType_5234) (Heap2 T@PolymorphicMapType_5234) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5234) (this T@Ref) (x Int) (y Bool) ) (! (dummyFunction_1505 (|i#triggerStateless| this x y))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (|i'| Heap@@4 this x y))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11408_11413) ) (!  (not (select (|PolymorphicMapType_5783_9028_19395#PolymorphicMapType_5783| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5783_9028_19395#PolymorphicMapType_5783| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9028_9029) ) (!  (not (select (|PolymorphicMapType_5783_9028_9029#PolymorphicMapType_5783| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5783_9028_9029#PolymorphicMapType_5783| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9028_53) ) (!  (not (select (|PolymorphicMapType_5783_9028_53#PolymorphicMapType_5783| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5783_9028_53#PolymorphicMapType_5783| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9028_2814) ) (!  (not (select (|PolymorphicMapType_5783_9028_2814#PolymorphicMapType_5783| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5783_9028_2814#PolymorphicMapType_5783| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_2813_11413) ) (!  (not (select (|PolymorphicMapType_5783_2813_18545#PolymorphicMapType_5783| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5783_2813_18545#PolymorphicMapType_5783| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_2813_9029) ) (!  (not (select (|PolymorphicMapType_5783_2813_9029#PolymorphicMapType_5783| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5783_2813_9029#PolymorphicMapType_5783| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5294_53) ) (!  (not (select (|PolymorphicMapType_5783_2813_53#PolymorphicMapType_5783| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5783_2813_53#PolymorphicMapType_5783| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_5307_5308) ) (!  (not (select (|PolymorphicMapType_5783_2813_2814#PolymorphicMapType_5783| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5783_2813_2814#PolymorphicMapType_5783| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5234) (this@@0 T@Ref) (x@@0 Int) (y@@0 Bool) ) (!  (and (= (i_100 Heap@@5 this@@0 x@@0 y@@0) (|i'| Heap@@5 this@@0 x@@0 y@@0)) (dummyFunction_1505 (|i#triggerStateless| this@@0 x@@0 y@@0)))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (i_100 Heap@@5 this@@0 x@@0 y@@0))
)))
(assert (forall ((this@@1 T@Ref) ) (! (IsPredicateField_2847_2848 (valid this@@1))
 :qid |stdinbpl.324:15|
 :skolemid |28|
 :pattern ( (valid this@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5234) (this@@2 T@Ref) ) (! (|valid#everUsed_2847| (valid this@@2))
 :qid |stdinbpl.343:15|
 :skolemid |32|
 :pattern ( (|valid#trigger_2847| Heap@@6 (valid this@@2)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5234) (ExhaleHeap@@3 T@PolymorphicMapType_5234) (Mask@@4 T@PolymorphicMapType_5255) (pm_f_9@@3 T@Field_9028_9029) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_9028_9029 Mask@@4 null pm_f_9@@3) (IsPredicateField_2847_2848 pm_f_9@@3)) (= (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@7) null (PredicateMaskField_2847 pm_f_9@@3)) (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| ExhaleHeap@@3) null (PredicateMaskField_2847 pm_f_9@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsPredicateField_2847_2848 pm_f_9@@3) (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| ExhaleHeap@@3) null (PredicateMaskField_2847 pm_f_9@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5234) (ExhaleHeap@@4 T@PolymorphicMapType_5234) (Mask@@5 T@PolymorphicMapType_5255) (pm_f_9@@4 T@Field_2813_9029) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_2813_9029 Mask@@5 null pm_f_9@@4) (IsPredicateField_2813_17274 pm_f_9@@4)) (= (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@8) null (PredicateMaskField_2813 pm_f_9@@4)) (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| ExhaleHeap@@4) null (PredicateMaskField_2813 pm_f_9@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsPredicateField_2813_17274 pm_f_9@@4) (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| ExhaleHeap@@4) null (PredicateMaskField_2813 pm_f_9@@4)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5234) (ExhaleHeap@@5 T@PolymorphicMapType_5234) (Mask@@6 T@PolymorphicMapType_5255) (pm_f_9@@5 T@Field_9028_9029) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_9028_9029 Mask@@6 null pm_f_9@@5) (IsWandField_9028_20560 pm_f_9@@5)) (= (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@9) null (WandMaskField_9028 pm_f_9@@5)) (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| ExhaleHeap@@5) null (WandMaskField_9028 pm_f_9@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_9028_20560 pm_f_9@@5) (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| ExhaleHeap@@5) null (WandMaskField_9028 pm_f_9@@5)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5234) (ExhaleHeap@@6 T@PolymorphicMapType_5234) (Mask@@7 T@PolymorphicMapType_5255) (pm_f_9@@6 T@Field_2813_9029) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_2813_9029 Mask@@7 null pm_f_9@@6) (IsWandField_2813_20203 pm_f_9@@6)) (= (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@10) null (WandMaskField_2813 pm_f_9@@6)) (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| ExhaleHeap@@6) null (WandMaskField_2813 pm_f_9@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_2813_20203 pm_f_9@@6) (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| ExhaleHeap@@6) null (WandMaskField_2813 pm_f_9@@6)))
)))
(assert (forall ((this@@3 T@Ref) (this2 T@Ref) ) (!  (=> (= (valid this@@3) (valid this2)) (= this@@3 this2))
 :qid |stdinbpl.334:15|
 :skolemid |30|
 :pattern ( (valid this@@3) (valid this2))
)))
(assert (forall ((this@@4 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|valid#sm| this@@4) (|valid#sm| this2@@0)) (= this@@4 this2@@0))
 :qid |stdinbpl.338:15|
 :skolemid |31|
 :pattern ( (|valid#sm| this@@4) (|valid#sm| this2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5234) (ExhaleHeap@@7 T@PolymorphicMapType_5234) (Mask@@8 T@PolymorphicMapType_5255) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@11) o_27 $allocated) (select (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| ExhaleHeap@@7) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| ExhaleHeap@@7) o_27 $allocated))
)))
(assert (forall ((p T@Field_2813_9029) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5294_5294 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5294_5294 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_9028_9029) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_2847_2847 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_2847_2847 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_2813_2814 next)))
(assert  (not (IsWandField_2813_2814 next)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5234) (ExhaleHeap@@8 T@PolymorphicMapType_5234) (Mask@@9 T@PolymorphicMapType_5255) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5255) (o_2@@7 T@Ref) (f_4@@7 T@Field_2813_11413) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_5255_2813_24447#PolymorphicMapType_5255| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_2813_26271 f_4@@7))) (not (IsWandField_2813_26287 f_4@@7))) (<= (select (|PolymorphicMapType_5255_2813_24447#PolymorphicMapType_5255| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_5255_2813_24447#PolymorphicMapType_5255| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5255) (o_2@@8 T@Ref) (f_4@@8 T@Field_5294_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_5255_2813_53#PolymorphicMapType_5255| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_2813_53 f_4@@8))) (not (IsWandField_2813_53 f_4@@8))) (<= (select (|PolymorphicMapType_5255_2813_53#PolymorphicMapType_5255| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_5255_2813_53#PolymorphicMapType_5255| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5255) (o_2@@9 T@Ref) (f_4@@9 T@Field_5307_5308) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_5255_2813_2814#PolymorphicMapType_5255| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_2813_2814 f_4@@9))) (not (IsWandField_2813_2814 f_4@@9))) (<= (select (|PolymorphicMapType_5255_2813_2814#PolymorphicMapType_5255| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_5255_2813_2814#PolymorphicMapType_5255| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5255) (o_2@@10 T@Ref) (f_4@@10 T@Field_2813_9029) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_5255_2813_2848#PolymorphicMapType_5255| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_2813_17274 f_4@@10))) (not (IsWandField_2813_20203 f_4@@10))) (<= (select (|PolymorphicMapType_5255_2813_2848#PolymorphicMapType_5255| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_5255_2813_2848#PolymorphicMapType_5255| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5255) (o_2@@11 T@Ref) (f_4@@11 T@Field_11408_11413) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_5255_2847_24116#PolymorphicMapType_5255| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_2847_25622 f_4@@11))) (not (IsWandField_2847_25638 f_4@@11))) (<= (select (|PolymorphicMapType_5255_2847_24116#PolymorphicMapType_5255| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_5255_2847_24116#PolymorphicMapType_5255| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5255) (o_2@@12 T@Ref) (f_4@@12 T@Field_9028_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_5255_2847_53#PolymorphicMapType_5255| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_2847_53 f_4@@12))) (not (IsWandField_2847_53 f_4@@12))) (<= (select (|PolymorphicMapType_5255_2847_53#PolymorphicMapType_5255| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_5255_2847_53#PolymorphicMapType_5255| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_5255) (o_2@@13 T@Ref) (f_4@@13 T@Field_9028_2814) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_5255_2847_2814#PolymorphicMapType_5255| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_2847_2814 f_4@@13))) (not (IsWandField_2847_2814 f_4@@13))) (<= (select (|PolymorphicMapType_5255_2847_2814#PolymorphicMapType_5255| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_5255_2847_2814#PolymorphicMapType_5255| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_5255) (o_2@@14 T@Ref) (f_4@@14 T@Field_9028_9029) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_5255_2847_2848#PolymorphicMapType_5255| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_2847_2848 f_4@@14))) (not (IsWandField_9028_20560 f_4@@14))) (<= (select (|PolymorphicMapType_5255_2847_2848#PolymorphicMapType_5255| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_5255_2847_2848#PolymorphicMapType_5255| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_5255) (o_2@@15 T@Ref) (f_4@@15 T@Field_11408_11413) ) (! (= (HasDirectPerm_9028_17029 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_5255_2847_24116#PolymorphicMapType_5255| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9028_17029 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_5255) (o_2@@16 T@Ref) (f_4@@16 T@Field_9028_9029) ) (! (= (HasDirectPerm_9028_9029 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_5255_2847_2848#PolymorphicMapType_5255| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9028_9029 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_5255) (o_2@@17 T@Ref) (f_4@@17 T@Field_9028_53) ) (! (= (HasDirectPerm_9028_53 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_5255_2847_53#PolymorphicMapType_5255| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9028_53 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_5255) (o_2@@18 T@Ref) (f_4@@18 T@Field_9028_2814) ) (! (= (HasDirectPerm_9028_2814 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_5255_2847_2814#PolymorphicMapType_5255| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9028_2814 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_5255) (o_2@@19 T@Ref) (f_4@@19 T@Field_2813_11413) ) (! (= (HasDirectPerm_2813_16089 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_5255_2813_24447#PolymorphicMapType_5255| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2813_16089 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_5255) (o_2@@20 T@Ref) (f_4@@20 T@Field_2813_9029) ) (! (= (HasDirectPerm_2813_9029 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_5255_2813_2848#PolymorphicMapType_5255| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2813_9029 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_5255) (o_2@@21 T@Ref) (f_4@@21 T@Field_5294_53) ) (! (= (HasDirectPerm_2813_53 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_5255_2813_53#PolymorphicMapType_5255| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2813_53 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_5255) (o_2@@22 T@Ref) (f_4@@22 T@Field_5307_5308) ) (! (= (HasDirectPerm_2813_2814 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_5255_2813_2814#PolymorphicMapType_5255| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2813_2814 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5234) (ExhaleHeap@@9 T@PolymorphicMapType_5234) (Mask@@26 T@PolymorphicMapType_5255) (o_27@@0 T@Ref) (f_24@@31 T@Field_11408_11413) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_9028_17029 Mask@@26 o_27@@0 f_24@@31) (= (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@13) o_27@@0 f_24@@31) (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| ExhaleHeap@@9) o_27@@0 f_24@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| ExhaleHeap@@9) o_27@@0 f_24@@31))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5234) (ExhaleHeap@@10 T@PolymorphicMapType_5234) (Mask@@27 T@PolymorphicMapType_5255) (o_27@@1 T@Ref) (f_24@@32 T@Field_9028_9029) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_9028_9029 Mask@@27 o_27@@1 f_24@@32) (= (select (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@14) o_27@@1 f_24@@32) (select (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| ExhaleHeap@@10) o_27@@1 f_24@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| ExhaleHeap@@10) o_27@@1 f_24@@32))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5234) (ExhaleHeap@@11 T@PolymorphicMapType_5234) (Mask@@28 T@PolymorphicMapType_5255) (o_27@@2 T@Ref) (f_24@@33 T@Field_9028_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_9028_53 Mask@@28 o_27@@2 f_24@@33) (= (select (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| Heap@@15) o_27@@2 f_24@@33) (select (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| ExhaleHeap@@11) o_27@@2 f_24@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| ExhaleHeap@@11) o_27@@2 f_24@@33))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5234) (ExhaleHeap@@12 T@PolymorphicMapType_5234) (Mask@@29 T@PolymorphicMapType_5255) (o_27@@3 T@Ref) (f_24@@34 T@Field_9028_2814) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_9028_2814 Mask@@29 o_27@@3 f_24@@34) (= (select (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| Heap@@16) o_27@@3 f_24@@34) (select (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| ExhaleHeap@@12) o_27@@3 f_24@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| ExhaleHeap@@12) o_27@@3 f_24@@34))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5234) (ExhaleHeap@@13 T@PolymorphicMapType_5234) (Mask@@30 T@PolymorphicMapType_5255) (o_27@@4 T@Ref) (f_24@@35 T@Field_2813_11413) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_2813_16089 Mask@@30 o_27@@4 f_24@@35) (= (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@17) o_27@@4 f_24@@35) (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| ExhaleHeap@@13) o_27@@4 f_24@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| ExhaleHeap@@13) o_27@@4 f_24@@35))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5234) (ExhaleHeap@@14 T@PolymorphicMapType_5234) (Mask@@31 T@PolymorphicMapType_5255) (o_27@@5 T@Ref) (f_24@@36 T@Field_2813_9029) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_2813_9029 Mask@@31 o_27@@5 f_24@@36) (= (select (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| Heap@@18) o_27@@5 f_24@@36) (select (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| ExhaleHeap@@14) o_27@@5 f_24@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| ExhaleHeap@@14) o_27@@5 f_24@@36))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5234) (ExhaleHeap@@15 T@PolymorphicMapType_5234) (Mask@@32 T@PolymorphicMapType_5255) (o_27@@6 T@Ref) (f_24@@37 T@Field_5294_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_2813_53 Mask@@32 o_27@@6 f_24@@37) (= (select (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@19) o_27@@6 f_24@@37) (select (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| ExhaleHeap@@15) o_27@@6 f_24@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| ExhaleHeap@@15) o_27@@6 f_24@@37))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5234) (ExhaleHeap@@16 T@PolymorphicMapType_5234) (Mask@@33 T@PolymorphicMapType_5255) (o_27@@7 T@Ref) (f_24@@38 T@Field_5307_5308) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_2813_2814 Mask@@33 o_27@@7 f_24@@38) (= (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@20) o_27@@7 f_24@@38) (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| ExhaleHeap@@16) o_27@@7 f_24@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| ExhaleHeap@@16) o_27@@7 f_24@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_2813_11413) ) (! (= (select (|PolymorphicMapType_5255_2813_24447#PolymorphicMapType_5255| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5255_2813_24447#PolymorphicMapType_5255| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_5294_53) ) (! (= (select (|PolymorphicMapType_5255_2813_53#PolymorphicMapType_5255| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5255_2813_53#PolymorphicMapType_5255| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_5307_5308) ) (! (= (select (|PolymorphicMapType_5255_2813_2814#PolymorphicMapType_5255| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5255_2813_2814#PolymorphicMapType_5255| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_2813_9029) ) (! (= (select (|PolymorphicMapType_5255_2813_2848#PolymorphicMapType_5255| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5255_2813_2848#PolymorphicMapType_5255| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_11408_11413) ) (! (= (select (|PolymorphicMapType_5255_2847_24116#PolymorphicMapType_5255| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5255_2847_24116#PolymorphicMapType_5255| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_9028_53) ) (! (= (select (|PolymorphicMapType_5255_2847_53#PolymorphicMapType_5255| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5255_2847_53#PolymorphicMapType_5255| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_9028_2814) ) (! (= (select (|PolymorphicMapType_5255_2847_2814#PolymorphicMapType_5255| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5255_2847_2814#PolymorphicMapType_5255| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_9028_9029) ) (! (= (select (|PolymorphicMapType_5255_2847_2848#PolymorphicMapType_5255| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5255_2847_2848#PolymorphicMapType_5255| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5255) (SummandMask1 T@PolymorphicMapType_5255) (SummandMask2 T@PolymorphicMapType_5255) (o_2@@31 T@Ref) (f_4@@31 T@Field_2813_11413) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5255_2813_24447#PolymorphicMapType_5255| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_5255_2813_24447#PolymorphicMapType_5255| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_5255_2813_24447#PolymorphicMapType_5255| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5255_2813_24447#PolymorphicMapType_5255| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5255_2813_24447#PolymorphicMapType_5255| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5255_2813_24447#PolymorphicMapType_5255| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5255) (SummandMask1@@0 T@PolymorphicMapType_5255) (SummandMask2@@0 T@PolymorphicMapType_5255) (o_2@@32 T@Ref) (f_4@@32 T@Field_5294_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5255_2813_53#PolymorphicMapType_5255| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_5255_2813_53#PolymorphicMapType_5255| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_5255_2813_53#PolymorphicMapType_5255| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5255_2813_53#PolymorphicMapType_5255| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5255_2813_53#PolymorphicMapType_5255| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5255_2813_53#PolymorphicMapType_5255| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5255) (SummandMask1@@1 T@PolymorphicMapType_5255) (SummandMask2@@1 T@PolymorphicMapType_5255) (o_2@@33 T@Ref) (f_4@@33 T@Field_5307_5308) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5255_2813_2814#PolymorphicMapType_5255| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_5255_2813_2814#PolymorphicMapType_5255| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_5255_2813_2814#PolymorphicMapType_5255| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5255_2813_2814#PolymorphicMapType_5255| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5255_2813_2814#PolymorphicMapType_5255| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5255_2813_2814#PolymorphicMapType_5255| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5255) (SummandMask1@@2 T@PolymorphicMapType_5255) (SummandMask2@@2 T@PolymorphicMapType_5255) (o_2@@34 T@Ref) (f_4@@34 T@Field_2813_9029) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5255_2813_2848#PolymorphicMapType_5255| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_5255_2813_2848#PolymorphicMapType_5255| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_5255_2813_2848#PolymorphicMapType_5255| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5255_2813_2848#PolymorphicMapType_5255| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5255_2813_2848#PolymorphicMapType_5255| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5255_2813_2848#PolymorphicMapType_5255| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5255) (SummandMask1@@3 T@PolymorphicMapType_5255) (SummandMask2@@3 T@PolymorphicMapType_5255) (o_2@@35 T@Ref) (f_4@@35 T@Field_11408_11413) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5255_2847_24116#PolymorphicMapType_5255| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_5255_2847_24116#PolymorphicMapType_5255| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_5255_2847_24116#PolymorphicMapType_5255| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5255_2847_24116#PolymorphicMapType_5255| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5255_2847_24116#PolymorphicMapType_5255| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5255_2847_24116#PolymorphicMapType_5255| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_5255) (SummandMask1@@4 T@PolymorphicMapType_5255) (SummandMask2@@4 T@PolymorphicMapType_5255) (o_2@@36 T@Ref) (f_4@@36 T@Field_9028_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_5255_2847_53#PolymorphicMapType_5255| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_5255_2847_53#PolymorphicMapType_5255| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_5255_2847_53#PolymorphicMapType_5255| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5255_2847_53#PolymorphicMapType_5255| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5255_2847_53#PolymorphicMapType_5255| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5255_2847_53#PolymorphicMapType_5255| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_5255) (SummandMask1@@5 T@PolymorphicMapType_5255) (SummandMask2@@5 T@PolymorphicMapType_5255) (o_2@@37 T@Ref) (f_4@@37 T@Field_9028_2814) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_5255_2847_2814#PolymorphicMapType_5255| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_5255_2847_2814#PolymorphicMapType_5255| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_5255_2847_2814#PolymorphicMapType_5255| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5255_2847_2814#PolymorphicMapType_5255| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5255_2847_2814#PolymorphicMapType_5255| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5255_2847_2814#PolymorphicMapType_5255| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_5255) (SummandMask1@@6 T@PolymorphicMapType_5255) (SummandMask2@@6 T@PolymorphicMapType_5255) (o_2@@38 T@Ref) (f_4@@38 T@Field_9028_9029) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_5255_2847_2848#PolymorphicMapType_5255| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_5255_2847_2848#PolymorphicMapType_5255| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_5255_2847_2848#PolymorphicMapType_5255| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5255_2847_2848#PolymorphicMapType_5255| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5255_2847_2848#PolymorphicMapType_5255| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5255_2847_2848#PolymorphicMapType_5255| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5234) (Mask@@34 T@PolymorphicMapType_5255) (this@@5 T@Ref) (x@@1 Int) (y@@1 Bool) ) (!  (=> (state Heap@@21 Mask@@34) (= (|i'| Heap@@21 this@@5 x@@1 y@@1) (|i#frame| (select (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@21) null (valid this@@5)) this@@5 x@@1 y@@1)))
 :qid |stdinbpl.211:15|
 :skolemid |25|
 :pattern ( (state Heap@@21 Mask@@34) (|i'| Heap@@21 this@@5 x@@1 y@@1))
 :pattern ( (state Heap@@21 Mask@@34) (|i#triggerStateless| this@@5 x@@1 y@@1) (|valid#trigger_2847| Heap@@21 (valid this@@5)))
)))
(assert (forall ((this@@6 T@Ref) ) (! (= (getPredWandId_2847_2848 (valid this@@6)) 0)
 :qid |stdinbpl.328:15|
 :skolemid |29|
 :pattern ( (valid this@@6))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5234) (Mask@@35 T@PolymorphicMapType_5255) (this@@7 T@Ref) (x@@2 Int) (y@@2 Bool) ) (!  (=> (and (state Heap@@22 Mask@@35) (< AssumeFunctionsAbove 0)) (=> (not (= this@@7 null)) (= (i_100 Heap@@22 this@@7 x@@2 y@@2) (|i'| Heap@@22 (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@22) this@@7 next) x@@2 y@@2))))
 :qid |stdinbpl.204:15|
 :skolemid |24|
 :pattern ( (state Heap@@22 Mask@@35) (i_100 Heap@@22 this@@7 x@@2 y@@2))
 :pattern ( (state Heap@@22 Mask@@35) (|i#triggerStateless| this@@7 x@@2 y@@2) (|valid#trigger_2847| Heap@@22 (valid this@@7)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5234) (o_20 T@Ref) (f_31 T@Field_11408_11413) (v T@PolymorphicMapType_5783) ) (! (succHeap Heap@@23 (PolymorphicMapType_5234 (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@23) (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@23) (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@23) (store (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@23) o_20 f_31 v) (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| Heap@@23) (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@23) (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| Heap@@23) (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5234 (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@23) (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@23) (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@23) (store (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@23) o_20 f_31 v) (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| Heap@@23) (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@23) (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| Heap@@23) (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5234) (o_20@@0 T@Ref) (f_31@@0 T@Field_9028_9029) (v@@0 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_5234 (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@24) (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@24) (store (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@24) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@24) (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| Heap@@24) (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@24) (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| Heap@@24) (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5234 (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@24) (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@24) (store (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@24) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@24) (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| Heap@@24) (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@24) (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| Heap@@24) (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5234) (o_20@@1 T@Ref) (f_31@@1 T@Field_9028_2814) (v@@1 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_5234 (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@25) (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@25) (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@25) (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@25) (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| Heap@@25) (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@25) (store (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| Heap@@25) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5234 (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@25) (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@25) (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@25) (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@25) (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| Heap@@25) (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@25) (store (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| Heap@@25) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5234) (o_20@@2 T@Ref) (f_31@@2 T@Field_9028_53) (v@@2 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_5234 (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@26) (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@26) (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@26) (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@26) (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| Heap@@26) (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@26) (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| Heap@@26) (store (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| Heap@@26) o_20@@2 f_31@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5234 (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@26) (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@26) (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@26) (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@26) (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| Heap@@26) (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@26) (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| Heap@@26) (store (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| Heap@@26) o_20@@2 f_31@@2 v@@2)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5234) (o_20@@3 T@Ref) (f_31@@3 T@Field_2813_11413) (v@@3 T@PolymorphicMapType_5783) ) (! (succHeap Heap@@27 (PolymorphicMapType_5234 (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@27) (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@27) (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@27) (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@27) (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| Heap@@27) (store (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@27) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| Heap@@27) (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5234 (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@27) (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@27) (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@27) (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@27) (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| Heap@@27) (store (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@27) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| Heap@@27) (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_5234) (o_20@@4 T@Ref) (f_31@@4 T@Field_2813_9029) (v@@4 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_5234 (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@28) (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@28) (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@28) (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@28) (store (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| Heap@@28) o_20@@4 f_31@@4 v@@4) (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@28) (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| Heap@@28) (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5234 (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@28) (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@28) (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@28) (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@28) (store (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| Heap@@28) o_20@@4 f_31@@4 v@@4) (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@28) (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| Heap@@28) (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_5234) (o_20@@5 T@Ref) (f_31@@5 T@Field_5307_5308) (v@@5 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_5234 (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@29) (store (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@29) o_20@@5 f_31@@5 v@@5) (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@29) (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@29) (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| Heap@@29) (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@29) (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| Heap@@29) (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5234 (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@29) (store (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@29) o_20@@5 f_31@@5 v@@5) (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@29) (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@29) (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| Heap@@29) (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@29) (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| Heap@@29) (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_5234) (o_20@@6 T@Ref) (f_31@@6 T@Field_5294_53) (v@@6 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_5234 (store (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@30) o_20@@6 f_31@@6 v@@6) (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@30) (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@30) (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@30) (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| Heap@@30) (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@30) (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| Heap@@30) (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5234 (store (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@30) o_20@@6 f_31@@6 v@@6) (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@30) (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@30) (|PolymorphicMapType_5234_2851_11500#PolymorphicMapType_5234| Heap@@30) (|PolymorphicMapType_5234_2813_9029#PolymorphicMapType_5234| Heap@@30) (|PolymorphicMapType_5234_2813_16131#PolymorphicMapType_5234| Heap@@30) (|PolymorphicMapType_5234_9028_2814#PolymorphicMapType_5234| Heap@@30) (|PolymorphicMapType_5234_9028_53#PolymorphicMapType_5234| Heap@@30)))
)))
(assert (forall ((this@@8 T@Ref) ) (! (= (PredicateMaskField_2847 (valid this@@8)) (|valid#sm| this@@8))
 :qid |stdinbpl.320:15|
 :skolemid |27|
 :pattern ( (PredicateMaskField_2847 (valid this@@8)))
)))
(assert (forall ((o_20@@7 T@Ref) (f_17 T@Field_5307_5308) (Heap@@31 T@PolymorphicMapType_5234) ) (!  (=> (select (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@31) o_20@@7 $allocated) (select (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@31) (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@31) o_20@@7 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@31) o_20@@7 f_17))
)))
(assert (forall ((p@@2 T@Field_2813_9029) (v_1@@1 T@FrameType) (q T@Field_2813_9029) (w@@1 T@FrameType) (r T@Field_2813_9029) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5294_5294 p@@2 v_1@@1 q w@@1) (InsidePredicate_5294_5294 q w@@1 r u)) (InsidePredicate_5294_5294 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5294_5294 p@@2 v_1@@1 q w@@1) (InsidePredicate_5294_5294 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_2813_9029) (v_1@@2 T@FrameType) (q@@0 T@Field_2813_9029) (w@@2 T@FrameType) (r@@0 T@Field_9028_9029) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_5294_5294 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_5294_2847 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_5294_2847 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5294_5294 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_5294_2847 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_2813_9029) (v_1@@3 T@FrameType) (q@@1 T@Field_9028_9029) (w@@3 T@FrameType) (r@@1 T@Field_2813_9029) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_5294_2847 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_2847_5294 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_5294_5294 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5294_2847 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_2847_5294 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_2813_9029) (v_1@@4 T@FrameType) (q@@2 T@Field_9028_9029) (w@@4 T@FrameType) (r@@2 T@Field_9028_9029) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_5294_2847 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_2847_2847 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_5294_2847 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5294_2847 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_2847_2847 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_9028_9029) (v_1@@5 T@FrameType) (q@@3 T@Field_2813_9029) (w@@5 T@FrameType) (r@@3 T@Field_2813_9029) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_2847_5294 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_5294_5294 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_2847_5294 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2847_5294 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_5294_5294 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_9028_9029) (v_1@@6 T@FrameType) (q@@4 T@Field_2813_9029) (w@@6 T@FrameType) (r@@4 T@Field_9028_9029) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_2847_5294 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_5294_2847 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_2847_2847 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2847_5294 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_5294_2847 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_9028_9029) (v_1@@7 T@FrameType) (q@@5 T@Field_9028_9029) (w@@7 T@FrameType) (r@@5 T@Field_2813_9029) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_2847_2847 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_2847_5294 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_2847_5294 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2847_2847 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_2847_5294 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_9028_9029) (v_1@@8 T@FrameType) (q@@6 T@Field_9028_9029) (w@@8 T@FrameType) (r@@6 T@Field_9028_9029) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_2847_2847 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_2847_2847 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_2847_2847 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2847_2847 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_2847_2847 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@32 () T@PolymorphicMapType_5234)
(declare-fun this@@9 () T@Ref)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_5255)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_5255)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_2814 (T@Ref) T@FrameType)
(declare-fun wildcard@1 () Real)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_5255)
(declare-fun wildcard@2 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id |i#definedness|)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon4_Else_correct true))
(let ((anon4_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (not (= (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@32) this@@9 next) null))) (=> (not (= (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@32) this@@9 next) null)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_5255_2847_2848#PolymorphicMapType_5255| UnfoldingMask@1) null (valid (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@32) this@@9 next))))))))))
(let ((anon0_correct  (=> (and (and (state Heap@@32 ZeroMask) (not AssumePermUpperBound)) (and (select (|PolymorphicMapType_5234_2685_53#PolymorphicMapType_5234| Heap@@32) this@@9 $allocated) (= AssumeFunctionsAbove 0))) (=> (and (and (and (not (= this@@9 null)) (state Heap@@32 ZeroMask)) (and (> wildcard@0 NoPerm) (= Mask@0 (PolymorphicMapType_5255 (store (|PolymorphicMapType_5255_2847_2848#PolymorphicMapType_5255| ZeroMask) null (valid this@@9) (+ (select (|PolymorphicMapType_5255_2847_2848#PolymorphicMapType_5255| ZeroMask) null (valid this@@9)) wildcard@0)) (|PolymorphicMapType_5255_2813_2814#PolymorphicMapType_5255| ZeroMask) (|PolymorphicMapType_5255_2847_2814#PolymorphicMapType_5255| ZeroMask) (|PolymorphicMapType_5255_2847_53#PolymorphicMapType_5255| ZeroMask) (|PolymorphicMapType_5255_2847_24116#PolymorphicMapType_5255| ZeroMask) (|PolymorphicMapType_5255_2813_2848#PolymorphicMapType_5255| ZeroMask) (|PolymorphicMapType_5255_2813_53#PolymorphicMapType_5255| ZeroMask) (|PolymorphicMapType_5255_2813_24447#PolymorphicMapType_5255| ZeroMask))))) (and (and (state Heap@@32 Mask@0) (state Heap@@32 Mask@0)) (and (|valid#trigger_2847| Heap@@32 (valid this@@9)) (= (select (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@32) null (valid this@@9)) (CombineFrames (FrameFragment_2814 (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@32) this@@9 next)) (select (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@32) null (valid (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@32) this@@9 next)))))))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_5255_2847_2848#PolymorphicMapType_5255| Mask@0) null (valid this@@9))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_5255_2847_2848#PolymorphicMapType_5255| Mask@0) null (valid this@@9)))) (=> (and (> wildcard@1 NoPerm) (not (= this@@9 null))) (=> (and (and (and (= UnfoldingMask@0 (PolymorphicMapType_5255 (|PolymorphicMapType_5255_2847_2848#PolymorphicMapType_5255| Mask@0) (store (|PolymorphicMapType_5255_2813_2814#PolymorphicMapType_5255| Mask@0) this@@9 next (+ (select (|PolymorphicMapType_5255_2813_2814#PolymorphicMapType_5255| Mask@0) this@@9 next) wildcard@1)) (|PolymorphicMapType_5255_2847_2814#PolymorphicMapType_5255| Mask@0) (|PolymorphicMapType_5255_2847_53#PolymorphicMapType_5255| Mask@0) (|PolymorphicMapType_5255_2847_24116#PolymorphicMapType_5255| Mask@0) (|PolymorphicMapType_5255_2813_2848#PolymorphicMapType_5255| Mask@0) (|PolymorphicMapType_5255_2813_53#PolymorphicMapType_5255| Mask@0) (|PolymorphicMapType_5255_2813_24447#PolymorphicMapType_5255| Mask@0))) (state Heap@@32 UnfoldingMask@0)) (and (not (= (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@32) this@@9 next) null)) (> wildcard@2 NoPerm))) (and (and (= UnfoldingMask@1 (PolymorphicMapType_5255 (store (|PolymorphicMapType_5255_2847_2848#PolymorphicMapType_5255| UnfoldingMask@0) null (valid (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@32) this@@9 next)) (+ (select (|PolymorphicMapType_5255_2847_2848#PolymorphicMapType_5255| UnfoldingMask@0) null (valid (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@32) this@@9 next))) wildcard@2)) (|PolymorphicMapType_5255_2813_2814#PolymorphicMapType_5255| UnfoldingMask@0) (|PolymorphicMapType_5255_2847_2814#PolymorphicMapType_5255| UnfoldingMask@0) (|PolymorphicMapType_5255_2847_53#PolymorphicMapType_5255| UnfoldingMask@0) (|PolymorphicMapType_5255_2847_24116#PolymorphicMapType_5255| UnfoldingMask@0) (|PolymorphicMapType_5255_2813_2848#PolymorphicMapType_5255| UnfoldingMask@0) (|PolymorphicMapType_5255_2813_53#PolymorphicMapType_5255| UnfoldingMask@0) (|PolymorphicMapType_5255_2813_24447#PolymorphicMapType_5255| UnfoldingMask@0))) (InsidePredicate_2847_2847 (valid this@@9) (select (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@32) null (valid this@@9)) (valid (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@32) this@@9 next)) (select (|PolymorphicMapType_5234_2847_2848#PolymorphicMapType_5234| Heap@@32) null (valid (select (|PolymorphicMapType_5234_2688_2689#PolymorphicMapType_5234| Heap@@32) this@@9 next))))) (and (state Heap@@32 UnfoldingMask@1) (state Heap@@32 UnfoldingMask@1)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_2813_2814 UnfoldingMask@1 this@@9 next)) (=> (HasDirectPerm_2813_2814 UnfoldingMask@1 this@@9 next) (and (=> (= (ControlFlow 0 5) 2) anon4_Then_correct) (=> (= (ControlFlow 0 5) 4) anon4_Else_correct))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 8) 5)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
