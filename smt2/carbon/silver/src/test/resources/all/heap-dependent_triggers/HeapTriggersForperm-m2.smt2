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
(declare-sort T@Field_8383_53 0)
(declare-sort T@Field_8396_8397 0)
(declare-sort T@Field_14567_3283 0)
(declare-sort T@Field_5207_21525 0)
(declare-sort T@Field_5207_21392 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_8344 0)) (((PolymorphicMapType_8344 (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| (Array T@Ref T@Field_14567_3283 Real)) (|PolymorphicMapType_8344_5207_53#PolymorphicMapType_8344| (Array T@Ref T@Field_8383_53 Real)) (|PolymorphicMapType_8344_5207_8397#PolymorphicMapType_8344| (Array T@Ref T@Field_8396_8397 Real)) (|PolymorphicMapType_8344_5207_21392#PolymorphicMapType_8344| (Array T@Ref T@Field_5207_21392 Real)) (|PolymorphicMapType_8344_5207_25647#PolymorphicMapType_8344| (Array T@Ref T@Field_5207_21525 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8872 0)) (((PolymorphicMapType_8872 (|PolymorphicMapType_8872_8383_53#PolymorphicMapType_8872| (Array T@Ref T@Field_8383_53 Bool)) (|PolymorphicMapType_8872_8383_8397#PolymorphicMapType_8872| (Array T@Ref T@Field_8396_8397 Bool)) (|PolymorphicMapType_8872_8383_3283#PolymorphicMapType_8872| (Array T@Ref T@Field_14567_3283 Bool)) (|PolymorphicMapType_8872_8383_21392#PolymorphicMapType_8872| (Array T@Ref T@Field_5207_21392 Bool)) (|PolymorphicMapType_8872_8383_22703#PolymorphicMapType_8872| (Array T@Ref T@Field_5207_21525 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8323 0)) (((PolymorphicMapType_8323 (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| (Array T@Ref T@Field_8383_53 Bool)) (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| (Array T@Ref T@Field_8396_8397 T@Ref)) (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| (Array T@Ref T@Field_14567_3283 Int)) (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| (Array T@Ref T@Field_5207_21525 T@PolymorphicMapType_8872)) (|PolymorphicMapType_8323_8383_21392#PolymorphicMapType_8323| (Array T@Ref T@Field_5207_21392 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_8383_53)
(declare-fun f_7 () T@Field_14567_3283)
(declare-fun succHeap (T@PolymorphicMapType_8323 T@PolymorphicMapType_8323) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8323 T@PolymorphicMapType_8323) Bool)
(declare-fun state (T@PolymorphicMapType_8323 T@PolymorphicMapType_8344) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8344) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8872)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8323 T@PolymorphicMapType_8323 T@PolymorphicMapType_8344) Bool)
(declare-fun IsPredicateField_5207_21483 (T@Field_5207_21392) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5207 (T@Field_5207_21392) T@Field_5207_21525)
(declare-fun HasDirectPerm_5207_21456 (T@PolymorphicMapType_8344 T@Ref T@Field_5207_21392) Bool)
(declare-fun IsWandField_5207_23230 (T@Field_5207_21392) Bool)
(declare-fun WandMaskField_5207 (T@Field_5207_21392) T@Field_5207_21525)
(declare-fun dummyHeap () T@PolymorphicMapType_8323)
(declare-fun ZeroMask () T@PolymorphicMapType_8344)
(declare-fun InsidePredicate_8383_8383 (T@Field_5207_21392 T@FrameType T@Field_5207_21392 T@FrameType) Bool)
(declare-fun IsPredicateField_5207_3283 (T@Field_14567_3283) Bool)
(declare-fun IsWandField_5207_3283 (T@Field_14567_3283) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5207_26776 (T@Field_5207_21525) Bool)
(declare-fun IsWandField_5207_26792 (T@Field_5207_21525) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5207_8397 (T@Field_8396_8397) Bool)
(declare-fun IsWandField_5207_8397 (T@Field_8396_8397) Bool)
(declare-fun IsPredicateField_5207_53 (T@Field_8383_53) Bool)
(declare-fun IsWandField_5207_53 (T@Field_8383_53) Bool)
(declare-fun HasDirectPerm_5207_27230 (T@PolymorphicMapType_8344 T@Ref T@Field_5207_21525) Bool)
(declare-fun HasDirectPerm_5207_8397 (T@PolymorphicMapType_8344 T@Ref T@Field_8396_8397) Bool)
(declare-fun HasDirectPerm_5207_53 (T@PolymorphicMapType_8344 T@Ref T@Field_8383_53) Bool)
(declare-fun HasDirectPerm_5207_3283 (T@PolymorphicMapType_8344 T@Ref T@Field_14567_3283) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8344 T@PolymorphicMapType_8344 T@PolymorphicMapType_8344) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_8323) (Heap1 T@PolymorphicMapType_8323) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8323) (Mask T@PolymorphicMapType_8344) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8323) (Heap1@@0 T@PolymorphicMapType_8323) (Heap2 T@PolymorphicMapType_8323) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5207_21525) ) (!  (not (select (|PolymorphicMapType_8872_8383_22703#PolymorphicMapType_8872| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8872_8383_22703#PolymorphicMapType_8872| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5207_21392) ) (!  (not (select (|PolymorphicMapType_8872_8383_21392#PolymorphicMapType_8872| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8872_8383_21392#PolymorphicMapType_8872| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14567_3283) ) (!  (not (select (|PolymorphicMapType_8872_8383_3283#PolymorphicMapType_8872| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8872_8383_3283#PolymorphicMapType_8872| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8396_8397) ) (!  (not (select (|PolymorphicMapType_8872_8383_8397#PolymorphicMapType_8872| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8872_8383_8397#PolymorphicMapType_8872| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8383_53) ) (!  (not (select (|PolymorphicMapType_8872_8383_53#PolymorphicMapType_8872| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8872_8383_53#PolymorphicMapType_8872| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.297:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.300:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8323) (ExhaleHeap T@PolymorphicMapType_8323) (Mask@@0 T@PolymorphicMapType_8344) (pm_f_10 T@Field_5207_21392) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5207_21456 Mask@@0 null pm_f_10) (IsPredicateField_5207_21483 pm_f_10)) (= (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@0) null (PredicateMaskField_5207 pm_f_10)) (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| ExhaleHeap) null (PredicateMaskField_5207 pm_f_10)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5207_21483 pm_f_10) (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| ExhaleHeap) null (PredicateMaskField_5207 pm_f_10)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8323) (ExhaleHeap@@0 T@PolymorphicMapType_8323) (Mask@@1 T@PolymorphicMapType_8344) (pm_f_10@@0 T@Field_5207_21392) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5207_21456 Mask@@1 null pm_f_10@@0) (IsWandField_5207_23230 pm_f_10@@0)) (= (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@1) null (WandMaskField_5207 pm_f_10@@0)) (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| ExhaleHeap@@0) null (WandMaskField_5207 pm_f_10@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5207_23230 pm_f_10@@0) (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| ExhaleHeap@@0) null (WandMaskField_5207 pm_f_10@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8323) (ExhaleHeap@@1 T@PolymorphicMapType_8323) (Mask@@2 T@PolymorphicMapType_8344) (o_23 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| Heap@@2) o_23 $allocated) (select (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| ExhaleHeap@@1) o_23 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| ExhaleHeap@@1) o_23 $allocated))
)))
(assert (forall ((p T@Field_5207_21392) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8383_8383 p v_1 p w))
 :qid |stdinbpl.195:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8383_8383 p v_1 p w))
)))
(assert  (not (IsPredicateField_5207_3283 f_7)))
(assert  (not (IsWandField_5207_3283 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8323) (ExhaleHeap@@2 T@PolymorphicMapType_8323) (Mask@@3 T@PolymorphicMapType_8344) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_8344) (o_2@@4 T@Ref) (f_4@@4 T@Field_5207_21525) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_8344_5207_25647#PolymorphicMapType_8344| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_5207_26776 f_4@@4))) (not (IsWandField_5207_26792 f_4@@4))) (<= (select (|PolymorphicMapType_8344_5207_25647#PolymorphicMapType_8344| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_8344_5207_25647#PolymorphicMapType_8344| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_8344) (o_2@@5 T@Ref) (f_4@@5 T@Field_5207_21392) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_8344_5207_21392#PolymorphicMapType_8344| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_5207_21483 f_4@@5))) (not (IsWandField_5207_23230 f_4@@5))) (<= (select (|PolymorphicMapType_8344_5207_21392#PolymorphicMapType_8344| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_8344_5207_21392#PolymorphicMapType_8344| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_8344) (o_2@@6 T@Ref) (f_4@@6 T@Field_8396_8397) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_8344_5207_8397#PolymorphicMapType_8344| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5207_8397 f_4@@6))) (not (IsWandField_5207_8397 f_4@@6))) (<= (select (|PolymorphicMapType_8344_5207_8397#PolymorphicMapType_8344| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_8344_5207_8397#PolymorphicMapType_8344| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_8344) (o_2@@7 T@Ref) (f_4@@7 T@Field_8383_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_8344_5207_53#PolymorphicMapType_8344| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5207_53 f_4@@7))) (not (IsWandField_5207_53 f_4@@7))) (<= (select (|PolymorphicMapType_8344_5207_53#PolymorphicMapType_8344| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_8344_5207_53#PolymorphicMapType_8344| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8344) (o_2@@8 T@Ref) (f_4@@8 T@Field_14567_3283) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5207_3283 f_4@@8))) (not (IsWandField_5207_3283 f_4@@8))) (<= (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8344) (o_2@@9 T@Ref) (f_4@@9 T@Field_5207_21525) ) (! (= (HasDirectPerm_5207_27230 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_8344_5207_25647#PolymorphicMapType_8344| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5207_27230 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8344) (o_2@@10 T@Ref) (f_4@@10 T@Field_5207_21392) ) (! (= (HasDirectPerm_5207_21456 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_8344_5207_21392#PolymorphicMapType_8344| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5207_21456 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8344) (o_2@@11 T@Ref) (f_4@@11 T@Field_8396_8397) ) (! (= (HasDirectPerm_5207_8397 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_8344_5207_8397#PolymorphicMapType_8344| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5207_8397 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8344) (o_2@@12 T@Ref) (f_4@@12 T@Field_8383_53) ) (! (= (HasDirectPerm_5207_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_8344_5207_53#PolymorphicMapType_8344| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5207_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8344) (o_2@@13 T@Ref) (f_4@@13 T@Field_14567_3283) ) (! (= (HasDirectPerm_5207_3283 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5207_3283 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8323) (ExhaleHeap@@3 T@PolymorphicMapType_8323) (Mask@@14 T@PolymorphicMapType_8344) (pm_f_10@@1 T@Field_5207_21392) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_5207_21456 Mask@@14 null pm_f_10@@1) (IsPredicateField_5207_21483 pm_f_10@@1)) (and (and (and (and (forall ((o2_10 T@Ref) (f_15 T@Field_8383_53) ) (!  (=> (select (|PolymorphicMapType_8872_8383_53#PolymorphicMapType_8872| (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@4) null (PredicateMaskField_5207 pm_f_10@@1))) o2_10 f_15) (= (select (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| Heap@@4) o2_10 f_15) (select (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| ExhaleHeap@@3) o2_10 f_15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| ExhaleHeap@@3) o2_10 f_15))
)) (forall ((o2_10@@0 T@Ref) (f_15@@0 T@Field_8396_8397) ) (!  (=> (select (|PolymorphicMapType_8872_8383_8397#PolymorphicMapType_8872| (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@4) null (PredicateMaskField_5207 pm_f_10@@1))) o2_10@@0 f_15@@0) (= (select (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| Heap@@4) o2_10@@0 f_15@@0) (select (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| ExhaleHeap@@3) o2_10@@0 f_15@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| ExhaleHeap@@3) o2_10@@0 f_15@@0))
))) (forall ((o2_10@@1 T@Ref) (f_15@@1 T@Field_14567_3283) ) (!  (=> (select (|PolymorphicMapType_8872_8383_3283#PolymorphicMapType_8872| (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@4) null (PredicateMaskField_5207 pm_f_10@@1))) o2_10@@1 f_15@@1) (= (select (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@4) o2_10@@1 f_15@@1) (select (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| ExhaleHeap@@3) o2_10@@1 f_15@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| ExhaleHeap@@3) o2_10@@1 f_15@@1))
))) (forall ((o2_10@@2 T@Ref) (f_15@@2 T@Field_5207_21392) ) (!  (=> (select (|PolymorphicMapType_8872_8383_21392#PolymorphicMapType_8872| (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@4) null (PredicateMaskField_5207 pm_f_10@@1))) o2_10@@2 f_15@@2) (= (select (|PolymorphicMapType_8323_8383_21392#PolymorphicMapType_8323| Heap@@4) o2_10@@2 f_15@@2) (select (|PolymorphicMapType_8323_8383_21392#PolymorphicMapType_8323| ExhaleHeap@@3) o2_10@@2 f_15@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8323_8383_21392#PolymorphicMapType_8323| ExhaleHeap@@3) o2_10@@2 f_15@@2))
))) (forall ((o2_10@@3 T@Ref) (f_15@@3 T@Field_5207_21525) ) (!  (=> (select (|PolymorphicMapType_8872_8383_22703#PolymorphicMapType_8872| (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@4) null (PredicateMaskField_5207 pm_f_10@@1))) o2_10@@3 f_15@@3) (= (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@4) o2_10@@3 f_15@@3) (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| ExhaleHeap@@3) o2_10@@3 f_15@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| ExhaleHeap@@3) o2_10@@3 f_15@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_5207_21483 pm_f_10@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8323) (ExhaleHeap@@4 T@PolymorphicMapType_8323) (Mask@@15 T@PolymorphicMapType_8344) (pm_f_10@@2 T@Field_5207_21392) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_5207_21456 Mask@@15 null pm_f_10@@2) (IsWandField_5207_23230 pm_f_10@@2)) (and (and (and (and (forall ((o2_10@@4 T@Ref) (f_15@@4 T@Field_8383_53) ) (!  (=> (select (|PolymorphicMapType_8872_8383_53#PolymorphicMapType_8872| (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@5) null (WandMaskField_5207 pm_f_10@@2))) o2_10@@4 f_15@@4) (= (select (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| Heap@@5) o2_10@@4 f_15@@4) (select (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| ExhaleHeap@@4) o2_10@@4 f_15@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| ExhaleHeap@@4) o2_10@@4 f_15@@4))
)) (forall ((o2_10@@5 T@Ref) (f_15@@5 T@Field_8396_8397) ) (!  (=> (select (|PolymorphicMapType_8872_8383_8397#PolymorphicMapType_8872| (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@5) null (WandMaskField_5207 pm_f_10@@2))) o2_10@@5 f_15@@5) (= (select (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| Heap@@5) o2_10@@5 f_15@@5) (select (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| ExhaleHeap@@4) o2_10@@5 f_15@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| ExhaleHeap@@4) o2_10@@5 f_15@@5))
))) (forall ((o2_10@@6 T@Ref) (f_15@@6 T@Field_14567_3283) ) (!  (=> (select (|PolymorphicMapType_8872_8383_3283#PolymorphicMapType_8872| (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@5) null (WandMaskField_5207 pm_f_10@@2))) o2_10@@6 f_15@@6) (= (select (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@5) o2_10@@6 f_15@@6) (select (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| ExhaleHeap@@4) o2_10@@6 f_15@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| ExhaleHeap@@4) o2_10@@6 f_15@@6))
))) (forall ((o2_10@@7 T@Ref) (f_15@@7 T@Field_5207_21392) ) (!  (=> (select (|PolymorphicMapType_8872_8383_21392#PolymorphicMapType_8872| (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@5) null (WandMaskField_5207 pm_f_10@@2))) o2_10@@7 f_15@@7) (= (select (|PolymorphicMapType_8323_8383_21392#PolymorphicMapType_8323| Heap@@5) o2_10@@7 f_15@@7) (select (|PolymorphicMapType_8323_8383_21392#PolymorphicMapType_8323| ExhaleHeap@@4) o2_10@@7 f_15@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8323_8383_21392#PolymorphicMapType_8323| ExhaleHeap@@4) o2_10@@7 f_15@@7))
))) (forall ((o2_10@@8 T@Ref) (f_15@@8 T@Field_5207_21525) ) (!  (=> (select (|PolymorphicMapType_8872_8383_22703#PolymorphicMapType_8872| (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@5) null (WandMaskField_5207 pm_f_10@@2))) o2_10@@8 f_15@@8) (= (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@5) o2_10@@8 f_15@@8) (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| ExhaleHeap@@4) o2_10@@8 f_15@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| ExhaleHeap@@4) o2_10@@8 f_15@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_5207_23230 pm_f_10@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.183:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8323) (ExhaleHeap@@5 T@PolymorphicMapType_8323) (Mask@@16 T@PolymorphicMapType_8344) (o_23@@0 T@Ref) (f_15@@9 T@Field_5207_21525) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_5207_27230 Mask@@16 o_23@@0 f_15@@9) (= (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@6) o_23@@0 f_15@@9) (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| ExhaleHeap@@5) o_23@@0 f_15@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| ExhaleHeap@@5) o_23@@0 f_15@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8323) (ExhaleHeap@@6 T@PolymorphicMapType_8323) (Mask@@17 T@PolymorphicMapType_8344) (o_23@@1 T@Ref) (f_15@@10 T@Field_5207_21392) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_5207_21456 Mask@@17 o_23@@1 f_15@@10) (= (select (|PolymorphicMapType_8323_8383_21392#PolymorphicMapType_8323| Heap@@7) o_23@@1 f_15@@10) (select (|PolymorphicMapType_8323_8383_21392#PolymorphicMapType_8323| ExhaleHeap@@6) o_23@@1 f_15@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_8323_8383_21392#PolymorphicMapType_8323| ExhaleHeap@@6) o_23@@1 f_15@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8323) (ExhaleHeap@@7 T@PolymorphicMapType_8323) (Mask@@18 T@PolymorphicMapType_8344) (o_23@@2 T@Ref) (f_15@@11 T@Field_8396_8397) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_5207_8397 Mask@@18 o_23@@2 f_15@@11) (= (select (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| Heap@@8) o_23@@2 f_15@@11) (select (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| ExhaleHeap@@7) o_23@@2 f_15@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| ExhaleHeap@@7) o_23@@2 f_15@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8323) (ExhaleHeap@@8 T@PolymorphicMapType_8323) (Mask@@19 T@PolymorphicMapType_8344) (o_23@@3 T@Ref) (f_15@@12 T@Field_8383_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_5207_53 Mask@@19 o_23@@3 f_15@@12) (= (select (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| Heap@@9) o_23@@3 f_15@@12) (select (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| ExhaleHeap@@8) o_23@@3 f_15@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| ExhaleHeap@@8) o_23@@3 f_15@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8323) (ExhaleHeap@@9 T@PolymorphicMapType_8323) (Mask@@20 T@PolymorphicMapType_8344) (o_23@@4 T@Ref) (f_15@@13 T@Field_14567_3283) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_5207_3283 Mask@@20 o_23@@4 f_15@@13) (= (select (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@10) o_23@@4 f_15@@13) (select (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| ExhaleHeap@@9) o_23@@4 f_15@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| ExhaleHeap@@9) o_23@@4 f_15@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5207_21525) ) (! (= (select (|PolymorphicMapType_8344_5207_25647#PolymorphicMapType_8344| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8344_5207_25647#PolymorphicMapType_8344| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5207_21392) ) (! (= (select (|PolymorphicMapType_8344_5207_21392#PolymorphicMapType_8344| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8344_5207_21392#PolymorphicMapType_8344| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_8396_8397) ) (! (= (select (|PolymorphicMapType_8344_5207_8397#PolymorphicMapType_8344| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8344_5207_8397#PolymorphicMapType_8344| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_8383_53) ) (! (= (select (|PolymorphicMapType_8344_5207_53#PolymorphicMapType_8344| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8344_5207_53#PolymorphicMapType_8344| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_14567_3283) ) (! (= (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8344) (SummandMask1 T@PolymorphicMapType_8344) (SummandMask2 T@PolymorphicMapType_8344) (o_2@@19 T@Ref) (f_4@@19 T@Field_5207_21525) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8344_5207_25647#PolymorphicMapType_8344| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_8344_5207_25647#PolymorphicMapType_8344| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_8344_5207_25647#PolymorphicMapType_8344| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8344_5207_25647#PolymorphicMapType_8344| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8344_5207_25647#PolymorphicMapType_8344| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8344_5207_25647#PolymorphicMapType_8344| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8344) (SummandMask1@@0 T@PolymorphicMapType_8344) (SummandMask2@@0 T@PolymorphicMapType_8344) (o_2@@20 T@Ref) (f_4@@20 T@Field_5207_21392) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8344_5207_21392#PolymorphicMapType_8344| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_8344_5207_21392#PolymorphicMapType_8344| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_8344_5207_21392#PolymorphicMapType_8344| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8344_5207_21392#PolymorphicMapType_8344| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8344_5207_21392#PolymorphicMapType_8344| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8344_5207_21392#PolymorphicMapType_8344| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8344) (SummandMask1@@1 T@PolymorphicMapType_8344) (SummandMask2@@1 T@PolymorphicMapType_8344) (o_2@@21 T@Ref) (f_4@@21 T@Field_8396_8397) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8344_5207_8397#PolymorphicMapType_8344| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_8344_5207_8397#PolymorphicMapType_8344| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_8344_5207_8397#PolymorphicMapType_8344| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8344_5207_8397#PolymorphicMapType_8344| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8344_5207_8397#PolymorphicMapType_8344| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8344_5207_8397#PolymorphicMapType_8344| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8344) (SummandMask1@@2 T@PolymorphicMapType_8344) (SummandMask2@@2 T@PolymorphicMapType_8344) (o_2@@22 T@Ref) (f_4@@22 T@Field_8383_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8344_5207_53#PolymorphicMapType_8344| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_8344_5207_53#PolymorphicMapType_8344| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_8344_5207_53#PolymorphicMapType_8344| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8344_5207_53#PolymorphicMapType_8344| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8344_5207_53#PolymorphicMapType_8344| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8344_5207_53#PolymorphicMapType_8344| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8344) (SummandMask1@@3 T@PolymorphicMapType_8344) (SummandMask2@@3 T@PolymorphicMapType_8344) (o_2@@23 T@Ref) (f_4@@23 T@Field_14567_3283) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8323) (o_4 T@Ref) (f_25 T@Field_5207_21392) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_8323 (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| Heap@@11) (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| Heap@@11) (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@11) (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@11) (store (|PolymorphicMapType_8323_8383_21392#PolymorphicMapType_8323| Heap@@11) o_4 f_25 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8323 (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| Heap@@11) (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| Heap@@11) (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@11) (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@11) (store (|PolymorphicMapType_8323_8383_21392#PolymorphicMapType_8323| Heap@@11) o_4 f_25 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8323) (o_4@@0 T@Ref) (f_25@@0 T@Field_5207_21525) (v@@0 T@PolymorphicMapType_8872) ) (! (succHeap Heap@@12 (PolymorphicMapType_8323 (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| Heap@@12) (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| Heap@@12) (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@12) (store (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@12) o_4@@0 f_25@@0 v@@0) (|PolymorphicMapType_8323_8383_21392#PolymorphicMapType_8323| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8323 (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| Heap@@12) (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| Heap@@12) (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@12) (store (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@12) o_4@@0 f_25@@0 v@@0) (|PolymorphicMapType_8323_8383_21392#PolymorphicMapType_8323| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8323) (o_4@@1 T@Ref) (f_25@@1 T@Field_14567_3283) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_8323 (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| Heap@@13) (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| Heap@@13) (store (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@13) o_4@@1 f_25@@1 v@@1) (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@13) (|PolymorphicMapType_8323_8383_21392#PolymorphicMapType_8323| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8323 (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| Heap@@13) (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| Heap@@13) (store (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@13) o_4@@1 f_25@@1 v@@1) (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@13) (|PolymorphicMapType_8323_8383_21392#PolymorphicMapType_8323| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8323) (o_4@@2 T@Ref) (f_25@@2 T@Field_8396_8397) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_8323 (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| Heap@@14) (store (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| Heap@@14) o_4@@2 f_25@@2 v@@2) (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@14) (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@14) (|PolymorphicMapType_8323_8383_21392#PolymorphicMapType_8323| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8323 (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| Heap@@14) (store (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| Heap@@14) o_4@@2 f_25@@2 v@@2) (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@14) (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@14) (|PolymorphicMapType_8323_8383_21392#PolymorphicMapType_8323| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8323) (o_4@@3 T@Ref) (f_25@@3 T@Field_8383_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_8323 (store (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| Heap@@15) o_4@@3 f_25@@3 v@@3) (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| Heap@@15) (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@15) (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@15) (|PolymorphicMapType_8323_8383_21392#PolymorphicMapType_8323| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8323 (store (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| Heap@@15) o_4@@3 f_25@@3 v@@3) (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| Heap@@15) (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@15) (|PolymorphicMapType_8323_5207_21569#PolymorphicMapType_8323| Heap@@15) (|PolymorphicMapType_8323_8383_21392#PolymorphicMapType_8323| Heap@@15)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.295:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.296:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_4@@4 T@Ref) (f_9 T@Field_8396_8397) (Heap@@16 T@PolymorphicMapType_8323) ) (!  (=> (select (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| Heap@@16) o_4@@4 $allocated) (select (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| Heap@@16) (select (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| Heap@@16) o_4@@4 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8323_4905_4906#PolymorphicMapType_8323| Heap@@16) o_4@@4 f_9))
)))
(assert (forall ((p@@1 T@Field_5207_21392) (v_1@@0 T@FrameType) (q T@Field_5207_21392) (w@@0 T@FrameType) (r T@Field_5207_21392) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8383_8383 p@@1 v_1@@0 q w@@0) (InsidePredicate_8383_8383 q w@@0 r u)) (InsidePredicate_8383_8383 p@@1 v_1@@0 r u))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8383_8383 p@@1 v_1@@0 q w@@0) (InsidePredicate_8383_8383 q w@@0 r u))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.301:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun xs () (Array T@Ref Bool))
(declare-fun x_18 () T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_8344)
(declare-fun Heap@@17 () T@PolymorphicMapType_8323)
(declare-fun x_29 () T@Ref)
(declare-fun x_3 () T@Ref)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) T@Ref)
(declare-fun y () T@Ref)
(set-info :boogie-vc-id m2)
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
 (=> (= (ControlFlow 0 0) 25) (let ((anon16_correct true))
(let ((anon26_Else_correct  (=> (and (not (select xs x_18)) (= (ControlFlow 0 17) 13)) anon16_correct)))
(let ((anon26_Then_correct  (=> (select xs x_18) (and (=> (= (ControlFlow 0 15) (- 0 16)) (HasDirectPerm_5207_3283 QPMask@0 x_18 f_7)) (=> (HasDirectPerm_5207_3283 QPMask@0 x_18 f_7) (=> (= (ControlFlow 0 15) 13) anon16_correct))))))
(let ((anon25_Then_correct  (=> (HasDirectPerm_5207_3283 QPMask@0 x_18 f_7) (and (=> (= (ControlFlow 0 18) (- 0 19)) (HasDirectPerm_5207_3283 QPMask@0 x_18 f_7)) (=> (HasDirectPerm_5207_3283 QPMask@0 x_18 f_7) (and (=> (= (ControlFlow 0 18) 15) anon26_Then_correct) (=> (= (ControlFlow 0 18) 17) anon26_Else_correct)))))))
(let ((anon25_Else_correct  (=> (and (not (HasDirectPerm_5207_3283 QPMask@0 x_18 f_7)) (= (ControlFlow 0 14) 13)) anon16_correct)))
(let ((anon24_Else_correct  (=> (= (ControlFlow 0 12) (- 0 11)) (forall ((x_8 T@Ref) ) (!  (=> (HasDirectPerm_5207_3283 QPMask@0 x_8 f_7) (=> (select xs x_8) (not (= (select (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@17) x_8 f_7) 0))))
 :qid |stdinbpl.743:15|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| QPMask@0) x_8 f_7))
 :pattern ( (select (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@17) x_8 f_7))
)))))
(let ((anon22_Else_correct  (=> (forall ((x_6 T@Ref) ) (!  (=> (select xs x_6) (not (= (select (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@17) x_6 f_7) 0)))
 :qid |stdinbpl.719:20|
 :skolemid |110|
 :pattern ( (select (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@17) x_6 f_7))
)) (=> (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0)) (and (and (=> (= (ControlFlow 0 20) 12) anon24_Else_correct) (=> (= (ControlFlow 0 20) 18) anon25_Then_correct)) (=> (= (ControlFlow 0 20) 14) anon25_Else_correct))))))
(let ((anon11_correct true))
(let ((anon23_Else_correct  (=> (and (not (select xs x_29)) (= (ControlFlow 0 10) 7)) anon11_correct)))
(let ((anon23_Then_correct  (=> (select xs x_29) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_5207_3283 QPMask@0 x_29 f_7)) (=> (HasDirectPerm_5207_3283 QPMask@0 x_29 f_7) (=> (= (ControlFlow 0 8) 7) anon11_correct))))))
(let ((anon20_Else_correct  (=> (and (forall ((x_4_1 T@Ref) ) (!  (=> (select xs x_4_1) (<= FullPerm (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| QPMask@0) x_4_1 f_7)))
 :qid |stdinbpl.703:20|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@17) x_4_1 f_7))
)) (state Heap@@17 QPMask@0)) (and (and (=> (= (ControlFlow 0 21) 20) anon22_Else_correct) (=> (= (ControlFlow 0 21) 8) anon23_Then_correct)) (=> (= (ControlFlow 0 21) 10) anon23_Else_correct)))))
(let ((anon7_correct true))
(let ((anon21_Else_correct  (=> (and (not (select xs x_3)) (= (ControlFlow 0 6) 3)) anon7_correct)))
(let ((anon21_Then_correct  (=> (select xs x_3) (and (=> (= (ControlFlow 0 4) (- 0 5)) (<= FullPerm (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| QPMask@0) x_3 f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| QPMask@0) x_3 f_7)) (=> (= (ControlFlow 0 4) 3) anon7_correct))))))
(let ((anon19_Then_correct true))
(let ((anon18_Else_correct  (and (=> (= (ControlFlow 0 22) (- 0 23)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select xs x_1)) (select xs x_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.653:15|
 :skolemid |103|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (select xs x_1@@0)) (select xs x_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.653:15|
 :skolemid |103|
)) (=> (and (and (forall ((x_1@@1 T@Ref) ) (!  (=> (and (select xs x_1@@1) (< NoPerm FullPerm)) (and (qpRange4 x_1@@1) (= (invRecv4 x_1@@1) x_1@@1)))
 :qid |stdinbpl.659:22|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@17) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| QPMask@0) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@17) x_1@@1 f_7))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (select xs (invRecv4 o_9)) (< NoPerm FullPerm)) (qpRange4 o_9)) (= (invRecv4 o_9) o_9))
 :qid |stdinbpl.663:22|
 :skolemid |105|
 :pattern ( (invRecv4 o_9))
))) (and (forall ((x_1@@2 T@Ref) ) (!  (=> (select xs x_1@@2) (not (= x_1@@2 null)))
 :qid |stdinbpl.669:22|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@17) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| QPMask@0) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_8323_5207_3283#PolymorphicMapType_8323| Heap@@17) x_1@@2 f_7))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (select xs (invRecv4 o_9@@0)) (< NoPerm FullPerm)) (qpRange4 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv4 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| QPMask@0) o_9@@0 f_7) (+ (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| ZeroMask) o_9@@0 f_7) FullPerm)))) (=> (not (and (and (select xs (invRecv4 o_9@@0)) (< NoPerm FullPerm)) (qpRange4 o_9@@0))) (= (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| QPMask@0) o_9@@0 f_7) (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| ZeroMask) o_9@@0 f_7))))
 :qid |stdinbpl.675:22|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| QPMask@0) o_9@@0 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_8383_53) ) (!  (=> true (= (select (|PolymorphicMapType_8344_5207_53#PolymorphicMapType_8344| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_8344_5207_53#PolymorphicMapType_8344| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.679:29|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_8344_5207_53#PolymorphicMapType_8344| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_8344_5207_53#PolymorphicMapType_8344| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_8396_8397) ) (!  (=> true (= (select (|PolymorphicMapType_8344_5207_8397#PolymorphicMapType_8344| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_8344_5207_8397#PolymorphicMapType_8344| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.679:29|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_8344_5207_8397#PolymorphicMapType_8344| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_8344_5207_8397#PolymorphicMapType_8344| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_14567_3283) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.679:29|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_8344_5207_3283#PolymorphicMapType_8344| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_5207_21392) ) (!  (=> true (= (select (|PolymorphicMapType_8344_5207_21392#PolymorphicMapType_8344| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_8344_5207_21392#PolymorphicMapType_8344| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.679:29|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_8344_5207_21392#PolymorphicMapType_8344| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_8344_5207_21392#PolymorphicMapType_8344| QPMask@0) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_5207_21525) ) (!  (=> true (= (select (|PolymorphicMapType_8344_5207_25647#PolymorphicMapType_8344| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_8344_5207_25647#PolymorphicMapType_8344| QPMask@0) o_9@@5 f_5@@3)))
 :qid |stdinbpl.679:29|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_8344_5207_25647#PolymorphicMapType_8344| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_8344_5207_25647#PolymorphicMapType_8344| QPMask@0) o_9@@5 f_5@@3))
))) (state Heap@@17 QPMask@0)) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (and (=> (= (ControlFlow 0 22) 2) anon19_Then_correct) (=> (= (ControlFlow 0 22) 21) anon20_Else_correct)) (=> (= (ControlFlow 0 22) 4) anon21_Then_correct)) (=> (= (ControlFlow 0 22) 6) anon21_Else_correct))))))))
(let ((anon18_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_8323_4902_53#PolymorphicMapType_8323| Heap@@17) y $allocated)) (and (=> (= (ControlFlow 0 24) 1) anon18_Then_correct) (=> (= (ControlFlow 0 24) 22) anon18_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 25) 24) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
