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
(declare-sort T@Field_10620_53 0)
(declare-sort T@Field_10633_10634 0)
(declare-sort T@Field_16816_3355 0)
(declare-sort T@Field_10620_29534 0)
(declare-sort T@Field_10620_29401 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_10581 0)) (((PolymorphicMapType_10581 (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| (Array T@Ref T@Field_16816_3355 Real)) (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| (Array T@Ref T@Field_10620_53 Real)) (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| (Array T@Ref T@Field_10633_10634 Real)) (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| (Array T@Ref T@Field_10620_29401 Real)) (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| (Array T@Ref T@Field_10620_29534 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11109 0)) (((PolymorphicMapType_11109 (|PolymorphicMapType_11109_10620_53#PolymorphicMapType_11109| (Array T@Ref T@Field_10620_53 Bool)) (|PolymorphicMapType_11109_10620_10634#PolymorphicMapType_11109| (Array T@Ref T@Field_10633_10634 Bool)) (|PolymorphicMapType_11109_10620_3355#PolymorphicMapType_11109| (Array T@Ref T@Field_16816_3355 Bool)) (|PolymorphicMapType_11109_10620_29401#PolymorphicMapType_11109| (Array T@Ref T@Field_10620_29401 Bool)) (|PolymorphicMapType_11109_10620_30712#PolymorphicMapType_11109| (Array T@Ref T@Field_10620_29534 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10560 0)) (((PolymorphicMapType_10560 (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| (Array T@Ref T@Field_10620_53 Bool)) (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| (Array T@Ref T@Field_10633_10634 T@Ref)) (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| (Array T@Ref T@Field_16816_3355 Int)) (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| (Array T@Ref T@Field_10620_29534 T@PolymorphicMapType_11109)) (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| (Array T@Ref T@Field_10620_29401 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_10620_53)
(declare-fun f_7 () T@Field_16816_3355)
(declare-fun succHeap (T@PolymorphicMapType_10560 T@PolymorphicMapType_10560) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10560 T@PolymorphicMapType_10560) Bool)
(declare-fun state (T@PolymorphicMapType_10560 T@PolymorphicMapType_10581) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10581) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11109)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10560 T@PolymorphicMapType_10560 T@PolymorphicMapType_10581) Bool)
(declare-fun IsPredicateField_10620_29492 (T@Field_10620_29401) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_10620 (T@Field_10620_29401) T@Field_10620_29534)
(declare-fun HasDirectPerm_10620_29465 (T@PolymorphicMapType_10581 T@Ref T@Field_10620_29401) Bool)
(declare-fun IsWandField_10620_31239 (T@Field_10620_29401) Bool)
(declare-fun WandMaskField_10620 (T@Field_10620_29401) T@Field_10620_29534)
(declare-fun dummyHeap () T@PolymorphicMapType_10560)
(declare-fun ZeroMask () T@PolymorphicMapType_10581)
(declare-fun InsidePredicate_10620_10620 (T@Field_10620_29401 T@FrameType T@Field_10620_29401 T@FrameType) Bool)
(declare-fun IsPredicateField_6308_3355 (T@Field_16816_3355) Bool)
(declare-fun IsWandField_6308_3355 (T@Field_16816_3355) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6308_34785 (T@Field_10620_29534) Bool)
(declare-fun IsWandField_6308_34801 (T@Field_10620_29534) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6308_10634 (T@Field_10633_10634) Bool)
(declare-fun IsWandField_6308_10634 (T@Field_10633_10634) Bool)
(declare-fun IsPredicateField_6308_53 (T@Field_10620_53) Bool)
(declare-fun IsWandField_6308_53 (T@Field_10620_53) Bool)
(declare-fun HasDirectPerm_10620_35239 (T@PolymorphicMapType_10581 T@Ref T@Field_10620_29534) Bool)
(declare-fun HasDirectPerm_10620_3355 (T@PolymorphicMapType_10581 T@Ref T@Field_16816_3355) Bool)
(declare-fun HasDirectPerm_10620_10634 (T@PolymorphicMapType_10581 T@Ref T@Field_10633_10634) Bool)
(declare-fun HasDirectPerm_10620_53 (T@PolymorphicMapType_10581 T@Ref T@Field_10620_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10581 T@PolymorphicMapType_10581 T@PolymorphicMapType_10581) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_10560) (Heap1 T@PolymorphicMapType_10560) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10560) (Mask T@PolymorphicMapType_10581) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10560) (Heap1@@0 T@PolymorphicMapType_10560) (Heap2 T@PolymorphicMapType_10560) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_10620_29534) ) (!  (not (select (|PolymorphicMapType_11109_10620_30712#PolymorphicMapType_11109| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11109_10620_30712#PolymorphicMapType_11109| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10620_29401) ) (!  (not (select (|PolymorphicMapType_11109_10620_29401#PolymorphicMapType_11109| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11109_10620_29401#PolymorphicMapType_11109| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_16816_3355) ) (!  (not (select (|PolymorphicMapType_11109_10620_3355#PolymorphicMapType_11109| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11109_10620_3355#PolymorphicMapType_11109| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10633_10634) ) (!  (not (select (|PolymorphicMapType_11109_10620_10634#PolymorphicMapType_11109| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11109_10620_10634#PolymorphicMapType_11109| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10620_53) ) (!  (not (select (|PolymorphicMapType_11109_10620_53#PolymorphicMapType_11109| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11109_10620_53#PolymorphicMapType_11109| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.306:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.309:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10560) (ExhaleHeap T@PolymorphicMapType_10560) (Mask@@0 T@PolymorphicMapType_10581) (pm_f_34 T@Field_10620_29401) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10620_29465 Mask@@0 null pm_f_34) (IsPredicateField_10620_29492 pm_f_34)) (= (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@0) null (PredicateMaskField_10620 pm_f_34)) (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| ExhaleHeap) null (PredicateMaskField_10620 pm_f_34)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_10620_29492 pm_f_34) (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| ExhaleHeap) null (PredicateMaskField_10620 pm_f_34)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10560) (ExhaleHeap@@0 T@PolymorphicMapType_10560) (Mask@@1 T@PolymorphicMapType_10581) (pm_f_34@@0 T@Field_10620_29401) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_10620_29465 Mask@@1 null pm_f_34@@0) (IsWandField_10620_31239 pm_f_34@@0)) (= (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@1) null (WandMaskField_10620 pm_f_34@@0)) (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| ExhaleHeap@@0) null (WandMaskField_10620 pm_f_34@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_10620_31239 pm_f_34@@0) (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| ExhaleHeap@@0) null (WandMaskField_10620 pm_f_34@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10560) (ExhaleHeap@@1 T@PolymorphicMapType_10560) (Mask@@2 T@PolymorphicMapType_10581) (o_30 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@2) o_30 $allocated) (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| ExhaleHeap@@1) o_30 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| ExhaleHeap@@1) o_30 $allocated))
)))
(assert (forall ((p T@Field_10620_29401) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10620_10620 p v_1 p w))
 :qid |stdinbpl.204:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10620_10620 p v_1 p w))
)))
(assert  (not (IsPredicateField_6308_3355 f_7)))
(assert  (not (IsWandField_6308_3355 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10560) (ExhaleHeap@@2 T@PolymorphicMapType_10560) (Mask@@3 T@PolymorphicMapType_10581) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_10581) (o_2@@4 T@Ref) (f_4@@4 T@Field_10620_29534) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_6308_34785 f_4@@4))) (not (IsWandField_6308_34801 f_4@@4))) (<= (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_10581) (o_2@@5 T@Ref) (f_4@@5 T@Field_10620_29401) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_10620_29492 f_4@@5))) (not (IsWandField_10620_31239 f_4@@5))) (<= (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_10581) (o_2@@6 T@Ref) (f_4@@6 T@Field_10633_10634) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6308_10634 f_4@@6))) (not (IsWandField_6308_10634 f_4@@6))) (<= (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_10581) (o_2@@7 T@Ref) (f_4@@7 T@Field_10620_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_6308_53 f_4@@7))) (not (IsWandField_6308_53 f_4@@7))) (<= (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_10581) (o_2@@8 T@Ref) (f_4@@8 T@Field_16816_3355) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6308_3355 f_4@@8))) (not (IsWandField_6308_3355 f_4@@8))) (<= (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_10581) (o_2@@9 T@Ref) (f_4@@9 T@Field_10620_29534) ) (! (= (HasDirectPerm_10620_35239 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10620_35239 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10581) (o_2@@10 T@Ref) (f_4@@10 T@Field_10620_29401) ) (! (= (HasDirectPerm_10620_29465 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10620_29465 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10581) (o_2@@11 T@Ref) (f_4@@11 T@Field_16816_3355) ) (! (= (HasDirectPerm_10620_3355 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10620_3355 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10581) (o_2@@12 T@Ref) (f_4@@12 T@Field_10633_10634) ) (! (= (HasDirectPerm_10620_10634 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10620_10634 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10581) (o_2@@13 T@Ref) (f_4@@13 T@Field_10620_53) ) (! (= (HasDirectPerm_10620_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10620_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10560) (ExhaleHeap@@3 T@PolymorphicMapType_10560) (Mask@@14 T@PolymorphicMapType_10581) (pm_f_34@@1 T@Field_10620_29401) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_10620_29465 Mask@@14 null pm_f_34@@1) (IsPredicateField_10620_29492 pm_f_34@@1)) (and (and (and (and (forall ((o2_34 T@Ref) (f_35 T@Field_10620_53) ) (!  (=> (select (|PolymorphicMapType_11109_10620_53#PolymorphicMapType_11109| (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@4) null (PredicateMaskField_10620 pm_f_34@@1))) o2_34 f_35) (= (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@4) o2_34 f_35) (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| ExhaleHeap@@3) o2_34 f_35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| ExhaleHeap@@3) o2_34 f_35))
)) (forall ((o2_34@@0 T@Ref) (f_35@@0 T@Field_10633_10634) ) (!  (=> (select (|PolymorphicMapType_11109_10620_10634#PolymorphicMapType_11109| (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@4) null (PredicateMaskField_10620 pm_f_34@@1))) o2_34@@0 f_35@@0) (= (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@4) o2_34@@0 f_35@@0) (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| ExhaleHeap@@3) o2_34@@0 f_35@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| ExhaleHeap@@3) o2_34@@0 f_35@@0))
))) (forall ((o2_34@@1 T@Ref) (f_35@@1 T@Field_16816_3355) ) (!  (=> (select (|PolymorphicMapType_11109_10620_3355#PolymorphicMapType_11109| (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@4) null (PredicateMaskField_10620 pm_f_34@@1))) o2_34@@1 f_35@@1) (= (select (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@4) o2_34@@1 f_35@@1) (select (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| ExhaleHeap@@3) o2_34@@1 f_35@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| ExhaleHeap@@3) o2_34@@1 f_35@@1))
))) (forall ((o2_34@@2 T@Ref) (f_35@@2 T@Field_10620_29401) ) (!  (=> (select (|PolymorphicMapType_11109_10620_29401#PolymorphicMapType_11109| (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@4) null (PredicateMaskField_10620 pm_f_34@@1))) o2_34@@2 f_35@@2) (= (select (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@4) o2_34@@2 f_35@@2) (select (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| ExhaleHeap@@3) o2_34@@2 f_35@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| ExhaleHeap@@3) o2_34@@2 f_35@@2))
))) (forall ((o2_34@@3 T@Ref) (f_35@@3 T@Field_10620_29534) ) (!  (=> (select (|PolymorphicMapType_11109_10620_30712#PolymorphicMapType_11109| (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@4) null (PredicateMaskField_10620 pm_f_34@@1))) o2_34@@3 f_35@@3) (= (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@4) o2_34@@3 f_35@@3) (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| ExhaleHeap@@3) o2_34@@3 f_35@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| ExhaleHeap@@3) o2_34@@3 f_35@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_10620_29492 pm_f_34@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10560) (ExhaleHeap@@4 T@PolymorphicMapType_10560) (Mask@@15 T@PolymorphicMapType_10581) (pm_f_34@@2 T@Field_10620_29401) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_10620_29465 Mask@@15 null pm_f_34@@2) (IsWandField_10620_31239 pm_f_34@@2)) (and (and (and (and (forall ((o2_34@@4 T@Ref) (f_35@@4 T@Field_10620_53) ) (!  (=> (select (|PolymorphicMapType_11109_10620_53#PolymorphicMapType_11109| (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@5) null (WandMaskField_10620 pm_f_34@@2))) o2_34@@4 f_35@@4) (= (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@5) o2_34@@4 f_35@@4) (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| ExhaleHeap@@4) o2_34@@4 f_35@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| ExhaleHeap@@4) o2_34@@4 f_35@@4))
)) (forall ((o2_34@@5 T@Ref) (f_35@@5 T@Field_10633_10634) ) (!  (=> (select (|PolymorphicMapType_11109_10620_10634#PolymorphicMapType_11109| (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@5) null (WandMaskField_10620 pm_f_34@@2))) o2_34@@5 f_35@@5) (= (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@5) o2_34@@5 f_35@@5) (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| ExhaleHeap@@4) o2_34@@5 f_35@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| ExhaleHeap@@4) o2_34@@5 f_35@@5))
))) (forall ((o2_34@@6 T@Ref) (f_35@@6 T@Field_16816_3355) ) (!  (=> (select (|PolymorphicMapType_11109_10620_3355#PolymorphicMapType_11109| (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@5) null (WandMaskField_10620 pm_f_34@@2))) o2_34@@6 f_35@@6) (= (select (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@5) o2_34@@6 f_35@@6) (select (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| ExhaleHeap@@4) o2_34@@6 f_35@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| ExhaleHeap@@4) o2_34@@6 f_35@@6))
))) (forall ((o2_34@@7 T@Ref) (f_35@@7 T@Field_10620_29401) ) (!  (=> (select (|PolymorphicMapType_11109_10620_29401#PolymorphicMapType_11109| (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@5) null (WandMaskField_10620 pm_f_34@@2))) o2_34@@7 f_35@@7) (= (select (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@5) o2_34@@7 f_35@@7) (select (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| ExhaleHeap@@4) o2_34@@7 f_35@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| ExhaleHeap@@4) o2_34@@7 f_35@@7))
))) (forall ((o2_34@@8 T@Ref) (f_35@@8 T@Field_10620_29534) ) (!  (=> (select (|PolymorphicMapType_11109_10620_30712#PolymorphicMapType_11109| (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@5) null (WandMaskField_10620 pm_f_34@@2))) o2_34@@8 f_35@@8) (= (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@5) o2_34@@8 f_35@@8) (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| ExhaleHeap@@4) o2_34@@8 f_35@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| ExhaleHeap@@4) o2_34@@8 f_35@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_10620_31239 pm_f_34@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.192:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10560) (ExhaleHeap@@5 T@PolymorphicMapType_10560) (Mask@@16 T@PolymorphicMapType_10581) (o_30@@0 T@Ref) (f_35@@9 T@Field_10620_29534) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_10620_35239 Mask@@16 o_30@@0 f_35@@9) (= (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@6) o_30@@0 f_35@@9) (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| ExhaleHeap@@5) o_30@@0 f_35@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| ExhaleHeap@@5) o_30@@0 f_35@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10560) (ExhaleHeap@@6 T@PolymorphicMapType_10560) (Mask@@17 T@PolymorphicMapType_10581) (o_30@@1 T@Ref) (f_35@@10 T@Field_10620_29401) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_10620_29465 Mask@@17 o_30@@1 f_35@@10) (= (select (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@7) o_30@@1 f_35@@10) (select (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| ExhaleHeap@@6) o_30@@1 f_35@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| ExhaleHeap@@6) o_30@@1 f_35@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10560) (ExhaleHeap@@7 T@PolymorphicMapType_10560) (Mask@@18 T@PolymorphicMapType_10581) (o_30@@2 T@Ref) (f_35@@11 T@Field_16816_3355) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_10620_3355 Mask@@18 o_30@@2 f_35@@11) (= (select (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@8) o_30@@2 f_35@@11) (select (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| ExhaleHeap@@7) o_30@@2 f_35@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| ExhaleHeap@@7) o_30@@2 f_35@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10560) (ExhaleHeap@@8 T@PolymorphicMapType_10560) (Mask@@19 T@PolymorphicMapType_10581) (o_30@@3 T@Ref) (f_35@@12 T@Field_10633_10634) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_10620_10634 Mask@@19 o_30@@3 f_35@@12) (= (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@9) o_30@@3 f_35@@12) (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| ExhaleHeap@@8) o_30@@3 f_35@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| ExhaleHeap@@8) o_30@@3 f_35@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10560) (ExhaleHeap@@9 T@PolymorphicMapType_10560) (Mask@@20 T@PolymorphicMapType_10581) (o_30@@4 T@Ref) (f_35@@13 T@Field_10620_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_10620_53 Mask@@20 o_30@@4 f_35@@13) (= (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@10) o_30@@4 f_35@@13) (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| ExhaleHeap@@9) o_30@@4 f_35@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| ExhaleHeap@@9) o_30@@4 f_35@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_10620_29534) ) (! (= (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_10620_29401) ) (! (= (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_10633_10634) ) (! (= (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_10620_53) ) (! (= (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_16816_3355) ) (! (= (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10581) (SummandMask1 T@PolymorphicMapType_10581) (SummandMask2 T@PolymorphicMapType_10581) (o_2@@19 T@Ref) (f_4@@19 T@Field_10620_29534) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10581) (SummandMask1@@0 T@PolymorphicMapType_10581) (SummandMask2@@0 T@PolymorphicMapType_10581) (o_2@@20 T@Ref) (f_4@@20 T@Field_10620_29401) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10581) (SummandMask1@@1 T@PolymorphicMapType_10581) (SummandMask2@@1 T@PolymorphicMapType_10581) (o_2@@21 T@Ref) (f_4@@21 T@Field_10633_10634) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10581) (SummandMask1@@2 T@PolymorphicMapType_10581) (SummandMask2@@2 T@PolymorphicMapType_10581) (o_2@@22 T@Ref) (f_4@@22 T@Field_10620_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10581) (SummandMask1@@3 T@PolymorphicMapType_10581) (SummandMask2@@3 T@PolymorphicMapType_10581) (o_2@@23 T@Ref) (f_4@@23 T@Field_16816_3355) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10560) (o_6 T@Ref) (f_16 T@Field_10620_29401) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_10560 (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@11) (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@11) (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@11) (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@11) (store (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@11) o_6 f_16 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10560 (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@11) (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@11) (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@11) (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@11) (store (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@11) o_6 f_16 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10560) (o_6@@0 T@Ref) (f_16@@0 T@Field_10620_29534) (v@@0 T@PolymorphicMapType_11109) ) (! (succHeap Heap@@12 (PolymorphicMapType_10560 (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@12) (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@12) (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@12) (store (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@12) o_6@@0 f_16@@0 v@@0) (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10560 (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@12) (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@12) (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@12) (store (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@12) o_6@@0 f_16@@0 v@@0) (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10560) (o_6@@1 T@Ref) (f_16@@1 T@Field_16816_3355) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_10560 (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@13) (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@13) (store (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@13) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@13) (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10560 (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@13) (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@13) (store (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@13) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@13) (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10560) (o_6@@2 T@Ref) (f_16@@2 T@Field_10633_10634) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_10560 (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@14) (store (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@14) o_6@@2 f_16@@2 v@@2) (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@14) (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@14) (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10560 (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@14) (store (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@14) o_6@@2 f_16@@2 v@@2) (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@14) (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@14) (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10560) (o_6@@3 T@Ref) (f_16@@3 T@Field_10620_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_10560 (store (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@15) o_6@@3 f_16@@3 v@@3) (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@15) (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@15) (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@15) (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10560 (store (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@15) o_6@@3 f_16@@3 v@@3) (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@15) (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@15) (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@15) (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@15)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.304:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.305:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_6@@4 T@Ref) (f_9 T@Field_10633_10634) (Heap@@16 T@PolymorphicMapType_10560) ) (!  (=> (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@16) o_6@@4 $allocated) (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@16) (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@16) o_6@@4 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@16) o_6@@4 f_9))
)))
(assert (forall ((p@@1 T@Field_10620_29401) (v_1@@0 T@FrameType) (q T@Field_10620_29401) (w@@0 T@FrameType) (r T@Field_10620_29401) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10620_10620 p@@1 v_1@@0 q w@@0) (InsidePredicate_10620_10620 q w@@0 r u)) (InsidePredicate_10620_10620 p@@1 v_1@@0 r u))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10620_10620 p@@1 v_1@@0 q w@@0) (InsidePredicate_10620_10620 q w@@0 r u))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.310:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun s_2 () (Array T@Ref Bool))
(declare-fun Heap@@17 () T@PolymorphicMapType_10560)
(declare-fun QPMask@0 () T@PolymorphicMapType_10581)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) T@Ref)
(declare-fun Mask@1 () T@PolymorphicMapType_10581)
(declare-fun r1 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_10560)
(declare-fun r2 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_10581)
(set-info :boogie-vc-id foo3)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon3_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 6)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select s_2 x_1)) (select s_2 x_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.725:15|
 :skolemid |100|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (select s_2 x_1@@0)) (select s_2 x_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.725:15|
 :skolemid |100|
)) (=> (and (and (forall ((x_1@@1 T@Ref) ) (!  (=> (and (select s_2 x_1@@1) (< NoPerm FullPerm)) (and (qpRange4 x_1@@1) (= (invRecv4 x_1@@1) x_1@@1)))
 :qid |stdinbpl.731:22|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@17) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| QPMask@0) x_1@@1 f_7))
 :pattern ( (select s_2 x_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select s_2 (invRecv4 o_4)) (< NoPerm FullPerm)) (qpRange4 o_4)) (= (invRecv4 o_4) o_4))
 :qid |stdinbpl.735:22|
 :skolemid |102|
 :pattern ( (invRecv4 o_4))
))) (and (forall ((x_1@@2 T@Ref) ) (!  (=> (select s_2 x_1@@2) (not (= x_1@@2 null)))
 :qid |stdinbpl.741:22|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@17) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| QPMask@0) x_1@@2 f_7))
 :pattern ( (select s_2 x_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select s_2 (invRecv4 o_4@@0)) (< NoPerm FullPerm)) (qpRange4 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv4 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| QPMask@0) o_4@@0 f_7) (+ (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| Mask@1) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (select s_2 (invRecv4 o_4@@0)) (< NoPerm FullPerm)) (qpRange4 o_4@@0))) (= (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| QPMask@0) o_4@@0 f_7) (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| Mask@1) o_4@@0 f_7))))
 :qid |stdinbpl.747:22|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| QPMask@0) o_4@@0 f_7))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_10620_53) ) (!  (=> true (= (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| Mask@1) o_4@@1 f_5) (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.751:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| Mask@1) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_10633_10634) ) (!  (=> true (= (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| Mask@1) o_4@@2 f_5@@0) (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.751:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| Mask@1) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_16816_3355) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| Mask@1) o_4@@3 f_5@@1) (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.751:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| Mask@1) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_10620_29401) ) (!  (=> true (= (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| Mask@1) o_4@@4 f_5@@2) (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.751:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| Mask@1) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_10620_29534) ) (!  (=> true (= (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| Mask@1) o_4@@5 f_5@@3) (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.751:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| Mask@1) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| QPMask@0) o_4@@5 f_5@@3))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (= FullPerm (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| QPMask@0) r1 f_7))) (=> (= FullPerm (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| QPMask@0) r1 f_7)) (=> (and (= Heap@0 (PolymorphicMapType_10560 (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@17) (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@17) (store (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@17) r1 f_7 3) (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@17) (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@17))) (state Heap@0 QPMask@0)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (<= (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| QPMask@0) r1 f_7) FullPerm)) (=> (<= (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| QPMask@0) r1 f_7) FullPerm) (=> (and (state Heap@0 QPMask@0) (= (ControlFlow 0 3) (- 0 2))) (not (= r1 r2))))))))))))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@17) r1 $allocated)) (=> (and (and (and (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@17) r2 $allocated) (not (= r1 null))) (and (= Mask@0 (PolymorphicMapType_10581 (store (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| ZeroMask) r1 f_7 (+ (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| ZeroMask) r1 f_7) FullPerm)) (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| ZeroMask) (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| ZeroMask) (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| ZeroMask) (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| ZeroMask))) (state Heap@@17 Mask@0))) (and (and (not (= r2 null)) (= Mask@1 (PolymorphicMapType_10581 (store (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| Mask@0) r2 f_7 (+ (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| Mask@0) r2 f_7) FullPerm)) (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| Mask@0) (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| Mask@0) (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| Mask@0) (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| Mask@0)))) (and (state Heap@@17 Mask@1) (state Heap@@17 Mask@1)))) (and (=> (= (ControlFlow 0 7) 1) anon3_Then_correct) (=> (= (ControlFlow 0 7) 3) anon3_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 7) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
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
(declare-sort T@Field_10620_53 0)
(declare-sort T@Field_10633_10634 0)
(declare-sort T@Field_16816_3355 0)
(declare-sort T@Field_10620_29534 0)
(declare-sort T@Field_10620_29401 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_10581 0)) (((PolymorphicMapType_10581 (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| (Array T@Ref T@Field_16816_3355 Real)) (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| (Array T@Ref T@Field_10620_53 Real)) (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| (Array T@Ref T@Field_10633_10634 Real)) (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| (Array T@Ref T@Field_10620_29401 Real)) (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| (Array T@Ref T@Field_10620_29534 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11109 0)) (((PolymorphicMapType_11109 (|PolymorphicMapType_11109_10620_53#PolymorphicMapType_11109| (Array T@Ref T@Field_10620_53 Bool)) (|PolymorphicMapType_11109_10620_10634#PolymorphicMapType_11109| (Array T@Ref T@Field_10633_10634 Bool)) (|PolymorphicMapType_11109_10620_3355#PolymorphicMapType_11109| (Array T@Ref T@Field_16816_3355 Bool)) (|PolymorphicMapType_11109_10620_29401#PolymorphicMapType_11109| (Array T@Ref T@Field_10620_29401 Bool)) (|PolymorphicMapType_11109_10620_30712#PolymorphicMapType_11109| (Array T@Ref T@Field_10620_29534 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10560 0)) (((PolymorphicMapType_10560 (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| (Array T@Ref T@Field_10620_53 Bool)) (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| (Array T@Ref T@Field_10633_10634 T@Ref)) (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| (Array T@Ref T@Field_16816_3355 Int)) (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| (Array T@Ref T@Field_10620_29534 T@PolymorphicMapType_11109)) (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| (Array T@Ref T@Field_10620_29401 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_10620_53)
(declare-fun f_7 () T@Field_16816_3355)
(declare-fun succHeap (T@PolymorphicMapType_10560 T@PolymorphicMapType_10560) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10560 T@PolymorphicMapType_10560) Bool)
(declare-fun state (T@PolymorphicMapType_10560 T@PolymorphicMapType_10581) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10581) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11109)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10560 T@PolymorphicMapType_10560 T@PolymorphicMapType_10581) Bool)
(declare-fun IsPredicateField_10620_29492 (T@Field_10620_29401) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_10620 (T@Field_10620_29401) T@Field_10620_29534)
(declare-fun HasDirectPerm_10620_29465 (T@PolymorphicMapType_10581 T@Ref T@Field_10620_29401) Bool)
(declare-fun IsWandField_10620_31239 (T@Field_10620_29401) Bool)
(declare-fun WandMaskField_10620 (T@Field_10620_29401) T@Field_10620_29534)
(declare-fun dummyHeap () T@PolymorphicMapType_10560)
(declare-fun ZeroMask () T@PolymorphicMapType_10581)
(declare-fun InsidePredicate_10620_10620 (T@Field_10620_29401 T@FrameType T@Field_10620_29401 T@FrameType) Bool)
(declare-fun IsPredicateField_6308_3355 (T@Field_16816_3355) Bool)
(declare-fun IsWandField_6308_3355 (T@Field_16816_3355) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6308_34785 (T@Field_10620_29534) Bool)
(declare-fun IsWandField_6308_34801 (T@Field_10620_29534) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6308_10634 (T@Field_10633_10634) Bool)
(declare-fun IsWandField_6308_10634 (T@Field_10633_10634) Bool)
(declare-fun IsPredicateField_6308_53 (T@Field_10620_53) Bool)
(declare-fun IsWandField_6308_53 (T@Field_10620_53) Bool)
(declare-fun HasDirectPerm_10620_35239 (T@PolymorphicMapType_10581 T@Ref T@Field_10620_29534) Bool)
(declare-fun HasDirectPerm_10620_3355 (T@PolymorphicMapType_10581 T@Ref T@Field_16816_3355) Bool)
(declare-fun HasDirectPerm_10620_10634 (T@PolymorphicMapType_10581 T@Ref T@Field_10633_10634) Bool)
(declare-fun HasDirectPerm_10620_53 (T@PolymorphicMapType_10581 T@Ref T@Field_10620_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10581 T@PolymorphicMapType_10581 T@PolymorphicMapType_10581) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_10560) (Heap1 T@PolymorphicMapType_10560) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10560) (Mask T@PolymorphicMapType_10581) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10560) (Heap1@@0 T@PolymorphicMapType_10560) (Heap2 T@PolymorphicMapType_10560) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_10620_29534) ) (!  (not (select (|PolymorphicMapType_11109_10620_30712#PolymorphicMapType_11109| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11109_10620_30712#PolymorphicMapType_11109| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10620_29401) ) (!  (not (select (|PolymorphicMapType_11109_10620_29401#PolymorphicMapType_11109| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11109_10620_29401#PolymorphicMapType_11109| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_16816_3355) ) (!  (not (select (|PolymorphicMapType_11109_10620_3355#PolymorphicMapType_11109| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11109_10620_3355#PolymorphicMapType_11109| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10633_10634) ) (!  (not (select (|PolymorphicMapType_11109_10620_10634#PolymorphicMapType_11109| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11109_10620_10634#PolymorphicMapType_11109| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10620_53) ) (!  (not (select (|PolymorphicMapType_11109_10620_53#PolymorphicMapType_11109| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11109_10620_53#PolymorphicMapType_11109| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.306:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.309:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10560) (ExhaleHeap T@PolymorphicMapType_10560) (Mask@@0 T@PolymorphicMapType_10581) (pm_f_34 T@Field_10620_29401) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10620_29465 Mask@@0 null pm_f_34) (IsPredicateField_10620_29492 pm_f_34)) (= (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@0) null (PredicateMaskField_10620 pm_f_34)) (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| ExhaleHeap) null (PredicateMaskField_10620 pm_f_34)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_10620_29492 pm_f_34) (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| ExhaleHeap) null (PredicateMaskField_10620 pm_f_34)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10560) (ExhaleHeap@@0 T@PolymorphicMapType_10560) (Mask@@1 T@PolymorphicMapType_10581) (pm_f_34@@0 T@Field_10620_29401) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_10620_29465 Mask@@1 null pm_f_34@@0) (IsWandField_10620_31239 pm_f_34@@0)) (= (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@1) null (WandMaskField_10620 pm_f_34@@0)) (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| ExhaleHeap@@0) null (WandMaskField_10620 pm_f_34@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_10620_31239 pm_f_34@@0) (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| ExhaleHeap@@0) null (WandMaskField_10620 pm_f_34@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10560) (ExhaleHeap@@1 T@PolymorphicMapType_10560) (Mask@@2 T@PolymorphicMapType_10581) (o_30 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@2) o_30 $allocated) (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| ExhaleHeap@@1) o_30 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| ExhaleHeap@@1) o_30 $allocated))
)))
(assert (forall ((p T@Field_10620_29401) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10620_10620 p v_1 p w))
 :qid |stdinbpl.204:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10620_10620 p v_1 p w))
)))
(assert  (not (IsPredicateField_6308_3355 f_7)))
(assert  (not (IsWandField_6308_3355 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10560) (ExhaleHeap@@2 T@PolymorphicMapType_10560) (Mask@@3 T@PolymorphicMapType_10581) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_10581) (o_2@@4 T@Ref) (f_4@@4 T@Field_10620_29534) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_6308_34785 f_4@@4))) (not (IsWandField_6308_34801 f_4@@4))) (<= (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_10581) (o_2@@5 T@Ref) (f_4@@5 T@Field_10620_29401) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_10620_29492 f_4@@5))) (not (IsWandField_10620_31239 f_4@@5))) (<= (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_10581) (o_2@@6 T@Ref) (f_4@@6 T@Field_10633_10634) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6308_10634 f_4@@6))) (not (IsWandField_6308_10634 f_4@@6))) (<= (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_10581) (o_2@@7 T@Ref) (f_4@@7 T@Field_10620_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_6308_53 f_4@@7))) (not (IsWandField_6308_53 f_4@@7))) (<= (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_10581) (o_2@@8 T@Ref) (f_4@@8 T@Field_16816_3355) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6308_3355 f_4@@8))) (not (IsWandField_6308_3355 f_4@@8))) (<= (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_10581) (o_2@@9 T@Ref) (f_4@@9 T@Field_10620_29534) ) (! (= (HasDirectPerm_10620_35239 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10620_35239 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10581) (o_2@@10 T@Ref) (f_4@@10 T@Field_10620_29401) ) (! (= (HasDirectPerm_10620_29465 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10620_29465 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10581) (o_2@@11 T@Ref) (f_4@@11 T@Field_16816_3355) ) (! (= (HasDirectPerm_10620_3355 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10620_3355 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10581) (o_2@@12 T@Ref) (f_4@@12 T@Field_10633_10634) ) (! (= (HasDirectPerm_10620_10634 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10620_10634 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10581) (o_2@@13 T@Ref) (f_4@@13 T@Field_10620_53) ) (! (= (HasDirectPerm_10620_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10620_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10560) (ExhaleHeap@@3 T@PolymorphicMapType_10560) (Mask@@14 T@PolymorphicMapType_10581) (pm_f_34@@1 T@Field_10620_29401) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_10620_29465 Mask@@14 null pm_f_34@@1) (IsPredicateField_10620_29492 pm_f_34@@1)) (and (and (and (and (forall ((o2_34 T@Ref) (f_35 T@Field_10620_53) ) (!  (=> (select (|PolymorphicMapType_11109_10620_53#PolymorphicMapType_11109| (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@4) null (PredicateMaskField_10620 pm_f_34@@1))) o2_34 f_35) (= (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@4) o2_34 f_35) (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| ExhaleHeap@@3) o2_34 f_35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| ExhaleHeap@@3) o2_34 f_35))
)) (forall ((o2_34@@0 T@Ref) (f_35@@0 T@Field_10633_10634) ) (!  (=> (select (|PolymorphicMapType_11109_10620_10634#PolymorphicMapType_11109| (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@4) null (PredicateMaskField_10620 pm_f_34@@1))) o2_34@@0 f_35@@0) (= (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@4) o2_34@@0 f_35@@0) (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| ExhaleHeap@@3) o2_34@@0 f_35@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| ExhaleHeap@@3) o2_34@@0 f_35@@0))
))) (forall ((o2_34@@1 T@Ref) (f_35@@1 T@Field_16816_3355) ) (!  (=> (select (|PolymorphicMapType_11109_10620_3355#PolymorphicMapType_11109| (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@4) null (PredicateMaskField_10620 pm_f_34@@1))) o2_34@@1 f_35@@1) (= (select (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@4) o2_34@@1 f_35@@1) (select (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| ExhaleHeap@@3) o2_34@@1 f_35@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| ExhaleHeap@@3) o2_34@@1 f_35@@1))
))) (forall ((o2_34@@2 T@Ref) (f_35@@2 T@Field_10620_29401) ) (!  (=> (select (|PolymorphicMapType_11109_10620_29401#PolymorphicMapType_11109| (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@4) null (PredicateMaskField_10620 pm_f_34@@1))) o2_34@@2 f_35@@2) (= (select (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@4) o2_34@@2 f_35@@2) (select (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| ExhaleHeap@@3) o2_34@@2 f_35@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| ExhaleHeap@@3) o2_34@@2 f_35@@2))
))) (forall ((o2_34@@3 T@Ref) (f_35@@3 T@Field_10620_29534) ) (!  (=> (select (|PolymorphicMapType_11109_10620_30712#PolymorphicMapType_11109| (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@4) null (PredicateMaskField_10620 pm_f_34@@1))) o2_34@@3 f_35@@3) (= (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@4) o2_34@@3 f_35@@3) (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| ExhaleHeap@@3) o2_34@@3 f_35@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| ExhaleHeap@@3) o2_34@@3 f_35@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_10620_29492 pm_f_34@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10560) (ExhaleHeap@@4 T@PolymorphicMapType_10560) (Mask@@15 T@PolymorphicMapType_10581) (pm_f_34@@2 T@Field_10620_29401) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_10620_29465 Mask@@15 null pm_f_34@@2) (IsWandField_10620_31239 pm_f_34@@2)) (and (and (and (and (forall ((o2_34@@4 T@Ref) (f_35@@4 T@Field_10620_53) ) (!  (=> (select (|PolymorphicMapType_11109_10620_53#PolymorphicMapType_11109| (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@5) null (WandMaskField_10620 pm_f_34@@2))) o2_34@@4 f_35@@4) (= (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@5) o2_34@@4 f_35@@4) (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| ExhaleHeap@@4) o2_34@@4 f_35@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| ExhaleHeap@@4) o2_34@@4 f_35@@4))
)) (forall ((o2_34@@5 T@Ref) (f_35@@5 T@Field_10633_10634) ) (!  (=> (select (|PolymorphicMapType_11109_10620_10634#PolymorphicMapType_11109| (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@5) null (WandMaskField_10620 pm_f_34@@2))) o2_34@@5 f_35@@5) (= (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@5) o2_34@@5 f_35@@5) (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| ExhaleHeap@@4) o2_34@@5 f_35@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| ExhaleHeap@@4) o2_34@@5 f_35@@5))
))) (forall ((o2_34@@6 T@Ref) (f_35@@6 T@Field_16816_3355) ) (!  (=> (select (|PolymorphicMapType_11109_10620_3355#PolymorphicMapType_11109| (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@5) null (WandMaskField_10620 pm_f_34@@2))) o2_34@@6 f_35@@6) (= (select (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@5) o2_34@@6 f_35@@6) (select (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| ExhaleHeap@@4) o2_34@@6 f_35@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| ExhaleHeap@@4) o2_34@@6 f_35@@6))
))) (forall ((o2_34@@7 T@Ref) (f_35@@7 T@Field_10620_29401) ) (!  (=> (select (|PolymorphicMapType_11109_10620_29401#PolymorphicMapType_11109| (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@5) null (WandMaskField_10620 pm_f_34@@2))) o2_34@@7 f_35@@7) (= (select (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@5) o2_34@@7 f_35@@7) (select (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| ExhaleHeap@@4) o2_34@@7 f_35@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| ExhaleHeap@@4) o2_34@@7 f_35@@7))
))) (forall ((o2_34@@8 T@Ref) (f_35@@8 T@Field_10620_29534) ) (!  (=> (select (|PolymorphicMapType_11109_10620_30712#PolymorphicMapType_11109| (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@5) null (WandMaskField_10620 pm_f_34@@2))) o2_34@@8 f_35@@8) (= (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@5) o2_34@@8 f_35@@8) (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| ExhaleHeap@@4) o2_34@@8 f_35@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| ExhaleHeap@@4) o2_34@@8 f_35@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_10620_31239 pm_f_34@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.192:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10560) (ExhaleHeap@@5 T@PolymorphicMapType_10560) (Mask@@16 T@PolymorphicMapType_10581) (o_30@@0 T@Ref) (f_35@@9 T@Field_10620_29534) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_10620_35239 Mask@@16 o_30@@0 f_35@@9) (= (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@6) o_30@@0 f_35@@9) (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| ExhaleHeap@@5) o_30@@0 f_35@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| ExhaleHeap@@5) o_30@@0 f_35@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10560) (ExhaleHeap@@6 T@PolymorphicMapType_10560) (Mask@@17 T@PolymorphicMapType_10581) (o_30@@1 T@Ref) (f_35@@10 T@Field_10620_29401) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_10620_29465 Mask@@17 o_30@@1 f_35@@10) (= (select (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@7) o_30@@1 f_35@@10) (select (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| ExhaleHeap@@6) o_30@@1 f_35@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| ExhaleHeap@@6) o_30@@1 f_35@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10560) (ExhaleHeap@@7 T@PolymorphicMapType_10560) (Mask@@18 T@PolymorphicMapType_10581) (o_30@@2 T@Ref) (f_35@@11 T@Field_16816_3355) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_10620_3355 Mask@@18 o_30@@2 f_35@@11) (= (select (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@8) o_30@@2 f_35@@11) (select (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| ExhaleHeap@@7) o_30@@2 f_35@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| ExhaleHeap@@7) o_30@@2 f_35@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10560) (ExhaleHeap@@8 T@PolymorphicMapType_10560) (Mask@@19 T@PolymorphicMapType_10581) (o_30@@3 T@Ref) (f_35@@12 T@Field_10633_10634) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_10620_10634 Mask@@19 o_30@@3 f_35@@12) (= (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@9) o_30@@3 f_35@@12) (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| ExhaleHeap@@8) o_30@@3 f_35@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| ExhaleHeap@@8) o_30@@3 f_35@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10560) (ExhaleHeap@@9 T@PolymorphicMapType_10560) (Mask@@20 T@PolymorphicMapType_10581) (o_30@@4 T@Ref) (f_35@@13 T@Field_10620_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_10620_53 Mask@@20 o_30@@4 f_35@@13) (= (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@10) o_30@@4 f_35@@13) (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| ExhaleHeap@@9) o_30@@4 f_35@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| ExhaleHeap@@9) o_30@@4 f_35@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_10620_29534) ) (! (= (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_10620_29401) ) (! (= (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_10633_10634) ) (! (= (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_10620_53) ) (! (= (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_16816_3355) ) (! (= (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10581) (SummandMask1 T@PolymorphicMapType_10581) (SummandMask2 T@PolymorphicMapType_10581) (o_2@@19 T@Ref) (f_4@@19 T@Field_10620_29534) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10581_6308_33656#PolymorphicMapType_10581| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10581) (SummandMask1@@0 T@PolymorphicMapType_10581) (SummandMask2@@0 T@PolymorphicMapType_10581) (o_2@@20 T@Ref) (f_4@@20 T@Field_10620_29401) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10581_6308_29401#PolymorphicMapType_10581| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10581) (SummandMask1@@1 T@PolymorphicMapType_10581) (SummandMask2@@1 T@PolymorphicMapType_10581) (o_2@@21 T@Ref) (f_4@@21 T@Field_10633_10634) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10581_6308_10634#PolymorphicMapType_10581| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10581) (SummandMask1@@2 T@PolymorphicMapType_10581) (SummandMask2@@2 T@PolymorphicMapType_10581) (o_2@@22 T@Ref) (f_4@@22 T@Field_10620_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10581_6308_53#PolymorphicMapType_10581| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10581) (SummandMask1@@3 T@PolymorphicMapType_10581) (SummandMask2@@3 T@PolymorphicMapType_10581) (o_2@@23 T@Ref) (f_4@@23 T@Field_16816_3355) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10581_6308_3355#PolymorphicMapType_10581| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10560) (o_6 T@Ref) (f_16 T@Field_10620_29401) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_10560 (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@11) (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@11) (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@11) (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@11) (store (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@11) o_6 f_16 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10560 (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@11) (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@11) (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@11) (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@11) (store (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@11) o_6 f_16 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10560) (o_6@@0 T@Ref) (f_16@@0 T@Field_10620_29534) (v@@0 T@PolymorphicMapType_11109) ) (! (succHeap Heap@@12 (PolymorphicMapType_10560 (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@12) (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@12) (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@12) (store (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@12) o_6@@0 f_16@@0 v@@0) (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10560 (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@12) (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@12) (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@12) (store (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@12) o_6@@0 f_16@@0 v@@0) (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10560) (o_6@@1 T@Ref) (f_16@@1 T@Field_16816_3355) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_10560 (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@13) (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@13) (store (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@13) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@13) (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10560 (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@13) (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@13) (store (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@13) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@13) (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10560) (o_6@@2 T@Ref) (f_16@@2 T@Field_10633_10634) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_10560 (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@14) (store (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@14) o_6@@2 f_16@@2 v@@2) (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@14) (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@14) (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10560 (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@14) (store (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@14) o_6@@2 f_16@@2 v@@2) (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@14) (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@14) (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10560) (o_6@@3 T@Ref) (f_16@@3 T@Field_10620_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_10560 (store (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@15) o_6@@3 f_16@@3 v@@3) (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@15) (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@15) (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@15) (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10560 (store (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@15) o_6@@3 f_16@@3 v@@3) (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@15) (|PolymorphicMapType_10560_6308_3355#PolymorphicMapType_10560| Heap@@15) (|PolymorphicMapType_10560_10620_29578#PolymorphicMapType_10560| Heap@@15) (|PolymorphicMapType_10560_10620_29401#PolymorphicMapType_10560| Heap@@15)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.304:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.305:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_6@@4 T@Ref) (f_9 T@Field_10633_10634) (Heap@@16 T@PolymorphicMapType_10560) ) (!  (=> (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@16) o_6@@4 $allocated) (select (|PolymorphicMapType_10560_5991_53#PolymorphicMapType_10560| Heap@@16) (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@16) o_6@@4 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10560_5994_5995#PolymorphicMapType_10560| Heap@@16) o_6@@4 f_9))
)))
(assert (forall ((p@@1 T@Field_10620_29401) (v_1@@0 T@FrameType) (q T@Field_10620_29401) (w@@0 T@FrameType) (r T@Field_10620_29401) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10620_10620 p@@1 v_1@@0 q w@@0) (InsidePredicate_10620_10620 q w@@0 r u)) (InsidePredicate_10620_10620 p@@1 v_1@@0 r u))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10620_10620 p@@1 v_1@@0 q w@@0) (InsidePredicate_10620_10620 q w@@0 r u))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.310:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

