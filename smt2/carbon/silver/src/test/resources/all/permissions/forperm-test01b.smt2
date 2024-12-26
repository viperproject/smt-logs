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
(declare-sort T@Field_7077_53 0)
(declare-sort T@Field_7090_7091 0)
(declare-sort T@Field_10403_1186 0)
(declare-sort T@Field_3421_21071 0)
(declare-sort T@Field_3421_20938 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_7038 0)) (((PolymorphicMapType_7038 (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| (Array T@Ref T@Field_10403_1186 Real)) (|PolymorphicMapType_7038_3421_53#PolymorphicMapType_7038| (Array T@Ref T@Field_7077_53 Real)) (|PolymorphicMapType_7038_3421_7091#PolymorphicMapType_7038| (Array T@Ref T@Field_7090_7091 Real)) (|PolymorphicMapType_7038_3421_20938#PolymorphicMapType_7038| (Array T@Ref T@Field_3421_20938 Real)) (|PolymorphicMapType_7038_3421_25193#PolymorphicMapType_7038| (Array T@Ref T@Field_3421_21071 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7566 0)) (((PolymorphicMapType_7566 (|PolymorphicMapType_7566_7077_53#PolymorphicMapType_7566| (Array T@Ref T@Field_7077_53 Bool)) (|PolymorphicMapType_7566_7077_7091#PolymorphicMapType_7566| (Array T@Ref T@Field_7090_7091 Bool)) (|PolymorphicMapType_7566_7077_1186#PolymorphicMapType_7566| (Array T@Ref T@Field_10403_1186 Bool)) (|PolymorphicMapType_7566_7077_20938#PolymorphicMapType_7566| (Array T@Ref T@Field_3421_20938 Bool)) (|PolymorphicMapType_7566_7077_22249#PolymorphicMapType_7566| (Array T@Ref T@Field_3421_21071 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7017 0)) (((PolymorphicMapType_7017 (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| (Array T@Ref T@Field_7077_53 Bool)) (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| (Array T@Ref T@Field_7090_7091 T@Ref)) (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| (Array T@Ref T@Field_10403_1186 Int)) (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| (Array T@Ref T@Field_3421_21071 T@PolymorphicMapType_7566)) (|PolymorphicMapType_7017_7077_20938#PolymorphicMapType_7017| (Array T@Ref T@Field_3421_20938 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_7077_53)
(declare-fun f_7 () T@Field_10403_1186)
(declare-fun g () T@Field_10403_1186)
(declare-fun succHeap (T@PolymorphicMapType_7017 T@PolymorphicMapType_7017) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7017 T@PolymorphicMapType_7017) Bool)
(declare-fun state (T@PolymorphicMapType_7017 T@PolymorphicMapType_7038) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7038) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7566)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7017 T@PolymorphicMapType_7017 T@PolymorphicMapType_7038) Bool)
(declare-fun IsPredicateField_3421_21029 (T@Field_3421_20938) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3421 (T@Field_3421_20938) T@Field_3421_21071)
(declare-fun HasDirectPerm_3421_21002 (T@PolymorphicMapType_7038 T@Ref T@Field_3421_20938) Bool)
(declare-fun IsWandField_3421_22776 (T@Field_3421_20938) Bool)
(declare-fun WandMaskField_3421 (T@Field_3421_20938) T@Field_3421_21071)
(declare-fun dummyHeap () T@PolymorphicMapType_7017)
(declare-fun ZeroMask () T@PolymorphicMapType_7038)
(declare-fun InsidePredicate_7077_7077 (T@Field_3421_20938 T@FrameType T@Field_3421_20938 T@FrameType) Bool)
(declare-fun IsPredicateField_3421_1186 (T@Field_10403_1186) Bool)
(declare-fun IsWandField_3421_1186 (T@Field_10403_1186) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3421_26322 (T@Field_3421_21071) Bool)
(declare-fun IsWandField_3421_26338 (T@Field_3421_21071) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3421_7091 (T@Field_7090_7091) Bool)
(declare-fun IsWandField_3421_7091 (T@Field_7090_7091) Bool)
(declare-fun IsPredicateField_3421_53 (T@Field_7077_53) Bool)
(declare-fun IsWandField_3421_53 (T@Field_7077_53) Bool)
(declare-fun HasDirectPerm_3421_26776 (T@PolymorphicMapType_7038 T@Ref T@Field_3421_21071) Bool)
(declare-fun HasDirectPerm_3421_7091 (T@PolymorphicMapType_7038 T@Ref T@Field_7090_7091) Bool)
(declare-fun HasDirectPerm_3421_53 (T@PolymorphicMapType_7038 T@Ref T@Field_7077_53) Bool)
(declare-fun HasDirectPerm_3421_1186 (T@PolymorphicMapType_7038 T@Ref T@Field_10403_1186) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7038 T@PolymorphicMapType_7038 T@PolymorphicMapType_7038) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_7017) (Heap1 T@PolymorphicMapType_7017) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7017) (Mask T@PolymorphicMapType_7038) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7017) (Heap1@@0 T@PolymorphicMapType_7017) (Heap2 T@PolymorphicMapType_7017) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3421_21071) ) (!  (not (select (|PolymorphicMapType_7566_7077_22249#PolymorphicMapType_7566| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7566_7077_22249#PolymorphicMapType_7566| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3421_20938) ) (!  (not (select (|PolymorphicMapType_7566_7077_20938#PolymorphicMapType_7566| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7566_7077_20938#PolymorphicMapType_7566| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10403_1186) ) (!  (not (select (|PolymorphicMapType_7566_7077_1186#PolymorphicMapType_7566| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7566_7077_1186#PolymorphicMapType_7566| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7090_7091) ) (!  (not (select (|PolymorphicMapType_7566_7077_7091#PolymorphicMapType_7566| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7566_7077_7091#PolymorphicMapType_7566| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7077_53) ) (!  (not (select (|PolymorphicMapType_7566_7077_53#PolymorphicMapType_7566| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7566_7077_53#PolymorphicMapType_7566| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7017) (ExhaleHeap T@PolymorphicMapType_7017) (Mask@@0 T@PolymorphicMapType_7038) (pm_f_12 T@Field_3421_20938) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3421_21002 Mask@@0 null pm_f_12) (IsPredicateField_3421_21029 pm_f_12)) (= (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@0) null (PredicateMaskField_3421 pm_f_12)) (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| ExhaleHeap) null (PredicateMaskField_3421 pm_f_12)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3421_21029 pm_f_12) (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| ExhaleHeap) null (PredicateMaskField_3421 pm_f_12)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7017) (ExhaleHeap@@0 T@PolymorphicMapType_7017) (Mask@@1 T@PolymorphicMapType_7038) (pm_f_12@@0 T@Field_3421_20938) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3421_21002 Mask@@1 null pm_f_12@@0) (IsWandField_3421_22776 pm_f_12@@0)) (= (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@1) null (WandMaskField_3421 pm_f_12@@0)) (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| ExhaleHeap@@0) null (WandMaskField_3421 pm_f_12@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_3421_22776 pm_f_12@@0) (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| ExhaleHeap@@0) null (WandMaskField_3421 pm_f_12@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7017) (ExhaleHeap@@1 T@PolymorphicMapType_7017) (Mask@@2 T@PolymorphicMapType_7038) (o_13 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| Heap@@2) o_13 $allocated) (select (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| ExhaleHeap@@1) o_13 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| ExhaleHeap@@1) o_13 $allocated))
)))
(assert (forall ((p T@Field_3421_20938) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7077_7077 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7077_7077 p v_1 p w))
)))
(assert  (not (IsPredicateField_3421_1186 f_7)))
(assert  (not (IsWandField_3421_1186 f_7)))
(assert  (not (IsPredicateField_3421_1186 g)))
(assert  (not (IsWandField_3421_1186 g)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7017) (ExhaleHeap@@2 T@PolymorphicMapType_7017) (Mask@@3 T@PolymorphicMapType_7038) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_7038) (o_2@@4 T@Ref) (f_4@@4 T@Field_3421_21071) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_7038_3421_25193#PolymorphicMapType_7038| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_3421_26322 f_4@@4))) (not (IsWandField_3421_26338 f_4@@4))) (<= (select (|PolymorphicMapType_7038_3421_25193#PolymorphicMapType_7038| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_7038_3421_25193#PolymorphicMapType_7038| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_7038) (o_2@@5 T@Ref) (f_4@@5 T@Field_3421_20938) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_7038_3421_20938#PolymorphicMapType_7038| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_3421_21029 f_4@@5))) (not (IsWandField_3421_22776 f_4@@5))) (<= (select (|PolymorphicMapType_7038_3421_20938#PolymorphicMapType_7038| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_7038_3421_20938#PolymorphicMapType_7038| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_7038) (o_2@@6 T@Ref) (f_4@@6 T@Field_7090_7091) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_7038_3421_7091#PolymorphicMapType_7038| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3421_7091 f_4@@6))) (not (IsWandField_3421_7091 f_4@@6))) (<= (select (|PolymorphicMapType_7038_3421_7091#PolymorphicMapType_7038| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_7038_3421_7091#PolymorphicMapType_7038| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_7038) (o_2@@7 T@Ref) (f_4@@7 T@Field_7077_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_7038_3421_53#PolymorphicMapType_7038| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3421_53 f_4@@7))) (not (IsWandField_3421_53 f_4@@7))) (<= (select (|PolymorphicMapType_7038_3421_53#PolymorphicMapType_7038| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_7038_3421_53#PolymorphicMapType_7038| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_7038) (o_2@@8 T@Ref) (f_4@@8 T@Field_10403_1186) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3421_1186 f_4@@8))) (not (IsWandField_3421_1186 f_4@@8))) (<= (select (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_7038) (o_2@@9 T@Ref) (f_4@@9 T@Field_3421_21071) ) (! (= (HasDirectPerm_3421_26776 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_7038_3421_25193#PolymorphicMapType_7038| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3421_26776 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7038) (o_2@@10 T@Ref) (f_4@@10 T@Field_3421_20938) ) (! (= (HasDirectPerm_3421_21002 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_7038_3421_20938#PolymorphicMapType_7038| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3421_21002 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7038) (o_2@@11 T@Ref) (f_4@@11 T@Field_7090_7091) ) (! (= (HasDirectPerm_3421_7091 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_7038_3421_7091#PolymorphicMapType_7038| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3421_7091 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7038) (o_2@@12 T@Ref) (f_4@@12 T@Field_7077_53) ) (! (= (HasDirectPerm_3421_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_7038_3421_53#PolymorphicMapType_7038| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3421_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7038) (o_2@@13 T@Ref) (f_4@@13 T@Field_10403_1186) ) (! (= (HasDirectPerm_3421_1186 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3421_1186 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7017) (ExhaleHeap@@3 T@PolymorphicMapType_7017) (Mask@@14 T@PolymorphicMapType_7038) (pm_f_12@@1 T@Field_3421_20938) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_3421_21002 Mask@@14 null pm_f_12@@1) (IsPredicateField_3421_21029 pm_f_12@@1)) (and (and (and (and (forall ((o2_12 T@Ref) (f_18 T@Field_7077_53) ) (!  (=> (select (|PolymorphicMapType_7566_7077_53#PolymorphicMapType_7566| (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@4) null (PredicateMaskField_3421 pm_f_12@@1))) o2_12 f_18) (= (select (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| Heap@@4) o2_12 f_18) (select (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| ExhaleHeap@@3) o2_12 f_18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| ExhaleHeap@@3) o2_12 f_18))
)) (forall ((o2_12@@0 T@Ref) (f_18@@0 T@Field_7090_7091) ) (!  (=> (select (|PolymorphicMapType_7566_7077_7091#PolymorphicMapType_7566| (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@4) null (PredicateMaskField_3421 pm_f_12@@1))) o2_12@@0 f_18@@0) (= (select (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| Heap@@4) o2_12@@0 f_18@@0) (select (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| ExhaleHeap@@3) o2_12@@0 f_18@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| ExhaleHeap@@3) o2_12@@0 f_18@@0))
))) (forall ((o2_12@@1 T@Ref) (f_18@@1 T@Field_10403_1186) ) (!  (=> (select (|PolymorphicMapType_7566_7077_1186#PolymorphicMapType_7566| (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@4) null (PredicateMaskField_3421 pm_f_12@@1))) o2_12@@1 f_18@@1) (= (select (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| Heap@@4) o2_12@@1 f_18@@1) (select (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| ExhaleHeap@@3) o2_12@@1 f_18@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| ExhaleHeap@@3) o2_12@@1 f_18@@1))
))) (forall ((o2_12@@2 T@Ref) (f_18@@2 T@Field_3421_20938) ) (!  (=> (select (|PolymorphicMapType_7566_7077_20938#PolymorphicMapType_7566| (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@4) null (PredicateMaskField_3421 pm_f_12@@1))) o2_12@@2 f_18@@2) (= (select (|PolymorphicMapType_7017_7077_20938#PolymorphicMapType_7017| Heap@@4) o2_12@@2 f_18@@2) (select (|PolymorphicMapType_7017_7077_20938#PolymorphicMapType_7017| ExhaleHeap@@3) o2_12@@2 f_18@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7017_7077_20938#PolymorphicMapType_7017| ExhaleHeap@@3) o2_12@@2 f_18@@2))
))) (forall ((o2_12@@3 T@Ref) (f_18@@3 T@Field_3421_21071) ) (!  (=> (select (|PolymorphicMapType_7566_7077_22249#PolymorphicMapType_7566| (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@4) null (PredicateMaskField_3421 pm_f_12@@1))) o2_12@@3 f_18@@3) (= (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@4) o2_12@@3 f_18@@3) (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| ExhaleHeap@@3) o2_12@@3 f_18@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| ExhaleHeap@@3) o2_12@@3 f_18@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_3421_21029 pm_f_12@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7017) (ExhaleHeap@@4 T@PolymorphicMapType_7017) (Mask@@15 T@PolymorphicMapType_7038) (pm_f_12@@2 T@Field_3421_20938) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_3421_21002 Mask@@15 null pm_f_12@@2) (IsWandField_3421_22776 pm_f_12@@2)) (and (and (and (and (forall ((o2_12@@4 T@Ref) (f_18@@4 T@Field_7077_53) ) (!  (=> (select (|PolymorphicMapType_7566_7077_53#PolymorphicMapType_7566| (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@5) null (WandMaskField_3421 pm_f_12@@2))) o2_12@@4 f_18@@4) (= (select (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| Heap@@5) o2_12@@4 f_18@@4) (select (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| ExhaleHeap@@4) o2_12@@4 f_18@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| ExhaleHeap@@4) o2_12@@4 f_18@@4))
)) (forall ((o2_12@@5 T@Ref) (f_18@@5 T@Field_7090_7091) ) (!  (=> (select (|PolymorphicMapType_7566_7077_7091#PolymorphicMapType_7566| (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@5) null (WandMaskField_3421 pm_f_12@@2))) o2_12@@5 f_18@@5) (= (select (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| Heap@@5) o2_12@@5 f_18@@5) (select (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| ExhaleHeap@@4) o2_12@@5 f_18@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| ExhaleHeap@@4) o2_12@@5 f_18@@5))
))) (forall ((o2_12@@6 T@Ref) (f_18@@6 T@Field_10403_1186) ) (!  (=> (select (|PolymorphicMapType_7566_7077_1186#PolymorphicMapType_7566| (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@5) null (WandMaskField_3421 pm_f_12@@2))) o2_12@@6 f_18@@6) (= (select (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| Heap@@5) o2_12@@6 f_18@@6) (select (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| ExhaleHeap@@4) o2_12@@6 f_18@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| ExhaleHeap@@4) o2_12@@6 f_18@@6))
))) (forall ((o2_12@@7 T@Ref) (f_18@@7 T@Field_3421_20938) ) (!  (=> (select (|PolymorphicMapType_7566_7077_20938#PolymorphicMapType_7566| (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@5) null (WandMaskField_3421 pm_f_12@@2))) o2_12@@7 f_18@@7) (= (select (|PolymorphicMapType_7017_7077_20938#PolymorphicMapType_7017| Heap@@5) o2_12@@7 f_18@@7) (select (|PolymorphicMapType_7017_7077_20938#PolymorphicMapType_7017| ExhaleHeap@@4) o2_12@@7 f_18@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7017_7077_20938#PolymorphicMapType_7017| ExhaleHeap@@4) o2_12@@7 f_18@@7))
))) (forall ((o2_12@@8 T@Ref) (f_18@@8 T@Field_3421_21071) ) (!  (=> (select (|PolymorphicMapType_7566_7077_22249#PolymorphicMapType_7566| (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@5) null (WandMaskField_3421 pm_f_12@@2))) o2_12@@8 f_18@@8) (= (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@5) o2_12@@8 f_18@@8) (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| ExhaleHeap@@4) o2_12@@8 f_18@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| ExhaleHeap@@4) o2_12@@8 f_18@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_3421_22776 pm_f_12@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7017) (ExhaleHeap@@5 T@PolymorphicMapType_7017) (Mask@@16 T@PolymorphicMapType_7038) (o_13@@0 T@Ref) (f_18@@9 T@Field_3421_21071) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_3421_26776 Mask@@16 o_13@@0 f_18@@9) (= (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@6) o_13@@0 f_18@@9) (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| ExhaleHeap@@5) o_13@@0 f_18@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| ExhaleHeap@@5) o_13@@0 f_18@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7017) (ExhaleHeap@@6 T@PolymorphicMapType_7017) (Mask@@17 T@PolymorphicMapType_7038) (o_13@@1 T@Ref) (f_18@@10 T@Field_3421_20938) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_3421_21002 Mask@@17 o_13@@1 f_18@@10) (= (select (|PolymorphicMapType_7017_7077_20938#PolymorphicMapType_7017| Heap@@7) o_13@@1 f_18@@10) (select (|PolymorphicMapType_7017_7077_20938#PolymorphicMapType_7017| ExhaleHeap@@6) o_13@@1 f_18@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_7017_7077_20938#PolymorphicMapType_7017| ExhaleHeap@@6) o_13@@1 f_18@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7017) (ExhaleHeap@@7 T@PolymorphicMapType_7017) (Mask@@18 T@PolymorphicMapType_7038) (o_13@@2 T@Ref) (f_18@@11 T@Field_7090_7091) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_3421_7091 Mask@@18 o_13@@2 f_18@@11) (= (select (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| Heap@@8) o_13@@2 f_18@@11) (select (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| ExhaleHeap@@7) o_13@@2 f_18@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| ExhaleHeap@@7) o_13@@2 f_18@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7017) (ExhaleHeap@@8 T@PolymorphicMapType_7017) (Mask@@19 T@PolymorphicMapType_7038) (o_13@@3 T@Ref) (f_18@@12 T@Field_7077_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_3421_53 Mask@@19 o_13@@3 f_18@@12) (= (select (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| Heap@@9) o_13@@3 f_18@@12) (select (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| ExhaleHeap@@8) o_13@@3 f_18@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| ExhaleHeap@@8) o_13@@3 f_18@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7017) (ExhaleHeap@@9 T@PolymorphicMapType_7017) (Mask@@20 T@PolymorphicMapType_7038) (o_13@@4 T@Ref) (f_18@@13 T@Field_10403_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_3421_1186 Mask@@20 o_13@@4 f_18@@13) (= (select (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| Heap@@10) o_13@@4 f_18@@13) (select (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| ExhaleHeap@@9) o_13@@4 f_18@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| ExhaleHeap@@9) o_13@@4 f_18@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3421_21071) ) (! (= (select (|PolymorphicMapType_7038_3421_25193#PolymorphicMapType_7038| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7038_3421_25193#PolymorphicMapType_7038| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_3421_20938) ) (! (= (select (|PolymorphicMapType_7038_3421_20938#PolymorphicMapType_7038| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7038_3421_20938#PolymorphicMapType_7038| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_7090_7091) ) (! (= (select (|PolymorphicMapType_7038_3421_7091#PolymorphicMapType_7038| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7038_3421_7091#PolymorphicMapType_7038| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_7077_53) ) (! (= (select (|PolymorphicMapType_7038_3421_53#PolymorphicMapType_7038| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7038_3421_53#PolymorphicMapType_7038| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_10403_1186) ) (! (= (select (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7038) (SummandMask1 T@PolymorphicMapType_7038) (SummandMask2 T@PolymorphicMapType_7038) (o_2@@19 T@Ref) (f_4@@19 T@Field_3421_21071) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7038_3421_25193#PolymorphicMapType_7038| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_7038_3421_25193#PolymorphicMapType_7038| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_7038_3421_25193#PolymorphicMapType_7038| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7038_3421_25193#PolymorphicMapType_7038| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7038_3421_25193#PolymorphicMapType_7038| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7038_3421_25193#PolymorphicMapType_7038| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7038) (SummandMask1@@0 T@PolymorphicMapType_7038) (SummandMask2@@0 T@PolymorphicMapType_7038) (o_2@@20 T@Ref) (f_4@@20 T@Field_3421_20938) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7038_3421_20938#PolymorphicMapType_7038| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_7038_3421_20938#PolymorphicMapType_7038| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_7038_3421_20938#PolymorphicMapType_7038| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7038_3421_20938#PolymorphicMapType_7038| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7038_3421_20938#PolymorphicMapType_7038| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7038_3421_20938#PolymorphicMapType_7038| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7038) (SummandMask1@@1 T@PolymorphicMapType_7038) (SummandMask2@@1 T@PolymorphicMapType_7038) (o_2@@21 T@Ref) (f_4@@21 T@Field_7090_7091) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7038_3421_7091#PolymorphicMapType_7038| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_7038_3421_7091#PolymorphicMapType_7038| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_7038_3421_7091#PolymorphicMapType_7038| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7038_3421_7091#PolymorphicMapType_7038| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7038_3421_7091#PolymorphicMapType_7038| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7038_3421_7091#PolymorphicMapType_7038| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7038) (SummandMask1@@2 T@PolymorphicMapType_7038) (SummandMask2@@2 T@PolymorphicMapType_7038) (o_2@@22 T@Ref) (f_4@@22 T@Field_7077_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7038_3421_53#PolymorphicMapType_7038| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_7038_3421_53#PolymorphicMapType_7038| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_7038_3421_53#PolymorphicMapType_7038| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7038_3421_53#PolymorphicMapType_7038| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7038_3421_53#PolymorphicMapType_7038| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7038_3421_53#PolymorphicMapType_7038| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7038) (SummandMask1@@3 T@PolymorphicMapType_7038) (SummandMask2@@3 T@PolymorphicMapType_7038) (o_2@@23 T@Ref) (f_4@@23 T@Field_10403_1186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7017) (o_34 T@Ref) (f_36 T@Field_3421_20938) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_7017 (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| Heap@@11) (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| Heap@@11) (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| Heap@@11) (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@11) (store (|PolymorphicMapType_7017_7077_20938#PolymorphicMapType_7017| Heap@@11) o_34 f_36 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7017 (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| Heap@@11) (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| Heap@@11) (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| Heap@@11) (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@11) (store (|PolymorphicMapType_7017_7077_20938#PolymorphicMapType_7017| Heap@@11) o_34 f_36 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7017) (o_34@@0 T@Ref) (f_36@@0 T@Field_3421_21071) (v@@0 T@PolymorphicMapType_7566) ) (! (succHeap Heap@@12 (PolymorphicMapType_7017 (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| Heap@@12) (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| Heap@@12) (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| Heap@@12) (store (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@12) o_34@@0 f_36@@0 v@@0) (|PolymorphicMapType_7017_7077_20938#PolymorphicMapType_7017| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7017 (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| Heap@@12) (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| Heap@@12) (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| Heap@@12) (store (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@12) o_34@@0 f_36@@0 v@@0) (|PolymorphicMapType_7017_7077_20938#PolymorphicMapType_7017| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7017) (o_34@@1 T@Ref) (f_36@@1 T@Field_10403_1186) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_7017 (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| Heap@@13) (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| Heap@@13) (store (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| Heap@@13) o_34@@1 f_36@@1 v@@1) (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@13) (|PolymorphicMapType_7017_7077_20938#PolymorphicMapType_7017| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7017 (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| Heap@@13) (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| Heap@@13) (store (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| Heap@@13) o_34@@1 f_36@@1 v@@1) (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@13) (|PolymorphicMapType_7017_7077_20938#PolymorphicMapType_7017| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7017) (o_34@@2 T@Ref) (f_36@@2 T@Field_7090_7091) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_7017 (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| Heap@@14) (store (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| Heap@@14) o_34@@2 f_36@@2 v@@2) (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| Heap@@14) (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@14) (|PolymorphicMapType_7017_7077_20938#PolymorphicMapType_7017| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7017 (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| Heap@@14) (store (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| Heap@@14) o_34@@2 f_36@@2 v@@2) (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| Heap@@14) (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@14) (|PolymorphicMapType_7017_7077_20938#PolymorphicMapType_7017| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7017) (o_34@@3 T@Ref) (f_36@@3 T@Field_7077_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_7017 (store (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| Heap@@15) o_34@@3 f_36@@3 v@@3) (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| Heap@@15) (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| Heap@@15) (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@15) (|PolymorphicMapType_7017_7077_20938#PolymorphicMapType_7017| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7017 (store (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| Heap@@15) o_34@@3 f_36@@3 v@@3) (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| Heap@@15) (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| Heap@@15) (|PolymorphicMapType_7017_3421_21115#PolymorphicMapType_7017| Heap@@15) (|PolymorphicMapType_7017_7077_20938#PolymorphicMapType_7017| Heap@@15)))
)))
(assert (forall ((o_34@@4 T@Ref) (f_40 T@Field_7090_7091) (Heap@@16 T@PolymorphicMapType_7017) ) (!  (=> (select (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| Heap@@16) o_34@@4 $allocated) (select (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| Heap@@16) (select (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| Heap@@16) o_34@@4 f_40) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7017_3296_3297#PolymorphicMapType_7017| Heap@@16) o_34@@4 f_40))
)))
(assert (forall ((p@@1 T@Field_3421_20938) (v_1@@0 T@FrameType) (q T@Field_3421_20938) (w@@0 T@FrameType) (r T@Field_3421_20938) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7077_7077 p@@1 v_1@@0 q w@@0) (InsidePredicate_7077_7077 q w@@0 r u)) (InsidePredicate_7077_7077 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7077_7077 p@@1 v_1@@0 q w@@0) (InsidePredicate_7077_7077 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@1 () T@PolymorphicMapType_7038)
(declare-fun y_14 () T@Ref)
(declare-fun y_3 () T@Ref)
(declare-fun y_20 () T@Ref)
(declare-fun Heap@@17 () T@PolymorphicMapType_7017)
(declare-fun b_24 () Bool)
(declare-fun y_13 () T@Ref)
(declare-fun y_12 () T@Ref)
(declare-fun x () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_7038)
(set-info :boogie-vc-id test01b)
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
 (=> (= (ControlFlow 0 0) 38) (let ((anon6_correct true))
(let ((anon30_Else_correct  (=> (and (not (HasDirectPerm_3421_1186 Mask@1 y_14 f_7)) (= (ControlFlow 0 32) 29)) anon6_correct)))
(let ((anon30_Then_correct  (=> (HasDirectPerm_3421_1186 Mask@1 y_14 f_7) (and (=> (= (ControlFlow 0 30) (- 0 31)) (HasDirectPerm_3421_1186 Mask@1 y_14 f_7)) (=> (HasDirectPerm_3421_1186 Mask@1 y_14 f_7) (=> (= (ControlFlow 0 30) 29) anon6_correct))))))
(let ((anon15_correct true))
(let ((anon35_Else_correct  (=> (and (not (HasDirectPerm_3421_1186 Mask@1 y_3 f_7)) (= (ControlFlow 0 24) 21)) anon15_correct)))
(let ((anon35_Then_correct  (=> (HasDirectPerm_3421_1186 Mask@1 y_3 f_7) (and (=> (= (ControlFlow 0 22) (- 0 23)) (HasDirectPerm_3421_1186 Mask@1 y_3 f_7)) (=> (HasDirectPerm_3421_1186 Mask@1 y_3 f_7) (=> (= (ControlFlow 0 22) 21) anon15_correct))))))
(let ((anon25_correct true))
(let ((anon40_Else_correct  (=> (and (not (HasDirectPerm_3421_1186 Mask@1 y_20 f_7)) (= (ControlFlow 0 14) 11)) anon25_correct)))
(let ((anon40_Then_correct  (=> (HasDirectPerm_3421_1186 Mask@1 y_20 f_7) (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_3421_1186 Mask@1 y_20 f_7)) (=> (HasDirectPerm_3421_1186 Mask@1 y_20 f_7) (=> (= (ControlFlow 0 12) 11) anon25_correct))))))
(let ((anon39_Else_correct  (=> (= (ControlFlow 0 10) (- 0 9)) (forall ((y_9_1 T@Ref) ) (!  (=> (HasDirectPerm_3421_1186 Mask@1 y_9_1 f_7) false)
 :qid |stdinbpl.442:15|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| Mask@1) y_9_1 f_7))
 :pattern ( (select (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| Heap@@17) y_9_1 f_7))
)))))
(let ((anon22_correct  (=> (state Heap@@17 Mask@1) (and (and (=> (= (ControlFlow 0 15) 10) anon39_Else_correct) (=> (= (ControlFlow 0 15) 12) anon40_Then_correct)) (=> (= (ControlFlow 0 15) 14) anon40_Else_correct)))))
(let ((anon38_Else_correct  (=> (and (not (forall ((y_7_2 T@Ref) ) (!  (=> (HasDirectPerm_3421_1186 Mask@1 y_7_2 f_7) false)
 :qid |stdinbpl.420:17|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| Mask@1) y_7_2 f_7))
 :pattern ( (select (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| Heap@@17) y_7_2 f_7))
))) (= (ControlFlow 0 18) 15)) anon22_correct)))
(let ((anon38_Then_correct  (=> (forall ((y_7_2@@0 T@Ref) ) (!  (=> (HasDirectPerm_3421_1186 Mask@1 y_7_2@@0 f_7) false)
 :qid |stdinbpl.420:17|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| Mask@1) y_7_2@@0 f_7))
 :pattern ( (select (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| Heap@@17) y_7_2@@0 f_7))
)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (not b_24)) (=> (not b_24) (=> (= (ControlFlow 0 16) 15) anon22_correct))))))
(let ((anon19_correct true))
(let ((anon37_Else_correct  (=> (and (not (HasDirectPerm_3421_1186 Mask@1 y_13 f_7)) (= (ControlFlow 0 8) 5)) anon19_correct)))
(let ((anon37_Then_correct  (=> (HasDirectPerm_3421_1186 Mask@1 y_13 f_7) (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_3421_1186 Mask@1 y_13 f_7)) (=> (HasDirectPerm_3421_1186 Mask@1 y_13 f_7) (=> (= (ControlFlow 0 6) 5) anon19_correct))))))
(let ((anon16_correct  (=> (state Heap@@17 Mask@1) (and (and (and (=> (= (ControlFlow 0 19) 16) anon38_Then_correct) (=> (= (ControlFlow 0 19) 18) anon38_Else_correct)) (=> (= (ControlFlow 0 19) 6) anon37_Then_correct)) (=> (= (ControlFlow 0 19) 8) anon37_Else_correct)))))
(let ((anon33_Then_correct  (=> (forall ((y_3_2 T@Ref) ) (!  (=> (HasDirectPerm_3421_1186 Mask@1 y_3_2 f_7) false)
 :qid |stdinbpl.392:17|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| Mask@1) y_3_2 f_7))
 :pattern ( (select (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| Heap@@17) y_3_2 f_7))
)) (and (and (=> (= (ControlFlow 0 25) 19) anon16_correct) (=> (= (ControlFlow 0 25) 22) anon35_Then_correct)) (=> (= (ControlFlow 0 25) 24) anon35_Else_correct)))))
(let ((anon33_Else_correct  (=> (and (not (forall ((y_3_2@@0 T@Ref) ) (!  (=> (HasDirectPerm_3421_1186 Mask@1 y_3_2@@0 f_7) false)
 :qid |stdinbpl.392:17|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| Mask@1) y_3_2@@0 f_7))
 :pattern ( (select (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| Heap@@17) y_3_2@@0 f_7))
))) (= (ControlFlow 0 20) 19)) anon16_correct)))
(let ((anon10_correct true))
(let ((anon32_Else_correct  (=> (and (not (HasDirectPerm_3421_1186 Mask@1 y_12 f_7)) (= (ControlFlow 0 4) 1)) anon10_correct)))
(let ((anon32_Then_correct  (=> (HasDirectPerm_3421_1186 Mask@1 y_12 f_7) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_3421_1186 Mask@1 y_12 f_7)) (=> (HasDirectPerm_3421_1186 Mask@1 y_12 f_7) (=> (= (ControlFlow 0 2) 1) anon10_correct))))))
(let ((anon7_correct  (and (=> (= (ControlFlow 0 26) (- 0 27)) (or b_24 (forall ((y_1 T@Ref) ) (!  (=> (HasDirectPerm_3421_1186 Mask@1 y_1 f_7) false)
 :qid |stdinbpl.374:23|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| Mask@1) y_1 f_7))
 :pattern ( (select (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| Heap@@17) y_1 f_7))
)))) (=> (or b_24 (forall ((y_1@@0 T@Ref) ) (!  (=> (HasDirectPerm_3421_1186 Mask@1 y_1@@0 f_7) false)
 :qid |stdinbpl.374:23|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| Mask@1) y_1@@0 f_7))
 :pattern ( (select (|PolymorphicMapType_7017_3421_1186#PolymorphicMapType_7017| Heap@@17) y_1@@0 f_7))
))) (=> (state Heap@@17 Mask@1) (and (and (and (=> (= (ControlFlow 0 26) 25) anon33_Then_correct) (=> (= (ControlFlow 0 26) 20) anon33_Else_correct)) (=> (= (ControlFlow 0 26) 2) anon32_Then_correct)) (=> (= (ControlFlow 0 26) 4) anon32_Else_correct)))))))
(let ((anon28_Then_correct  (=> (not b_24) (and (and (=> (= (ControlFlow 0 33) 26) anon7_correct) (=> (= (ControlFlow 0 33) 30) anon30_Then_correct)) (=> (= (ControlFlow 0 33) 32) anon30_Else_correct)))))
(let ((anon28_Else_correct  (=> (and b_24 (= (ControlFlow 0 28) 26)) anon7_correct)))
(let ((anon2_correct  (=> (state Heap@@17 Mask@1) (and (=> (= (ControlFlow 0 34) 33) anon28_Then_correct) (=> (= (ControlFlow 0 34) 28) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (not b_24) (=> (and (= Mask@1 ZeroMask) (= (ControlFlow 0 36) 34)) anon2_correct))))
(let ((anon27_Then_correct  (=> (and b_24 (not (= x null))) (=> (and (and (= Mask@0 (PolymorphicMapType_7038 (store (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_7038_3421_1186#PolymorphicMapType_7038| ZeroMask) x f_7) FullPerm)) (|PolymorphicMapType_7038_3421_53#PolymorphicMapType_7038| ZeroMask) (|PolymorphicMapType_7038_3421_7091#PolymorphicMapType_7038| ZeroMask) (|PolymorphicMapType_7038_3421_20938#PolymorphicMapType_7038| ZeroMask) (|PolymorphicMapType_7038_3421_25193#PolymorphicMapType_7038| ZeroMask))) (state Heap@@17 Mask@0)) (and (= Mask@1 Mask@0) (= (ControlFlow 0 35) 34))) anon2_correct))))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_7017_3293_53#PolymorphicMapType_7017| Heap@@17) x $allocated)) (and (=> (= (ControlFlow 0 37) 35) anon27_Then_correct) (=> (= (ControlFlow 0 37) 36) anon27_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 38) 37) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 10) (- 9))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
