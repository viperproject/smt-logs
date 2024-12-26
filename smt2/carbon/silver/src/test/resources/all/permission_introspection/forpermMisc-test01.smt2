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
(declare-sort T@Field_5872_53 0)
(declare-sort T@Field_5885_5886 0)
(declare-sort T@Field_9198_1186 0)
(declare-sort T@Field_2865_17651 0)
(declare-sort T@Field_2865_17518 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5833 0)) (((PolymorphicMapType_5833 (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| (Array T@Ref T@Field_9198_1186 Real)) (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| (Array T@Ref T@Field_5872_53 Real)) (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| (Array T@Ref T@Field_5885_5886 Real)) (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| (Array T@Ref T@Field_2865_17518 Real)) (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| (Array T@Ref T@Field_2865_17651 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6361 0)) (((PolymorphicMapType_6361 (|PolymorphicMapType_6361_5872_53#PolymorphicMapType_6361| (Array T@Ref T@Field_5872_53 Bool)) (|PolymorphicMapType_6361_5872_5886#PolymorphicMapType_6361| (Array T@Ref T@Field_5885_5886 Bool)) (|PolymorphicMapType_6361_5872_1186#PolymorphicMapType_6361| (Array T@Ref T@Field_9198_1186 Bool)) (|PolymorphicMapType_6361_5872_17518#PolymorphicMapType_6361| (Array T@Ref T@Field_2865_17518 Bool)) (|PolymorphicMapType_6361_5872_18829#PolymorphicMapType_6361| (Array T@Ref T@Field_2865_17651 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5812 0)) (((PolymorphicMapType_5812 (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| (Array T@Ref T@Field_5872_53 Bool)) (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| (Array T@Ref T@Field_5885_5886 T@Ref)) (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| (Array T@Ref T@Field_9198_1186 Int)) (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| (Array T@Ref T@Field_2865_17651 T@PolymorphicMapType_6361)) (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| (Array T@Ref T@Field_2865_17518 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_5872_53)
(declare-fun val () T@Field_9198_1186)
(declare-fun succHeap (T@PolymorphicMapType_5812 T@PolymorphicMapType_5812) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5812 T@PolymorphicMapType_5812) Bool)
(declare-fun state (T@PolymorphicMapType_5812 T@PolymorphicMapType_5833) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5833) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6361)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5812 T@PolymorphicMapType_5812 T@PolymorphicMapType_5833) Bool)
(declare-fun IsPredicateField_2865_17609 (T@Field_2865_17518) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2865 (T@Field_2865_17518) T@Field_2865_17651)
(declare-fun HasDirectPerm_2865_17582 (T@PolymorphicMapType_5833 T@Ref T@Field_2865_17518) Bool)
(declare-fun IsWandField_2865_19356 (T@Field_2865_17518) Bool)
(declare-fun WandMaskField_2865 (T@Field_2865_17518) T@Field_2865_17651)
(declare-fun dummyHeap () T@PolymorphicMapType_5812)
(declare-fun ZeroMask () T@PolymorphicMapType_5833)
(declare-fun InsidePredicate_5872_5872 (T@Field_2865_17518 T@FrameType T@Field_2865_17518 T@FrameType) Bool)
(declare-fun IsPredicateField_2865_1186 (T@Field_9198_1186) Bool)
(declare-fun IsWandField_2865_1186 (T@Field_9198_1186) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2865_22902 (T@Field_2865_17651) Bool)
(declare-fun IsWandField_2865_22918 (T@Field_2865_17651) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2865_5886 (T@Field_5885_5886) Bool)
(declare-fun IsWandField_2865_5886 (T@Field_5885_5886) Bool)
(declare-fun IsPredicateField_2865_53 (T@Field_5872_53) Bool)
(declare-fun IsWandField_2865_53 (T@Field_5872_53) Bool)
(declare-fun HasDirectPerm_2865_23356 (T@PolymorphicMapType_5833 T@Ref T@Field_2865_17651) Bool)
(declare-fun HasDirectPerm_2865_5886 (T@PolymorphicMapType_5833 T@Ref T@Field_5885_5886) Bool)
(declare-fun HasDirectPerm_2865_53 (T@PolymorphicMapType_5833 T@Ref T@Field_5872_53) Bool)
(declare-fun HasDirectPerm_2865_1186 (T@PolymorphicMapType_5833 T@Ref T@Field_9198_1186) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5833 T@PolymorphicMapType_5833 T@PolymorphicMapType_5833) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_5812) (Heap1 T@PolymorphicMapType_5812) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5812) (Mask T@PolymorphicMapType_5833) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5812) (Heap1@@0 T@PolymorphicMapType_5812) (Heap2 T@PolymorphicMapType_5812) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_2865_17651) ) (!  (not (select (|PolymorphicMapType_6361_5872_18829#PolymorphicMapType_6361| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6361_5872_18829#PolymorphicMapType_6361| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_2865_17518) ) (!  (not (select (|PolymorphicMapType_6361_5872_17518#PolymorphicMapType_6361| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6361_5872_17518#PolymorphicMapType_6361| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9198_1186) ) (!  (not (select (|PolymorphicMapType_6361_5872_1186#PolymorphicMapType_6361| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6361_5872_1186#PolymorphicMapType_6361| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5885_5886) ) (!  (not (select (|PolymorphicMapType_6361_5872_5886#PolymorphicMapType_6361| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6361_5872_5886#PolymorphicMapType_6361| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5872_53) ) (!  (not (select (|PolymorphicMapType_6361_5872_53#PolymorphicMapType_6361| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6361_5872_53#PolymorphicMapType_6361| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5812) (ExhaleHeap T@PolymorphicMapType_5812) (Mask@@0 T@PolymorphicMapType_5833) (pm_f_22 T@Field_2865_17518) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2865_17582 Mask@@0 null pm_f_22) (IsPredicateField_2865_17609 pm_f_22)) (= (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@0) null (PredicateMaskField_2865 pm_f_22)) (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| ExhaleHeap) null (PredicateMaskField_2865 pm_f_22)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_2865_17609 pm_f_22) (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| ExhaleHeap) null (PredicateMaskField_2865 pm_f_22)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5812) (ExhaleHeap@@0 T@PolymorphicMapType_5812) (Mask@@1 T@PolymorphicMapType_5833) (pm_f_22@@0 T@Field_2865_17518) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2865_17582 Mask@@1 null pm_f_22@@0) (IsWandField_2865_19356 pm_f_22@@0)) (= (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@1) null (WandMaskField_2865 pm_f_22@@0)) (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| ExhaleHeap@@0) null (WandMaskField_2865 pm_f_22@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_2865_19356 pm_f_22@@0) (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| ExhaleHeap@@0) null (WandMaskField_2865 pm_f_22@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5812) (ExhaleHeap@@1 T@PolymorphicMapType_5812) (Mask@@2 T@PolymorphicMapType_5833) (o_46 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@2) o_46 $allocated) (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| ExhaleHeap@@1) o_46 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| ExhaleHeap@@1) o_46 $allocated))
)))
(assert (forall ((p T@Field_2865_17518) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5872_5872 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5872_5872 p v_1 p w))
)))
(assert  (not (IsPredicateField_2865_1186 val)))
(assert  (not (IsWandField_2865_1186 val)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5812) (ExhaleHeap@@2 T@PolymorphicMapType_5812) (Mask@@3 T@PolymorphicMapType_5833) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_5833) (o_2@@4 T@Ref) (f_4@@4 T@Field_2865_17651) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_2865_22902 f_4@@4))) (not (IsWandField_2865_22918 f_4@@4))) (<= (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_5833) (o_2@@5 T@Ref) (f_4@@5 T@Field_2865_17518) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_2865_17609 f_4@@5))) (not (IsWandField_2865_19356 f_4@@5))) (<= (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_5833) (o_2@@6 T@Ref) (f_4@@6 T@Field_5885_5886) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_2865_5886 f_4@@6))) (not (IsWandField_2865_5886 f_4@@6))) (<= (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_5833) (o_2@@7 T@Ref) (f_4@@7 T@Field_5872_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2865_53 f_4@@7))) (not (IsWandField_2865_53 f_4@@7))) (<= (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5833) (o_2@@8 T@Ref) (f_4@@8 T@Field_9198_1186) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2865_1186 f_4@@8))) (not (IsWandField_2865_1186 f_4@@8))) (<= (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5833) (o_2@@9 T@Ref) (f_4@@9 T@Field_2865_17651) ) (! (= (HasDirectPerm_2865_23356 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2865_23356 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5833) (o_2@@10 T@Ref) (f_4@@10 T@Field_2865_17518) ) (! (= (HasDirectPerm_2865_17582 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2865_17582 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5833) (o_2@@11 T@Ref) (f_4@@11 T@Field_5885_5886) ) (! (= (HasDirectPerm_2865_5886 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2865_5886 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5833) (o_2@@12 T@Ref) (f_4@@12 T@Field_5872_53) ) (! (= (HasDirectPerm_2865_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2865_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5833) (o_2@@13 T@Ref) (f_4@@13 T@Field_9198_1186) ) (! (= (HasDirectPerm_2865_1186 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2865_1186 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5812) (ExhaleHeap@@3 T@PolymorphicMapType_5812) (Mask@@14 T@PolymorphicMapType_5833) (pm_f_22@@1 T@Field_2865_17518) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_2865_17582 Mask@@14 null pm_f_22@@1) (IsPredicateField_2865_17609 pm_f_22@@1)) (and (and (and (and (forall ((o2_22 T@Ref) (f_37 T@Field_5872_53) ) (!  (=> (select (|PolymorphicMapType_6361_5872_53#PolymorphicMapType_6361| (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@4) null (PredicateMaskField_2865 pm_f_22@@1))) o2_22 f_37) (= (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@4) o2_22 f_37) (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| ExhaleHeap@@3) o2_22 f_37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| ExhaleHeap@@3) o2_22 f_37))
)) (forall ((o2_22@@0 T@Ref) (f_37@@0 T@Field_5885_5886) ) (!  (=> (select (|PolymorphicMapType_6361_5872_5886#PolymorphicMapType_6361| (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@4) null (PredicateMaskField_2865 pm_f_22@@1))) o2_22@@0 f_37@@0) (= (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@4) o2_22@@0 f_37@@0) (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| ExhaleHeap@@3) o2_22@@0 f_37@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| ExhaleHeap@@3) o2_22@@0 f_37@@0))
))) (forall ((o2_22@@1 T@Ref) (f_37@@1 T@Field_9198_1186) ) (!  (=> (select (|PolymorphicMapType_6361_5872_1186#PolymorphicMapType_6361| (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@4) null (PredicateMaskField_2865 pm_f_22@@1))) o2_22@@1 f_37@@1) (= (select (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@4) o2_22@@1 f_37@@1) (select (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| ExhaleHeap@@3) o2_22@@1 f_37@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| ExhaleHeap@@3) o2_22@@1 f_37@@1))
))) (forall ((o2_22@@2 T@Ref) (f_37@@2 T@Field_2865_17518) ) (!  (=> (select (|PolymorphicMapType_6361_5872_17518#PolymorphicMapType_6361| (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@4) null (PredicateMaskField_2865 pm_f_22@@1))) o2_22@@2 f_37@@2) (= (select (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@4) o2_22@@2 f_37@@2) (select (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| ExhaleHeap@@3) o2_22@@2 f_37@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| ExhaleHeap@@3) o2_22@@2 f_37@@2))
))) (forall ((o2_22@@3 T@Ref) (f_37@@3 T@Field_2865_17651) ) (!  (=> (select (|PolymorphicMapType_6361_5872_18829#PolymorphicMapType_6361| (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@4) null (PredicateMaskField_2865 pm_f_22@@1))) o2_22@@3 f_37@@3) (= (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@4) o2_22@@3 f_37@@3) (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| ExhaleHeap@@3) o2_22@@3 f_37@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| ExhaleHeap@@3) o2_22@@3 f_37@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_2865_17609 pm_f_22@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5812) (ExhaleHeap@@4 T@PolymorphicMapType_5812) (Mask@@15 T@PolymorphicMapType_5833) (pm_f_22@@2 T@Field_2865_17518) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_2865_17582 Mask@@15 null pm_f_22@@2) (IsWandField_2865_19356 pm_f_22@@2)) (and (and (and (and (forall ((o2_22@@4 T@Ref) (f_37@@4 T@Field_5872_53) ) (!  (=> (select (|PolymorphicMapType_6361_5872_53#PolymorphicMapType_6361| (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@5) null (WandMaskField_2865 pm_f_22@@2))) o2_22@@4 f_37@@4) (= (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@5) o2_22@@4 f_37@@4) (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| ExhaleHeap@@4) o2_22@@4 f_37@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| ExhaleHeap@@4) o2_22@@4 f_37@@4))
)) (forall ((o2_22@@5 T@Ref) (f_37@@5 T@Field_5885_5886) ) (!  (=> (select (|PolymorphicMapType_6361_5872_5886#PolymorphicMapType_6361| (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@5) null (WandMaskField_2865 pm_f_22@@2))) o2_22@@5 f_37@@5) (= (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@5) o2_22@@5 f_37@@5) (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| ExhaleHeap@@4) o2_22@@5 f_37@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| ExhaleHeap@@4) o2_22@@5 f_37@@5))
))) (forall ((o2_22@@6 T@Ref) (f_37@@6 T@Field_9198_1186) ) (!  (=> (select (|PolymorphicMapType_6361_5872_1186#PolymorphicMapType_6361| (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@5) null (WandMaskField_2865 pm_f_22@@2))) o2_22@@6 f_37@@6) (= (select (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@5) o2_22@@6 f_37@@6) (select (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| ExhaleHeap@@4) o2_22@@6 f_37@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| ExhaleHeap@@4) o2_22@@6 f_37@@6))
))) (forall ((o2_22@@7 T@Ref) (f_37@@7 T@Field_2865_17518) ) (!  (=> (select (|PolymorphicMapType_6361_5872_17518#PolymorphicMapType_6361| (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@5) null (WandMaskField_2865 pm_f_22@@2))) o2_22@@7 f_37@@7) (= (select (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@5) o2_22@@7 f_37@@7) (select (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| ExhaleHeap@@4) o2_22@@7 f_37@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| ExhaleHeap@@4) o2_22@@7 f_37@@7))
))) (forall ((o2_22@@8 T@Ref) (f_37@@8 T@Field_2865_17651) ) (!  (=> (select (|PolymorphicMapType_6361_5872_18829#PolymorphicMapType_6361| (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@5) null (WandMaskField_2865 pm_f_22@@2))) o2_22@@8 f_37@@8) (= (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@5) o2_22@@8 f_37@@8) (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| ExhaleHeap@@4) o2_22@@8 f_37@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| ExhaleHeap@@4) o2_22@@8 f_37@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_2865_19356 pm_f_22@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5812) (ExhaleHeap@@5 T@PolymorphicMapType_5812) (Mask@@16 T@PolymorphicMapType_5833) (o_46@@0 T@Ref) (f_37@@9 T@Field_2865_17651) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_2865_23356 Mask@@16 o_46@@0 f_37@@9) (= (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@6) o_46@@0 f_37@@9) (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| ExhaleHeap@@5) o_46@@0 f_37@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| ExhaleHeap@@5) o_46@@0 f_37@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5812) (ExhaleHeap@@6 T@PolymorphicMapType_5812) (Mask@@17 T@PolymorphicMapType_5833) (o_46@@1 T@Ref) (f_37@@10 T@Field_2865_17518) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_2865_17582 Mask@@17 o_46@@1 f_37@@10) (= (select (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@7) o_46@@1 f_37@@10) (select (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| ExhaleHeap@@6) o_46@@1 f_37@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| ExhaleHeap@@6) o_46@@1 f_37@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5812) (ExhaleHeap@@7 T@PolymorphicMapType_5812) (Mask@@18 T@PolymorphicMapType_5833) (o_46@@2 T@Ref) (f_37@@11 T@Field_5885_5886) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_2865_5886 Mask@@18 o_46@@2 f_37@@11) (= (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@8) o_46@@2 f_37@@11) (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| ExhaleHeap@@7) o_46@@2 f_37@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| ExhaleHeap@@7) o_46@@2 f_37@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5812) (ExhaleHeap@@8 T@PolymorphicMapType_5812) (Mask@@19 T@PolymorphicMapType_5833) (o_46@@3 T@Ref) (f_37@@12 T@Field_5872_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_2865_53 Mask@@19 o_46@@3 f_37@@12) (= (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@9) o_46@@3 f_37@@12) (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| ExhaleHeap@@8) o_46@@3 f_37@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| ExhaleHeap@@8) o_46@@3 f_37@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5812) (ExhaleHeap@@9 T@PolymorphicMapType_5812) (Mask@@20 T@PolymorphicMapType_5833) (o_46@@4 T@Ref) (f_37@@13 T@Field_9198_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_2865_1186 Mask@@20 o_46@@4 f_37@@13) (= (select (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@10) o_46@@4 f_37@@13) (select (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| ExhaleHeap@@9) o_46@@4 f_37@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| ExhaleHeap@@9) o_46@@4 f_37@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_2865_17651) ) (! (= (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_2865_17518) ) (! (= (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_5885_5886) ) (! (= (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_5872_53) ) (! (= (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_9198_1186) ) (! (= (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5833) (SummandMask1 T@PolymorphicMapType_5833) (SummandMask2 T@PolymorphicMapType_5833) (o_2@@19 T@Ref) (f_4@@19 T@Field_2865_17651) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5833) (SummandMask1@@0 T@PolymorphicMapType_5833) (SummandMask2@@0 T@PolymorphicMapType_5833) (o_2@@20 T@Ref) (f_4@@20 T@Field_2865_17518) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5833) (SummandMask1@@1 T@PolymorphicMapType_5833) (SummandMask2@@1 T@PolymorphicMapType_5833) (o_2@@21 T@Ref) (f_4@@21 T@Field_5885_5886) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5833) (SummandMask1@@2 T@PolymorphicMapType_5833) (SummandMask2@@2 T@PolymorphicMapType_5833) (o_2@@22 T@Ref) (f_4@@22 T@Field_5872_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5833) (SummandMask1@@3 T@PolymorphicMapType_5833) (SummandMask2@@3 T@PolymorphicMapType_5833) (o_2@@23 T@Ref) (f_4@@23 T@Field_9198_1186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5812) (o_12 T@Ref) (f_24 T@Field_2865_17518) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_5812 (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@11) (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@11) (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@11) (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@11) (store (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@11) o_12 f_24 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5812 (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@11) (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@11) (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@11) (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@11) (store (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@11) o_12 f_24 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5812) (o_12@@0 T@Ref) (f_24@@0 T@Field_2865_17651) (v@@0 T@PolymorphicMapType_6361) ) (! (succHeap Heap@@12 (PolymorphicMapType_5812 (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@12) (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@12) (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@12) (store (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@12) o_12@@0 f_24@@0 v@@0) (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5812 (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@12) (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@12) (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@12) (store (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@12) o_12@@0 f_24@@0 v@@0) (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5812) (o_12@@1 T@Ref) (f_24@@1 T@Field_9198_1186) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_5812 (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@13) (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@13) (store (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@13) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@13) (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5812 (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@13) (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@13) (store (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@13) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@13) (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5812) (o_12@@2 T@Ref) (f_24@@2 T@Field_5885_5886) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_5812 (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@14) (store (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@14) o_12@@2 f_24@@2 v@@2) (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@14) (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@14) (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5812 (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@14) (store (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@14) o_12@@2 f_24@@2 v@@2) (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@14) (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@14) (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5812) (o_12@@3 T@Ref) (f_24@@3 T@Field_5872_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_5812 (store (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@15) o_12@@3 f_24@@3 v@@3) (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@15) (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@15) (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@15) (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5812 (store (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@15) o_12@@3 f_24@@3 v@@3) (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@15) (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@15) (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@15) (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@15)))
)))
(assert (forall ((o_12@@4 T@Ref) (f_16 T@Field_5885_5886) (Heap@@16 T@PolymorphicMapType_5812) ) (!  (=> (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@16) o_12@@4 $allocated) (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@16) (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@16) o_12@@4 f_16) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@16) o_12@@4 f_16))
)))
(assert (forall ((p@@1 T@Field_2865_17518) (v_1@@0 T@FrameType) (q T@Field_2865_17518) (w@@0 T@FrameType) (r T@Field_2865_17518) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5872_5872 p@@1 v_1@@0 q w@@0) (InsidePredicate_5872_5872 q w@@0 r u)) (InsidePredicate_5872_5872 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5872_5872 p@@1 v_1@@0 q w@@0) (InsidePredicate_5872_5872 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@0 () T@PolymorphicMapType_5833)
(declare-fun r_36 () T@Ref)
(declare-fun Heap@@17 () T@PolymorphicMapType_5812)
(declare-fun x () T@Ref)
(declare-fun p_1 () Real)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon3_correct true))
(let ((anon6_Else_correct  (=> (and (not (HasDirectPerm_2865_1186 Mask@0 r_36 val)) (= (ControlFlow 0 6) 3)) anon3_correct)))
(let ((anon6_Then_correct  (=> (HasDirectPerm_2865_1186 Mask@0 r_36 val) (and (=> (= (ControlFlow 0 4) (- 0 5)) (HasDirectPerm_2865_1186 Mask@0 r_36 val)) (=> (HasDirectPerm_2865_1186 Mask@0 r_36 val) (=> (= (ControlFlow 0 4) 3) anon3_correct))))))
(let ((anon5_Else_correct  (=> (and (and (forall ((r_1_1 T@Ref) ) (!  (=> (HasDirectPerm_2865_1186 Mask@0 r_1_1 val) false)
 :qid |stdinbpl.236:20|
 :skolemid |22|
 :pattern ( (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| Mask@0) r_1_1 val))
 :pattern ( (select (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@17) r_1_1 val))
)) (state Heap@@17 Mask@0)) (and (state Heap@@17 Mask@0) (= (ControlFlow 0 2) (- 0 1)))) false)))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@17) x $allocated)) (and (<= NoPerm p_1) (state Heap@@17 ZeroMask))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (>= p_1 NoPerm)) (=> (>= p_1 NoPerm) (=> (=> (> p_1 NoPerm) (not (= x null))) (=> (and (and (= Mask@0 (PolymorphicMapType_5833 (store (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| ZeroMask) x val (+ (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| ZeroMask) x val) p_1)) (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| ZeroMask) (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| ZeroMask) (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| ZeroMask) (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| ZeroMask))) (state Heap@@17 Mask@0)) (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0))) (and (and (=> (= (ControlFlow 0 7) 2) anon5_Else_correct) (=> (= (ControlFlow 0 7) 4) anon6_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon6_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 7) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
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
(declare-sort T@Field_5872_53 0)
(declare-sort T@Field_5885_5886 0)
(declare-sort T@Field_9198_1186 0)
(declare-sort T@Field_2865_17651 0)
(declare-sort T@Field_2865_17518 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5833 0)) (((PolymorphicMapType_5833 (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| (Array T@Ref T@Field_9198_1186 Real)) (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| (Array T@Ref T@Field_5872_53 Real)) (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| (Array T@Ref T@Field_5885_5886 Real)) (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| (Array T@Ref T@Field_2865_17518 Real)) (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| (Array T@Ref T@Field_2865_17651 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6361 0)) (((PolymorphicMapType_6361 (|PolymorphicMapType_6361_5872_53#PolymorphicMapType_6361| (Array T@Ref T@Field_5872_53 Bool)) (|PolymorphicMapType_6361_5872_5886#PolymorphicMapType_6361| (Array T@Ref T@Field_5885_5886 Bool)) (|PolymorphicMapType_6361_5872_1186#PolymorphicMapType_6361| (Array T@Ref T@Field_9198_1186 Bool)) (|PolymorphicMapType_6361_5872_17518#PolymorphicMapType_6361| (Array T@Ref T@Field_2865_17518 Bool)) (|PolymorphicMapType_6361_5872_18829#PolymorphicMapType_6361| (Array T@Ref T@Field_2865_17651 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5812 0)) (((PolymorphicMapType_5812 (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| (Array T@Ref T@Field_5872_53 Bool)) (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| (Array T@Ref T@Field_5885_5886 T@Ref)) (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| (Array T@Ref T@Field_9198_1186 Int)) (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| (Array T@Ref T@Field_2865_17651 T@PolymorphicMapType_6361)) (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| (Array T@Ref T@Field_2865_17518 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_5872_53)
(declare-fun val () T@Field_9198_1186)
(declare-fun succHeap (T@PolymorphicMapType_5812 T@PolymorphicMapType_5812) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5812 T@PolymorphicMapType_5812) Bool)
(declare-fun state (T@PolymorphicMapType_5812 T@PolymorphicMapType_5833) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5833) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6361)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5812 T@PolymorphicMapType_5812 T@PolymorphicMapType_5833) Bool)
(declare-fun IsPredicateField_2865_17609 (T@Field_2865_17518) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2865 (T@Field_2865_17518) T@Field_2865_17651)
(declare-fun HasDirectPerm_2865_17582 (T@PolymorphicMapType_5833 T@Ref T@Field_2865_17518) Bool)
(declare-fun IsWandField_2865_19356 (T@Field_2865_17518) Bool)
(declare-fun WandMaskField_2865 (T@Field_2865_17518) T@Field_2865_17651)
(declare-fun dummyHeap () T@PolymorphicMapType_5812)
(declare-fun ZeroMask () T@PolymorphicMapType_5833)
(declare-fun InsidePredicate_5872_5872 (T@Field_2865_17518 T@FrameType T@Field_2865_17518 T@FrameType) Bool)
(declare-fun IsPredicateField_2865_1186 (T@Field_9198_1186) Bool)
(declare-fun IsWandField_2865_1186 (T@Field_9198_1186) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2865_22902 (T@Field_2865_17651) Bool)
(declare-fun IsWandField_2865_22918 (T@Field_2865_17651) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2865_5886 (T@Field_5885_5886) Bool)
(declare-fun IsWandField_2865_5886 (T@Field_5885_5886) Bool)
(declare-fun IsPredicateField_2865_53 (T@Field_5872_53) Bool)
(declare-fun IsWandField_2865_53 (T@Field_5872_53) Bool)
(declare-fun HasDirectPerm_2865_23356 (T@PolymorphicMapType_5833 T@Ref T@Field_2865_17651) Bool)
(declare-fun HasDirectPerm_2865_5886 (T@PolymorphicMapType_5833 T@Ref T@Field_5885_5886) Bool)
(declare-fun HasDirectPerm_2865_53 (T@PolymorphicMapType_5833 T@Ref T@Field_5872_53) Bool)
(declare-fun HasDirectPerm_2865_1186 (T@PolymorphicMapType_5833 T@Ref T@Field_9198_1186) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5833 T@PolymorphicMapType_5833 T@PolymorphicMapType_5833) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_5812) (Heap1 T@PolymorphicMapType_5812) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5812) (Mask T@PolymorphicMapType_5833) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5812) (Heap1@@0 T@PolymorphicMapType_5812) (Heap2 T@PolymorphicMapType_5812) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_2865_17651) ) (!  (not (select (|PolymorphicMapType_6361_5872_18829#PolymorphicMapType_6361| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6361_5872_18829#PolymorphicMapType_6361| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_2865_17518) ) (!  (not (select (|PolymorphicMapType_6361_5872_17518#PolymorphicMapType_6361| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6361_5872_17518#PolymorphicMapType_6361| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9198_1186) ) (!  (not (select (|PolymorphicMapType_6361_5872_1186#PolymorphicMapType_6361| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6361_5872_1186#PolymorphicMapType_6361| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5885_5886) ) (!  (not (select (|PolymorphicMapType_6361_5872_5886#PolymorphicMapType_6361| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6361_5872_5886#PolymorphicMapType_6361| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5872_53) ) (!  (not (select (|PolymorphicMapType_6361_5872_53#PolymorphicMapType_6361| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6361_5872_53#PolymorphicMapType_6361| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5812) (ExhaleHeap T@PolymorphicMapType_5812) (Mask@@0 T@PolymorphicMapType_5833) (pm_f_22 T@Field_2865_17518) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2865_17582 Mask@@0 null pm_f_22) (IsPredicateField_2865_17609 pm_f_22)) (= (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@0) null (PredicateMaskField_2865 pm_f_22)) (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| ExhaleHeap) null (PredicateMaskField_2865 pm_f_22)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_2865_17609 pm_f_22) (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| ExhaleHeap) null (PredicateMaskField_2865 pm_f_22)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5812) (ExhaleHeap@@0 T@PolymorphicMapType_5812) (Mask@@1 T@PolymorphicMapType_5833) (pm_f_22@@0 T@Field_2865_17518) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2865_17582 Mask@@1 null pm_f_22@@0) (IsWandField_2865_19356 pm_f_22@@0)) (= (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@1) null (WandMaskField_2865 pm_f_22@@0)) (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| ExhaleHeap@@0) null (WandMaskField_2865 pm_f_22@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_2865_19356 pm_f_22@@0) (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| ExhaleHeap@@0) null (WandMaskField_2865 pm_f_22@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5812) (ExhaleHeap@@1 T@PolymorphicMapType_5812) (Mask@@2 T@PolymorphicMapType_5833) (o_46 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@2) o_46 $allocated) (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| ExhaleHeap@@1) o_46 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| ExhaleHeap@@1) o_46 $allocated))
)))
(assert (forall ((p T@Field_2865_17518) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5872_5872 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5872_5872 p v_1 p w))
)))
(assert  (not (IsPredicateField_2865_1186 val)))
(assert  (not (IsWandField_2865_1186 val)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5812) (ExhaleHeap@@2 T@PolymorphicMapType_5812) (Mask@@3 T@PolymorphicMapType_5833) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_5833) (o_2@@4 T@Ref) (f_4@@4 T@Field_2865_17651) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_2865_22902 f_4@@4))) (not (IsWandField_2865_22918 f_4@@4))) (<= (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_5833) (o_2@@5 T@Ref) (f_4@@5 T@Field_2865_17518) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_2865_17609 f_4@@5))) (not (IsWandField_2865_19356 f_4@@5))) (<= (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_5833) (o_2@@6 T@Ref) (f_4@@6 T@Field_5885_5886) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_2865_5886 f_4@@6))) (not (IsWandField_2865_5886 f_4@@6))) (<= (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_5833) (o_2@@7 T@Ref) (f_4@@7 T@Field_5872_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2865_53 f_4@@7))) (not (IsWandField_2865_53 f_4@@7))) (<= (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5833) (o_2@@8 T@Ref) (f_4@@8 T@Field_9198_1186) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2865_1186 f_4@@8))) (not (IsWandField_2865_1186 f_4@@8))) (<= (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5833) (o_2@@9 T@Ref) (f_4@@9 T@Field_2865_17651) ) (! (= (HasDirectPerm_2865_23356 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2865_23356 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5833) (o_2@@10 T@Ref) (f_4@@10 T@Field_2865_17518) ) (! (= (HasDirectPerm_2865_17582 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2865_17582 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5833) (o_2@@11 T@Ref) (f_4@@11 T@Field_5885_5886) ) (! (= (HasDirectPerm_2865_5886 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2865_5886 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5833) (o_2@@12 T@Ref) (f_4@@12 T@Field_5872_53) ) (! (= (HasDirectPerm_2865_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2865_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5833) (o_2@@13 T@Ref) (f_4@@13 T@Field_9198_1186) ) (! (= (HasDirectPerm_2865_1186 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2865_1186 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5812) (ExhaleHeap@@3 T@PolymorphicMapType_5812) (Mask@@14 T@PolymorphicMapType_5833) (pm_f_22@@1 T@Field_2865_17518) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_2865_17582 Mask@@14 null pm_f_22@@1) (IsPredicateField_2865_17609 pm_f_22@@1)) (and (and (and (and (forall ((o2_22 T@Ref) (f_37 T@Field_5872_53) ) (!  (=> (select (|PolymorphicMapType_6361_5872_53#PolymorphicMapType_6361| (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@4) null (PredicateMaskField_2865 pm_f_22@@1))) o2_22 f_37) (= (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@4) o2_22 f_37) (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| ExhaleHeap@@3) o2_22 f_37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| ExhaleHeap@@3) o2_22 f_37))
)) (forall ((o2_22@@0 T@Ref) (f_37@@0 T@Field_5885_5886) ) (!  (=> (select (|PolymorphicMapType_6361_5872_5886#PolymorphicMapType_6361| (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@4) null (PredicateMaskField_2865 pm_f_22@@1))) o2_22@@0 f_37@@0) (= (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@4) o2_22@@0 f_37@@0) (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| ExhaleHeap@@3) o2_22@@0 f_37@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| ExhaleHeap@@3) o2_22@@0 f_37@@0))
))) (forall ((o2_22@@1 T@Ref) (f_37@@1 T@Field_9198_1186) ) (!  (=> (select (|PolymorphicMapType_6361_5872_1186#PolymorphicMapType_6361| (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@4) null (PredicateMaskField_2865 pm_f_22@@1))) o2_22@@1 f_37@@1) (= (select (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@4) o2_22@@1 f_37@@1) (select (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| ExhaleHeap@@3) o2_22@@1 f_37@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| ExhaleHeap@@3) o2_22@@1 f_37@@1))
))) (forall ((o2_22@@2 T@Ref) (f_37@@2 T@Field_2865_17518) ) (!  (=> (select (|PolymorphicMapType_6361_5872_17518#PolymorphicMapType_6361| (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@4) null (PredicateMaskField_2865 pm_f_22@@1))) o2_22@@2 f_37@@2) (= (select (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@4) o2_22@@2 f_37@@2) (select (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| ExhaleHeap@@3) o2_22@@2 f_37@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| ExhaleHeap@@3) o2_22@@2 f_37@@2))
))) (forall ((o2_22@@3 T@Ref) (f_37@@3 T@Field_2865_17651) ) (!  (=> (select (|PolymorphicMapType_6361_5872_18829#PolymorphicMapType_6361| (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@4) null (PredicateMaskField_2865 pm_f_22@@1))) o2_22@@3 f_37@@3) (= (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@4) o2_22@@3 f_37@@3) (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| ExhaleHeap@@3) o2_22@@3 f_37@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| ExhaleHeap@@3) o2_22@@3 f_37@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_2865_17609 pm_f_22@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5812) (ExhaleHeap@@4 T@PolymorphicMapType_5812) (Mask@@15 T@PolymorphicMapType_5833) (pm_f_22@@2 T@Field_2865_17518) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_2865_17582 Mask@@15 null pm_f_22@@2) (IsWandField_2865_19356 pm_f_22@@2)) (and (and (and (and (forall ((o2_22@@4 T@Ref) (f_37@@4 T@Field_5872_53) ) (!  (=> (select (|PolymorphicMapType_6361_5872_53#PolymorphicMapType_6361| (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@5) null (WandMaskField_2865 pm_f_22@@2))) o2_22@@4 f_37@@4) (= (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@5) o2_22@@4 f_37@@4) (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| ExhaleHeap@@4) o2_22@@4 f_37@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| ExhaleHeap@@4) o2_22@@4 f_37@@4))
)) (forall ((o2_22@@5 T@Ref) (f_37@@5 T@Field_5885_5886) ) (!  (=> (select (|PolymorphicMapType_6361_5872_5886#PolymorphicMapType_6361| (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@5) null (WandMaskField_2865 pm_f_22@@2))) o2_22@@5 f_37@@5) (= (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@5) o2_22@@5 f_37@@5) (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| ExhaleHeap@@4) o2_22@@5 f_37@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| ExhaleHeap@@4) o2_22@@5 f_37@@5))
))) (forall ((o2_22@@6 T@Ref) (f_37@@6 T@Field_9198_1186) ) (!  (=> (select (|PolymorphicMapType_6361_5872_1186#PolymorphicMapType_6361| (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@5) null (WandMaskField_2865 pm_f_22@@2))) o2_22@@6 f_37@@6) (= (select (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@5) o2_22@@6 f_37@@6) (select (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| ExhaleHeap@@4) o2_22@@6 f_37@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| ExhaleHeap@@4) o2_22@@6 f_37@@6))
))) (forall ((o2_22@@7 T@Ref) (f_37@@7 T@Field_2865_17518) ) (!  (=> (select (|PolymorphicMapType_6361_5872_17518#PolymorphicMapType_6361| (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@5) null (WandMaskField_2865 pm_f_22@@2))) o2_22@@7 f_37@@7) (= (select (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@5) o2_22@@7 f_37@@7) (select (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| ExhaleHeap@@4) o2_22@@7 f_37@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| ExhaleHeap@@4) o2_22@@7 f_37@@7))
))) (forall ((o2_22@@8 T@Ref) (f_37@@8 T@Field_2865_17651) ) (!  (=> (select (|PolymorphicMapType_6361_5872_18829#PolymorphicMapType_6361| (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@5) null (WandMaskField_2865 pm_f_22@@2))) o2_22@@8 f_37@@8) (= (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@5) o2_22@@8 f_37@@8) (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| ExhaleHeap@@4) o2_22@@8 f_37@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| ExhaleHeap@@4) o2_22@@8 f_37@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_2865_19356 pm_f_22@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5812) (ExhaleHeap@@5 T@PolymorphicMapType_5812) (Mask@@16 T@PolymorphicMapType_5833) (o_46@@0 T@Ref) (f_37@@9 T@Field_2865_17651) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_2865_23356 Mask@@16 o_46@@0 f_37@@9) (= (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@6) o_46@@0 f_37@@9) (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| ExhaleHeap@@5) o_46@@0 f_37@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| ExhaleHeap@@5) o_46@@0 f_37@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5812) (ExhaleHeap@@6 T@PolymorphicMapType_5812) (Mask@@17 T@PolymorphicMapType_5833) (o_46@@1 T@Ref) (f_37@@10 T@Field_2865_17518) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_2865_17582 Mask@@17 o_46@@1 f_37@@10) (= (select (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@7) o_46@@1 f_37@@10) (select (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| ExhaleHeap@@6) o_46@@1 f_37@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| ExhaleHeap@@6) o_46@@1 f_37@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5812) (ExhaleHeap@@7 T@PolymorphicMapType_5812) (Mask@@18 T@PolymorphicMapType_5833) (o_46@@2 T@Ref) (f_37@@11 T@Field_5885_5886) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_2865_5886 Mask@@18 o_46@@2 f_37@@11) (= (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@8) o_46@@2 f_37@@11) (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| ExhaleHeap@@7) o_46@@2 f_37@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| ExhaleHeap@@7) o_46@@2 f_37@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5812) (ExhaleHeap@@8 T@PolymorphicMapType_5812) (Mask@@19 T@PolymorphicMapType_5833) (o_46@@3 T@Ref) (f_37@@12 T@Field_5872_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_2865_53 Mask@@19 o_46@@3 f_37@@12) (= (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@9) o_46@@3 f_37@@12) (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| ExhaleHeap@@8) o_46@@3 f_37@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| ExhaleHeap@@8) o_46@@3 f_37@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5812) (ExhaleHeap@@9 T@PolymorphicMapType_5812) (Mask@@20 T@PolymorphicMapType_5833) (o_46@@4 T@Ref) (f_37@@13 T@Field_9198_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_2865_1186 Mask@@20 o_46@@4 f_37@@13) (= (select (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@10) o_46@@4 f_37@@13) (select (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| ExhaleHeap@@9) o_46@@4 f_37@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| ExhaleHeap@@9) o_46@@4 f_37@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_2865_17651) ) (! (= (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_2865_17518) ) (! (= (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_5885_5886) ) (! (= (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_5872_53) ) (! (= (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_9198_1186) ) (! (= (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5833) (SummandMask1 T@PolymorphicMapType_5833) (SummandMask2 T@PolymorphicMapType_5833) (o_2@@19 T@Ref) (f_4@@19 T@Field_2865_17651) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5833_2865_21773#PolymorphicMapType_5833| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5833) (SummandMask1@@0 T@PolymorphicMapType_5833) (SummandMask2@@0 T@PolymorphicMapType_5833) (o_2@@20 T@Ref) (f_4@@20 T@Field_2865_17518) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5833_2865_17518#PolymorphicMapType_5833| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5833) (SummandMask1@@1 T@PolymorphicMapType_5833) (SummandMask2@@1 T@PolymorphicMapType_5833) (o_2@@21 T@Ref) (f_4@@21 T@Field_5885_5886) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5833_2865_5886#PolymorphicMapType_5833| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5833) (SummandMask1@@2 T@PolymorphicMapType_5833) (SummandMask2@@2 T@PolymorphicMapType_5833) (o_2@@22 T@Ref) (f_4@@22 T@Field_5872_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5833_2865_53#PolymorphicMapType_5833| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5833) (SummandMask1@@3 T@PolymorphicMapType_5833) (SummandMask2@@3 T@PolymorphicMapType_5833) (o_2@@23 T@Ref) (f_4@@23 T@Field_9198_1186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5833_2865_1186#PolymorphicMapType_5833| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5812) (o_12 T@Ref) (f_24 T@Field_2865_17518) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_5812 (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@11) (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@11) (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@11) (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@11) (store (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@11) o_12 f_24 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5812 (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@11) (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@11) (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@11) (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@11) (store (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@11) o_12 f_24 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5812) (o_12@@0 T@Ref) (f_24@@0 T@Field_2865_17651) (v@@0 T@PolymorphicMapType_6361) ) (! (succHeap Heap@@12 (PolymorphicMapType_5812 (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@12) (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@12) (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@12) (store (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@12) o_12@@0 f_24@@0 v@@0) (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5812 (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@12) (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@12) (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@12) (store (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@12) o_12@@0 f_24@@0 v@@0) (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5812) (o_12@@1 T@Ref) (f_24@@1 T@Field_9198_1186) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_5812 (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@13) (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@13) (store (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@13) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@13) (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5812 (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@13) (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@13) (store (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@13) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@13) (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5812) (o_12@@2 T@Ref) (f_24@@2 T@Field_5885_5886) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_5812 (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@14) (store (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@14) o_12@@2 f_24@@2 v@@2) (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@14) (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@14) (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5812 (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@14) (store (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@14) o_12@@2 f_24@@2 v@@2) (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@14) (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@14) (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5812) (o_12@@3 T@Ref) (f_24@@3 T@Field_5872_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_5812 (store (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@15) o_12@@3 f_24@@3 v@@3) (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@15) (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@15) (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@15) (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5812 (store (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@15) o_12@@3 f_24@@3 v@@3) (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@15) (|PolymorphicMapType_5812_2865_1186#PolymorphicMapType_5812| Heap@@15) (|PolymorphicMapType_5812_2865_17695#PolymorphicMapType_5812| Heap@@15) (|PolymorphicMapType_5812_5872_17518#PolymorphicMapType_5812| Heap@@15)))
)))
(assert (forall ((o_12@@4 T@Ref) (f_16 T@Field_5885_5886) (Heap@@16 T@PolymorphicMapType_5812) ) (!  (=> (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@16) o_12@@4 $allocated) (select (|PolymorphicMapType_5812_2737_53#PolymorphicMapType_5812| Heap@@16) (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@16) o_12@@4 f_16) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5812_2740_2741#PolymorphicMapType_5812| Heap@@16) o_12@@4 f_16))
)))
(assert (forall ((p@@1 T@Field_2865_17518) (v_1@@0 T@FrameType) (q T@Field_2865_17518) (w@@0 T@FrameType) (r T@Field_2865_17518) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5872_5872 p@@1 v_1@@0 q w@@0) (InsidePredicate_5872_5872 q w@@0 r u)) (InsidePredicate_5872_5872 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5872_5872 p@@1 v_1@@0 q w@@0) (InsidePredicate_5872_5872 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Invalid

