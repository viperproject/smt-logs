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
(declare-sort T@Field_3085_53 0)
(declare-sort T@Field_3098_3099 0)
(declare-sort T@Field_6413_1210 0)
(declare-sort T@Field_3085_8620 0)
(declare-sort T@Field_3085_8487 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3046 0)) (((PolymorphicMapType_3046 (|PolymorphicMapType_3046_1727_1210#PolymorphicMapType_3046| (Array T@Ref T@Field_6413_1210 Real)) (|PolymorphicMapType_3046_1727_53#PolymorphicMapType_3046| (Array T@Ref T@Field_3085_53 Real)) (|PolymorphicMapType_3046_1727_3099#PolymorphicMapType_3046| (Array T@Ref T@Field_3098_3099 Real)) (|PolymorphicMapType_3046_1727_8487#PolymorphicMapType_3046| (Array T@Ref T@Field_3085_8487 Real)) (|PolymorphicMapType_3046_1727_12742#PolymorphicMapType_3046| (Array T@Ref T@Field_3085_8620 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3574 0)) (((PolymorphicMapType_3574 (|PolymorphicMapType_3574_3085_53#PolymorphicMapType_3574| (Array T@Ref T@Field_3085_53 Bool)) (|PolymorphicMapType_3574_3085_3099#PolymorphicMapType_3574| (Array T@Ref T@Field_3098_3099 Bool)) (|PolymorphicMapType_3574_3085_1210#PolymorphicMapType_3574| (Array T@Ref T@Field_6413_1210 Bool)) (|PolymorphicMapType_3574_3085_8487#PolymorphicMapType_3574| (Array T@Ref T@Field_3085_8487 Bool)) (|PolymorphicMapType_3574_3085_9798#PolymorphicMapType_3574| (Array T@Ref T@Field_3085_8620 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3025 0)) (((PolymorphicMapType_3025 (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| (Array T@Ref T@Field_3085_53 Bool)) (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| (Array T@Ref T@Field_3098_3099 T@Ref)) (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| (Array T@Ref T@Field_6413_1210 Int)) (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| (Array T@Ref T@Field_3085_8620 T@PolymorphicMapType_3574)) (|PolymorphicMapType_3025_3085_8487#PolymorphicMapType_3025| (Array T@Ref T@Field_3085_8487 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_3085_53)
(declare-fun f_7 () T@Field_6413_1210)
(declare-fun succHeap (T@PolymorphicMapType_3025 T@PolymorphicMapType_3025) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3025 T@PolymorphicMapType_3025) Bool)
(declare-fun state (T@PolymorphicMapType_3025 T@PolymorphicMapType_3046) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3046) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_3574)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3025 T@PolymorphicMapType_3025 T@PolymorphicMapType_3046) Bool)
(declare-fun IsPredicateField_3085_8578 (T@Field_3085_8487) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3085 (T@Field_3085_8487) T@Field_3085_8620)
(declare-fun HasDirectPerm_3085_8551 (T@PolymorphicMapType_3046 T@Ref T@Field_3085_8487) Bool)
(declare-fun IsWandField_3085_10325 (T@Field_3085_8487) Bool)
(declare-fun WandMaskField_3085 (T@Field_3085_8487) T@Field_3085_8620)
(declare-fun dummyHeap () T@PolymorphicMapType_3025)
(declare-fun ZeroMask () T@PolymorphicMapType_3046)
(declare-fun InsidePredicate_3085_3085 (T@Field_3085_8487 T@FrameType T@Field_3085_8487 T@FrameType) Bool)
(declare-fun IsPredicateField_1727_1210 (T@Field_6413_1210) Bool)
(declare-fun IsWandField_1727_1210 (T@Field_6413_1210) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_1727_13871 (T@Field_3085_8620) Bool)
(declare-fun IsWandField_1727_13887 (T@Field_3085_8620) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_1727_3099 (T@Field_3098_3099) Bool)
(declare-fun IsWandField_1727_3099 (T@Field_3098_3099) Bool)
(declare-fun IsPredicateField_1727_53 (T@Field_3085_53) Bool)
(declare-fun IsWandField_1727_53 (T@Field_3085_53) Bool)
(declare-fun HasDirectPerm_3085_14325 (T@PolymorphicMapType_3046 T@Ref T@Field_3085_8620) Bool)
(declare-fun HasDirectPerm_3085_1210 (T@PolymorphicMapType_3046 T@Ref T@Field_6413_1210) Bool)
(declare-fun HasDirectPerm_3085_3099 (T@PolymorphicMapType_3046 T@Ref T@Field_3098_3099) Bool)
(declare-fun HasDirectPerm_3085_53 (T@PolymorphicMapType_3046 T@Ref T@Field_3085_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3046 T@PolymorphicMapType_3046 T@PolymorphicMapType_3046) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_3025) (Heap1 T@PolymorphicMapType_3025) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3025) (Mask T@PolymorphicMapType_3046) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3025) (Heap1@@0 T@PolymorphicMapType_3025) (Heap2 T@PolymorphicMapType_3025) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3085_8620) ) (!  (not (select (|PolymorphicMapType_3574_3085_9798#PolymorphicMapType_3574| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3574_3085_9798#PolymorphicMapType_3574| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3085_8487) ) (!  (not (select (|PolymorphicMapType_3574_3085_8487#PolymorphicMapType_3574| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3574_3085_8487#PolymorphicMapType_3574| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6413_1210) ) (!  (not (select (|PolymorphicMapType_3574_3085_1210#PolymorphicMapType_3574| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3574_3085_1210#PolymorphicMapType_3574| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3098_3099) ) (!  (not (select (|PolymorphicMapType_3574_3085_3099#PolymorphicMapType_3574| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3574_3085_3099#PolymorphicMapType_3574| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3085_53) ) (!  (not (select (|PolymorphicMapType_3574_3085_53#PolymorphicMapType_3574| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3574_3085_53#PolymorphicMapType_3574| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3025) (ExhaleHeap T@PolymorphicMapType_3025) (Mask@@0 T@PolymorphicMapType_3046) (pm_f_26 T@Field_3085_8487) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3085_8551 Mask@@0 null pm_f_26) (IsPredicateField_3085_8578 pm_f_26)) (= (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@0) null (PredicateMaskField_3085 pm_f_26)) (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| ExhaleHeap) null (PredicateMaskField_3085 pm_f_26)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3085_8578 pm_f_26) (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| ExhaleHeap) null (PredicateMaskField_3085 pm_f_26)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3025) (ExhaleHeap@@0 T@PolymorphicMapType_3025) (Mask@@1 T@PolymorphicMapType_3046) (pm_f_26@@0 T@Field_3085_8487) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3085_8551 Mask@@1 null pm_f_26@@0) (IsWandField_3085_10325 pm_f_26@@0)) (= (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@1) null (WandMaskField_3085 pm_f_26@@0)) (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| ExhaleHeap@@0) null (WandMaskField_3085 pm_f_26@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_3085_10325 pm_f_26@@0) (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| ExhaleHeap@@0) null (WandMaskField_3085 pm_f_26@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3025) (ExhaleHeap@@1 T@PolymorphicMapType_3025) (Mask@@2 T@PolymorphicMapType_3046) (o_38 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| Heap@@2) o_38 $allocated) (select (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| ExhaleHeap@@1) o_38 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| ExhaleHeap@@1) o_38 $allocated))
)))
(assert (forall ((p T@Field_3085_8487) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3085_3085 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3085_3085 p v_1 p w))
)))
(assert  (not (IsPredicateField_1727_1210 f_7)))
(assert  (not (IsWandField_1727_1210 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3025) (ExhaleHeap@@2 T@PolymorphicMapType_3025) (Mask@@3 T@PolymorphicMapType_3046) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_3046) (o_2@@4 T@Ref) (f_4@@4 T@Field_3085_8620) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_3046_1727_12742#PolymorphicMapType_3046| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_1727_13871 f_4@@4))) (not (IsWandField_1727_13887 f_4@@4))) (<= (select (|PolymorphicMapType_3046_1727_12742#PolymorphicMapType_3046| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_3046_1727_12742#PolymorphicMapType_3046| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_3046) (o_2@@5 T@Ref) (f_4@@5 T@Field_3085_8487) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_3046_1727_8487#PolymorphicMapType_3046| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_3085_8578 f_4@@5))) (not (IsWandField_3085_10325 f_4@@5))) (<= (select (|PolymorphicMapType_3046_1727_8487#PolymorphicMapType_3046| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_3046_1727_8487#PolymorphicMapType_3046| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3046) (o_2@@6 T@Ref) (f_4@@6 T@Field_3098_3099) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3046_1727_3099#PolymorphicMapType_3046| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_1727_3099 f_4@@6))) (not (IsWandField_1727_3099 f_4@@6))) (<= (select (|PolymorphicMapType_3046_1727_3099#PolymorphicMapType_3046| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3046_1727_3099#PolymorphicMapType_3046| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3046) (o_2@@7 T@Ref) (f_4@@7 T@Field_3085_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3046_1727_53#PolymorphicMapType_3046| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_1727_53 f_4@@7))) (not (IsWandField_1727_53 f_4@@7))) (<= (select (|PolymorphicMapType_3046_1727_53#PolymorphicMapType_3046| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3046_1727_53#PolymorphicMapType_3046| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3046) (o_2@@8 T@Ref) (f_4@@8 T@Field_6413_1210) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3046_1727_1210#PolymorphicMapType_3046| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_1727_1210 f_4@@8))) (not (IsWandField_1727_1210 f_4@@8))) (<= (select (|PolymorphicMapType_3046_1727_1210#PolymorphicMapType_3046| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3046_1727_1210#PolymorphicMapType_3046| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3046) (o_2@@9 T@Ref) (f_4@@9 T@Field_3085_8620) ) (! (= (HasDirectPerm_3085_14325 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3046_1727_12742#PolymorphicMapType_3046| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3085_14325 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3046) (o_2@@10 T@Ref) (f_4@@10 T@Field_3085_8487) ) (! (= (HasDirectPerm_3085_8551 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3046_1727_8487#PolymorphicMapType_3046| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3085_8551 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3046) (o_2@@11 T@Ref) (f_4@@11 T@Field_6413_1210) ) (! (= (HasDirectPerm_3085_1210 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_3046_1727_1210#PolymorphicMapType_3046| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3085_1210 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3046) (o_2@@12 T@Ref) (f_4@@12 T@Field_3098_3099) ) (! (= (HasDirectPerm_3085_3099 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_3046_1727_3099#PolymorphicMapType_3046| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3085_3099 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3046) (o_2@@13 T@Ref) (f_4@@13 T@Field_3085_53) ) (! (= (HasDirectPerm_3085_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_3046_1727_53#PolymorphicMapType_3046| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3085_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3025) (ExhaleHeap@@3 T@PolymorphicMapType_3025) (Mask@@14 T@PolymorphicMapType_3046) (pm_f_26@@1 T@Field_3085_8487) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_3085_8551 Mask@@14 null pm_f_26@@1) (IsPredicateField_3085_8578 pm_f_26@@1)) (and (and (and (and (forall ((o2_26 T@Ref) (f_51 T@Field_3085_53) ) (!  (=> (select (|PolymorphicMapType_3574_3085_53#PolymorphicMapType_3574| (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@4) null (PredicateMaskField_3085 pm_f_26@@1))) o2_26 f_51) (= (select (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| Heap@@4) o2_26 f_51) (select (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| ExhaleHeap@@3) o2_26 f_51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| ExhaleHeap@@3) o2_26 f_51))
)) (forall ((o2_26@@0 T@Ref) (f_51@@0 T@Field_3098_3099) ) (!  (=> (select (|PolymorphicMapType_3574_3085_3099#PolymorphicMapType_3574| (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@4) null (PredicateMaskField_3085 pm_f_26@@1))) o2_26@@0 f_51@@0) (= (select (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| Heap@@4) o2_26@@0 f_51@@0) (select (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| ExhaleHeap@@3) o2_26@@0 f_51@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| ExhaleHeap@@3) o2_26@@0 f_51@@0))
))) (forall ((o2_26@@1 T@Ref) (f_51@@1 T@Field_6413_1210) ) (!  (=> (select (|PolymorphicMapType_3574_3085_1210#PolymorphicMapType_3574| (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@4) null (PredicateMaskField_3085 pm_f_26@@1))) o2_26@@1 f_51@@1) (= (select (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| Heap@@4) o2_26@@1 f_51@@1) (select (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| ExhaleHeap@@3) o2_26@@1 f_51@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| ExhaleHeap@@3) o2_26@@1 f_51@@1))
))) (forall ((o2_26@@2 T@Ref) (f_51@@2 T@Field_3085_8487) ) (!  (=> (select (|PolymorphicMapType_3574_3085_8487#PolymorphicMapType_3574| (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@4) null (PredicateMaskField_3085 pm_f_26@@1))) o2_26@@2 f_51@@2) (= (select (|PolymorphicMapType_3025_3085_8487#PolymorphicMapType_3025| Heap@@4) o2_26@@2 f_51@@2) (select (|PolymorphicMapType_3025_3085_8487#PolymorphicMapType_3025| ExhaleHeap@@3) o2_26@@2 f_51@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3025_3085_8487#PolymorphicMapType_3025| ExhaleHeap@@3) o2_26@@2 f_51@@2))
))) (forall ((o2_26@@3 T@Ref) (f_51@@3 T@Field_3085_8620) ) (!  (=> (select (|PolymorphicMapType_3574_3085_9798#PolymorphicMapType_3574| (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@4) null (PredicateMaskField_3085 pm_f_26@@1))) o2_26@@3 f_51@@3) (= (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@4) o2_26@@3 f_51@@3) (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| ExhaleHeap@@3) o2_26@@3 f_51@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| ExhaleHeap@@3) o2_26@@3 f_51@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_3085_8578 pm_f_26@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3025) (ExhaleHeap@@4 T@PolymorphicMapType_3025) (Mask@@15 T@PolymorphicMapType_3046) (pm_f_26@@2 T@Field_3085_8487) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_3085_8551 Mask@@15 null pm_f_26@@2) (IsWandField_3085_10325 pm_f_26@@2)) (and (and (and (and (forall ((o2_26@@4 T@Ref) (f_51@@4 T@Field_3085_53) ) (!  (=> (select (|PolymorphicMapType_3574_3085_53#PolymorphicMapType_3574| (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@5) null (WandMaskField_3085 pm_f_26@@2))) o2_26@@4 f_51@@4) (= (select (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| Heap@@5) o2_26@@4 f_51@@4) (select (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| ExhaleHeap@@4) o2_26@@4 f_51@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| ExhaleHeap@@4) o2_26@@4 f_51@@4))
)) (forall ((o2_26@@5 T@Ref) (f_51@@5 T@Field_3098_3099) ) (!  (=> (select (|PolymorphicMapType_3574_3085_3099#PolymorphicMapType_3574| (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@5) null (WandMaskField_3085 pm_f_26@@2))) o2_26@@5 f_51@@5) (= (select (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| Heap@@5) o2_26@@5 f_51@@5) (select (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| ExhaleHeap@@4) o2_26@@5 f_51@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| ExhaleHeap@@4) o2_26@@5 f_51@@5))
))) (forall ((o2_26@@6 T@Ref) (f_51@@6 T@Field_6413_1210) ) (!  (=> (select (|PolymorphicMapType_3574_3085_1210#PolymorphicMapType_3574| (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@5) null (WandMaskField_3085 pm_f_26@@2))) o2_26@@6 f_51@@6) (= (select (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| Heap@@5) o2_26@@6 f_51@@6) (select (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| ExhaleHeap@@4) o2_26@@6 f_51@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| ExhaleHeap@@4) o2_26@@6 f_51@@6))
))) (forall ((o2_26@@7 T@Ref) (f_51@@7 T@Field_3085_8487) ) (!  (=> (select (|PolymorphicMapType_3574_3085_8487#PolymorphicMapType_3574| (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@5) null (WandMaskField_3085 pm_f_26@@2))) o2_26@@7 f_51@@7) (= (select (|PolymorphicMapType_3025_3085_8487#PolymorphicMapType_3025| Heap@@5) o2_26@@7 f_51@@7) (select (|PolymorphicMapType_3025_3085_8487#PolymorphicMapType_3025| ExhaleHeap@@4) o2_26@@7 f_51@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3025_3085_8487#PolymorphicMapType_3025| ExhaleHeap@@4) o2_26@@7 f_51@@7))
))) (forall ((o2_26@@8 T@Ref) (f_51@@8 T@Field_3085_8620) ) (!  (=> (select (|PolymorphicMapType_3574_3085_9798#PolymorphicMapType_3574| (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@5) null (WandMaskField_3085 pm_f_26@@2))) o2_26@@8 f_51@@8) (= (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@5) o2_26@@8 f_51@@8) (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| ExhaleHeap@@4) o2_26@@8 f_51@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| ExhaleHeap@@4) o2_26@@8 f_51@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_3085_10325 pm_f_26@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3025) (ExhaleHeap@@5 T@PolymorphicMapType_3025) (Mask@@16 T@PolymorphicMapType_3046) (o_38@@0 T@Ref) (f_51@@9 T@Field_3085_8620) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_3085_14325 Mask@@16 o_38@@0 f_51@@9) (= (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@6) o_38@@0 f_51@@9) (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| ExhaleHeap@@5) o_38@@0 f_51@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| ExhaleHeap@@5) o_38@@0 f_51@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3025) (ExhaleHeap@@6 T@PolymorphicMapType_3025) (Mask@@17 T@PolymorphicMapType_3046) (o_38@@1 T@Ref) (f_51@@10 T@Field_3085_8487) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_3085_8551 Mask@@17 o_38@@1 f_51@@10) (= (select (|PolymorphicMapType_3025_3085_8487#PolymorphicMapType_3025| Heap@@7) o_38@@1 f_51@@10) (select (|PolymorphicMapType_3025_3085_8487#PolymorphicMapType_3025| ExhaleHeap@@6) o_38@@1 f_51@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_3025_3085_8487#PolymorphicMapType_3025| ExhaleHeap@@6) o_38@@1 f_51@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3025) (ExhaleHeap@@7 T@PolymorphicMapType_3025) (Mask@@18 T@PolymorphicMapType_3046) (o_38@@2 T@Ref) (f_51@@11 T@Field_6413_1210) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_3085_1210 Mask@@18 o_38@@2 f_51@@11) (= (select (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| Heap@@8) o_38@@2 f_51@@11) (select (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| ExhaleHeap@@7) o_38@@2 f_51@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| ExhaleHeap@@7) o_38@@2 f_51@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3025) (ExhaleHeap@@8 T@PolymorphicMapType_3025) (Mask@@19 T@PolymorphicMapType_3046) (o_38@@3 T@Ref) (f_51@@12 T@Field_3098_3099) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_3085_3099 Mask@@19 o_38@@3 f_51@@12) (= (select (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| Heap@@9) o_38@@3 f_51@@12) (select (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| ExhaleHeap@@8) o_38@@3 f_51@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| ExhaleHeap@@8) o_38@@3 f_51@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3025) (ExhaleHeap@@9 T@PolymorphicMapType_3025) (Mask@@20 T@PolymorphicMapType_3046) (o_38@@4 T@Ref) (f_51@@13 T@Field_3085_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_3085_53 Mask@@20 o_38@@4 f_51@@13) (= (select (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| Heap@@10) o_38@@4 f_51@@13) (select (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| ExhaleHeap@@9) o_38@@4 f_51@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| ExhaleHeap@@9) o_38@@4 f_51@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3085_8620) ) (! (= (select (|PolymorphicMapType_3046_1727_12742#PolymorphicMapType_3046| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3046_1727_12742#PolymorphicMapType_3046| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_3085_8487) ) (! (= (select (|PolymorphicMapType_3046_1727_8487#PolymorphicMapType_3046| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3046_1727_8487#PolymorphicMapType_3046| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_3098_3099) ) (! (= (select (|PolymorphicMapType_3046_1727_3099#PolymorphicMapType_3046| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3046_1727_3099#PolymorphicMapType_3046| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_3085_53) ) (! (= (select (|PolymorphicMapType_3046_1727_53#PolymorphicMapType_3046| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3046_1727_53#PolymorphicMapType_3046| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_6413_1210) ) (! (= (select (|PolymorphicMapType_3046_1727_1210#PolymorphicMapType_3046| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3046_1727_1210#PolymorphicMapType_3046| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3046) (SummandMask1 T@PolymorphicMapType_3046) (SummandMask2 T@PolymorphicMapType_3046) (o_2@@19 T@Ref) (f_4@@19 T@Field_3085_8620) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3046_1727_12742#PolymorphicMapType_3046| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_3046_1727_12742#PolymorphicMapType_3046| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_3046_1727_12742#PolymorphicMapType_3046| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3046_1727_12742#PolymorphicMapType_3046| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3046_1727_12742#PolymorphicMapType_3046| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3046_1727_12742#PolymorphicMapType_3046| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3046) (SummandMask1@@0 T@PolymorphicMapType_3046) (SummandMask2@@0 T@PolymorphicMapType_3046) (o_2@@20 T@Ref) (f_4@@20 T@Field_3085_8487) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3046_1727_8487#PolymorphicMapType_3046| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_3046_1727_8487#PolymorphicMapType_3046| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_3046_1727_8487#PolymorphicMapType_3046| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3046_1727_8487#PolymorphicMapType_3046| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3046_1727_8487#PolymorphicMapType_3046| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3046_1727_8487#PolymorphicMapType_3046| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3046) (SummandMask1@@1 T@PolymorphicMapType_3046) (SummandMask2@@1 T@PolymorphicMapType_3046) (o_2@@21 T@Ref) (f_4@@21 T@Field_3098_3099) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3046_1727_3099#PolymorphicMapType_3046| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_3046_1727_3099#PolymorphicMapType_3046| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_3046_1727_3099#PolymorphicMapType_3046| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3046_1727_3099#PolymorphicMapType_3046| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3046_1727_3099#PolymorphicMapType_3046| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3046_1727_3099#PolymorphicMapType_3046| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3046) (SummandMask1@@2 T@PolymorphicMapType_3046) (SummandMask2@@2 T@PolymorphicMapType_3046) (o_2@@22 T@Ref) (f_4@@22 T@Field_3085_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3046_1727_53#PolymorphicMapType_3046| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_3046_1727_53#PolymorphicMapType_3046| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_3046_1727_53#PolymorphicMapType_3046| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3046_1727_53#PolymorphicMapType_3046| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3046_1727_53#PolymorphicMapType_3046| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3046_1727_53#PolymorphicMapType_3046| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_3046) (SummandMask1@@3 T@PolymorphicMapType_3046) (SummandMask2@@3 T@PolymorphicMapType_3046) (o_2@@23 T@Ref) (f_4@@23 T@Field_6413_1210) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_3046_1727_1210#PolymorphicMapType_3046| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_3046_1727_1210#PolymorphicMapType_3046| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_3046_1727_1210#PolymorphicMapType_3046| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3046_1727_1210#PolymorphicMapType_3046| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3046_1727_1210#PolymorphicMapType_3046| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3046_1727_1210#PolymorphicMapType_3046| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3025) (o_56 T@Ref) (f_22 T@Field_3085_8487) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_3025 (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| Heap@@11) (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| Heap@@11) (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| Heap@@11) (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@11) (store (|PolymorphicMapType_3025_3085_8487#PolymorphicMapType_3025| Heap@@11) o_56 f_22 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3025 (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| Heap@@11) (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| Heap@@11) (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| Heap@@11) (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@11) (store (|PolymorphicMapType_3025_3085_8487#PolymorphicMapType_3025| Heap@@11) o_56 f_22 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3025) (o_56@@0 T@Ref) (f_22@@0 T@Field_3085_8620) (v@@0 T@PolymorphicMapType_3574) ) (! (succHeap Heap@@12 (PolymorphicMapType_3025 (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| Heap@@12) (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| Heap@@12) (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| Heap@@12) (store (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@12) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_3025_3085_8487#PolymorphicMapType_3025| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3025 (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| Heap@@12) (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| Heap@@12) (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| Heap@@12) (store (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@12) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_3025_3085_8487#PolymorphicMapType_3025| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3025) (o_56@@1 T@Ref) (f_22@@1 T@Field_6413_1210) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_3025 (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| Heap@@13) (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| Heap@@13) (store (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| Heap@@13) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@13) (|PolymorphicMapType_3025_3085_8487#PolymorphicMapType_3025| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3025 (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| Heap@@13) (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| Heap@@13) (store (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| Heap@@13) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@13) (|PolymorphicMapType_3025_3085_8487#PolymorphicMapType_3025| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3025) (o_56@@2 T@Ref) (f_22@@2 T@Field_3098_3099) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_3025 (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| Heap@@14) (store (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| Heap@@14) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| Heap@@14) (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@14) (|PolymorphicMapType_3025_3085_8487#PolymorphicMapType_3025| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3025 (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| Heap@@14) (store (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| Heap@@14) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| Heap@@14) (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@14) (|PolymorphicMapType_3025_3085_8487#PolymorphicMapType_3025| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3025) (o_56@@3 T@Ref) (f_22@@3 T@Field_3085_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_3025 (store (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| Heap@@15) o_56@@3 f_22@@3 v@@3) (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| Heap@@15) (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| Heap@@15) (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@15) (|PolymorphicMapType_3025_3085_8487#PolymorphicMapType_3025| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3025 (store (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| Heap@@15) o_56@@3 f_22@@3 v@@3) (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| Heap@@15) (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| Heap@@15) (|PolymorphicMapType_3025_3085_8664#PolymorphicMapType_3025| Heap@@15) (|PolymorphicMapType_3025_3085_8487#PolymorphicMapType_3025| Heap@@15)))
)))
(assert (forall ((o_56@@4 T@Ref) (f_3 T@Field_3098_3099) (Heap@@16 T@PolymorphicMapType_3025) ) (!  (=> (select (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| Heap@@16) o_56@@4 $allocated) (select (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| Heap@@16) (select (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| Heap@@16) o_56@@4 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3025_1600_1601#PolymorphicMapType_3025| Heap@@16) o_56@@4 f_3))
)))
(assert (forall ((p@@1 T@Field_3085_8487) (v_1@@0 T@FrameType) (q T@Field_3085_8487) (w@@0 T@FrameType) (r T@Field_3085_8487) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3085_3085 p@@1 v_1@@0 q w@@0) (InsidePredicate_3085_3085 q w@@0 r u)) (InsidePredicate_3085_3085 p@@1 v_1@@0 r u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3085_3085 p@@1 v_1@@0 q w@@0) (InsidePredicate_3085_3085 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun dummyFunction_1210 (Int) Bool)
(declare-fun Heap@@17 () T@PolymorphicMapType_3025)
(declare-fun x () T@Ref)
(declare-fun neverTriggered1 (Int) Bool)
(declare-fun Mask@0 () T@PolymorphicMapType_3046)
(set-info :boogie-vc-id n_83)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon3_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 5)) (forall ((i_1 Int) ) (!  (=> (dummyFunction_1210 (select (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| Heap@@17) x f_7)) (>= (ite (= i_1 2) FullPerm NoPerm) NoPerm))
 :qid |stdinbpl.250:17|
 :skolemid |22|
))) (=> (forall ((i_1@@0 Int) ) (!  (=> (dummyFunction_1210 (select (|PolymorphicMapType_3025_1727_1210#PolymorphicMapType_3025| Heap@@17) x f_7)) (>= (ite (= i_1@@0 2) FullPerm NoPerm) NoPerm))
 :qid |stdinbpl.250:17|
 :skolemid |22|
)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((i_1@@1 Int) (i_1_1 Int) ) (!  (=> (and (and (not (= i_1@@1 i_1_1)) (< NoPerm (ite (= i_1@@1 2) FullPerm NoPerm))) (< NoPerm (ite (= i_1_1 2) FullPerm NoPerm))) (not (= x x)))
 :qid |stdinbpl.257:17|
 :skolemid |23|
 :pattern ( (neverTriggered1 i_1@@1) (neverTriggered1 i_1_1))
))) (=> (forall ((i_1@@2 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (not (= i_1@@2 i_1_1@@0)) (< NoPerm (ite (= i_1@@2 2) FullPerm NoPerm))) (< NoPerm (ite (= i_1_1@@0 2) FullPerm NoPerm))) (not (= x x)))
 :qid |stdinbpl.257:17|
 :skolemid |23|
 :pattern ( (neverTriggered1 i_1@@2) (neverTriggered1 i_1_1@@0))
)) (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((i_1@@3 Int) ) (! (>= (select (|PolymorphicMapType_3046_1727_1210#PolymorphicMapType_3046| Mask@0) x f_7) (ite (= i_1@@3 2) FullPerm NoPerm))
 :qid |stdinbpl.264:17|
 :skolemid |24|
)))))))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_3025_1597_53#PolymorphicMapType_3025| Heap@@17) x $allocated)) (=> (and (and (not (= x null)) (= Mask@0 (PolymorphicMapType_3046 (store (|PolymorphicMapType_3046_1727_1210#PolymorphicMapType_3046| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_3046_1727_1210#PolymorphicMapType_3046| ZeroMask) x f_7) FullPerm)) (|PolymorphicMapType_3046_1727_53#PolymorphicMapType_3046| ZeroMask) (|PolymorphicMapType_3046_1727_3099#PolymorphicMapType_3046| ZeroMask) (|PolymorphicMapType_3046_1727_8487#PolymorphicMapType_3046| ZeroMask) (|PolymorphicMapType_3046_1727_12742#PolymorphicMapType_3046| ZeroMask)))) (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0))) (and (=> (= (ControlFlow 0 6) 1) anon3_Then_correct) (=> (= (ControlFlow 0 6) 3) anon3_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 6) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
