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
(declare-sort T@Field_7126_53 0)
(declare-sort T@Field_7139_7140 0)
(declare-sort T@Field_10452_1186 0)
(declare-sort T@Field_3486_22598 0)
(declare-sort T@Field_3486_22465 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_7087 0)) (((PolymorphicMapType_7087 (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| (Array T@Ref T@Field_10452_1186 Real)) (|PolymorphicMapType_7087_3486_53#PolymorphicMapType_7087| (Array T@Ref T@Field_7126_53 Real)) (|PolymorphicMapType_7087_3486_7140#PolymorphicMapType_7087| (Array T@Ref T@Field_7139_7140 Real)) (|PolymorphicMapType_7087_3486_22465#PolymorphicMapType_7087| (Array T@Ref T@Field_3486_22465 Real)) (|PolymorphicMapType_7087_3486_26720#PolymorphicMapType_7087| (Array T@Ref T@Field_3486_22598 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7615 0)) (((PolymorphicMapType_7615 (|PolymorphicMapType_7615_7126_53#PolymorphicMapType_7615| (Array T@Ref T@Field_7126_53 Bool)) (|PolymorphicMapType_7615_7126_7140#PolymorphicMapType_7615| (Array T@Ref T@Field_7139_7140 Bool)) (|PolymorphicMapType_7615_7126_1186#PolymorphicMapType_7615| (Array T@Ref T@Field_10452_1186 Bool)) (|PolymorphicMapType_7615_7126_22465#PolymorphicMapType_7615| (Array T@Ref T@Field_3486_22465 Bool)) (|PolymorphicMapType_7615_7126_23776#PolymorphicMapType_7615| (Array T@Ref T@Field_3486_22598 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7066 0)) (((PolymorphicMapType_7066 (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| (Array T@Ref T@Field_7126_53 Bool)) (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| (Array T@Ref T@Field_7139_7140 T@Ref)) (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| (Array T@Ref T@Field_10452_1186 Int)) (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| (Array T@Ref T@Field_3486_22598 T@PolymorphicMapType_7615)) (|PolymorphicMapType_7066_7126_22465#PolymorphicMapType_7066| (Array T@Ref T@Field_3486_22465 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_7126_53)
(declare-fun History__x () T@Field_10452_1186)
(declare-fun succHeap (T@PolymorphicMapType_7066 T@PolymorphicMapType_7066) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7066 T@PolymorphicMapType_7066) Bool)
(declare-fun state (T@PolymorphicMapType_7066 T@PolymorphicMapType_7087) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7087) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7615)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7066 T@PolymorphicMapType_7066 T@PolymorphicMapType_7087) Bool)
(declare-fun IsPredicateField_3486_22556 (T@Field_3486_22465) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3486 (T@Field_3486_22465) T@Field_3486_22598)
(declare-fun HasDirectPerm_3486_22529 (T@PolymorphicMapType_7087 T@Ref T@Field_3486_22465) Bool)
(declare-fun IsWandField_3486_24303 (T@Field_3486_22465) Bool)
(declare-fun WandMaskField_3486 (T@Field_3486_22465) T@Field_3486_22598)
(declare-fun dummyHeap () T@PolymorphicMapType_7066)
(declare-fun ZeroMask () T@PolymorphicMapType_7087)
(declare-fun InsidePredicate_7126_7126 (T@Field_3486_22465 T@FrameType T@Field_3486_22465 T@FrameType) Bool)
(declare-fun IsPredicateField_3486_1186 (T@Field_10452_1186) Bool)
(declare-fun IsWandField_3486_1186 (T@Field_10452_1186) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3486_27849 (T@Field_3486_22598) Bool)
(declare-fun IsWandField_3486_27865 (T@Field_3486_22598) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3486_7140 (T@Field_7139_7140) Bool)
(declare-fun IsWandField_3486_7140 (T@Field_7139_7140) Bool)
(declare-fun IsPredicateField_3486_53 (T@Field_7126_53) Bool)
(declare-fun IsWandField_3486_53 (T@Field_7126_53) Bool)
(declare-fun HasDirectPerm_3486_28303 (T@PolymorphicMapType_7087 T@Ref T@Field_3486_22598) Bool)
(declare-fun HasDirectPerm_3486_7140 (T@PolymorphicMapType_7087 T@Ref T@Field_7139_7140) Bool)
(declare-fun HasDirectPerm_3486_53 (T@PolymorphicMapType_7087 T@Ref T@Field_7126_53) Bool)
(declare-fun HasDirectPerm_3486_1186 (T@PolymorphicMapType_7087 T@Ref T@Field_10452_1186) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7087 T@PolymorphicMapType_7087 T@PolymorphicMapType_7087) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7066) (Heap1 T@PolymorphicMapType_7066) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7066) (Mask T@PolymorphicMapType_7087) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7066) (Heap1@@0 T@PolymorphicMapType_7066) (Heap2 T@PolymorphicMapType_7066) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3486_22598) ) (!  (not (select (|PolymorphicMapType_7615_7126_23776#PolymorphicMapType_7615| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7615_7126_23776#PolymorphicMapType_7615| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3486_22465) ) (!  (not (select (|PolymorphicMapType_7615_7126_22465#PolymorphicMapType_7615| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7615_7126_22465#PolymorphicMapType_7615| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10452_1186) ) (!  (not (select (|PolymorphicMapType_7615_7126_1186#PolymorphicMapType_7615| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7615_7126_1186#PolymorphicMapType_7615| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7139_7140) ) (!  (not (select (|PolymorphicMapType_7615_7126_7140#PolymorphicMapType_7615| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7615_7126_7140#PolymorphicMapType_7615| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7126_53) ) (!  (not (select (|PolymorphicMapType_7615_7126_53#PolymorphicMapType_7615| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7615_7126_53#PolymorphicMapType_7615| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7066) (ExhaleHeap T@PolymorphicMapType_7066) (Mask@@0 T@PolymorphicMapType_7087) (pm_f T@Field_3486_22465) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3486_22529 Mask@@0 null pm_f) (IsPredicateField_3486_22556 pm_f)) (= (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@0) null (PredicateMaskField_3486 pm_f)) (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| ExhaleHeap) null (PredicateMaskField_3486 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3486_22556 pm_f) (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| ExhaleHeap) null (PredicateMaskField_3486 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7066) (ExhaleHeap@@0 T@PolymorphicMapType_7066) (Mask@@1 T@PolymorphicMapType_7087) (pm_f@@0 T@Field_3486_22465) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3486_22529 Mask@@1 null pm_f@@0) (IsWandField_3486_24303 pm_f@@0)) (= (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@1) null (WandMaskField_3486 pm_f@@0)) (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| ExhaleHeap@@0) null (WandMaskField_3486 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_3486_24303 pm_f@@0) (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| ExhaleHeap@@0) null (WandMaskField_3486 pm_f@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7066) (ExhaleHeap@@1 T@PolymorphicMapType_7066) (Mask@@2 T@PolymorphicMapType_7087) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| Heap@@2) o_1 $allocated) (select (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_3486_22465) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7126_7126 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7126_7126 p v_1 p w))
)))
(assert  (not (IsPredicateField_3486_1186 History__x)))
(assert  (not (IsWandField_3486_1186 History__x)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7066) (ExhaleHeap@@2 T@PolymorphicMapType_7066) (Mask@@3 T@PolymorphicMapType_7087) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_7087) (o_2@@4 T@Ref) (f_4@@4 T@Field_3486_22598) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_7087_3486_26720#PolymorphicMapType_7087| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_3486_27849 f_4@@4))) (not (IsWandField_3486_27865 f_4@@4))) (<= (select (|PolymorphicMapType_7087_3486_26720#PolymorphicMapType_7087| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_7087_3486_26720#PolymorphicMapType_7087| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_7087) (o_2@@5 T@Ref) (f_4@@5 T@Field_3486_22465) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_7087_3486_22465#PolymorphicMapType_7087| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_3486_22556 f_4@@5))) (not (IsWandField_3486_24303 f_4@@5))) (<= (select (|PolymorphicMapType_7087_3486_22465#PolymorphicMapType_7087| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_7087_3486_22465#PolymorphicMapType_7087| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_7087) (o_2@@6 T@Ref) (f_4@@6 T@Field_7139_7140) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_7087_3486_7140#PolymorphicMapType_7087| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3486_7140 f_4@@6))) (not (IsWandField_3486_7140 f_4@@6))) (<= (select (|PolymorphicMapType_7087_3486_7140#PolymorphicMapType_7087| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_7087_3486_7140#PolymorphicMapType_7087| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_7087) (o_2@@7 T@Ref) (f_4@@7 T@Field_7126_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_7087_3486_53#PolymorphicMapType_7087| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3486_53 f_4@@7))) (not (IsWandField_3486_53 f_4@@7))) (<= (select (|PolymorphicMapType_7087_3486_53#PolymorphicMapType_7087| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_7087_3486_53#PolymorphicMapType_7087| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_7087) (o_2@@8 T@Ref) (f_4@@8 T@Field_10452_1186) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3486_1186 f_4@@8))) (not (IsWandField_3486_1186 f_4@@8))) (<= (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_7087) (o_2@@9 T@Ref) (f_4@@9 T@Field_3486_22598) ) (! (= (HasDirectPerm_3486_28303 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_7087_3486_26720#PolymorphicMapType_7087| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3486_28303 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7087) (o_2@@10 T@Ref) (f_4@@10 T@Field_3486_22465) ) (! (= (HasDirectPerm_3486_22529 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_7087_3486_22465#PolymorphicMapType_7087| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3486_22529 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7087) (o_2@@11 T@Ref) (f_4@@11 T@Field_7139_7140) ) (! (= (HasDirectPerm_3486_7140 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_7087_3486_7140#PolymorphicMapType_7087| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3486_7140 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7087) (o_2@@12 T@Ref) (f_4@@12 T@Field_7126_53) ) (! (= (HasDirectPerm_3486_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_7087_3486_53#PolymorphicMapType_7087| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3486_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7087) (o_2@@13 T@Ref) (f_4@@13 T@Field_10452_1186) ) (! (= (HasDirectPerm_3486_1186 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3486_1186 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7066) (ExhaleHeap@@3 T@PolymorphicMapType_7066) (Mask@@14 T@PolymorphicMapType_7087) (pm_f@@1 T@Field_3486_22465) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_3486_22529 Mask@@14 null pm_f@@1) (IsPredicateField_3486_22556 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_7126_53) ) (!  (=> (select (|PolymorphicMapType_7615_7126_53#PolymorphicMapType_7615| (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@4) null (PredicateMaskField_3486 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| Heap@@4) o2 f_2) (select (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_7139_7140) ) (!  (=> (select (|PolymorphicMapType_7615_7126_7140#PolymorphicMapType_7615| (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@4) null (PredicateMaskField_3486 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_10452_1186) ) (!  (=> (select (|PolymorphicMapType_7615_7126_1186#PolymorphicMapType_7615| (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@4) null (PredicateMaskField_3486 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3486_22465) ) (!  (=> (select (|PolymorphicMapType_7615_7126_22465#PolymorphicMapType_7615| (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@4) null (PredicateMaskField_3486 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_7066_7126_22465#PolymorphicMapType_7066| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_7066_7126_22465#PolymorphicMapType_7066| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7066_7126_22465#PolymorphicMapType_7066| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3486_22598) ) (!  (=> (select (|PolymorphicMapType_7615_7126_23776#PolymorphicMapType_7615| (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@4) null (PredicateMaskField_3486 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@4) o2@@3 f_2@@3) (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_3486_22556 pm_f@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7066) (ExhaleHeap@@4 T@PolymorphicMapType_7066) (Mask@@15 T@PolymorphicMapType_7087) (pm_f@@2 T@Field_3486_22465) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_3486_22529 Mask@@15 null pm_f@@2) (IsWandField_3486_24303 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_7126_53) ) (!  (=> (select (|PolymorphicMapType_7615_7126_53#PolymorphicMapType_7615| (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@5) null (WandMaskField_3486 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_7139_7140) ) (!  (=> (select (|PolymorphicMapType_7615_7126_7140#PolymorphicMapType_7615| (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@5) null (WandMaskField_3486 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_10452_1186) ) (!  (=> (select (|PolymorphicMapType_7615_7126_1186#PolymorphicMapType_7615| (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@5) null (WandMaskField_3486 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_3486_22465) ) (!  (=> (select (|PolymorphicMapType_7615_7126_22465#PolymorphicMapType_7615| (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@5) null (WandMaskField_3486 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_7066_7126_22465#PolymorphicMapType_7066| Heap@@5) o2@@7 f_2@@7) (select (|PolymorphicMapType_7066_7126_22465#PolymorphicMapType_7066| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7066_7126_22465#PolymorphicMapType_7066| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_3486_22598) ) (!  (=> (select (|PolymorphicMapType_7615_7126_23776#PolymorphicMapType_7615| (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@5) null (WandMaskField_3486 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@5) o2@@8 f_2@@8) (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_3486_24303 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7066) (ExhaleHeap@@5 T@PolymorphicMapType_7066) (Mask@@16 T@PolymorphicMapType_7087) (o_1@@0 T@Ref) (f_2@@9 T@Field_3486_22598) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_3486_28303 Mask@@16 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@6) o_1@@0 f_2@@9) (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7066) (ExhaleHeap@@6 T@PolymorphicMapType_7066) (Mask@@17 T@PolymorphicMapType_7087) (o_1@@1 T@Ref) (f_2@@10 T@Field_3486_22465) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_3486_22529 Mask@@17 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_7066_7126_22465#PolymorphicMapType_7066| Heap@@7) o_1@@1 f_2@@10) (select (|PolymorphicMapType_7066_7126_22465#PolymorphicMapType_7066| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_7066_7126_22465#PolymorphicMapType_7066| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7066) (ExhaleHeap@@7 T@PolymorphicMapType_7066) (Mask@@18 T@PolymorphicMapType_7087) (o_1@@2 T@Ref) (f_2@@11 T@Field_7139_7140) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_3486_7140 Mask@@18 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| Heap@@8) o_1@@2 f_2@@11) (select (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7066) (ExhaleHeap@@8 T@PolymorphicMapType_7066) (Mask@@19 T@PolymorphicMapType_7087) (o_1@@3 T@Ref) (f_2@@12 T@Field_7126_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_3486_53 Mask@@19 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| Heap@@9) o_1@@3 f_2@@12) (select (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7066) (ExhaleHeap@@9 T@PolymorphicMapType_7066) (Mask@@20 T@PolymorphicMapType_7087) (o_1@@4 T@Ref) (f_2@@13 T@Field_10452_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_3486_1186 Mask@@20 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| Heap@@10) o_1@@4 f_2@@13) (select (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3486_22598) ) (! (= (select (|PolymorphicMapType_7087_3486_26720#PolymorphicMapType_7087| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7087_3486_26720#PolymorphicMapType_7087| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_3486_22465) ) (! (= (select (|PolymorphicMapType_7087_3486_22465#PolymorphicMapType_7087| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7087_3486_22465#PolymorphicMapType_7087| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_7139_7140) ) (! (= (select (|PolymorphicMapType_7087_3486_7140#PolymorphicMapType_7087| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7087_3486_7140#PolymorphicMapType_7087| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_7126_53) ) (! (= (select (|PolymorphicMapType_7087_3486_53#PolymorphicMapType_7087| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7087_3486_53#PolymorphicMapType_7087| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_10452_1186) ) (! (= (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7087) (SummandMask1 T@PolymorphicMapType_7087) (SummandMask2 T@PolymorphicMapType_7087) (o_2@@19 T@Ref) (f_4@@19 T@Field_3486_22598) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7087_3486_26720#PolymorphicMapType_7087| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_7087_3486_26720#PolymorphicMapType_7087| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_7087_3486_26720#PolymorphicMapType_7087| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7087_3486_26720#PolymorphicMapType_7087| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7087_3486_26720#PolymorphicMapType_7087| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7087_3486_26720#PolymorphicMapType_7087| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7087) (SummandMask1@@0 T@PolymorphicMapType_7087) (SummandMask2@@0 T@PolymorphicMapType_7087) (o_2@@20 T@Ref) (f_4@@20 T@Field_3486_22465) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7087_3486_22465#PolymorphicMapType_7087| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_7087_3486_22465#PolymorphicMapType_7087| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_7087_3486_22465#PolymorphicMapType_7087| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7087_3486_22465#PolymorphicMapType_7087| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7087_3486_22465#PolymorphicMapType_7087| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7087_3486_22465#PolymorphicMapType_7087| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7087) (SummandMask1@@1 T@PolymorphicMapType_7087) (SummandMask2@@1 T@PolymorphicMapType_7087) (o_2@@21 T@Ref) (f_4@@21 T@Field_7139_7140) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7087_3486_7140#PolymorphicMapType_7087| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_7087_3486_7140#PolymorphicMapType_7087| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_7087_3486_7140#PolymorphicMapType_7087| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7087_3486_7140#PolymorphicMapType_7087| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7087_3486_7140#PolymorphicMapType_7087| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7087_3486_7140#PolymorphicMapType_7087| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7087) (SummandMask1@@2 T@PolymorphicMapType_7087) (SummandMask2@@2 T@PolymorphicMapType_7087) (o_2@@22 T@Ref) (f_4@@22 T@Field_7126_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7087_3486_53#PolymorphicMapType_7087| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_7087_3486_53#PolymorphicMapType_7087| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_7087_3486_53#PolymorphicMapType_7087| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7087_3486_53#PolymorphicMapType_7087| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7087_3486_53#PolymorphicMapType_7087| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7087_3486_53#PolymorphicMapType_7087| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7087) (SummandMask1@@3 T@PolymorphicMapType_7087) (SummandMask2@@3 T@PolymorphicMapType_7087) (o_2@@23 T@Ref) (f_4@@23 T@Field_10452_1186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7066) (o T@Ref) (f_3 T@Field_3486_22465) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_7066 (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| Heap@@11) (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| Heap@@11) (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| Heap@@11) (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@11) (store (|PolymorphicMapType_7066_7126_22465#PolymorphicMapType_7066| Heap@@11) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7066 (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| Heap@@11) (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| Heap@@11) (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| Heap@@11) (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@11) (store (|PolymorphicMapType_7066_7126_22465#PolymorphicMapType_7066| Heap@@11) o f_3 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7066) (o@@0 T@Ref) (f_3@@0 T@Field_3486_22598) (v@@0 T@PolymorphicMapType_7615) ) (! (succHeap Heap@@12 (PolymorphicMapType_7066 (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| Heap@@12) (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| Heap@@12) (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| Heap@@12) (store (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@12) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_7066_7126_22465#PolymorphicMapType_7066| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7066 (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| Heap@@12) (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| Heap@@12) (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| Heap@@12) (store (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@12) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_7066_7126_22465#PolymorphicMapType_7066| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7066) (o@@1 T@Ref) (f_3@@1 T@Field_10452_1186) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_7066 (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| Heap@@13) (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| Heap@@13) (store (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| Heap@@13) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@13) (|PolymorphicMapType_7066_7126_22465#PolymorphicMapType_7066| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7066 (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| Heap@@13) (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| Heap@@13) (store (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| Heap@@13) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@13) (|PolymorphicMapType_7066_7126_22465#PolymorphicMapType_7066| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7066) (o@@2 T@Ref) (f_3@@2 T@Field_7139_7140) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_7066 (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| Heap@@14) (store (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| Heap@@14) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| Heap@@14) (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@14) (|PolymorphicMapType_7066_7126_22465#PolymorphicMapType_7066| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7066 (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| Heap@@14) (store (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| Heap@@14) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| Heap@@14) (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@14) (|PolymorphicMapType_7066_7126_22465#PolymorphicMapType_7066| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7066) (o@@3 T@Ref) (f_3@@3 T@Field_7126_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_7066 (store (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| Heap@@15) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| Heap@@15) (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| Heap@@15) (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@15) (|PolymorphicMapType_7066_7126_22465#PolymorphicMapType_7066| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7066 (store (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| Heap@@15) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| Heap@@15) (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| Heap@@15) (|PolymorphicMapType_7066_3486_22642#PolymorphicMapType_7066| Heap@@15) (|PolymorphicMapType_7066_7126_22465#PolymorphicMapType_7066| Heap@@15)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_7139_7140) (Heap@@16 T@PolymorphicMapType_7066) ) (!  (=> (select (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| Heap@@16) o@@4 $allocated) (select (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| Heap@@16) (select (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| Heap@@16) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7066_3361_3362#PolymorphicMapType_7066| Heap@@16) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_3486_22465) (v_1@@0 T@FrameType) (q T@Field_3486_22465) (w@@0 T@FrameType) (r T@Field_3486_22465) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7126_7126 p@@1 v_1@@0 q w@@0) (InsidePredicate_7126_7126 q w@@0 r u)) (InsidePredicate_7126_7126 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7126_7126 p@@1 v_1@@0 q w@@0) (InsidePredicate_7126_7126 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@6 () T@PolymorphicMapType_7087)
(declare-fun Mask@5 () T@PolymorphicMapType_7087)
(declare-fun diz () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_7066)
(declare-fun Heap@@17 () T@PolymorphicMapType_7066)
(declare-fun n () Int)
(declare-fun Mask@3 () T@PolymorphicMapType_7087)
(declare-fun Mask@2 () T@PolymorphicMapType_7087)
(declare-fun arg_n@0 () Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_7066)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_7066)
(declare-fun Mask@4 () T@PolymorphicMapType_7087)
(declare-fun Mask@1 () T@PolymorphicMapType_7087)
(declare-fun Mask@0 () T@PolymorphicMapType_7087)
(declare-fun current_thread_id () Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_7066)
(declare-fun PostMask@0 () T@PolymorphicMapType_7087)
(set-info :boogie-vc-id History__single)
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
 (=> (= (ControlFlow 0 0) 26) (let ((anon10_correct  (=> (and (= Mask@6 (PolymorphicMapType_7087 (store (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| Mask@5) diz History__x (- (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| Mask@5) diz History__x) FullPerm)) (|PolymorphicMapType_7087_3486_53#PolymorphicMapType_7087| Mask@5) (|PolymorphicMapType_7087_3486_7140#PolymorphicMapType_7087| Mask@5) (|PolymorphicMapType_7087_3486_22465#PolymorphicMapType_7087| Mask@5) (|PolymorphicMapType_7087_3486_26720#PolymorphicMapType_7087| Mask@5))) (= (ControlFlow 0 5) (- 0 4))) (= (select (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| Heap@0) diz History__x) (+ (select (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| Heap@@17) diz History__x) n)))))
(let ((anon15_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 8) 5)) anon10_correct)))
(let ((anon15_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (<= FullPerm (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| Mask@5) diz History__x))) (=> (<= FullPerm (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| Mask@5) diz History__x)) (=> (= (ControlFlow 0 6) 5) anon10_correct))))))
(let ((anon8_correct  (=> (state Heap@0 Mask@5) (and (=> (= (ControlFlow 0 9) 6) anon15_Then_correct) (=> (= (ControlFlow 0 9) 8) anon15_Else_correct)))))
(let ((anon7_correct  (=> (= Mask@3 (PolymorphicMapType_7087 (store (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| Mask@2) diz History__x (- (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| Mask@2) diz History__x) FullPerm)) (|PolymorphicMapType_7087_3486_53#PolymorphicMapType_7087| Mask@2) (|PolymorphicMapType_7087_3486_7140#PolymorphicMapType_7087| Mask@2) (|PolymorphicMapType_7087_3486_22465#PolymorphicMapType_7087| Mask@2) (|PolymorphicMapType_7087_3486_26720#PolymorphicMapType_7087| Mask@2))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (>= arg_n@0 0)) (=> (>= arg_n@0 0) (=> (and (IdenticalOnKnownLocations ExhaleHeap@0 ExhaleHeap@1 Mask@3) (not (= diz null))) (=> (and (and (and (= Mask@4 (PolymorphicMapType_7087 (store (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| Mask@3) diz History__x (+ (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| Mask@3) diz History__x) FullPerm)) (|PolymorphicMapType_7087_3486_53#PolymorphicMapType_7087| Mask@3) (|PolymorphicMapType_7087_3486_7140#PolymorphicMapType_7087| Mask@3) (|PolymorphicMapType_7087_3486_22465#PolymorphicMapType_7087| Mask@3) (|PolymorphicMapType_7087_3486_26720#PolymorphicMapType_7087| Mask@3))) (state ExhaleHeap@1 Mask@4)) (and (= (select (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| ExhaleHeap@1) diz History__x) (+ (select (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| ExhaleHeap@0) diz History__x) arg_n@0)) (state ExhaleHeap@1 Mask@4))) (and (and (state ExhaleHeap@1 Mask@4) (= Mask@5 Mask@4)) (and (= Heap@0 ExhaleHeap@1) (= (ControlFlow 0 11) 9)))) anon8_correct)))))))
(let ((anon14_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 15) 11)) anon7_correct)))
(let ((anon14_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (<= FullPerm (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| Mask@2) diz History__x))) (=> (<= FullPerm (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| Mask@2) diz History__x)) (=> (= (ControlFlow 0 13) 11) anon7_correct))))))
(let ((anon5_correct  (=> (= Mask@1 (PolymorphicMapType_7087 (store (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| Mask@0) diz History__x (- (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| Mask@0) diz History__x) FullPerm)) (|PolymorphicMapType_7087_3486_53#PolymorphicMapType_7087| Mask@0) (|PolymorphicMapType_7087_3486_7140#PolymorphicMapType_7087| Mask@0) (|PolymorphicMapType_7087_3486_22465#PolymorphicMapType_7087| Mask@0) (|PolymorphicMapType_7087_3486_26720#PolymorphicMapType_7087| Mask@0))) (=> (and (and (and (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 Mask@1) (not (= diz null))) (and (= Mask@2 (PolymorphicMapType_7087 (store (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| Mask@1) diz History__x (+ (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| Mask@1) diz History__x) FullPerm)) (|PolymorphicMapType_7087_3486_53#PolymorphicMapType_7087| Mask@1) (|PolymorphicMapType_7087_3486_7140#PolymorphicMapType_7087| Mask@1) (|PolymorphicMapType_7087_3486_22465#PolymorphicMapType_7087| Mask@1) (|PolymorphicMapType_7087_3486_26720#PolymorphicMapType_7087| Mask@1))) (state ExhaleHeap@0 Mask@2))) (and (and (= (select (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| ExhaleHeap@0) diz History__x) (+ (select (|PolymorphicMapType_7066_3486_1186#PolymorphicMapType_7066| Heap@@17) diz History__x) 1)) (state ExhaleHeap@0 Mask@2)) (and (state ExhaleHeap@0 Mask@2) (= arg_n@0 (- n 1))))) (and (=> (= (ControlFlow 0 16) (- 0 18)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (and (=> (= (ControlFlow 0 16) 13) anon14_Then_correct) (=> (= (ControlFlow 0 16) 15) anon14_Else_correct))))))))))
(let ((anon13_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 21) 16)) anon5_correct)))
(let ((anon13_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 19) (- 0 20)) (<= FullPerm (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| Mask@0) diz History__x))) (=> (<= FullPerm (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| Mask@0) diz History__x)) (=> (= (ControlFlow 0 19) 16) anon5_correct))))))
(let ((anon12_Then_correct  (=> (> n 0) (and (=> (= (ControlFlow 0 22) (- 0 24)) (not (= diz null))) (=> (not (= diz null)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (>= current_thread_id 0)) (=> (>= current_thread_id 0) (and (=> (= (ControlFlow 0 22) 19) anon13_Then_correct) (=> (= (ControlFlow 0 22) 21) anon13_Else_correct)))))))))
(let ((anon12_Else_correct  (=> (and (and (>= 0 n) (= Mask@5 Mask@0)) (and (= Heap@0 Heap@@17) (= (ControlFlow 0 10) 9))) anon8_correct)))
(let ((anon11_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (and (not (= diz null)) (= PostMask@0 (PolymorphicMapType_7087 (store (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| ZeroMask) diz History__x (+ (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| ZeroMask) diz History__x) FullPerm)) (|PolymorphicMapType_7087_3486_53#PolymorphicMapType_7087| ZeroMask) (|PolymorphicMapType_7087_3486_7140#PolymorphicMapType_7087| ZeroMask) (|PolymorphicMapType_7087_3486_22465#PolymorphicMapType_7087| ZeroMask) (|PolymorphicMapType_7087_3486_26720#PolymorphicMapType_7087| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_3486_1186 PostMask@0 diz History__x)) (=> (HasDirectPerm_3486_1186 PostMask@0 diz History__x) (=> (= (ControlFlow 0 2) (- 0 1)) (HasDirectPerm_3486_1186 Mask@0 diz History__x))))))))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_7066_3358_53#PolymorphicMapType_7066| Heap@@17) diz $allocated)) (and (not (= diz null)) (state Heap@@17 ZeroMask))) (=> (and (and (and (>= current_thread_id 0) (state Heap@@17 ZeroMask)) (and (not (= diz null)) (= Mask@0 (PolymorphicMapType_7087 (store (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| ZeroMask) diz History__x (+ (select (|PolymorphicMapType_7087_3486_1186#PolymorphicMapType_7087| ZeroMask) diz History__x) FullPerm)) (|PolymorphicMapType_7087_3486_53#PolymorphicMapType_7087| ZeroMask) (|PolymorphicMapType_7087_3486_7140#PolymorphicMapType_7087| ZeroMask) (|PolymorphicMapType_7087_3486_22465#PolymorphicMapType_7087| ZeroMask) (|PolymorphicMapType_7087_3486_26720#PolymorphicMapType_7087| ZeroMask))))) (and (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (>= n 0) (state Heap@@17 Mask@0)))) (and (and (=> (= (ControlFlow 0 25) 2) anon11_Then_correct) (=> (= (ControlFlow 0 25) 22) anon12_Then_correct)) (=> (= (ControlFlow 0 25) 10) anon12_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 26) 25) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
