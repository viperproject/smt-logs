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
(declare-sort T@Field_7760_53 0)
(declare-sort T@Field_7773_7774 0)
(declare-sort T@Field_13940_3259 0)
(declare-sort T@Field_7760_20130 0)
(declare-sort T@Field_7760_19997 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_7721 0)) (((PolymorphicMapType_7721 (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| (Array T@Ref T@Field_13940_3259 Real)) (|PolymorphicMapType_7721_4819_53#PolymorphicMapType_7721| (Array T@Ref T@Field_7760_53 Real)) (|PolymorphicMapType_7721_4819_7774#PolymorphicMapType_7721| (Array T@Ref T@Field_7773_7774 Real)) (|PolymorphicMapType_7721_4819_19997#PolymorphicMapType_7721| (Array T@Ref T@Field_7760_19997 Real)) (|PolymorphicMapType_7721_4819_24252#PolymorphicMapType_7721| (Array T@Ref T@Field_7760_20130 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8249 0)) (((PolymorphicMapType_8249 (|PolymorphicMapType_8249_7760_53#PolymorphicMapType_8249| (Array T@Ref T@Field_7760_53 Bool)) (|PolymorphicMapType_8249_7760_7774#PolymorphicMapType_8249| (Array T@Ref T@Field_7773_7774 Bool)) (|PolymorphicMapType_8249_7760_3259#PolymorphicMapType_8249| (Array T@Ref T@Field_13940_3259 Bool)) (|PolymorphicMapType_8249_7760_19997#PolymorphicMapType_8249| (Array T@Ref T@Field_7760_19997 Bool)) (|PolymorphicMapType_8249_7760_21308#PolymorphicMapType_8249| (Array T@Ref T@Field_7760_20130 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7700 0)) (((PolymorphicMapType_7700 (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| (Array T@Ref T@Field_7760_53 Bool)) (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| (Array T@Ref T@Field_7773_7774 T@Ref)) (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| (Array T@Ref T@Field_13940_3259 Int)) (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| (Array T@Ref T@Field_7760_20130 T@PolymorphicMapType_8249)) (|PolymorphicMapType_7700_7760_19997#PolymorphicMapType_7700| (Array T@Ref T@Field_7760_19997 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_7760_53)
(declare-fun f_7 () T@Field_13940_3259)
(declare-fun succHeap (T@PolymorphicMapType_7700 T@PolymorphicMapType_7700) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7700 T@PolymorphicMapType_7700) Bool)
(declare-fun state (T@PolymorphicMapType_7700 T@PolymorphicMapType_7721) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7721) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8249)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7700 T@PolymorphicMapType_7700 T@PolymorphicMapType_7721) Bool)
(declare-fun IsPredicateField_7760_20088 (T@Field_7760_19997) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7760 (T@Field_7760_19997) T@Field_7760_20130)
(declare-fun HasDirectPerm_7760_20061 (T@PolymorphicMapType_7721 T@Ref T@Field_7760_19997) Bool)
(declare-fun IsWandField_7760_21835 (T@Field_7760_19997) Bool)
(declare-fun WandMaskField_7760 (T@Field_7760_19997) T@Field_7760_20130)
(declare-fun dummyHeap () T@PolymorphicMapType_7700)
(declare-fun ZeroMask () T@PolymorphicMapType_7721)
(declare-fun InsidePredicate_7760_7760 (T@Field_7760_19997 T@FrameType T@Field_7760_19997 T@FrameType) Bool)
(declare-fun IsPredicateField_4819_3259 (T@Field_13940_3259) Bool)
(declare-fun IsWandField_4819_3259 (T@Field_13940_3259) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4819_25381 (T@Field_7760_20130) Bool)
(declare-fun IsWandField_4819_25397 (T@Field_7760_20130) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4819_7774 (T@Field_7773_7774) Bool)
(declare-fun IsWandField_4819_7774 (T@Field_7773_7774) Bool)
(declare-fun IsPredicateField_4819_53 (T@Field_7760_53) Bool)
(declare-fun IsWandField_4819_53 (T@Field_7760_53) Bool)
(declare-fun HasDirectPerm_7760_25835 (T@PolymorphicMapType_7721 T@Ref T@Field_7760_20130) Bool)
(declare-fun HasDirectPerm_7760_3259 (T@PolymorphicMapType_7721 T@Ref T@Field_13940_3259) Bool)
(declare-fun HasDirectPerm_7760_7774 (T@PolymorphicMapType_7721 T@Ref T@Field_7773_7774) Bool)
(declare-fun HasDirectPerm_7760_53 (T@PolymorphicMapType_7721 T@Ref T@Field_7760_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7721 T@PolymorphicMapType_7721 T@PolymorphicMapType_7721) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7700) (Heap1 T@PolymorphicMapType_7700) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7700) (Mask T@PolymorphicMapType_7721) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7700) (Heap1@@0 T@PolymorphicMapType_7700) (Heap2 T@PolymorphicMapType_7700) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7760_20130) ) (!  (not (select (|PolymorphicMapType_8249_7760_21308#PolymorphicMapType_8249| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8249_7760_21308#PolymorphicMapType_8249| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7760_19997) ) (!  (not (select (|PolymorphicMapType_8249_7760_19997#PolymorphicMapType_8249| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8249_7760_19997#PolymorphicMapType_8249| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13940_3259) ) (!  (not (select (|PolymorphicMapType_8249_7760_3259#PolymorphicMapType_8249| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8249_7760_3259#PolymorphicMapType_8249| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7773_7774) ) (!  (not (select (|PolymorphicMapType_8249_7760_7774#PolymorphicMapType_8249| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8249_7760_7774#PolymorphicMapType_8249| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7760_53) ) (!  (not (select (|PolymorphicMapType_8249_7760_53#PolymorphicMapType_8249| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8249_7760_53#PolymorphicMapType_8249| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.294:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.297:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7700) (ExhaleHeap T@PolymorphicMapType_7700) (Mask@@0 T@PolymorphicMapType_7721) (pm_f_32 T@Field_7760_19997) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7760_20061 Mask@@0 null pm_f_32) (IsPredicateField_7760_20088 pm_f_32)) (= (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@0) null (PredicateMaskField_7760 pm_f_32)) (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| ExhaleHeap) null (PredicateMaskField_7760 pm_f_32)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_7760_20088 pm_f_32) (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| ExhaleHeap) null (PredicateMaskField_7760 pm_f_32)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7700) (ExhaleHeap@@0 T@PolymorphicMapType_7700) (Mask@@1 T@PolymorphicMapType_7721) (pm_f_32@@0 T@Field_7760_19997) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7760_20061 Mask@@1 null pm_f_32@@0) (IsWandField_7760_21835 pm_f_32@@0)) (= (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@1) null (WandMaskField_7760 pm_f_32@@0)) (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| ExhaleHeap@@0) null (WandMaskField_7760 pm_f_32@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_7760_21835 pm_f_32@@0) (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| ExhaleHeap@@0) null (WandMaskField_7760 pm_f_32@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7700) (ExhaleHeap@@1 T@PolymorphicMapType_7700) (Mask@@2 T@PolymorphicMapType_7721) (o_55 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| Heap@@2) o_55 $allocated) (select (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| ExhaleHeap@@1) o_55 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| ExhaleHeap@@1) o_55 $allocated))
)))
(assert (forall ((p T@Field_7760_19997) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7760_7760 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7760_7760 p v_1 p w))
)))
(assert  (not (IsPredicateField_4819_3259 f_7)))
(assert  (not (IsWandField_4819_3259 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7700) (ExhaleHeap@@2 T@PolymorphicMapType_7700) (Mask@@3 T@PolymorphicMapType_7721) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_7721) (o_2@@4 T@Ref) (f_4@@4 T@Field_7760_20130) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_7721_4819_24252#PolymorphicMapType_7721| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_4819_25381 f_4@@4))) (not (IsWandField_4819_25397 f_4@@4))) (<= (select (|PolymorphicMapType_7721_4819_24252#PolymorphicMapType_7721| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_7721_4819_24252#PolymorphicMapType_7721| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_7721) (o_2@@5 T@Ref) (f_4@@5 T@Field_7760_19997) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_7721_4819_19997#PolymorphicMapType_7721| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_7760_20088 f_4@@5))) (not (IsWandField_7760_21835 f_4@@5))) (<= (select (|PolymorphicMapType_7721_4819_19997#PolymorphicMapType_7721| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_7721_4819_19997#PolymorphicMapType_7721| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_7721) (o_2@@6 T@Ref) (f_4@@6 T@Field_7773_7774) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_7721_4819_7774#PolymorphicMapType_7721| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4819_7774 f_4@@6))) (not (IsWandField_4819_7774 f_4@@6))) (<= (select (|PolymorphicMapType_7721_4819_7774#PolymorphicMapType_7721| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_7721_4819_7774#PolymorphicMapType_7721| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_7721) (o_2@@7 T@Ref) (f_4@@7 T@Field_7760_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_7721_4819_53#PolymorphicMapType_7721| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4819_53 f_4@@7))) (not (IsWandField_4819_53 f_4@@7))) (<= (select (|PolymorphicMapType_7721_4819_53#PolymorphicMapType_7721| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_7721_4819_53#PolymorphicMapType_7721| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_7721) (o_2@@8 T@Ref) (f_4@@8 T@Field_13940_3259) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4819_3259 f_4@@8))) (not (IsWandField_4819_3259 f_4@@8))) (<= (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_7721) (o_2@@9 T@Ref) (f_4@@9 T@Field_7760_20130) ) (! (= (HasDirectPerm_7760_25835 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_7721_4819_24252#PolymorphicMapType_7721| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7760_25835 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7721) (o_2@@10 T@Ref) (f_4@@10 T@Field_7760_19997) ) (! (= (HasDirectPerm_7760_20061 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_7721_4819_19997#PolymorphicMapType_7721| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7760_20061 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7721) (o_2@@11 T@Ref) (f_4@@11 T@Field_13940_3259) ) (! (= (HasDirectPerm_7760_3259 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7760_3259 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7721) (o_2@@12 T@Ref) (f_4@@12 T@Field_7773_7774) ) (! (= (HasDirectPerm_7760_7774 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_7721_4819_7774#PolymorphicMapType_7721| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7760_7774 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7721) (o_2@@13 T@Ref) (f_4@@13 T@Field_7760_53) ) (! (= (HasDirectPerm_7760_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_7721_4819_53#PolymorphicMapType_7721| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7760_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7700) (ExhaleHeap@@3 T@PolymorphicMapType_7700) (Mask@@14 T@PolymorphicMapType_7721) (pm_f_32@@1 T@Field_7760_19997) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_7760_20061 Mask@@14 null pm_f_32@@1) (IsPredicateField_7760_20088 pm_f_32@@1)) (and (and (and (and (forall ((o2_32 T@Ref) (f_54 T@Field_7760_53) ) (!  (=> (select (|PolymorphicMapType_8249_7760_53#PolymorphicMapType_8249| (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@4) null (PredicateMaskField_7760 pm_f_32@@1))) o2_32 f_54) (= (select (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| Heap@@4) o2_32 f_54) (select (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| ExhaleHeap@@3) o2_32 f_54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| ExhaleHeap@@3) o2_32 f_54))
)) (forall ((o2_32@@0 T@Ref) (f_54@@0 T@Field_7773_7774) ) (!  (=> (select (|PolymorphicMapType_8249_7760_7774#PolymorphicMapType_8249| (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@4) null (PredicateMaskField_7760 pm_f_32@@1))) o2_32@@0 f_54@@0) (= (select (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| Heap@@4) o2_32@@0 f_54@@0) (select (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| ExhaleHeap@@3) o2_32@@0 f_54@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| ExhaleHeap@@3) o2_32@@0 f_54@@0))
))) (forall ((o2_32@@1 T@Ref) (f_54@@1 T@Field_13940_3259) ) (!  (=> (select (|PolymorphicMapType_8249_7760_3259#PolymorphicMapType_8249| (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@4) null (PredicateMaskField_7760 pm_f_32@@1))) o2_32@@1 f_54@@1) (= (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@4) o2_32@@1 f_54@@1) (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| ExhaleHeap@@3) o2_32@@1 f_54@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| ExhaleHeap@@3) o2_32@@1 f_54@@1))
))) (forall ((o2_32@@2 T@Ref) (f_54@@2 T@Field_7760_19997) ) (!  (=> (select (|PolymorphicMapType_8249_7760_19997#PolymorphicMapType_8249| (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@4) null (PredicateMaskField_7760 pm_f_32@@1))) o2_32@@2 f_54@@2) (= (select (|PolymorphicMapType_7700_7760_19997#PolymorphicMapType_7700| Heap@@4) o2_32@@2 f_54@@2) (select (|PolymorphicMapType_7700_7760_19997#PolymorphicMapType_7700| ExhaleHeap@@3) o2_32@@2 f_54@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7700_7760_19997#PolymorphicMapType_7700| ExhaleHeap@@3) o2_32@@2 f_54@@2))
))) (forall ((o2_32@@3 T@Ref) (f_54@@3 T@Field_7760_20130) ) (!  (=> (select (|PolymorphicMapType_8249_7760_21308#PolymorphicMapType_8249| (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@4) null (PredicateMaskField_7760 pm_f_32@@1))) o2_32@@3 f_54@@3) (= (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@4) o2_32@@3 f_54@@3) (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| ExhaleHeap@@3) o2_32@@3 f_54@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| ExhaleHeap@@3) o2_32@@3 f_54@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_7760_20088 pm_f_32@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7700) (ExhaleHeap@@4 T@PolymorphicMapType_7700) (Mask@@15 T@PolymorphicMapType_7721) (pm_f_32@@2 T@Field_7760_19997) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_7760_20061 Mask@@15 null pm_f_32@@2) (IsWandField_7760_21835 pm_f_32@@2)) (and (and (and (and (forall ((o2_32@@4 T@Ref) (f_54@@4 T@Field_7760_53) ) (!  (=> (select (|PolymorphicMapType_8249_7760_53#PolymorphicMapType_8249| (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@5) null (WandMaskField_7760 pm_f_32@@2))) o2_32@@4 f_54@@4) (= (select (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| Heap@@5) o2_32@@4 f_54@@4) (select (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| ExhaleHeap@@4) o2_32@@4 f_54@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| ExhaleHeap@@4) o2_32@@4 f_54@@4))
)) (forall ((o2_32@@5 T@Ref) (f_54@@5 T@Field_7773_7774) ) (!  (=> (select (|PolymorphicMapType_8249_7760_7774#PolymorphicMapType_8249| (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@5) null (WandMaskField_7760 pm_f_32@@2))) o2_32@@5 f_54@@5) (= (select (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| Heap@@5) o2_32@@5 f_54@@5) (select (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| ExhaleHeap@@4) o2_32@@5 f_54@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| ExhaleHeap@@4) o2_32@@5 f_54@@5))
))) (forall ((o2_32@@6 T@Ref) (f_54@@6 T@Field_13940_3259) ) (!  (=> (select (|PolymorphicMapType_8249_7760_3259#PolymorphicMapType_8249| (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@5) null (WandMaskField_7760 pm_f_32@@2))) o2_32@@6 f_54@@6) (= (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@5) o2_32@@6 f_54@@6) (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| ExhaleHeap@@4) o2_32@@6 f_54@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| ExhaleHeap@@4) o2_32@@6 f_54@@6))
))) (forall ((o2_32@@7 T@Ref) (f_54@@7 T@Field_7760_19997) ) (!  (=> (select (|PolymorphicMapType_8249_7760_19997#PolymorphicMapType_8249| (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@5) null (WandMaskField_7760 pm_f_32@@2))) o2_32@@7 f_54@@7) (= (select (|PolymorphicMapType_7700_7760_19997#PolymorphicMapType_7700| Heap@@5) o2_32@@7 f_54@@7) (select (|PolymorphicMapType_7700_7760_19997#PolymorphicMapType_7700| ExhaleHeap@@4) o2_32@@7 f_54@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7700_7760_19997#PolymorphicMapType_7700| ExhaleHeap@@4) o2_32@@7 f_54@@7))
))) (forall ((o2_32@@8 T@Ref) (f_54@@8 T@Field_7760_20130) ) (!  (=> (select (|PolymorphicMapType_8249_7760_21308#PolymorphicMapType_8249| (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@5) null (WandMaskField_7760 pm_f_32@@2))) o2_32@@8 f_54@@8) (= (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@5) o2_32@@8 f_54@@8) (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| ExhaleHeap@@4) o2_32@@8 f_54@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| ExhaleHeap@@4) o2_32@@8 f_54@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_7760_21835 pm_f_32@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7700) (ExhaleHeap@@5 T@PolymorphicMapType_7700) (Mask@@16 T@PolymorphicMapType_7721) (o_55@@0 T@Ref) (f_54@@9 T@Field_7760_20130) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_7760_25835 Mask@@16 o_55@@0 f_54@@9) (= (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@6) o_55@@0 f_54@@9) (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| ExhaleHeap@@5) o_55@@0 f_54@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| ExhaleHeap@@5) o_55@@0 f_54@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7700) (ExhaleHeap@@6 T@PolymorphicMapType_7700) (Mask@@17 T@PolymorphicMapType_7721) (o_55@@1 T@Ref) (f_54@@10 T@Field_7760_19997) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_7760_20061 Mask@@17 o_55@@1 f_54@@10) (= (select (|PolymorphicMapType_7700_7760_19997#PolymorphicMapType_7700| Heap@@7) o_55@@1 f_54@@10) (select (|PolymorphicMapType_7700_7760_19997#PolymorphicMapType_7700| ExhaleHeap@@6) o_55@@1 f_54@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_7700_7760_19997#PolymorphicMapType_7700| ExhaleHeap@@6) o_55@@1 f_54@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7700) (ExhaleHeap@@7 T@PolymorphicMapType_7700) (Mask@@18 T@PolymorphicMapType_7721) (o_55@@2 T@Ref) (f_54@@11 T@Field_13940_3259) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_7760_3259 Mask@@18 o_55@@2 f_54@@11) (= (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@8) o_55@@2 f_54@@11) (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| ExhaleHeap@@7) o_55@@2 f_54@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| ExhaleHeap@@7) o_55@@2 f_54@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7700) (ExhaleHeap@@8 T@PolymorphicMapType_7700) (Mask@@19 T@PolymorphicMapType_7721) (o_55@@3 T@Ref) (f_54@@12 T@Field_7773_7774) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_7760_7774 Mask@@19 o_55@@3 f_54@@12) (= (select (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| Heap@@9) o_55@@3 f_54@@12) (select (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| ExhaleHeap@@8) o_55@@3 f_54@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| ExhaleHeap@@8) o_55@@3 f_54@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7700) (ExhaleHeap@@9 T@PolymorphicMapType_7700) (Mask@@20 T@PolymorphicMapType_7721) (o_55@@4 T@Ref) (f_54@@13 T@Field_7760_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_7760_53 Mask@@20 o_55@@4 f_54@@13) (= (select (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| Heap@@10) o_55@@4 f_54@@13) (select (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| ExhaleHeap@@9) o_55@@4 f_54@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| ExhaleHeap@@9) o_55@@4 f_54@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7760_20130) ) (! (= (select (|PolymorphicMapType_7721_4819_24252#PolymorphicMapType_7721| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7721_4819_24252#PolymorphicMapType_7721| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_7760_19997) ) (! (= (select (|PolymorphicMapType_7721_4819_19997#PolymorphicMapType_7721| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7721_4819_19997#PolymorphicMapType_7721| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_7773_7774) ) (! (= (select (|PolymorphicMapType_7721_4819_7774#PolymorphicMapType_7721| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7721_4819_7774#PolymorphicMapType_7721| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_7760_53) ) (! (= (select (|PolymorphicMapType_7721_4819_53#PolymorphicMapType_7721| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7721_4819_53#PolymorphicMapType_7721| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_13940_3259) ) (! (= (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7721) (SummandMask1 T@PolymorphicMapType_7721) (SummandMask2 T@PolymorphicMapType_7721) (o_2@@19 T@Ref) (f_4@@19 T@Field_7760_20130) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7721_4819_24252#PolymorphicMapType_7721| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_7721_4819_24252#PolymorphicMapType_7721| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_7721_4819_24252#PolymorphicMapType_7721| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7721_4819_24252#PolymorphicMapType_7721| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7721_4819_24252#PolymorphicMapType_7721| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7721_4819_24252#PolymorphicMapType_7721| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7721) (SummandMask1@@0 T@PolymorphicMapType_7721) (SummandMask2@@0 T@PolymorphicMapType_7721) (o_2@@20 T@Ref) (f_4@@20 T@Field_7760_19997) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7721_4819_19997#PolymorphicMapType_7721| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_7721_4819_19997#PolymorphicMapType_7721| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_7721_4819_19997#PolymorphicMapType_7721| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7721_4819_19997#PolymorphicMapType_7721| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7721_4819_19997#PolymorphicMapType_7721| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7721_4819_19997#PolymorphicMapType_7721| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7721) (SummandMask1@@1 T@PolymorphicMapType_7721) (SummandMask2@@1 T@PolymorphicMapType_7721) (o_2@@21 T@Ref) (f_4@@21 T@Field_7773_7774) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7721_4819_7774#PolymorphicMapType_7721| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_7721_4819_7774#PolymorphicMapType_7721| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_7721_4819_7774#PolymorphicMapType_7721| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7721_4819_7774#PolymorphicMapType_7721| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7721_4819_7774#PolymorphicMapType_7721| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7721_4819_7774#PolymorphicMapType_7721| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7721) (SummandMask1@@2 T@PolymorphicMapType_7721) (SummandMask2@@2 T@PolymorphicMapType_7721) (o_2@@22 T@Ref) (f_4@@22 T@Field_7760_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7721_4819_53#PolymorphicMapType_7721| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_7721_4819_53#PolymorphicMapType_7721| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_7721_4819_53#PolymorphicMapType_7721| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7721_4819_53#PolymorphicMapType_7721| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7721_4819_53#PolymorphicMapType_7721| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7721_4819_53#PolymorphicMapType_7721| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7721) (SummandMask1@@3 T@PolymorphicMapType_7721) (SummandMask2@@3 T@PolymorphicMapType_7721) (o_2@@23 T@Ref) (f_4@@23 T@Field_13940_3259) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7700) (o_54 T@Ref) (f_8 T@Field_7760_19997) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_7700 (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| Heap@@11) (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| Heap@@11) (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@11) (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@11) (store (|PolymorphicMapType_7700_7760_19997#PolymorphicMapType_7700| Heap@@11) o_54 f_8 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7700 (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| Heap@@11) (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| Heap@@11) (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@11) (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@11) (store (|PolymorphicMapType_7700_7760_19997#PolymorphicMapType_7700| Heap@@11) o_54 f_8 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7700) (o_54@@0 T@Ref) (f_8@@0 T@Field_7760_20130) (v@@0 T@PolymorphicMapType_8249) ) (! (succHeap Heap@@12 (PolymorphicMapType_7700 (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| Heap@@12) (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| Heap@@12) (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@12) (store (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@12) o_54@@0 f_8@@0 v@@0) (|PolymorphicMapType_7700_7760_19997#PolymorphicMapType_7700| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7700 (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| Heap@@12) (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| Heap@@12) (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@12) (store (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@12) o_54@@0 f_8@@0 v@@0) (|PolymorphicMapType_7700_7760_19997#PolymorphicMapType_7700| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7700) (o_54@@1 T@Ref) (f_8@@1 T@Field_13940_3259) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_7700 (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| Heap@@13) (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| Heap@@13) (store (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@13) o_54@@1 f_8@@1 v@@1) (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@13) (|PolymorphicMapType_7700_7760_19997#PolymorphicMapType_7700| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7700 (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| Heap@@13) (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| Heap@@13) (store (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@13) o_54@@1 f_8@@1 v@@1) (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@13) (|PolymorphicMapType_7700_7760_19997#PolymorphicMapType_7700| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7700) (o_54@@2 T@Ref) (f_8@@2 T@Field_7773_7774) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_7700 (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| Heap@@14) (store (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| Heap@@14) o_54@@2 f_8@@2 v@@2) (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@14) (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@14) (|PolymorphicMapType_7700_7760_19997#PolymorphicMapType_7700| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7700 (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| Heap@@14) (store (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| Heap@@14) o_54@@2 f_8@@2 v@@2) (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@14) (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@14) (|PolymorphicMapType_7700_7760_19997#PolymorphicMapType_7700| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7700) (o_54@@3 T@Ref) (f_8@@3 T@Field_7760_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_7700 (store (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| Heap@@15) o_54@@3 f_8@@3 v@@3) (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| Heap@@15) (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@15) (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@15) (|PolymorphicMapType_7700_7760_19997#PolymorphicMapType_7700| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7700 (store (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| Heap@@15) o_54@@3 f_8@@3 v@@3) (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| Heap@@15) (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@15) (|PolymorphicMapType_7700_7760_20174#PolymorphicMapType_7700| Heap@@15) (|PolymorphicMapType_7700_7760_19997#PolymorphicMapType_7700| Heap@@15)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.292:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.293:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_54@@4 T@Ref) (f_24 T@Field_7773_7774) (Heap@@16 T@PolymorphicMapType_7700) ) (!  (=> (select (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| Heap@@16) o_54@@4 $allocated) (select (|PolymorphicMapType_7700_4518_53#PolymorphicMapType_7700| Heap@@16) (select (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| Heap@@16) o_54@@4 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7700_4521_4522#PolymorphicMapType_7700| Heap@@16) o_54@@4 f_24))
)))
(assert (forall ((p@@1 T@Field_7760_19997) (v_1@@0 T@FrameType) (q T@Field_7760_19997) (w@@0 T@FrameType) (r T@Field_7760_19997) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7760_7760 p@@1 v_1@@0 q w@@0) (InsidePredicate_7760_7760 q w@@0 r u)) (InsidePredicate_7760_7760 p@@1 v_1@@0 r u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7760_7760 p@@1 v_1@@0 q w@@0) (InsidePredicate_7760_7760 q w@@0 r u))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.298:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun wildcard@1 () Real)
(declare-fun xs () (Array T@Ref Bool))
(declare-fun QPMask@1 () T@PolymorphicMapType_7721)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_7700)
(declare-fun QPMask@2 () T@PolymorphicMapType_7721)
(declare-fun dummyFunction_3259 (Int) Bool)
(declare-fun neverTriggered3 (T@Ref) Bool)
(declare-fun wildcard@0 () Real)
(declare-fun QPMask@0 () T@PolymorphicMapType_7721)
(declare-fun Heap@@17 () T@PolymorphicMapType_7700)
(declare-fun neverTriggered2 (T@Ref) Bool)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun wildcard () Real)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon9_Else_correct  (=> (> wildcard@1 0.0) (and (=> (= (ControlFlow 0 5) (- 0 8)) (forall ((x_5 T@Ref) ) (!  (=> (select xs x_5) (> (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@1) x_5 f_7) NoPerm))
 :qid |stdinbpl.620:15|
 :skolemid |97|
))) (=> (forall ((x_5@@0 T@Ref) ) (!  (=> (select xs x_5@@0) (> (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@1) x_5@@0 f_7) NoPerm))
 :qid |stdinbpl.620:15|
 :skolemid |97|
)) (=> (forall ((x_5@@1 T@Ref) ) (!  (=> (select xs x_5@@1) (< wildcard@1 (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@1) x_5@@1 f_7)))
 :qid |stdinbpl.624:20|
 :skolemid |98|
)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (forall ((x_5@@2 T@Ref) ) (!  (=> (and (select xs x_5@@2) (dummyFunction_3259 (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| ExhaleHeap@0) x_5@@2 f_7))) (>= wildcard@1 NoPerm))
 :qid |stdinbpl.631:17|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| ExhaleHeap@0) x_5@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@2) x_5@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| ExhaleHeap@0) x_5@@2 f_7))
))) (=> (forall ((x_5@@3 T@Ref) ) (!  (=> (and (select xs x_5@@3) (dummyFunction_3259 (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| ExhaleHeap@0) x_5@@3 f_7))) (>= wildcard@1 NoPerm))
 :qid |stdinbpl.631:17|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| ExhaleHeap@0) x_5@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@2) x_5@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| ExhaleHeap@0) x_5@@3 f_7))
)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (forall ((x_5@@4 T@Ref) (x_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_5@@4 x_5_1)) (select xs x_5@@4)) (select xs x_5_1)) (< NoPerm wildcard@1)) (< NoPerm wildcard@1)) (not (= x_5@@4 x_5_1)))
 :qid |stdinbpl.638:17|
 :skolemid |100|
 :pattern ( (neverTriggered3 x_5@@4) (neverTriggered3 x_5_1))
))) (=> (forall ((x_5@@5 T@Ref) (x_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_5@@5 x_5_1@@0)) (select xs x_5@@5)) (select xs x_5_1@@0)) (< NoPerm wildcard@1)) (< NoPerm wildcard@1)) (not (= x_5@@5 x_5_1@@0)))
 :qid |stdinbpl.638:17|
 :skolemid |100|
 :pattern ( (neverTriggered3 x_5@@5) (neverTriggered3 x_5_1@@0))
)) (=> (= (ControlFlow 0 5) (- 0 4)) (forall ((x_5@@6 T@Ref) ) (!  (=> (select xs x_5@@6) (> (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@1) x_5@@6 f_7) NoPerm))
 :qid |stdinbpl.645:17|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| ExhaleHeap@0) x_5@@6 f_7))
 :pattern ( (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@2) x_5@@6 f_7))
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| ExhaleHeap@0) x_5@@6 f_7))
)))))))))))))
(let ((anon9_Then_correct true))
(let ((anon8_Else_correct  (=> (> wildcard@0 0.0) (and (=> (= (ControlFlow 0 9) (- 0 13)) (forall ((x_3 T@Ref) ) (!  (=> (select xs x_3) (> (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@0) x_3 f_7) NoPerm))
 :qid |stdinbpl.550:15|
 :skolemid |88|
))) (=> (forall ((x_3@@0 T@Ref) ) (!  (=> (select xs x_3@@0) (> (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@0) x_3@@0 f_7) NoPerm))
 :qid |stdinbpl.550:15|
 :skolemid |88|
)) (=> (forall ((x_3@@1 T@Ref) ) (!  (=> (select xs x_3@@1) (< wildcard@0 (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@0) x_3@@1 f_7)))
 :qid |stdinbpl.554:20|
 :skolemid |89|
)) (and (=> (= (ControlFlow 0 9) (- 0 12)) (forall ((x_3@@2 T@Ref) ) (!  (=> (and (select xs x_3@@2) (dummyFunction_3259 (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@17) x_3@@2 f_7))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.561:17|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@17) x_3@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@1) x_3@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@17) x_3@@2 f_7))
))) (=> (forall ((x_3@@3 T@Ref) ) (!  (=> (and (select xs x_3@@3) (dummyFunction_3259 (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@17) x_3@@3 f_7))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.561:17|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@17) x_3@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@1) x_3@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@17) x_3@@3 f_7))
)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (forall ((x_3@@4 T@Ref) (x_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3@@4 x_3_1)) (select xs x_3@@4)) (select xs x_3_1)) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= x_3@@4 x_3_1)))
 :qid |stdinbpl.568:17|
 :skolemid |91|
 :pattern ( (neverTriggered2 x_3@@4) (neverTriggered2 x_3_1))
))) (=> (forall ((x_3@@5 T@Ref) (x_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3@@5 x_3_1@@0)) (select xs x_3@@5)) (select xs x_3_1@@0)) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= x_3@@5 x_3_1@@0)))
 :qid |stdinbpl.568:17|
 :skolemid |91|
 :pattern ( (neverTriggered2 x_3@@5) (neverTriggered2 x_3_1@@0))
)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (forall ((x_3@@6 T@Ref) ) (!  (=> (select xs x_3@@6) (> (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@0) x_3@@6 f_7) NoPerm))
 :qid |stdinbpl.575:17|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@17) x_3@@6 f_7))
 :pattern ( (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@1) x_3@@6 f_7))
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@17) x_3@@6 f_7))
))) (=> (forall ((x_3@@7 T@Ref) ) (!  (=> (select xs x_3@@7) (> (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@0) x_3@@7 f_7) NoPerm))
 :qid |stdinbpl.575:17|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@17) x_3@@7 f_7))
 :pattern ( (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@1) x_3@@7 f_7))
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@17) x_3@@7 f_7))
)) (=> (forall ((x_3@@8 T@Ref) ) (!  (=> (and (select xs x_3@@8) (< NoPerm wildcard@0)) (and (qpRange2 x_3@@8) (= (invRecv2 x_3@@8) x_3@@8)))
 :qid |stdinbpl.581:22|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@17) x_3@@8 f_7))
 :pattern ( (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@1) x_3@@8 f_7))
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@17) x_3@@8 f_7))
)) (=> (and (forall ((o_9 T@Ref) ) (!  (=> (and (select xs (invRecv2 o_9)) (and (< NoPerm wildcard@0) (qpRange2 o_9))) (= (invRecv2 o_9) o_9))
 :qid |stdinbpl.585:22|
 :skolemid |94|
 :pattern ( (invRecv2 o_9))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (select xs (invRecv2 o_9@@0)) (and (< NoPerm wildcard@0) (qpRange2 o_9@@0))) (and (= (invRecv2 o_9@@0) o_9@@0) (= (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@1) o_9@@0 f_7) (- (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@0) o_9@@0 f_7) wildcard@0)))) (=> (not (and (select xs (invRecv2 o_9@@0)) (and (< NoPerm wildcard@0) (qpRange2 o_9@@0)))) (= (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@1) o_9@@0 f_7) (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@0) o_9@@0 f_7))))
 :qid |stdinbpl.591:22|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@1) o_9@@0 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_7760_53) ) (!  (=> true (= (select (|PolymorphicMapType_7721_4819_53#PolymorphicMapType_7721| QPMask@0) o_9@@1 f_5) (select (|PolymorphicMapType_7721_4819_53#PolymorphicMapType_7721| QPMask@1) o_9@@1 f_5)))
 :qid |stdinbpl.597:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_7721_4819_53#PolymorphicMapType_7721| QPMask@1) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_7773_7774) ) (!  (=> true (= (select (|PolymorphicMapType_7721_4819_7774#PolymorphicMapType_7721| QPMask@0) o_9@@2 f_5@@0) (select (|PolymorphicMapType_7721_4819_7774#PolymorphicMapType_7721| QPMask@1) o_9@@2 f_5@@0)))
 :qid |stdinbpl.597:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_7721_4819_7774#PolymorphicMapType_7721| QPMask@1) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_13940_3259) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@0) o_9@@3 f_5@@1) (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@1) o_9@@3 f_5@@1)))
 :qid |stdinbpl.597:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@1) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_7760_19997) ) (!  (=> true (= (select (|PolymorphicMapType_7721_4819_19997#PolymorphicMapType_7721| QPMask@0) o_9@@4 f_5@@2) (select (|PolymorphicMapType_7721_4819_19997#PolymorphicMapType_7721| QPMask@1) o_9@@4 f_5@@2)))
 :qid |stdinbpl.597:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_7721_4819_19997#PolymorphicMapType_7721| QPMask@1) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_7760_20130) ) (!  (=> true (= (select (|PolymorphicMapType_7721_4819_24252#PolymorphicMapType_7721| QPMask@0) o_9@@5 f_5@@3) (select (|PolymorphicMapType_7721_4819_24252#PolymorphicMapType_7721| QPMask@1) o_9@@5 f_5@@3)))
 :qid |stdinbpl.597:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_7721_4819_24252#PolymorphicMapType_7721| QPMask@1) o_9@@5 f_5@@3))
))) (and (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@1) (state ExhaleHeap@0 QPMask@1))) (and (=> (= (ControlFlow 0 9) 3) anon9_Then_correct) (=> (= (ControlFlow 0 9) 5) anon9_Else_correct)))))))))))))))))
(let ((anon8_Then_correct true))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 14) (- 0 15)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select xs x_1)) (select xs x_1_1)) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.503:15|
 :skolemid |82|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (select xs x_1@@0)) (select xs x_1_1@@0)) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.503:15|
 :skolemid |82|
)) (=> (and (and (forall ((x_1@@1 T@Ref) ) (!  (=> (select xs x_1@@1) (and (qpRange1 x_1@@1) (= (invRecv1 x_1@@1) x_1@@1)))
 :qid |stdinbpl.509:22|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@17) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@0) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@17) x_1@@1 f_7))
)) (forall ((o_9@@6 T@Ref) ) (!  (=> (and (select xs (invRecv1 o_9@@6)) (qpRange1 o_9@@6)) (= (invRecv1 o_9@@6) o_9@@6))
 :qid |stdinbpl.513:22|
 :skolemid |84|
 :pattern ( (invRecv1 o_9@@6))
))) (and (forall ((x_1@@2 T@Ref) ) (!  (=> (select xs x_1@@2) (not (= x_1@@2 null)))
 :qid |stdinbpl.519:22|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@17) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@0) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_7700_4819_3259#PolymorphicMapType_7700| Heap@@17) x_1@@2 f_7))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (select xs (invRecv1 o_9@@7)) (qpRange1 o_9@@7)) (and (= (invRecv1 o_9@@7) o_9@@7) (< (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| ZeroMask) o_9@@7 f_7) (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@0) o_9@@7 f_7)))) (=> (not (and (select xs (invRecv1 o_9@@7)) (qpRange1 o_9@@7))) (= (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@0) o_9@@7 f_7) (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| ZeroMask) o_9@@7 f_7))))
 :qid |stdinbpl.525:22|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@0) o_9@@7 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_7760_53) ) (!  (=> true (= (select (|PolymorphicMapType_7721_4819_53#PolymorphicMapType_7721| ZeroMask) o_9@@8 f_5@@4) (select (|PolymorphicMapType_7721_4819_53#PolymorphicMapType_7721| QPMask@0) o_9@@8 f_5@@4)))
 :qid |stdinbpl.529:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_7721_4819_53#PolymorphicMapType_7721| ZeroMask) o_9@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_7721_4819_53#PolymorphicMapType_7721| QPMask@0) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_7773_7774) ) (!  (=> true (= (select (|PolymorphicMapType_7721_4819_7774#PolymorphicMapType_7721| ZeroMask) o_9@@9 f_5@@5) (select (|PolymorphicMapType_7721_4819_7774#PolymorphicMapType_7721| QPMask@0) o_9@@9 f_5@@5)))
 :qid |stdinbpl.529:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_7721_4819_7774#PolymorphicMapType_7721| ZeroMask) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_7721_4819_7774#PolymorphicMapType_7721| QPMask@0) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_13940_3259) ) (!  (=> (not (= f_5@@6 f_7)) (= (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| ZeroMask) o_9@@10 f_5@@6) (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@0) o_9@@10 f_5@@6)))
 :qid |stdinbpl.529:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| ZeroMask) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_7721_4819_3259#PolymorphicMapType_7721| QPMask@0) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_7760_19997) ) (!  (=> true (= (select (|PolymorphicMapType_7721_4819_19997#PolymorphicMapType_7721| ZeroMask) o_9@@11 f_5@@7) (select (|PolymorphicMapType_7721_4819_19997#PolymorphicMapType_7721| QPMask@0) o_9@@11 f_5@@7)))
 :qid |stdinbpl.529:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_7721_4819_19997#PolymorphicMapType_7721| ZeroMask) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_7721_4819_19997#PolymorphicMapType_7721| QPMask@0) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_7760_20130) ) (!  (=> true (= (select (|PolymorphicMapType_7721_4819_24252#PolymorphicMapType_7721| ZeroMask) o_9@@12 f_5@@8) (select (|PolymorphicMapType_7721_4819_24252#PolymorphicMapType_7721| QPMask@0) o_9@@12 f_5@@8)))
 :qid |stdinbpl.529:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_7721_4819_24252#PolymorphicMapType_7721| ZeroMask) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_7721_4819_24252#PolymorphicMapType_7721| QPMask@0) o_9@@12 f_5@@8))
))) (state Heap@@17 QPMask@0)) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (=> (= (ControlFlow 0 14) 2) anon8_Then_correct) (=> (= (ControlFlow 0 14) 9) anon8_Else_correct))))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 16) 1) anon7_Then_correct) (=> (= (ControlFlow 0 16) 14) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard 0.0) true) (= (ControlFlow 0 17) 16)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
