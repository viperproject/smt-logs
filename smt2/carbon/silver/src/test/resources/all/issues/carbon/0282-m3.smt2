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
(declare-sort T@Field_3694_53 0)
(declare-sort T@Field_3707_3708 0)
(declare-sort T@Field_3694_9973 0)
(declare-sort T@Field_3694_9840 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3655 0)) (((PolymorphicMapType_3655 (|PolymorphicMapType_3655_3694_53#PolymorphicMapType_3655| (Array T@Ref T@Field_3694_53 Real)) (|PolymorphicMapType_3655_3694_3708#PolymorphicMapType_3655| (Array T@Ref T@Field_3707_3708 Real)) (|PolymorphicMapType_3655_3694_9840#PolymorphicMapType_3655| (Array T@Ref T@Field_3694_9840 Real)) (|PolymorphicMapType_3655_3694_13534#PolymorphicMapType_3655| (Array T@Ref T@Field_3694_9973 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4183 0)) (((PolymorphicMapType_4183 (|PolymorphicMapType_4183_3694_53#PolymorphicMapType_4183| (Array T@Ref T@Field_3694_53 Bool)) (|PolymorphicMapType_4183_3694_3708#PolymorphicMapType_4183| (Array T@Ref T@Field_3707_3708 Bool)) (|PolymorphicMapType_4183_3694_9840#PolymorphicMapType_4183| (Array T@Ref T@Field_3694_9840 Bool)) (|PolymorphicMapType_4183_3694_10953#PolymorphicMapType_4183| (Array T@Ref T@Field_3694_9973 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3634 0)) (((PolymorphicMapType_3634 (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| (Array T@Ref T@Field_3694_53 Bool)) (|PolymorphicMapType_3634_1947_1948#PolymorphicMapType_3634| (Array T@Ref T@Field_3707_3708 T@Ref)) (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| (Array T@Ref T@Field_3694_9973 T@PolymorphicMapType_4183)) (|PolymorphicMapType_3634_3694_9840#PolymorphicMapType_3634| (Array T@Ref T@Field_3694_9840 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3634 T@PolymorphicMapType_3634) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3634 T@PolymorphicMapType_3634) Bool)
(declare-fun state (T@PolymorphicMapType_3634 T@PolymorphicMapType_3655) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3655) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4183)
(declare-fun |f1'| (T@PolymorphicMapType_3634 Int) Bool)
(declare-fun dummyFunction_1333 (Bool) Bool)
(declare-fun |f1#triggerStateless| (Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3634 T@PolymorphicMapType_3634 T@PolymorphicMapType_3655) Bool)
(declare-fun IsPredicateField_3694_9931 (T@Field_3694_9840) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3694 (T@Field_3694_9840) T@Field_3694_9973)
(declare-fun HasDirectPerm_3694_9904 (T@PolymorphicMapType_3655 T@Ref T@Field_3694_9840) Bool)
(declare-fun IsWandField_3694_11480 (T@Field_3694_9840) Bool)
(declare-fun WandMaskField_3694 (T@Field_3694_9840) T@Field_3694_9973)
(declare-fun dummyHeap () T@PolymorphicMapType_3634)
(declare-fun ZeroMask () T@PolymorphicMapType_3655)
(declare-fun $allocated () T@Field_3694_53)
(declare-fun InsidePredicate_3694_3694 (T@Field_3694_9840 T@FrameType T@Field_3694_9840 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3694_14443 (T@Field_3694_9973) Bool)
(declare-fun IsWandField_3694_14459 (T@Field_3694_9973) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3694_3708 (T@Field_3707_3708) Bool)
(declare-fun IsWandField_3694_3708 (T@Field_3707_3708) Bool)
(declare-fun IsPredicateField_3694_53 (T@Field_3694_53) Bool)
(declare-fun IsWandField_3694_53 (T@Field_3694_53) Bool)
(declare-fun HasDirectPerm_3694_14814 (T@PolymorphicMapType_3655 T@Ref T@Field_3694_9973) Bool)
(declare-fun HasDirectPerm_3694_3708 (T@PolymorphicMapType_3655 T@Ref T@Field_3707_3708) Bool)
(declare-fun HasDirectPerm_3694_53 (T@PolymorphicMapType_3655 T@Ref T@Field_3694_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3655 T@PolymorphicMapType_3655 T@PolymorphicMapType_3655) Bool)
(declare-fun |f1#frame| (T@FrameType Int) Bool)
(declare-fun f1_3 (T@PolymorphicMapType_3634 Int) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_3634) (Heap1 T@PolymorphicMapType_3634) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3634) (Mask T@PolymorphicMapType_3655) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3634) (Heap1@@0 T@PolymorphicMapType_3634) (Heap2 T@PolymorphicMapType_3634) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3694_9973) ) (!  (not (select (|PolymorphicMapType_4183_3694_10953#PolymorphicMapType_4183| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4183_3694_10953#PolymorphicMapType_4183| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3694_9840) ) (!  (not (select (|PolymorphicMapType_4183_3694_9840#PolymorphicMapType_4183| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4183_3694_9840#PolymorphicMapType_4183| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3707_3708) ) (!  (not (select (|PolymorphicMapType_4183_3694_3708#PolymorphicMapType_4183| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4183_3694_3708#PolymorphicMapType_4183| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3694_53) ) (!  (not (select (|PolymorphicMapType_4183_3694_53#PolymorphicMapType_4183| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4183_3694_53#PolymorphicMapType_4183| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3634) (idx_1 Int) ) (! (dummyFunction_1333 (|f1#triggerStateless| idx_1))
 :qid |stdinbpl.200:15|
 :skolemid |23|
 :pattern ( (|f1'| Heap@@0 idx_1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3634) (ExhaleHeap T@PolymorphicMapType_3634) (Mask@@0 T@PolymorphicMapType_3655) (pm_f_13 T@Field_3694_9840) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3694_9904 Mask@@0 null pm_f_13) (IsPredicateField_3694_9931 pm_f_13)) (= (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| Heap@@1) null (PredicateMaskField_3694 pm_f_13)) (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| ExhaleHeap) null (PredicateMaskField_3694 pm_f_13)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_3694_9931 pm_f_13) (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| ExhaleHeap) null (PredicateMaskField_3694 pm_f_13)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3634) (ExhaleHeap@@0 T@PolymorphicMapType_3634) (Mask@@1 T@PolymorphicMapType_3655) (pm_f_13@@0 T@Field_3694_9840) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3694_9904 Mask@@1 null pm_f_13@@0) (IsWandField_3694_11480 pm_f_13@@0)) (= (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| Heap@@2) null (WandMaskField_3694 pm_f_13@@0)) (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| ExhaleHeap@@0) null (WandMaskField_3694 pm_f_13@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_3694_11480 pm_f_13@@0) (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| ExhaleHeap@@0) null (WandMaskField_3694 pm_f_13@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3634) (ExhaleHeap@@1 T@PolymorphicMapType_3634) (Mask@@2 T@PolymorphicMapType_3655) (pm_f_13@@1 T@Field_3694_9840) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3694_9904 Mask@@2 null pm_f_13@@1) (IsPredicateField_3694_9931 pm_f_13@@1)) (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_3694_53) ) (!  (=> (select (|PolymorphicMapType_4183_3694_53#PolymorphicMapType_4183| (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| Heap@@3) null (PredicateMaskField_3694 pm_f_13@@1))) o2_13 f_30) (= (select (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| Heap@@3) o2_13 f_30) (select (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| ExhaleHeap@@1) o2_13 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| ExhaleHeap@@1) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_3707_3708) ) (!  (=> (select (|PolymorphicMapType_4183_3694_3708#PolymorphicMapType_4183| (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| Heap@@3) null (PredicateMaskField_3694 pm_f_13@@1))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_3634_1947_1948#PolymorphicMapType_3634| Heap@@3) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_3634_1947_1948#PolymorphicMapType_3634| ExhaleHeap@@1) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3634_1947_1948#PolymorphicMapType_3634| ExhaleHeap@@1) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_3694_9840) ) (!  (=> (select (|PolymorphicMapType_4183_3694_9840#PolymorphicMapType_4183| (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| Heap@@3) null (PredicateMaskField_3694 pm_f_13@@1))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_3634_3694_9840#PolymorphicMapType_3634| Heap@@3) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_3634_3694_9840#PolymorphicMapType_3634| ExhaleHeap@@1) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3634_3694_9840#PolymorphicMapType_3634| ExhaleHeap@@1) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_3694_9973) ) (!  (=> (select (|PolymorphicMapType_4183_3694_10953#PolymorphicMapType_4183| (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| Heap@@3) null (PredicateMaskField_3694 pm_f_13@@1))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| Heap@@3) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| ExhaleHeap@@1) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| ExhaleHeap@@1) o2_13@@2 f_30@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsPredicateField_3694_9931 pm_f_13@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3634) (ExhaleHeap@@2 T@PolymorphicMapType_3634) (Mask@@3 T@PolymorphicMapType_3655) (pm_f_13@@2 T@Field_3694_9840) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3694_9904 Mask@@3 null pm_f_13@@2) (IsWandField_3694_11480 pm_f_13@@2)) (and (and (and (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_3694_53) ) (!  (=> (select (|PolymorphicMapType_4183_3694_53#PolymorphicMapType_4183| (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| Heap@@4) null (WandMaskField_3694 pm_f_13@@2))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| Heap@@4) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| ExhaleHeap@@2) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| ExhaleHeap@@2) o2_13@@3 f_30@@3))
)) (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_3707_3708) ) (!  (=> (select (|PolymorphicMapType_4183_3694_3708#PolymorphicMapType_4183| (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| Heap@@4) null (WandMaskField_3694 pm_f_13@@2))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_3634_1947_1948#PolymorphicMapType_3634| Heap@@4) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_3634_1947_1948#PolymorphicMapType_3634| ExhaleHeap@@2) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3634_1947_1948#PolymorphicMapType_3634| ExhaleHeap@@2) o2_13@@4 f_30@@4))
))) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_3694_9840) ) (!  (=> (select (|PolymorphicMapType_4183_3694_9840#PolymorphicMapType_4183| (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| Heap@@4) null (WandMaskField_3694 pm_f_13@@2))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_3634_3694_9840#PolymorphicMapType_3634| Heap@@4) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_3634_3694_9840#PolymorphicMapType_3634| ExhaleHeap@@2) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3634_3694_9840#PolymorphicMapType_3634| ExhaleHeap@@2) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_3694_9973) ) (!  (=> (select (|PolymorphicMapType_4183_3694_10953#PolymorphicMapType_4183| (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| Heap@@4) null (WandMaskField_3694 pm_f_13@@2))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| Heap@@4) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| ExhaleHeap@@2) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| ExhaleHeap@@2) o2_13@@6 f_30@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_3694_11480 pm_f_13@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3634) (ExhaleHeap@@3 T@PolymorphicMapType_3634) (Mask@@4 T@PolymorphicMapType_3655) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| Heap@@5) o_22 $allocated) (select (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| ExhaleHeap@@3) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| ExhaleHeap@@3) o_22 $allocated))
)))
(assert (forall ((p T@Field_3694_9840) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3694_3694 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3694_3694 p v_1 p w))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3634) (ExhaleHeap@@4 T@PolymorphicMapType_3634) (Mask@@5 T@PolymorphicMapType_3655) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@6 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3655) (o_2@@3 T@Ref) (f_4@@3 T@Field_3694_9973) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3655_3694_13534#PolymorphicMapType_3655| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3694_14443 f_4@@3))) (not (IsWandField_3694_14459 f_4@@3))) (<= (select (|PolymorphicMapType_3655_3694_13534#PolymorphicMapType_3655| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3655_3694_13534#PolymorphicMapType_3655| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3655) (o_2@@4 T@Ref) (f_4@@4 T@Field_3694_9840) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3655_3694_9840#PolymorphicMapType_3655| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3694_9931 f_4@@4))) (not (IsWandField_3694_11480 f_4@@4))) (<= (select (|PolymorphicMapType_3655_3694_9840#PolymorphicMapType_3655| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3655_3694_9840#PolymorphicMapType_3655| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3655) (o_2@@5 T@Ref) (f_4@@5 T@Field_3707_3708) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3655_3694_3708#PolymorphicMapType_3655| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3694_3708 f_4@@5))) (not (IsWandField_3694_3708 f_4@@5))) (<= (select (|PolymorphicMapType_3655_3694_3708#PolymorphicMapType_3655| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3655_3694_3708#PolymorphicMapType_3655| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3655) (o_2@@6 T@Ref) (f_4@@6 T@Field_3694_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3655_3694_53#PolymorphicMapType_3655| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3694_53 f_4@@6))) (not (IsWandField_3694_53 f_4@@6))) (<= (select (|PolymorphicMapType_3655_3694_53#PolymorphicMapType_3655| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3655_3694_53#PolymorphicMapType_3655| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3655) (o_2@@7 T@Ref) (f_4@@7 T@Field_3694_9973) ) (! (= (HasDirectPerm_3694_14814 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3655_3694_13534#PolymorphicMapType_3655| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3694_14814 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3655) (o_2@@8 T@Ref) (f_4@@8 T@Field_3694_9840) ) (! (= (HasDirectPerm_3694_9904 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3655_3694_9840#PolymorphicMapType_3655| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3694_9904 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3655) (o_2@@9 T@Ref) (f_4@@9 T@Field_3707_3708) ) (! (= (HasDirectPerm_3694_3708 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3655_3694_3708#PolymorphicMapType_3655| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3694_3708 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3655) (o_2@@10 T@Ref) (f_4@@10 T@Field_3694_53) ) (! (= (HasDirectPerm_3694_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3655_3694_53#PolymorphicMapType_3655| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3694_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3634) (ExhaleHeap@@5 T@PolymorphicMapType_3634) (Mask@@14 T@PolymorphicMapType_3655) (o_22@@0 T@Ref) (f_30@@7 T@Field_3694_9973) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_3694_14814 Mask@@14 o_22@@0 f_30@@7) (= (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| Heap@@7) o_22@@0 f_30@@7) (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| ExhaleHeap@@5) o_22@@0 f_30@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| ExhaleHeap@@5) o_22@@0 f_30@@7))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3634) (ExhaleHeap@@6 T@PolymorphicMapType_3634) (Mask@@15 T@PolymorphicMapType_3655) (o_22@@1 T@Ref) (f_30@@8 T@Field_3694_9840) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_3694_9904 Mask@@15 o_22@@1 f_30@@8) (= (select (|PolymorphicMapType_3634_3694_9840#PolymorphicMapType_3634| Heap@@8) o_22@@1 f_30@@8) (select (|PolymorphicMapType_3634_3694_9840#PolymorphicMapType_3634| ExhaleHeap@@6) o_22@@1 f_30@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_3634_3694_9840#PolymorphicMapType_3634| ExhaleHeap@@6) o_22@@1 f_30@@8))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3634) (ExhaleHeap@@7 T@PolymorphicMapType_3634) (Mask@@16 T@PolymorphicMapType_3655) (o_22@@2 T@Ref) (f_30@@9 T@Field_3707_3708) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_3694_3708 Mask@@16 o_22@@2 f_30@@9) (= (select (|PolymorphicMapType_3634_1947_1948#PolymorphicMapType_3634| Heap@@9) o_22@@2 f_30@@9) (select (|PolymorphicMapType_3634_1947_1948#PolymorphicMapType_3634| ExhaleHeap@@7) o_22@@2 f_30@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_3634_1947_1948#PolymorphicMapType_3634| ExhaleHeap@@7) o_22@@2 f_30@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3634) (ExhaleHeap@@8 T@PolymorphicMapType_3634) (Mask@@17 T@PolymorphicMapType_3655) (o_22@@3 T@Ref) (f_30@@10 T@Field_3694_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_3694_53 Mask@@17 o_22@@3 f_30@@10) (= (select (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| Heap@@10) o_22@@3 f_30@@10) (select (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| ExhaleHeap@@8) o_22@@3 f_30@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| ExhaleHeap@@8) o_22@@3 f_30@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3694_9973) ) (! (= (select (|PolymorphicMapType_3655_3694_13534#PolymorphicMapType_3655| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3655_3694_13534#PolymorphicMapType_3655| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3694_9840) ) (! (= (select (|PolymorphicMapType_3655_3694_9840#PolymorphicMapType_3655| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3655_3694_9840#PolymorphicMapType_3655| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3707_3708) ) (! (= (select (|PolymorphicMapType_3655_3694_3708#PolymorphicMapType_3655| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3655_3694_3708#PolymorphicMapType_3655| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3694_53) ) (! (= (select (|PolymorphicMapType_3655_3694_53#PolymorphicMapType_3655| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3655_3694_53#PolymorphicMapType_3655| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3655) (SummandMask1 T@PolymorphicMapType_3655) (SummandMask2 T@PolymorphicMapType_3655) (o_2@@15 T@Ref) (f_4@@15 T@Field_3694_9973) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3655_3694_13534#PolymorphicMapType_3655| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3655_3694_13534#PolymorphicMapType_3655| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3655_3694_13534#PolymorphicMapType_3655| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3655_3694_13534#PolymorphicMapType_3655| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3655_3694_13534#PolymorphicMapType_3655| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3655_3694_13534#PolymorphicMapType_3655| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3655) (SummandMask1@@0 T@PolymorphicMapType_3655) (SummandMask2@@0 T@PolymorphicMapType_3655) (o_2@@16 T@Ref) (f_4@@16 T@Field_3694_9840) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3655_3694_9840#PolymorphicMapType_3655| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3655_3694_9840#PolymorphicMapType_3655| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3655_3694_9840#PolymorphicMapType_3655| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3655_3694_9840#PolymorphicMapType_3655| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3655_3694_9840#PolymorphicMapType_3655| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3655_3694_9840#PolymorphicMapType_3655| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3655) (SummandMask1@@1 T@PolymorphicMapType_3655) (SummandMask2@@1 T@PolymorphicMapType_3655) (o_2@@17 T@Ref) (f_4@@17 T@Field_3707_3708) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3655_3694_3708#PolymorphicMapType_3655| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3655_3694_3708#PolymorphicMapType_3655| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3655_3694_3708#PolymorphicMapType_3655| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3655_3694_3708#PolymorphicMapType_3655| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3655_3694_3708#PolymorphicMapType_3655| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3655_3694_3708#PolymorphicMapType_3655| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3655) (SummandMask1@@2 T@PolymorphicMapType_3655) (SummandMask2@@2 T@PolymorphicMapType_3655) (o_2@@18 T@Ref) (f_4@@18 T@Field_3694_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3655_3694_53#PolymorphicMapType_3655| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3655_3694_53#PolymorphicMapType_3655| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3655_3694_53#PolymorphicMapType_3655| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3655_3694_53#PolymorphicMapType_3655| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3655_3694_53#PolymorphicMapType_3655| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3655_3694_53#PolymorphicMapType_3655| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3634) (Mask@@18 T@PolymorphicMapType_3655) (idx_1@@0 Int) ) (!  (=> (state Heap@@11 Mask@@18) (= (|f1'| Heap@@11 idx_1@@0) (|f1#frame| EmptyFrame idx_1@@0)))
 :qid |stdinbpl.207:15|
 :skolemid |24|
 :pattern ( (state Heap@@11 Mask@@18) (|f1'| Heap@@11 idx_1@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3634) (idx_1@@1 Int) ) (!  (and (= (f1_3 Heap@@12 idx_1@@1) (|f1'| Heap@@12 idx_1@@1)) (dummyFunction_1333 (|f1#triggerStateless| idx_1@@1)))
 :qid |stdinbpl.196:15|
 :skolemid |22|
 :pattern ( (f1_3 Heap@@12 idx_1@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3634) (o_35 T@Ref) (f_11 T@Field_3694_9840) (v T@FrameType) ) (! (succHeap Heap@@13 (PolymorphicMapType_3634 (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| Heap@@13) (|PolymorphicMapType_3634_1947_1948#PolymorphicMapType_3634| Heap@@13) (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| Heap@@13) (store (|PolymorphicMapType_3634_3694_9840#PolymorphicMapType_3634| Heap@@13) o_35 f_11 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3634 (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| Heap@@13) (|PolymorphicMapType_3634_1947_1948#PolymorphicMapType_3634| Heap@@13) (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| Heap@@13) (store (|PolymorphicMapType_3634_3694_9840#PolymorphicMapType_3634| Heap@@13) o_35 f_11 v)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3634) (o_35@@0 T@Ref) (f_11@@0 T@Field_3694_9973) (v@@0 T@PolymorphicMapType_4183) ) (! (succHeap Heap@@14 (PolymorphicMapType_3634 (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| Heap@@14) (|PolymorphicMapType_3634_1947_1948#PolymorphicMapType_3634| Heap@@14) (store (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| Heap@@14) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_3634_3694_9840#PolymorphicMapType_3634| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3634 (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| Heap@@14) (|PolymorphicMapType_3634_1947_1948#PolymorphicMapType_3634| Heap@@14) (store (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| Heap@@14) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_3634_3694_9840#PolymorphicMapType_3634| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3634) (o_35@@1 T@Ref) (f_11@@1 T@Field_3707_3708) (v@@1 T@Ref) ) (! (succHeap Heap@@15 (PolymorphicMapType_3634 (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| Heap@@15) (store (|PolymorphicMapType_3634_1947_1948#PolymorphicMapType_3634| Heap@@15) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| Heap@@15) (|PolymorphicMapType_3634_3694_9840#PolymorphicMapType_3634| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3634 (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| Heap@@15) (store (|PolymorphicMapType_3634_1947_1948#PolymorphicMapType_3634| Heap@@15) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| Heap@@15) (|PolymorphicMapType_3634_3694_9840#PolymorphicMapType_3634| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3634) (o_35@@2 T@Ref) (f_11@@2 T@Field_3694_53) (v@@2 Bool) ) (! (succHeap Heap@@16 (PolymorphicMapType_3634 (store (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| Heap@@16) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_3634_1947_1948#PolymorphicMapType_3634| Heap@@16) (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| Heap@@16) (|PolymorphicMapType_3634_3694_9840#PolymorphicMapType_3634| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3634 (store (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| Heap@@16) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_3634_1947_1948#PolymorphicMapType_3634| Heap@@16) (|PolymorphicMapType_3634_3694_10017#PolymorphicMapType_3634| Heap@@16) (|PolymorphicMapType_3634_3694_9840#PolymorphicMapType_3634| Heap@@16)))
)))
(assert (forall ((o_35@@3 T@Ref) (f_31 T@Field_3707_3708) (Heap@@17 T@PolymorphicMapType_3634) ) (!  (=> (select (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| Heap@@17) o_35@@3 $allocated) (select (|PolymorphicMapType_3634_1944_53#PolymorphicMapType_3634| Heap@@17) (select (|PolymorphicMapType_3634_1947_1948#PolymorphicMapType_3634| Heap@@17) o_35@@3 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3634_1947_1948#PolymorphicMapType_3634| Heap@@17) o_35@@3 f_31))
)))
(assert (forall ((p@@1 T@Field_3694_9840) (v_1@@0 T@FrameType) (q T@Field_3694_9840) (w@@0 T@FrameType) (r T@Field_3694_9840) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3694_3694 p@@1 v_1@@0 q w@@0) (InsidePredicate_3694_3694 q w@@0 r u)) (InsidePredicate_3694_3694 p@@1 v_1@@0 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3694_3694 p@@1 v_1@@0 q w@@0) (InsidePredicate_3694_3694 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i$0 () Int)
(declare-fun foo (Int Int) Bool)
(declare-fun i () Int)
(declare-fun Heap@@18 () T@PolymorphicMapType_3634)
(declare-fun AssumeFunctionsAbove () Int)
(set-info :boogie-vc-id m3)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon6_correct true))
(let ((anon12_Else_correct  (=> (and (not (and (<= 0 i$0) (< i$0 10))) (= (ControlFlow 0 7) 4)) anon6_correct)))
(let ((anon12_Then_correct  (=> (and (<= 0 i$0) (< i$0 10)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (foo i$0 i)) (=> (foo i$0 i) (=> (= (ControlFlow 0 5) 4) anon6_correct))))))
(let ((anon11_Else_correct true))
(let ((anon10_Else_correct true))
(let ((anon9_Else_correct  (=> (forall ((j_1 Int) ) (!  (=> (and (<= 0 j_1) (< j_1 10)) (foo j_1 i))
 :qid |stdinbpl.413:20|
 :skolemid |30|
 :pattern ( (foo j_1 i))
)) (=> (and (state Heap@@18 ZeroMask) (state Heap@@18 ZeroMask)) (and (and (and (=> (= (ControlFlow 0 8) 2) anon10_Else_correct) (=> (= (ControlFlow 0 8) 3) anon11_Else_correct)) (=> (= (ControlFlow 0 8) 5) anon12_Then_correct)) (=> (= (ControlFlow 0 8) 7) anon12_Else_correct))))))
(let ((anon9_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@18 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (=> (= (ControlFlow 0 9) 1) anon9_Then_correct) (=> (= (ControlFlow 0 9) 8) anon9_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 10) 9) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
