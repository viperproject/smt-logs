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
(declare-sort T@Field_7315_53 0)
(declare-sort T@Field_7328_7329 0)
(declare-sort T@Field_7315_21768 0)
(declare-sort T@Field_7315_21635 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_7276 0)) (((PolymorphicMapType_7276 (|PolymorphicMapType_7276_3900_3901#PolymorphicMapType_7276| (Array T@Ref T@Field_7328_7329 Real)) (|PolymorphicMapType_7276_3900_53#PolymorphicMapType_7276| (Array T@Ref T@Field_7315_53 Real)) (|PolymorphicMapType_7276_3900_21635#PolymorphicMapType_7276| (Array T@Ref T@Field_7315_21635 Real)) (|PolymorphicMapType_7276_3900_25314#PolymorphicMapType_7276| (Array T@Ref T@Field_7315_21768 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7804 0)) (((PolymorphicMapType_7804 (|PolymorphicMapType_7804_7315_53#PolymorphicMapType_7804| (Array T@Ref T@Field_7315_53 Bool)) (|PolymorphicMapType_7804_7315_7329#PolymorphicMapType_7804| (Array T@Ref T@Field_7328_7329 Bool)) (|PolymorphicMapType_7804_7315_21635#PolymorphicMapType_7804| (Array T@Ref T@Field_7315_21635 Bool)) (|PolymorphicMapType_7804_7315_22748#PolymorphicMapType_7804| (Array T@Ref T@Field_7315_21768 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7255 0)) (((PolymorphicMapType_7255 (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| (Array T@Ref T@Field_7315_53 Bool)) (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| (Array T@Ref T@Field_7328_7329 T@Ref)) (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| (Array T@Ref T@Field_7315_21768 T@PolymorphicMapType_7804)) (|PolymorphicMapType_7255_7315_21635#PolymorphicMapType_7255| (Array T@Ref T@Field_7315_21635 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_7315_53)
(declare-fun f_7 () T@Field_7328_7329)
(declare-fun succHeap (T@PolymorphicMapType_7255 T@PolymorphicMapType_7255) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7255 T@PolymorphicMapType_7255) Bool)
(declare-fun state (T@PolymorphicMapType_7255 T@PolymorphicMapType_7276) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7276) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7804)
(declare-fun |g'| (T@PolymorphicMapType_7255 T@Ref) Bool)
(declare-fun dummyFunction_1412 (Bool) Bool)
(declare-fun |g#triggerStateless| (T@Ref) Bool)
(declare-fun |h'| (T@PolymorphicMapType_7255 T@Ref) Bool)
(declare-fun |h#triggerStateless| (T@Ref) Bool)
(declare-fun |gg'| (T@PolymorphicMapType_7255 T@Ref) Bool)
(declare-fun |gg#triggerStateless| (T@Ref) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7255 T@PolymorphicMapType_7255 T@PolymorphicMapType_7276) Bool)
(declare-fun IsPredicateField_7315_21726 (T@Field_7315_21635) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7315 (T@Field_7315_21635) T@Field_7315_21768)
(declare-fun HasDirectPerm_7315_21699 (T@PolymorphicMapType_7276 T@Ref T@Field_7315_21635) Bool)
(declare-fun IsWandField_7315_23275 (T@Field_7315_21635) Bool)
(declare-fun WandMaskField_7315 (T@Field_7315_21635) T@Field_7315_21768)
(declare-fun dummyHeap () T@PolymorphicMapType_7255)
(declare-fun ZeroMask () T@PolymorphicMapType_7276)
(declare-fun InsidePredicate_7315_7315 (T@Field_7315_21635 T@FrameType T@Field_7315_21635 T@FrameType) Bool)
(declare-fun IsPredicateField_3900_3901 (T@Field_7328_7329) Bool)
(declare-fun IsWandField_3900_3901 (T@Field_7328_7329) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3900_26209 (T@Field_7315_21768) Bool)
(declare-fun IsWandField_3900_26225 (T@Field_7315_21768) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3900_53 (T@Field_7315_53) Bool)
(declare-fun IsWandField_3900_53 (T@Field_7315_53) Bool)
(declare-fun HasDirectPerm_7315_26580 (T@PolymorphicMapType_7276 T@Ref T@Field_7315_21768) Bool)
(declare-fun HasDirectPerm_7315_7329 (T@PolymorphicMapType_7276 T@Ref T@Field_7328_7329) Bool)
(declare-fun HasDirectPerm_7315_53 (T@PolymorphicMapType_7276 T@Ref T@Field_7315_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7276 T@PolymorphicMapType_7276 T@PolymorphicMapType_7276) Bool)
(declare-fun |g#frame| (T@FrameType T@Ref) Bool)
(declare-fun FrameFragment_3901 (T@Ref) T@FrameType)
(declare-fun |h#frame| (T@FrameType T@Ref) Bool)
(declare-fun g_3 (T@PolymorphicMapType_7255 T@Ref) Bool)
(declare-fun h_3 (T@PolymorphicMapType_7255 T@Ref) Bool)
(declare-fun gg (T@PolymorphicMapType_7255 T@Ref) Bool)
(declare-fun |gg#frame| (T@FrameType T@Ref) Bool)
(declare-fun FrameFragment_1791 (Int) T@FrameType)
(declare-fun |gg#condqp1| (T@PolymorphicMapType_7255 T@Ref) Int)
(declare-fun |sk_gg#condqp1| (Int Int) T@Ref)
(assert (forall ((Heap0 T@PolymorphicMapType_7255) (Heap1 T@PolymorphicMapType_7255) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7255) (Mask T@PolymorphicMapType_7276) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7255) (Heap1@@0 T@PolymorphicMapType_7255) (Heap2 T@PolymorphicMapType_7255) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7315_21768) ) (!  (not (select (|PolymorphicMapType_7804_7315_22748#PolymorphicMapType_7804| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7804_7315_22748#PolymorphicMapType_7804| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7315_21635) ) (!  (not (select (|PolymorphicMapType_7804_7315_21635#PolymorphicMapType_7804| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7804_7315_21635#PolymorphicMapType_7804| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7328_7329) ) (!  (not (select (|PolymorphicMapType_7804_7315_7329#PolymorphicMapType_7804| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7804_7315_7329#PolymorphicMapType_7804| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7315_53) ) (!  (not (select (|PolymorphicMapType_7804_7315_53#PolymorphicMapType_7804| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7804_7315_53#PolymorphicMapType_7804| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7255) (x T@Ref) ) (! (dummyFunction_1412 (|g#triggerStateless| x))
 :qid |stdinbpl.221:15|
 :skolemid |23|
 :pattern ( (|g'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7255) (x@@0 T@Ref) ) (! (dummyFunction_1412 (|h#triggerStateless| x@@0))
 :qid |stdinbpl.271:15|
 :skolemid |26|
 :pattern ( (|h'| Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7255) (x@@1 T@Ref) ) (! (dummyFunction_1412 (|gg#triggerStateless| x@@1))
 :qid |stdinbpl.313:15|
 :skolemid |29|
 :pattern ( (|gg'| Heap@@2 x@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7255) (ExhaleHeap T@PolymorphicMapType_7255) (Mask@@0 T@PolymorphicMapType_7276) (pm_f_3 T@Field_7315_21635) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7315_21699 Mask@@0 null pm_f_3) (IsPredicateField_7315_21726 pm_f_3)) (= (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| Heap@@3) null (PredicateMaskField_7315 pm_f_3)) (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| ExhaleHeap) null (PredicateMaskField_7315 pm_f_3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_7315_21726 pm_f_3) (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| ExhaleHeap) null (PredicateMaskField_7315 pm_f_3)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7255) (ExhaleHeap@@0 T@PolymorphicMapType_7255) (Mask@@1 T@PolymorphicMapType_7276) (pm_f_3@@0 T@Field_7315_21635) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7315_21699 Mask@@1 null pm_f_3@@0) (IsWandField_7315_23275 pm_f_3@@0)) (= (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| Heap@@4) null (WandMaskField_7315 pm_f_3@@0)) (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| ExhaleHeap@@0) null (WandMaskField_7315 pm_f_3@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsWandField_7315_23275 pm_f_3@@0) (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| ExhaleHeap@@0) null (WandMaskField_7315 pm_f_3@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7255) (ExhaleHeap@@1 T@PolymorphicMapType_7255) (Mask@@2 T@PolymorphicMapType_7276) (pm_f_3@@1 T@Field_7315_21635) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_7315_21699 Mask@@2 null pm_f_3@@1) (IsPredicateField_7315_21726 pm_f_3@@1)) (and (and (and (forall ((o2_3 T@Ref) (f_12 T@Field_7315_53) ) (!  (=> (select (|PolymorphicMapType_7804_7315_53#PolymorphicMapType_7804| (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| Heap@@5) null (PredicateMaskField_7315 pm_f_3@@1))) o2_3 f_12) (= (select (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| Heap@@5) o2_3 f_12) (select (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| ExhaleHeap@@1) o2_3 f_12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| ExhaleHeap@@1) o2_3 f_12))
)) (forall ((o2_3@@0 T@Ref) (f_12@@0 T@Field_7328_7329) ) (!  (=> (select (|PolymorphicMapType_7804_7315_7329#PolymorphicMapType_7804| (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| Heap@@5) null (PredicateMaskField_7315 pm_f_3@@1))) o2_3@@0 f_12@@0) (= (select (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| Heap@@5) o2_3@@0 f_12@@0) (select (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| ExhaleHeap@@1) o2_3@@0 f_12@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| ExhaleHeap@@1) o2_3@@0 f_12@@0))
))) (forall ((o2_3@@1 T@Ref) (f_12@@1 T@Field_7315_21635) ) (!  (=> (select (|PolymorphicMapType_7804_7315_21635#PolymorphicMapType_7804| (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| Heap@@5) null (PredicateMaskField_7315 pm_f_3@@1))) o2_3@@1 f_12@@1) (= (select (|PolymorphicMapType_7255_7315_21635#PolymorphicMapType_7255| Heap@@5) o2_3@@1 f_12@@1) (select (|PolymorphicMapType_7255_7315_21635#PolymorphicMapType_7255| ExhaleHeap@@1) o2_3@@1 f_12@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7255_7315_21635#PolymorphicMapType_7255| ExhaleHeap@@1) o2_3@@1 f_12@@1))
))) (forall ((o2_3@@2 T@Ref) (f_12@@2 T@Field_7315_21768) ) (!  (=> (select (|PolymorphicMapType_7804_7315_22748#PolymorphicMapType_7804| (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| Heap@@5) null (PredicateMaskField_7315 pm_f_3@@1))) o2_3@@2 f_12@@2) (= (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| Heap@@5) o2_3@@2 f_12@@2) (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| ExhaleHeap@@1) o2_3@@2 f_12@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| ExhaleHeap@@1) o2_3@@2 f_12@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsPredicateField_7315_21726 pm_f_3@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7255) (ExhaleHeap@@2 T@PolymorphicMapType_7255) (Mask@@3 T@PolymorphicMapType_7276) (pm_f_3@@2 T@Field_7315_21635) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_7315_21699 Mask@@3 null pm_f_3@@2) (IsWandField_7315_23275 pm_f_3@@2)) (and (and (and (forall ((o2_3@@3 T@Ref) (f_12@@3 T@Field_7315_53) ) (!  (=> (select (|PolymorphicMapType_7804_7315_53#PolymorphicMapType_7804| (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| Heap@@6) null (WandMaskField_7315 pm_f_3@@2))) o2_3@@3 f_12@@3) (= (select (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| Heap@@6) o2_3@@3 f_12@@3) (select (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| ExhaleHeap@@2) o2_3@@3 f_12@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| ExhaleHeap@@2) o2_3@@3 f_12@@3))
)) (forall ((o2_3@@4 T@Ref) (f_12@@4 T@Field_7328_7329) ) (!  (=> (select (|PolymorphicMapType_7804_7315_7329#PolymorphicMapType_7804| (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| Heap@@6) null (WandMaskField_7315 pm_f_3@@2))) o2_3@@4 f_12@@4) (= (select (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| Heap@@6) o2_3@@4 f_12@@4) (select (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| ExhaleHeap@@2) o2_3@@4 f_12@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| ExhaleHeap@@2) o2_3@@4 f_12@@4))
))) (forall ((o2_3@@5 T@Ref) (f_12@@5 T@Field_7315_21635) ) (!  (=> (select (|PolymorphicMapType_7804_7315_21635#PolymorphicMapType_7804| (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| Heap@@6) null (WandMaskField_7315 pm_f_3@@2))) o2_3@@5 f_12@@5) (= (select (|PolymorphicMapType_7255_7315_21635#PolymorphicMapType_7255| Heap@@6) o2_3@@5 f_12@@5) (select (|PolymorphicMapType_7255_7315_21635#PolymorphicMapType_7255| ExhaleHeap@@2) o2_3@@5 f_12@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7255_7315_21635#PolymorphicMapType_7255| ExhaleHeap@@2) o2_3@@5 f_12@@5))
))) (forall ((o2_3@@6 T@Ref) (f_12@@6 T@Field_7315_21768) ) (!  (=> (select (|PolymorphicMapType_7804_7315_22748#PolymorphicMapType_7804| (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| Heap@@6) null (WandMaskField_7315 pm_f_3@@2))) o2_3@@6 f_12@@6) (= (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| Heap@@6) o2_3@@6 f_12@@6) (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| ExhaleHeap@@2) o2_3@@6 f_12@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| ExhaleHeap@@2) o2_3@@6 f_12@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsWandField_7315_23275 pm_f_3@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7255) (ExhaleHeap@@3 T@PolymorphicMapType_7255) (Mask@@4 T@PolymorphicMapType_7276) (o_8 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| Heap@@7) o_8 $allocated) (select (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| ExhaleHeap@@3) o_8 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| ExhaleHeap@@3) o_8 $allocated))
)))
(assert (forall ((p T@Field_7315_21635) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7315_7315 p v_1 p w))
 :qid |stdinbpl.197:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7315_7315 p v_1 p w))
)))
(assert  (not (IsPredicateField_3900_3901 f_7)))
(assert  (not (IsWandField_3900_3901 f_7)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7255) (ExhaleHeap@@4 T@PolymorphicMapType_7255) (Mask@@5 T@PolymorphicMapType_7276) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@8 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_7276) (o_2@@3 T@Ref) (f_4@@3 T@Field_7315_21768) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_7276_3900_25314#PolymorphicMapType_7276| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3900_26209 f_4@@3))) (not (IsWandField_3900_26225 f_4@@3))) (<= (select (|PolymorphicMapType_7276_3900_25314#PolymorphicMapType_7276| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_7276_3900_25314#PolymorphicMapType_7276| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_7276) (o_2@@4 T@Ref) (f_4@@4 T@Field_7315_21635) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_7276_3900_21635#PolymorphicMapType_7276| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_7315_21726 f_4@@4))) (not (IsWandField_7315_23275 f_4@@4))) (<= (select (|PolymorphicMapType_7276_3900_21635#PolymorphicMapType_7276| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_7276_3900_21635#PolymorphicMapType_7276| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_7276) (o_2@@5 T@Ref) (f_4@@5 T@Field_7315_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_7276_3900_53#PolymorphicMapType_7276| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3900_53 f_4@@5))) (not (IsWandField_3900_53 f_4@@5))) (<= (select (|PolymorphicMapType_7276_3900_53#PolymorphicMapType_7276| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_7276_3900_53#PolymorphicMapType_7276| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_7276) (o_2@@6 T@Ref) (f_4@@6 T@Field_7328_7329) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_7276_3900_3901#PolymorphicMapType_7276| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3900_3901 f_4@@6))) (not (IsWandField_3900_3901 f_4@@6))) (<= (select (|PolymorphicMapType_7276_3900_3901#PolymorphicMapType_7276| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_7276_3900_3901#PolymorphicMapType_7276| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7276) (o_2@@7 T@Ref) (f_4@@7 T@Field_7315_21768) ) (! (= (HasDirectPerm_7315_26580 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_7276_3900_25314#PolymorphicMapType_7276| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7315_26580 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7276) (o_2@@8 T@Ref) (f_4@@8 T@Field_7315_21635) ) (! (= (HasDirectPerm_7315_21699 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_7276_3900_21635#PolymorphicMapType_7276| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7315_21699 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7276) (o_2@@9 T@Ref) (f_4@@9 T@Field_7328_7329) ) (! (= (HasDirectPerm_7315_7329 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_7276_3900_3901#PolymorphicMapType_7276| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7315_7329 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7276) (o_2@@10 T@Ref) (f_4@@10 T@Field_7315_53) ) (! (= (HasDirectPerm_7315_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_7276_3900_53#PolymorphicMapType_7276| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7315_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.185:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7255) (ExhaleHeap@@5 T@PolymorphicMapType_7255) (Mask@@14 T@PolymorphicMapType_7276) (o_8@@0 T@Ref) (f_12@@7 T@Field_7315_21768) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_7315_26580 Mask@@14 o_8@@0 f_12@@7) (= (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| Heap@@9) o_8@@0 f_12@@7) (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| ExhaleHeap@@5) o_8@@0 f_12@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| ExhaleHeap@@5) o_8@@0 f_12@@7))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7255) (ExhaleHeap@@6 T@PolymorphicMapType_7255) (Mask@@15 T@PolymorphicMapType_7276) (o_8@@1 T@Ref) (f_12@@8 T@Field_7315_21635) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_7315_21699 Mask@@15 o_8@@1 f_12@@8) (= (select (|PolymorphicMapType_7255_7315_21635#PolymorphicMapType_7255| Heap@@10) o_8@@1 f_12@@8) (select (|PolymorphicMapType_7255_7315_21635#PolymorphicMapType_7255| ExhaleHeap@@6) o_8@@1 f_12@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_7255_7315_21635#PolymorphicMapType_7255| ExhaleHeap@@6) o_8@@1 f_12@@8))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7255) (ExhaleHeap@@7 T@PolymorphicMapType_7255) (Mask@@16 T@PolymorphicMapType_7276) (o_8@@2 T@Ref) (f_12@@9 T@Field_7328_7329) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_7315_7329 Mask@@16 o_8@@2 f_12@@9) (= (select (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| Heap@@11) o_8@@2 f_12@@9) (select (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| ExhaleHeap@@7) o_8@@2 f_12@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| ExhaleHeap@@7) o_8@@2 f_12@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7255) (ExhaleHeap@@8 T@PolymorphicMapType_7255) (Mask@@17 T@PolymorphicMapType_7276) (o_8@@3 T@Ref) (f_12@@10 T@Field_7315_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_7315_53 Mask@@17 o_8@@3 f_12@@10) (= (select (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| Heap@@12) o_8@@3 f_12@@10) (select (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| ExhaleHeap@@8) o_8@@3 f_12@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| ExhaleHeap@@8) o_8@@3 f_12@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_7315_21768) ) (! (= (select (|PolymorphicMapType_7276_3900_25314#PolymorphicMapType_7276| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7276_3900_25314#PolymorphicMapType_7276| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_7315_21635) ) (! (= (select (|PolymorphicMapType_7276_3900_21635#PolymorphicMapType_7276| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7276_3900_21635#PolymorphicMapType_7276| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_7315_53) ) (! (= (select (|PolymorphicMapType_7276_3900_53#PolymorphicMapType_7276| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7276_3900_53#PolymorphicMapType_7276| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7328_7329) ) (! (= (select (|PolymorphicMapType_7276_3900_3901#PolymorphicMapType_7276| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7276_3900_3901#PolymorphicMapType_7276| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7276) (SummandMask1 T@PolymorphicMapType_7276) (SummandMask2 T@PolymorphicMapType_7276) (o_2@@15 T@Ref) (f_4@@15 T@Field_7315_21768) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7276_3900_25314#PolymorphicMapType_7276| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_7276_3900_25314#PolymorphicMapType_7276| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_7276_3900_25314#PolymorphicMapType_7276| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7276_3900_25314#PolymorphicMapType_7276| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7276_3900_25314#PolymorphicMapType_7276| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7276_3900_25314#PolymorphicMapType_7276| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7276) (SummandMask1@@0 T@PolymorphicMapType_7276) (SummandMask2@@0 T@PolymorphicMapType_7276) (o_2@@16 T@Ref) (f_4@@16 T@Field_7315_21635) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7276_3900_21635#PolymorphicMapType_7276| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_7276_3900_21635#PolymorphicMapType_7276| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_7276_3900_21635#PolymorphicMapType_7276| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7276_3900_21635#PolymorphicMapType_7276| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7276_3900_21635#PolymorphicMapType_7276| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7276_3900_21635#PolymorphicMapType_7276| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7276) (SummandMask1@@1 T@PolymorphicMapType_7276) (SummandMask2@@1 T@PolymorphicMapType_7276) (o_2@@17 T@Ref) (f_4@@17 T@Field_7315_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7276_3900_53#PolymorphicMapType_7276| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_7276_3900_53#PolymorphicMapType_7276| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_7276_3900_53#PolymorphicMapType_7276| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7276_3900_53#PolymorphicMapType_7276| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7276_3900_53#PolymorphicMapType_7276| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7276_3900_53#PolymorphicMapType_7276| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7276) (SummandMask1@@2 T@PolymorphicMapType_7276) (SummandMask2@@2 T@PolymorphicMapType_7276) (o_2@@18 T@Ref) (f_4@@18 T@Field_7328_7329) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7276_3900_3901#PolymorphicMapType_7276| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_7276_3900_3901#PolymorphicMapType_7276| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_7276_3900_3901#PolymorphicMapType_7276| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7276_3900_3901#PolymorphicMapType_7276| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7276_3900_3901#PolymorphicMapType_7276| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7276_3900_3901#PolymorphicMapType_7276| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7255) (Mask@@18 T@PolymorphicMapType_7276) (x@@2 T@Ref) ) (!  (=> (state Heap@@13 Mask@@18) (= (|g'| Heap@@13 x@@2) (|g#frame| (FrameFragment_3901 (select (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| Heap@@13) x@@2 f_7)) x@@2)))
 :qid |stdinbpl.228:15|
 :skolemid |24|
 :pattern ( (state Heap@@13 Mask@@18) (|g'| Heap@@13 x@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7255) (Mask@@19 T@PolymorphicMapType_7276) (x@@3 T@Ref) ) (!  (=> (state Heap@@14 Mask@@19) (= (|h'| Heap@@14 x@@3) (|h#frame| EmptyFrame x@@3)))
 :qid |stdinbpl.278:15|
 :skolemid |27|
 :pattern ( (state Heap@@14 Mask@@19) (|h'| Heap@@14 x@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7255) (x@@4 T@Ref) ) (!  (and (= (g_3 Heap@@15 x@@4) (|g'| Heap@@15 x@@4)) (dummyFunction_1412 (|g#triggerStateless| x@@4)))
 :qid |stdinbpl.217:15|
 :skolemid |22|
 :pattern ( (g_3 Heap@@15 x@@4))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7255) (x@@5 T@Ref) ) (!  (and (= (h_3 Heap@@16 x@@5) (|h'| Heap@@16 x@@5)) (dummyFunction_1412 (|h#triggerStateless| x@@5)))
 :qid |stdinbpl.267:15|
 :skolemid |25|
 :pattern ( (h_3 Heap@@16 x@@5))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7255) (x@@6 T@Ref) ) (!  (and (= (gg Heap@@17 x@@6) (|gg'| Heap@@17 x@@6)) (dummyFunction_1412 (|gg#triggerStateless| x@@6)))
 :qid |stdinbpl.309:15|
 :skolemid |28|
 :pattern ( (gg Heap@@17 x@@6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7255) (Mask@@20 T@PolymorphicMapType_7276) (x@@7 T@Ref) ) (!  (=> (state Heap@@18 Mask@@20) (= (|gg'| Heap@@18 x@@7) (|gg#frame| (FrameFragment_1791 (|gg#condqp1| Heap@@18 x@@7)) x@@7)))
 :qid |stdinbpl.320:15|
 :skolemid |30|
 :pattern ( (state Heap@@18 Mask@@20) (|gg'| Heap@@18 x@@7))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7255) (o_7 T@Ref) (f_2 T@Field_7315_21635) (v T@FrameType) ) (! (succHeap Heap@@19 (PolymorphicMapType_7255 (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| Heap@@19) (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| Heap@@19) (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| Heap@@19) (store (|PolymorphicMapType_7255_7315_21635#PolymorphicMapType_7255| Heap@@19) o_7 f_2 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7255 (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| Heap@@19) (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| Heap@@19) (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| Heap@@19) (store (|PolymorphicMapType_7255_7315_21635#PolymorphicMapType_7255| Heap@@19) o_7 f_2 v)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7255) (o_7@@0 T@Ref) (f_2@@0 T@Field_7315_21768) (v@@0 T@PolymorphicMapType_7804) ) (! (succHeap Heap@@20 (PolymorphicMapType_7255 (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| Heap@@20) (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| Heap@@20) (store (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| Heap@@20) o_7@@0 f_2@@0 v@@0) (|PolymorphicMapType_7255_7315_21635#PolymorphicMapType_7255| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7255 (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| Heap@@20) (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| Heap@@20) (store (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| Heap@@20) o_7@@0 f_2@@0 v@@0) (|PolymorphicMapType_7255_7315_21635#PolymorphicMapType_7255| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7255) (o_7@@1 T@Ref) (f_2@@1 T@Field_7328_7329) (v@@1 T@Ref) ) (! (succHeap Heap@@21 (PolymorphicMapType_7255 (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| Heap@@21) (store (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| Heap@@21) o_7@@1 f_2@@1 v@@1) (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| Heap@@21) (|PolymorphicMapType_7255_7315_21635#PolymorphicMapType_7255| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7255 (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| Heap@@21) (store (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| Heap@@21) o_7@@1 f_2@@1 v@@1) (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| Heap@@21) (|PolymorphicMapType_7255_7315_21635#PolymorphicMapType_7255| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7255) (o_7@@2 T@Ref) (f_2@@2 T@Field_7315_53) (v@@2 Bool) ) (! (succHeap Heap@@22 (PolymorphicMapType_7255 (store (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| Heap@@22) o_7@@2 f_2@@2 v@@2) (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| Heap@@22) (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| Heap@@22) (|PolymorphicMapType_7255_7315_21635#PolymorphicMapType_7255| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7255 (store (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| Heap@@22) o_7@@2 f_2@@2 v@@2) (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| Heap@@22) (|PolymorphicMapType_7255_7315_21812#PolymorphicMapType_7255| Heap@@22) (|PolymorphicMapType_7255_7315_21635#PolymorphicMapType_7255| Heap@@22)))
)))
(assert (forall ((o_7@@3 T@Ref) (f_11 T@Field_7328_7329) (Heap@@23 T@PolymorphicMapType_7255) ) (!  (=> (select (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| Heap@@23) o_7@@3 $allocated) (select (|PolymorphicMapType_7255_3760_53#PolymorphicMapType_7255| Heap@@23) (select (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| Heap@@23) o_7@@3 f_11) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| Heap@@23) o_7@@3 f_11))
)))
(assert (forall ((p@@1 T@Field_7315_21635) (v_1@@0 T@FrameType) (q T@Field_7315_21635) (w@@0 T@FrameType) (r T@Field_7315_21635) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7315_7315 p@@1 v_1@@0 q w@@0) (InsidePredicate_7315_7315 q w@@0 r u)) (InsidePredicate_7315_7315 p@@1 v_1@@0 r u))
 :qid |stdinbpl.192:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7315_7315 p@@1 v_1@@0 q w@@0) (InsidePredicate_7315_7315 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap2Heap T@PolymorphicMapType_7255) (Heap1Heap T@PolymorphicMapType_7255) (x@@8 T@Ref) ) (!  (=> (and (=  (and (= (|sk_gg#condqp1| (|gg#condqp1| Heap2Heap x@@8) (|gg#condqp1| Heap1Heap x@@8)) x@@8) (< NoPerm FullPerm))  (and (= (|sk_gg#condqp1| (|gg#condqp1| Heap2Heap x@@8) (|gg#condqp1| Heap1Heap x@@8)) x@@8) (< NoPerm FullPerm))) (=> (and (= (|sk_gg#condqp1| (|gg#condqp1| Heap2Heap x@@8) (|gg#condqp1| Heap1Heap x@@8)) x@@8) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| Heap2Heap) (|sk_gg#condqp1| (|gg#condqp1| Heap2Heap x@@8) (|gg#condqp1| Heap1Heap x@@8)) f_7) (select (|PolymorphicMapType_7255_3763_3764#PolymorphicMapType_7255| Heap1Heap) (|sk_gg#condqp1| (|gg#condqp1| Heap2Heap x@@8) (|gg#condqp1| Heap1Heap x@@8)) f_7)))) (= (|gg#condqp1| Heap2Heap x@@8) (|gg#condqp1| Heap1Heap x@@8)))
 :qid |stdinbpl.330:15|
 :skolemid |31|
 :pattern ( (|gg#condqp1| Heap2Heap x@@8) (|gg#condqp1| Heap1Heap x@@8) (succHeapTrans Heap2Heap Heap1Heap))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
