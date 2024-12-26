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
(declare-sort T@Field_8906_53 0)
(declare-sort T@Field_8919_8920 0)
(declare-sort T@Field_4894_26341 0)
(declare-sort T@Field_4894_26208 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_8867 0)) (((PolymorphicMapType_8867 (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| (Array T@Ref T@Field_8906_53 Real)) (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| (Array T@Ref T@Field_8919_8920 Real)) (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| (Array T@Ref T@Field_4894_26208 Real)) (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| (Array T@Ref T@Field_4894_26341 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9395 0)) (((PolymorphicMapType_9395 (|PolymorphicMapType_9395_8906_53#PolymorphicMapType_9395| (Array T@Ref T@Field_8906_53 Bool)) (|PolymorphicMapType_9395_8906_8920#PolymorphicMapType_9395| (Array T@Ref T@Field_8919_8920 Bool)) (|PolymorphicMapType_9395_8906_26208#PolymorphicMapType_9395| (Array T@Ref T@Field_4894_26208 Bool)) (|PolymorphicMapType_9395_8906_27321#PolymorphicMapType_9395| (Array T@Ref T@Field_4894_26341 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8846 0)) (((PolymorphicMapType_8846 (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| (Array T@Ref T@Field_8906_53 Bool)) (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| (Array T@Ref T@Field_8919_8920 T@Ref)) (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| (Array T@Ref T@Field_4894_26341 T@PolymorphicMapType_9395)) (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| (Array T@Ref T@Field_4894_26208 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_8906_53)
(declare-fun flag () T@Field_8906_53)
(declare-fun succHeap (T@PolymorphicMapType_8846 T@PolymorphicMapType_8846) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8846 T@PolymorphicMapType_8846) Bool)
(declare-fun state (T@PolymorphicMapType_8846 T@PolymorphicMapType_8867) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8867) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9395)
(declare-fun |foo_1_1'| (T@PolymorphicMapType_8846 T@Ref T@Ref) Bool)
(declare-fun dummyFunction_1454 (Bool) Bool)
(declare-fun |foo_1_1#triggerStateless| (T@Ref T@Ref) Bool)
(declare-fun |foo_1_2'| (T@PolymorphicMapType_8846 T@Ref T@Ref) Bool)
(declare-fun |foo_1_2#triggerStateless| (T@Ref T@Ref) Bool)
(declare-fun |foo_2_1'| (T@PolymorphicMapType_8846 T@Ref T@Ref) Bool)
(declare-fun |foo_2_1#triggerStateless| (T@Ref T@Ref) Bool)
(declare-fun |foo_2_2'| (T@PolymorphicMapType_8846 T@Ref T@Ref) Bool)
(declare-fun |foo_2_2#triggerStateless| (T@Ref T@Ref) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8846 T@PolymorphicMapType_8846 T@PolymorphicMapType_8867) Bool)
(declare-fun IsPredicateField_4894_26299 (T@Field_4894_26208) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4894 (T@Field_4894_26208) T@Field_4894_26341)
(declare-fun HasDirectPerm_4894_26272 (T@PolymorphicMapType_8867 T@Ref T@Field_4894_26208) Bool)
(declare-fun IsWandField_4894_27848 (T@Field_4894_26208) Bool)
(declare-fun WandMaskField_4894 (T@Field_4894_26208) T@Field_4894_26341)
(declare-fun dummyHeap () T@PolymorphicMapType_8846)
(declare-fun ZeroMask () T@PolymorphicMapType_8867)
(declare-fun InsidePredicate_8906_8906 (T@Field_4894_26208 T@FrameType T@Field_4894_26208 T@FrameType) Bool)
(declare-fun IsPredicateField_4894_1198 (T@Field_8906_53) Bool)
(declare-fun IsWandField_4894_1198 (T@Field_8906_53) Bool)
(declare-fun foo_1_2 (T@PolymorphicMapType_8846 T@Ref T@Ref) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun guard (T@Ref) Bool)
(declare-fun foo_2_2 (T@PolymorphicMapType_8846 T@Ref T@Ref) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4894_30785 (T@Field_4894_26341) Bool)
(declare-fun IsWandField_4894_30801 (T@Field_4894_26341) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4894_8920 (T@Field_8919_8920) Bool)
(declare-fun IsWandField_4894_8920 (T@Field_8919_8920) Bool)
(declare-fun foo_1_1 (T@PolymorphicMapType_8846 T@Ref T@Ref) Bool)
(declare-fun foo_2_1 (T@PolymorphicMapType_8846 T@Ref T@Ref) Bool)
(declare-fun HasDirectPerm_4894_31156 (T@PolymorphicMapType_8867 T@Ref T@Field_4894_26341) Bool)
(declare-fun HasDirectPerm_4894_8920 (T@PolymorphicMapType_8867 T@Ref T@Field_8919_8920) Bool)
(declare-fun HasDirectPerm_4894_1198 (T@PolymorphicMapType_8867 T@Ref T@Field_8906_53) Bool)
(declare-fun |foo_2_1#frame| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun FrameFragment_6255 (T@FrameType) T@FrameType)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1198 (Bool) T@FrameType)
(declare-fun |foo_2_2#frame| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun |foo_1_1#frame| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |foo_1_2#frame| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8867 T@PolymorphicMapType_8867 T@PolymorphicMapType_8867) Bool)
(assert (distinct $allocated flag)
)
(assert (forall ((Heap0 T@PolymorphicMapType_8846) (Heap1 T@PolymorphicMapType_8846) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8846) (Mask T@PolymorphicMapType_8867) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8846) (Heap1@@0 T@PolymorphicMapType_8846) (Heap2 T@PolymorphicMapType_8846) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4894_26341) ) (!  (not (select (|PolymorphicMapType_9395_8906_27321#PolymorphicMapType_9395| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9395_8906_27321#PolymorphicMapType_9395| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4894_26208) ) (!  (not (select (|PolymorphicMapType_9395_8906_26208#PolymorphicMapType_9395| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9395_8906_26208#PolymorphicMapType_9395| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8919_8920) ) (!  (not (select (|PolymorphicMapType_9395_8906_8920#PolymorphicMapType_9395| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9395_8906_8920#PolymorphicMapType_9395| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8906_53) ) (!  (not (select (|PolymorphicMapType_9395_8906_53#PolymorphicMapType_9395| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9395_8906_53#PolymorphicMapType_9395| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8846) (y T@Ref) (x T@Ref) ) (! (dummyFunction_1454 (|foo_1_1#triggerStateless| y x))
 :qid |stdinbpl.211:15|
 :skolemid |23|
 :pattern ( (|foo_1_1'| Heap@@0 y x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8846) (y@@0 T@Ref) (x@@0 T@Ref) ) (! (dummyFunction_1454 (|foo_1_2#triggerStateless| y@@0 x@@0))
 :qid |stdinbpl.286:15|
 :skolemid |27|
 :pattern ( (|foo_1_2'| Heap@@1 y@@0 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8846) (y@@1 T@Ref) (x@@1 T@Ref) ) (! (dummyFunction_1454 (|foo_2_1#triggerStateless| y@@1 x@@1))
 :qid |stdinbpl.361:15|
 :skolemid |31|
 :pattern ( (|foo_2_1'| Heap@@2 y@@1 x@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8846) (y@@2 T@Ref) (x@@2 T@Ref) ) (! (dummyFunction_1454 (|foo_2_2#triggerStateless| y@@2 x@@2))
 :qid |stdinbpl.440:15|
 :skolemid |35|
 :pattern ( (|foo_2_2'| Heap@@3 y@@2 x@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8846) (ExhaleHeap T@PolymorphicMapType_8846) (Mask@@0 T@PolymorphicMapType_8867) (pm_f T@Field_4894_26208) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4894_26272 Mask@@0 null pm_f) (IsPredicateField_4894_26299 pm_f)) (= (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@4) null (PredicateMaskField_4894 pm_f)) (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| ExhaleHeap) null (PredicateMaskField_4894 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (IsPredicateField_4894_26299 pm_f) (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| ExhaleHeap) null (PredicateMaskField_4894 pm_f)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8846) (ExhaleHeap@@0 T@PolymorphicMapType_8846) (Mask@@1 T@PolymorphicMapType_8867) (pm_f@@0 T@Field_4894_26208) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4894_26272 Mask@@1 null pm_f@@0) (IsWandField_4894_27848 pm_f@@0)) (= (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@5) null (WandMaskField_4894 pm_f@@0)) (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| ExhaleHeap@@0) null (WandMaskField_4894 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (IsWandField_4894_27848 pm_f@@0) (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| ExhaleHeap@@0) null (WandMaskField_4894 pm_f@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8846) (ExhaleHeap@@1 T@PolymorphicMapType_8846) (Mask@@2 T@PolymorphicMapType_8867) (pm_f@@1 T@Field_4894_26208) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4894_26272 Mask@@2 null pm_f@@1) (IsPredicateField_4894_26299 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_8906_53) ) (!  (=> (select (|PolymorphicMapType_9395_8906_53#PolymorphicMapType_9395| (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@6) null (PredicateMaskField_4894 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@6) o2 f_2) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_8919_8920) ) (!  (=> (select (|PolymorphicMapType_9395_8906_8920#PolymorphicMapType_9395| (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@6) null (PredicateMaskField_4894 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@6) o2@@0 f_2@@0) (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_4894_26208) ) (!  (=> (select (|PolymorphicMapType_9395_8906_26208#PolymorphicMapType_9395| (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@6) null (PredicateMaskField_4894 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@6) o2@@1 f_2@@1) (select (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_4894_26341) ) (!  (=> (select (|PolymorphicMapType_9395_8906_27321#PolymorphicMapType_9395| (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@6) null (PredicateMaskField_4894 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@6) o2@@2 f_2@@2) (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (IsPredicateField_4894_26299 pm_f@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8846) (ExhaleHeap@@2 T@PolymorphicMapType_8846) (Mask@@3 T@PolymorphicMapType_8867) (pm_f@@2 T@Field_4894_26208) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4894_26272 Mask@@3 null pm_f@@2) (IsWandField_4894_27848 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_8906_53) ) (!  (=> (select (|PolymorphicMapType_9395_8906_53#PolymorphicMapType_9395| (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@7) null (WandMaskField_4894 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@7) o2@@3 f_2@@3) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_8919_8920) ) (!  (=> (select (|PolymorphicMapType_9395_8906_8920#PolymorphicMapType_9395| (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@7) null (WandMaskField_4894 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@7) o2@@4 f_2@@4) (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_4894_26208) ) (!  (=> (select (|PolymorphicMapType_9395_8906_26208#PolymorphicMapType_9395| (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@7) null (WandMaskField_4894 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@7) o2@@5 f_2@@5) (select (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_4894_26341) ) (!  (=> (select (|PolymorphicMapType_9395_8906_27321#PolymorphicMapType_9395| (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@7) null (WandMaskField_4894 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@7) o2@@6 f_2@@6) (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (IsWandField_4894_27848 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8846) (ExhaleHeap@@3 T@PolymorphicMapType_8846) (Mask@@4 T@PolymorphicMapType_8867) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@8) o_1 $allocated) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_4894_26208) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8906_8906 p v_1 p w))
 :qid |stdinbpl.177:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8906_8906 p v_1 p w))
)))
(assert  (not (IsPredicateField_4894_1198 flag)))
(assert  (not (IsWandField_4894_1198 flag)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8846) (ExhaleHeap@@4 T@PolymorphicMapType_8846) (Mask@@5 T@PolymorphicMapType_8867) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@9 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8846) (Mask@@6 T@PolymorphicMapType_8867) (y@@3 T@Ref) (x@@3 T@Ref) ) (!  (=> (and (state Heap@@10 Mask@@6) (< AssumeFunctionsAbove 1)) (= (foo_1_2 Heap@@10 y@@3 x@@3)  (=> (guard y@@3) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@10) y@@3 flag))))
 :qid |stdinbpl.292:15|
 :skolemid |28|
 :pattern ( (state Heap@@10 Mask@@6) (foo_1_2 Heap@@10 y@@3 x@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8846) (Mask@@7 T@PolymorphicMapType_8867) (y@@4 T@Ref) (x@@4 T@Ref) ) (!  (=> (and (state Heap@@11 Mask@@7) (< AssumeFunctionsAbove 3)) (= (foo_2_2 Heap@@11 y@@4 x@@4)  (=> (guard y@@4) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@11) y@@4 flag))))
 :qid |stdinbpl.446:15|
 :skolemid |36|
 :pattern ( (state Heap@@11 Mask@@7) (foo_2_2 Heap@@11 y@@4 x@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8867) (o_2@@3 T@Ref) (f_4@@3 T@Field_4894_26341) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| Mask@@8) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4894_30785 f_4@@3))) (not (IsWandField_4894_30801 f_4@@3))) (<= (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| Mask@@8) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| Mask@@8) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8867) (o_2@@4 T@Ref) (f_4@@4 T@Field_4894_26208) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4894_26299 f_4@@4))) (not (IsWandField_4894_27848 f_4@@4))) (<= (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8867) (o_2@@5 T@Ref) (f_4@@5 T@Field_8919_8920) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4894_8920 f_4@@5))) (not (IsWandField_4894_8920 f_4@@5))) (<= (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8867) (o_2@@6 T@Ref) (f_4@@6 T@Field_8906_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4894_1198 f_4@@6))) (not (IsWandField_4894_1198 f_4@@6))) (<= (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8846) (Mask@@12 T@PolymorphicMapType_8867) (y@@5 T@Ref) (x@@5 T@Ref) ) (!  (=> (and (state Heap@@12 Mask@@12) (< AssumeFunctionsAbove 0)) (= (foo_1_1 Heap@@12 y@@5 x@@5)  (or (not (guard y@@5)) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@12) y@@5 flag))))
 :qid |stdinbpl.217:15|
 :skolemid |24|
 :pattern ( (state Heap@@12 Mask@@12) (foo_1_1 Heap@@12 y@@5 x@@5))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8846) (Mask@@13 T@PolymorphicMapType_8867) (y@@6 T@Ref) (x@@6 T@Ref) ) (!  (=> (and (state Heap@@13 Mask@@13) (< AssumeFunctionsAbove 2)) (= (foo_2_1 Heap@@13 y@@6 x@@6)  (or (not (guard y@@6)) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@13) y@@6 flag))))
 :qid |stdinbpl.367:15|
 :skolemid |32|
 :pattern ( (state Heap@@13 Mask@@13) (foo_2_1 Heap@@13 y@@6 x@@6))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8867) (o_2@@7 T@Ref) (f_4@@7 T@Field_4894_26341) ) (! (= (HasDirectPerm_4894_31156 Mask@@14 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| Mask@@14) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4894_31156 Mask@@14 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8867) (o_2@@8 T@Ref) (f_4@@8 T@Field_4894_26208) ) (! (= (HasDirectPerm_4894_26272 Mask@@15 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| Mask@@15) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4894_26272 Mask@@15 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8867) (o_2@@9 T@Ref) (f_4@@9 T@Field_8919_8920) ) (! (= (HasDirectPerm_4894_8920 Mask@@16 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| Mask@@16) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4894_8920 Mask@@16 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8867) (o_2@@10 T@Ref) (f_4@@10 T@Field_8906_53) ) (! (= (HasDirectPerm_4894_1198 Mask@@17 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| Mask@@17) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4894_1198 Mask@@17 o_2@@10 f_4@@10))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8846) (Mask@@18 T@PolymorphicMapType_8867) (y@@7 T@Ref) (x@@7 T@Ref) ) (!  (=> (state Heap@@14 Mask@@18) (= (|foo_2_1'| Heap@@14 y@@7 x@@7) (|foo_2_1#frame| (FrameFragment_6255 (ite (guard y@@7) (CombineFrames (FrameFragment_1198 (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@14) x@@7 flag)) (FrameFragment_1198 (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@14) y@@7 flag))) (FrameFragment_1198 (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@14) x@@7 flag)))) y@@7 x@@7)))
 :qid |stdinbpl.374:15|
 :skolemid |33|
 :pattern ( (state Heap@@14 Mask@@18) (|foo_2_1'| Heap@@14 y@@7 x@@7))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8846) (Mask@@19 T@PolymorphicMapType_8867) (y@@8 T@Ref) (x@@8 T@Ref) ) (!  (=> (state Heap@@15 Mask@@19) (= (|foo_2_2'| Heap@@15 y@@8 x@@8) (|foo_2_2#frame| (FrameFragment_6255 (ite (guard y@@8) (CombineFrames (FrameFragment_1198 (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@15) x@@8 flag)) (FrameFragment_1198 (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@15) y@@8 flag))) (FrameFragment_1198 (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@15) x@@8 flag)))) y@@8 x@@8)))
 :qid |stdinbpl.453:15|
 :skolemid |37|
 :pattern ( (state Heap@@15 Mask@@19) (|foo_2_2'| Heap@@15 y@@8 x@@8))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8846) (Mask@@20 T@PolymorphicMapType_8867) (y@@9 T@Ref) (x@@9 T@Ref) ) (!  (=> (state Heap@@16 Mask@@20) (= (|foo_1_1'| Heap@@16 y@@9 x@@9) (|foo_1_1#frame| (CombineFrames (FrameFragment_1198 (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@16) x@@9 flag)) (FrameFragment_6255 (ite (guard y@@9) (FrameFragment_1198 (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@16) y@@9 flag)) EmptyFrame))) y@@9 x@@9)))
 :qid |stdinbpl.224:15|
 :skolemid |25|
 :pattern ( (state Heap@@16 Mask@@20) (|foo_1_1'| Heap@@16 y@@9 x@@9))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8846) (Mask@@21 T@PolymorphicMapType_8867) (y@@10 T@Ref) (x@@10 T@Ref) ) (!  (=> (state Heap@@17 Mask@@21) (= (|foo_1_2'| Heap@@17 y@@10 x@@10) (|foo_1_2#frame| (CombineFrames (FrameFragment_1198 (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@17) x@@10 flag)) (FrameFragment_6255 (ite (guard y@@10) (FrameFragment_1198 (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@17) y@@10 flag)) EmptyFrame))) y@@10 x@@10)))
 :qid |stdinbpl.299:15|
 :skolemid |29|
 :pattern ( (state Heap@@17 Mask@@21) (|foo_1_2'| Heap@@17 y@@10 x@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.165:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8846) (ExhaleHeap@@5 T@PolymorphicMapType_8846) (Mask@@22 T@PolymorphicMapType_8867) (o_1@@0 T@Ref) (f_2@@7 T@Field_4894_26341) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@5 Mask@@22) (=> (HasDirectPerm_4894_31156 Mask@@22 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@18) o_1@@0 f_2@@7) (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@5 Mask@@22) (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8846) (ExhaleHeap@@6 T@PolymorphicMapType_8846) (Mask@@23 T@PolymorphicMapType_8867) (o_1@@1 T@Ref) (f_2@@8 T@Field_4894_26208) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@6 Mask@@23) (=> (HasDirectPerm_4894_26272 Mask@@23 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@19) o_1@@1 f_2@@8) (select (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@6 Mask@@23) (select (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8846) (ExhaleHeap@@7 T@PolymorphicMapType_8846) (Mask@@24 T@PolymorphicMapType_8867) (o_1@@2 T@Ref) (f_2@@9 T@Field_8919_8920) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@7 Mask@@24) (=> (HasDirectPerm_4894_8920 Mask@@24 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@20) o_1@@2 f_2@@9) (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@7 Mask@@24) (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8846) (ExhaleHeap@@8 T@PolymorphicMapType_8846) (Mask@@25 T@PolymorphicMapType_8867) (o_1@@3 T@Ref) (f_2@@10 T@Field_8906_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@8 Mask@@25) (=> (HasDirectPerm_4894_1198 Mask@@25 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@21) o_1@@3 f_2@@10) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@8 Mask@@25) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_4894_26341) ) (! (= (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_4894_26208) ) (! (= (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_8919_8920) ) (! (= (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_8906_53) ) (! (= (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8867) (SummandMask1 T@PolymorphicMapType_8867) (SummandMask2 T@PolymorphicMapType_8867) (o_2@@15 T@Ref) (f_4@@15 T@Field_4894_26341) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8867) (SummandMask1@@0 T@PolymorphicMapType_8867) (SummandMask2@@0 T@PolymorphicMapType_8867) (o_2@@16 T@Ref) (f_4@@16 T@Field_4894_26208) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8867) (SummandMask1@@1 T@PolymorphicMapType_8867) (SummandMask2@@1 T@PolymorphicMapType_8867) (o_2@@17 T@Ref) (f_4@@17 T@Field_8919_8920) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8867) (SummandMask1@@2 T@PolymorphicMapType_8867) (SummandMask2@@2 T@PolymorphicMapType_8867) (o_2@@18 T@Ref) (f_4@@18 T@Field_8906_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8846) (o T@Ref) (f_3 T@Field_4894_26208) (v T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_8846 (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@22) (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@22) (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@22) (store (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@22) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8846 (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@22) (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@22) (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@22) (store (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@22) o f_3 v)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8846) (o@@0 T@Ref) (f_3@@0 T@Field_4894_26341) (v@@0 T@PolymorphicMapType_9395) ) (! (succHeap Heap@@23 (PolymorphicMapType_8846 (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@23) (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@23) (store (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@23) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8846 (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@23) (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@23) (store (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@23) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8846) (o@@1 T@Ref) (f_3@@1 T@Field_8919_8920) (v@@1 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_8846 (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@24) (store (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@24) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@24) (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8846 (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@24) (store (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@24) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@24) (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8846) (o@@2 T@Ref) (f_3@@2 T@Field_8906_53) (v@@2 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_8846 (store (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@25) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@25) (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@25) (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8846 (store (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@25) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@25) (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@25) (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@25)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_8919_8920) (Heap@@26 T@PolymorphicMapType_8846) ) (!  (=> (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@26) o@@3 $allocated) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@26) (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@26) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@26) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_4894_26208) (v_1@@0 T@FrameType) (q T@Field_4894_26208) (w@@0 T@FrameType) (r T@Field_4894_26208) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8906_8906 p@@1 v_1@@0 q w@@0) (InsidePredicate_8906_8906 q w@@0 r u)) (InsidePredicate_8906_8906 p@@1 v_1@@0 r u))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8906_8906 p@@1 v_1@@0 q w@@0) (InsidePredicate_8906_8906 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8846) (y@@11 T@Ref) (x@@11 T@Ref) ) (!  (and (= (foo_1_1 Heap@@27 y@@11 x@@11) (|foo_1_1'| Heap@@27 y@@11 x@@11)) (dummyFunction_1454 (|foo_1_1#triggerStateless| y@@11 x@@11)))
 :qid |stdinbpl.207:15|
 :skolemid |22|
 :pattern ( (foo_1_1 Heap@@27 y@@11 x@@11))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8846) (y@@12 T@Ref) (x@@12 T@Ref) ) (!  (and (= (foo_1_2 Heap@@28 y@@12 x@@12) (|foo_1_2'| Heap@@28 y@@12 x@@12)) (dummyFunction_1454 (|foo_1_2#triggerStateless| y@@12 x@@12)))
 :qid |stdinbpl.282:15|
 :skolemid |26|
 :pattern ( (foo_1_2 Heap@@28 y@@12 x@@12))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8846) (y@@13 T@Ref) (x@@13 T@Ref) ) (!  (and (= (foo_2_1 Heap@@29 y@@13 x@@13) (|foo_2_1'| Heap@@29 y@@13 x@@13)) (dummyFunction_1454 (|foo_2_1#triggerStateless| y@@13 x@@13)))
 :qid |stdinbpl.357:15|
 :skolemid |30|
 :pattern ( (foo_2_1 Heap@@29 y@@13 x@@13))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8846) (y@@14 T@Ref) (x@@14 T@Ref) ) (!  (and (= (foo_2_2 Heap@@30 y@@14 x@@14) (|foo_2_2'| Heap@@30 y@@14 x@@14)) (dummyFunction_1454 (|foo_2_2#triggerStateless| y@@14 x@@14)))
 :qid |stdinbpl.436:15|
 :skolemid |34|
 :pattern ( (foo_2_2 Heap@@30 y@@14 x@@14))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun y@@15 () T@Ref)
(declare-fun Mask@2 () T@PolymorphicMapType_8867)
(declare-fun Heap@@31 () T@PolymorphicMapType_8846)
(declare-fun Mask@0 () T@PolymorphicMapType_8867)
(declare-fun Mask@1 () T@PolymorphicMapType_8867)
(declare-fun x@@15 () T@Ref)
(set-info :boogie-vc-id |foo_1_1#definedness|)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon4_correct true))
(let ((anon6_Else_correct  (=> (and (not (guard y@@15)) (= (ControlFlow 0 4) 1)) anon4_correct)))
(let ((anon6_Then_correct  (=> (guard y@@15) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_4894_1198 Mask@2 y@@15 flag)) (=> (HasDirectPerm_4894_1198 Mask@2 y@@15 flag) (=> (= (ControlFlow 0 2) 1) anon4_correct))))))
(let ((anon2_correct  (=> (state Heap@@31 Mask@2) (and (=> (= (ControlFlow 0 5) 2) anon6_Then_correct) (=> (= (ControlFlow 0 5) 4) anon6_Else_correct)))))
(let ((anon5_Else_correct  (=> (not (guard y@@15)) (=> (and (= Mask@2 Mask@0) (= (ControlFlow 0 7) 5)) anon2_correct))))
(let ((anon5_Then_correct  (=> (and (guard y@@15) (not (= y@@15 null))) (=> (and (and (= Mask@1 (PolymorphicMapType_8867 (store (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| Mask@0) y@@15 flag (+ (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| Mask@0) y@@15 flag) FullPerm)) (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| Mask@0) (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| Mask@0) (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| Mask@0))) (state Heap@@31 Mask@1)) (and (= Mask@2 Mask@1) (= (ControlFlow 0 6) 5))) anon2_correct))))
(let ((anon0_correct  (=> (state Heap@@31 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@31) y@@15 $allocated)) (and (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@31) x@@15 $allocated) (= AssumeFunctionsAbove 0))) (and (and (not (= x@@15 null)) (= Mask@0 (PolymorphicMapType_8867 (store (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| ZeroMask) x@@15 flag (+ (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| ZeroMask) x@@15 flag) FullPerm)) (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| ZeroMask) (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| ZeroMask) (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| ZeroMask)))) (and (state Heap@@31 Mask@0) (state Heap@@31 Mask@0)))) (and (=> (= (ControlFlow 0 8) 6) anon5_Then_correct) (=> (= (ControlFlow 0 8) 7) anon5_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 8) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
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
(declare-sort T@Field_8906_53 0)
(declare-sort T@Field_8919_8920 0)
(declare-sort T@Field_4894_26341 0)
(declare-sort T@Field_4894_26208 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_8867 0)) (((PolymorphicMapType_8867 (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| (Array T@Ref T@Field_8906_53 Real)) (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| (Array T@Ref T@Field_8919_8920 Real)) (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| (Array T@Ref T@Field_4894_26208 Real)) (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| (Array T@Ref T@Field_4894_26341 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9395 0)) (((PolymorphicMapType_9395 (|PolymorphicMapType_9395_8906_53#PolymorphicMapType_9395| (Array T@Ref T@Field_8906_53 Bool)) (|PolymorphicMapType_9395_8906_8920#PolymorphicMapType_9395| (Array T@Ref T@Field_8919_8920 Bool)) (|PolymorphicMapType_9395_8906_26208#PolymorphicMapType_9395| (Array T@Ref T@Field_4894_26208 Bool)) (|PolymorphicMapType_9395_8906_27321#PolymorphicMapType_9395| (Array T@Ref T@Field_4894_26341 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8846 0)) (((PolymorphicMapType_8846 (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| (Array T@Ref T@Field_8906_53 Bool)) (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| (Array T@Ref T@Field_8919_8920 T@Ref)) (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| (Array T@Ref T@Field_4894_26341 T@PolymorphicMapType_9395)) (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| (Array T@Ref T@Field_4894_26208 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_8906_53)
(declare-fun flag () T@Field_8906_53)
(declare-fun succHeap (T@PolymorphicMapType_8846 T@PolymorphicMapType_8846) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8846 T@PolymorphicMapType_8846) Bool)
(declare-fun state (T@PolymorphicMapType_8846 T@PolymorphicMapType_8867) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8867) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9395)
(declare-fun |foo_1_1'| (T@PolymorphicMapType_8846 T@Ref T@Ref) Bool)
(declare-fun dummyFunction_1454 (Bool) Bool)
(declare-fun |foo_1_1#triggerStateless| (T@Ref T@Ref) Bool)
(declare-fun |foo_1_2'| (T@PolymorphicMapType_8846 T@Ref T@Ref) Bool)
(declare-fun |foo_1_2#triggerStateless| (T@Ref T@Ref) Bool)
(declare-fun |foo_2_1'| (T@PolymorphicMapType_8846 T@Ref T@Ref) Bool)
(declare-fun |foo_2_1#triggerStateless| (T@Ref T@Ref) Bool)
(declare-fun |foo_2_2'| (T@PolymorphicMapType_8846 T@Ref T@Ref) Bool)
(declare-fun |foo_2_2#triggerStateless| (T@Ref T@Ref) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8846 T@PolymorphicMapType_8846 T@PolymorphicMapType_8867) Bool)
(declare-fun IsPredicateField_4894_26299 (T@Field_4894_26208) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4894 (T@Field_4894_26208) T@Field_4894_26341)
(declare-fun HasDirectPerm_4894_26272 (T@PolymorphicMapType_8867 T@Ref T@Field_4894_26208) Bool)
(declare-fun IsWandField_4894_27848 (T@Field_4894_26208) Bool)
(declare-fun WandMaskField_4894 (T@Field_4894_26208) T@Field_4894_26341)
(declare-fun dummyHeap () T@PolymorphicMapType_8846)
(declare-fun ZeroMask () T@PolymorphicMapType_8867)
(declare-fun InsidePredicate_8906_8906 (T@Field_4894_26208 T@FrameType T@Field_4894_26208 T@FrameType) Bool)
(declare-fun IsPredicateField_4894_1198 (T@Field_8906_53) Bool)
(declare-fun IsWandField_4894_1198 (T@Field_8906_53) Bool)
(declare-fun foo_1_2 (T@PolymorphicMapType_8846 T@Ref T@Ref) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun guard (T@Ref) Bool)
(declare-fun foo_2_2 (T@PolymorphicMapType_8846 T@Ref T@Ref) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4894_30785 (T@Field_4894_26341) Bool)
(declare-fun IsWandField_4894_30801 (T@Field_4894_26341) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4894_8920 (T@Field_8919_8920) Bool)
(declare-fun IsWandField_4894_8920 (T@Field_8919_8920) Bool)
(declare-fun foo_1_1 (T@PolymorphicMapType_8846 T@Ref T@Ref) Bool)
(declare-fun foo_2_1 (T@PolymorphicMapType_8846 T@Ref T@Ref) Bool)
(declare-fun HasDirectPerm_4894_31156 (T@PolymorphicMapType_8867 T@Ref T@Field_4894_26341) Bool)
(declare-fun HasDirectPerm_4894_8920 (T@PolymorphicMapType_8867 T@Ref T@Field_8919_8920) Bool)
(declare-fun HasDirectPerm_4894_1198 (T@PolymorphicMapType_8867 T@Ref T@Field_8906_53) Bool)
(declare-fun |foo_2_1#frame| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun FrameFragment_6255 (T@FrameType) T@FrameType)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1198 (Bool) T@FrameType)
(declare-fun |foo_2_2#frame| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun |foo_1_1#frame| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |foo_1_2#frame| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8867 T@PolymorphicMapType_8867 T@PolymorphicMapType_8867) Bool)
(assert (distinct $allocated flag)
)
(assert (forall ((Heap0 T@PolymorphicMapType_8846) (Heap1 T@PolymorphicMapType_8846) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8846) (Mask T@PolymorphicMapType_8867) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8846) (Heap1@@0 T@PolymorphicMapType_8846) (Heap2 T@PolymorphicMapType_8846) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4894_26341) ) (!  (not (select (|PolymorphicMapType_9395_8906_27321#PolymorphicMapType_9395| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9395_8906_27321#PolymorphicMapType_9395| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4894_26208) ) (!  (not (select (|PolymorphicMapType_9395_8906_26208#PolymorphicMapType_9395| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9395_8906_26208#PolymorphicMapType_9395| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8919_8920) ) (!  (not (select (|PolymorphicMapType_9395_8906_8920#PolymorphicMapType_9395| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9395_8906_8920#PolymorphicMapType_9395| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8906_53) ) (!  (not (select (|PolymorphicMapType_9395_8906_53#PolymorphicMapType_9395| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9395_8906_53#PolymorphicMapType_9395| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8846) (y T@Ref) (x T@Ref) ) (! (dummyFunction_1454 (|foo_1_1#triggerStateless| y x))
 :qid |stdinbpl.211:15|
 :skolemid |23|
 :pattern ( (|foo_1_1'| Heap@@0 y x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8846) (y@@0 T@Ref) (x@@0 T@Ref) ) (! (dummyFunction_1454 (|foo_1_2#triggerStateless| y@@0 x@@0))
 :qid |stdinbpl.286:15|
 :skolemid |27|
 :pattern ( (|foo_1_2'| Heap@@1 y@@0 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8846) (y@@1 T@Ref) (x@@1 T@Ref) ) (! (dummyFunction_1454 (|foo_2_1#triggerStateless| y@@1 x@@1))
 :qid |stdinbpl.361:15|
 :skolemid |31|
 :pattern ( (|foo_2_1'| Heap@@2 y@@1 x@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8846) (y@@2 T@Ref) (x@@2 T@Ref) ) (! (dummyFunction_1454 (|foo_2_2#triggerStateless| y@@2 x@@2))
 :qid |stdinbpl.440:15|
 :skolemid |35|
 :pattern ( (|foo_2_2'| Heap@@3 y@@2 x@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8846) (ExhaleHeap T@PolymorphicMapType_8846) (Mask@@0 T@PolymorphicMapType_8867) (pm_f T@Field_4894_26208) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4894_26272 Mask@@0 null pm_f) (IsPredicateField_4894_26299 pm_f)) (= (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@4) null (PredicateMaskField_4894 pm_f)) (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| ExhaleHeap) null (PredicateMaskField_4894 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (IsPredicateField_4894_26299 pm_f) (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| ExhaleHeap) null (PredicateMaskField_4894 pm_f)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8846) (ExhaleHeap@@0 T@PolymorphicMapType_8846) (Mask@@1 T@PolymorphicMapType_8867) (pm_f@@0 T@Field_4894_26208) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4894_26272 Mask@@1 null pm_f@@0) (IsWandField_4894_27848 pm_f@@0)) (= (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@5) null (WandMaskField_4894 pm_f@@0)) (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| ExhaleHeap@@0) null (WandMaskField_4894 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (IsWandField_4894_27848 pm_f@@0) (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| ExhaleHeap@@0) null (WandMaskField_4894 pm_f@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8846) (ExhaleHeap@@1 T@PolymorphicMapType_8846) (Mask@@2 T@PolymorphicMapType_8867) (pm_f@@1 T@Field_4894_26208) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4894_26272 Mask@@2 null pm_f@@1) (IsPredicateField_4894_26299 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_8906_53) ) (!  (=> (select (|PolymorphicMapType_9395_8906_53#PolymorphicMapType_9395| (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@6) null (PredicateMaskField_4894 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@6) o2 f_2) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_8919_8920) ) (!  (=> (select (|PolymorphicMapType_9395_8906_8920#PolymorphicMapType_9395| (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@6) null (PredicateMaskField_4894 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@6) o2@@0 f_2@@0) (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_4894_26208) ) (!  (=> (select (|PolymorphicMapType_9395_8906_26208#PolymorphicMapType_9395| (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@6) null (PredicateMaskField_4894 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@6) o2@@1 f_2@@1) (select (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_4894_26341) ) (!  (=> (select (|PolymorphicMapType_9395_8906_27321#PolymorphicMapType_9395| (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@6) null (PredicateMaskField_4894 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@6) o2@@2 f_2@@2) (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (IsPredicateField_4894_26299 pm_f@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8846) (ExhaleHeap@@2 T@PolymorphicMapType_8846) (Mask@@3 T@PolymorphicMapType_8867) (pm_f@@2 T@Field_4894_26208) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4894_26272 Mask@@3 null pm_f@@2) (IsWandField_4894_27848 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_8906_53) ) (!  (=> (select (|PolymorphicMapType_9395_8906_53#PolymorphicMapType_9395| (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@7) null (WandMaskField_4894 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@7) o2@@3 f_2@@3) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_8919_8920) ) (!  (=> (select (|PolymorphicMapType_9395_8906_8920#PolymorphicMapType_9395| (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@7) null (WandMaskField_4894 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@7) o2@@4 f_2@@4) (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_4894_26208) ) (!  (=> (select (|PolymorphicMapType_9395_8906_26208#PolymorphicMapType_9395| (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@7) null (WandMaskField_4894 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@7) o2@@5 f_2@@5) (select (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_4894_26341) ) (!  (=> (select (|PolymorphicMapType_9395_8906_27321#PolymorphicMapType_9395| (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@7) null (WandMaskField_4894 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@7) o2@@6 f_2@@6) (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (IsWandField_4894_27848 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8846) (ExhaleHeap@@3 T@PolymorphicMapType_8846) (Mask@@4 T@PolymorphicMapType_8867) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@8) o_1 $allocated) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_4894_26208) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8906_8906 p v_1 p w))
 :qid |stdinbpl.177:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8906_8906 p v_1 p w))
)))
(assert  (not (IsPredicateField_4894_1198 flag)))
(assert  (not (IsWandField_4894_1198 flag)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8846) (ExhaleHeap@@4 T@PolymorphicMapType_8846) (Mask@@5 T@PolymorphicMapType_8867) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@9 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8846) (Mask@@6 T@PolymorphicMapType_8867) (y@@3 T@Ref) (x@@3 T@Ref) ) (!  (=> (and (state Heap@@10 Mask@@6) (< AssumeFunctionsAbove 1)) (= (foo_1_2 Heap@@10 y@@3 x@@3)  (=> (guard y@@3) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@10) y@@3 flag))))
 :qid |stdinbpl.292:15|
 :skolemid |28|
 :pattern ( (state Heap@@10 Mask@@6) (foo_1_2 Heap@@10 y@@3 x@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8846) (Mask@@7 T@PolymorphicMapType_8867) (y@@4 T@Ref) (x@@4 T@Ref) ) (!  (=> (and (state Heap@@11 Mask@@7) (< AssumeFunctionsAbove 3)) (= (foo_2_2 Heap@@11 y@@4 x@@4)  (=> (guard y@@4) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@11) y@@4 flag))))
 :qid |stdinbpl.446:15|
 :skolemid |36|
 :pattern ( (state Heap@@11 Mask@@7) (foo_2_2 Heap@@11 y@@4 x@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8867) (o_2@@3 T@Ref) (f_4@@3 T@Field_4894_26341) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| Mask@@8) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4894_30785 f_4@@3))) (not (IsWandField_4894_30801 f_4@@3))) (<= (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| Mask@@8) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| Mask@@8) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8867) (o_2@@4 T@Ref) (f_4@@4 T@Field_4894_26208) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4894_26299 f_4@@4))) (not (IsWandField_4894_27848 f_4@@4))) (<= (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8867) (o_2@@5 T@Ref) (f_4@@5 T@Field_8919_8920) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4894_8920 f_4@@5))) (not (IsWandField_4894_8920 f_4@@5))) (<= (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8867) (o_2@@6 T@Ref) (f_4@@6 T@Field_8906_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4894_1198 f_4@@6))) (not (IsWandField_4894_1198 f_4@@6))) (<= (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8846) (Mask@@12 T@PolymorphicMapType_8867) (y@@5 T@Ref) (x@@5 T@Ref) ) (!  (=> (and (state Heap@@12 Mask@@12) (< AssumeFunctionsAbove 0)) (= (foo_1_1 Heap@@12 y@@5 x@@5)  (or (not (guard y@@5)) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@12) y@@5 flag))))
 :qid |stdinbpl.217:15|
 :skolemid |24|
 :pattern ( (state Heap@@12 Mask@@12) (foo_1_1 Heap@@12 y@@5 x@@5))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8846) (Mask@@13 T@PolymorphicMapType_8867) (y@@6 T@Ref) (x@@6 T@Ref) ) (!  (=> (and (state Heap@@13 Mask@@13) (< AssumeFunctionsAbove 2)) (= (foo_2_1 Heap@@13 y@@6 x@@6)  (or (not (guard y@@6)) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@13) y@@6 flag))))
 :qid |stdinbpl.367:15|
 :skolemid |32|
 :pattern ( (state Heap@@13 Mask@@13) (foo_2_1 Heap@@13 y@@6 x@@6))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8867) (o_2@@7 T@Ref) (f_4@@7 T@Field_4894_26341) ) (! (= (HasDirectPerm_4894_31156 Mask@@14 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| Mask@@14) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4894_31156 Mask@@14 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8867) (o_2@@8 T@Ref) (f_4@@8 T@Field_4894_26208) ) (! (= (HasDirectPerm_4894_26272 Mask@@15 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| Mask@@15) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4894_26272 Mask@@15 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8867) (o_2@@9 T@Ref) (f_4@@9 T@Field_8919_8920) ) (! (= (HasDirectPerm_4894_8920 Mask@@16 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| Mask@@16) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4894_8920 Mask@@16 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8867) (o_2@@10 T@Ref) (f_4@@10 T@Field_8906_53) ) (! (= (HasDirectPerm_4894_1198 Mask@@17 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| Mask@@17) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4894_1198 Mask@@17 o_2@@10 f_4@@10))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8846) (Mask@@18 T@PolymorphicMapType_8867) (y@@7 T@Ref) (x@@7 T@Ref) ) (!  (=> (state Heap@@14 Mask@@18) (= (|foo_2_1'| Heap@@14 y@@7 x@@7) (|foo_2_1#frame| (FrameFragment_6255 (ite (guard y@@7) (CombineFrames (FrameFragment_1198 (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@14) x@@7 flag)) (FrameFragment_1198 (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@14) y@@7 flag))) (FrameFragment_1198 (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@14) x@@7 flag)))) y@@7 x@@7)))
 :qid |stdinbpl.374:15|
 :skolemid |33|
 :pattern ( (state Heap@@14 Mask@@18) (|foo_2_1'| Heap@@14 y@@7 x@@7))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8846) (Mask@@19 T@PolymorphicMapType_8867) (y@@8 T@Ref) (x@@8 T@Ref) ) (!  (=> (state Heap@@15 Mask@@19) (= (|foo_2_2'| Heap@@15 y@@8 x@@8) (|foo_2_2#frame| (FrameFragment_6255 (ite (guard y@@8) (CombineFrames (FrameFragment_1198 (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@15) x@@8 flag)) (FrameFragment_1198 (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@15) y@@8 flag))) (FrameFragment_1198 (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@15) x@@8 flag)))) y@@8 x@@8)))
 :qid |stdinbpl.453:15|
 :skolemid |37|
 :pattern ( (state Heap@@15 Mask@@19) (|foo_2_2'| Heap@@15 y@@8 x@@8))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8846) (Mask@@20 T@PolymorphicMapType_8867) (y@@9 T@Ref) (x@@9 T@Ref) ) (!  (=> (state Heap@@16 Mask@@20) (= (|foo_1_1'| Heap@@16 y@@9 x@@9) (|foo_1_1#frame| (CombineFrames (FrameFragment_1198 (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@16) x@@9 flag)) (FrameFragment_6255 (ite (guard y@@9) (FrameFragment_1198 (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@16) y@@9 flag)) EmptyFrame))) y@@9 x@@9)))
 :qid |stdinbpl.224:15|
 :skolemid |25|
 :pattern ( (state Heap@@16 Mask@@20) (|foo_1_1'| Heap@@16 y@@9 x@@9))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8846) (Mask@@21 T@PolymorphicMapType_8867) (y@@10 T@Ref) (x@@10 T@Ref) ) (!  (=> (state Heap@@17 Mask@@21) (= (|foo_1_2'| Heap@@17 y@@10 x@@10) (|foo_1_2#frame| (CombineFrames (FrameFragment_1198 (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@17) x@@10 flag)) (FrameFragment_6255 (ite (guard y@@10) (FrameFragment_1198 (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@17) y@@10 flag)) EmptyFrame))) y@@10 x@@10)))
 :qid |stdinbpl.299:15|
 :skolemid |29|
 :pattern ( (state Heap@@17 Mask@@21) (|foo_1_2'| Heap@@17 y@@10 x@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.165:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8846) (ExhaleHeap@@5 T@PolymorphicMapType_8846) (Mask@@22 T@PolymorphicMapType_8867) (o_1@@0 T@Ref) (f_2@@7 T@Field_4894_26341) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@5 Mask@@22) (=> (HasDirectPerm_4894_31156 Mask@@22 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@18) o_1@@0 f_2@@7) (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@5 Mask@@22) (select (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8846) (ExhaleHeap@@6 T@PolymorphicMapType_8846) (Mask@@23 T@PolymorphicMapType_8867) (o_1@@1 T@Ref) (f_2@@8 T@Field_4894_26208) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@6 Mask@@23) (=> (HasDirectPerm_4894_26272 Mask@@23 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@19) o_1@@1 f_2@@8) (select (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@6 Mask@@23) (select (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8846) (ExhaleHeap@@7 T@PolymorphicMapType_8846) (Mask@@24 T@PolymorphicMapType_8867) (o_1@@2 T@Ref) (f_2@@9 T@Field_8919_8920) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@7 Mask@@24) (=> (HasDirectPerm_4894_8920 Mask@@24 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@20) o_1@@2 f_2@@9) (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@7 Mask@@24) (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8846) (ExhaleHeap@@8 T@PolymorphicMapType_8846) (Mask@@25 T@PolymorphicMapType_8867) (o_1@@3 T@Ref) (f_2@@10 T@Field_8906_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@8 Mask@@25) (=> (HasDirectPerm_4894_1198 Mask@@25 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@21) o_1@@3 f_2@@10) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@8 Mask@@25) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_4894_26341) ) (! (= (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_4894_26208) ) (! (= (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_8919_8920) ) (! (= (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_8906_53) ) (! (= (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8867) (SummandMask1 T@PolymorphicMapType_8867) (SummandMask2 T@PolymorphicMapType_8867) (o_2@@15 T@Ref) (f_4@@15 T@Field_4894_26341) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8867_4894_29890#PolymorphicMapType_8867| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8867) (SummandMask1@@0 T@PolymorphicMapType_8867) (SummandMask2@@0 T@PolymorphicMapType_8867) (o_2@@16 T@Ref) (f_4@@16 T@Field_4894_26208) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8867_4894_26208#PolymorphicMapType_8867| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8867) (SummandMask1@@1 T@PolymorphicMapType_8867) (SummandMask2@@1 T@PolymorphicMapType_8867) (o_2@@17 T@Ref) (f_4@@17 T@Field_8919_8920) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8867_4894_8920#PolymorphicMapType_8867| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8867) (SummandMask1@@2 T@PolymorphicMapType_8867) (SummandMask2@@2 T@PolymorphicMapType_8867) (o_2@@18 T@Ref) (f_4@@18 T@Field_8906_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8867_4894_1198#PolymorphicMapType_8867| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8846) (o T@Ref) (f_3 T@Field_4894_26208) (v T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_8846 (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@22) (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@22) (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@22) (store (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@22) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8846 (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@22) (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@22) (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@22) (store (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@22) o f_3 v)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8846) (o@@0 T@Ref) (f_3@@0 T@Field_4894_26341) (v@@0 T@PolymorphicMapType_9395) ) (! (succHeap Heap@@23 (PolymorphicMapType_8846 (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@23) (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@23) (store (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@23) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8846 (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@23) (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@23) (store (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@23) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8846) (o@@1 T@Ref) (f_3@@1 T@Field_8919_8920) (v@@1 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_8846 (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@24) (store (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@24) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@24) (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8846 (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@24) (store (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@24) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@24) (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8846) (o@@2 T@Ref) (f_3@@2 T@Field_8906_53) (v@@2 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_8846 (store (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@25) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@25) (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@25) (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8846 (store (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@25) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@25) (|PolymorphicMapType_8846_4894_26385#PolymorphicMapType_8846| Heap@@25) (|PolymorphicMapType_8846_8906_26208#PolymorphicMapType_8846| Heap@@25)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_8919_8920) (Heap@@26 T@PolymorphicMapType_8846) ) (!  (=> (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@26) o@@3 $allocated) (select (|PolymorphicMapType_8846_4765_53#PolymorphicMapType_8846| Heap@@26) (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@26) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8846_4768_4769#PolymorphicMapType_8846| Heap@@26) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_4894_26208) (v_1@@0 T@FrameType) (q T@Field_4894_26208) (w@@0 T@FrameType) (r T@Field_4894_26208) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8906_8906 p@@1 v_1@@0 q w@@0) (InsidePredicate_8906_8906 q w@@0 r u)) (InsidePredicate_8906_8906 p@@1 v_1@@0 r u))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8906_8906 p@@1 v_1@@0 q w@@0) (InsidePredicate_8906_8906 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8846) (y@@11 T@Ref) (x@@11 T@Ref) ) (!  (and (= (foo_1_1 Heap@@27 y@@11 x@@11) (|foo_1_1'| Heap@@27 y@@11 x@@11)) (dummyFunction_1454 (|foo_1_1#triggerStateless| y@@11 x@@11)))
 :qid |stdinbpl.207:15|
 :skolemid |22|
 :pattern ( (foo_1_1 Heap@@27 y@@11 x@@11))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8846) (y@@12 T@Ref) (x@@12 T@Ref) ) (!  (and (= (foo_1_2 Heap@@28 y@@12 x@@12) (|foo_1_2'| Heap@@28 y@@12 x@@12)) (dummyFunction_1454 (|foo_1_2#triggerStateless| y@@12 x@@12)))
 :qid |stdinbpl.282:15|
 :skolemid |26|
 :pattern ( (foo_1_2 Heap@@28 y@@12 x@@12))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8846) (y@@13 T@Ref) (x@@13 T@Ref) ) (!  (and (= (foo_2_1 Heap@@29 y@@13 x@@13) (|foo_2_1'| Heap@@29 y@@13 x@@13)) (dummyFunction_1454 (|foo_2_1#triggerStateless| y@@13 x@@13)))
 :qid |stdinbpl.357:15|
 :skolemid |30|
 :pattern ( (foo_2_1 Heap@@29 y@@13 x@@13))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8846) (y@@14 T@Ref) (x@@14 T@Ref) ) (!  (and (= (foo_2_2 Heap@@30 y@@14 x@@14) (|foo_2_2'| Heap@@30 y@@14 x@@14)) (dummyFunction_1454 (|foo_2_2#triggerStateless| y@@14 x@@14)))
 :qid |stdinbpl.436:15|
 :skolemid |34|
 :pattern ( (foo_2_2 Heap@@30 y@@14 x@@14))
)))
; Valid

