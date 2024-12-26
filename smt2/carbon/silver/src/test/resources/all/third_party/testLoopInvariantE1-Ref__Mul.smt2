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
(declare-sort T@Field_4570_53 0)
(declare-sort T@Field_4583_4584 0)
(declare-sort T@Field_7896_1186 0)
(declare-sort T@Field_2286_13475 0)
(declare-sort T@Field_2286_13342 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_4531 0)) (((PolymorphicMapType_4531 (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| (Array T@Ref T@Field_7896_1186 Real)) (|PolymorphicMapType_4531_2286_53#PolymorphicMapType_4531| (Array T@Ref T@Field_4570_53 Real)) (|PolymorphicMapType_4531_2286_4584#PolymorphicMapType_4531| (Array T@Ref T@Field_4583_4584 Real)) (|PolymorphicMapType_4531_2286_13342#PolymorphicMapType_4531| (Array T@Ref T@Field_2286_13342 Real)) (|PolymorphicMapType_4531_2286_17597#PolymorphicMapType_4531| (Array T@Ref T@Field_2286_13475 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5059 0)) (((PolymorphicMapType_5059 (|PolymorphicMapType_5059_4570_53#PolymorphicMapType_5059| (Array T@Ref T@Field_4570_53 Bool)) (|PolymorphicMapType_5059_4570_4584#PolymorphicMapType_5059| (Array T@Ref T@Field_4583_4584 Bool)) (|PolymorphicMapType_5059_4570_1186#PolymorphicMapType_5059| (Array T@Ref T@Field_7896_1186 Bool)) (|PolymorphicMapType_5059_4570_13342#PolymorphicMapType_5059| (Array T@Ref T@Field_2286_13342 Bool)) (|PolymorphicMapType_5059_4570_14653#PolymorphicMapType_5059| (Array T@Ref T@Field_2286_13475 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4510 0)) (((PolymorphicMapType_4510 (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| (Array T@Ref T@Field_4570_53 Bool)) (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| (Array T@Ref T@Field_4583_4584 T@Ref)) (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| (Array T@Ref T@Field_7896_1186 Int)) (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| (Array T@Ref T@Field_2286_13475 T@PolymorphicMapType_5059)) (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| (Array T@Ref T@Field_2286_13342 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_4570_53)
(declare-fun Ref__res () T@Field_7896_1186)
(declare-fun Ref__Integer_value () T@Field_7896_1186)
(declare-fun succHeap (T@PolymorphicMapType_4510 T@PolymorphicMapType_4510) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4510 T@PolymorphicMapType_4510) Bool)
(declare-fun state (T@PolymorphicMapType_4510 T@PolymorphicMapType_4531) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4531) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5059)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4510 T@PolymorphicMapType_4510 T@PolymorphicMapType_4531) Bool)
(declare-fun IsPredicateField_2286_13433 (T@Field_2286_13342) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2286 (T@Field_2286_13342) T@Field_2286_13475)
(declare-fun HasDirectPerm_2286_13406 (T@PolymorphicMapType_4531 T@Ref T@Field_2286_13342) Bool)
(declare-fun IsWandField_2286_15180 (T@Field_2286_13342) Bool)
(declare-fun WandMaskField_2286 (T@Field_2286_13342) T@Field_2286_13475)
(declare-fun dummyHeap () T@PolymorphicMapType_4510)
(declare-fun ZeroMask () T@PolymorphicMapType_4531)
(declare-fun InsidePredicate_4570_4570 (T@Field_2286_13342 T@FrameType T@Field_2286_13342 T@FrameType) Bool)
(declare-fun IsPredicateField_2286_1186 (T@Field_7896_1186) Bool)
(declare-fun IsWandField_2286_1186 (T@Field_7896_1186) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2286_18726 (T@Field_2286_13475) Bool)
(declare-fun IsWandField_2286_18742 (T@Field_2286_13475) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2286_4584 (T@Field_4583_4584) Bool)
(declare-fun IsWandField_2286_4584 (T@Field_4583_4584) Bool)
(declare-fun IsPredicateField_2286_53 (T@Field_4570_53) Bool)
(declare-fun IsWandField_2286_53 (T@Field_4570_53) Bool)
(declare-fun HasDirectPerm_2286_19180 (T@PolymorphicMapType_4531 T@Ref T@Field_2286_13475) Bool)
(declare-fun HasDirectPerm_2286_4584 (T@PolymorphicMapType_4531 T@Ref T@Field_4583_4584) Bool)
(declare-fun HasDirectPerm_2286_53 (T@PolymorphicMapType_4531 T@Ref T@Field_4570_53) Bool)
(declare-fun HasDirectPerm_2286_1186 (T@PolymorphicMapType_4531 T@Ref T@Field_7896_1186) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4531 T@PolymorphicMapType_4531 T@PolymorphicMapType_4531) Bool)
(assert (distinct Ref__res Ref__Integer_value)
)
(assert (forall ((Heap0 T@PolymorphicMapType_4510) (Heap1 T@PolymorphicMapType_4510) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4510) (Mask T@PolymorphicMapType_4531) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4510) (Heap1@@0 T@PolymorphicMapType_4510) (Heap2 T@PolymorphicMapType_4510) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_2286_13475) ) (!  (not (select (|PolymorphicMapType_5059_4570_14653#PolymorphicMapType_5059| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5059_4570_14653#PolymorphicMapType_5059| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_2286_13342) ) (!  (not (select (|PolymorphicMapType_5059_4570_13342#PolymorphicMapType_5059| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5059_4570_13342#PolymorphicMapType_5059| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7896_1186) ) (!  (not (select (|PolymorphicMapType_5059_4570_1186#PolymorphicMapType_5059| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5059_4570_1186#PolymorphicMapType_5059| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4583_4584) ) (!  (not (select (|PolymorphicMapType_5059_4570_4584#PolymorphicMapType_5059| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5059_4570_4584#PolymorphicMapType_5059| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4570_53) ) (!  (not (select (|PolymorphicMapType_5059_4570_53#PolymorphicMapType_5059| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5059_4570_53#PolymorphicMapType_5059| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4510) (ExhaleHeap T@PolymorphicMapType_4510) (Mask@@0 T@PolymorphicMapType_4531) (pm_f T@Field_2286_13342) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2286_13406 Mask@@0 null pm_f) (IsPredicateField_2286_13433 pm_f)) (= (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@0) null (PredicateMaskField_2286 pm_f)) (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| ExhaleHeap) null (PredicateMaskField_2286 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_2286_13433 pm_f) (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| ExhaleHeap) null (PredicateMaskField_2286 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4510) (ExhaleHeap@@0 T@PolymorphicMapType_4510) (Mask@@1 T@PolymorphicMapType_4531) (pm_f@@0 T@Field_2286_13342) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2286_13406 Mask@@1 null pm_f@@0) (IsWandField_2286_15180 pm_f@@0)) (= (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@1) null (WandMaskField_2286 pm_f@@0)) (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| ExhaleHeap@@0) null (WandMaskField_2286 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_2286_15180 pm_f@@0) (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| ExhaleHeap@@0) null (WandMaskField_2286 pm_f@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4510) (ExhaleHeap@@1 T@PolymorphicMapType_4510) (Mask@@2 T@PolymorphicMapType_4531) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| Heap@@2) o_1 $allocated) (select (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_2286_13342) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4570_4570 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4570_4570 p v_1 p w))
)))
(assert  (not (IsPredicateField_2286_1186 Ref__res)))
(assert  (not (IsWandField_2286_1186 Ref__res)))
(assert  (not (IsPredicateField_2286_1186 Ref__Integer_value)))
(assert  (not (IsWandField_2286_1186 Ref__Integer_value)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4510) (ExhaleHeap@@2 T@PolymorphicMapType_4510) (Mask@@3 T@PolymorphicMapType_4531) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_4531) (o_2@@4 T@Ref) (f_4@@4 T@Field_2286_13475) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_4531_2286_17597#PolymorphicMapType_4531| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_2286_18726 f_4@@4))) (not (IsWandField_2286_18742 f_4@@4))) (<= (select (|PolymorphicMapType_4531_2286_17597#PolymorphicMapType_4531| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_4531_2286_17597#PolymorphicMapType_4531| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_4531) (o_2@@5 T@Ref) (f_4@@5 T@Field_2286_13342) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_4531_2286_13342#PolymorphicMapType_4531| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_2286_13433 f_4@@5))) (not (IsWandField_2286_15180 f_4@@5))) (<= (select (|PolymorphicMapType_4531_2286_13342#PolymorphicMapType_4531| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_4531_2286_13342#PolymorphicMapType_4531| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_4531) (o_2@@6 T@Ref) (f_4@@6 T@Field_4583_4584) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_4531_2286_4584#PolymorphicMapType_4531| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_2286_4584 f_4@@6))) (not (IsWandField_2286_4584 f_4@@6))) (<= (select (|PolymorphicMapType_4531_2286_4584#PolymorphicMapType_4531| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_4531_2286_4584#PolymorphicMapType_4531| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_4531) (o_2@@7 T@Ref) (f_4@@7 T@Field_4570_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_4531_2286_53#PolymorphicMapType_4531| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2286_53 f_4@@7))) (not (IsWandField_2286_53 f_4@@7))) (<= (select (|PolymorphicMapType_4531_2286_53#PolymorphicMapType_4531| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_4531_2286_53#PolymorphicMapType_4531| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_4531) (o_2@@8 T@Ref) (f_4@@8 T@Field_7896_1186) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2286_1186 f_4@@8))) (not (IsWandField_2286_1186 f_4@@8))) (<= (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_4531) (o_2@@9 T@Ref) (f_4@@9 T@Field_2286_13475) ) (! (= (HasDirectPerm_2286_19180 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_4531_2286_17597#PolymorphicMapType_4531| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2286_19180 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4531) (o_2@@10 T@Ref) (f_4@@10 T@Field_2286_13342) ) (! (= (HasDirectPerm_2286_13406 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_4531_2286_13342#PolymorphicMapType_4531| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2286_13406 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4531) (o_2@@11 T@Ref) (f_4@@11 T@Field_4583_4584) ) (! (= (HasDirectPerm_2286_4584 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_4531_2286_4584#PolymorphicMapType_4531| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2286_4584 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4531) (o_2@@12 T@Ref) (f_4@@12 T@Field_4570_53) ) (! (= (HasDirectPerm_2286_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_4531_2286_53#PolymorphicMapType_4531| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2286_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4531) (o_2@@13 T@Ref) (f_4@@13 T@Field_7896_1186) ) (! (= (HasDirectPerm_2286_1186 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2286_1186 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4510) (ExhaleHeap@@3 T@PolymorphicMapType_4510) (Mask@@14 T@PolymorphicMapType_4531) (pm_f@@1 T@Field_2286_13342) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_2286_13406 Mask@@14 null pm_f@@1) (IsPredicateField_2286_13433 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_4570_53) ) (!  (=> (select (|PolymorphicMapType_5059_4570_53#PolymorphicMapType_5059| (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@4) null (PredicateMaskField_2286 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| Heap@@4) o2 f_2) (select (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_4583_4584) ) (!  (=> (select (|PolymorphicMapType_5059_4570_4584#PolymorphicMapType_5059| (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@4) null (PredicateMaskField_2286 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_7896_1186) ) (!  (=> (select (|PolymorphicMapType_5059_4570_1186#PolymorphicMapType_5059| (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@4) null (PredicateMaskField_2286 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_2286_13342) ) (!  (=> (select (|PolymorphicMapType_5059_4570_13342#PolymorphicMapType_5059| (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@4) null (PredicateMaskField_2286 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_2286_13475) ) (!  (=> (select (|PolymorphicMapType_5059_4570_14653#PolymorphicMapType_5059| (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@4) null (PredicateMaskField_2286 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@4) o2@@3 f_2@@3) (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_2286_13433 pm_f@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4510) (ExhaleHeap@@4 T@PolymorphicMapType_4510) (Mask@@15 T@PolymorphicMapType_4531) (pm_f@@2 T@Field_2286_13342) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_2286_13406 Mask@@15 null pm_f@@2) (IsWandField_2286_15180 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_4570_53) ) (!  (=> (select (|PolymorphicMapType_5059_4570_53#PolymorphicMapType_5059| (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@5) null (WandMaskField_2286 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_4583_4584) ) (!  (=> (select (|PolymorphicMapType_5059_4570_4584#PolymorphicMapType_5059| (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@5) null (WandMaskField_2286 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_7896_1186) ) (!  (=> (select (|PolymorphicMapType_5059_4570_1186#PolymorphicMapType_5059| (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@5) null (WandMaskField_2286 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_2286_13342) ) (!  (=> (select (|PolymorphicMapType_5059_4570_13342#PolymorphicMapType_5059| (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@5) null (WandMaskField_2286 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| Heap@@5) o2@@7 f_2@@7) (select (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_2286_13475) ) (!  (=> (select (|PolymorphicMapType_5059_4570_14653#PolymorphicMapType_5059| (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@5) null (WandMaskField_2286 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@5) o2@@8 f_2@@8) (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_2286_15180 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4510) (ExhaleHeap@@5 T@PolymorphicMapType_4510) (Mask@@16 T@PolymorphicMapType_4531) (o_1@@0 T@Ref) (f_2@@9 T@Field_2286_13475) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_2286_19180 Mask@@16 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@6) o_1@@0 f_2@@9) (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4510) (ExhaleHeap@@6 T@PolymorphicMapType_4510) (Mask@@17 T@PolymorphicMapType_4531) (o_1@@1 T@Ref) (f_2@@10 T@Field_2286_13342) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_2286_13406 Mask@@17 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| Heap@@7) o_1@@1 f_2@@10) (select (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4510) (ExhaleHeap@@7 T@PolymorphicMapType_4510) (Mask@@18 T@PolymorphicMapType_4531) (o_1@@2 T@Ref) (f_2@@11 T@Field_4583_4584) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_2286_4584 Mask@@18 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| Heap@@8) o_1@@2 f_2@@11) (select (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4510) (ExhaleHeap@@8 T@PolymorphicMapType_4510) (Mask@@19 T@PolymorphicMapType_4531) (o_1@@3 T@Ref) (f_2@@12 T@Field_4570_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_2286_53 Mask@@19 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| Heap@@9) o_1@@3 f_2@@12) (select (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4510) (ExhaleHeap@@9 T@PolymorphicMapType_4510) (Mask@@20 T@PolymorphicMapType_4531) (o_1@@4 T@Ref) (f_2@@13 T@Field_7896_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_2286_1186 Mask@@20 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| Heap@@10) o_1@@4 f_2@@13) (select (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_2286_13475) ) (! (= (select (|PolymorphicMapType_4531_2286_17597#PolymorphicMapType_4531| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4531_2286_17597#PolymorphicMapType_4531| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_2286_13342) ) (! (= (select (|PolymorphicMapType_4531_2286_13342#PolymorphicMapType_4531| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4531_2286_13342#PolymorphicMapType_4531| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_4583_4584) ) (! (= (select (|PolymorphicMapType_4531_2286_4584#PolymorphicMapType_4531| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4531_2286_4584#PolymorphicMapType_4531| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_4570_53) ) (! (= (select (|PolymorphicMapType_4531_2286_53#PolymorphicMapType_4531| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4531_2286_53#PolymorphicMapType_4531| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_7896_1186) ) (! (= (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4531) (SummandMask1 T@PolymorphicMapType_4531) (SummandMask2 T@PolymorphicMapType_4531) (o_2@@19 T@Ref) (f_4@@19 T@Field_2286_13475) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4531_2286_17597#PolymorphicMapType_4531| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_4531_2286_17597#PolymorphicMapType_4531| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_4531_2286_17597#PolymorphicMapType_4531| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4531_2286_17597#PolymorphicMapType_4531| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4531_2286_17597#PolymorphicMapType_4531| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4531_2286_17597#PolymorphicMapType_4531| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4531) (SummandMask1@@0 T@PolymorphicMapType_4531) (SummandMask2@@0 T@PolymorphicMapType_4531) (o_2@@20 T@Ref) (f_4@@20 T@Field_2286_13342) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4531_2286_13342#PolymorphicMapType_4531| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_4531_2286_13342#PolymorphicMapType_4531| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_4531_2286_13342#PolymorphicMapType_4531| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4531_2286_13342#PolymorphicMapType_4531| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4531_2286_13342#PolymorphicMapType_4531| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4531_2286_13342#PolymorphicMapType_4531| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4531) (SummandMask1@@1 T@PolymorphicMapType_4531) (SummandMask2@@1 T@PolymorphicMapType_4531) (o_2@@21 T@Ref) (f_4@@21 T@Field_4583_4584) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4531_2286_4584#PolymorphicMapType_4531| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_4531_2286_4584#PolymorphicMapType_4531| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_4531_2286_4584#PolymorphicMapType_4531| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4531_2286_4584#PolymorphicMapType_4531| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4531_2286_4584#PolymorphicMapType_4531| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4531_2286_4584#PolymorphicMapType_4531| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4531) (SummandMask1@@2 T@PolymorphicMapType_4531) (SummandMask2@@2 T@PolymorphicMapType_4531) (o_2@@22 T@Ref) (f_4@@22 T@Field_4570_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4531_2286_53#PolymorphicMapType_4531| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_4531_2286_53#PolymorphicMapType_4531| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_4531_2286_53#PolymorphicMapType_4531| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4531_2286_53#PolymorphicMapType_4531| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4531_2286_53#PolymorphicMapType_4531| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4531_2286_53#PolymorphicMapType_4531| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4531) (SummandMask1@@3 T@PolymorphicMapType_4531) (SummandMask2@@3 T@PolymorphicMapType_4531) (o_2@@23 T@Ref) (f_4@@23 T@Field_7896_1186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4510) (o T@Ref) (f_3 T@Field_2286_13342) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_4510 (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| Heap@@11) (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| Heap@@11) (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| Heap@@11) (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@11) (store (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| Heap@@11) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4510 (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| Heap@@11) (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| Heap@@11) (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| Heap@@11) (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@11) (store (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| Heap@@11) o f_3 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4510) (o@@0 T@Ref) (f_3@@0 T@Field_2286_13475) (v@@0 T@PolymorphicMapType_5059) ) (! (succHeap Heap@@12 (PolymorphicMapType_4510 (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| Heap@@12) (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| Heap@@12) (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| Heap@@12) (store (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@12) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4510 (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| Heap@@12) (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| Heap@@12) (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| Heap@@12) (store (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@12) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4510) (o@@1 T@Ref) (f_3@@1 T@Field_7896_1186) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_4510 (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| Heap@@13) (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| Heap@@13) (store (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| Heap@@13) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@13) (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4510 (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| Heap@@13) (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| Heap@@13) (store (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| Heap@@13) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@13) (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4510) (o@@2 T@Ref) (f_3@@2 T@Field_4583_4584) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_4510 (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| Heap@@14) (store (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| Heap@@14) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| Heap@@14) (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@14) (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4510 (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| Heap@@14) (store (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| Heap@@14) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| Heap@@14) (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@14) (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4510) (o@@3 T@Ref) (f_3@@3 T@Field_4570_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_4510 (store (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| Heap@@15) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| Heap@@15) (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| Heap@@15) (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@15) (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4510 (store (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| Heap@@15) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| Heap@@15) (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| Heap@@15) (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@15) (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| Heap@@15)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_4583_4584) (Heap@@16 T@PolymorphicMapType_4510) ) (!  (=> (select (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| Heap@@16) o@@4 $allocated) (select (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| Heap@@16) (select (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| Heap@@16) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| Heap@@16) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_2286_13342) (v_1@@0 T@FrameType) (q T@Field_2286_13342) (w@@0 T@FrameType) (r T@Field_2286_13342) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4570_4570 p@@1 v_1@@0 q w@@0) (InsidePredicate_4570_4570 q w@@0 r u)) (InsidePredicate_4570_4570 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4570_4570 p@@1 v_1@@0 q w@@0) (InsidePredicate_4570_4570 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@5 () T@PolymorphicMapType_4531)
(declare-fun Mask@3 () T@PolymorphicMapType_4531)
(declare-fun diz () T@Ref)
(declare-fun __flatten_5@1 () Int)
(declare-fun n () Int)
(declare-fun Heap@1 () T@PolymorphicMapType_4510)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_4510)
(declare-fun i@0 () Int)
(declare-fun __flatten_4@1 () Int)
(declare-fun AssertMask@0 () T@PolymorphicMapType_4531)
(declare-fun Mask@4 () T@PolymorphicMapType_4531)
(declare-fun Mask@1 () T@PolymorphicMapType_4531)
(declare-fun __flatten_6@0 () Int)
(declare-fun Mask@2 () T@PolymorphicMapType_4531)
(declare-fun Mask@0 () T@PolymorphicMapType_4531)
(declare-fun Heap@0 () T@PolymorphicMapType_4510)
(declare-fun Heap@@17 () T@PolymorphicMapType_4510)
(declare-fun PostHeap@0 () T@PolymorphicMapType_4510)
(declare-fun PostMask@0 () T@PolymorphicMapType_4531)
(set-info :boogie-vc-id Ref__Mul)
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
 (=> (= (ControlFlow 0 0) 33) (let ((anon9_correct  (=> (= Mask@5 (PolymorphicMapType_4531 (store (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@3) diz Ref__res (- (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@3) diz Ref__res) FullPerm)) (|PolymorphicMapType_4531_2286_53#PolymorphicMapType_4531| Mask@3) (|PolymorphicMapType_4531_2286_4584#PolymorphicMapType_4531| Mask@3) (|PolymorphicMapType_4531_2286_13342#PolymorphicMapType_4531| Mask@3) (|PolymorphicMapType_4531_2286_17597#PolymorphicMapType_4531| Mask@3))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (<= __flatten_5@1 n)) (=> (<= __flatten_5@1 n) (=> (= (ControlFlow 0 15) (- 0 14)) (= (select (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| Heap@1) diz Ref__res) (* __flatten_5@1 n))))))))
(let ((anon19_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 19) 15)) anon9_correct)))
(let ((anon19_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (<= FullPerm (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@3) diz Ref__res))) (=> (<= FullPerm (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@3) diz Ref__res)) (=> (= (ControlFlow 0 17) 15) anon9_correct))))))
(let ((anon18_Then_correct  (=> (state ExhaleHeap@0 ZeroMask) (=> (and (and (and (not (= diz null)) (= Mask@3 (PolymorphicMapType_4531 (store (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| ZeroMask) diz Ref__res (+ (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| ZeroMask) diz Ref__res) FullPerm)) (|PolymorphicMapType_4531_2286_53#PolymorphicMapType_4531| ZeroMask) (|PolymorphicMapType_4531_2286_4584#PolymorphicMapType_4531| ZeroMask) (|PolymorphicMapType_4531_2286_13342#PolymorphicMapType_4531| ZeroMask) (|PolymorphicMapType_4531_2286_17597#PolymorphicMapType_4531| ZeroMask)))) (and (state ExhaleHeap@0 Mask@3) (<= i@0 n))) (and (and (= (select (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| ExhaleHeap@0) diz Ref__res) (* i@0 n)) (state ExhaleHeap@0 Mask@3)) (and (< i@0 n) (state ExhaleHeap@0 Mask@3)))) (and (=> (= (ControlFlow 0 20) (- 0 22)) (HasDirectPerm_2286_1186 Mask@3 diz Ref__res)) (=> (HasDirectPerm_2286_1186 Mask@3 diz Ref__res) (=> (= __flatten_4@1 (+ (select (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| ExhaleHeap@0) diz Ref__res) n)) (=> (and (state ExhaleHeap@0 Mask@3) (state ExhaleHeap@0 Mask@3)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (= FullPerm (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@3) diz Ref__res))) (=> (= FullPerm (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@3) diz Ref__res)) (=> (and (= Heap@1 (PolymorphicMapType_4510 (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| ExhaleHeap@0) (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| ExhaleHeap@0) (store (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| ExhaleHeap@0) diz Ref__res __flatten_4@1) (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| ExhaleHeap@0) (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| ExhaleHeap@0))) (state Heap@1 Mask@3)) (=> (and (and (= __flatten_5@1 (+ i@0 2)) (state Heap@1 Mask@3)) (and (state Heap@1 Mask@3) (state Heap@1 Mask@3))) (and (=> (= (ControlFlow 0 20) 17) anon19_Then_correct) (=> (= (ControlFlow 0 20) 19) anon19_Else_correct))))))))))))))
(let ((anon12_correct  (=> (= AssertMask@0 (PolymorphicMapType_4531 (store (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@4) diz Ref__res (- (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@4) diz Ref__res) FullPerm)) (|PolymorphicMapType_4531_2286_53#PolymorphicMapType_4531| Mask@4) (|PolymorphicMapType_4531_2286_4584#PolymorphicMapType_4531| Mask@4) (|PolymorphicMapType_4531_2286_13342#PolymorphicMapType_4531| Mask@4) (|PolymorphicMapType_4531_2286_17597#PolymorphicMapType_4531| Mask@4))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (HasDirectPerm_2286_1186 Mask@4 diz Ref__res)) (=> (HasDirectPerm_2286_1186 Mask@4 diz Ref__res) (and (=> (= (ControlFlow 0 6) (- 0 7)) (= (select (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| ExhaleHeap@0) diz Ref__res) (* n n))) (=> (= (select (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| ExhaleHeap@0) diz Ref__res) (* n n)) (=> (= (ControlFlow 0 6) (- 0 5)) (> n 0)))))))))
(let ((anon20_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 11) 6)) anon12_correct)))
(let ((anon20_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (<= FullPerm (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@4) diz Ref__res))) (=> (<= FullPerm (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@4) diz Ref__res)) (=> (= (ControlFlow 0 9) 6) anon12_correct))))))
(let ((anon18_Else_correct  (=> (not (< i@0 n)) (=> (and (and (and (state ExhaleHeap@0 Mask@1) (not (= diz null))) (and (= Mask@4 (PolymorphicMapType_4531 (store (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@1) diz Ref__res (+ (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@1) diz Ref__res) FullPerm)) (|PolymorphicMapType_4531_2286_53#PolymorphicMapType_4531| Mask@1) (|PolymorphicMapType_4531_2286_4584#PolymorphicMapType_4531| Mask@1) (|PolymorphicMapType_4531_2286_13342#PolymorphicMapType_4531| Mask@1) (|PolymorphicMapType_4531_2286_17597#PolymorphicMapType_4531| Mask@1))) (state ExhaleHeap@0 Mask@4))) (and (and (<= i@0 n) (= (select (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| ExhaleHeap@0) diz Ref__res) (* i@0 n))) (and (state ExhaleHeap@0 Mask@4) (state ExhaleHeap@0 Mask@4)))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_2286_1186 Mask@4 diz Ref__res)) (=> (HasDirectPerm_2286_1186 Mask@4 diz Ref__res) (=> (and (and (= __flatten_6@0 (select (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| ExhaleHeap@0) diz Ref__res)) (state ExhaleHeap@0 Mask@4)) (and (state ExhaleHeap@0 Mask@4) (state ExhaleHeap@0 Mask@4))) (and (=> (= (ControlFlow 0 12) 9) anon20_Then_correct) (=> (= (ControlFlow 0 12) 11) anon20_Else_correct)))))))))
(let ((anon17_Then_correct  (=> (not (= diz null)) (=> (and (= Mask@2 (PolymorphicMapType_4531 (store (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@1) diz Ref__res (+ (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@1) diz Ref__res) FullPerm)) (|PolymorphicMapType_4531_2286_53#PolymorphicMapType_4531| Mask@1) (|PolymorphicMapType_4531_2286_4584#PolymorphicMapType_4531| Mask@1) (|PolymorphicMapType_4531_2286_13342#PolymorphicMapType_4531| Mask@1) (|PolymorphicMapType_4531_2286_17597#PolymorphicMapType_4531| Mask@1))) (state ExhaleHeap@0 Mask@2)) (=> (and (and (state ExhaleHeap@0 Mask@2) (<= i@0 n)) (and (state ExhaleHeap@0 Mask@2) (= (ControlFlow 0 4) (- 0 3)))) (HasDirectPerm_2286_1186 Mask@2 diz Ref__res))))))
(let ((anon4_correct  (=> (= Mask@1 (PolymorphicMapType_4531 (store (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@0) diz Ref__res (- (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@0) diz Ref__res) FullPerm)) (|PolymorphicMapType_4531_2286_53#PolymorphicMapType_4531| Mask@0) (|PolymorphicMapType_4531_2286_4584#PolymorphicMapType_4531| Mask@0) (|PolymorphicMapType_4531_2286_13342#PolymorphicMapType_4531| Mask@0) (|PolymorphicMapType_4531_2286_17597#PolymorphicMapType_4531| Mask@0))) (and (=> (= (ControlFlow 0 23) (- 0 25)) (<= 0 n)) (=> (<= 0 n) (and (=> (= (ControlFlow 0 23) (- 0 24)) (= (select (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| Heap@0) diz Ref__res) (* 0 n))) (=> (= (select (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| Heap@0) diz Ref__res) (* 0 n)) (=> (IdenticalOnKnownLocations Heap@0 ExhaleHeap@0 Mask@1) (and (and (=> (= (ControlFlow 0 23) 4) anon17_Then_correct) (=> (= (ControlFlow 0 23) 20) anon18_Then_correct)) (=> (= (ControlFlow 0 23) 12) anon18_Else_correct))))))))))
(let ((anon16_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 28) 23)) anon4_correct)))
(let ((anon16_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (<= FullPerm (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@0) diz Ref__res))) (=> (<= FullPerm (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@0) diz Ref__res)) (=> (= (ControlFlow 0 26) 23) anon4_correct))))))
(let ((anon15_Else_correct  (=> (state Heap@@17 Mask@0) (and (=> (= (ControlFlow 0 29) (- 0 30)) (= FullPerm (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@0) diz Ref__res))) (=> (= FullPerm (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| Mask@0) diz Ref__res)) (=> (and (= Heap@0 (PolymorphicMapType_4510 (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| Heap@@17) (|PolymorphicMapType_4510_2161_2162#PolymorphicMapType_4510| Heap@@17) (store (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| Heap@@17) diz Ref__res 0) (|PolymorphicMapType_4510_2286_13519#PolymorphicMapType_4510| Heap@@17) (|PolymorphicMapType_4510_4570_13342#PolymorphicMapType_4510| Heap@@17))) (state Heap@0 Mask@0)) (and (=> (= (ControlFlow 0 29) 26) anon16_Then_correct) (=> (= (ControlFlow 0 29) 28) anon16_Else_correct))))))))
(let ((anon15_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (not (= diz null))) (=> (and (and (= PostMask@0 (PolymorphicMapType_4531 (store (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| ZeroMask) diz Ref__res (+ (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| ZeroMask) diz Ref__res) FullPerm)) (|PolymorphicMapType_4531_2286_53#PolymorphicMapType_4531| ZeroMask) (|PolymorphicMapType_4531_2286_4584#PolymorphicMapType_4531| ZeroMask) (|PolymorphicMapType_4531_2286_13342#PolymorphicMapType_4531| ZeroMask) (|PolymorphicMapType_4531_2286_17597#PolymorphicMapType_4531| ZeroMask))) (state PostHeap@0 PostMask@0)) (and (state PostHeap@0 PostMask@0) (= (ControlFlow 0 2) (- 0 1)))) (HasDirectPerm_2286_1186 PostMask@0 diz Ref__res)))))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_4510_2158_53#PolymorphicMapType_4510| Heap@@17) diz $allocated)) (=> (and (and (and (not (= diz null)) (state Heap@@17 ZeroMask)) (and (> n 0) (state Heap@@17 ZeroMask))) (and (and (not (= diz null)) (= Mask@0 (PolymorphicMapType_4531 (store (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| ZeroMask) diz Ref__res (+ (select (|PolymorphicMapType_4531_2286_1186#PolymorphicMapType_4531| ZeroMask) diz Ref__res) FullPerm)) (|PolymorphicMapType_4531_2286_53#PolymorphicMapType_4531| ZeroMask) (|PolymorphicMapType_4531_2286_4584#PolymorphicMapType_4531| ZeroMask) (|PolymorphicMapType_4531_2286_13342#PolymorphicMapType_4531| ZeroMask) (|PolymorphicMapType_4531_2286_17597#PolymorphicMapType_4531| ZeroMask)))) (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (HasDirectPerm_2286_1186 Mask@0 diz Ref__res)) (=> (HasDirectPerm_2286_1186 Mask@0 diz Ref__res) (=> (and (= (select (|PolymorphicMapType_4510_2286_1186#PolymorphicMapType_4510| Heap@@17) diz Ref__res) 0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 31) 2) anon15_Then_correct) (=> (= (ControlFlow 0 31) 29) anon15_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 33) 31) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 15) (- 16))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 15) (- 14))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
