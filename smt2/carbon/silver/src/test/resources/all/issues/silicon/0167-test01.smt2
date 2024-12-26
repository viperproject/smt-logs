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
(declare-sort T@Field_3768_53 0)
(declare-sort T@Field_3781_3782 0)
(declare-sort T@Field_3768_9893 0)
(declare-sort T@Field_3768_9760 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3729 0)) (((PolymorphicMapType_3729 (|PolymorphicMapType_3729_3768_53#PolymorphicMapType_3729| (Array T@Ref T@Field_3768_53 Real)) (|PolymorphicMapType_3729_3768_3782#PolymorphicMapType_3729| (Array T@Ref T@Field_3781_3782 Real)) (|PolymorphicMapType_3729_3768_9760#PolymorphicMapType_3729| (Array T@Ref T@Field_3768_9760 Real)) (|PolymorphicMapType_3729_3768_13454#PolymorphicMapType_3729| (Array T@Ref T@Field_3768_9893 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4257 0)) (((PolymorphicMapType_4257 (|PolymorphicMapType_4257_3768_53#PolymorphicMapType_4257| (Array T@Ref T@Field_3768_53 Bool)) (|PolymorphicMapType_4257_3768_3782#PolymorphicMapType_4257| (Array T@Ref T@Field_3781_3782 Bool)) (|PolymorphicMapType_4257_3768_9760#PolymorphicMapType_4257| (Array T@Ref T@Field_3768_9760 Bool)) (|PolymorphicMapType_4257_3768_10873#PolymorphicMapType_4257| (Array T@Ref T@Field_3768_9893 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3708 0)) (((PolymorphicMapType_3708 (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| (Array T@Ref T@Field_3768_53 Bool)) (|PolymorphicMapType_3708_1947_1948#PolymorphicMapType_3708| (Array T@Ref T@Field_3781_3782 T@Ref)) (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| (Array T@Ref T@Field_3768_9893 T@PolymorphicMapType_4257)) (|PolymorphicMapType_3708_3768_9760#PolymorphicMapType_3708| (Array T@Ref T@Field_3768_9760 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3708 T@PolymorphicMapType_3708) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3708 T@PolymorphicMapType_3708) Bool)
(declare-fun state (T@PolymorphicMapType_3708 T@PolymorphicMapType_3729) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3729) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4257)
(declare-fun |f'| (T@PolymorphicMapType_3708 Int) Bool)
(declare-fun dummyFunction_1320 (Bool) Bool)
(declare-fun |f#triggerStateless| (Int) Bool)
(declare-fun |g'| (T@PolymorphicMapType_3708 Int) Bool)
(declare-fun |g#triggerStateless| (Int) Bool)
(declare-fun |h'| (T@PolymorphicMapType_3708 Int) Bool)
(declare-fun |h#triggerStateless| (Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3708 T@PolymorphicMapType_3708 T@PolymorphicMapType_3729) Bool)
(declare-fun IsPredicateField_3768_9851 (T@Field_3768_9760) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3768 (T@Field_3768_9760) T@Field_3768_9893)
(declare-fun HasDirectPerm_3768_9824 (T@PolymorphicMapType_3729 T@Ref T@Field_3768_9760) Bool)
(declare-fun IsWandField_3768_11400 (T@Field_3768_9760) Bool)
(declare-fun WandMaskField_3768 (T@Field_3768_9760) T@Field_3768_9893)
(declare-fun dummyHeap () T@PolymorphicMapType_3708)
(declare-fun ZeroMask () T@PolymorphicMapType_3729)
(declare-fun $allocated () T@Field_3768_53)
(declare-fun InsidePredicate_3768_3768 (T@Field_3768_9760 T@FrameType T@Field_3768_9760 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3768_14363 (T@Field_3768_9893) Bool)
(declare-fun IsWandField_3768_14379 (T@Field_3768_9893) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3768_3782 (T@Field_3781_3782) Bool)
(declare-fun IsWandField_3768_3782 (T@Field_3781_3782) Bool)
(declare-fun IsPredicateField_3768_53 (T@Field_3768_53) Bool)
(declare-fun IsWandField_3768_53 (T@Field_3768_53) Bool)
(declare-fun HasDirectPerm_3768_14734 (T@PolymorphicMapType_3729 T@Ref T@Field_3768_9893) Bool)
(declare-fun HasDirectPerm_3768_3782 (T@PolymorphicMapType_3729 T@Ref T@Field_3781_3782) Bool)
(declare-fun HasDirectPerm_3768_53 (T@PolymorphicMapType_3729 T@Ref T@Field_3768_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3729 T@PolymorphicMapType_3729 T@PolymorphicMapType_3729) Bool)
(declare-fun |f#frame| (T@FrameType Int) Bool)
(declare-fun |g#frame| (T@FrameType Int) Bool)
(declare-fun |h#frame| (T@FrameType Int) Bool)
(declare-fun f_6@@0 (T@PolymorphicMapType_3708 Int) Bool)
(declare-fun g_3 (T@PolymorphicMapType_3708 Int) Bool)
(declare-fun h_3 (T@PolymorphicMapType_3708 Int) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_3708) (Heap1 T@PolymorphicMapType_3708) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3708) (Mask T@PolymorphicMapType_3729) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3708) (Heap1@@0 T@PolymorphicMapType_3708) (Heap2 T@PolymorphicMapType_3708) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3768_9893) ) (!  (not (select (|PolymorphicMapType_4257_3768_10873#PolymorphicMapType_4257| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4257_3768_10873#PolymorphicMapType_4257| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3768_9760) ) (!  (not (select (|PolymorphicMapType_4257_3768_9760#PolymorphicMapType_4257| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4257_3768_9760#PolymorphicMapType_4257| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3781_3782) ) (!  (not (select (|PolymorphicMapType_4257_3768_3782#PolymorphicMapType_4257| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4257_3768_3782#PolymorphicMapType_4257| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3768_53) ) (!  (not (select (|PolymorphicMapType_4257_3768_53#PolymorphicMapType_4257| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4257_3768_53#PolymorphicMapType_4257| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3708) (n Int) ) (! (dummyFunction_1320 (|f#triggerStateless| n))
 :qid |stdinbpl.192:15|
 :skolemid |23|
 :pattern ( (|f'| Heap@@0 n))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3708) (n@@0 Int) ) (! (dummyFunction_1320 (|g#triggerStateless| n@@0))
 :qid |stdinbpl.233:15|
 :skolemid |26|
 :pattern ( (|g'| Heap@@1 n@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3708) (n@@1 Int) ) (! (dummyFunction_1320 (|h#triggerStateless| n@@1))
 :qid |stdinbpl.285:15|
 :skolemid |29|
 :pattern ( (|h'| Heap@@2 n@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3708) (ExhaleHeap T@PolymorphicMapType_3708) (Mask@@0 T@PolymorphicMapType_3729) (pm_f_2 T@Field_3768_9760) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3768_9824 Mask@@0 null pm_f_2) (IsPredicateField_3768_9851 pm_f_2)) (= (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| Heap@@3) null (PredicateMaskField_3768 pm_f_2)) (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| ExhaleHeap) null (PredicateMaskField_3768 pm_f_2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_3768_9851 pm_f_2) (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| ExhaleHeap) null (PredicateMaskField_3768 pm_f_2)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3708) (ExhaleHeap@@0 T@PolymorphicMapType_3708) (Mask@@1 T@PolymorphicMapType_3729) (pm_f_2@@0 T@Field_3768_9760) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3768_9824 Mask@@1 null pm_f_2@@0) (IsWandField_3768_11400 pm_f_2@@0)) (= (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| Heap@@4) null (WandMaskField_3768 pm_f_2@@0)) (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| ExhaleHeap@@0) null (WandMaskField_3768 pm_f_2@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsWandField_3768_11400 pm_f_2@@0) (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| ExhaleHeap@@0) null (WandMaskField_3768 pm_f_2@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3708) (ExhaleHeap@@1 T@PolymorphicMapType_3708) (Mask@@2 T@PolymorphicMapType_3729) (pm_f_2@@1 T@Field_3768_9760) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3768_9824 Mask@@2 null pm_f_2@@1) (IsPredicateField_3768_9851 pm_f_2@@1)) (and (and (and (forall ((o2_2 T@Ref) (f_9 T@Field_3768_53) ) (!  (=> (select (|PolymorphicMapType_4257_3768_53#PolymorphicMapType_4257| (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| Heap@@5) null (PredicateMaskField_3768 pm_f_2@@1))) o2_2 f_9) (= (select (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| Heap@@5) o2_2 f_9) (select (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| ExhaleHeap@@1) o2_2 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| ExhaleHeap@@1) o2_2 f_9))
)) (forall ((o2_2@@0 T@Ref) (f_9@@0 T@Field_3781_3782) ) (!  (=> (select (|PolymorphicMapType_4257_3768_3782#PolymorphicMapType_4257| (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| Heap@@5) null (PredicateMaskField_3768 pm_f_2@@1))) o2_2@@0 f_9@@0) (= (select (|PolymorphicMapType_3708_1947_1948#PolymorphicMapType_3708| Heap@@5) o2_2@@0 f_9@@0) (select (|PolymorphicMapType_3708_1947_1948#PolymorphicMapType_3708| ExhaleHeap@@1) o2_2@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3708_1947_1948#PolymorphicMapType_3708| ExhaleHeap@@1) o2_2@@0 f_9@@0))
))) (forall ((o2_2@@1 T@Ref) (f_9@@1 T@Field_3768_9760) ) (!  (=> (select (|PolymorphicMapType_4257_3768_9760#PolymorphicMapType_4257| (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| Heap@@5) null (PredicateMaskField_3768 pm_f_2@@1))) o2_2@@1 f_9@@1) (= (select (|PolymorphicMapType_3708_3768_9760#PolymorphicMapType_3708| Heap@@5) o2_2@@1 f_9@@1) (select (|PolymorphicMapType_3708_3768_9760#PolymorphicMapType_3708| ExhaleHeap@@1) o2_2@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3708_3768_9760#PolymorphicMapType_3708| ExhaleHeap@@1) o2_2@@1 f_9@@1))
))) (forall ((o2_2@@2 T@Ref) (f_9@@2 T@Field_3768_9893) ) (!  (=> (select (|PolymorphicMapType_4257_3768_10873#PolymorphicMapType_4257| (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| Heap@@5) null (PredicateMaskField_3768 pm_f_2@@1))) o2_2@@2 f_9@@2) (= (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| Heap@@5) o2_2@@2 f_9@@2) (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| ExhaleHeap@@1) o2_2@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| ExhaleHeap@@1) o2_2@@2 f_9@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsPredicateField_3768_9851 pm_f_2@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3708) (ExhaleHeap@@2 T@PolymorphicMapType_3708) (Mask@@3 T@PolymorphicMapType_3729) (pm_f_2@@2 T@Field_3768_9760) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3768_9824 Mask@@3 null pm_f_2@@2) (IsWandField_3768_11400 pm_f_2@@2)) (and (and (and (forall ((o2_2@@3 T@Ref) (f_9@@3 T@Field_3768_53) ) (!  (=> (select (|PolymorphicMapType_4257_3768_53#PolymorphicMapType_4257| (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| Heap@@6) null (WandMaskField_3768 pm_f_2@@2))) o2_2@@3 f_9@@3) (= (select (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| Heap@@6) o2_2@@3 f_9@@3) (select (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| ExhaleHeap@@2) o2_2@@3 f_9@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| ExhaleHeap@@2) o2_2@@3 f_9@@3))
)) (forall ((o2_2@@4 T@Ref) (f_9@@4 T@Field_3781_3782) ) (!  (=> (select (|PolymorphicMapType_4257_3768_3782#PolymorphicMapType_4257| (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| Heap@@6) null (WandMaskField_3768 pm_f_2@@2))) o2_2@@4 f_9@@4) (= (select (|PolymorphicMapType_3708_1947_1948#PolymorphicMapType_3708| Heap@@6) o2_2@@4 f_9@@4) (select (|PolymorphicMapType_3708_1947_1948#PolymorphicMapType_3708| ExhaleHeap@@2) o2_2@@4 f_9@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3708_1947_1948#PolymorphicMapType_3708| ExhaleHeap@@2) o2_2@@4 f_9@@4))
))) (forall ((o2_2@@5 T@Ref) (f_9@@5 T@Field_3768_9760) ) (!  (=> (select (|PolymorphicMapType_4257_3768_9760#PolymorphicMapType_4257| (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| Heap@@6) null (WandMaskField_3768 pm_f_2@@2))) o2_2@@5 f_9@@5) (= (select (|PolymorphicMapType_3708_3768_9760#PolymorphicMapType_3708| Heap@@6) o2_2@@5 f_9@@5) (select (|PolymorphicMapType_3708_3768_9760#PolymorphicMapType_3708| ExhaleHeap@@2) o2_2@@5 f_9@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3708_3768_9760#PolymorphicMapType_3708| ExhaleHeap@@2) o2_2@@5 f_9@@5))
))) (forall ((o2_2@@6 T@Ref) (f_9@@6 T@Field_3768_9893) ) (!  (=> (select (|PolymorphicMapType_4257_3768_10873#PolymorphicMapType_4257| (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| Heap@@6) null (WandMaskField_3768 pm_f_2@@2))) o2_2@@6 f_9@@6) (= (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| Heap@@6) o2_2@@6 f_9@@6) (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| ExhaleHeap@@2) o2_2@@6 f_9@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| ExhaleHeap@@2) o2_2@@6 f_9@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsWandField_3768_11400 pm_f_2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3708) (ExhaleHeap@@3 T@PolymorphicMapType_3708) (Mask@@4 T@PolymorphicMapType_3729) (o_6 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| Heap@@7) o_6 $allocated) (select (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| ExhaleHeap@@3) o_6 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| ExhaleHeap@@3) o_6 $allocated))
)))
(assert (forall ((p T@Field_3768_9760) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3768_3768 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3768_3768 p v_1 p w))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3708) (ExhaleHeap@@4 T@PolymorphicMapType_3708) (Mask@@5 T@PolymorphicMapType_3729) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@8 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3729) (o_2@@3 T@Ref) (f_4@@3 T@Field_3768_9893) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3729_3768_13454#PolymorphicMapType_3729| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3768_14363 f_4@@3))) (not (IsWandField_3768_14379 f_4@@3))) (<= (select (|PolymorphicMapType_3729_3768_13454#PolymorphicMapType_3729| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3729_3768_13454#PolymorphicMapType_3729| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3729) (o_2@@4 T@Ref) (f_4@@4 T@Field_3768_9760) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3729_3768_9760#PolymorphicMapType_3729| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3768_9851 f_4@@4))) (not (IsWandField_3768_11400 f_4@@4))) (<= (select (|PolymorphicMapType_3729_3768_9760#PolymorphicMapType_3729| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3729_3768_9760#PolymorphicMapType_3729| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3729) (o_2@@5 T@Ref) (f_4@@5 T@Field_3781_3782) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3729_3768_3782#PolymorphicMapType_3729| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3768_3782 f_4@@5))) (not (IsWandField_3768_3782 f_4@@5))) (<= (select (|PolymorphicMapType_3729_3768_3782#PolymorphicMapType_3729| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3729_3768_3782#PolymorphicMapType_3729| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3729) (o_2@@6 T@Ref) (f_4@@6 T@Field_3768_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3729_3768_53#PolymorphicMapType_3729| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3768_53 f_4@@6))) (not (IsWandField_3768_53 f_4@@6))) (<= (select (|PolymorphicMapType_3729_3768_53#PolymorphicMapType_3729| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3729_3768_53#PolymorphicMapType_3729| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3729) (o_2@@7 T@Ref) (f_4@@7 T@Field_3768_9893) ) (! (= (HasDirectPerm_3768_14734 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3729_3768_13454#PolymorphicMapType_3729| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3768_14734 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3729) (o_2@@8 T@Ref) (f_4@@8 T@Field_3768_9760) ) (! (= (HasDirectPerm_3768_9824 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3729_3768_9760#PolymorphicMapType_3729| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3768_9824 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3729) (o_2@@9 T@Ref) (f_4@@9 T@Field_3781_3782) ) (! (= (HasDirectPerm_3768_3782 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3729_3768_3782#PolymorphicMapType_3729| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3768_3782 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3729) (o_2@@10 T@Ref) (f_4@@10 T@Field_3768_53) ) (! (= (HasDirectPerm_3768_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3729_3768_53#PolymorphicMapType_3729| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3768_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3708) (ExhaleHeap@@5 T@PolymorphicMapType_3708) (Mask@@14 T@PolymorphicMapType_3729) (o_6@@0 T@Ref) (f_9@@7 T@Field_3768_9893) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_3768_14734 Mask@@14 o_6@@0 f_9@@7) (= (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| Heap@@9) o_6@@0 f_9@@7) (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| ExhaleHeap@@5) o_6@@0 f_9@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| ExhaleHeap@@5) o_6@@0 f_9@@7))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3708) (ExhaleHeap@@6 T@PolymorphicMapType_3708) (Mask@@15 T@PolymorphicMapType_3729) (o_6@@1 T@Ref) (f_9@@8 T@Field_3768_9760) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_3768_9824 Mask@@15 o_6@@1 f_9@@8) (= (select (|PolymorphicMapType_3708_3768_9760#PolymorphicMapType_3708| Heap@@10) o_6@@1 f_9@@8) (select (|PolymorphicMapType_3708_3768_9760#PolymorphicMapType_3708| ExhaleHeap@@6) o_6@@1 f_9@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_3708_3768_9760#PolymorphicMapType_3708| ExhaleHeap@@6) o_6@@1 f_9@@8))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3708) (ExhaleHeap@@7 T@PolymorphicMapType_3708) (Mask@@16 T@PolymorphicMapType_3729) (o_6@@2 T@Ref) (f_9@@9 T@Field_3781_3782) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_3768_3782 Mask@@16 o_6@@2 f_9@@9) (= (select (|PolymorphicMapType_3708_1947_1948#PolymorphicMapType_3708| Heap@@11) o_6@@2 f_9@@9) (select (|PolymorphicMapType_3708_1947_1948#PolymorphicMapType_3708| ExhaleHeap@@7) o_6@@2 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_3708_1947_1948#PolymorphicMapType_3708| ExhaleHeap@@7) o_6@@2 f_9@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3708) (ExhaleHeap@@8 T@PolymorphicMapType_3708) (Mask@@17 T@PolymorphicMapType_3729) (o_6@@3 T@Ref) (f_9@@10 T@Field_3768_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_3768_53 Mask@@17 o_6@@3 f_9@@10) (= (select (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| Heap@@12) o_6@@3 f_9@@10) (select (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| ExhaleHeap@@8) o_6@@3 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| ExhaleHeap@@8) o_6@@3 f_9@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3768_9893) ) (! (= (select (|PolymorphicMapType_3729_3768_13454#PolymorphicMapType_3729| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3729_3768_13454#PolymorphicMapType_3729| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3768_9760) ) (! (= (select (|PolymorphicMapType_3729_3768_9760#PolymorphicMapType_3729| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3729_3768_9760#PolymorphicMapType_3729| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3781_3782) ) (! (= (select (|PolymorphicMapType_3729_3768_3782#PolymorphicMapType_3729| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3729_3768_3782#PolymorphicMapType_3729| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3768_53) ) (! (= (select (|PolymorphicMapType_3729_3768_53#PolymorphicMapType_3729| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3729_3768_53#PolymorphicMapType_3729| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3729) (SummandMask1 T@PolymorphicMapType_3729) (SummandMask2 T@PolymorphicMapType_3729) (o_2@@15 T@Ref) (f_4@@15 T@Field_3768_9893) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3729_3768_13454#PolymorphicMapType_3729| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3729_3768_13454#PolymorphicMapType_3729| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3729_3768_13454#PolymorphicMapType_3729| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3729_3768_13454#PolymorphicMapType_3729| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3729_3768_13454#PolymorphicMapType_3729| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3729_3768_13454#PolymorphicMapType_3729| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3729) (SummandMask1@@0 T@PolymorphicMapType_3729) (SummandMask2@@0 T@PolymorphicMapType_3729) (o_2@@16 T@Ref) (f_4@@16 T@Field_3768_9760) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3729_3768_9760#PolymorphicMapType_3729| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3729_3768_9760#PolymorphicMapType_3729| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3729_3768_9760#PolymorphicMapType_3729| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3729_3768_9760#PolymorphicMapType_3729| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3729_3768_9760#PolymorphicMapType_3729| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3729_3768_9760#PolymorphicMapType_3729| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3729) (SummandMask1@@1 T@PolymorphicMapType_3729) (SummandMask2@@1 T@PolymorphicMapType_3729) (o_2@@17 T@Ref) (f_4@@17 T@Field_3781_3782) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3729_3768_3782#PolymorphicMapType_3729| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3729_3768_3782#PolymorphicMapType_3729| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3729_3768_3782#PolymorphicMapType_3729| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3729_3768_3782#PolymorphicMapType_3729| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3729_3768_3782#PolymorphicMapType_3729| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3729_3768_3782#PolymorphicMapType_3729| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3729) (SummandMask1@@2 T@PolymorphicMapType_3729) (SummandMask2@@2 T@PolymorphicMapType_3729) (o_2@@18 T@Ref) (f_4@@18 T@Field_3768_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3729_3768_53#PolymorphicMapType_3729| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3729_3768_53#PolymorphicMapType_3729| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3729_3768_53#PolymorphicMapType_3729| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3729_3768_53#PolymorphicMapType_3729| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3729_3768_53#PolymorphicMapType_3729| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3729_3768_53#PolymorphicMapType_3729| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3708) (Mask@@18 T@PolymorphicMapType_3729) (n@@2 Int) ) (!  (=> (state Heap@@13 Mask@@18) (= (|f'| Heap@@13 n@@2) (|f#frame| EmptyFrame n@@2)))
 :qid |stdinbpl.199:15|
 :skolemid |24|
 :pattern ( (state Heap@@13 Mask@@18) (|f'| Heap@@13 n@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3708) (Mask@@19 T@PolymorphicMapType_3729) (n@@3 Int) ) (!  (=> (state Heap@@14 Mask@@19) (= (|g'| Heap@@14 n@@3) (|g#frame| EmptyFrame n@@3)))
 :qid |stdinbpl.240:15|
 :skolemid |27|
 :pattern ( (state Heap@@14 Mask@@19) (|g'| Heap@@14 n@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3708) (Mask@@20 T@PolymorphicMapType_3729) (n@@4 Int) ) (!  (=> (state Heap@@15 Mask@@20) (= (|h'| Heap@@15 n@@4) (|h#frame| EmptyFrame n@@4)))
 :qid |stdinbpl.292:15|
 :skolemid |30|
 :pattern ( (state Heap@@15 Mask@@20) (|h'| Heap@@15 n@@4))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3708) (n@@5 Int) ) (!  (and (= (f_6@@0 Heap@@16 n@@5) (|f'| Heap@@16 n@@5)) (dummyFunction_1320 (|f#triggerStateless| n@@5)))
 :qid |stdinbpl.188:15|
 :skolemid |22|
 :pattern ( (f_6@@0 Heap@@16 n@@5))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3708) (n@@6 Int) ) (!  (and (= (g_3 Heap@@17 n@@6) (|g'| Heap@@17 n@@6)) (dummyFunction_1320 (|g#triggerStateless| n@@6)))
 :qid |stdinbpl.229:15|
 :skolemid |25|
 :pattern ( (g_3 Heap@@17 n@@6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3708) (n@@7 Int) ) (!  (and (= (h_3 Heap@@18 n@@7) (|h'| Heap@@18 n@@7)) (dummyFunction_1320 (|h#triggerStateless| n@@7)))
 :qid |stdinbpl.281:15|
 :skolemid |28|
 :pattern ( (h_3 Heap@@18 n@@7))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3708) (o_5 T@Ref) (f_10 T@Field_3768_9760) (v T@FrameType) ) (! (succHeap Heap@@19 (PolymorphicMapType_3708 (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| Heap@@19) (|PolymorphicMapType_3708_1947_1948#PolymorphicMapType_3708| Heap@@19) (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| Heap@@19) (store (|PolymorphicMapType_3708_3768_9760#PolymorphicMapType_3708| Heap@@19) o_5 f_10 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3708 (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| Heap@@19) (|PolymorphicMapType_3708_1947_1948#PolymorphicMapType_3708| Heap@@19) (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| Heap@@19) (store (|PolymorphicMapType_3708_3768_9760#PolymorphicMapType_3708| Heap@@19) o_5 f_10 v)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3708) (o_5@@0 T@Ref) (f_10@@0 T@Field_3768_9893) (v@@0 T@PolymorphicMapType_4257) ) (! (succHeap Heap@@20 (PolymorphicMapType_3708 (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| Heap@@20) (|PolymorphicMapType_3708_1947_1948#PolymorphicMapType_3708| Heap@@20) (store (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| Heap@@20) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_3708_3768_9760#PolymorphicMapType_3708| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3708 (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| Heap@@20) (|PolymorphicMapType_3708_1947_1948#PolymorphicMapType_3708| Heap@@20) (store (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| Heap@@20) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_3708_3768_9760#PolymorphicMapType_3708| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_3708) (o_5@@1 T@Ref) (f_10@@1 T@Field_3781_3782) (v@@1 T@Ref) ) (! (succHeap Heap@@21 (PolymorphicMapType_3708 (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| Heap@@21) (store (|PolymorphicMapType_3708_1947_1948#PolymorphicMapType_3708| Heap@@21) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| Heap@@21) (|PolymorphicMapType_3708_3768_9760#PolymorphicMapType_3708| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3708 (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| Heap@@21) (store (|PolymorphicMapType_3708_1947_1948#PolymorphicMapType_3708| Heap@@21) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| Heap@@21) (|PolymorphicMapType_3708_3768_9760#PolymorphicMapType_3708| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_3708) (o_5@@2 T@Ref) (f_10@@2 T@Field_3768_53) (v@@2 Bool) ) (! (succHeap Heap@@22 (PolymorphicMapType_3708 (store (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| Heap@@22) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_3708_1947_1948#PolymorphicMapType_3708| Heap@@22) (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| Heap@@22) (|PolymorphicMapType_3708_3768_9760#PolymorphicMapType_3708| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3708 (store (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| Heap@@22) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_3708_1947_1948#PolymorphicMapType_3708| Heap@@22) (|PolymorphicMapType_3708_3768_9937#PolymorphicMapType_3708| Heap@@22) (|PolymorphicMapType_3708_3768_9760#PolymorphicMapType_3708| Heap@@22)))
)))
(assert (forall ((o_5@@3 T@Ref) (f_3 T@Field_3781_3782) (Heap@@23 T@PolymorphicMapType_3708) ) (!  (=> (select (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| Heap@@23) o_5@@3 $allocated) (select (|PolymorphicMapType_3708_1944_53#PolymorphicMapType_3708| Heap@@23) (select (|PolymorphicMapType_3708_1947_1948#PolymorphicMapType_3708| Heap@@23) o_5@@3 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3708_1947_1948#PolymorphicMapType_3708| Heap@@23) o_5@@3 f_3))
)))
(assert (forall ((p@@1 T@Field_3768_9760) (v_1@@0 T@FrameType) (q T@Field_3768_9760) (w@@0 T@FrameType) (r T@Field_3768_9760) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3768_3768 p@@1 v_1@@0 q w@@0) (InsidePredicate_3768_3768 q w@@0 r u)) (InsidePredicate_3768_3768 p@@1 v_1@@0 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3768_3768 p@@1 v_1@@0 q w@@0) (InsidePredicate_3768_3768 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@24 () T@PolymorphicMapType_3708)
(declare-fun n@@8 () Int)
(declare-fun i_14 () Int)
(declare-fun AssumeFunctionsAbove () Int)
(set-info :boogie-vc-id test01)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon17_Else_correct  (=> (= (ControlFlow 0 10) (- 0 9)) (h_3 Heap@@24 n@@8))))
(let ((anon17_Then_correct true))
(let ((anon16_Else_correct  (=> (and (g_3 Heap@@24 n@@8) (state Heap@@24 ZeroMask)) (=> (and (and (state Heap@@24 ZeroMask) (= n@@8 5)) (and (state Heap@@24 ZeroMask) (state Heap@@24 ZeroMask))) (and (=> (= (ControlFlow 0 11) 8) anon17_Then_correct) (=> (= (ControlFlow 0 11) 10) anon17_Else_correct))))))
(let ((anon16_Then_correct  (=> (= (ControlFlow 0 7) (- 0 6)) (f_6@@0 Heap@@24 n@@8))))
(let ((anon15_Else_correct  (=> (and (f_6@@0 Heap@@24 n@@8) (state Heap@@24 ZeroMask)) (and (=> (= (ControlFlow 0 12) 7) anon16_Then_correct) (=> (= (ControlFlow 0 12) 11) anon16_Else_correct)))))
(let ((anon15_Then_correct true))
(let ((anon12_Else_correct  (=> (and (and (forall ((i_1 Int) ) (!  (=> (> i_1 4) (h_3 Heap@@24 i_1))
 :qid |stdinbpl.353:20|
 :skolemid |31|
 :pattern ( (|g#frame| EmptyFrame i_1))
)) (state Heap@@24 ZeroMask)) (and (state Heap@@24 ZeroMask) (state Heap@@24 ZeroMask))) (and (=> (= (ControlFlow 0 13) 5) anon15_Then_correct) (=> (= (ControlFlow 0 13) 12) anon15_Else_correct)))))
(let ((anon14_Then_correct true))
(let ((anon4_correct true))
(let ((anon13_Then_correct  (=> (> i_14 4) (and (=> (= (ControlFlow 0 4) 3) anon14_Then_correct) (=> (= (ControlFlow 0 4) 1) anon4_correct)))))
(let ((anon13_Else_correct  (=> (and (>= 4 i_14) (= (ControlFlow 0 2) 1)) anon4_correct)))
(let ((anon0_correct  (=> (and (and (state Heap@@24 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (state Heap@@24 ZeroMask))) (and (and (=> (= (ControlFlow 0 14) 13) anon12_Else_correct) (=> (= (ControlFlow 0 14) 4) anon13_Then_correct)) (=> (= (ControlFlow 0 14) 2) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15) 14) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
