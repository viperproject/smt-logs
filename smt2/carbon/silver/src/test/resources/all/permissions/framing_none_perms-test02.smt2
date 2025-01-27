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
(declare-sort T@Field_5563_53 0)
(declare-sort T@Field_5576_5577 0)
(declare-sort T@Field_8890_1189 0)
(declare-sort T@Field_5563_16370 0)
(declare-sort T@Field_5563_16237 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5524 0)) (((PolymorphicMapType_5524 (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| (Array T@Ref T@Field_8890_1189 Real)) (|PolymorphicMapType_5524_3007_53#PolymorphicMapType_5524| (Array T@Ref T@Field_5563_53 Real)) (|PolymorphicMapType_5524_3007_5577#PolymorphicMapType_5524| (Array T@Ref T@Field_5576_5577 Real)) (|PolymorphicMapType_5524_3007_16237#PolymorphicMapType_5524| (Array T@Ref T@Field_5563_16237 Real)) (|PolymorphicMapType_5524_3007_20492#PolymorphicMapType_5524| (Array T@Ref T@Field_5563_16370 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6052 0)) (((PolymorphicMapType_6052 (|PolymorphicMapType_6052_5563_53#PolymorphicMapType_6052| (Array T@Ref T@Field_5563_53 Bool)) (|PolymorphicMapType_6052_5563_5577#PolymorphicMapType_6052| (Array T@Ref T@Field_5576_5577 Bool)) (|PolymorphicMapType_6052_5563_1189#PolymorphicMapType_6052| (Array T@Ref T@Field_8890_1189 Bool)) (|PolymorphicMapType_6052_5563_16237#PolymorphicMapType_6052| (Array T@Ref T@Field_5563_16237 Bool)) (|PolymorphicMapType_6052_5563_17548#PolymorphicMapType_6052| (Array T@Ref T@Field_5563_16370 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5503 0)) (((PolymorphicMapType_5503 (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| (Array T@Ref T@Field_5563_53 Bool)) (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| (Array T@Ref T@Field_5576_5577 T@Ref)) (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| (Array T@Ref T@Field_8890_1189 Int)) (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| (Array T@Ref T@Field_5563_16370 T@PolymorphicMapType_6052)) (|PolymorphicMapType_5503_5563_16237#PolymorphicMapType_5503| (Array T@Ref T@Field_5563_16237 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_5563_53)
(declare-fun f_7 () T@Field_8890_1189)
(declare-fun state (T@PolymorphicMapType_5503 T@PolymorphicMapType_5524) Bool)
(declare-fun |fun02'| (T@PolymorphicMapType_5503 T@Ref T@Ref Bool) Int)
(declare-fun |fun02#frame| (T@FrameType T@Ref T@Ref Bool) Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun FullPerm () Real)
(declare-fun NoPerm () Real)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun succHeap (T@PolymorphicMapType_5503 T@PolymorphicMapType_5503) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5503 T@PolymorphicMapType_5503) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5524) Bool)
(declare-fun |fun01'| (T@PolymorphicMapType_5503 T@Ref T@Ref Bool) Int)
(declare-fun dummyFunction_1426 (Int) Bool)
(declare-fun |fun01#triggerStateless| (T@Ref T@Ref Bool) Int)
(declare-fun |fun02#triggerStateless| (T@Ref T@Ref Bool) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_6052)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5503 T@PolymorphicMapType_5503 T@PolymorphicMapType_5524) Bool)
(declare-fun IsPredicateField_5563_16328 (T@Field_5563_16237) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5563 (T@Field_5563_16237) T@Field_5563_16370)
(declare-fun HasDirectPerm_5563_16301 (T@PolymorphicMapType_5524 T@Ref T@Field_5563_16237) Bool)
(declare-fun IsWandField_5563_18075 (T@Field_5563_16237) Bool)
(declare-fun WandMaskField_5563 (T@Field_5563_16237) T@Field_5563_16370)
(declare-fun dummyHeap () T@PolymorphicMapType_5503)
(declare-fun ZeroMask () T@PolymorphicMapType_5524)
(declare-fun InsidePredicate_5563_5563 (T@Field_5563_16237 T@FrameType T@Field_5563_16237 T@FrameType) Bool)
(declare-fun IsPredicateField_3007_1189 (T@Field_8890_1189) Bool)
(declare-fun IsWandField_3007_1189 (T@Field_8890_1189) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3007_21621 (T@Field_5563_16370) Bool)
(declare-fun IsWandField_3007_21637 (T@Field_5563_16370) Bool)
(declare-fun IsPredicateField_3007_5577 (T@Field_5576_5577) Bool)
(declare-fun IsWandField_3007_5577 (T@Field_5576_5577) Bool)
(declare-fun IsPredicateField_3007_53 (T@Field_5563_53) Bool)
(declare-fun IsWandField_3007_53 (T@Field_5563_53) Bool)
(declare-fun HasDirectPerm_5563_22075 (T@PolymorphicMapType_5524 T@Ref T@Field_5563_16370) Bool)
(declare-fun HasDirectPerm_5563_1189 (T@PolymorphicMapType_5524 T@Ref T@Field_8890_1189) Bool)
(declare-fun HasDirectPerm_5563_5577 (T@PolymorphicMapType_5524 T@Ref T@Field_5576_5577) Bool)
(declare-fun HasDirectPerm_5563_53 (T@PolymorphicMapType_5524 T@Ref T@Field_5563_53) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5524 T@PolymorphicMapType_5524 T@PolymorphicMapType_5524) Bool)
(declare-fun fun01 (T@PolymorphicMapType_5503 T@Ref T@Ref Bool) Int)
(declare-fun fun02 (T@PolymorphicMapType_5503 T@Ref T@Ref Bool) Int)
(declare-fun |fun01#frame| (T@FrameType T@Ref T@Ref Bool) Int)
(declare-fun FrameFragment_4230 (T@FrameType) T@FrameType)
(assert (forall ((Heap T@PolymorphicMapType_5503) (Mask T@PolymorphicMapType_5524) (x T@Ref) (y T@Ref) (b_24 Bool) ) (!  (=> (state Heap Mask) (= (|fun02'| Heap x y b_24) (|fun02#frame| (CombineFrames (ConditionalFrame (ite b_24 FullPerm NoPerm) (FrameFragment_1189 (select (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| Heap) x f_7))) (ConditionalFrame (ite  (not b_24) FullPerm NoPerm) (FrameFragment_1189 (select (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| Heap) y f_7)))) x y b_24)))
 :qid |stdinbpl.264:15|
 :skolemid |27|
 :pattern ( (state Heap Mask) (|fun02'| Heap x y b_24))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_5503) (Heap1 T@PolymorphicMapType_5503) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5503) (Mask@@0 T@PolymorphicMapType_5524) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5503) (Heap1@@0 T@PolymorphicMapType_5503) (Heap2 T@PolymorphicMapType_5503) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5503) (x@@0 T@Ref) (y@@0 T@Ref) (b_24@@0 Bool) ) (! (dummyFunction_1426 (|fun01#triggerStateless| x@@0 y@@0 b_24@@0))
 :qid |stdinbpl.199:15|
 :skolemid |23|
 :pattern ( (|fun01'| Heap@@1 x@@0 y@@0 b_24@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5503) (x@@1 T@Ref) (y@@1 T@Ref) (b_24@@1 Bool) ) (! (dummyFunction_1426 (|fun02#triggerStateless| x@@1 y@@1 b_24@@1))
 :qid |stdinbpl.257:15|
 :skolemid |26|
 :pattern ( (|fun02'| Heap@@2 x@@1 y@@1 b_24@@1))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5563_16370) ) (!  (not (select (|PolymorphicMapType_6052_5563_17548#PolymorphicMapType_6052| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6052_5563_17548#PolymorphicMapType_6052| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5563_16237) ) (!  (not (select (|PolymorphicMapType_6052_5563_16237#PolymorphicMapType_6052| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6052_5563_16237#PolymorphicMapType_6052| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8890_1189) ) (!  (not (select (|PolymorphicMapType_6052_5563_1189#PolymorphicMapType_6052| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6052_5563_1189#PolymorphicMapType_6052| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5576_5577) ) (!  (not (select (|PolymorphicMapType_6052_5563_5577#PolymorphicMapType_6052| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6052_5563_5577#PolymorphicMapType_6052| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5563_53) ) (!  (not (select (|PolymorphicMapType_6052_5563_53#PolymorphicMapType_6052| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6052_5563_53#PolymorphicMapType_6052| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5503) (ExhaleHeap T@PolymorphicMapType_5503) (Mask@@1 T@PolymorphicMapType_5524) (pm_f T@Field_5563_16237) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_5563_16301 Mask@@1 null pm_f) (IsPredicateField_5563_16328 pm_f)) (= (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@3) null (PredicateMaskField_5563 pm_f)) (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| ExhaleHeap) null (PredicateMaskField_5563 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (IsPredicateField_5563_16328 pm_f) (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| ExhaleHeap) null (PredicateMaskField_5563 pm_f)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5503) (ExhaleHeap@@0 T@PolymorphicMapType_5503) (Mask@@2 T@PolymorphicMapType_5524) (pm_f@@0 T@Field_5563_16237) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_5563_16301 Mask@@2 null pm_f@@0) (IsWandField_5563_18075 pm_f@@0)) (= (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@4) null (WandMaskField_5563 pm_f@@0)) (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| ExhaleHeap@@0) null (WandMaskField_5563 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (IsWandField_5563_18075 pm_f@@0) (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| ExhaleHeap@@0) null (WandMaskField_5563 pm_f@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5503) (ExhaleHeap@@1 T@PolymorphicMapType_5503) (Mask@@3 T@PolymorphicMapType_5524) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| Heap@@5) o_1 $allocated) (select (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_5563_16237) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5563_5563 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5563_5563 p v_1 p w))
)))
(assert  (not (IsPredicateField_3007_1189 f_7)))
(assert  (not (IsWandField_3007_1189 f_7)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5503) (ExhaleHeap@@2 T@PolymorphicMapType_5503) (Mask@@4 T@PolymorphicMapType_5524) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@6 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_5524) (o_2@@4 T@Ref) (f_4@@4 T@Field_5563_16370) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_5524_3007_20492#PolymorphicMapType_5524| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_3007_21621 f_4@@4))) (not (IsWandField_3007_21637 f_4@@4))) (<= (select (|PolymorphicMapType_5524_3007_20492#PolymorphicMapType_5524| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_5524_3007_20492#PolymorphicMapType_5524| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_5524) (o_2@@5 T@Ref) (f_4@@5 T@Field_5563_16237) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_5524_3007_16237#PolymorphicMapType_5524| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5563_16328 f_4@@5))) (not (IsWandField_5563_18075 f_4@@5))) (<= (select (|PolymorphicMapType_5524_3007_16237#PolymorphicMapType_5524| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_5524_3007_16237#PolymorphicMapType_5524| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_5524) (o_2@@6 T@Ref) (f_4@@6 T@Field_5576_5577) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_5524_3007_5577#PolymorphicMapType_5524| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3007_5577 f_4@@6))) (not (IsWandField_3007_5577 f_4@@6))) (<= (select (|PolymorphicMapType_5524_3007_5577#PolymorphicMapType_5524| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_5524_3007_5577#PolymorphicMapType_5524| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5524) (o_2@@7 T@Ref) (f_4@@7 T@Field_5563_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5524_3007_53#PolymorphicMapType_5524| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3007_53 f_4@@7))) (not (IsWandField_3007_53 f_4@@7))) (<= (select (|PolymorphicMapType_5524_3007_53#PolymorphicMapType_5524| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5524_3007_53#PolymorphicMapType_5524| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5524) (o_2@@8 T@Ref) (f_4@@8 T@Field_8890_1189) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3007_1189 f_4@@8))) (not (IsWandField_3007_1189 f_4@@8))) (<= (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5524) (o_2@@9 T@Ref) (f_4@@9 T@Field_5563_16370) ) (! (= (HasDirectPerm_5563_22075 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5524_3007_20492#PolymorphicMapType_5524| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5563_22075 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5524) (o_2@@10 T@Ref) (f_4@@10 T@Field_5563_16237) ) (! (= (HasDirectPerm_5563_16301 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5524_3007_16237#PolymorphicMapType_5524| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5563_16301 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5524) (o_2@@11 T@Ref) (f_4@@11 T@Field_8890_1189) ) (! (= (HasDirectPerm_5563_1189 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5563_1189 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5524) (o_2@@12 T@Ref) (f_4@@12 T@Field_5576_5577) ) (! (= (HasDirectPerm_5563_5577 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_5524_3007_5577#PolymorphicMapType_5524| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5563_5577 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5524) (o_2@@13 T@Ref) (f_4@@13 T@Field_5563_53) ) (! (= (HasDirectPerm_5563_53 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_5524_3007_53#PolymorphicMapType_5524| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5563_53 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5503) (ExhaleHeap@@3 T@PolymorphicMapType_5503) (Mask@@15 T@PolymorphicMapType_5524) (pm_f@@1 T@Field_5563_16237) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_5563_16301 Mask@@15 null pm_f@@1) (IsPredicateField_5563_16328 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_5563_53) ) (!  (=> (select (|PolymorphicMapType_6052_5563_53#PolymorphicMapType_6052| (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@7) null (PredicateMaskField_5563 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| Heap@@7) o2 f_2) (select (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_5576_5577) ) (!  (=> (select (|PolymorphicMapType_6052_5563_5577#PolymorphicMapType_6052| (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@7) null (PredicateMaskField_5563 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| Heap@@7) o2@@0 f_2@@0) (select (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_8890_1189) ) (!  (=> (select (|PolymorphicMapType_6052_5563_1189#PolymorphicMapType_6052| (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@7) null (PredicateMaskField_5563 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| Heap@@7) o2@@1 f_2@@1) (select (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_5563_16237) ) (!  (=> (select (|PolymorphicMapType_6052_5563_16237#PolymorphicMapType_6052| (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@7) null (PredicateMaskField_5563 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_5503_5563_16237#PolymorphicMapType_5503| Heap@@7) o2@@2 f_2@@2) (select (|PolymorphicMapType_5503_5563_16237#PolymorphicMapType_5503| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5503_5563_16237#PolymorphicMapType_5503| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_5563_16370) ) (!  (=> (select (|PolymorphicMapType_6052_5563_17548#PolymorphicMapType_6052| (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@7) null (PredicateMaskField_5563 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@7) o2@@3 f_2@@3) (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@15) (IsPredicateField_5563_16328 pm_f@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5503) (ExhaleHeap@@4 T@PolymorphicMapType_5503) (Mask@@16 T@PolymorphicMapType_5524) (pm_f@@2 T@Field_5563_16237) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_5563_16301 Mask@@16 null pm_f@@2) (IsWandField_5563_18075 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_5563_53) ) (!  (=> (select (|PolymorphicMapType_6052_5563_53#PolymorphicMapType_6052| (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@8) null (WandMaskField_5563 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| Heap@@8) o2@@4 f_2@@4) (select (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_5576_5577) ) (!  (=> (select (|PolymorphicMapType_6052_5563_5577#PolymorphicMapType_6052| (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@8) null (WandMaskField_5563 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| Heap@@8) o2@@5 f_2@@5) (select (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_8890_1189) ) (!  (=> (select (|PolymorphicMapType_6052_5563_1189#PolymorphicMapType_6052| (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@8) null (WandMaskField_5563 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| Heap@@8) o2@@6 f_2@@6) (select (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_5563_16237) ) (!  (=> (select (|PolymorphicMapType_6052_5563_16237#PolymorphicMapType_6052| (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@8) null (WandMaskField_5563 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_5503_5563_16237#PolymorphicMapType_5503| Heap@@8) o2@@7 f_2@@7) (select (|PolymorphicMapType_5503_5563_16237#PolymorphicMapType_5503| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5503_5563_16237#PolymorphicMapType_5503| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_5563_16370) ) (!  (=> (select (|PolymorphicMapType_6052_5563_17548#PolymorphicMapType_6052| (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@8) null (WandMaskField_5563 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@8) o2@@8 f_2@@8) (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@16) (IsWandField_5563_18075 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5503) (ExhaleHeap@@5 T@PolymorphicMapType_5503) (Mask@@17 T@PolymorphicMapType_5524) (o_1@@0 T@Ref) (f_2@@9 T@Field_5563_16370) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_5563_22075 Mask@@17 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@9) o_1@@0 f_2@@9) (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5503) (ExhaleHeap@@6 T@PolymorphicMapType_5503) (Mask@@18 T@PolymorphicMapType_5524) (o_1@@1 T@Ref) (f_2@@10 T@Field_5563_16237) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_5563_16301 Mask@@18 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_5503_5563_16237#PolymorphicMapType_5503| Heap@@10) o_1@@1 f_2@@10) (select (|PolymorphicMapType_5503_5563_16237#PolymorphicMapType_5503| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_5503_5563_16237#PolymorphicMapType_5503| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5503) (ExhaleHeap@@7 T@PolymorphicMapType_5503) (Mask@@19 T@PolymorphicMapType_5524) (o_1@@2 T@Ref) (f_2@@11 T@Field_8890_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_5563_1189 Mask@@19 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| Heap@@11) o_1@@2 f_2@@11) (select (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5503) (ExhaleHeap@@8 T@PolymorphicMapType_5503) (Mask@@20 T@PolymorphicMapType_5524) (o_1@@3 T@Ref) (f_2@@12 T@Field_5576_5577) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_5563_5577 Mask@@20 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| Heap@@12) o_1@@3 f_2@@12) (select (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5503) (ExhaleHeap@@9 T@PolymorphicMapType_5503) (Mask@@21 T@PolymorphicMapType_5524) (o_1@@4 T@Ref) (f_2@@13 T@Field_5563_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_5563_53 Mask@@21 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| Heap@@13) o_1@@4 f_2@@13) (select (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5563_16370) ) (! (= (select (|PolymorphicMapType_5524_3007_20492#PolymorphicMapType_5524| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5524_3007_20492#PolymorphicMapType_5524| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5563_16237) ) (! (= (select (|PolymorphicMapType_5524_3007_16237#PolymorphicMapType_5524| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5524_3007_16237#PolymorphicMapType_5524| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_5576_5577) ) (! (= (select (|PolymorphicMapType_5524_3007_5577#PolymorphicMapType_5524| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5524_3007_5577#PolymorphicMapType_5524| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_5563_53) ) (! (= (select (|PolymorphicMapType_5524_3007_53#PolymorphicMapType_5524| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5524_3007_53#PolymorphicMapType_5524| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_8890_1189) ) (! (= (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5524) (SummandMask1 T@PolymorphicMapType_5524) (SummandMask2 T@PolymorphicMapType_5524) (o_2@@19 T@Ref) (f_4@@19 T@Field_5563_16370) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5524_3007_20492#PolymorphicMapType_5524| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_5524_3007_20492#PolymorphicMapType_5524| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_5524_3007_20492#PolymorphicMapType_5524| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5524_3007_20492#PolymorphicMapType_5524| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5524_3007_20492#PolymorphicMapType_5524| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5524_3007_20492#PolymorphicMapType_5524| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5524) (SummandMask1@@0 T@PolymorphicMapType_5524) (SummandMask2@@0 T@PolymorphicMapType_5524) (o_2@@20 T@Ref) (f_4@@20 T@Field_5563_16237) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5524_3007_16237#PolymorphicMapType_5524| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_5524_3007_16237#PolymorphicMapType_5524| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_5524_3007_16237#PolymorphicMapType_5524| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5524_3007_16237#PolymorphicMapType_5524| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5524_3007_16237#PolymorphicMapType_5524| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5524_3007_16237#PolymorphicMapType_5524| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5524) (SummandMask1@@1 T@PolymorphicMapType_5524) (SummandMask2@@1 T@PolymorphicMapType_5524) (o_2@@21 T@Ref) (f_4@@21 T@Field_5576_5577) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5524_3007_5577#PolymorphicMapType_5524| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_5524_3007_5577#PolymorphicMapType_5524| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_5524_3007_5577#PolymorphicMapType_5524| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5524_3007_5577#PolymorphicMapType_5524| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5524_3007_5577#PolymorphicMapType_5524| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5524_3007_5577#PolymorphicMapType_5524| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5524) (SummandMask1@@2 T@PolymorphicMapType_5524) (SummandMask2@@2 T@PolymorphicMapType_5524) (o_2@@22 T@Ref) (f_4@@22 T@Field_5563_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5524_3007_53#PolymorphicMapType_5524| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_5524_3007_53#PolymorphicMapType_5524| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_5524_3007_53#PolymorphicMapType_5524| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5524_3007_53#PolymorphicMapType_5524| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5524_3007_53#PolymorphicMapType_5524| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5524_3007_53#PolymorphicMapType_5524| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5524) (SummandMask1@@3 T@PolymorphicMapType_5524) (SummandMask2@@3 T@PolymorphicMapType_5524) (o_2@@23 T@Ref) (f_4@@23 T@Field_8890_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5503) (x@@2 T@Ref) (y@@2 T@Ref) (b_24@@2 Bool) ) (!  (and (= (fun01 Heap@@14 x@@2 y@@2 b_24@@2) (|fun01'| Heap@@14 x@@2 y@@2 b_24@@2)) (dummyFunction_1426 (|fun01#triggerStateless| x@@2 y@@2 b_24@@2)))
 :qid |stdinbpl.195:15|
 :skolemid |22|
 :pattern ( (fun01 Heap@@14 x@@2 y@@2 b_24@@2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5503) (x@@3 T@Ref) (y@@3 T@Ref) (b_24@@3 Bool) ) (!  (and (= (fun02 Heap@@15 x@@3 y@@3 b_24@@3) (|fun02'| Heap@@15 x@@3 y@@3 b_24@@3)) (dummyFunction_1426 (|fun02#triggerStateless| x@@3 y@@3 b_24@@3)))
 :qid |stdinbpl.253:15|
 :skolemid |25|
 :pattern ( (fun02 Heap@@15 x@@3 y@@3 b_24@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5503) (Mask@@22 T@PolymorphicMapType_5524) (x@@4 T@Ref) (y@@4 T@Ref) (b_24@@4 Bool) ) (!  (=> (state Heap@@16 Mask@@22) (= (|fun01'| Heap@@16 x@@4 y@@4 b_24@@4) (|fun01#frame| (FrameFragment_4230 (ite b_24@@4 (FrameFragment_1189 (select (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| Heap@@16) x@@4 f_7)) (FrameFragment_1189 (select (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| Heap@@16) y@@4 f_7)))) x@@4 y@@4 b_24@@4)))
 :qid |stdinbpl.206:15|
 :skolemid |24|
 :pattern ( (state Heap@@16 Mask@@22) (|fun01'| Heap@@16 x@@4 y@@4 b_24@@4))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5503) (o T@Ref) (f_3 T@Field_5563_16237) (v T@FrameType) ) (! (succHeap Heap@@17 (PolymorphicMapType_5503 (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| Heap@@17) (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| Heap@@17) (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| Heap@@17) (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@17) (store (|PolymorphicMapType_5503_5563_16237#PolymorphicMapType_5503| Heap@@17) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5503 (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| Heap@@17) (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| Heap@@17) (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| Heap@@17) (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@17) (store (|PolymorphicMapType_5503_5563_16237#PolymorphicMapType_5503| Heap@@17) o f_3 v)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5503) (o@@0 T@Ref) (f_3@@0 T@Field_5563_16370) (v@@0 T@PolymorphicMapType_6052) ) (! (succHeap Heap@@18 (PolymorphicMapType_5503 (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| Heap@@18) (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| Heap@@18) (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| Heap@@18) (store (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@18) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5503_5563_16237#PolymorphicMapType_5503| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5503 (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| Heap@@18) (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| Heap@@18) (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| Heap@@18) (store (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@18) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5503_5563_16237#PolymorphicMapType_5503| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5503) (o@@1 T@Ref) (f_3@@1 T@Field_8890_1189) (v@@1 Int) ) (! (succHeap Heap@@19 (PolymorphicMapType_5503 (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| Heap@@19) (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| Heap@@19) (store (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| Heap@@19) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@19) (|PolymorphicMapType_5503_5563_16237#PolymorphicMapType_5503| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5503 (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| Heap@@19) (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| Heap@@19) (store (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| Heap@@19) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@19) (|PolymorphicMapType_5503_5563_16237#PolymorphicMapType_5503| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5503) (o@@2 T@Ref) (f_3@@2 T@Field_5576_5577) (v@@2 T@Ref) ) (! (succHeap Heap@@20 (PolymorphicMapType_5503 (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| Heap@@20) (store (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| Heap@@20) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| Heap@@20) (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@20) (|PolymorphicMapType_5503_5563_16237#PolymorphicMapType_5503| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5503 (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| Heap@@20) (store (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| Heap@@20) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| Heap@@20) (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@20) (|PolymorphicMapType_5503_5563_16237#PolymorphicMapType_5503| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5503) (o@@3 T@Ref) (f_3@@3 T@Field_5563_53) (v@@3 Bool) ) (! (succHeap Heap@@21 (PolymorphicMapType_5503 (store (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| Heap@@21) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| Heap@@21) (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| Heap@@21) (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@21) (|PolymorphicMapType_5503_5563_16237#PolymorphicMapType_5503| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5503 (store (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| Heap@@21) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| Heap@@21) (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| Heap@@21) (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@21) (|PolymorphicMapType_5503_5563_16237#PolymorphicMapType_5503| Heap@@21)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_5576_5577) (Heap@@22 T@PolymorphicMapType_5503) ) (!  (=> (select (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| Heap@@22) o@@4 $allocated) (select (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| Heap@@22) (select (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| Heap@@22) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| Heap@@22) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_5563_16237) (v_1@@0 T@FrameType) (q T@Field_5563_16237) (w@@0 T@FrameType) (r T@Field_5563_16237) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5563_5563 p@@1 v_1@@0 q w@@0) (InsidePredicate_5563_5563 q w@@0 r u)) (InsidePredicate_5563_5563 p@@1 v_1@@0 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5563_5563 p@@1 v_1@@0 q w@@0) (InsidePredicate_5563_5563 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun vy@0 () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_5503)
(declare-fun x@@5 () T@Ref)
(declare-fun y@@5 () T@Ref)
(declare-fun Mask@1 () T@PolymorphicMapType_5524)
(declare-fun vx@0 () Int)
(declare-fun Heap@@23 () T@PolymorphicMapType_5503)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun Mask@0 () T@PolymorphicMapType_5524)
(set-info :boogie-vc-id test02)
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
 (=> (= (ControlFlow 0 0) 29) (let ((anon12_Else_correct  (=> (= (ControlFlow 0 22) (- 0 21)) (= vy@0 (fun02 Heap@0 x@@5 y@@5 false)))))
(let ((anon12_Then_correct  (and (=> (= (ControlFlow 0 17) (- 0 20)) (>= NoPerm NoPerm)) (=> (>= NoPerm NoPerm) (and (=> (= (ControlFlow 0 17) (- 0 19)) (=> (< NoPerm NoPerm) (< NoPerm (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| Mask@1) x@@5 f_7)))) (=> (=> (< NoPerm NoPerm) (< NoPerm (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| Mask@1) x@@5 f_7))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (>= FullPerm NoPerm)) (=> (>= FullPerm NoPerm) (=> (= (ControlFlow 0 17) (- 0 16)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| Mask@1) y@@5 f_7))))))))))))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 23) (- 0 24)) (= vx@0 (fun02 Heap@0 x@@5 y@@5 true))) (=> (= vx@0 (fun02 Heap@0 x@@5 y@@5 true)) (=> (state Heap@0 Mask@1) (and (=> (= (ControlFlow 0 23) 17) anon12_Then_correct) (=> (= (ControlFlow 0 23) 22) anon12_Else_correct)))))))
(let ((anon11_Then_correct  (and (=> (= (ControlFlow 0 12) (- 0 15)) (>= FullPerm NoPerm)) (=> (>= FullPerm NoPerm) (and (=> (= (ControlFlow 0 12) (- 0 14)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| Mask@1) x@@5 f_7)))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| Mask@1) x@@5 f_7))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (>= NoPerm NoPerm)) (=> (>= NoPerm NoPerm) (=> (= (ControlFlow 0 12) (- 0 11)) (=> (< NoPerm NoPerm) (< NoPerm (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| Mask@1) y@@5 f_7))))))))))))
(let ((anon10_Else_correct  (=> (and (= vy@0 (fun02 Heap@@23 x@@5 y@@5 false)) (state Heap@@23 Mask@1)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (= FullPerm (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| Mask@1) y@@5 f_7))) (=> (= FullPerm (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| Mask@1) y@@5 f_7)) (=> (and (= Heap@0 (PolymorphicMapType_5503 (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| Heap@@23) (|PolymorphicMapType_5503_2882_2883#PolymorphicMapType_5503| Heap@@23) (store (|PolymorphicMapType_5503_3007_1189#PolymorphicMapType_5503| Heap@@23) y@@5 f_7 0) (|PolymorphicMapType_5503_5563_16414#PolymorphicMapType_5503| Heap@@23) (|PolymorphicMapType_5503_5563_16237#PolymorphicMapType_5503| Heap@@23))) (state Heap@0 Mask@1)) (and (=> (= (ControlFlow 0 25) 12) anon11_Then_correct) (=> (= (ControlFlow 0 25) 23) anon11_Else_correct))))))))
(let ((anon10_Then_correct  (and (=> (= (ControlFlow 0 7) (- 0 10)) (>= NoPerm NoPerm)) (=> (>= NoPerm NoPerm) (and (=> (= (ControlFlow 0 7) (- 0 9)) (=> (< NoPerm NoPerm) (< NoPerm (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| Mask@1) x@@5 f_7)))) (=> (=> (< NoPerm NoPerm) (< NoPerm (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| Mask@1) x@@5 f_7))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (>= FullPerm NoPerm)) (=> (>= FullPerm NoPerm) (=> (= (ControlFlow 0 7) (- 0 6)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| Mask@1) y@@5 f_7))))))))))))
(let ((anon9_Else_correct  (=> (and (= vx@0 (fun02 Heap@@23 x@@5 y@@5 true)) (state Heap@@23 Mask@1)) (and (=> (= (ControlFlow 0 27) 7) anon10_Then_correct) (=> (= (ControlFlow 0 27) 25) anon10_Else_correct)))))
(let ((anon9_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (>= FullPerm NoPerm)) (=> (>= FullPerm NoPerm) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| Mask@1) x@@5 f_7)))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| Mask@1) x@@5 f_7))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (>= NoPerm NoPerm)) (=> (>= NoPerm NoPerm) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm NoPerm) (< NoPerm (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| Mask@1) y@@5 f_7))))))))))))
(let ((anon0_correct  (=> (and (and (state Heap@@23 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| Heap@@23) x@@5 $allocated))) (=> (and (and (and (select (|PolymorphicMapType_5503_2879_53#PolymorphicMapType_5503| Heap@@23) y@@5 $allocated) (not (= x@@5 null))) (and (= Mask@0 (PolymorphicMapType_5524 (store (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| ZeroMask) x@@5 f_7 (+ (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| ZeroMask) x@@5 f_7) FullPerm)) (|PolymorphicMapType_5524_3007_53#PolymorphicMapType_5524| ZeroMask) (|PolymorphicMapType_5524_3007_5577#PolymorphicMapType_5524| ZeroMask) (|PolymorphicMapType_5524_3007_16237#PolymorphicMapType_5524| ZeroMask) (|PolymorphicMapType_5524_3007_20492#PolymorphicMapType_5524| ZeroMask))) (state Heap@@23 Mask@0))) (and (and (not (= y@@5 null)) (= Mask@1 (PolymorphicMapType_5524 (store (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| Mask@0) y@@5 f_7 (+ (select (|PolymorphicMapType_5524_3007_1189#PolymorphicMapType_5524| Mask@0) y@@5 f_7) FullPerm)) (|PolymorphicMapType_5524_3007_53#PolymorphicMapType_5524| Mask@0) (|PolymorphicMapType_5524_3007_5577#PolymorphicMapType_5524| Mask@0) (|PolymorphicMapType_5524_3007_16237#PolymorphicMapType_5524| Mask@0) (|PolymorphicMapType_5524_3007_20492#PolymorphicMapType_5524| Mask@0)))) (and (state Heap@@23 Mask@1) (state Heap@@23 Mask@1)))) (and (=> (= (ControlFlow 0 28) 2) anon9_Then_correct) (=> (= (ControlFlow 0 28) 27) anon9_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 29) 28) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 22) (- 21))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
