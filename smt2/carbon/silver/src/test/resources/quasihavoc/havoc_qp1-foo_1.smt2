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
(declare-sort T@Field_7195_53 0)
(declare-sort T@Field_7208_7209 0)
(declare-sort T@Field_13367_3211 0)
(declare-sort T@Field_4374_17900 0)
(declare-sort T@Field_4374_17767 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_7156 0)) (((PolymorphicMapType_7156 (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| (Array T@Ref T@Field_13367_3211 Real)) (|PolymorphicMapType_7156_4374_53#PolymorphicMapType_7156| (Array T@Ref T@Field_7195_53 Real)) (|PolymorphicMapType_7156_4374_7209#PolymorphicMapType_7156| (Array T@Ref T@Field_7208_7209 Real)) (|PolymorphicMapType_7156_4374_17767#PolymorphicMapType_7156| (Array T@Ref T@Field_4374_17767 Real)) (|PolymorphicMapType_7156_4374_22022#PolymorphicMapType_7156| (Array T@Ref T@Field_4374_17900 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7684 0)) (((PolymorphicMapType_7684 (|PolymorphicMapType_7684_7195_53#PolymorphicMapType_7684| (Array T@Ref T@Field_7195_53 Bool)) (|PolymorphicMapType_7684_7195_7209#PolymorphicMapType_7684| (Array T@Ref T@Field_7208_7209 Bool)) (|PolymorphicMapType_7684_7195_3211#PolymorphicMapType_7684| (Array T@Ref T@Field_13367_3211 Bool)) (|PolymorphicMapType_7684_7195_17767#PolymorphicMapType_7684| (Array T@Ref T@Field_4374_17767 Bool)) (|PolymorphicMapType_7684_7195_19078#PolymorphicMapType_7684| (Array T@Ref T@Field_4374_17900 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7135 0)) (((PolymorphicMapType_7135 (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| (Array T@Ref T@Field_7195_53 Bool)) (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| (Array T@Ref T@Field_7208_7209 T@Ref)) (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| (Array T@Ref T@Field_13367_3211 Int)) (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| (Array T@Ref T@Field_4374_17900 T@PolymorphicMapType_7684)) (|PolymorphicMapType_7135_7195_17767#PolymorphicMapType_7135| (Array T@Ref T@Field_4374_17767 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_7195_53)
(declare-fun f_7 () T@Field_13367_3211)
(declare-fun g () T@Field_13367_3211)
(declare-fun succHeap (T@PolymorphicMapType_7135 T@PolymorphicMapType_7135) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7135 T@PolymorphicMapType_7135) Bool)
(declare-fun state (T@PolymorphicMapType_7135 T@PolymorphicMapType_7156) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7156) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7684)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7135 T@PolymorphicMapType_7135 T@PolymorphicMapType_7156) Bool)
(declare-fun IsPredicateField_4374_17858 (T@Field_4374_17767) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4374 (T@Field_4374_17767) T@Field_4374_17900)
(declare-fun HasDirectPerm_4374_17831 (T@PolymorphicMapType_7156 T@Ref T@Field_4374_17767) Bool)
(declare-fun IsWandField_4374_19605 (T@Field_4374_17767) Bool)
(declare-fun WandMaskField_4374 (T@Field_4374_17767) T@Field_4374_17900)
(declare-fun dummyHeap () T@PolymorphicMapType_7135)
(declare-fun ZeroMask () T@PolymorphicMapType_7156)
(declare-fun InsidePredicate_7195_7195 (T@Field_4374_17767 T@FrameType T@Field_4374_17767 T@FrameType) Bool)
(declare-fun IsPredicateField_4374_3211 (T@Field_13367_3211) Bool)
(declare-fun IsWandField_4374_3211 (T@Field_13367_3211) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4374_23151 (T@Field_4374_17900) Bool)
(declare-fun IsWandField_4374_23167 (T@Field_4374_17900) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4374_7209 (T@Field_7208_7209) Bool)
(declare-fun IsWandField_4374_7209 (T@Field_7208_7209) Bool)
(declare-fun IsPredicateField_4374_53 (T@Field_7195_53) Bool)
(declare-fun IsWandField_4374_53 (T@Field_7195_53) Bool)
(declare-fun HasDirectPerm_4374_23605 (T@PolymorphicMapType_7156 T@Ref T@Field_4374_17900) Bool)
(declare-fun HasDirectPerm_4374_7209 (T@PolymorphicMapType_7156 T@Ref T@Field_7208_7209) Bool)
(declare-fun HasDirectPerm_4374_53 (T@PolymorphicMapType_7156 T@Ref T@Field_7195_53) Bool)
(declare-fun HasDirectPerm_4374_3211 (T@PolymorphicMapType_7156 T@Ref T@Field_13367_3211) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7156 T@PolymorphicMapType_7156 T@PolymorphicMapType_7156) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_7135) (Heap1 T@PolymorphicMapType_7135) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7135) (Mask T@PolymorphicMapType_7156) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7135) (Heap1@@0 T@PolymorphicMapType_7135) (Heap2 T@PolymorphicMapType_7135) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4374_17900) ) (!  (not (select (|PolymorphicMapType_7684_7195_19078#PolymorphicMapType_7684| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7684_7195_19078#PolymorphicMapType_7684| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4374_17767) ) (!  (not (select (|PolymorphicMapType_7684_7195_17767#PolymorphicMapType_7684| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7684_7195_17767#PolymorphicMapType_7684| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13367_3211) ) (!  (not (select (|PolymorphicMapType_7684_7195_3211#PolymorphicMapType_7684| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7684_7195_3211#PolymorphicMapType_7684| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7208_7209) ) (!  (not (select (|PolymorphicMapType_7684_7195_7209#PolymorphicMapType_7684| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7684_7195_7209#PolymorphicMapType_7684| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7195_53) ) (!  (not (select (|PolymorphicMapType_7684_7195_53#PolymorphicMapType_7684| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7684_7195_53#PolymorphicMapType_7684| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.288:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.291:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7135) (ExhaleHeap T@PolymorphicMapType_7135) (Mask@@0 T@PolymorphicMapType_7156) (pm_f_9 T@Field_4374_17767) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4374_17831 Mask@@0 null pm_f_9) (IsPredicateField_4374_17858 pm_f_9)) (= (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@0) null (PredicateMaskField_4374 pm_f_9)) (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| ExhaleHeap) null (PredicateMaskField_4374 pm_f_9)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4374_17858 pm_f_9) (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| ExhaleHeap) null (PredicateMaskField_4374 pm_f_9)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7135) (ExhaleHeap@@0 T@PolymorphicMapType_7135) (Mask@@1 T@PolymorphicMapType_7156) (pm_f_9@@0 T@Field_4374_17767) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4374_17831 Mask@@1 null pm_f_9@@0) (IsWandField_4374_19605 pm_f_9@@0)) (= (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@1) null (WandMaskField_4374 pm_f_9@@0)) (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| ExhaleHeap@@0) null (WandMaskField_4374 pm_f_9@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_4374_19605 pm_f_9@@0) (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| ExhaleHeap@@0) null (WandMaskField_4374 pm_f_9@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7135) (ExhaleHeap@@1 T@PolymorphicMapType_7135) (Mask@@2 T@PolymorphicMapType_7156) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| Heap@@2) o_27 $allocated) (select (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| ExhaleHeap@@1) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| ExhaleHeap@@1) o_27 $allocated))
)))
(assert (forall ((p T@Field_4374_17767) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7195_7195 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7195_7195 p v_1 p w))
)))
(assert  (not (IsPredicateField_4374_3211 f_7)))
(assert  (not (IsWandField_4374_3211 f_7)))
(assert  (not (IsPredicateField_4374_3211 g)))
(assert  (not (IsWandField_4374_3211 g)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7135) (ExhaleHeap@@2 T@PolymorphicMapType_7135) (Mask@@3 T@PolymorphicMapType_7156) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_7156) (o_2@@4 T@Ref) (f_4@@4 T@Field_4374_17900) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_7156_4374_22022#PolymorphicMapType_7156| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_4374_23151 f_4@@4))) (not (IsWandField_4374_23167 f_4@@4))) (<= (select (|PolymorphicMapType_7156_4374_22022#PolymorphicMapType_7156| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_7156_4374_22022#PolymorphicMapType_7156| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_7156) (o_2@@5 T@Ref) (f_4@@5 T@Field_4374_17767) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_7156_4374_17767#PolymorphicMapType_7156| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_4374_17858 f_4@@5))) (not (IsWandField_4374_19605 f_4@@5))) (<= (select (|PolymorphicMapType_7156_4374_17767#PolymorphicMapType_7156| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_7156_4374_17767#PolymorphicMapType_7156| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_7156) (o_2@@6 T@Ref) (f_4@@6 T@Field_7208_7209) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_7156_4374_7209#PolymorphicMapType_7156| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4374_7209 f_4@@6))) (not (IsWandField_4374_7209 f_4@@6))) (<= (select (|PolymorphicMapType_7156_4374_7209#PolymorphicMapType_7156| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_7156_4374_7209#PolymorphicMapType_7156| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_7156) (o_2@@7 T@Ref) (f_4@@7 T@Field_7195_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_7156_4374_53#PolymorphicMapType_7156| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4374_53 f_4@@7))) (not (IsWandField_4374_53 f_4@@7))) (<= (select (|PolymorphicMapType_7156_4374_53#PolymorphicMapType_7156| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_7156_4374_53#PolymorphicMapType_7156| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_7156) (o_2@@8 T@Ref) (f_4@@8 T@Field_13367_3211) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4374_3211 f_4@@8))) (not (IsWandField_4374_3211 f_4@@8))) (<= (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_7156) (o_2@@9 T@Ref) (f_4@@9 T@Field_4374_17900) ) (! (= (HasDirectPerm_4374_23605 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_7156_4374_22022#PolymorphicMapType_7156| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4374_23605 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7156) (o_2@@10 T@Ref) (f_4@@10 T@Field_4374_17767) ) (! (= (HasDirectPerm_4374_17831 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_7156_4374_17767#PolymorphicMapType_7156| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4374_17831 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7156) (o_2@@11 T@Ref) (f_4@@11 T@Field_7208_7209) ) (! (= (HasDirectPerm_4374_7209 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_7156_4374_7209#PolymorphicMapType_7156| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4374_7209 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7156) (o_2@@12 T@Ref) (f_4@@12 T@Field_7195_53) ) (! (= (HasDirectPerm_4374_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_7156_4374_53#PolymorphicMapType_7156| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4374_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7156) (o_2@@13 T@Ref) (f_4@@13 T@Field_13367_3211) ) (! (= (HasDirectPerm_4374_3211 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4374_3211 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7135) (ExhaleHeap@@3 T@PolymorphicMapType_7135) (Mask@@14 T@PolymorphicMapType_7156) (pm_f_9@@1 T@Field_4374_17767) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_4374_17831 Mask@@14 null pm_f_9@@1) (IsPredicateField_4374_17858 pm_f_9@@1)) (and (and (and (and (forall ((o2_9 T@Ref) (f_24 T@Field_7195_53) ) (!  (=> (select (|PolymorphicMapType_7684_7195_53#PolymorphicMapType_7684| (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@4) null (PredicateMaskField_4374 pm_f_9@@1))) o2_9 f_24) (= (select (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| Heap@@4) o2_9 f_24) (select (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| ExhaleHeap@@3) o2_9 f_24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| ExhaleHeap@@3) o2_9 f_24))
)) (forall ((o2_9@@0 T@Ref) (f_24@@0 T@Field_7208_7209) ) (!  (=> (select (|PolymorphicMapType_7684_7195_7209#PolymorphicMapType_7684| (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@4) null (PredicateMaskField_4374 pm_f_9@@1))) o2_9@@0 f_24@@0) (= (select (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| Heap@@4) o2_9@@0 f_24@@0) (select (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| ExhaleHeap@@3) o2_9@@0 f_24@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| ExhaleHeap@@3) o2_9@@0 f_24@@0))
))) (forall ((o2_9@@1 T@Ref) (f_24@@1 T@Field_13367_3211) ) (!  (=> (select (|PolymorphicMapType_7684_7195_3211#PolymorphicMapType_7684| (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@4) null (PredicateMaskField_4374 pm_f_9@@1))) o2_9@@1 f_24@@1) (= (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| Heap@@4) o2_9@@1 f_24@@1) (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| ExhaleHeap@@3) o2_9@@1 f_24@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| ExhaleHeap@@3) o2_9@@1 f_24@@1))
))) (forall ((o2_9@@2 T@Ref) (f_24@@2 T@Field_4374_17767) ) (!  (=> (select (|PolymorphicMapType_7684_7195_17767#PolymorphicMapType_7684| (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@4) null (PredicateMaskField_4374 pm_f_9@@1))) o2_9@@2 f_24@@2) (= (select (|PolymorphicMapType_7135_7195_17767#PolymorphicMapType_7135| Heap@@4) o2_9@@2 f_24@@2) (select (|PolymorphicMapType_7135_7195_17767#PolymorphicMapType_7135| ExhaleHeap@@3) o2_9@@2 f_24@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7135_7195_17767#PolymorphicMapType_7135| ExhaleHeap@@3) o2_9@@2 f_24@@2))
))) (forall ((o2_9@@3 T@Ref) (f_24@@3 T@Field_4374_17900) ) (!  (=> (select (|PolymorphicMapType_7684_7195_19078#PolymorphicMapType_7684| (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@4) null (PredicateMaskField_4374 pm_f_9@@1))) o2_9@@3 f_24@@3) (= (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@4) o2_9@@3 f_24@@3) (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| ExhaleHeap@@3) o2_9@@3 f_24@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| ExhaleHeap@@3) o2_9@@3 f_24@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_4374_17858 pm_f_9@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7135) (ExhaleHeap@@4 T@PolymorphicMapType_7135) (Mask@@15 T@PolymorphicMapType_7156) (pm_f_9@@2 T@Field_4374_17767) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_4374_17831 Mask@@15 null pm_f_9@@2) (IsWandField_4374_19605 pm_f_9@@2)) (and (and (and (and (forall ((o2_9@@4 T@Ref) (f_24@@4 T@Field_7195_53) ) (!  (=> (select (|PolymorphicMapType_7684_7195_53#PolymorphicMapType_7684| (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@5) null (WandMaskField_4374 pm_f_9@@2))) o2_9@@4 f_24@@4) (= (select (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| Heap@@5) o2_9@@4 f_24@@4) (select (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| ExhaleHeap@@4) o2_9@@4 f_24@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| ExhaleHeap@@4) o2_9@@4 f_24@@4))
)) (forall ((o2_9@@5 T@Ref) (f_24@@5 T@Field_7208_7209) ) (!  (=> (select (|PolymorphicMapType_7684_7195_7209#PolymorphicMapType_7684| (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@5) null (WandMaskField_4374 pm_f_9@@2))) o2_9@@5 f_24@@5) (= (select (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| Heap@@5) o2_9@@5 f_24@@5) (select (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| ExhaleHeap@@4) o2_9@@5 f_24@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| ExhaleHeap@@4) o2_9@@5 f_24@@5))
))) (forall ((o2_9@@6 T@Ref) (f_24@@6 T@Field_13367_3211) ) (!  (=> (select (|PolymorphicMapType_7684_7195_3211#PolymorphicMapType_7684| (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@5) null (WandMaskField_4374 pm_f_9@@2))) o2_9@@6 f_24@@6) (= (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| Heap@@5) o2_9@@6 f_24@@6) (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| ExhaleHeap@@4) o2_9@@6 f_24@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| ExhaleHeap@@4) o2_9@@6 f_24@@6))
))) (forall ((o2_9@@7 T@Ref) (f_24@@7 T@Field_4374_17767) ) (!  (=> (select (|PolymorphicMapType_7684_7195_17767#PolymorphicMapType_7684| (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@5) null (WandMaskField_4374 pm_f_9@@2))) o2_9@@7 f_24@@7) (= (select (|PolymorphicMapType_7135_7195_17767#PolymorphicMapType_7135| Heap@@5) o2_9@@7 f_24@@7) (select (|PolymorphicMapType_7135_7195_17767#PolymorphicMapType_7135| ExhaleHeap@@4) o2_9@@7 f_24@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7135_7195_17767#PolymorphicMapType_7135| ExhaleHeap@@4) o2_9@@7 f_24@@7))
))) (forall ((o2_9@@8 T@Ref) (f_24@@8 T@Field_4374_17900) ) (!  (=> (select (|PolymorphicMapType_7684_7195_19078#PolymorphicMapType_7684| (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@5) null (WandMaskField_4374 pm_f_9@@2))) o2_9@@8 f_24@@8) (= (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@5) o2_9@@8 f_24@@8) (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| ExhaleHeap@@4) o2_9@@8 f_24@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| ExhaleHeap@@4) o2_9@@8 f_24@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_4374_19605 pm_f_9@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7135) (ExhaleHeap@@5 T@PolymorphicMapType_7135) (Mask@@16 T@PolymorphicMapType_7156) (o_27@@0 T@Ref) (f_24@@9 T@Field_4374_17900) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_4374_23605 Mask@@16 o_27@@0 f_24@@9) (= (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@6) o_27@@0 f_24@@9) (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| ExhaleHeap@@5) o_27@@0 f_24@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| ExhaleHeap@@5) o_27@@0 f_24@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7135) (ExhaleHeap@@6 T@PolymorphicMapType_7135) (Mask@@17 T@PolymorphicMapType_7156) (o_27@@1 T@Ref) (f_24@@10 T@Field_4374_17767) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_4374_17831 Mask@@17 o_27@@1 f_24@@10) (= (select (|PolymorphicMapType_7135_7195_17767#PolymorphicMapType_7135| Heap@@7) o_27@@1 f_24@@10) (select (|PolymorphicMapType_7135_7195_17767#PolymorphicMapType_7135| ExhaleHeap@@6) o_27@@1 f_24@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_7135_7195_17767#PolymorphicMapType_7135| ExhaleHeap@@6) o_27@@1 f_24@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7135) (ExhaleHeap@@7 T@PolymorphicMapType_7135) (Mask@@18 T@PolymorphicMapType_7156) (o_27@@2 T@Ref) (f_24@@11 T@Field_7208_7209) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_4374_7209 Mask@@18 o_27@@2 f_24@@11) (= (select (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| Heap@@8) o_27@@2 f_24@@11) (select (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| ExhaleHeap@@7) o_27@@2 f_24@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| ExhaleHeap@@7) o_27@@2 f_24@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7135) (ExhaleHeap@@8 T@PolymorphicMapType_7135) (Mask@@19 T@PolymorphicMapType_7156) (o_27@@3 T@Ref) (f_24@@12 T@Field_7195_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_4374_53 Mask@@19 o_27@@3 f_24@@12) (= (select (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| Heap@@9) o_27@@3 f_24@@12) (select (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| ExhaleHeap@@8) o_27@@3 f_24@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| ExhaleHeap@@8) o_27@@3 f_24@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7135) (ExhaleHeap@@9 T@PolymorphicMapType_7135) (Mask@@20 T@PolymorphicMapType_7156) (o_27@@4 T@Ref) (f_24@@13 T@Field_13367_3211) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_4374_3211 Mask@@20 o_27@@4 f_24@@13) (= (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| Heap@@10) o_27@@4 f_24@@13) (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| ExhaleHeap@@9) o_27@@4 f_24@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| ExhaleHeap@@9) o_27@@4 f_24@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4374_17900) ) (! (= (select (|PolymorphicMapType_7156_4374_22022#PolymorphicMapType_7156| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7156_4374_22022#PolymorphicMapType_7156| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_4374_17767) ) (! (= (select (|PolymorphicMapType_7156_4374_17767#PolymorphicMapType_7156| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7156_4374_17767#PolymorphicMapType_7156| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_7208_7209) ) (! (= (select (|PolymorphicMapType_7156_4374_7209#PolymorphicMapType_7156| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7156_4374_7209#PolymorphicMapType_7156| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_7195_53) ) (! (= (select (|PolymorphicMapType_7156_4374_53#PolymorphicMapType_7156| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7156_4374_53#PolymorphicMapType_7156| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_13367_3211) ) (! (= (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7156) (SummandMask1 T@PolymorphicMapType_7156) (SummandMask2 T@PolymorphicMapType_7156) (o_2@@19 T@Ref) (f_4@@19 T@Field_4374_17900) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7156_4374_22022#PolymorphicMapType_7156| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_7156_4374_22022#PolymorphicMapType_7156| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_7156_4374_22022#PolymorphicMapType_7156| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7156_4374_22022#PolymorphicMapType_7156| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7156_4374_22022#PolymorphicMapType_7156| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7156_4374_22022#PolymorphicMapType_7156| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7156) (SummandMask1@@0 T@PolymorphicMapType_7156) (SummandMask2@@0 T@PolymorphicMapType_7156) (o_2@@20 T@Ref) (f_4@@20 T@Field_4374_17767) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7156_4374_17767#PolymorphicMapType_7156| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_7156_4374_17767#PolymorphicMapType_7156| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_7156_4374_17767#PolymorphicMapType_7156| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7156_4374_17767#PolymorphicMapType_7156| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7156_4374_17767#PolymorphicMapType_7156| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7156_4374_17767#PolymorphicMapType_7156| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7156) (SummandMask1@@1 T@PolymorphicMapType_7156) (SummandMask2@@1 T@PolymorphicMapType_7156) (o_2@@21 T@Ref) (f_4@@21 T@Field_7208_7209) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7156_4374_7209#PolymorphicMapType_7156| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_7156_4374_7209#PolymorphicMapType_7156| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_7156_4374_7209#PolymorphicMapType_7156| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7156_4374_7209#PolymorphicMapType_7156| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7156_4374_7209#PolymorphicMapType_7156| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7156_4374_7209#PolymorphicMapType_7156| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7156) (SummandMask1@@2 T@PolymorphicMapType_7156) (SummandMask2@@2 T@PolymorphicMapType_7156) (o_2@@22 T@Ref) (f_4@@22 T@Field_7195_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7156_4374_53#PolymorphicMapType_7156| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_7156_4374_53#PolymorphicMapType_7156| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_7156_4374_53#PolymorphicMapType_7156| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7156_4374_53#PolymorphicMapType_7156| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7156_4374_53#PolymorphicMapType_7156| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7156_4374_53#PolymorphicMapType_7156| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7156) (SummandMask1@@3 T@PolymorphicMapType_7156) (SummandMask2@@3 T@PolymorphicMapType_7156) (o_2@@23 T@Ref) (f_4@@23 T@Field_13367_3211) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7135) (o_20 T@Ref) (f_31 T@Field_4374_17767) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_7135 (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| Heap@@11) (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| Heap@@11) (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| Heap@@11) (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@11) (store (|PolymorphicMapType_7135_7195_17767#PolymorphicMapType_7135| Heap@@11) o_20 f_31 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7135 (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| Heap@@11) (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| Heap@@11) (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| Heap@@11) (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@11) (store (|PolymorphicMapType_7135_7195_17767#PolymorphicMapType_7135| Heap@@11) o_20 f_31 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7135) (o_20@@0 T@Ref) (f_31@@0 T@Field_4374_17900) (v@@0 T@PolymorphicMapType_7684) ) (! (succHeap Heap@@12 (PolymorphicMapType_7135 (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| Heap@@12) (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| Heap@@12) (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| Heap@@12) (store (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@12) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_7135_7195_17767#PolymorphicMapType_7135| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7135 (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| Heap@@12) (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| Heap@@12) (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| Heap@@12) (store (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@12) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_7135_7195_17767#PolymorphicMapType_7135| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7135) (o_20@@1 T@Ref) (f_31@@1 T@Field_13367_3211) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_7135 (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| Heap@@13) (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| Heap@@13) (store (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| Heap@@13) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@13) (|PolymorphicMapType_7135_7195_17767#PolymorphicMapType_7135| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7135 (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| Heap@@13) (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| Heap@@13) (store (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| Heap@@13) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@13) (|PolymorphicMapType_7135_7195_17767#PolymorphicMapType_7135| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7135) (o_20@@2 T@Ref) (f_31@@2 T@Field_7208_7209) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_7135 (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| Heap@@14) (store (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| Heap@@14) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| Heap@@14) (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@14) (|PolymorphicMapType_7135_7195_17767#PolymorphicMapType_7135| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7135 (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| Heap@@14) (store (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| Heap@@14) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| Heap@@14) (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@14) (|PolymorphicMapType_7135_7195_17767#PolymorphicMapType_7135| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7135) (o_20@@3 T@Ref) (f_31@@3 T@Field_7195_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_7135 (store (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| Heap@@15) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| Heap@@15) (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| Heap@@15) (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@15) (|PolymorphicMapType_7135_7195_17767#PolymorphicMapType_7135| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7135 (store (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| Heap@@15) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| Heap@@15) (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| Heap@@15) (|PolymorphicMapType_7135_4374_17944#PolymorphicMapType_7135| Heap@@15) (|PolymorphicMapType_7135_7195_17767#PolymorphicMapType_7135| Heap@@15)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.286:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.287:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_20@@4 T@Ref) (f_17 T@Field_7208_7209) (Heap@@16 T@PolymorphicMapType_7135) ) (!  (=> (select (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| Heap@@16) o_20@@4 $allocated) (select (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| Heap@@16) (select (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| Heap@@16) o_20@@4 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7135_4084_4085#PolymorphicMapType_7135| Heap@@16) o_20@@4 f_17))
)))
(assert (forall ((p@@1 T@Field_4374_17767) (v_1@@0 T@FrameType) (q T@Field_4374_17767) (w@@0 T@FrameType) (r T@Field_4374_17767) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7195_7195 p@@1 v_1@@0 q w@@0) (InsidePredicate_7195_7195 q w@@0 r u)) (InsidePredicate_7195_7195 p@@1 v_1@@0 r u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7195_7195 p@@1 v_1@@0 q w@@0) (InsidePredicate_7195_7195 q w@@0 r u))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.292:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun s_2 () (Array T@Ref Bool))
(declare-fun a_5_1 () T@Ref)
(declare-fun x () T@Ref)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_7135)
(declare-fun a_5 () T@Ref)
(declare-fun Mask@3 () T@PolymorphicMapType_7156)
(declare-fun Mask@2 () T@PolymorphicMapType_7156)
(declare-fun Mask@1 () T@PolymorphicMapType_7156)
(declare-fun perm_temp_quasihavoc_@0 () Real)
(declare-fun Heap@@17 () T@PolymorphicMapType_7135)
(declare-fun y () T@Ref)
(declare-fun z () T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_7156)
(declare-fun Mask@0 () T@PolymorphicMapType_7156)
(declare-fun a_4 () T@Ref)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(set-info :boogie-vc-id foo_1)
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
 (=> (= (ControlFlow 0 0) 33) (let ((anon15_correct true))
(let ((anon24_Else_correct  (=> (and (not (and (select s_2 a_5_1) (not (= a_5_1 x)))) (= (ControlFlow 0 14) 11)) anon15_correct)))
(let ((anon24_Then_correct  (=> (and (select s_2 a_5_1) (not (= a_5_1 x))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (= (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| ExhaleHeap@0) a_5_1 f_7) 3)) (=> (= (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| ExhaleHeap@0) a_5_1 f_7) 3) (=> (= (ControlFlow 0 12) 11) anon15_correct))))))
(let ((anon11_correct true))
(let ((anon22_Else_correct  (=> (and (not (and (select s_2 a_5) (not (= a_5 x)))) (= (ControlFlow 0 10) 7)) anon11_correct)))
(let ((anon22_Then_correct  (=> (and (select s_2 a_5) (not (= a_5 x))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_4374_3211 Mask@3 a_5 f_7)) (=> (HasDirectPerm_4374_3211 Mask@3 a_5 f_7) (=> (= (ControlFlow 0 8) 7) anon11_correct))))))
(let ((anon23_Else_correct true))
(let ((anon8_correct  (=> (= Mask@2 (PolymorphicMapType_7156 (store (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| Mask@1) x f_7 (- (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| Mask@1) x f_7) perm_temp_quasihavoc_@0)) (|PolymorphicMapType_7156_4374_53#PolymorphicMapType_7156| Mask@1) (|PolymorphicMapType_7156_4374_7209#PolymorphicMapType_7156| Mask@1) (|PolymorphicMapType_7156_4374_17767#PolymorphicMapType_7156| Mask@1) (|PolymorphicMapType_7156_4374_22022#PolymorphicMapType_7156| Mask@1))) (=> (and (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 Mask@2) (state ExhaleHeap@0 Mask@2)) (and (=> (= (ControlFlow 0 15) (- 0 22)) (>= perm_temp_quasihavoc_@0 NoPerm)) (=> (>= perm_temp_quasihavoc_@0 NoPerm) (=> (=> (> perm_temp_quasihavoc_@0 NoPerm) (not (= x null))) (=> (and (and (= Mask@3 (PolymorphicMapType_7156 (store (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| Mask@2) x f_7 (+ (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| Mask@2) x f_7) perm_temp_quasihavoc_@0)) (|PolymorphicMapType_7156_4374_53#PolymorphicMapType_7156| Mask@2) (|PolymorphicMapType_7156_4374_7209#PolymorphicMapType_7156| Mask@2) (|PolymorphicMapType_7156_4374_17767#PolymorphicMapType_7156| Mask@2) (|PolymorphicMapType_7156_4374_22022#PolymorphicMapType_7156| Mask@2))) (state ExhaleHeap@0 Mask@3)) (and (state ExhaleHeap@0 Mask@3) (state ExhaleHeap@0 Mask@3))) (and (=> (= (ControlFlow 0 15) (- 0 21)) (HasDirectPerm_4374_3211 Mask@3 y f_7)) (=> (HasDirectPerm_4374_3211 Mask@3 y f_7) (and (=> (= (ControlFlow 0 15) (- 0 20)) (= (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| ExhaleHeap@0) y f_7) 3)) (=> (= (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| ExhaleHeap@0) y f_7) 3) (=> (state ExhaleHeap@0 Mask@3) (and (=> (= (ControlFlow 0 15) (- 0 19)) (HasDirectPerm_4374_3211 Mask@3 z f_7)) (=> (HasDirectPerm_4374_3211 Mask@3 z f_7) (and (=> (= (ControlFlow 0 15) (- 0 18)) (= (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| ExhaleHeap@0) z f_7) 3)) (=> (= (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| ExhaleHeap@0) z f_7) 3) (=> (state ExhaleHeap@0 Mask@3) (and (=> (= (ControlFlow 0 15) (- 0 17)) (HasDirectPerm_4374_3211 Mask@3 x g)) (=> (HasDirectPerm_4374_3211 Mask@3 x g) (and (=> (= (ControlFlow 0 15) (- 0 16)) (= (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| ExhaleHeap@0) x g) 3)) (=> (= (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| ExhaleHeap@0) x g) 3) (=> (state ExhaleHeap@0 Mask@3) (and (and (and (and (=> (= (ControlFlow 0 15) 6) anon23_Else_correct) (=> (= (ControlFlow 0 15) 12) anon24_Then_correct)) (=> (= (ControlFlow 0 15) 14) anon24_Else_correct)) (=> (= (ControlFlow 0 15) 8) anon22_Then_correct)) (=> (= (ControlFlow 0 15) 10) anon22_Else_correct)))))))))))))))))))))))))
(let ((anon20_Else_correct  (=> (and (= perm_temp_quasihavoc_@0 NoPerm) (= (ControlFlow 0 25) 15)) anon8_correct)))
(let ((anon20_Then_correct  (=> (not (= perm_temp_quasihavoc_@0 NoPerm)) (and (=> (= (ControlFlow 0 23) (- 0 24)) (<= perm_temp_quasihavoc_@0 (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| Mask@1) x f_7))) (=> (<= perm_temp_quasihavoc_@0 (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| Mask@1) x f_7)) (=> (= (ControlFlow 0 23) 15) anon8_correct))))))
(let ((anon18_Else_correct  (=> (forall ((a_3_1 T@Ref) ) (!  (=> (select s_2 a_3_1) (= (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| Heap@@17) a_3_1 f_7) 3))
 :qid |stdinbpl.471:20|
 :skolemid |88|
 :pattern ( (select s_2 a_3_1))
)) (=> (and (state Heap@@17 QPMask@0) (select s_2 x)) (=> (and (and (state Heap@@17 QPMask@0) (not (= y null))) (and (= Mask@0 (PolymorphicMapType_7156 (store (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| QPMask@0) y f_7 (+ (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| QPMask@0) y f_7) FullPerm)) (|PolymorphicMapType_7156_4374_53#PolymorphicMapType_7156| QPMask@0) (|PolymorphicMapType_7156_4374_7209#PolymorphicMapType_7156| QPMask@0) (|PolymorphicMapType_7156_4374_17767#PolymorphicMapType_7156| QPMask@0) (|PolymorphicMapType_7156_4374_22022#PolymorphicMapType_7156| QPMask@0))) (state Heap@@17 Mask@0))) (and (=> (= (ControlFlow 0 26) (- 0 29)) (HasDirectPerm_4374_3211 Mask@0 y f_7)) (=> (HasDirectPerm_4374_3211 Mask@0 y f_7) (=> (and (and (and (= (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| Heap@@17) y f_7) 3) (state Heap@@17 Mask@0)) (and (select s_2 z) (not (= z x)))) (and (and (state Heap@@17 Mask@0) (not (= x null))) (and (= Mask@1 (PolymorphicMapType_7156 (store (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| Mask@0) x g (+ (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| Mask@0) x g) FullPerm)) (|PolymorphicMapType_7156_4374_53#PolymorphicMapType_7156| Mask@0) (|PolymorphicMapType_7156_4374_7209#PolymorphicMapType_7156| Mask@0) (|PolymorphicMapType_7156_4374_17767#PolymorphicMapType_7156| Mask@0) (|PolymorphicMapType_7156_4374_22022#PolymorphicMapType_7156| Mask@0))) (state Heap@@17 Mask@1)))) (and (=> (= (ControlFlow 0 26) (- 0 28)) (HasDirectPerm_4374_3211 Mask@1 x g)) (=> (HasDirectPerm_4374_3211 Mask@1 x g) (=> (and (and (= (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| Heap@@17) x g) 3) (state Heap@@17 Mask@1)) (and (= perm_temp_quasihavoc_@0 (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| Mask@1) x f_7)) (state Heap@@17 Mask@1))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (>= perm_temp_quasihavoc_@0 NoPerm)) (=> (>= perm_temp_quasihavoc_@0 NoPerm) (and (=> (= (ControlFlow 0 26) 23) anon20_Then_correct) (=> (= (ControlFlow 0 26) 25) anon20_Else_correct)))))))))))))))
(let ((anon5_correct true))
(let ((anon19_Else_correct  (=> (and (not (select s_2 a_4)) (= (ControlFlow 0 5) 2)) anon5_correct)))
(let ((anon19_Then_correct  (=> (select s_2 a_4) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_4374_3211 QPMask@0 a_4 f_7)) (=> (HasDirectPerm_4374_3211 QPMask@0 a_4 f_7) (=> (= (ControlFlow 0 3) 2) anon5_correct))))))
(let ((anon17_Else_correct  (and (=> (= (ControlFlow 0 30) (- 0 31)) (forall ((a_1_1 T@Ref) (a_1_2 T@Ref) ) (!  (=> (and (and (and (and (not (= a_1_1 a_1_2)) (select s_2 a_1_1)) (select s_2 a_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= a_1_1 a_1_2)))
 :qid |stdinbpl.430:15|
 :skolemid |82|
))) (=> (forall ((a_1_1@@0 T@Ref) (a_1_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= a_1_1@@0 a_1_2@@0)) (select s_2 a_1_1@@0)) (select s_2 a_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= a_1_1@@0 a_1_2@@0)))
 :qid |stdinbpl.430:15|
 :skolemid |82|
)) (=> (and (and (forall ((a_1_1@@1 T@Ref) ) (!  (=> (and (select s_2 a_1_1@@1) (< NoPerm FullPerm)) (and (qpRange1 a_1_1@@1) (= (invRecv1 a_1_1@@1) a_1_1@@1)))
 :qid |stdinbpl.436:22|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| Heap@@17) a_1_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| QPMask@0) a_1_1@@1 f_7))
 :pattern ( (select s_2 a_1_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select s_2 (invRecv1 o_4)) (< NoPerm FullPerm)) (qpRange1 o_4)) (= (invRecv1 o_4) o_4))
 :qid |stdinbpl.440:22|
 :skolemid |84|
 :pattern ( (invRecv1 o_4))
))) (and (forall ((a_1_1@@2 T@Ref) ) (!  (=> (select s_2 a_1_1@@2) (not (= a_1_1@@2 null)))
 :qid |stdinbpl.446:22|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_7135_4374_3211#PolymorphicMapType_7135| Heap@@17) a_1_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| QPMask@0) a_1_1@@2 f_7))
 :pattern ( (select s_2 a_1_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select s_2 (invRecv1 o_4@@0)) (< NoPerm FullPerm)) (qpRange1 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| QPMask@0) o_4@@0 f_7) (+ (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| ZeroMask) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (select s_2 (invRecv1 o_4@@0)) (< NoPerm FullPerm)) (qpRange1 o_4@@0))) (= (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| QPMask@0) o_4@@0 f_7) (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| ZeroMask) o_4@@0 f_7))))
 :qid |stdinbpl.452:22|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| QPMask@0) o_4@@0 f_7))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_7195_53) ) (!  (=> true (= (select (|PolymorphicMapType_7156_4374_53#PolymorphicMapType_7156| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_7156_4374_53#PolymorphicMapType_7156| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.456:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_7156_4374_53#PolymorphicMapType_7156| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_7156_4374_53#PolymorphicMapType_7156| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_7208_7209) ) (!  (=> true (= (select (|PolymorphicMapType_7156_4374_7209#PolymorphicMapType_7156| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_7156_4374_7209#PolymorphicMapType_7156| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.456:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_7156_4374_7209#PolymorphicMapType_7156| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_7156_4374_7209#PolymorphicMapType_7156| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_13367_3211) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.456:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_7156_4374_3211#PolymorphicMapType_7156| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_4374_17767) ) (!  (=> true (= (select (|PolymorphicMapType_7156_4374_17767#PolymorphicMapType_7156| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_7156_4374_17767#PolymorphicMapType_7156| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.456:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_7156_4374_17767#PolymorphicMapType_7156| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_7156_4374_17767#PolymorphicMapType_7156| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_4374_17900) ) (!  (=> true (= (select (|PolymorphicMapType_7156_4374_22022#PolymorphicMapType_7156| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_7156_4374_22022#PolymorphicMapType_7156| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.456:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_7156_4374_22022#PolymorphicMapType_7156| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_7156_4374_22022#PolymorphicMapType_7156| QPMask@0) o_4@@5 f_5@@3))
))) (state Heap@@17 QPMask@0)) (and (and (=> (= (ControlFlow 0 30) 26) anon18_Else_correct) (=> (= (ControlFlow 0 30) 3) anon19_Then_correct)) (=> (= (ControlFlow 0 30) 5) anon19_Else_correct))))))))
(let ((anon17_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| Heap@@17) x $allocated)) (and (select (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| Heap@@17) y $allocated) (select (|PolymorphicMapType_7135_4081_53#PolymorphicMapType_7135| Heap@@17) z $allocated))) (and (=> (= (ControlFlow 0 32) 1) anon17_Then_correct) (=> (= (ControlFlow 0 32) 30) anon17_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 33) 32) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
