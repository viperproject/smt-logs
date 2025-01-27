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
(declare-sort T@Field_6093_53 0)
(declare-sort T@Field_6106_6107 0)
(declare-sort T@Field_6093_16701 0)
(declare-sort T@Field_6093_16568 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6054 0)) (((PolymorphicMapType_6054 (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| (Array T@Ref T@Field_6093_53 Real)) (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| (Array T@Ref T@Field_6106_6107 Real)) (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| (Array T@Ref T@Field_6093_16568 Real)) (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| (Array T@Ref T@Field_6093_16701 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6582 0)) (((PolymorphicMapType_6582 (|PolymorphicMapType_6582_6093_53#PolymorphicMapType_6582| (Array T@Ref T@Field_6093_53 Bool)) (|PolymorphicMapType_6582_6093_6107#PolymorphicMapType_6582| (Array T@Ref T@Field_6106_6107 Bool)) (|PolymorphicMapType_6582_6093_16568#PolymorphicMapType_6582| (Array T@Ref T@Field_6093_16568 Bool)) (|PolymorphicMapType_6582_6093_17681#PolymorphicMapType_6582| (Array T@Ref T@Field_6093_16701 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6033 0)) (((PolymorphicMapType_6033 (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| (Array T@Ref T@Field_6093_53 Bool)) (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| (Array T@Ref T@Field_6106_6107 T@Ref)) (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| (Array T@Ref T@Field_6093_16701 T@PolymorphicMapType_6582)) (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| (Array T@Ref T@Field_6093_16568 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_6033 T@PolymorphicMapType_6033) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6033 T@PolymorphicMapType_6033) Bool)
(declare-fun state (T@PolymorphicMapType_6033 T@PolymorphicMapType_6054) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6054) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6582)
(declare-fun |h'| (T@PolymorphicMapType_6033 Int) Int)
(declare-fun dummyFunction_1545 (Int) Bool)
(declare-fun |h#triggerStateless| (Int) Int)
(declare-fun |foo'| (T@PolymorphicMapType_6033 Int) Int)
(declare-fun |foo#triggerStateless| (Int) Int)
(declare-fun |g'| (T@PolymorphicMapType_6033 Int) Int)
(declare-fun |g#triggerStateless| (Int) Int)
(declare-fun h_2 (T@PolymorphicMapType_6033 Int) Int)
(declare-fun foo_1 (T@PolymorphicMapType_6033 Int) Int)
(declare-fun g_2 (T@PolymorphicMapType_6033 Int) Int)
(declare-fun decreasing_1189 (Int Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6033 T@PolymorphicMapType_6033 T@PolymorphicMapType_6054) Bool)
(declare-fun IsPredicateField_6093_16659 (T@Field_6093_16568) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6093 (T@Field_6093_16568) T@Field_6093_16701)
(declare-fun HasDirectPerm_6093_16632 (T@PolymorphicMapType_6054 T@Ref T@Field_6093_16568) Bool)
(declare-fun IsWandField_6093_18208 (T@Field_6093_16568) Bool)
(declare-fun WandMaskField_6093 (T@Field_6093_16568) T@Field_6093_16701)
(declare-fun dummyHeap () T@PolymorphicMapType_6033)
(declare-fun ZeroMask () T@PolymorphicMapType_6054)
(declare-fun $allocated () T@Field_6093_53)
(declare-fun InsidePredicate_6093_6093 (T@Field_6093_16568 T@FrameType T@Field_6093_16568 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6093_21171 (T@Field_6093_16701) Bool)
(declare-fun IsWandField_6093_21187 (T@Field_6093_16701) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6093_6107 (T@Field_6106_6107) Bool)
(declare-fun IsWandField_6093_6107 (T@Field_6106_6107) Bool)
(declare-fun IsPredicateField_6093_53 (T@Field_6093_53) Bool)
(declare-fun IsWandField_6093_53 (T@Field_6093_53) Bool)
(declare-fun HasDirectPerm_6093_21542 (T@PolymorphicMapType_6054 T@Ref T@Field_6093_16701) Bool)
(declare-fun HasDirectPerm_6093_6107 (T@PolymorphicMapType_6054 T@Ref T@Field_6106_6107) Bool)
(declare-fun HasDirectPerm_6093_53 (T@PolymorphicMapType_6054 T@Ref T@Field_6093_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6054 T@PolymorphicMapType_6054 T@PolymorphicMapType_6054) Bool)
(declare-fun bounded_1214 (Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |g#trigger| (T@FrameType Int) Bool)
(declare-fun |h#frame| (T@FrameType Int) Int)
(declare-fun |foo#frame| (T@FrameType Int) Int)
(declare-fun |g#frame| (T@FrameType Int) Int)
(declare-fun |h#trigger| (T@FrameType Int) Bool)
(declare-fun |foo#trigger_1| (T@FrameType Int) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6033) (Heap1 T@PolymorphicMapType_6033) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6033) (Mask T@PolymorphicMapType_6054) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6033) (Heap1@@0 T@PolymorphicMapType_6033) (Heap2 T@PolymorphicMapType_6033) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6093_16701) ) (!  (not (select (|PolymorphicMapType_6582_6093_17681#PolymorphicMapType_6582| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6582_6093_17681#PolymorphicMapType_6582| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6093_16568) ) (!  (not (select (|PolymorphicMapType_6582_6093_16568#PolymorphicMapType_6582| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6582_6093_16568#PolymorphicMapType_6582| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6106_6107) ) (!  (not (select (|PolymorphicMapType_6582_6093_6107#PolymorphicMapType_6582| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6582_6093_6107#PolymorphicMapType_6582| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6093_53) ) (!  (not (select (|PolymorphicMapType_6582_6093_53#PolymorphicMapType_6582| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6582_6093_53#PolymorphicMapType_6582| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6033) (x Int) ) (! (dummyFunction_1545 (|h#triggerStateless| x))
 :qid |stdinbpl.224:15|
 :skolemid |25|
 :pattern ( (|h'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6033) (x@@0 Int) ) (! (dummyFunction_1545 (|foo#triggerStateless| x@@0))
 :qid |stdinbpl.335:15|
 :skolemid |31|
 :pattern ( (|foo'| Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6033) (x@@1 Int) ) (! (dummyFunction_1545 (|g#triggerStateless| x@@1))
 :qid |stdinbpl.444:15|
 :skolemid |37|
 :pattern ( (|g'| Heap@@2 x@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6033) (x@@2 Int) ) (!  (and (= (h_2 Heap@@3 x@@2) (|h'| Heap@@3 x@@2)) (dummyFunction_1545 (|h#triggerStateless| x@@2)))
 :qid |stdinbpl.220:15|
 :skolemid |24|
 :pattern ( (h_2 Heap@@3 x@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6033) (x@@3 Int) ) (!  (and (= (foo_1 Heap@@4 x@@3) (|foo'| Heap@@4 x@@3)) (dummyFunction_1545 (|foo#triggerStateless| x@@3)))
 :qid |stdinbpl.331:15|
 :skolemid |30|
 :pattern ( (foo_1 Heap@@4 x@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6033) (x@@4 Int) ) (!  (and (= (g_2 Heap@@5 x@@4) (|g'| Heap@@5 x@@4)) (dummyFunction_1545 (|g#triggerStateless| x@@4)))
 :qid |stdinbpl.440:15|
 :skolemid |36|
 :pattern ( (g_2 Heap@@5 x@@4))
)))
(assert (forall ((int1 Int) (int2 Int) ) (!  (=> (< int1 int2) (decreasing_1189 int1 int2))
 :qid |stdinbpl.189:15|
 :skolemid |22|
 :pattern ( (decreasing_1189 int1 int2))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6033) (ExhaleHeap T@PolymorphicMapType_6033) (Mask@@0 T@PolymorphicMapType_6054) (pm_f T@Field_6093_16568) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6093_16632 Mask@@0 null pm_f) (IsPredicateField_6093_16659 pm_f)) (= (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@6) null (PredicateMaskField_6093 pm_f)) (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| ExhaleHeap) null (PredicateMaskField_6093 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (IsPredicateField_6093_16659 pm_f) (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| ExhaleHeap) null (PredicateMaskField_6093 pm_f)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6033) (ExhaleHeap@@0 T@PolymorphicMapType_6033) (Mask@@1 T@PolymorphicMapType_6054) (pm_f@@0 T@Field_6093_16568) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6093_16632 Mask@@1 null pm_f@@0) (IsWandField_6093_18208 pm_f@@0)) (= (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@7) null (WandMaskField_6093 pm_f@@0)) (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| ExhaleHeap@@0) null (WandMaskField_6093 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (IsWandField_6093_18208 pm_f@@0) (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| ExhaleHeap@@0) null (WandMaskField_6093 pm_f@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6033) (ExhaleHeap@@1 T@PolymorphicMapType_6033) (Mask@@2 T@PolymorphicMapType_6054) (pm_f@@1 T@Field_6093_16568) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6093_16632 Mask@@2 null pm_f@@1) (IsPredicateField_6093_16659 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6093_53) ) (!  (=> (select (|PolymorphicMapType_6582_6093_53#PolymorphicMapType_6582| (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@8) null (PredicateMaskField_6093 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@8) o2 f_2) (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6106_6107) ) (!  (=> (select (|PolymorphicMapType_6582_6093_6107#PolymorphicMapType_6582| (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@8) null (PredicateMaskField_6093 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@8) o2@@0 f_2@@0) (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_6093_16568) ) (!  (=> (select (|PolymorphicMapType_6582_6093_16568#PolymorphicMapType_6582| (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@8) null (PredicateMaskField_6093 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@8) o2@@1 f_2@@1) (select (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_6093_16701) ) (!  (=> (select (|PolymorphicMapType_6582_6093_17681#PolymorphicMapType_6582| (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@8) null (PredicateMaskField_6093 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@8) o2@@2 f_2@@2) (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (IsPredicateField_6093_16659 pm_f@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6033) (ExhaleHeap@@2 T@PolymorphicMapType_6033) (Mask@@3 T@PolymorphicMapType_6054) (pm_f@@2 T@Field_6093_16568) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6093_16632 Mask@@3 null pm_f@@2) (IsWandField_6093_18208 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_6093_53) ) (!  (=> (select (|PolymorphicMapType_6582_6093_53#PolymorphicMapType_6582| (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@9) null (WandMaskField_6093 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@9) o2@@3 f_2@@3) (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6106_6107) ) (!  (=> (select (|PolymorphicMapType_6582_6093_6107#PolymorphicMapType_6582| (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@9) null (WandMaskField_6093 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@9) o2@@4 f_2@@4) (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6093_16568) ) (!  (=> (select (|PolymorphicMapType_6582_6093_16568#PolymorphicMapType_6582| (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@9) null (WandMaskField_6093 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@9) o2@@5 f_2@@5) (select (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_6093_16701) ) (!  (=> (select (|PolymorphicMapType_6582_6093_17681#PolymorphicMapType_6582| (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@9) null (WandMaskField_6093 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@9) o2@@6 f_2@@6) (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (IsWandField_6093_18208 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6033) (ExhaleHeap@@3 T@PolymorphicMapType_6033) (Mask@@4 T@PolymorphicMapType_6054) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@10) o_1 $allocated) (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_6093_16568) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6093_6093 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6093_6093 p v_1 p w))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6033) (ExhaleHeap@@4 T@PolymorphicMapType_6033) (Mask@@5 T@PolymorphicMapType_6054) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@11 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6054) (o_2@@3 T@Ref) (f_4@@3 T@Field_6093_16701) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6093_21171 f_4@@3))) (not (IsWandField_6093_21187 f_4@@3))) (<= (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6054) (o_2@@4 T@Ref) (f_4@@4 T@Field_6093_16568) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_6093_16659 f_4@@4))) (not (IsWandField_6093_18208 f_4@@4))) (<= (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6054) (o_2@@5 T@Ref) (f_4@@5 T@Field_6106_6107) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6093_6107 f_4@@5))) (not (IsWandField_6093_6107 f_4@@5))) (<= (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6054) (o_2@@6 T@Ref) (f_4@@6 T@Field_6093_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_6093_53 f_4@@6))) (not (IsWandField_6093_53 f_4@@6))) (<= (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6054) (o_2@@7 T@Ref) (f_4@@7 T@Field_6093_16701) ) (! (= (HasDirectPerm_6093_21542 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6093_21542 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6054) (o_2@@8 T@Ref) (f_4@@8 T@Field_6093_16568) ) (! (= (HasDirectPerm_6093_16632 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6093_16632 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6054) (o_2@@9 T@Ref) (f_4@@9 T@Field_6106_6107) ) (! (= (HasDirectPerm_6093_6107 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6093_6107 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6054) (o_2@@10 T@Ref) (f_4@@10 T@Field_6093_53) ) (! (= (HasDirectPerm_6093_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6093_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6033) (ExhaleHeap@@5 T@PolymorphicMapType_6033) (Mask@@14 T@PolymorphicMapType_6054) (o_1@@0 T@Ref) (f_2@@7 T@Field_6093_16701) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_6093_21542 Mask@@14 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@12) o_1@@0 f_2@@7) (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6033) (ExhaleHeap@@6 T@PolymorphicMapType_6033) (Mask@@15 T@PolymorphicMapType_6054) (o_1@@1 T@Ref) (f_2@@8 T@Field_6093_16568) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_6093_16632 Mask@@15 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@13) o_1@@1 f_2@@8) (select (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6033) (ExhaleHeap@@7 T@PolymorphicMapType_6033) (Mask@@16 T@PolymorphicMapType_6054) (o_1@@2 T@Ref) (f_2@@9 T@Field_6106_6107) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_6093_6107 Mask@@16 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@14) o_1@@2 f_2@@9) (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6033) (ExhaleHeap@@8 T@PolymorphicMapType_6033) (Mask@@17 T@PolymorphicMapType_6054) (o_1@@3 T@Ref) (f_2@@10 T@Field_6093_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_6093_53 Mask@@17 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@15) o_1@@3 f_2@@10) (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6093_16701) ) (! (= (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6093_16568) ) (! (= (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_6106_6107) ) (! (= (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6093_53) ) (! (= (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6054) (SummandMask1 T@PolymorphicMapType_6054) (SummandMask2 T@PolymorphicMapType_6054) (o_2@@15 T@Ref) (f_4@@15 T@Field_6093_16701) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6054) (SummandMask1@@0 T@PolymorphicMapType_6054) (SummandMask2@@0 T@PolymorphicMapType_6054) (o_2@@16 T@Ref) (f_4@@16 T@Field_6093_16568) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6054) (SummandMask1@@1 T@PolymorphicMapType_6054) (SummandMask2@@1 T@PolymorphicMapType_6054) (o_2@@17 T@Ref) (f_4@@17 T@Field_6106_6107) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6054) (SummandMask1@@2 T@PolymorphicMapType_6054) (SummandMask2@@2 T@PolymorphicMapType_6054) (o_2@@18 T@Ref) (f_4@@18 T@Field_6093_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((int1@@0 Int) ) (!  (=> (>= int1@@0 0) (bounded_1214 int1@@0))
 :qid |stdinbpl.195:15|
 :skolemid |23|
 :pattern ( (bounded_1214 int1@@0))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6033) (Mask@@18 T@PolymorphicMapType_6054) (x@@5 Int) ) (!  (=> (and (state Heap@@16 Mask@@18) (or (< AssumeFunctionsAbove 0) (|g#trigger| EmptyFrame x@@5))) (=> (>= x@@5 0) (= (|g'| Heap@@16 x@@5) (- (|g'| Heap@@16 (+ x@@5 1)) 1))))
 :qid |stdinbpl.467:15|
 :skolemid |41|
 :pattern ( (state Heap@@16 Mask@@18) (|g'| Heap@@16 x@@5))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6033) (Mask@@19 T@PolymorphicMapType_6054) (x@@6 Int) ) (!  (=> (state Heap@@17 Mask@@19) (= (|h'| Heap@@17 x@@6) (|h#frame| EmptyFrame x@@6)))
 :qid |stdinbpl.237:15|
 :skolemid |27|
 :pattern ( (state Heap@@17 Mask@@19) (|h'| Heap@@17 x@@6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6033) (Mask@@20 T@PolymorphicMapType_6054) (x@@7 Int) ) (!  (=> (state Heap@@18 Mask@@20) (= (|foo'| Heap@@18 x@@7) (|foo#frame| EmptyFrame x@@7)))
 :qid |stdinbpl.348:15|
 :skolemid |33|
 :pattern ( (state Heap@@18 Mask@@20) (|foo'| Heap@@18 x@@7))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6033) (Mask@@21 T@PolymorphicMapType_6054) (x@@8 Int) ) (!  (=> (state Heap@@19 Mask@@21) (= (|g'| Heap@@19 x@@8) (|g#frame| EmptyFrame x@@8)))
 :qid |stdinbpl.457:15|
 :skolemid |39|
 :pattern ( (state Heap@@19 Mask@@21) (|g'| Heap@@19 x@@8))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6033) (Mask@@22 T@PolymorphicMapType_6054) (x@@9 Int) ) (!  (=> (and (state Heap@@20 Mask@@22) (or (< AssumeFunctionsAbove 0) (|g#trigger| EmptyFrame x@@9))) (=> (>= x@@9 0) (= (|g'| Heap@@20 x@@9) x@@9)))
 :qid |stdinbpl.463:15|
 :skolemid |40|
 :pattern ( (state Heap@@20 Mask@@22) (|g'| Heap@@20 x@@9))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6033) (Mask@@23 T@PolymorphicMapType_6054) (x@@10 Int) ) (!  (=> (and (state Heap@@21 Mask@@23) (or (< AssumeFunctionsAbove 1) (|h#trigger| EmptyFrame x@@10))) (=> (>= x@@10 0) (= (|h'| Heap@@21 x@@10) x@@10)))
 :qid |stdinbpl.243:15|
 :skolemid |28|
 :pattern ( (state Heap@@21 Mask@@23) (|h'| Heap@@21 x@@10))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6033) (Mask@@24 T@PolymorphicMapType_6054) (x@@11 Int) ) (!  (=> (and (state Heap@@22 Mask@@24) (or (< AssumeFunctionsAbove 2) (|foo#trigger_1| EmptyFrame x@@11))) (=> (>= x@@11 0) (= (|foo'| Heap@@22 x@@11) x@@11)))
 :qid |stdinbpl.354:15|
 :skolemid |34|
 :pattern ( (state Heap@@22 Mask@@24) (|foo'| Heap@@22 x@@11))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6033) (o T@Ref) (f_3 T@Field_6093_16568) (v T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_6033 (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@23) (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@23) (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@23) (store (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@23) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6033 (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@23) (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@23) (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@23) (store (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@23) o f_3 v)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6033) (o@@0 T@Ref) (f_3@@0 T@Field_6093_16701) (v@@0 T@PolymorphicMapType_6582) ) (! (succHeap Heap@@24 (PolymorphicMapType_6033 (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@24) (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@24) (store (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@24) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6033 (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@24) (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@24) (store (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@24) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6033) (o@@1 T@Ref) (f_3@@1 T@Field_6106_6107) (v@@1 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_6033 (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@25) (store (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@25) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@25) (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6033 (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@25) (store (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@25) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@25) (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6033) (o@@2 T@Ref) (f_3@@2 T@Field_6093_53) (v@@2 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_6033 (store (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@26) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@26) (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@26) (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6033 (store (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@26) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@26) (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@26) (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6033) (Mask@@25 T@PolymorphicMapType_6054) (x@@12 Int) ) (!  (=> (and (state Heap@@27 Mask@@25) (or (< AssumeFunctionsAbove 1) (|h#trigger| EmptyFrame x@@12))) (=> (>= x@@12 0) (=> (> (|h'| Heap@@27 x@@12) 0) (= (|h'| Heap@@27 x@@12) (+ (|h'| Heap@@27 (- (|h'| Heap@@27 x@@12) 1)) 1)))))
 :qid |stdinbpl.247:15|
 :skolemid |29|
 :pattern ( (state Heap@@27 Mask@@25) (|h'| Heap@@27 x@@12))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_6106_6107) (Heap@@28 T@PolymorphicMapType_6033) ) (!  (=> (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@28) o@@3 $allocated) (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@28) (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@28) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@28) o@@3 f))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6033) (Mask@@26 T@PolymorphicMapType_6054) (x@@13 Int) ) (!  (=> (and (state Heap@@29 Mask@@26) (< AssumeFunctionsAbove 0)) (=> (>= x@@13 0) (= (g_2 Heap@@29 x@@13) (ite (= x@@13 0) 0 (+ 1 (|g'| Heap@@29 (- x@@13 1)))))))
 :qid |stdinbpl.450:15|
 :skolemid |38|
 :pattern ( (state Heap@@29 Mask@@26) (g_2 Heap@@29 x@@13))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6033) (Mask@@27 T@PolymorphicMapType_6054) (x@@14 Int) ) (!  (=> (and (state Heap@@30 Mask@@27) (< AssumeFunctionsAbove 1)) (=> (>= x@@14 0) (= (h_2 Heap@@30 x@@14) (ite (= x@@14 0) 0 (+ 1 (|h'| Heap@@30 (- x@@14 1)))))))
 :qid |stdinbpl.230:15|
 :skolemid |26|
 :pattern ( (state Heap@@30 Mask@@27) (h_2 Heap@@30 x@@14))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6033) (Mask@@28 T@PolymorphicMapType_6054) (x@@15 Int) ) (!  (=> (and (state Heap@@31 Mask@@28) (< AssumeFunctionsAbove 2)) (=> (>= x@@15 0) (= (foo_1 Heap@@31 x@@15) (ite (= x@@15 0) 0 (+ 1 (|foo'| Heap@@31 (- x@@15 1)))))))
 :qid |stdinbpl.341:15|
 :skolemid |32|
 :pattern ( (state Heap@@31 Mask@@28) (foo_1 Heap@@31 x@@15))
)))
(assert (forall ((p@@1 T@Field_6093_16568) (v_1@@0 T@FrameType) (q T@Field_6093_16568) (w@@0 T@FrameType) (r T@Field_6093_16568) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6093_6093 p@@1 v_1@@0 q w@@0) (InsidePredicate_6093_6093 q w@@0 r u)) (InsidePredicate_6093_6093 p@@1 v_1@@0 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6093_6093 p@@1 v_1@@0 q w@@0) (InsidePredicate_6093_6093 q w@@0 r u))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6033) (Mask@@29 T@PolymorphicMapType_6054) (x@@16 Int) ) (!  (=> (and (state Heap@@32 Mask@@29) (or (< AssumeFunctionsAbove 2) (|foo#trigger_1| EmptyFrame x@@16))) (=> (>= x@@16 0) (= (|foo'| Heap@@32 x@@16) (|foo'| Heap@@32 (|foo'| Heap@@32 x@@16)))))
 :qid |stdinbpl.358:15|
 :skolemid |35|
 :pattern ( (state Heap@@32 Mask@@29) (|foo'| Heap@@32 x@@16))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@@17 () Int)
(declare-fun Result@0 () Int)
(declare-fun Heap@@33 () T@PolymorphicMapType_6033)
(set-info :boogie-vc-id |g#definedness|)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon11_Else_correct  (=> (and (|g#trigger| EmptyFrame (+ x@@17 1)) (= (ControlFlow 0 6) (- 0 5))) (= Result@0 (- (g_2 Heap@@33 (+ x@@17 1)) 1)))))
(let ((anon11_Then_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (>= (+ x@@17 1) 0))))
(let ((anon5_correct  (=> (= Result@0 (ite (= x@@17 0) 0 (+ 1 (g_2 Heap@@33 (- x@@17 1))))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (= Result@0 x@@17)) (=> (= Result@0 x@@17) (and (=> (= (ControlFlow 0 7) 4) anon11_Then_correct) (=> (= (ControlFlow 0 7) 6) anon11_Else_correct)))))))
(let ((anon10_Else_correct  (=> (and (|g#trigger| EmptyFrame (- x@@17 1)) (= (ControlFlow 0 10) 7)) anon5_correct)))
(let ((anon9_Then_correct  (=> (and (= x@@17 0) (= (ControlFlow 0 9) 7)) anon5_correct)))
(let ((anon10_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (>= (- x@@17 1) 0))))
(let ((anon9_Else_correct  (=> (not (= x@@17 0)) (and (=> (= (ControlFlow 0 11) 2) anon10_Then_correct) (=> (= (ControlFlow 0 11) 10) anon10_Else_correct)))))
(let ((anon0_correct  (=> (state Heap@@33 ZeroMask) (=> (and (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 0)) (and (>= x@@17 0) (state Heap@@33 ZeroMask))) (and (=> (= (ControlFlow 0 12) 9) anon9_Then_correct) (=> (= (ControlFlow 0 12) 11) anon9_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 13) 12) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
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
(declare-sort T@Field_6093_53 0)
(declare-sort T@Field_6106_6107 0)
(declare-sort T@Field_6093_16701 0)
(declare-sort T@Field_6093_16568 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6054 0)) (((PolymorphicMapType_6054 (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| (Array T@Ref T@Field_6093_53 Real)) (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| (Array T@Ref T@Field_6106_6107 Real)) (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| (Array T@Ref T@Field_6093_16568 Real)) (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| (Array T@Ref T@Field_6093_16701 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6582 0)) (((PolymorphicMapType_6582 (|PolymorphicMapType_6582_6093_53#PolymorphicMapType_6582| (Array T@Ref T@Field_6093_53 Bool)) (|PolymorphicMapType_6582_6093_6107#PolymorphicMapType_6582| (Array T@Ref T@Field_6106_6107 Bool)) (|PolymorphicMapType_6582_6093_16568#PolymorphicMapType_6582| (Array T@Ref T@Field_6093_16568 Bool)) (|PolymorphicMapType_6582_6093_17681#PolymorphicMapType_6582| (Array T@Ref T@Field_6093_16701 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6033 0)) (((PolymorphicMapType_6033 (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| (Array T@Ref T@Field_6093_53 Bool)) (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| (Array T@Ref T@Field_6106_6107 T@Ref)) (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| (Array T@Ref T@Field_6093_16701 T@PolymorphicMapType_6582)) (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| (Array T@Ref T@Field_6093_16568 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_6033 T@PolymorphicMapType_6033) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6033 T@PolymorphicMapType_6033) Bool)
(declare-fun state (T@PolymorphicMapType_6033 T@PolymorphicMapType_6054) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6054) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6582)
(declare-fun |h'| (T@PolymorphicMapType_6033 Int) Int)
(declare-fun dummyFunction_1545 (Int) Bool)
(declare-fun |h#triggerStateless| (Int) Int)
(declare-fun |foo'| (T@PolymorphicMapType_6033 Int) Int)
(declare-fun |foo#triggerStateless| (Int) Int)
(declare-fun |g'| (T@PolymorphicMapType_6033 Int) Int)
(declare-fun |g#triggerStateless| (Int) Int)
(declare-fun h_2 (T@PolymorphicMapType_6033 Int) Int)
(declare-fun foo_1 (T@PolymorphicMapType_6033 Int) Int)
(declare-fun g_2 (T@PolymorphicMapType_6033 Int) Int)
(declare-fun decreasing_1189 (Int Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6033 T@PolymorphicMapType_6033 T@PolymorphicMapType_6054) Bool)
(declare-fun IsPredicateField_6093_16659 (T@Field_6093_16568) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6093 (T@Field_6093_16568) T@Field_6093_16701)
(declare-fun HasDirectPerm_6093_16632 (T@PolymorphicMapType_6054 T@Ref T@Field_6093_16568) Bool)
(declare-fun IsWandField_6093_18208 (T@Field_6093_16568) Bool)
(declare-fun WandMaskField_6093 (T@Field_6093_16568) T@Field_6093_16701)
(declare-fun dummyHeap () T@PolymorphicMapType_6033)
(declare-fun ZeroMask () T@PolymorphicMapType_6054)
(declare-fun $allocated () T@Field_6093_53)
(declare-fun InsidePredicate_6093_6093 (T@Field_6093_16568 T@FrameType T@Field_6093_16568 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6093_21171 (T@Field_6093_16701) Bool)
(declare-fun IsWandField_6093_21187 (T@Field_6093_16701) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6093_6107 (T@Field_6106_6107) Bool)
(declare-fun IsWandField_6093_6107 (T@Field_6106_6107) Bool)
(declare-fun IsPredicateField_6093_53 (T@Field_6093_53) Bool)
(declare-fun IsWandField_6093_53 (T@Field_6093_53) Bool)
(declare-fun HasDirectPerm_6093_21542 (T@PolymorphicMapType_6054 T@Ref T@Field_6093_16701) Bool)
(declare-fun HasDirectPerm_6093_6107 (T@PolymorphicMapType_6054 T@Ref T@Field_6106_6107) Bool)
(declare-fun HasDirectPerm_6093_53 (T@PolymorphicMapType_6054 T@Ref T@Field_6093_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6054 T@PolymorphicMapType_6054 T@PolymorphicMapType_6054) Bool)
(declare-fun bounded_1214 (Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |g#trigger| (T@FrameType Int) Bool)
(declare-fun |h#frame| (T@FrameType Int) Int)
(declare-fun |foo#frame| (T@FrameType Int) Int)
(declare-fun |g#frame| (T@FrameType Int) Int)
(declare-fun |h#trigger| (T@FrameType Int) Bool)
(declare-fun |foo#trigger_1| (T@FrameType Int) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6033) (Heap1 T@PolymorphicMapType_6033) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6033) (Mask T@PolymorphicMapType_6054) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6033) (Heap1@@0 T@PolymorphicMapType_6033) (Heap2 T@PolymorphicMapType_6033) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6093_16701) ) (!  (not (select (|PolymorphicMapType_6582_6093_17681#PolymorphicMapType_6582| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6582_6093_17681#PolymorphicMapType_6582| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6093_16568) ) (!  (not (select (|PolymorphicMapType_6582_6093_16568#PolymorphicMapType_6582| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6582_6093_16568#PolymorphicMapType_6582| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6106_6107) ) (!  (not (select (|PolymorphicMapType_6582_6093_6107#PolymorphicMapType_6582| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6582_6093_6107#PolymorphicMapType_6582| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6093_53) ) (!  (not (select (|PolymorphicMapType_6582_6093_53#PolymorphicMapType_6582| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6582_6093_53#PolymorphicMapType_6582| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6033) (x Int) ) (! (dummyFunction_1545 (|h#triggerStateless| x))
 :qid |stdinbpl.224:15|
 :skolemid |25|
 :pattern ( (|h'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6033) (x@@0 Int) ) (! (dummyFunction_1545 (|foo#triggerStateless| x@@0))
 :qid |stdinbpl.335:15|
 :skolemid |31|
 :pattern ( (|foo'| Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6033) (x@@1 Int) ) (! (dummyFunction_1545 (|g#triggerStateless| x@@1))
 :qid |stdinbpl.444:15|
 :skolemid |37|
 :pattern ( (|g'| Heap@@2 x@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6033) (x@@2 Int) ) (!  (and (= (h_2 Heap@@3 x@@2) (|h'| Heap@@3 x@@2)) (dummyFunction_1545 (|h#triggerStateless| x@@2)))
 :qid |stdinbpl.220:15|
 :skolemid |24|
 :pattern ( (h_2 Heap@@3 x@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6033) (x@@3 Int) ) (!  (and (= (foo_1 Heap@@4 x@@3) (|foo'| Heap@@4 x@@3)) (dummyFunction_1545 (|foo#triggerStateless| x@@3)))
 :qid |stdinbpl.331:15|
 :skolemid |30|
 :pattern ( (foo_1 Heap@@4 x@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6033) (x@@4 Int) ) (!  (and (= (g_2 Heap@@5 x@@4) (|g'| Heap@@5 x@@4)) (dummyFunction_1545 (|g#triggerStateless| x@@4)))
 :qid |stdinbpl.440:15|
 :skolemid |36|
 :pattern ( (g_2 Heap@@5 x@@4))
)))
(assert (forall ((int1 Int) (int2 Int) ) (!  (=> (< int1 int2) (decreasing_1189 int1 int2))
 :qid |stdinbpl.189:15|
 :skolemid |22|
 :pattern ( (decreasing_1189 int1 int2))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6033) (ExhaleHeap T@PolymorphicMapType_6033) (Mask@@0 T@PolymorphicMapType_6054) (pm_f T@Field_6093_16568) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6093_16632 Mask@@0 null pm_f) (IsPredicateField_6093_16659 pm_f)) (= (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@6) null (PredicateMaskField_6093 pm_f)) (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| ExhaleHeap) null (PredicateMaskField_6093 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (IsPredicateField_6093_16659 pm_f) (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| ExhaleHeap) null (PredicateMaskField_6093 pm_f)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6033) (ExhaleHeap@@0 T@PolymorphicMapType_6033) (Mask@@1 T@PolymorphicMapType_6054) (pm_f@@0 T@Field_6093_16568) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6093_16632 Mask@@1 null pm_f@@0) (IsWandField_6093_18208 pm_f@@0)) (= (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@7) null (WandMaskField_6093 pm_f@@0)) (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| ExhaleHeap@@0) null (WandMaskField_6093 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (IsWandField_6093_18208 pm_f@@0) (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| ExhaleHeap@@0) null (WandMaskField_6093 pm_f@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6033) (ExhaleHeap@@1 T@PolymorphicMapType_6033) (Mask@@2 T@PolymorphicMapType_6054) (pm_f@@1 T@Field_6093_16568) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6093_16632 Mask@@2 null pm_f@@1) (IsPredicateField_6093_16659 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6093_53) ) (!  (=> (select (|PolymorphicMapType_6582_6093_53#PolymorphicMapType_6582| (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@8) null (PredicateMaskField_6093 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@8) o2 f_2) (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6106_6107) ) (!  (=> (select (|PolymorphicMapType_6582_6093_6107#PolymorphicMapType_6582| (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@8) null (PredicateMaskField_6093 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@8) o2@@0 f_2@@0) (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_6093_16568) ) (!  (=> (select (|PolymorphicMapType_6582_6093_16568#PolymorphicMapType_6582| (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@8) null (PredicateMaskField_6093 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@8) o2@@1 f_2@@1) (select (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_6093_16701) ) (!  (=> (select (|PolymorphicMapType_6582_6093_17681#PolymorphicMapType_6582| (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@8) null (PredicateMaskField_6093 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@8) o2@@2 f_2@@2) (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (IsPredicateField_6093_16659 pm_f@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6033) (ExhaleHeap@@2 T@PolymorphicMapType_6033) (Mask@@3 T@PolymorphicMapType_6054) (pm_f@@2 T@Field_6093_16568) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6093_16632 Mask@@3 null pm_f@@2) (IsWandField_6093_18208 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_6093_53) ) (!  (=> (select (|PolymorphicMapType_6582_6093_53#PolymorphicMapType_6582| (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@9) null (WandMaskField_6093 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@9) o2@@3 f_2@@3) (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6106_6107) ) (!  (=> (select (|PolymorphicMapType_6582_6093_6107#PolymorphicMapType_6582| (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@9) null (WandMaskField_6093 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@9) o2@@4 f_2@@4) (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6093_16568) ) (!  (=> (select (|PolymorphicMapType_6582_6093_16568#PolymorphicMapType_6582| (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@9) null (WandMaskField_6093 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@9) o2@@5 f_2@@5) (select (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_6093_16701) ) (!  (=> (select (|PolymorphicMapType_6582_6093_17681#PolymorphicMapType_6582| (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@9) null (WandMaskField_6093 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@9) o2@@6 f_2@@6) (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (IsWandField_6093_18208 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6033) (ExhaleHeap@@3 T@PolymorphicMapType_6033) (Mask@@4 T@PolymorphicMapType_6054) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@10) o_1 $allocated) (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_6093_16568) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6093_6093 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6093_6093 p v_1 p w))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6033) (ExhaleHeap@@4 T@PolymorphicMapType_6033) (Mask@@5 T@PolymorphicMapType_6054) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@11 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6054) (o_2@@3 T@Ref) (f_4@@3 T@Field_6093_16701) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6093_21171 f_4@@3))) (not (IsWandField_6093_21187 f_4@@3))) (<= (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6054) (o_2@@4 T@Ref) (f_4@@4 T@Field_6093_16568) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_6093_16659 f_4@@4))) (not (IsWandField_6093_18208 f_4@@4))) (<= (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6054) (o_2@@5 T@Ref) (f_4@@5 T@Field_6106_6107) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6093_6107 f_4@@5))) (not (IsWandField_6093_6107 f_4@@5))) (<= (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6054) (o_2@@6 T@Ref) (f_4@@6 T@Field_6093_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_6093_53 f_4@@6))) (not (IsWandField_6093_53 f_4@@6))) (<= (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6054) (o_2@@7 T@Ref) (f_4@@7 T@Field_6093_16701) ) (! (= (HasDirectPerm_6093_21542 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6093_21542 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6054) (o_2@@8 T@Ref) (f_4@@8 T@Field_6093_16568) ) (! (= (HasDirectPerm_6093_16632 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6093_16632 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6054) (o_2@@9 T@Ref) (f_4@@9 T@Field_6106_6107) ) (! (= (HasDirectPerm_6093_6107 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6093_6107 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6054) (o_2@@10 T@Ref) (f_4@@10 T@Field_6093_53) ) (! (= (HasDirectPerm_6093_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6093_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6033) (ExhaleHeap@@5 T@PolymorphicMapType_6033) (Mask@@14 T@PolymorphicMapType_6054) (o_1@@0 T@Ref) (f_2@@7 T@Field_6093_16701) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_6093_21542 Mask@@14 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@12) o_1@@0 f_2@@7) (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6033) (ExhaleHeap@@6 T@PolymorphicMapType_6033) (Mask@@15 T@PolymorphicMapType_6054) (o_1@@1 T@Ref) (f_2@@8 T@Field_6093_16568) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_6093_16632 Mask@@15 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@13) o_1@@1 f_2@@8) (select (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6033) (ExhaleHeap@@7 T@PolymorphicMapType_6033) (Mask@@16 T@PolymorphicMapType_6054) (o_1@@2 T@Ref) (f_2@@9 T@Field_6106_6107) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_6093_6107 Mask@@16 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@14) o_1@@2 f_2@@9) (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6033) (ExhaleHeap@@8 T@PolymorphicMapType_6033) (Mask@@17 T@PolymorphicMapType_6054) (o_1@@3 T@Ref) (f_2@@10 T@Field_6093_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_6093_53 Mask@@17 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@15) o_1@@3 f_2@@10) (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6093_16701) ) (! (= (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6093_16568) ) (! (= (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_6106_6107) ) (! (= (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6093_53) ) (! (= (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6054) (SummandMask1 T@PolymorphicMapType_6054) (SummandMask2 T@PolymorphicMapType_6054) (o_2@@15 T@Ref) (f_4@@15 T@Field_6093_16701) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6054_6093_20262#PolymorphicMapType_6054| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6054) (SummandMask1@@0 T@PolymorphicMapType_6054) (SummandMask2@@0 T@PolymorphicMapType_6054) (o_2@@16 T@Ref) (f_4@@16 T@Field_6093_16568) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6054_6093_16568#PolymorphicMapType_6054| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6054) (SummandMask1@@1 T@PolymorphicMapType_6054) (SummandMask2@@1 T@PolymorphicMapType_6054) (o_2@@17 T@Ref) (f_4@@17 T@Field_6106_6107) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6054_6093_6107#PolymorphicMapType_6054| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6054) (SummandMask1@@2 T@PolymorphicMapType_6054) (SummandMask2@@2 T@PolymorphicMapType_6054) (o_2@@18 T@Ref) (f_4@@18 T@Field_6093_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6054_6093_53#PolymorphicMapType_6054| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((int1@@0 Int) ) (!  (=> (>= int1@@0 0) (bounded_1214 int1@@0))
 :qid |stdinbpl.195:15|
 :skolemid |23|
 :pattern ( (bounded_1214 int1@@0))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6033) (Mask@@18 T@PolymorphicMapType_6054) (x@@5 Int) ) (!  (=> (and (state Heap@@16 Mask@@18) (or (< AssumeFunctionsAbove 0) (|g#trigger| EmptyFrame x@@5))) (=> (>= x@@5 0) (= (|g'| Heap@@16 x@@5) (- (|g'| Heap@@16 (+ x@@5 1)) 1))))
 :qid |stdinbpl.467:15|
 :skolemid |41|
 :pattern ( (state Heap@@16 Mask@@18) (|g'| Heap@@16 x@@5))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6033) (Mask@@19 T@PolymorphicMapType_6054) (x@@6 Int) ) (!  (=> (state Heap@@17 Mask@@19) (= (|h'| Heap@@17 x@@6) (|h#frame| EmptyFrame x@@6)))
 :qid |stdinbpl.237:15|
 :skolemid |27|
 :pattern ( (state Heap@@17 Mask@@19) (|h'| Heap@@17 x@@6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6033) (Mask@@20 T@PolymorphicMapType_6054) (x@@7 Int) ) (!  (=> (state Heap@@18 Mask@@20) (= (|foo'| Heap@@18 x@@7) (|foo#frame| EmptyFrame x@@7)))
 :qid |stdinbpl.348:15|
 :skolemid |33|
 :pattern ( (state Heap@@18 Mask@@20) (|foo'| Heap@@18 x@@7))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6033) (Mask@@21 T@PolymorphicMapType_6054) (x@@8 Int) ) (!  (=> (state Heap@@19 Mask@@21) (= (|g'| Heap@@19 x@@8) (|g#frame| EmptyFrame x@@8)))
 :qid |stdinbpl.457:15|
 :skolemid |39|
 :pattern ( (state Heap@@19 Mask@@21) (|g'| Heap@@19 x@@8))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6033) (Mask@@22 T@PolymorphicMapType_6054) (x@@9 Int) ) (!  (=> (and (state Heap@@20 Mask@@22) (or (< AssumeFunctionsAbove 0) (|g#trigger| EmptyFrame x@@9))) (=> (>= x@@9 0) (= (|g'| Heap@@20 x@@9) x@@9)))
 :qid |stdinbpl.463:15|
 :skolemid |40|
 :pattern ( (state Heap@@20 Mask@@22) (|g'| Heap@@20 x@@9))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6033) (Mask@@23 T@PolymorphicMapType_6054) (x@@10 Int) ) (!  (=> (and (state Heap@@21 Mask@@23) (or (< AssumeFunctionsAbove 1) (|h#trigger| EmptyFrame x@@10))) (=> (>= x@@10 0) (= (|h'| Heap@@21 x@@10) x@@10)))
 :qid |stdinbpl.243:15|
 :skolemid |28|
 :pattern ( (state Heap@@21 Mask@@23) (|h'| Heap@@21 x@@10))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6033) (Mask@@24 T@PolymorphicMapType_6054) (x@@11 Int) ) (!  (=> (and (state Heap@@22 Mask@@24) (or (< AssumeFunctionsAbove 2) (|foo#trigger_1| EmptyFrame x@@11))) (=> (>= x@@11 0) (= (|foo'| Heap@@22 x@@11) x@@11)))
 :qid |stdinbpl.354:15|
 :skolemid |34|
 :pattern ( (state Heap@@22 Mask@@24) (|foo'| Heap@@22 x@@11))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6033) (o T@Ref) (f_3 T@Field_6093_16568) (v T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_6033 (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@23) (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@23) (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@23) (store (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@23) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6033 (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@23) (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@23) (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@23) (store (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@23) o f_3 v)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6033) (o@@0 T@Ref) (f_3@@0 T@Field_6093_16701) (v@@0 T@PolymorphicMapType_6582) ) (! (succHeap Heap@@24 (PolymorphicMapType_6033 (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@24) (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@24) (store (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@24) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6033 (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@24) (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@24) (store (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@24) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6033) (o@@1 T@Ref) (f_3@@1 T@Field_6106_6107) (v@@1 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_6033 (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@25) (store (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@25) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@25) (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6033 (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@25) (store (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@25) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@25) (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6033) (o@@2 T@Ref) (f_3@@2 T@Field_6093_53) (v@@2 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_6033 (store (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@26) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@26) (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@26) (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6033 (store (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@26) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@26) (|PolymorphicMapType_6033_6093_16745#PolymorphicMapType_6033| Heap@@26) (|PolymorphicMapType_6033_6093_16568#PolymorphicMapType_6033| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6033) (Mask@@25 T@PolymorphicMapType_6054) (x@@12 Int) ) (!  (=> (and (state Heap@@27 Mask@@25) (or (< AssumeFunctionsAbove 1) (|h#trigger| EmptyFrame x@@12))) (=> (>= x@@12 0) (=> (> (|h'| Heap@@27 x@@12) 0) (= (|h'| Heap@@27 x@@12) (+ (|h'| Heap@@27 (- (|h'| Heap@@27 x@@12) 1)) 1)))))
 :qid |stdinbpl.247:15|
 :skolemid |29|
 :pattern ( (state Heap@@27 Mask@@25) (|h'| Heap@@27 x@@12))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_6106_6107) (Heap@@28 T@PolymorphicMapType_6033) ) (!  (=> (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@28) o@@3 $allocated) (select (|PolymorphicMapType_6033_3287_53#PolymorphicMapType_6033| Heap@@28) (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@28) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6033_3290_3291#PolymorphicMapType_6033| Heap@@28) o@@3 f))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6033) (Mask@@26 T@PolymorphicMapType_6054) (x@@13 Int) ) (!  (=> (and (state Heap@@29 Mask@@26) (< AssumeFunctionsAbove 0)) (=> (>= x@@13 0) (= (g_2 Heap@@29 x@@13) (ite (= x@@13 0) 0 (+ 1 (|g'| Heap@@29 (- x@@13 1)))))))
 :qid |stdinbpl.450:15|
 :skolemid |38|
 :pattern ( (state Heap@@29 Mask@@26) (g_2 Heap@@29 x@@13))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6033) (Mask@@27 T@PolymorphicMapType_6054) (x@@14 Int) ) (!  (=> (and (state Heap@@30 Mask@@27) (< AssumeFunctionsAbove 1)) (=> (>= x@@14 0) (= (h_2 Heap@@30 x@@14) (ite (= x@@14 0) 0 (+ 1 (|h'| Heap@@30 (- x@@14 1)))))))
 :qid |stdinbpl.230:15|
 :skolemid |26|
 :pattern ( (state Heap@@30 Mask@@27) (h_2 Heap@@30 x@@14))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6033) (Mask@@28 T@PolymorphicMapType_6054) (x@@15 Int) ) (!  (=> (and (state Heap@@31 Mask@@28) (< AssumeFunctionsAbove 2)) (=> (>= x@@15 0) (= (foo_1 Heap@@31 x@@15) (ite (= x@@15 0) 0 (+ 1 (|foo'| Heap@@31 (- x@@15 1)))))))
 :qid |stdinbpl.341:15|
 :skolemid |32|
 :pattern ( (state Heap@@31 Mask@@28) (foo_1 Heap@@31 x@@15))
)))
(assert (forall ((p@@1 T@Field_6093_16568) (v_1@@0 T@FrameType) (q T@Field_6093_16568) (w@@0 T@FrameType) (r T@Field_6093_16568) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6093_6093 p@@1 v_1@@0 q w@@0) (InsidePredicate_6093_6093 q w@@0 r u)) (InsidePredicate_6093_6093 p@@1 v_1@@0 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6093_6093 p@@1 v_1@@0 q w@@0) (InsidePredicate_6093_6093 q w@@0 r u))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6033) (Mask@@29 T@PolymorphicMapType_6054) (x@@16 Int) ) (!  (=> (and (state Heap@@32 Mask@@29) (or (< AssumeFunctionsAbove 2) (|foo#trigger_1| EmptyFrame x@@16))) (=> (>= x@@16 0) (= (|foo'| Heap@@32 x@@16) (|foo'| Heap@@32 (|foo'| Heap@@32 x@@16)))))
 :qid |stdinbpl.358:15|
 :skolemid |35|
 :pattern ( (state Heap@@32 Mask@@29) (|foo'| Heap@@32 x@@16))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

