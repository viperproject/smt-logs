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
(declare-sort T@Field_4262_53 0)
(declare-sort T@Field_4275_4276 0)
(declare-sort T@Field_7589_1189 0)
(declare-sort T@Field_4262_11873 0)
(declare-sort T@Field_4262_11740 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_4223 0)) (((PolymorphicMapType_4223 (|PolymorphicMapType_4223_4262_53#PolymorphicMapType_4223| (Array T@Ref T@Field_4262_53 Real)) (|PolymorphicMapType_4223_4262_4276#PolymorphicMapType_4223| (Array T@Ref T@Field_4275_4276 Real)) (|PolymorphicMapType_4223_4262_1189#PolymorphicMapType_4223| (Array T@Ref T@Field_7589_1189 Real)) (|PolymorphicMapType_4223_4262_11740#PolymorphicMapType_4223| (Array T@Ref T@Field_4262_11740 Real)) (|PolymorphicMapType_4223_4262_16007#PolymorphicMapType_4223| (Array T@Ref T@Field_4262_11873 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4751 0)) (((PolymorphicMapType_4751 (|PolymorphicMapType_4751_4262_53#PolymorphicMapType_4751| (Array T@Ref T@Field_4262_53 Bool)) (|PolymorphicMapType_4751_4262_4276#PolymorphicMapType_4751| (Array T@Ref T@Field_4275_4276 Bool)) (|PolymorphicMapType_4751_4262_1189#PolymorphicMapType_4751| (Array T@Ref T@Field_7589_1189 Bool)) (|PolymorphicMapType_4751_4262_11740#PolymorphicMapType_4751| (Array T@Ref T@Field_4262_11740 Bool)) (|PolymorphicMapType_4751_4262_13051#PolymorphicMapType_4751| (Array T@Ref T@Field_4262_11873 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4202 0)) (((PolymorphicMapType_4202 (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| (Array T@Ref T@Field_4262_53 Bool)) (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| (Array T@Ref T@Field_4275_4276 T@Ref)) (|PolymorphicMapType_4202_4262_1189#PolymorphicMapType_4202| (Array T@Ref T@Field_7589_1189 Int)) (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| (Array T@Ref T@Field_4262_11873 T@PolymorphicMapType_4751)) (|PolymorphicMapType_4202_4262_11740#PolymorphicMapType_4202| (Array T@Ref T@Field_4262_11740 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_4262_53)
(declare-fun f_7 () T@Field_7589_1189)
(declare-fun succHeap (T@PolymorphicMapType_4202 T@PolymorphicMapType_4202) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4202 T@PolymorphicMapType_4202) Bool)
(declare-fun state (T@PolymorphicMapType_4202 T@PolymorphicMapType_4223) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4223) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4751)
(declare-fun |fac'| (T@PolymorphicMapType_4202 Int) Int)
(declare-fun dummyFunction_1430 (Int) Bool)
(declare-fun |fac#triggerStateless| (Int) Int)
(declare-fun |err1'| (T@PolymorphicMapType_4202 Int) Int)
(declare-fun |err1#triggerStateless| (Int) Int)
(declare-fun fac (T@PolymorphicMapType_4202 Int) Int)
(declare-fun err1 (T@PolymorphicMapType_4202 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4202 T@PolymorphicMapType_4202 T@PolymorphicMapType_4223) Bool)
(declare-fun IsPredicateField_4262_11831 (T@Field_4262_11740) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4262 (T@Field_4262_11740) T@Field_4262_11873)
(declare-fun HasDirectPerm_4262_11804 (T@PolymorphicMapType_4223 T@Ref T@Field_4262_11740) Bool)
(declare-fun IsWandField_4262_13578 (T@Field_4262_11740) Bool)
(declare-fun WandMaskField_4262 (T@Field_4262_11740) T@Field_4262_11873)
(declare-fun dummyHeap () T@PolymorphicMapType_4202)
(declare-fun ZeroMask () T@PolymorphicMapType_4223)
(declare-fun InsidePredicate_4262_4262 (T@Field_4262_11740 T@FrameType T@Field_4262_11740 T@FrameType) Bool)
(declare-fun IsPredicateField_2316_1189 (T@Field_7589_1189) Bool)
(declare-fun IsWandField_2316_1189 (T@Field_7589_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4262_17136 (T@Field_4262_11873) Bool)
(declare-fun IsWandField_4262_17152 (T@Field_4262_11873) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4262_4276 (T@Field_4275_4276) Bool)
(declare-fun IsWandField_4262_4276 (T@Field_4275_4276) Bool)
(declare-fun IsPredicateField_4262_53 (T@Field_4262_53) Bool)
(declare-fun IsWandField_4262_53 (T@Field_4262_53) Bool)
(declare-fun HasDirectPerm_4262_17590 (T@PolymorphicMapType_4223 T@Ref T@Field_4262_11873) Bool)
(declare-fun HasDirectPerm_4262_1189 (T@PolymorphicMapType_4223 T@Ref T@Field_7589_1189) Bool)
(declare-fun HasDirectPerm_4262_4276 (T@PolymorphicMapType_4223 T@Ref T@Field_4275_4276) Bool)
(declare-fun HasDirectPerm_4262_53 (T@PolymorphicMapType_4223 T@Ref T@Field_4262_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun sumMask (T@PolymorphicMapType_4223 T@PolymorphicMapType_4223 T@PolymorphicMapType_4223) Bool)
(declare-fun |fac#frame| (T@FrameType Int) Int)
(declare-fun |err1#frame| (T@FrameType Int) Int)
(declare-fun |err1#trigger| (T@FrameType Int) Bool)
(declare-fun |fac#trigger| (T@FrameType Int) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_4202) (Heap1 T@PolymorphicMapType_4202) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4202) (Mask T@PolymorphicMapType_4223) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4202) (Heap1@@0 T@PolymorphicMapType_4202) (Heap2 T@PolymorphicMapType_4202) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4262_11873) ) (!  (not (select (|PolymorphicMapType_4751_4262_13051#PolymorphicMapType_4751| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4751_4262_13051#PolymorphicMapType_4751| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4262_11740) ) (!  (not (select (|PolymorphicMapType_4751_4262_11740#PolymorphicMapType_4751| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4751_4262_11740#PolymorphicMapType_4751| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7589_1189) ) (!  (not (select (|PolymorphicMapType_4751_4262_1189#PolymorphicMapType_4751| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4751_4262_1189#PolymorphicMapType_4751| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4275_4276) ) (!  (not (select (|PolymorphicMapType_4751_4262_4276#PolymorphicMapType_4751| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4751_4262_4276#PolymorphicMapType_4751| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4262_53) ) (!  (not (select (|PolymorphicMapType_4751_4262_53#PolymorphicMapType_4751| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4751_4262_53#PolymorphicMapType_4751| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4202) (n Int) ) (! (dummyFunction_1430 (|fac#triggerStateless| n))
 :qid |stdinbpl.199:15|
 :skolemid |23|
 :pattern ( (|fac'| Heap@@0 n))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4202) (n@@0 Int) ) (! (dummyFunction_1430 (|err1#triggerStateless| n@@0))
 :qid |stdinbpl.286:15|
 :skolemid |28|
 :pattern ( (|err1'| Heap@@1 n@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4202) (n@@1 Int) ) (!  (and (= (fac Heap@@2 n@@1) (|fac'| Heap@@2 n@@1)) (dummyFunction_1430 (|fac#triggerStateless| n@@1)))
 :qid |stdinbpl.195:15|
 :skolemid |22|
 :pattern ( (fac Heap@@2 n@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4202) (n@@2 Int) ) (!  (and (= (err1 Heap@@3 n@@2) (|err1'| Heap@@3 n@@2)) (dummyFunction_1430 (|err1#triggerStateless| n@@2)))
 :qid |stdinbpl.282:15|
 :skolemid |27|
 :pattern ( (err1 Heap@@3 n@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4202) (ExhaleHeap T@PolymorphicMapType_4202) (Mask@@0 T@PolymorphicMapType_4223) (pm_f T@Field_4262_11740) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4262_11804 Mask@@0 null pm_f) (IsPredicateField_4262_11831 pm_f)) (= (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@4) null (PredicateMaskField_4262 pm_f)) (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| ExhaleHeap) null (PredicateMaskField_4262 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (IsPredicateField_4262_11831 pm_f) (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| ExhaleHeap) null (PredicateMaskField_4262 pm_f)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4202) (ExhaleHeap@@0 T@PolymorphicMapType_4202) (Mask@@1 T@PolymorphicMapType_4223) (pm_f@@0 T@Field_4262_11740) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4262_11804 Mask@@1 null pm_f@@0) (IsWandField_4262_13578 pm_f@@0)) (= (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@5) null (WandMaskField_4262 pm_f@@0)) (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| ExhaleHeap@@0) null (WandMaskField_4262 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (IsWandField_4262_13578 pm_f@@0) (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| ExhaleHeap@@0) null (WandMaskField_4262 pm_f@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4202) (ExhaleHeap@@1 T@PolymorphicMapType_4202) (Mask@@2 T@PolymorphicMapType_4223) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| Heap@@6) o_1 $allocated) (select (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_4262_11740) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4262_4262 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4262_4262 p v_1 p w))
)))
(assert  (not (IsPredicateField_2316_1189 f_7)))
(assert  (not (IsWandField_2316_1189 f_7)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4202) (ExhaleHeap@@2 T@PolymorphicMapType_4202) (Mask@@3 T@PolymorphicMapType_4223) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@7 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_4223) (o_2@@4 T@Ref) (f_4@@4 T@Field_4262_11873) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_4223_4262_16007#PolymorphicMapType_4223| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_4262_17136 f_4@@4))) (not (IsWandField_4262_17152 f_4@@4))) (<= (select (|PolymorphicMapType_4223_4262_16007#PolymorphicMapType_4223| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_4223_4262_16007#PolymorphicMapType_4223| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_4223) (o_2@@5 T@Ref) (f_4@@5 T@Field_4262_11740) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_4223_4262_11740#PolymorphicMapType_4223| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_4262_11831 f_4@@5))) (not (IsWandField_4262_13578 f_4@@5))) (<= (select (|PolymorphicMapType_4223_4262_11740#PolymorphicMapType_4223| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_4223_4262_11740#PolymorphicMapType_4223| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_4223) (o_2@@6 T@Ref) (f_4@@6 T@Field_7589_1189) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_4223_4262_1189#PolymorphicMapType_4223| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_2316_1189 f_4@@6))) (not (IsWandField_2316_1189 f_4@@6))) (<= (select (|PolymorphicMapType_4223_4262_1189#PolymorphicMapType_4223| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_4223_4262_1189#PolymorphicMapType_4223| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_4223) (o_2@@7 T@Ref) (f_4@@7 T@Field_4275_4276) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_4223_4262_4276#PolymorphicMapType_4223| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4262_4276 f_4@@7))) (not (IsWandField_4262_4276 f_4@@7))) (<= (select (|PolymorphicMapType_4223_4262_4276#PolymorphicMapType_4223| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_4223_4262_4276#PolymorphicMapType_4223| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_4223) (o_2@@8 T@Ref) (f_4@@8 T@Field_4262_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_4223_4262_53#PolymorphicMapType_4223| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4262_53 f_4@@8))) (not (IsWandField_4262_53 f_4@@8))) (<= (select (|PolymorphicMapType_4223_4262_53#PolymorphicMapType_4223| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_4223_4262_53#PolymorphicMapType_4223| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_4223) (o_2@@9 T@Ref) (f_4@@9 T@Field_4262_11873) ) (! (= (HasDirectPerm_4262_17590 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_4223_4262_16007#PolymorphicMapType_4223| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4262_17590 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4223) (o_2@@10 T@Ref) (f_4@@10 T@Field_4262_11740) ) (! (= (HasDirectPerm_4262_11804 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_4223_4262_11740#PolymorphicMapType_4223| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4262_11804 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4223) (o_2@@11 T@Ref) (f_4@@11 T@Field_7589_1189) ) (! (= (HasDirectPerm_4262_1189 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_4223_4262_1189#PolymorphicMapType_4223| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4262_1189 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4223) (o_2@@12 T@Ref) (f_4@@12 T@Field_4275_4276) ) (! (= (HasDirectPerm_4262_4276 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_4223_4262_4276#PolymorphicMapType_4223| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4262_4276 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4223) (o_2@@13 T@Ref) (f_4@@13 T@Field_4262_53) ) (! (= (HasDirectPerm_4262_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_4223_4262_53#PolymorphicMapType_4223| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4262_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4202) (ExhaleHeap@@3 T@PolymorphicMapType_4202) (Mask@@14 T@PolymorphicMapType_4223) (pm_f@@1 T@Field_4262_11740) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_4262_11804 Mask@@14 null pm_f@@1) (IsPredicateField_4262_11831 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_4262_53) ) (!  (=> (select (|PolymorphicMapType_4751_4262_53#PolymorphicMapType_4751| (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@8) null (PredicateMaskField_4262 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| Heap@@8) o2 f_2) (select (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_4275_4276) ) (!  (=> (select (|PolymorphicMapType_4751_4262_4276#PolymorphicMapType_4751| (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@8) null (PredicateMaskField_4262 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| Heap@@8) o2@@0 f_2@@0) (select (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_7589_1189) ) (!  (=> (select (|PolymorphicMapType_4751_4262_1189#PolymorphicMapType_4751| (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@8) null (PredicateMaskField_4262 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_4202_4262_1189#PolymorphicMapType_4202| Heap@@8) o2@@1 f_2@@1) (select (|PolymorphicMapType_4202_4262_1189#PolymorphicMapType_4202| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4202_4262_1189#PolymorphicMapType_4202| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_4262_11740) ) (!  (=> (select (|PolymorphicMapType_4751_4262_11740#PolymorphicMapType_4751| (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@8) null (PredicateMaskField_4262 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_4202_4262_11740#PolymorphicMapType_4202| Heap@@8) o2@@2 f_2@@2) (select (|PolymorphicMapType_4202_4262_11740#PolymorphicMapType_4202| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4202_4262_11740#PolymorphicMapType_4202| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_4262_11873) ) (!  (=> (select (|PolymorphicMapType_4751_4262_13051#PolymorphicMapType_4751| (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@8) null (PredicateMaskField_4262 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@8) o2@@3 f_2@@3) (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@14) (IsPredicateField_4262_11831 pm_f@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4202) (ExhaleHeap@@4 T@PolymorphicMapType_4202) (Mask@@15 T@PolymorphicMapType_4223) (pm_f@@2 T@Field_4262_11740) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_4262_11804 Mask@@15 null pm_f@@2) (IsWandField_4262_13578 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_4262_53) ) (!  (=> (select (|PolymorphicMapType_4751_4262_53#PolymorphicMapType_4751| (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@9) null (WandMaskField_4262 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| Heap@@9) o2@@4 f_2@@4) (select (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_4275_4276) ) (!  (=> (select (|PolymorphicMapType_4751_4262_4276#PolymorphicMapType_4751| (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@9) null (WandMaskField_4262 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| Heap@@9) o2@@5 f_2@@5) (select (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_7589_1189) ) (!  (=> (select (|PolymorphicMapType_4751_4262_1189#PolymorphicMapType_4751| (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@9) null (WandMaskField_4262 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_4202_4262_1189#PolymorphicMapType_4202| Heap@@9) o2@@6 f_2@@6) (select (|PolymorphicMapType_4202_4262_1189#PolymorphicMapType_4202| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4202_4262_1189#PolymorphicMapType_4202| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_4262_11740) ) (!  (=> (select (|PolymorphicMapType_4751_4262_11740#PolymorphicMapType_4751| (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@9) null (WandMaskField_4262 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_4202_4262_11740#PolymorphicMapType_4202| Heap@@9) o2@@7 f_2@@7) (select (|PolymorphicMapType_4202_4262_11740#PolymorphicMapType_4202| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4202_4262_11740#PolymorphicMapType_4202| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_4262_11873) ) (!  (=> (select (|PolymorphicMapType_4751_4262_13051#PolymorphicMapType_4751| (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@9) null (WandMaskField_4262 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@9) o2@@8 f_2@@8) (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@15) (IsWandField_4262_13578 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4202) (ExhaleHeap@@5 T@PolymorphicMapType_4202) (Mask@@16 T@PolymorphicMapType_4223) (o_1@@0 T@Ref) (f_2@@9 T@Field_4262_11873) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_4262_17590 Mask@@16 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@10) o_1@@0 f_2@@9) (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4202) (ExhaleHeap@@6 T@PolymorphicMapType_4202) (Mask@@17 T@PolymorphicMapType_4223) (o_1@@1 T@Ref) (f_2@@10 T@Field_4262_11740) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_4262_11804 Mask@@17 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_4202_4262_11740#PolymorphicMapType_4202| Heap@@11) o_1@@1 f_2@@10) (select (|PolymorphicMapType_4202_4262_11740#PolymorphicMapType_4202| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_4202_4262_11740#PolymorphicMapType_4202| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4202) (ExhaleHeap@@7 T@PolymorphicMapType_4202) (Mask@@18 T@PolymorphicMapType_4223) (o_1@@2 T@Ref) (f_2@@11 T@Field_7589_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_4262_1189 Mask@@18 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_4202_4262_1189#PolymorphicMapType_4202| Heap@@12) o_1@@2 f_2@@11) (select (|PolymorphicMapType_4202_4262_1189#PolymorphicMapType_4202| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_4202_4262_1189#PolymorphicMapType_4202| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4202) (ExhaleHeap@@8 T@PolymorphicMapType_4202) (Mask@@19 T@PolymorphicMapType_4223) (o_1@@3 T@Ref) (f_2@@12 T@Field_4275_4276) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_4262_4276 Mask@@19 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| Heap@@13) o_1@@3 f_2@@12) (select (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4202) (ExhaleHeap@@9 T@PolymorphicMapType_4202) (Mask@@20 T@PolymorphicMapType_4223) (o_1@@4 T@Ref) (f_2@@13 T@Field_4262_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_4262_53 Mask@@20 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| Heap@@14) o_1@@4 f_2@@13) (select (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4262_11873) ) (! (= (select (|PolymorphicMapType_4223_4262_16007#PolymorphicMapType_4223| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4223_4262_16007#PolymorphicMapType_4223| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_4262_11740) ) (! (= (select (|PolymorphicMapType_4223_4262_11740#PolymorphicMapType_4223| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4223_4262_11740#PolymorphicMapType_4223| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_7589_1189) ) (! (= (select (|PolymorphicMapType_4223_4262_1189#PolymorphicMapType_4223| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4223_4262_1189#PolymorphicMapType_4223| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_4275_4276) ) (! (= (select (|PolymorphicMapType_4223_4262_4276#PolymorphicMapType_4223| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4223_4262_4276#PolymorphicMapType_4223| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_4262_53) ) (! (= (select (|PolymorphicMapType_4223_4262_53#PolymorphicMapType_4223| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4223_4262_53#PolymorphicMapType_4223| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4202) (Mask@@21 T@PolymorphicMapType_4223) (n@@3 Int) ) (!  (=> (and (state Heap@@15 Mask@@21) (< AssumeFunctionsAbove 0)) (=> (>= n@@3 0) (= (err1 Heap@@15 n@@3) (ite (<= n@@3 1) 1 (- (|err1'| Heap@@15 (- n@@3 1)) n@@3)))))
 :qid |stdinbpl.292:15|
 :skolemid |29|
 :pattern ( (state Heap@@15 Mask@@21) (err1 Heap@@15 n@@3))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4223) (SummandMask1 T@PolymorphicMapType_4223) (SummandMask2 T@PolymorphicMapType_4223) (o_2@@19 T@Ref) (f_4@@19 T@Field_4262_11873) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4223_4262_16007#PolymorphicMapType_4223| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_4223_4262_16007#PolymorphicMapType_4223| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_4223_4262_16007#PolymorphicMapType_4223| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4223_4262_16007#PolymorphicMapType_4223| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4223_4262_16007#PolymorphicMapType_4223| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4223_4262_16007#PolymorphicMapType_4223| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4223) (SummandMask1@@0 T@PolymorphicMapType_4223) (SummandMask2@@0 T@PolymorphicMapType_4223) (o_2@@20 T@Ref) (f_4@@20 T@Field_4262_11740) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4223_4262_11740#PolymorphicMapType_4223| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_4223_4262_11740#PolymorphicMapType_4223| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_4223_4262_11740#PolymorphicMapType_4223| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4223_4262_11740#PolymorphicMapType_4223| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4223_4262_11740#PolymorphicMapType_4223| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4223_4262_11740#PolymorphicMapType_4223| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4223) (SummandMask1@@1 T@PolymorphicMapType_4223) (SummandMask2@@1 T@PolymorphicMapType_4223) (o_2@@21 T@Ref) (f_4@@21 T@Field_7589_1189) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4223_4262_1189#PolymorphicMapType_4223| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_4223_4262_1189#PolymorphicMapType_4223| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_4223_4262_1189#PolymorphicMapType_4223| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4223_4262_1189#PolymorphicMapType_4223| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4223_4262_1189#PolymorphicMapType_4223| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4223_4262_1189#PolymorphicMapType_4223| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4223) (SummandMask1@@2 T@PolymorphicMapType_4223) (SummandMask2@@2 T@PolymorphicMapType_4223) (o_2@@22 T@Ref) (f_4@@22 T@Field_4275_4276) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4223_4262_4276#PolymorphicMapType_4223| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_4223_4262_4276#PolymorphicMapType_4223| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_4223_4262_4276#PolymorphicMapType_4223| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4223_4262_4276#PolymorphicMapType_4223| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4223_4262_4276#PolymorphicMapType_4223| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4223_4262_4276#PolymorphicMapType_4223| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4223) (SummandMask1@@3 T@PolymorphicMapType_4223) (SummandMask2@@3 T@PolymorphicMapType_4223) (o_2@@23 T@Ref) (f_4@@23 T@Field_4262_53) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4223_4262_53#PolymorphicMapType_4223| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_4223_4262_53#PolymorphicMapType_4223| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_4223_4262_53#PolymorphicMapType_4223| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4223_4262_53#PolymorphicMapType_4223| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4223_4262_53#PolymorphicMapType_4223| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4223_4262_53#PolymorphicMapType_4223| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4202) (Mask@@22 T@PolymorphicMapType_4223) (n@@4 Int) ) (!  (=> (and (state Heap@@16 Mask@@22) (< AssumeFunctionsAbove 1)) (=> (>= n@@4 0) (= (fac Heap@@16 n@@4) (ite (< n@@4 2) n@@4 (* n@@4 (|fac'| Heap@@16 (- n@@4 1)))))))
 :qid |stdinbpl.205:15|
 :skolemid |24|
 :pattern ( (state Heap@@16 Mask@@22) (fac Heap@@16 n@@4))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4202) (Mask@@23 T@PolymorphicMapType_4223) (n@@5 Int) ) (!  (=> (state Heap@@17 Mask@@23) (= (|fac'| Heap@@17 n@@5) (|fac#frame| EmptyFrame n@@5)))
 :qid |stdinbpl.212:15|
 :skolemid |25|
 :pattern ( (state Heap@@17 Mask@@23) (|fac'| Heap@@17 n@@5))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4202) (Mask@@24 T@PolymorphicMapType_4223) (n@@6 Int) ) (!  (=> (state Heap@@18 Mask@@24) (= (|err1'| Heap@@18 n@@6) (|err1#frame| EmptyFrame n@@6)))
 :qid |stdinbpl.299:15|
 :skolemid |30|
 :pattern ( (state Heap@@18 Mask@@24) (|err1'| Heap@@18 n@@6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4202) (Mask@@25 T@PolymorphicMapType_4223) (n@@7 Int) ) (!  (=> (and (state Heap@@19 Mask@@25) (or (< AssumeFunctionsAbove 0) (|err1#trigger| EmptyFrame n@@7))) (=> (>= n@@7 0) (>= (|err1'| Heap@@19 n@@7) 0)))
 :qid |stdinbpl.305:15|
 :skolemid |31|
 :pattern ( (state Heap@@19 Mask@@25) (|err1'| Heap@@19 n@@7))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4202) (Mask@@26 T@PolymorphicMapType_4223) (n@@8 Int) ) (!  (=> (and (state Heap@@20 Mask@@26) (or (< AssumeFunctionsAbove 1) (|fac#trigger| EmptyFrame n@@8))) (=> (>= n@@8 0) (>= (|fac'| Heap@@20 n@@8) 0)))
 :qid |stdinbpl.218:15|
 :skolemid |26|
 :pattern ( (state Heap@@20 Mask@@26) (|fac'| Heap@@20 n@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4202) (o T@Ref) (f_3 T@Field_4262_11740) (v T@FrameType) ) (! (succHeap Heap@@21 (PolymorphicMapType_4202 (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| Heap@@21) (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| Heap@@21) (|PolymorphicMapType_4202_4262_1189#PolymorphicMapType_4202| Heap@@21) (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@21) (store (|PolymorphicMapType_4202_4262_11740#PolymorphicMapType_4202| Heap@@21) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4202 (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| Heap@@21) (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| Heap@@21) (|PolymorphicMapType_4202_4262_1189#PolymorphicMapType_4202| Heap@@21) (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@21) (store (|PolymorphicMapType_4202_4262_11740#PolymorphicMapType_4202| Heap@@21) o f_3 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4202) (o@@0 T@Ref) (f_3@@0 T@Field_4262_11873) (v@@0 T@PolymorphicMapType_4751) ) (! (succHeap Heap@@22 (PolymorphicMapType_4202 (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| Heap@@22) (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| Heap@@22) (|PolymorphicMapType_4202_4262_1189#PolymorphicMapType_4202| Heap@@22) (store (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@22) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4202_4262_11740#PolymorphicMapType_4202| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4202 (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| Heap@@22) (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| Heap@@22) (|PolymorphicMapType_4202_4262_1189#PolymorphicMapType_4202| Heap@@22) (store (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@22) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4202_4262_11740#PolymorphicMapType_4202| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4202) (o@@1 T@Ref) (f_3@@1 T@Field_7589_1189) (v@@1 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_4202 (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| Heap@@23) (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| Heap@@23) (store (|PolymorphicMapType_4202_4262_1189#PolymorphicMapType_4202| Heap@@23) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@23) (|PolymorphicMapType_4202_4262_11740#PolymorphicMapType_4202| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4202 (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| Heap@@23) (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| Heap@@23) (store (|PolymorphicMapType_4202_4262_1189#PolymorphicMapType_4202| Heap@@23) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@23) (|PolymorphicMapType_4202_4262_11740#PolymorphicMapType_4202| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4202) (o@@2 T@Ref) (f_3@@2 T@Field_4275_4276) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_4202 (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| Heap@@24) (store (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| Heap@@24) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4202_4262_1189#PolymorphicMapType_4202| Heap@@24) (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@24) (|PolymorphicMapType_4202_4262_11740#PolymorphicMapType_4202| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4202 (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| Heap@@24) (store (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| Heap@@24) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4202_4262_1189#PolymorphicMapType_4202| Heap@@24) (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@24) (|PolymorphicMapType_4202_4262_11740#PolymorphicMapType_4202| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_4202) (o@@3 T@Ref) (f_3@@3 T@Field_4262_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_4202 (store (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| Heap@@25) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| Heap@@25) (|PolymorphicMapType_4202_4262_1189#PolymorphicMapType_4202| Heap@@25) (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@25) (|PolymorphicMapType_4202_4262_11740#PolymorphicMapType_4202| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4202 (store (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| Heap@@25) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| Heap@@25) (|PolymorphicMapType_4202_4262_1189#PolymorphicMapType_4202| Heap@@25) (|PolymorphicMapType_4202_4262_11917#PolymorphicMapType_4202| Heap@@25) (|PolymorphicMapType_4202_4262_11740#PolymorphicMapType_4202| Heap@@25)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_4275_4276) (Heap@@26 T@PolymorphicMapType_4202) ) (!  (=> (select (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| Heap@@26) o@@4 $allocated) (select (|PolymorphicMapType_4202_2188_53#PolymorphicMapType_4202| Heap@@26) (select (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| Heap@@26) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4202_2191_2192#PolymorphicMapType_4202| Heap@@26) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_4262_11740) (v_1@@0 T@FrameType) (q T@Field_4262_11740) (w@@0 T@FrameType) (r T@Field_4262_11740) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4262_4262 p@@1 v_1@@0 q w@@0) (InsidePredicate_4262_4262 q w@@0 r u)) (InsidePredicate_4262_4262 p@@1 v_1@@0 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4262_4262 p@@1 v_1@@0 q w@@0) (InsidePredicate_4262_4262 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Result@0 () Int)
(declare-fun n@@9 () Int)
(declare-fun Heap@@27 () T@PolymorphicMapType_4202)
(set-info :boogie-vc-id |err1#definedness|)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon5_correct  (=> (and (= Result@0 (ite (<= n@@9 1) 1 (- (err1 Heap@@27 (- n@@9 1)) n@@9))) (= (ControlFlow 0 4) (- 0 3))) (>= Result@0 0))))
(let ((anon7_Else_correct  (=> (and (|err1#trigger| EmptyFrame (- n@@9 1)) (= (ControlFlow 0 6) 4)) anon5_correct)))
(let ((anon6_Then_correct  (=> (and (<= n@@9 1) (= (ControlFlow 0 5) 4)) anon5_correct)))
(let ((anon7_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (>= (- n@@9 1) 0))))
(let ((anon6_Else_correct  (=> (< 1 n@@9) (and (=> (= (ControlFlow 0 7) 2) anon7_Then_correct) (=> (= (ControlFlow 0 7) 6) anon7_Else_correct)))))
(let ((anon0_correct  (=> (state Heap@@27 ZeroMask) (=> (and (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 0)) (and (>= n@@9 0) (state Heap@@27 ZeroMask))) (and (=> (= (ControlFlow 0 8) 5) anon6_Then_correct) (=> (= (ControlFlow 0 8) 7) anon6_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 8) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 3))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid