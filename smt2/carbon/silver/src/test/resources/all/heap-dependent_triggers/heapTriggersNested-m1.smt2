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
(declare-sort T@Field_8688_53 0)
(declare-sort T@Field_8701_8702 0)
(declare-sort T@Field_14872_3283 0)
(declare-sort T@Field_5256_23396 0)
(declare-sort T@Field_5256_23263 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_8649 0)) (((PolymorphicMapType_8649 (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| (Array T@Ref T@Field_8701_8702 Real)) (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| (Array T@Ref T@Field_14872_3283 Real)) (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| (Array T@Ref T@Field_8688_53 Real)) (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| (Array T@Ref T@Field_5256_23263 Real)) (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| (Array T@Ref T@Field_5256_23396 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9177 0)) (((PolymorphicMapType_9177 (|PolymorphicMapType_9177_8688_53#PolymorphicMapType_9177| (Array T@Ref T@Field_8688_53 Bool)) (|PolymorphicMapType_9177_8688_8702#PolymorphicMapType_9177| (Array T@Ref T@Field_8701_8702 Bool)) (|PolymorphicMapType_9177_8688_3283#PolymorphicMapType_9177| (Array T@Ref T@Field_14872_3283 Bool)) (|PolymorphicMapType_9177_8688_23263#PolymorphicMapType_9177| (Array T@Ref T@Field_5256_23263 Bool)) (|PolymorphicMapType_9177_8688_24574#PolymorphicMapType_9177| (Array T@Ref T@Field_5256_23396 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8628 0)) (((PolymorphicMapType_8628 (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| (Array T@Ref T@Field_8688_53 Bool)) (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| (Array T@Ref T@Field_8701_8702 T@Ref)) (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| (Array T@Ref T@Field_14872_3283 Int)) (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| (Array T@Ref T@Field_5256_23396 T@PolymorphicMapType_9177)) (|PolymorphicMapType_8628_8688_23263#PolymorphicMapType_8628| (Array T@Ref T@Field_5256_23263 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_8688_53)
(declare-fun f_7 () T@Field_14872_3283)
(declare-fun r_6 () T@Field_8701_8702)
(declare-fun succHeap (T@PolymorphicMapType_8628 T@PolymorphicMapType_8628) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8628 T@PolymorphicMapType_8628) Bool)
(declare-fun state (T@PolymorphicMapType_8628 T@PolymorphicMapType_8649) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8649) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9177)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8628 T@PolymorphicMapType_8628 T@PolymorphicMapType_8649) Bool)
(declare-fun IsPredicateField_5256_23354 (T@Field_5256_23263) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5256 (T@Field_5256_23263) T@Field_5256_23396)
(declare-fun HasDirectPerm_5256_23327 (T@PolymorphicMapType_8649 T@Ref T@Field_5256_23263) Bool)
(declare-fun IsWandField_5256_25101 (T@Field_5256_23263) Bool)
(declare-fun WandMaskField_5256 (T@Field_5256_23263) T@Field_5256_23396)
(declare-fun dummyHeap () T@PolymorphicMapType_8628)
(declare-fun ZeroMask () T@PolymorphicMapType_8649)
(declare-fun InsidePredicate_8688_8688 (T@Field_5256_23263 T@FrameType T@Field_5256_23263 T@FrameType) Bool)
(declare-fun IsPredicateField_5254_3283 (T@Field_14872_3283) Bool)
(declare-fun IsWandField_5254_3283 (T@Field_14872_3283) Bool)
(declare-fun IsPredicateField_5256_5257 (T@Field_8701_8702) Bool)
(declare-fun IsWandField_5256_5257 (T@Field_8701_8702) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5256_28618 (T@Field_5256_23396) Bool)
(declare-fun IsWandField_5256_28634 (T@Field_5256_23396) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5256_53 (T@Field_8688_53) Bool)
(declare-fun IsWandField_5256_53 (T@Field_8688_53) Bool)
(declare-fun HasDirectPerm_5256_29072 (T@PolymorphicMapType_8649 T@Ref T@Field_5256_23396) Bool)
(declare-fun HasDirectPerm_5256_3283 (T@PolymorphicMapType_8649 T@Ref T@Field_14872_3283) Bool)
(declare-fun HasDirectPerm_5256_53 (T@PolymorphicMapType_8649 T@Ref T@Field_8688_53) Bool)
(declare-fun HasDirectPerm_5256_5257 (T@PolymorphicMapType_8649 T@Ref T@Field_8701_8702) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8649 T@PolymorphicMapType_8649 T@PolymorphicMapType_8649) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_8628) (Heap1 T@PolymorphicMapType_8628) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8628) (Mask T@PolymorphicMapType_8649) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8628) (Heap1@@0 T@PolymorphicMapType_8628) (Heap2 T@PolymorphicMapType_8628) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5256_23396) ) (!  (not (select (|PolymorphicMapType_9177_8688_24574#PolymorphicMapType_9177| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9177_8688_24574#PolymorphicMapType_9177| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5256_23263) ) (!  (not (select (|PolymorphicMapType_9177_8688_23263#PolymorphicMapType_9177| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9177_8688_23263#PolymorphicMapType_9177| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14872_3283) ) (!  (not (select (|PolymorphicMapType_9177_8688_3283#PolymorphicMapType_9177| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9177_8688_3283#PolymorphicMapType_9177| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8701_8702) ) (!  (not (select (|PolymorphicMapType_9177_8688_8702#PolymorphicMapType_9177| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9177_8688_8702#PolymorphicMapType_9177| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8688_53) ) (!  (not (select (|PolymorphicMapType_9177_8688_53#PolymorphicMapType_9177| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9177_8688_53#PolymorphicMapType_9177| ZeroPMask) o_2@@3 f_4@@3))
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_8628) (ExhaleHeap T@PolymorphicMapType_8628) (Mask@@0 T@PolymorphicMapType_8649) (pm_f_1 T@Field_5256_23263) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5256_23327 Mask@@0 null pm_f_1) (IsPredicateField_5256_23354 pm_f_1)) (= (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@0) null (PredicateMaskField_5256 pm_f_1)) (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| ExhaleHeap) null (PredicateMaskField_5256 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5256_23354 pm_f_1) (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| ExhaleHeap) null (PredicateMaskField_5256 pm_f_1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8628) (ExhaleHeap@@0 T@PolymorphicMapType_8628) (Mask@@1 T@PolymorphicMapType_8649) (pm_f_1@@0 T@Field_5256_23263) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5256_23327 Mask@@1 null pm_f_1@@0) (IsWandField_5256_25101 pm_f_1@@0)) (= (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@1) null (WandMaskField_5256 pm_f_1@@0)) (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| ExhaleHeap@@0) null (WandMaskField_5256 pm_f_1@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5256_25101 pm_f_1@@0) (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| ExhaleHeap@@0) null (WandMaskField_5256 pm_f_1@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8628) (ExhaleHeap@@1 T@PolymorphicMapType_8628) (Mask@@2 T@PolymorphicMapType_8649) (o_3 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| Heap@@2) o_3 $allocated) (select (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| ExhaleHeap@@1) o_3 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| ExhaleHeap@@1) o_3 $allocated))
)))
(assert (forall ((p T@Field_5256_23263) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8688_8688 p v_1 p w))
 :qid |stdinbpl.195:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8688_8688 p v_1 p w))
)))
(assert  (not (IsPredicateField_5254_3283 f_7)))
(assert  (not (IsWandField_5254_3283 f_7)))
(assert  (not (IsPredicateField_5256_5257 r_6)))
(assert  (not (IsWandField_5256_5257 r_6)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8628) (ExhaleHeap@@2 T@PolymorphicMapType_8628) (Mask@@3 T@PolymorphicMapType_8649) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_8649) (o_2@@4 T@Ref) (f_4@@4 T@Field_5256_23396) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_5256_28618 f_4@@4))) (not (IsWandField_5256_28634 f_4@@4))) (<= (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_8649) (o_2@@5 T@Ref) (f_4@@5 T@Field_5256_23263) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_5256_23354 f_4@@5))) (not (IsWandField_5256_25101 f_4@@5))) (<= (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_8649) (o_2@@6 T@Ref) (f_4@@6 T@Field_8688_53) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5256_53 f_4@@6))) (not (IsWandField_5256_53 f_4@@6))) (<= (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_8649) (o_2@@7 T@Ref) (f_4@@7 T@Field_14872_3283) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5254_3283 f_4@@7))) (not (IsWandField_5254_3283 f_4@@7))) (<= (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8649) (o_2@@8 T@Ref) (f_4@@8 T@Field_8701_8702) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5256_5257 f_4@@8))) (not (IsWandField_5256_5257 f_4@@8))) (<= (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8649) (o_2@@9 T@Ref) (f_4@@9 T@Field_5256_23396) ) (! (= (HasDirectPerm_5256_29072 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5256_29072 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8649) (o_2@@10 T@Ref) (f_4@@10 T@Field_5256_23263) ) (! (= (HasDirectPerm_5256_23327 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5256_23327 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8649) (o_2@@11 T@Ref) (f_4@@11 T@Field_14872_3283) ) (! (= (HasDirectPerm_5256_3283 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5256_3283 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8649) (o_2@@12 T@Ref) (f_4@@12 T@Field_8688_53) ) (! (= (HasDirectPerm_5256_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5256_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8649) (o_2@@13 T@Ref) (f_4@@13 T@Field_8701_8702) ) (! (= (HasDirectPerm_5256_5257 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5256_5257 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8628) (ExhaleHeap@@3 T@PolymorphicMapType_8628) (Mask@@14 T@PolymorphicMapType_8649) (pm_f_1@@1 T@Field_5256_23263) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_5256_23327 Mask@@14 null pm_f_1@@1) (IsPredicateField_5256_23354 pm_f_1@@1)) (and (and (and (and (forall ((o2_1 T@Ref) (f_8 T@Field_8688_53) ) (!  (=> (select (|PolymorphicMapType_9177_8688_53#PolymorphicMapType_9177| (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@4) null (PredicateMaskField_5256 pm_f_1@@1))) o2_1 f_8) (= (select (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| Heap@@4) o2_1 f_8) (select (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| ExhaleHeap@@3) o2_1 f_8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| ExhaleHeap@@3) o2_1 f_8))
)) (forall ((o2_1@@0 T@Ref) (f_8@@0 T@Field_8701_8702) ) (!  (=> (select (|PolymorphicMapType_9177_8688_8702#PolymorphicMapType_9177| (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@4) null (PredicateMaskField_5256 pm_f_1@@1))) o2_1@@0 f_8@@0) (= (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@4) o2_1@@0 f_8@@0) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| ExhaleHeap@@3) o2_1@@0 f_8@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| ExhaleHeap@@3) o2_1@@0 f_8@@0))
))) (forall ((o2_1@@1 T@Ref) (f_8@@1 T@Field_14872_3283) ) (!  (=> (select (|PolymorphicMapType_9177_8688_3283#PolymorphicMapType_9177| (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@4) null (PredicateMaskField_5256 pm_f_1@@1))) o2_1@@1 f_8@@1) (= (select (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| Heap@@4) o2_1@@1 f_8@@1) (select (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| ExhaleHeap@@3) o2_1@@1 f_8@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| ExhaleHeap@@3) o2_1@@1 f_8@@1))
))) (forall ((o2_1@@2 T@Ref) (f_8@@2 T@Field_5256_23263) ) (!  (=> (select (|PolymorphicMapType_9177_8688_23263#PolymorphicMapType_9177| (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@4) null (PredicateMaskField_5256 pm_f_1@@1))) o2_1@@2 f_8@@2) (= (select (|PolymorphicMapType_8628_8688_23263#PolymorphicMapType_8628| Heap@@4) o2_1@@2 f_8@@2) (select (|PolymorphicMapType_8628_8688_23263#PolymorphicMapType_8628| ExhaleHeap@@3) o2_1@@2 f_8@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8628_8688_23263#PolymorphicMapType_8628| ExhaleHeap@@3) o2_1@@2 f_8@@2))
))) (forall ((o2_1@@3 T@Ref) (f_8@@3 T@Field_5256_23396) ) (!  (=> (select (|PolymorphicMapType_9177_8688_24574#PolymorphicMapType_9177| (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@4) null (PredicateMaskField_5256 pm_f_1@@1))) o2_1@@3 f_8@@3) (= (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@4) o2_1@@3 f_8@@3) (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| ExhaleHeap@@3) o2_1@@3 f_8@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| ExhaleHeap@@3) o2_1@@3 f_8@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_5256_23354 pm_f_1@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8628) (ExhaleHeap@@4 T@PolymorphicMapType_8628) (Mask@@15 T@PolymorphicMapType_8649) (pm_f_1@@2 T@Field_5256_23263) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_5256_23327 Mask@@15 null pm_f_1@@2) (IsWandField_5256_25101 pm_f_1@@2)) (and (and (and (and (forall ((o2_1@@4 T@Ref) (f_8@@4 T@Field_8688_53) ) (!  (=> (select (|PolymorphicMapType_9177_8688_53#PolymorphicMapType_9177| (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@5) null (WandMaskField_5256 pm_f_1@@2))) o2_1@@4 f_8@@4) (= (select (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| Heap@@5) o2_1@@4 f_8@@4) (select (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| ExhaleHeap@@4) o2_1@@4 f_8@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| ExhaleHeap@@4) o2_1@@4 f_8@@4))
)) (forall ((o2_1@@5 T@Ref) (f_8@@5 T@Field_8701_8702) ) (!  (=> (select (|PolymorphicMapType_9177_8688_8702#PolymorphicMapType_9177| (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@5) null (WandMaskField_5256 pm_f_1@@2))) o2_1@@5 f_8@@5) (= (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@5) o2_1@@5 f_8@@5) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| ExhaleHeap@@4) o2_1@@5 f_8@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| ExhaleHeap@@4) o2_1@@5 f_8@@5))
))) (forall ((o2_1@@6 T@Ref) (f_8@@6 T@Field_14872_3283) ) (!  (=> (select (|PolymorphicMapType_9177_8688_3283#PolymorphicMapType_9177| (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@5) null (WandMaskField_5256 pm_f_1@@2))) o2_1@@6 f_8@@6) (= (select (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| Heap@@5) o2_1@@6 f_8@@6) (select (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| ExhaleHeap@@4) o2_1@@6 f_8@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| ExhaleHeap@@4) o2_1@@6 f_8@@6))
))) (forall ((o2_1@@7 T@Ref) (f_8@@7 T@Field_5256_23263) ) (!  (=> (select (|PolymorphicMapType_9177_8688_23263#PolymorphicMapType_9177| (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@5) null (WandMaskField_5256 pm_f_1@@2))) o2_1@@7 f_8@@7) (= (select (|PolymorphicMapType_8628_8688_23263#PolymorphicMapType_8628| Heap@@5) o2_1@@7 f_8@@7) (select (|PolymorphicMapType_8628_8688_23263#PolymorphicMapType_8628| ExhaleHeap@@4) o2_1@@7 f_8@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8628_8688_23263#PolymorphicMapType_8628| ExhaleHeap@@4) o2_1@@7 f_8@@7))
))) (forall ((o2_1@@8 T@Ref) (f_8@@8 T@Field_5256_23396) ) (!  (=> (select (|PolymorphicMapType_9177_8688_24574#PolymorphicMapType_9177| (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@5) null (WandMaskField_5256 pm_f_1@@2))) o2_1@@8 f_8@@8) (= (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@5) o2_1@@8 f_8@@8) (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| ExhaleHeap@@4) o2_1@@8 f_8@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| ExhaleHeap@@4) o2_1@@8 f_8@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_5256_25101 pm_f_1@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.183:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8628) (ExhaleHeap@@5 T@PolymorphicMapType_8628) (Mask@@16 T@PolymorphicMapType_8649) (o_3@@0 T@Ref) (f_8@@9 T@Field_5256_23396) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_5256_29072 Mask@@16 o_3@@0 f_8@@9) (= (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@6) o_3@@0 f_8@@9) (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| ExhaleHeap@@5) o_3@@0 f_8@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| ExhaleHeap@@5) o_3@@0 f_8@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8628) (ExhaleHeap@@6 T@PolymorphicMapType_8628) (Mask@@17 T@PolymorphicMapType_8649) (o_3@@1 T@Ref) (f_8@@10 T@Field_5256_23263) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_5256_23327 Mask@@17 o_3@@1 f_8@@10) (= (select (|PolymorphicMapType_8628_8688_23263#PolymorphicMapType_8628| Heap@@7) o_3@@1 f_8@@10) (select (|PolymorphicMapType_8628_8688_23263#PolymorphicMapType_8628| ExhaleHeap@@6) o_3@@1 f_8@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_8628_8688_23263#PolymorphicMapType_8628| ExhaleHeap@@6) o_3@@1 f_8@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8628) (ExhaleHeap@@7 T@PolymorphicMapType_8628) (Mask@@18 T@PolymorphicMapType_8649) (o_3@@2 T@Ref) (f_8@@11 T@Field_14872_3283) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_5256_3283 Mask@@18 o_3@@2 f_8@@11) (= (select (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| Heap@@8) o_3@@2 f_8@@11) (select (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| ExhaleHeap@@7) o_3@@2 f_8@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| ExhaleHeap@@7) o_3@@2 f_8@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8628) (ExhaleHeap@@8 T@PolymorphicMapType_8628) (Mask@@19 T@PolymorphicMapType_8649) (o_3@@3 T@Ref) (f_8@@12 T@Field_8688_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_5256_53 Mask@@19 o_3@@3 f_8@@12) (= (select (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| Heap@@9) o_3@@3 f_8@@12) (select (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| ExhaleHeap@@8) o_3@@3 f_8@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| ExhaleHeap@@8) o_3@@3 f_8@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8628) (ExhaleHeap@@9 T@PolymorphicMapType_8628) (Mask@@20 T@PolymorphicMapType_8649) (o_3@@4 T@Ref) (f_8@@13 T@Field_8701_8702) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_5256_5257 Mask@@20 o_3@@4 f_8@@13) (= (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@10) o_3@@4 f_8@@13) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| ExhaleHeap@@9) o_3@@4 f_8@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| ExhaleHeap@@9) o_3@@4 f_8@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5256_23396) ) (! (= (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5256_23263) ) (! (= (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_8688_53) ) (! (= (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_14872_3283) ) (! (= (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_8701_8702) ) (! (= (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8649) (SummandMask1 T@PolymorphicMapType_8649) (SummandMask2 T@PolymorphicMapType_8649) (o_2@@19 T@Ref) (f_4@@19 T@Field_5256_23396) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8649) (SummandMask1@@0 T@PolymorphicMapType_8649) (SummandMask2@@0 T@PolymorphicMapType_8649) (o_2@@20 T@Ref) (f_4@@20 T@Field_5256_23263) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8649) (SummandMask1@@1 T@PolymorphicMapType_8649) (SummandMask2@@1 T@PolymorphicMapType_8649) (o_2@@21 T@Ref) (f_4@@21 T@Field_8688_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8649) (SummandMask1@@2 T@PolymorphicMapType_8649) (SummandMask2@@2 T@PolymorphicMapType_8649) (o_2@@22 T@Ref) (f_4@@22 T@Field_14872_3283) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8649) (SummandMask1@@3 T@PolymorphicMapType_8649) (SummandMask2@@3 T@PolymorphicMapType_8649) (o_2@@23 T@Ref) (f_4@@23 T@Field_8701_8702) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8628) (o_1 T@Ref) (f_9 T@Field_5256_23263) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_8628 (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| Heap@@11) (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@11) (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| Heap@@11) (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@11) (store (|PolymorphicMapType_8628_8688_23263#PolymorphicMapType_8628| Heap@@11) o_1 f_9 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8628 (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| Heap@@11) (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@11) (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| Heap@@11) (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@11) (store (|PolymorphicMapType_8628_8688_23263#PolymorphicMapType_8628| Heap@@11) o_1 f_9 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8628) (o_1@@0 T@Ref) (f_9@@0 T@Field_5256_23396) (v@@0 T@PolymorphicMapType_9177) ) (! (succHeap Heap@@12 (PolymorphicMapType_8628 (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| Heap@@12) (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@12) (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| Heap@@12) (store (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@12) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_8628_8688_23263#PolymorphicMapType_8628| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8628 (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| Heap@@12) (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@12) (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| Heap@@12) (store (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@12) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_8628_8688_23263#PolymorphicMapType_8628| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8628) (o_1@@1 T@Ref) (f_9@@1 T@Field_14872_3283) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_8628 (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| Heap@@13) (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@13) (store (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| Heap@@13) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@13) (|PolymorphicMapType_8628_8688_23263#PolymorphicMapType_8628| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8628 (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| Heap@@13) (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@13) (store (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| Heap@@13) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@13) (|PolymorphicMapType_8628_8688_23263#PolymorphicMapType_8628| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8628) (o_1@@2 T@Ref) (f_9@@2 T@Field_8701_8702) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_8628 (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| Heap@@14) (store (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@14) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| Heap@@14) (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@14) (|PolymorphicMapType_8628_8688_23263#PolymorphicMapType_8628| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8628 (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| Heap@@14) (store (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@14) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| Heap@@14) (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@14) (|PolymorphicMapType_8628_8688_23263#PolymorphicMapType_8628| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8628) (o_1@@3 T@Ref) (f_9@@3 T@Field_8688_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_8628 (store (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| Heap@@15) o_1@@3 f_9@@3 v@@3) (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@15) (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| Heap@@15) (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@15) (|PolymorphicMapType_8628_8688_23263#PolymorphicMapType_8628| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8628 (store (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| Heap@@15) o_1@@3 f_9@@3 v@@3) (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@15) (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| Heap@@15) (|PolymorphicMapType_8628_5256_23440#PolymorphicMapType_8628| Heap@@15) (|PolymorphicMapType_8628_8688_23263#PolymorphicMapType_8628| Heap@@15)))
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
(assert (forall ((o_1@@4 T@Ref) (f_2 T@Field_8701_8702) (Heap@@16 T@PolymorphicMapType_8628) ) (!  (=> (select (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| Heap@@16) o_1@@4 $allocated) (select (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| Heap@@16) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@16) o_1@@4 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@16) o_1@@4 f_2))
)))
(assert (forall ((p@@1 T@Field_5256_23263) (v_1@@0 T@FrameType) (q T@Field_5256_23263) (w@@0 T@FrameType) (r T@Field_5256_23263) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8688_8688 p@@1 v_1@@0 q w@@0) (InsidePredicate_8688_8688 q w@@0 r u)) (InsidePredicate_8688_8688 p@@1 v_1@@0 r u))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8688_8688 p@@1 v_1@@0 q w@@0) (InsidePredicate_8688_8688 q w@@0 r u))
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
(declare-fun x_32 () T@Ref)
(declare-fun QPMask@2 () T@PolymorphicMapType_8649)
(declare-fun Heap@@17 () T@PolymorphicMapType_8628)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) T@Ref)
(declare-fun QPMask@3 () T@PolymorphicMapType_8649)
(declare-fun a_2 () T@Ref)
(declare-fun v_2@0 () T@Ref)
(declare-fun x_38 () T@Ref)
(declare-fun y_11 () T@Ref)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) T@Ref)
(declare-fun QPMask@1 () T@PolymorphicMapType_8649)
(declare-fun x_11 () T@Ref)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_8649)
(declare-fun x_31 () T@Ref)
(declare-fun x_10 () T@Ref)
(declare-fun y_4 () T@Ref)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(declare-fun v_2 () T@Ref)
(set-info :boogie-vc-id m1)
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
 (=> (= (ControlFlow 0 0) 45) (let ((anon21_correct true))
(let ((anon33_Else_correct  (=> (and (not (select xs x_32)) (= (ControlFlow 0 35) 31)) anon21_correct)))
(let ((anon33_Then_correct  (=> (select xs x_32) (and (=> (= (ControlFlow 0 32) (- 0 34)) (HasDirectPerm_5256_5257 QPMask@2 x_32 r_6)) (=> (HasDirectPerm_5256_5257 QPMask@2 x_32 r_6) (and (=> (= (ControlFlow 0 32) (- 0 33)) (HasDirectPerm_5256_5257 QPMask@2 (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_32 r_6) r_6)) (=> (HasDirectPerm_5256_5257 QPMask@2 (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_32 r_6) r_6) (=> (= (ControlFlow 0 32) 31) anon21_correct))))))))
(let ((anon32_Else_correct  (and (=> (= (ControlFlow 0 23) (- 0 30)) (forall ((x_11_1 T@Ref) (x_11_2 T@Ref) ) (!  (=> (and (and (and (and (not (= x_11_1 x_11_2)) (select xs x_11_1)) (select xs x_11_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_11_1 r_6) r_6) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_11_2 r_6) r_6))))
 :qid |stdinbpl.636:15|
 :skolemid |102|
))) (=> (forall ((x_11_1@@0 T@Ref) (x_11_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_11_1@@0 x_11_2@@0)) (select xs x_11_1@@0)) (select xs x_11_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_11_1@@0 r_6) r_6) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_11_2@@0 r_6) r_6))))
 :qid |stdinbpl.636:15|
 :skolemid |102|
)) (=> (and (and (forall ((x_11_1@@1 T@Ref) ) (!  (=> (and (select xs x_11_1@@1) (< NoPerm FullPerm)) (and (qpRange4 (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_11_1@@1 r_6) r_6)) (= (invRecv4 (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_11_1@@1 r_6) r_6)) x_11_1@@1)))
 :qid |stdinbpl.642:22|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_11_1@@1 r_6) r_6))
 :pattern ( (select (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_11_1@@1 r_6) r_6) f_7))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select xs (invRecv4 o_4)) (< NoPerm FullPerm)) (qpRange4 o_4)) (= (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (invRecv4 o_4) r_6) r_6) o_4))
 :qid |stdinbpl.646:22|
 :skolemid |104|
 :pattern ( (invRecv4 o_4))
))) (and (forall ((x_11_1@@2 T@Ref) ) (!  (=> (select xs x_11_1@@2) (not (= (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_11_1@@2 r_6) r_6) null)))
 :qid |stdinbpl.652:22|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_11_1@@2 r_6) r_6))
 :pattern ( (select (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_11_1@@2 r_6) r_6) f_7))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select xs (invRecv4 o_4@@0)) (< NoPerm FullPerm)) (qpRange4 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (invRecv4 o_4@@0) r_6) r_6) o_4@@0)) (= (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@3) o_4@@0 f_7) (+ (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@2) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (select xs (invRecv4 o_4@@0)) (< NoPerm FullPerm)) (qpRange4 o_4@@0))) (= (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@3) o_4@@0 f_7) (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@2) o_4@@0 f_7))))
 :qid |stdinbpl.658:22|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@3) o_4@@0 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_8688_53) ) (!  (=> true (= (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| QPMask@2) o_4@@1 f_5) (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| QPMask@3) o_4@@1 f_5)))
 :qid |stdinbpl.662:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| QPMask@2) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| QPMask@3) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_8701_8702) ) (!  (=> true (= (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@2) o_4@@2 f_5@@0) (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@3) o_4@@2 f_5@@0)))
 :qid |stdinbpl.662:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@2) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@3) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_14872_3283) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@2) o_4@@3 f_5@@1) (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@3) o_4@@3 f_5@@1)))
 :qid |stdinbpl.662:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@2) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@3) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_5256_23263) ) (!  (=> true (= (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| QPMask@2) o_4@@4 f_5@@2) (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| QPMask@3) o_4@@4 f_5@@2)))
 :qid |stdinbpl.662:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| QPMask@2) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| QPMask@3) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_5256_23396) ) (!  (=> true (= (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| QPMask@2) o_4@@5 f_5@@3) (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| QPMask@3) o_4@@5 f_5@@3)))
 :qid |stdinbpl.662:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| QPMask@2) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| QPMask@3) o_4@@5 f_5@@3))
))) (and (state Heap@@17 QPMask@3) (state Heap@@17 QPMask@3))) (and (and (state Heap@@17 QPMask@3) (select xs a_2)) (and (state Heap@@17 QPMask@3) (state Heap@@17 QPMask@3)))) (and (=> (= (ControlFlow 0 23) (- 0 29)) (<= FullPerm (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@3) a_2 r_6))) (=> (<= FullPerm (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@3) a_2 r_6)) (=> (state Heap@@17 QPMask@3) (and (=> (= (ControlFlow 0 23) (- 0 28)) (HasDirectPerm_5256_5257 QPMask@3 a_2 r_6)) (=> (HasDirectPerm_5256_5257 QPMask@3 a_2 r_6) (=> (and (= v_2@0 (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) a_2 r_6)) (state Heap@@17 QPMask@3)) (and (=> (= (ControlFlow 0 23) (- 0 27)) (HasDirectPerm_5256_5257 QPMask@3 a_2 r_6)) (=> (HasDirectPerm_5256_5257 QPMask@3 a_2 r_6) (and (=> (= (ControlFlow 0 23) (- 0 26)) (<= FullPerm (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@3) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) a_2 r_6) f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@3) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) a_2 r_6) f_7)) (=> (state Heap@@17 QPMask@3) (and (=> (= (ControlFlow 0 23) (- 0 25)) (HasDirectPerm_5256_5257 QPMask@3 a_2 r_6)) (=> (HasDirectPerm_5256_5257 QPMask@3 a_2 r_6) (and (=> (= (ControlFlow 0 23) (- 0 24)) (HasDirectPerm_5256_5257 QPMask@3 (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) a_2 r_6) r_6)) (=> (HasDirectPerm_5256_5257 QPMask@3 (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) a_2 r_6) r_6) (=> (= (ControlFlow 0 23) (- 0 22)) (<= FullPerm (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@3) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) a_2 r_6) r_6) f_7))))))))))))))))))))))))
(let ((anon30_Else_correct  (=> (forall ((x_9_2 T@Ref) (y_3_2 T@Ref) ) (!  (=> (and (select xs x_9_2) (and (select xs y_3_2) (not (= x_9_2 y_3_2)))) (not (= (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_9_2 r_6) r_6) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) y_3_2 r_6) r_6))))
 :qid |stdinbpl.615:20|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_9_2 r_6) r_6) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) y_3_2 r_6) r_6))
)) (=> (and (state Heap@@17 QPMask@2) (state Heap@@17 QPMask@2)) (and (and (=> (= (ControlFlow 0 36) 23) anon32_Else_correct) (=> (= (ControlFlow 0 36) 32) anon33_Then_correct)) (=> (= (ControlFlow 0 36) 35) anon33_Else_correct))))))
(let ((anon17_correct true))
(let ((anon31_Else_correct  (=> (and (not (and (select xs x_38) (and (select xs y_11) (not (= x_38 y_11))))) (= (ControlFlow 0 21) 15)) anon17_correct)))
(let ((anon31_Then_correct  (=> (and (select xs x_38) (and (select xs y_11) (not (= x_38 y_11)))) (and (=> (= (ControlFlow 0 16) (- 0 20)) (HasDirectPerm_5256_5257 QPMask@2 x_38 r_6)) (=> (HasDirectPerm_5256_5257 QPMask@2 x_38 r_6) (and (=> (= (ControlFlow 0 16) (- 0 19)) (HasDirectPerm_5256_5257 QPMask@2 (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_38 r_6) r_6)) (=> (HasDirectPerm_5256_5257 QPMask@2 (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_38 r_6) r_6) (and (=> (= (ControlFlow 0 16) (- 0 18)) (HasDirectPerm_5256_5257 QPMask@2 y_11 r_6)) (=> (HasDirectPerm_5256_5257 QPMask@2 y_11 r_6) (and (=> (= (ControlFlow 0 16) (- 0 17)) (HasDirectPerm_5256_5257 QPMask@2 (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) y_11 r_6) r_6)) (=> (HasDirectPerm_5256_5257 QPMask@2 (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) y_11 r_6) r_6) (=> (= (ControlFlow 0 16) 15) anon17_correct))))))))))))
(let ((anon28_Else_correct  (and (=> (= (ControlFlow 0 37) (- 0 38)) (forall ((x_7 T@Ref) (x_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_7 x_7_1)) (select xs x_7)) (select xs x_7_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_7 r_6) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_7_1 r_6))))
 :qid |stdinbpl.562:15|
 :skolemid |95|
))) (=> (forall ((x_7@@0 T@Ref) (x_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_7@@0 x_7_1@@0)) (select xs x_7@@0)) (select xs x_7_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_7@@0 r_6) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_7_1@@0 r_6))))
 :qid |stdinbpl.562:15|
 :skolemid |95|
)) (=> (and (and (forall ((x_7@@1 T@Ref) ) (!  (=> (and (select xs x_7@@1) (< NoPerm FullPerm)) (and (qpRange3 (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_7@@1 r_6)) (= (invRecv3 (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_7@@1 r_6)) x_7@@1)))
 :qid |stdinbpl.568:22|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_7@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_7@@1 r_6) f_7))
)) (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (select xs (invRecv3 o_4@@6)) (< NoPerm FullPerm)) (qpRange3 o_4@@6)) (= (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (invRecv3 o_4@@6) r_6) o_4@@6))
 :qid |stdinbpl.572:22|
 :skolemid |97|
 :pattern ( (invRecv3 o_4@@6))
))) (and (forall ((x_7@@2 T@Ref) ) (!  (=> (select xs x_7@@2) (not (= (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_7@@2 r_6) null)))
 :qid |stdinbpl.578:22|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_7@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_8628_5254_3283#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_7@@2 r_6) f_7))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (select xs (invRecv3 o_4@@7)) (< NoPerm FullPerm)) (qpRange3 o_4@@7)) (and (=> (< NoPerm FullPerm) (= (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (invRecv3 o_4@@7) r_6) o_4@@7)) (= (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@2) o_4@@7 f_7) (+ (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@1) o_4@@7 f_7) FullPerm)))) (=> (not (and (and (select xs (invRecv3 o_4@@7)) (< NoPerm FullPerm)) (qpRange3 o_4@@7))) (= (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@2) o_4@@7 f_7) (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@1) o_4@@7 f_7))))
 :qid |stdinbpl.584:22|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@2) o_4@@7 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_8688_53) ) (!  (=> true (= (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| QPMask@1) o_4@@8 f_5@@4) (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| QPMask@2) o_4@@8 f_5@@4)))
 :qid |stdinbpl.588:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| QPMask@1) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| QPMask@2) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_8701_8702) ) (!  (=> true (= (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@1) o_4@@9 f_5@@5) (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@2) o_4@@9 f_5@@5)))
 :qid |stdinbpl.588:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@1) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@2) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_14872_3283) ) (!  (=> (not (= f_5@@6 f_7)) (= (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@1) o_4@@10 f_5@@6) (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@2) o_4@@10 f_5@@6)))
 :qid |stdinbpl.588:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@1) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@2) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_5256_23263) ) (!  (=> true (= (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| QPMask@1) o_4@@11 f_5@@7) (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| QPMask@2) o_4@@11 f_5@@7)))
 :qid |stdinbpl.588:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| QPMask@1) o_4@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| QPMask@2) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_5256_23396) ) (!  (=> true (= (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| QPMask@1) o_4@@12 f_5@@8) (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| QPMask@2) o_4@@12 f_5@@8)))
 :qid |stdinbpl.588:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| QPMask@1) o_4@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| QPMask@2) o_4@@12 f_5@@8))
))) (state Heap@@17 QPMask@2)) (and (state Heap@@17 QPMask@2) (state Heap@@17 QPMask@2))) (and (and (=> (= (ControlFlow 0 37) 36) anon30_Else_correct) (=> (= (ControlFlow 0 37) 16) anon31_Then_correct)) (=> (= (ControlFlow 0 37) 21) anon31_Else_correct))))))))
(let ((anon13_correct true))
(let ((anon29_Else_correct  (=> (and (not (select xs x_11)) (= (ControlFlow 0 14) 11)) anon13_correct)))
(let ((anon29_Then_correct  (=> (select xs x_11) (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_5256_5257 QPMask@1 x_11 r_6)) (=> (HasDirectPerm_5256_5257 QPMask@1 x_11 r_6) (=> (= (ControlFlow 0 12) 11) anon13_correct))))))
(let ((anon26_Else_correct  (and (=> (= (ControlFlow 0 39) (- 0 40)) (forall ((x_5 T@Ref) (x_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_5 x_5_1)) (select xs x_5)) (select xs x_5_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_5 r_6) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_5_1 r_6))))
 :qid |stdinbpl.515:15|
 :skolemid |89|
))) (=> (forall ((x_5@@0 T@Ref) (x_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_5@@0 x_5_1@@0)) (select xs x_5@@0)) (select xs x_5_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_5@@0 r_6) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_5_1@@0 r_6))))
 :qid |stdinbpl.515:15|
 :skolemid |89|
)) (=> (and (and (forall ((x_5@@1 T@Ref) ) (!  (=> (and (select xs x_5@@1) (< NoPerm FullPerm)) (and (qpRange2 (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_5@@1 r_6)) (= (invRecv2 (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_5@@1 r_6)) x_5@@1)))
 :qid |stdinbpl.521:22|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_5@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_5@@1 r_6) r_6))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (select xs (invRecv2 o_4@@13)) (< NoPerm FullPerm)) (qpRange2 o_4@@13)) (= (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (invRecv2 o_4@@13) r_6) o_4@@13))
 :qid |stdinbpl.525:22|
 :skolemid |91|
 :pattern ( (invRecv2 o_4@@13))
))) (and (forall ((x_5@@2 T@Ref) ) (!  (=> (select xs x_5@@2) (not (= (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_5@@2 r_6) null)))
 :qid |stdinbpl.531:22|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_5@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_5@@2 r_6) r_6))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (select xs (invRecv2 o_4@@14)) (< NoPerm FullPerm)) (qpRange2 o_4@@14)) (and (=> (< NoPerm FullPerm) (= (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) (invRecv2 o_4@@14) r_6) o_4@@14)) (= (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@1) o_4@@14 r_6) (+ (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@0) o_4@@14 r_6) FullPerm)))) (=> (not (and (and (select xs (invRecv2 o_4@@14)) (< NoPerm FullPerm)) (qpRange2 o_4@@14))) (= (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@1) o_4@@14 r_6) (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@0) o_4@@14 r_6))))
 :qid |stdinbpl.537:22|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@1) o_4@@14 r_6))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_8688_53) ) (!  (=> true (= (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| QPMask@0) o_4@@15 f_5@@9) (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| QPMask@1) o_4@@15 f_5@@9)))
 :qid |stdinbpl.541:29|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| QPMask@0) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| QPMask@1) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_8701_8702) ) (!  (=> (not (= f_5@@10 r_6)) (= (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@0) o_4@@16 f_5@@10) (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@1) o_4@@16 f_5@@10)))
 :qid |stdinbpl.541:29|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@0) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@1) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_14872_3283) ) (!  (=> true (= (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@0) o_4@@17 f_5@@11) (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@1) o_4@@17 f_5@@11)))
 :qid |stdinbpl.541:29|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@0) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@1) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_5256_23263) ) (!  (=> true (= (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| QPMask@0) o_4@@18 f_5@@12) (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| QPMask@1) o_4@@18 f_5@@12)))
 :qid |stdinbpl.541:29|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| QPMask@0) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| QPMask@1) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_5256_23396) ) (!  (=> true (= (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| QPMask@0) o_4@@19 f_5@@13) (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| QPMask@1) o_4@@19 f_5@@13)))
 :qid |stdinbpl.541:29|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| QPMask@0) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| QPMask@1) o_4@@19 f_5@@13))
))) (state Heap@@17 QPMask@1)) (and (state Heap@@17 QPMask@1) (state Heap@@17 QPMask@1))) (and (and (=> (= (ControlFlow 0 39) 37) anon28_Else_correct) (=> (= (ControlFlow 0 39) 12) anon29_Then_correct)) (=> (= (ControlFlow 0 39) 14) anon29_Else_correct))))))))
(let ((anon9_correct true))
(let ((anon27_Else_correct  (=> (and (not (select xs x_31)) (= (ControlFlow 0 10) 7)) anon9_correct)))
(let ((anon27_Then_correct  (=> (select xs x_31) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_5256_5257 QPMask@0 x_31 r_6)) (=> (HasDirectPerm_5256_5257 QPMask@0 x_31 r_6) (=> (= (ControlFlow 0 8) 7) anon9_correct))))))
(let ((anon24_Else_correct  (=> (forall ((x_3 T@Ref) (y_1 T@Ref) ) (!  (=> (and (select xs x_3) (and (select xs y_1) (not (= x_3 y_1)))) (not (= (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_3 r_6) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) y_1 r_6))))
 :qid |stdinbpl.496:20|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_3 r_6) (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) y_1 r_6))
)) (=> (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0)) (and (and (=> (= (ControlFlow 0 41) 39) anon26_Else_correct) (=> (= (ControlFlow 0 41) 8) anon27_Then_correct)) (=> (= (ControlFlow 0 41) 10) anon27_Else_correct))))))
(let ((anon5_correct true))
(let ((anon25_Else_correct  (=> (and (not (and (select xs x_10) (and (select xs y_4) (not (= x_10 y_4))))) (= (ControlFlow 0 6) 2)) anon5_correct)))
(let ((anon25_Then_correct  (=> (and (select xs x_10) (and (select xs y_4) (not (= x_10 y_4)))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (HasDirectPerm_5256_5257 QPMask@0 x_10 r_6)) (=> (HasDirectPerm_5256_5257 QPMask@0 x_10 r_6) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_5256_5257 QPMask@0 y_4 r_6)) (=> (HasDirectPerm_5256_5257 QPMask@0 y_4 r_6) (=> (= (ControlFlow 0 3) 2) anon5_correct))))))))
(let ((anon23_Else_correct  (and (=> (= (ControlFlow 0 42) (- 0 43)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select xs x_1)) (select xs x_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.447:15|
 :skolemid |82|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (select xs x_1@@0)) (select xs x_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.447:15|
 :skolemid |82|
)) (=> (and (and (forall ((x_1@@1 T@Ref) ) (!  (=> (and (select xs x_1@@1) (< NoPerm FullPerm)) (and (qpRange1 x_1@@1) (= (invRecv1 x_1@@1) x_1@@1)))
 :qid |stdinbpl.453:22|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_1@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@0) x_1@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_1@@1 r_6))
)) (forall ((o_4@@20 T@Ref) ) (!  (=> (and (and (select xs (invRecv1 o_4@@20)) (< NoPerm FullPerm)) (qpRange1 o_4@@20)) (= (invRecv1 o_4@@20) o_4@@20))
 :qid |stdinbpl.457:22|
 :skolemid |84|
 :pattern ( (invRecv1 o_4@@20))
))) (and (forall ((x_1@@2 T@Ref) ) (!  (=> (select xs x_1@@2) (not (= x_1@@2 null)))
 :qid |stdinbpl.463:22|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_1@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@0) x_1@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_8628_4952_4953#PolymorphicMapType_8628| Heap@@17) x_1@@2 r_6))
)) (forall ((o_4@@21 T@Ref) ) (!  (and (=> (and (and (select xs (invRecv1 o_4@@21)) (< NoPerm FullPerm)) (qpRange1 o_4@@21)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_4@@21) o_4@@21)) (= (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@0) o_4@@21 r_6) (+ (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| ZeroMask) o_4@@21 r_6) FullPerm)))) (=> (not (and (and (select xs (invRecv1 o_4@@21)) (< NoPerm FullPerm)) (qpRange1 o_4@@21))) (= (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@0) o_4@@21 r_6) (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| ZeroMask) o_4@@21 r_6))))
 :qid |stdinbpl.469:22|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@0) o_4@@21 r_6))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_8688_53) ) (!  (=> true (= (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| ZeroMask) o_4@@22 f_5@@14) (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| QPMask@0) o_4@@22 f_5@@14)))
 :qid |stdinbpl.473:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| ZeroMask) o_4@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_8649_5256_53#PolymorphicMapType_8649| QPMask@0) o_4@@22 f_5@@14))
)) (forall ((o_4@@23 T@Ref) (f_5@@15 T@Field_8701_8702) ) (!  (=> (not (= f_5@@15 r_6)) (= (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| ZeroMask) o_4@@23 f_5@@15) (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@0) o_4@@23 f_5@@15)))
 :qid |stdinbpl.473:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| ZeroMask) o_4@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_8649_5256_5257#PolymorphicMapType_8649| QPMask@0) o_4@@23 f_5@@15))
))) (forall ((o_4@@24 T@Ref) (f_5@@16 T@Field_14872_3283) ) (!  (=> true (= (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| ZeroMask) o_4@@24 f_5@@16) (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@0) o_4@@24 f_5@@16)))
 :qid |stdinbpl.473:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| ZeroMask) o_4@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_8649_5254_3283#PolymorphicMapType_8649| QPMask@0) o_4@@24 f_5@@16))
))) (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_5256_23263) ) (!  (=> true (= (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| ZeroMask) o_4@@25 f_5@@17) (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| QPMask@0) o_4@@25 f_5@@17)))
 :qid |stdinbpl.473:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| ZeroMask) o_4@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_8649_5256_23263#PolymorphicMapType_8649| QPMask@0) o_4@@25 f_5@@17))
))) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_5256_23396) ) (!  (=> true (= (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| ZeroMask) o_4@@26 f_5@@18) (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| QPMask@0) o_4@@26 f_5@@18)))
 :qid |stdinbpl.473:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| ZeroMask) o_4@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_8649_5256_27503#PolymorphicMapType_8649| QPMask@0) o_4@@26 f_5@@18))
))) (state Heap@@17 QPMask@0)) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (=> (= (ControlFlow 0 42) 41) anon24_Else_correct) (=> (= (ControlFlow 0 42) 3) anon25_Then_correct)) (=> (= (ControlFlow 0 42) 6) anon25_Else_correct))))))))
(let ((anon23_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| Heap@@17) a_2 $allocated) (select (|PolymorphicMapType_8628_4949_53#PolymorphicMapType_8628| Heap@@17) v_2 $allocated))) (and (=> (= (ControlFlow 0 44) 1) anon23_Then_correct) (=> (= (ControlFlow 0 44) 42) anon23_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 45) 44) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
