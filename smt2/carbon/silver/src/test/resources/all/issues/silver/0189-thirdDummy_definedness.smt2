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
(declare-sort T@Field_3531_53 0)
(declare-sort T@Field_3544_3545 0)
(declare-sort T@Field_3531_9376 0)
(declare-sort T@Field_3531_9243 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3492 0)) (((PolymorphicMapType_3492 (|PolymorphicMapType_3492_3531_53#PolymorphicMapType_3492| (Array T@Ref T@Field_3531_53 Real)) (|PolymorphicMapType_3492_3531_3545#PolymorphicMapType_3492| (Array T@Ref T@Field_3544_3545 Real)) (|PolymorphicMapType_3492_3531_9243#PolymorphicMapType_3492| (Array T@Ref T@Field_3531_9243 Real)) (|PolymorphicMapType_3492_3531_12937#PolymorphicMapType_3492| (Array T@Ref T@Field_3531_9376 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4020 0)) (((PolymorphicMapType_4020 (|PolymorphicMapType_4020_3531_53#PolymorphicMapType_4020| (Array T@Ref T@Field_3531_53 Bool)) (|PolymorphicMapType_4020_3531_3545#PolymorphicMapType_4020| (Array T@Ref T@Field_3544_3545 Bool)) (|PolymorphicMapType_4020_3531_9243#PolymorphicMapType_4020| (Array T@Ref T@Field_3531_9243 Bool)) (|PolymorphicMapType_4020_3531_10356#PolymorphicMapType_4020| (Array T@Ref T@Field_3531_9376 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3471 0)) (((PolymorphicMapType_3471 (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| (Array T@Ref T@Field_3531_53 Bool)) (|PolymorphicMapType_3471_1862_1863#PolymorphicMapType_3471| (Array T@Ref T@Field_3544_3545 T@Ref)) (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| (Array T@Ref T@Field_3531_9376 T@PolymorphicMapType_4020)) (|PolymorphicMapType_3471_3531_9243#PolymorphicMapType_3471| (Array T@Ref T@Field_3531_9243 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3471 T@PolymorphicMapType_3471) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3471 T@PolymorphicMapType_3471) Bool)
(declare-fun state (T@PolymorphicMapType_3471 T@PolymorphicMapType_3492) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3492) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4020)
(declare-fun |otherDummy'| (T@PolymorphicMapType_3471 Int) Bool)
(declare-fun dummyFunction_1320 (Bool) Bool)
(declare-fun |otherDummy#triggerStateless| (Int) Bool)
(declare-fun |thirdDummy'| (T@PolymorphicMapType_3471 Int) Bool)
(declare-fun |thirdDummy#triggerStateless| (Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3471 T@PolymorphicMapType_3471 T@PolymorphicMapType_3492) Bool)
(declare-fun IsPredicateField_3531_9334 (T@Field_3531_9243) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3531 (T@Field_3531_9243) T@Field_3531_9376)
(declare-fun HasDirectPerm_3531_9307 (T@PolymorphicMapType_3492 T@Ref T@Field_3531_9243) Bool)
(declare-fun IsWandField_3531_10883 (T@Field_3531_9243) Bool)
(declare-fun WandMaskField_3531 (T@Field_3531_9243) T@Field_3531_9376)
(declare-fun dummyHeap () T@PolymorphicMapType_3471)
(declare-fun ZeroMask () T@PolymorphicMapType_3492)
(declare-fun $allocated () T@Field_3531_53)
(declare-fun InsidePredicate_3531_3531 (T@Field_3531_9243 T@FrameType T@Field_3531_9243 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3531_13846 (T@Field_3531_9376) Bool)
(declare-fun IsWandField_3531_13862 (T@Field_3531_9376) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3531_3545 (T@Field_3544_3545) Bool)
(declare-fun IsWandField_3531_3545 (T@Field_3544_3545) Bool)
(declare-fun IsPredicateField_3531_53 (T@Field_3531_53) Bool)
(declare-fun IsWandField_3531_53 (T@Field_3531_53) Bool)
(declare-fun HasDirectPerm_3531_14217 (T@PolymorphicMapType_3492 T@Ref T@Field_3531_9376) Bool)
(declare-fun HasDirectPerm_3531_3545 (T@PolymorphicMapType_3492 T@Ref T@Field_3544_3545) Bool)
(declare-fun HasDirectPerm_3531_53 (T@PolymorphicMapType_3492 T@Ref T@Field_3531_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3492 T@PolymorphicMapType_3492 T@PolymorphicMapType_3492) Bool)
(declare-fun |otherDummy#frame| (T@FrameType Int) Bool)
(declare-fun |thirdDummy#frame| (T@FrameType Int) Bool)
(declare-fun otherDummy (T@PolymorphicMapType_3471 Int) Bool)
(declare-fun thirdDummy (T@PolymorphicMapType_3471 Int) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_3471) (Heap1 T@PolymorphicMapType_3471) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3471) (Mask T@PolymorphicMapType_3492) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3471) (Heap1@@0 T@PolymorphicMapType_3471) (Heap2 T@PolymorphicMapType_3471) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3531_9376) ) (!  (not (select (|PolymorphicMapType_4020_3531_10356#PolymorphicMapType_4020| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4020_3531_10356#PolymorphicMapType_4020| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3531_9243) ) (!  (not (select (|PolymorphicMapType_4020_3531_9243#PolymorphicMapType_4020| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4020_3531_9243#PolymorphicMapType_4020| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3544_3545) ) (!  (not (select (|PolymorphicMapType_4020_3531_3545#PolymorphicMapType_4020| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4020_3531_3545#PolymorphicMapType_4020| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3531_53) ) (!  (not (select (|PolymorphicMapType_4020_3531_53#PolymorphicMapType_4020| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4020_3531_53#PolymorphicMapType_4020| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3471) (i Int) ) (! (dummyFunction_1320 (|otherDummy#triggerStateless| i))
 :qid |stdinbpl.191:15|
 :skolemid |23|
 :pattern ( (|otherDummy'| Heap@@0 i))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3471) (i@@0 Int) ) (! (dummyFunction_1320 (|thirdDummy#triggerStateless| i@@0))
 :qid |stdinbpl.232:15|
 :skolemid |26|
 :pattern ( (|thirdDummy'| Heap@@1 i@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3471) (ExhaleHeap T@PolymorphicMapType_3471) (Mask@@0 T@PolymorphicMapType_3492) (pm_f_5 T@Field_3531_9243) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3531_9307 Mask@@0 null pm_f_5) (IsPredicateField_3531_9334 pm_f_5)) (= (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| Heap@@2) null (PredicateMaskField_3531 pm_f_5)) (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| ExhaleHeap) null (PredicateMaskField_3531 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_3531_9334 pm_f_5) (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| ExhaleHeap) null (PredicateMaskField_3531 pm_f_5)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3471) (ExhaleHeap@@0 T@PolymorphicMapType_3471) (Mask@@1 T@PolymorphicMapType_3492) (pm_f_5@@0 T@Field_3531_9243) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3531_9307 Mask@@1 null pm_f_5@@0) (IsWandField_3531_10883 pm_f_5@@0)) (= (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| Heap@@3) null (WandMaskField_3531 pm_f_5@@0)) (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| ExhaleHeap@@0) null (WandMaskField_3531 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_3531_10883 pm_f_5@@0) (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| ExhaleHeap@@0) null (WandMaskField_3531 pm_f_5@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3471) (ExhaleHeap@@1 T@PolymorphicMapType_3471) (Mask@@2 T@PolymorphicMapType_3492) (pm_f_5@@1 T@Field_3531_9243) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3531_9307 Mask@@2 null pm_f_5@@1) (IsPredicateField_3531_9334 pm_f_5@@1)) (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_3531_53) ) (!  (=> (select (|PolymorphicMapType_4020_3531_53#PolymorphicMapType_4020| (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| Heap@@4) null (PredicateMaskField_3531 pm_f_5@@1))) o2_5 f_16) (= (select (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| Heap@@4) o2_5 f_16) (select (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| ExhaleHeap@@1) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| ExhaleHeap@@1) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_3544_3545) ) (!  (=> (select (|PolymorphicMapType_4020_3531_3545#PolymorphicMapType_4020| (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| Heap@@4) null (PredicateMaskField_3531 pm_f_5@@1))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_3471_1862_1863#PolymorphicMapType_3471| Heap@@4) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_3471_1862_1863#PolymorphicMapType_3471| ExhaleHeap@@1) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3471_1862_1863#PolymorphicMapType_3471| ExhaleHeap@@1) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_3531_9243) ) (!  (=> (select (|PolymorphicMapType_4020_3531_9243#PolymorphicMapType_4020| (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| Heap@@4) null (PredicateMaskField_3531 pm_f_5@@1))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_3471_3531_9243#PolymorphicMapType_3471| Heap@@4) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_3471_3531_9243#PolymorphicMapType_3471| ExhaleHeap@@1) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3471_3531_9243#PolymorphicMapType_3471| ExhaleHeap@@1) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_3531_9376) ) (!  (=> (select (|PolymorphicMapType_4020_3531_10356#PolymorphicMapType_4020| (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| Heap@@4) null (PredicateMaskField_3531 pm_f_5@@1))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| Heap@@4) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| ExhaleHeap@@1) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| ExhaleHeap@@1) o2_5@@2 f_16@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_3531_9334 pm_f_5@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3471) (ExhaleHeap@@2 T@PolymorphicMapType_3471) (Mask@@3 T@PolymorphicMapType_3492) (pm_f_5@@2 T@Field_3531_9243) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3531_9307 Mask@@3 null pm_f_5@@2) (IsWandField_3531_10883 pm_f_5@@2)) (and (and (and (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_3531_53) ) (!  (=> (select (|PolymorphicMapType_4020_3531_53#PolymorphicMapType_4020| (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| Heap@@5) null (WandMaskField_3531 pm_f_5@@2))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| Heap@@5) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| ExhaleHeap@@2) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| ExhaleHeap@@2) o2_5@@3 f_16@@3))
)) (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_3544_3545) ) (!  (=> (select (|PolymorphicMapType_4020_3531_3545#PolymorphicMapType_4020| (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| Heap@@5) null (WandMaskField_3531 pm_f_5@@2))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_3471_1862_1863#PolymorphicMapType_3471| Heap@@5) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_3471_1862_1863#PolymorphicMapType_3471| ExhaleHeap@@2) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3471_1862_1863#PolymorphicMapType_3471| ExhaleHeap@@2) o2_5@@4 f_16@@4))
))) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_3531_9243) ) (!  (=> (select (|PolymorphicMapType_4020_3531_9243#PolymorphicMapType_4020| (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| Heap@@5) null (WandMaskField_3531 pm_f_5@@2))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_3471_3531_9243#PolymorphicMapType_3471| Heap@@5) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_3471_3531_9243#PolymorphicMapType_3471| ExhaleHeap@@2) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3471_3531_9243#PolymorphicMapType_3471| ExhaleHeap@@2) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_3531_9376) ) (!  (=> (select (|PolymorphicMapType_4020_3531_10356#PolymorphicMapType_4020| (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| Heap@@5) null (WandMaskField_3531 pm_f_5@@2))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| Heap@@5) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| ExhaleHeap@@2) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| ExhaleHeap@@2) o2_5@@6 f_16@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_3531_10883 pm_f_5@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3471) (ExhaleHeap@@3 T@PolymorphicMapType_3471) (Mask@@4 T@PolymorphicMapType_3492) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| Heap@@6) o_12 $allocated) (select (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| ExhaleHeap@@3) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| ExhaleHeap@@3) o_12 $allocated))
)))
(assert (forall ((p T@Field_3531_9243) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3531_3531 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3531_3531 p v_1 p w))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3471) (ExhaleHeap@@4 T@PolymorphicMapType_3471) (Mask@@5 T@PolymorphicMapType_3492) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@7 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3492) (o_2@@3 T@Ref) (f_4@@3 T@Field_3531_9376) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3492_3531_12937#PolymorphicMapType_3492| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3531_13846 f_4@@3))) (not (IsWandField_3531_13862 f_4@@3))) (<= (select (|PolymorphicMapType_3492_3531_12937#PolymorphicMapType_3492| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3492_3531_12937#PolymorphicMapType_3492| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3492) (o_2@@4 T@Ref) (f_4@@4 T@Field_3531_9243) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3492_3531_9243#PolymorphicMapType_3492| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3531_9334 f_4@@4))) (not (IsWandField_3531_10883 f_4@@4))) (<= (select (|PolymorphicMapType_3492_3531_9243#PolymorphicMapType_3492| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3492_3531_9243#PolymorphicMapType_3492| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3492) (o_2@@5 T@Ref) (f_4@@5 T@Field_3544_3545) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3492_3531_3545#PolymorphicMapType_3492| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3531_3545 f_4@@5))) (not (IsWandField_3531_3545 f_4@@5))) (<= (select (|PolymorphicMapType_3492_3531_3545#PolymorphicMapType_3492| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3492_3531_3545#PolymorphicMapType_3492| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3492) (o_2@@6 T@Ref) (f_4@@6 T@Field_3531_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3492_3531_53#PolymorphicMapType_3492| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3531_53 f_4@@6))) (not (IsWandField_3531_53 f_4@@6))) (<= (select (|PolymorphicMapType_3492_3531_53#PolymorphicMapType_3492| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3492_3531_53#PolymorphicMapType_3492| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3492) (o_2@@7 T@Ref) (f_4@@7 T@Field_3531_9376) ) (! (= (HasDirectPerm_3531_14217 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3492_3531_12937#PolymorphicMapType_3492| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3531_14217 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3492) (o_2@@8 T@Ref) (f_4@@8 T@Field_3531_9243) ) (! (= (HasDirectPerm_3531_9307 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3492_3531_9243#PolymorphicMapType_3492| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3531_9307 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3492) (o_2@@9 T@Ref) (f_4@@9 T@Field_3544_3545) ) (! (= (HasDirectPerm_3531_3545 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3492_3531_3545#PolymorphicMapType_3492| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3531_3545 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3492) (o_2@@10 T@Ref) (f_4@@10 T@Field_3531_53) ) (! (= (HasDirectPerm_3531_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3492_3531_53#PolymorphicMapType_3492| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3531_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3471) (ExhaleHeap@@5 T@PolymorphicMapType_3471) (Mask@@14 T@PolymorphicMapType_3492) (o_12@@0 T@Ref) (f_16@@7 T@Field_3531_9376) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_3531_14217 Mask@@14 o_12@@0 f_16@@7) (= (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| Heap@@8) o_12@@0 f_16@@7) (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| ExhaleHeap@@5) o_12@@0 f_16@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| ExhaleHeap@@5) o_12@@0 f_16@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3471) (ExhaleHeap@@6 T@PolymorphicMapType_3471) (Mask@@15 T@PolymorphicMapType_3492) (o_12@@1 T@Ref) (f_16@@8 T@Field_3531_9243) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_3531_9307 Mask@@15 o_12@@1 f_16@@8) (= (select (|PolymorphicMapType_3471_3531_9243#PolymorphicMapType_3471| Heap@@9) o_12@@1 f_16@@8) (select (|PolymorphicMapType_3471_3531_9243#PolymorphicMapType_3471| ExhaleHeap@@6) o_12@@1 f_16@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_3471_3531_9243#PolymorphicMapType_3471| ExhaleHeap@@6) o_12@@1 f_16@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3471) (ExhaleHeap@@7 T@PolymorphicMapType_3471) (Mask@@16 T@PolymorphicMapType_3492) (o_12@@2 T@Ref) (f_16@@9 T@Field_3544_3545) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_3531_3545 Mask@@16 o_12@@2 f_16@@9) (= (select (|PolymorphicMapType_3471_1862_1863#PolymorphicMapType_3471| Heap@@10) o_12@@2 f_16@@9) (select (|PolymorphicMapType_3471_1862_1863#PolymorphicMapType_3471| ExhaleHeap@@7) o_12@@2 f_16@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_3471_1862_1863#PolymorphicMapType_3471| ExhaleHeap@@7) o_12@@2 f_16@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3471) (ExhaleHeap@@8 T@PolymorphicMapType_3471) (Mask@@17 T@PolymorphicMapType_3492) (o_12@@3 T@Ref) (f_16@@10 T@Field_3531_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_3531_53 Mask@@17 o_12@@3 f_16@@10) (= (select (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| Heap@@11) o_12@@3 f_16@@10) (select (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| ExhaleHeap@@8) o_12@@3 f_16@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| ExhaleHeap@@8) o_12@@3 f_16@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3531_9376) ) (! (= (select (|PolymorphicMapType_3492_3531_12937#PolymorphicMapType_3492| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3492_3531_12937#PolymorphicMapType_3492| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3531_9243) ) (! (= (select (|PolymorphicMapType_3492_3531_9243#PolymorphicMapType_3492| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3492_3531_9243#PolymorphicMapType_3492| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3544_3545) ) (! (= (select (|PolymorphicMapType_3492_3531_3545#PolymorphicMapType_3492| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3492_3531_3545#PolymorphicMapType_3492| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3531_53) ) (! (= (select (|PolymorphicMapType_3492_3531_53#PolymorphicMapType_3492| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3492_3531_53#PolymorphicMapType_3492| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3492) (SummandMask1 T@PolymorphicMapType_3492) (SummandMask2 T@PolymorphicMapType_3492) (o_2@@15 T@Ref) (f_4@@15 T@Field_3531_9376) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3492_3531_12937#PolymorphicMapType_3492| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3492_3531_12937#PolymorphicMapType_3492| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3492_3531_12937#PolymorphicMapType_3492| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3492_3531_12937#PolymorphicMapType_3492| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3492_3531_12937#PolymorphicMapType_3492| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3492_3531_12937#PolymorphicMapType_3492| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3492) (SummandMask1@@0 T@PolymorphicMapType_3492) (SummandMask2@@0 T@PolymorphicMapType_3492) (o_2@@16 T@Ref) (f_4@@16 T@Field_3531_9243) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3492_3531_9243#PolymorphicMapType_3492| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3492_3531_9243#PolymorphicMapType_3492| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3492_3531_9243#PolymorphicMapType_3492| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3492_3531_9243#PolymorphicMapType_3492| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3492_3531_9243#PolymorphicMapType_3492| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3492_3531_9243#PolymorphicMapType_3492| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3492) (SummandMask1@@1 T@PolymorphicMapType_3492) (SummandMask2@@1 T@PolymorphicMapType_3492) (o_2@@17 T@Ref) (f_4@@17 T@Field_3544_3545) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3492_3531_3545#PolymorphicMapType_3492| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3492_3531_3545#PolymorphicMapType_3492| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3492_3531_3545#PolymorphicMapType_3492| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3492_3531_3545#PolymorphicMapType_3492| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3492_3531_3545#PolymorphicMapType_3492| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3492_3531_3545#PolymorphicMapType_3492| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3492) (SummandMask1@@2 T@PolymorphicMapType_3492) (SummandMask2@@2 T@PolymorphicMapType_3492) (o_2@@18 T@Ref) (f_4@@18 T@Field_3531_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3492_3531_53#PolymorphicMapType_3492| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3492_3531_53#PolymorphicMapType_3492| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3492_3531_53#PolymorphicMapType_3492| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3492_3531_53#PolymorphicMapType_3492| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3492_3531_53#PolymorphicMapType_3492| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3492_3531_53#PolymorphicMapType_3492| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3471) (Mask@@18 T@PolymorphicMapType_3492) (i@@1 Int) ) (!  (=> (state Heap@@12 Mask@@18) (= (|otherDummy'| Heap@@12 i@@1) (|otherDummy#frame| EmptyFrame i@@1)))
 :qid |stdinbpl.198:15|
 :skolemid |24|
 :pattern ( (state Heap@@12 Mask@@18) (|otherDummy'| Heap@@12 i@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3471) (Mask@@19 T@PolymorphicMapType_3492) (i@@2 Int) ) (!  (=> (state Heap@@13 Mask@@19) (= (|thirdDummy'| Heap@@13 i@@2) (|thirdDummy#frame| EmptyFrame i@@2)))
 :qid |stdinbpl.239:15|
 :skolemid |27|
 :pattern ( (state Heap@@13 Mask@@19) (|thirdDummy'| Heap@@13 i@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3471) (i@@3 Int) ) (!  (and (= (otherDummy Heap@@14 i@@3) (|otherDummy'| Heap@@14 i@@3)) (dummyFunction_1320 (|otherDummy#triggerStateless| i@@3)))
 :qid |stdinbpl.187:15|
 :skolemid |22|
 :pattern ( (otherDummy Heap@@14 i@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3471) (i@@4 Int) ) (!  (and (= (thirdDummy Heap@@15 i@@4) (|thirdDummy'| Heap@@15 i@@4)) (dummyFunction_1320 (|thirdDummy#triggerStateless| i@@4)))
 :qid |stdinbpl.228:15|
 :skolemid |25|
 :pattern ( (thirdDummy Heap@@15 i@@4))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3471) (o_11 T@Ref) (f_17 T@Field_3531_9243) (v T@FrameType) ) (! (succHeap Heap@@16 (PolymorphicMapType_3471 (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| Heap@@16) (|PolymorphicMapType_3471_1862_1863#PolymorphicMapType_3471| Heap@@16) (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| Heap@@16) (store (|PolymorphicMapType_3471_3531_9243#PolymorphicMapType_3471| Heap@@16) o_11 f_17 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3471 (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| Heap@@16) (|PolymorphicMapType_3471_1862_1863#PolymorphicMapType_3471| Heap@@16) (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| Heap@@16) (store (|PolymorphicMapType_3471_3531_9243#PolymorphicMapType_3471| Heap@@16) o_11 f_17 v)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3471) (o_11@@0 T@Ref) (f_17@@0 T@Field_3531_9376) (v@@0 T@PolymorphicMapType_4020) ) (! (succHeap Heap@@17 (PolymorphicMapType_3471 (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| Heap@@17) (|PolymorphicMapType_3471_1862_1863#PolymorphicMapType_3471| Heap@@17) (store (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| Heap@@17) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_3471_3531_9243#PolymorphicMapType_3471| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3471 (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| Heap@@17) (|PolymorphicMapType_3471_1862_1863#PolymorphicMapType_3471| Heap@@17) (store (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| Heap@@17) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_3471_3531_9243#PolymorphicMapType_3471| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3471) (o_11@@1 T@Ref) (f_17@@1 T@Field_3544_3545) (v@@1 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_3471 (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| Heap@@18) (store (|PolymorphicMapType_3471_1862_1863#PolymorphicMapType_3471| Heap@@18) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| Heap@@18) (|PolymorphicMapType_3471_3531_9243#PolymorphicMapType_3471| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3471 (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| Heap@@18) (store (|PolymorphicMapType_3471_1862_1863#PolymorphicMapType_3471| Heap@@18) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| Heap@@18) (|PolymorphicMapType_3471_3531_9243#PolymorphicMapType_3471| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3471) (o_11@@2 T@Ref) (f_17@@2 T@Field_3531_53) (v@@2 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_3471 (store (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| Heap@@19) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_3471_1862_1863#PolymorphicMapType_3471| Heap@@19) (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| Heap@@19) (|PolymorphicMapType_3471_3531_9243#PolymorphicMapType_3471| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3471 (store (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| Heap@@19) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_3471_1862_1863#PolymorphicMapType_3471| Heap@@19) (|PolymorphicMapType_3471_3531_9420#PolymorphicMapType_3471| Heap@@19) (|PolymorphicMapType_3471_3531_9243#PolymorphicMapType_3471| Heap@@19)))
)))
(assert (forall ((o_11@@3 T@Ref) (f_10 T@Field_3544_3545) (Heap@@20 T@PolymorphicMapType_3471) ) (!  (=> (select (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| Heap@@20) o_11@@3 $allocated) (select (|PolymorphicMapType_3471_1859_53#PolymorphicMapType_3471| Heap@@20) (select (|PolymorphicMapType_3471_1862_1863#PolymorphicMapType_3471| Heap@@20) o_11@@3 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3471_1862_1863#PolymorphicMapType_3471| Heap@@20) o_11@@3 f_10))
)))
(assert (forall ((p@@1 T@Field_3531_9243) (v_1@@0 T@FrameType) (q T@Field_3531_9243) (w@@0 T@FrameType) (r T@Field_3531_9243) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3531_3531 p@@1 v_1@@0 q w@@0) (InsidePredicate_3531_3531 q w@@0 r u)) (InsidePredicate_3531_3531 p@@1 v_1@@0 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3531_3531 p@@1 v_1@@0 q w@@0) (InsidePredicate_3531_3531 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |thirdDummy#definedness|)
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
