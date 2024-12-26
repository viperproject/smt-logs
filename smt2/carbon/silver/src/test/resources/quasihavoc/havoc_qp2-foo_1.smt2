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
(declare-sort T@Field_6894_53 0)
(declare-sort T@Field_6907_6908 0)
(declare-sort T@Field_13066_3211 0)
(declare-sort T@Field_4230_17014 0)
(declare-sort T@Field_4230_16881 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6855 0)) (((PolymorphicMapType_6855 (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| (Array T@Ref T@Field_13066_3211 Real)) (|PolymorphicMapType_6855_4230_53#PolymorphicMapType_6855| (Array T@Ref T@Field_6894_53 Real)) (|PolymorphicMapType_6855_4230_6908#PolymorphicMapType_6855| (Array T@Ref T@Field_6907_6908 Real)) (|PolymorphicMapType_6855_4230_16881#PolymorphicMapType_6855| (Array T@Ref T@Field_4230_16881 Real)) (|PolymorphicMapType_6855_4230_21136#PolymorphicMapType_6855| (Array T@Ref T@Field_4230_17014 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7383 0)) (((PolymorphicMapType_7383 (|PolymorphicMapType_7383_6894_53#PolymorphicMapType_7383| (Array T@Ref T@Field_6894_53 Bool)) (|PolymorphicMapType_7383_6894_6908#PolymorphicMapType_7383| (Array T@Ref T@Field_6907_6908 Bool)) (|PolymorphicMapType_7383_6894_3211#PolymorphicMapType_7383| (Array T@Ref T@Field_13066_3211 Bool)) (|PolymorphicMapType_7383_6894_16881#PolymorphicMapType_7383| (Array T@Ref T@Field_4230_16881 Bool)) (|PolymorphicMapType_7383_6894_18192#PolymorphicMapType_7383| (Array T@Ref T@Field_4230_17014 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6834 0)) (((PolymorphicMapType_6834 (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| (Array T@Ref T@Field_6894_53 Bool)) (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| (Array T@Ref T@Field_6907_6908 T@Ref)) (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| (Array T@Ref T@Field_13066_3211 Int)) (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| (Array T@Ref T@Field_4230_17014 T@PolymorphicMapType_7383)) (|PolymorphicMapType_6834_6894_16881#PolymorphicMapType_6834| (Array T@Ref T@Field_4230_16881 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6894_53)
(declare-fun f_7 () T@Field_13066_3211)
(declare-fun succHeap (T@PolymorphicMapType_6834 T@PolymorphicMapType_6834) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6834 T@PolymorphicMapType_6834) Bool)
(declare-fun state (T@PolymorphicMapType_6834 T@PolymorphicMapType_6855) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6855) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7383)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6834 T@PolymorphicMapType_6834 T@PolymorphicMapType_6855) Bool)
(declare-fun IsPredicateField_4230_16972 (T@Field_4230_16881) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4230 (T@Field_4230_16881) T@Field_4230_17014)
(declare-fun HasDirectPerm_4230_16945 (T@PolymorphicMapType_6855 T@Ref T@Field_4230_16881) Bool)
(declare-fun IsWandField_4230_18719 (T@Field_4230_16881) Bool)
(declare-fun WandMaskField_4230 (T@Field_4230_16881) T@Field_4230_17014)
(declare-fun dummyHeap () T@PolymorphicMapType_6834)
(declare-fun ZeroMask () T@PolymorphicMapType_6855)
(declare-fun InsidePredicate_6894_6894 (T@Field_4230_16881 T@FrameType T@Field_4230_16881 T@FrameType) Bool)
(declare-fun IsPredicateField_4230_3211 (T@Field_13066_3211) Bool)
(declare-fun IsWandField_4230_3211 (T@Field_13066_3211) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4230_22265 (T@Field_4230_17014) Bool)
(declare-fun IsWandField_4230_22281 (T@Field_4230_17014) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4230_6908 (T@Field_6907_6908) Bool)
(declare-fun IsWandField_4230_6908 (T@Field_6907_6908) Bool)
(declare-fun IsPredicateField_4230_53 (T@Field_6894_53) Bool)
(declare-fun IsWandField_4230_53 (T@Field_6894_53) Bool)
(declare-fun HasDirectPerm_4230_22719 (T@PolymorphicMapType_6855 T@Ref T@Field_4230_17014) Bool)
(declare-fun HasDirectPerm_4230_6908 (T@PolymorphicMapType_6855 T@Ref T@Field_6907_6908) Bool)
(declare-fun HasDirectPerm_4230_53 (T@PolymorphicMapType_6855 T@Ref T@Field_6894_53) Bool)
(declare-fun HasDirectPerm_4230_3211 (T@PolymorphicMapType_6855 T@Ref T@Field_13066_3211) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6855 T@PolymorphicMapType_6855 T@PolymorphicMapType_6855) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6834) (Heap1 T@PolymorphicMapType_6834) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6834) (Mask T@PolymorphicMapType_6855) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6834) (Heap1@@0 T@PolymorphicMapType_6834) (Heap2 T@PolymorphicMapType_6834) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4230_17014) ) (!  (not (select (|PolymorphicMapType_7383_6894_18192#PolymorphicMapType_7383| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7383_6894_18192#PolymorphicMapType_7383| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4230_16881) ) (!  (not (select (|PolymorphicMapType_7383_6894_16881#PolymorphicMapType_7383| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7383_6894_16881#PolymorphicMapType_7383| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13066_3211) ) (!  (not (select (|PolymorphicMapType_7383_6894_3211#PolymorphicMapType_7383| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7383_6894_3211#PolymorphicMapType_7383| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6907_6908) ) (!  (not (select (|PolymorphicMapType_7383_6894_6908#PolymorphicMapType_7383| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7383_6894_6908#PolymorphicMapType_7383| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6894_53) ) (!  (not (select (|PolymorphicMapType_7383_6894_53#PolymorphicMapType_7383| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7383_6894_53#PolymorphicMapType_7383| ZeroPMask) o_2@@3 f_4@@3))
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_6834) (ExhaleHeap T@PolymorphicMapType_6834) (Mask@@0 T@PolymorphicMapType_6855) (pm_f_5 T@Field_4230_16881) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4230_16945 Mask@@0 null pm_f_5) (IsPredicateField_4230_16972 pm_f_5)) (= (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@0) null (PredicateMaskField_4230 pm_f_5)) (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| ExhaleHeap) null (PredicateMaskField_4230 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4230_16972 pm_f_5) (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| ExhaleHeap) null (PredicateMaskField_4230 pm_f_5)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6834) (ExhaleHeap@@0 T@PolymorphicMapType_6834) (Mask@@1 T@PolymorphicMapType_6855) (pm_f_5@@0 T@Field_4230_16881) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4230_16945 Mask@@1 null pm_f_5@@0) (IsWandField_4230_18719 pm_f_5@@0)) (= (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@1) null (WandMaskField_4230 pm_f_5@@0)) (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| ExhaleHeap@@0) null (WandMaskField_4230 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_4230_18719 pm_f_5@@0) (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| ExhaleHeap@@0) null (WandMaskField_4230 pm_f_5@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6834) (ExhaleHeap@@1 T@PolymorphicMapType_6834) (Mask@@2 T@PolymorphicMapType_6855) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| Heap@@2) o_12 $allocated) (select (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| ExhaleHeap@@1) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| ExhaleHeap@@1) o_12 $allocated))
)))
(assert (forall ((p T@Field_4230_16881) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6894_6894 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6894_6894 p v_1 p w))
)))
(assert  (not (IsPredicateField_4230_3211 f_7)))
(assert  (not (IsWandField_4230_3211 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6834) (ExhaleHeap@@2 T@PolymorphicMapType_6834) (Mask@@3 T@PolymorphicMapType_6855) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_6855) (o_2@@4 T@Ref) (f_4@@4 T@Field_4230_17014) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_6855_4230_21136#PolymorphicMapType_6855| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_4230_22265 f_4@@4))) (not (IsWandField_4230_22281 f_4@@4))) (<= (select (|PolymorphicMapType_6855_4230_21136#PolymorphicMapType_6855| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_6855_4230_21136#PolymorphicMapType_6855| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_6855) (o_2@@5 T@Ref) (f_4@@5 T@Field_4230_16881) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_6855_4230_16881#PolymorphicMapType_6855| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_4230_16972 f_4@@5))) (not (IsWandField_4230_18719 f_4@@5))) (<= (select (|PolymorphicMapType_6855_4230_16881#PolymorphicMapType_6855| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_6855_4230_16881#PolymorphicMapType_6855| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6855) (o_2@@6 T@Ref) (f_4@@6 T@Field_6907_6908) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6855_4230_6908#PolymorphicMapType_6855| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4230_6908 f_4@@6))) (not (IsWandField_4230_6908 f_4@@6))) (<= (select (|PolymorphicMapType_6855_4230_6908#PolymorphicMapType_6855| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6855_4230_6908#PolymorphicMapType_6855| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6855) (o_2@@7 T@Ref) (f_4@@7 T@Field_6894_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6855_4230_53#PolymorphicMapType_6855| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4230_53 f_4@@7))) (not (IsWandField_4230_53 f_4@@7))) (<= (select (|PolymorphicMapType_6855_4230_53#PolymorphicMapType_6855| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6855_4230_53#PolymorphicMapType_6855| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6855) (o_2@@8 T@Ref) (f_4@@8 T@Field_13066_3211) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4230_3211 f_4@@8))) (not (IsWandField_4230_3211 f_4@@8))) (<= (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6855) (o_2@@9 T@Ref) (f_4@@9 T@Field_4230_17014) ) (! (= (HasDirectPerm_4230_22719 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6855_4230_21136#PolymorphicMapType_6855| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4230_22719 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6855) (o_2@@10 T@Ref) (f_4@@10 T@Field_4230_16881) ) (! (= (HasDirectPerm_4230_16945 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6855_4230_16881#PolymorphicMapType_6855| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4230_16945 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6855) (o_2@@11 T@Ref) (f_4@@11 T@Field_6907_6908) ) (! (= (HasDirectPerm_4230_6908 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6855_4230_6908#PolymorphicMapType_6855| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4230_6908 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6855) (o_2@@12 T@Ref) (f_4@@12 T@Field_6894_53) ) (! (= (HasDirectPerm_4230_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6855_4230_53#PolymorphicMapType_6855| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4230_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6855) (o_2@@13 T@Ref) (f_4@@13 T@Field_13066_3211) ) (! (= (HasDirectPerm_4230_3211 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4230_3211 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6834) (ExhaleHeap@@3 T@PolymorphicMapType_6834) (Mask@@14 T@PolymorphicMapType_6855) (pm_f_5@@1 T@Field_4230_16881) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_4230_16945 Mask@@14 null pm_f_5@@1) (IsPredicateField_4230_16972 pm_f_5@@1)) (and (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_6894_53) ) (!  (=> (select (|PolymorphicMapType_7383_6894_53#PolymorphicMapType_7383| (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@4) null (PredicateMaskField_4230 pm_f_5@@1))) o2_5 f_16) (= (select (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| Heap@@4) o2_5 f_16) (select (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| ExhaleHeap@@3) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| ExhaleHeap@@3) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_6907_6908) ) (!  (=> (select (|PolymorphicMapType_7383_6894_6908#PolymorphicMapType_7383| (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@4) null (PredicateMaskField_4230 pm_f_5@@1))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| Heap@@4) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| ExhaleHeap@@3) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| ExhaleHeap@@3) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_13066_3211) ) (!  (=> (select (|PolymorphicMapType_7383_6894_3211#PolymorphicMapType_7383| (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@4) null (PredicateMaskField_4230 pm_f_5@@1))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| Heap@@4) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| ExhaleHeap@@3) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| ExhaleHeap@@3) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_4230_16881) ) (!  (=> (select (|PolymorphicMapType_7383_6894_16881#PolymorphicMapType_7383| (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@4) null (PredicateMaskField_4230 pm_f_5@@1))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_6834_6894_16881#PolymorphicMapType_6834| Heap@@4) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_6834_6894_16881#PolymorphicMapType_6834| ExhaleHeap@@3) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6834_6894_16881#PolymorphicMapType_6834| ExhaleHeap@@3) o2_5@@2 f_16@@2))
))) (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_4230_17014) ) (!  (=> (select (|PolymorphicMapType_7383_6894_18192#PolymorphicMapType_7383| (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@4) null (PredicateMaskField_4230 pm_f_5@@1))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@4) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| ExhaleHeap@@3) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| ExhaleHeap@@3) o2_5@@3 f_16@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_4230_16972 pm_f_5@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6834) (ExhaleHeap@@4 T@PolymorphicMapType_6834) (Mask@@15 T@PolymorphicMapType_6855) (pm_f_5@@2 T@Field_4230_16881) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_4230_16945 Mask@@15 null pm_f_5@@2) (IsWandField_4230_18719 pm_f_5@@2)) (and (and (and (and (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_6894_53) ) (!  (=> (select (|PolymorphicMapType_7383_6894_53#PolymorphicMapType_7383| (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@5) null (WandMaskField_4230 pm_f_5@@2))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| Heap@@5) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| ExhaleHeap@@4) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| ExhaleHeap@@4) o2_5@@4 f_16@@4))
)) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_6907_6908) ) (!  (=> (select (|PolymorphicMapType_7383_6894_6908#PolymorphicMapType_7383| (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@5) null (WandMaskField_4230 pm_f_5@@2))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| Heap@@5) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| ExhaleHeap@@4) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| ExhaleHeap@@4) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_13066_3211) ) (!  (=> (select (|PolymorphicMapType_7383_6894_3211#PolymorphicMapType_7383| (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@5) null (WandMaskField_4230 pm_f_5@@2))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| Heap@@5) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| ExhaleHeap@@4) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| ExhaleHeap@@4) o2_5@@6 f_16@@6))
))) (forall ((o2_5@@7 T@Ref) (f_16@@7 T@Field_4230_16881) ) (!  (=> (select (|PolymorphicMapType_7383_6894_16881#PolymorphicMapType_7383| (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@5) null (WandMaskField_4230 pm_f_5@@2))) o2_5@@7 f_16@@7) (= (select (|PolymorphicMapType_6834_6894_16881#PolymorphicMapType_6834| Heap@@5) o2_5@@7 f_16@@7) (select (|PolymorphicMapType_6834_6894_16881#PolymorphicMapType_6834| ExhaleHeap@@4) o2_5@@7 f_16@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6834_6894_16881#PolymorphicMapType_6834| ExhaleHeap@@4) o2_5@@7 f_16@@7))
))) (forall ((o2_5@@8 T@Ref) (f_16@@8 T@Field_4230_17014) ) (!  (=> (select (|PolymorphicMapType_7383_6894_18192#PolymorphicMapType_7383| (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@5) null (WandMaskField_4230 pm_f_5@@2))) o2_5@@8 f_16@@8) (= (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@5) o2_5@@8 f_16@@8) (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| ExhaleHeap@@4) o2_5@@8 f_16@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| ExhaleHeap@@4) o2_5@@8 f_16@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_4230_18719 pm_f_5@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6834) (ExhaleHeap@@5 T@PolymorphicMapType_6834) (Mask@@16 T@PolymorphicMapType_6855) (o_12@@0 T@Ref) (f_16@@9 T@Field_4230_17014) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_4230_22719 Mask@@16 o_12@@0 f_16@@9) (= (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@6) o_12@@0 f_16@@9) (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| ExhaleHeap@@5) o_12@@0 f_16@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| ExhaleHeap@@5) o_12@@0 f_16@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6834) (ExhaleHeap@@6 T@PolymorphicMapType_6834) (Mask@@17 T@PolymorphicMapType_6855) (o_12@@1 T@Ref) (f_16@@10 T@Field_4230_16881) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_4230_16945 Mask@@17 o_12@@1 f_16@@10) (= (select (|PolymorphicMapType_6834_6894_16881#PolymorphicMapType_6834| Heap@@7) o_12@@1 f_16@@10) (select (|PolymorphicMapType_6834_6894_16881#PolymorphicMapType_6834| ExhaleHeap@@6) o_12@@1 f_16@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_6834_6894_16881#PolymorphicMapType_6834| ExhaleHeap@@6) o_12@@1 f_16@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6834) (ExhaleHeap@@7 T@PolymorphicMapType_6834) (Mask@@18 T@PolymorphicMapType_6855) (o_12@@2 T@Ref) (f_16@@11 T@Field_6907_6908) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_4230_6908 Mask@@18 o_12@@2 f_16@@11) (= (select (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| Heap@@8) o_12@@2 f_16@@11) (select (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| ExhaleHeap@@7) o_12@@2 f_16@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| ExhaleHeap@@7) o_12@@2 f_16@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6834) (ExhaleHeap@@8 T@PolymorphicMapType_6834) (Mask@@19 T@PolymorphicMapType_6855) (o_12@@3 T@Ref) (f_16@@12 T@Field_6894_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_4230_53 Mask@@19 o_12@@3 f_16@@12) (= (select (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| Heap@@9) o_12@@3 f_16@@12) (select (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| ExhaleHeap@@8) o_12@@3 f_16@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| ExhaleHeap@@8) o_12@@3 f_16@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6834) (ExhaleHeap@@9 T@PolymorphicMapType_6834) (Mask@@20 T@PolymorphicMapType_6855) (o_12@@4 T@Ref) (f_16@@13 T@Field_13066_3211) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_4230_3211 Mask@@20 o_12@@4 f_16@@13) (= (select (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| Heap@@10) o_12@@4 f_16@@13) (select (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| ExhaleHeap@@9) o_12@@4 f_16@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| ExhaleHeap@@9) o_12@@4 f_16@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4230_17014) ) (! (= (select (|PolymorphicMapType_6855_4230_21136#PolymorphicMapType_6855| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6855_4230_21136#PolymorphicMapType_6855| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_4230_16881) ) (! (= (select (|PolymorphicMapType_6855_4230_16881#PolymorphicMapType_6855| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6855_4230_16881#PolymorphicMapType_6855| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_6907_6908) ) (! (= (select (|PolymorphicMapType_6855_4230_6908#PolymorphicMapType_6855| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6855_4230_6908#PolymorphicMapType_6855| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6894_53) ) (! (= (select (|PolymorphicMapType_6855_4230_53#PolymorphicMapType_6855| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6855_4230_53#PolymorphicMapType_6855| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_13066_3211) ) (! (= (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6855) (SummandMask1 T@PolymorphicMapType_6855) (SummandMask2 T@PolymorphicMapType_6855) (o_2@@19 T@Ref) (f_4@@19 T@Field_4230_17014) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6855_4230_21136#PolymorphicMapType_6855| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6855_4230_21136#PolymorphicMapType_6855| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6855_4230_21136#PolymorphicMapType_6855| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6855_4230_21136#PolymorphicMapType_6855| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6855_4230_21136#PolymorphicMapType_6855| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6855_4230_21136#PolymorphicMapType_6855| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6855) (SummandMask1@@0 T@PolymorphicMapType_6855) (SummandMask2@@0 T@PolymorphicMapType_6855) (o_2@@20 T@Ref) (f_4@@20 T@Field_4230_16881) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6855_4230_16881#PolymorphicMapType_6855| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6855_4230_16881#PolymorphicMapType_6855| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6855_4230_16881#PolymorphicMapType_6855| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6855_4230_16881#PolymorphicMapType_6855| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6855_4230_16881#PolymorphicMapType_6855| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6855_4230_16881#PolymorphicMapType_6855| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6855) (SummandMask1@@1 T@PolymorphicMapType_6855) (SummandMask2@@1 T@PolymorphicMapType_6855) (o_2@@21 T@Ref) (f_4@@21 T@Field_6907_6908) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6855_4230_6908#PolymorphicMapType_6855| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6855_4230_6908#PolymorphicMapType_6855| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6855_4230_6908#PolymorphicMapType_6855| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6855_4230_6908#PolymorphicMapType_6855| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6855_4230_6908#PolymorphicMapType_6855| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6855_4230_6908#PolymorphicMapType_6855| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6855) (SummandMask1@@2 T@PolymorphicMapType_6855) (SummandMask2@@2 T@PolymorphicMapType_6855) (o_2@@22 T@Ref) (f_4@@22 T@Field_6894_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6855_4230_53#PolymorphicMapType_6855| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6855_4230_53#PolymorphicMapType_6855| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6855_4230_53#PolymorphicMapType_6855| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6855_4230_53#PolymorphicMapType_6855| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6855_4230_53#PolymorphicMapType_6855| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6855_4230_53#PolymorphicMapType_6855| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6855) (SummandMask1@@3 T@PolymorphicMapType_6855) (SummandMask2@@3 T@PolymorphicMapType_6855) (o_2@@23 T@Ref) (f_4@@23 T@Field_13066_3211) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6834) (o_11 T@Ref) (f_17 T@Field_4230_16881) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_6834 (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| Heap@@11) (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| Heap@@11) (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| Heap@@11) (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@11) (store (|PolymorphicMapType_6834_6894_16881#PolymorphicMapType_6834| Heap@@11) o_11 f_17 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6834 (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| Heap@@11) (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| Heap@@11) (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| Heap@@11) (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@11) (store (|PolymorphicMapType_6834_6894_16881#PolymorphicMapType_6834| Heap@@11) o_11 f_17 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6834) (o_11@@0 T@Ref) (f_17@@0 T@Field_4230_17014) (v@@0 T@PolymorphicMapType_7383) ) (! (succHeap Heap@@12 (PolymorphicMapType_6834 (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| Heap@@12) (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| Heap@@12) (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| Heap@@12) (store (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@12) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_6834_6894_16881#PolymorphicMapType_6834| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6834 (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| Heap@@12) (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| Heap@@12) (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| Heap@@12) (store (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@12) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_6834_6894_16881#PolymorphicMapType_6834| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6834) (o_11@@1 T@Ref) (f_17@@1 T@Field_13066_3211) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_6834 (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| Heap@@13) (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| Heap@@13) (store (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| Heap@@13) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@13) (|PolymorphicMapType_6834_6894_16881#PolymorphicMapType_6834| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6834 (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| Heap@@13) (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| Heap@@13) (store (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| Heap@@13) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@13) (|PolymorphicMapType_6834_6894_16881#PolymorphicMapType_6834| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6834) (o_11@@2 T@Ref) (f_17@@2 T@Field_6907_6908) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_6834 (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| Heap@@14) (store (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| Heap@@14) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| Heap@@14) (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@14) (|PolymorphicMapType_6834_6894_16881#PolymorphicMapType_6834| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6834 (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| Heap@@14) (store (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| Heap@@14) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| Heap@@14) (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@14) (|PolymorphicMapType_6834_6894_16881#PolymorphicMapType_6834| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6834) (o_11@@3 T@Ref) (f_17@@3 T@Field_6894_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_6834 (store (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| Heap@@15) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| Heap@@15) (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| Heap@@15) (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@15) (|PolymorphicMapType_6834_6894_16881#PolymorphicMapType_6834| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6834 (store (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| Heap@@15) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| Heap@@15) (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| Heap@@15) (|PolymorphicMapType_6834_4230_17058#PolymorphicMapType_6834| Heap@@15) (|PolymorphicMapType_6834_6894_16881#PolymorphicMapType_6834| Heap@@15)))
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
(assert (forall ((o_11@@4 T@Ref) (f_10 T@Field_6907_6908) (Heap@@16 T@PolymorphicMapType_6834) ) (!  (=> (select (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| Heap@@16) o_11@@4 $allocated) (select (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| Heap@@16) (select (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| Heap@@16) o_11@@4 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6834_3940_3941#PolymorphicMapType_6834| Heap@@16) o_11@@4 f_10))
)))
(assert (forall ((p@@1 T@Field_4230_16881) (v_1@@0 T@FrameType) (q T@Field_4230_16881) (w@@0 T@FrameType) (r T@Field_4230_16881) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6894_6894 p@@1 v_1@@0 q w@@0) (InsidePredicate_6894_6894 q w@@0 r u)) (InsidePredicate_6894_6894 p@@1 v_1@@0 r u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6894_6894 p@@1 v_1@@0 q w@@0) (InsidePredicate_6894_6894 q w@@0 r u))
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
(declare-fun AssertMask@1 () T@PolymorphicMapType_6855)
(declare-fun Mask@1 () T@PolymorphicMapType_6855)
(declare-fun y () T@Ref)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_6834)
(declare-fun Mask@0 () T@PolymorphicMapType_6855)
(declare-fun QPMask@0 () T@PolymorphicMapType_6855)
(declare-fun x () T@Ref)
(declare-fun perm_temp_quasihavoc_@0 () Real)
(declare-fun Heap@@17 () T@PolymorphicMapType_6834)
(declare-fun AssertMask@0 () T@PolymorphicMapType_6855)
(declare-fun s_2 () (Array T@Ref Bool))
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
 (=> (= (ControlFlow 0 0) 28) (let ((anon12_correct  (=> (and (= AssertMask@1 (PolymorphicMapType_6855 (store (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| Mask@1) y f_7 (- (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| Mask@1) y f_7) FullPerm)) (|PolymorphicMapType_6855_4230_53#PolymorphicMapType_6855| Mask@1) (|PolymorphicMapType_6855_4230_6908#PolymorphicMapType_6855| Mask@1) (|PolymorphicMapType_6855_4230_16881#PolymorphicMapType_6855| Mask@1) (|PolymorphicMapType_6855_4230_21136#PolymorphicMapType_6855| Mask@1))) (state ExhaleHeap@0 Mask@1)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_4230_3211 Mask@1 y f_7)) (=> (HasDirectPerm_4230_3211 Mask@1 y f_7) (=> (= (ControlFlow 0 7) (- 0 6)) (= (select (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| ExhaleHeap@0) y f_7) 3)))))))
(let ((anon18_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 11) 7)) anon12_correct)))
(let ((anon18_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (<= FullPerm (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| Mask@1) y f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| Mask@1) y f_7)) (=> (= (ControlFlow 0 9) 7) anon12_correct))))))
(let ((anon10_correct  (=> (= Mask@0 (PolymorphicMapType_6855 (store (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| QPMask@0) x f_7 (- (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| QPMask@0) x f_7) perm_temp_quasihavoc_@0)) (|PolymorphicMapType_6855_4230_53#PolymorphicMapType_6855| QPMask@0) (|PolymorphicMapType_6855_4230_6908#PolymorphicMapType_6855| QPMask@0) (|PolymorphicMapType_6855_4230_16881#PolymorphicMapType_6855| QPMask@0) (|PolymorphicMapType_6855_4230_21136#PolymorphicMapType_6855| QPMask@0))) (=> (and (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 Mask@0) (state ExhaleHeap@0 Mask@0)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (>= perm_temp_quasihavoc_@0 NoPerm)) (=> (>= perm_temp_quasihavoc_@0 NoPerm) (=> (=> (> perm_temp_quasihavoc_@0 NoPerm) (not (= x null))) (=> (and (and (= Mask@1 (PolymorphicMapType_6855 (store (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| Mask@0) x f_7 (+ (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| Mask@0) x f_7) perm_temp_quasihavoc_@0)) (|PolymorphicMapType_6855_4230_53#PolymorphicMapType_6855| Mask@0) (|PolymorphicMapType_6855_4230_6908#PolymorphicMapType_6855| Mask@0) (|PolymorphicMapType_6855_4230_16881#PolymorphicMapType_6855| Mask@0) (|PolymorphicMapType_6855_4230_21136#PolymorphicMapType_6855| Mask@0))) (state ExhaleHeap@0 Mask@1)) (and (state ExhaleHeap@0 Mask@1) (state ExhaleHeap@0 Mask@1))) (and (=> (= (ControlFlow 0 12) 9) anon18_Then_correct) (=> (= (ControlFlow 0 12) 11) anon18_Else_correct))))))))))
(let ((anon17_Else_correct  (=> (and (= perm_temp_quasihavoc_@0 NoPerm) (= (ControlFlow 0 16) 12)) anon10_correct)))
(let ((anon17_Then_correct  (=> (not (= perm_temp_quasihavoc_@0 NoPerm)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (<= perm_temp_quasihavoc_@0 (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| QPMask@0) x f_7))) (=> (<= perm_temp_quasihavoc_@0 (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| QPMask@0) x f_7)) (=> (= (ControlFlow 0 14) 12) anon10_correct))))))
(let ((anon8_correct  (=> (= AssertMask@0 (PolymorphicMapType_6855 (store (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| QPMask@0) y f_7 (- (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| QPMask@0) y f_7) FullPerm)) (|PolymorphicMapType_6855_4230_53#PolymorphicMapType_6855| QPMask@0) (|PolymorphicMapType_6855_4230_6908#PolymorphicMapType_6855| QPMask@0) (|PolymorphicMapType_6855_4230_16881#PolymorphicMapType_6855| QPMask@0) (|PolymorphicMapType_6855_4230_21136#PolymorphicMapType_6855| QPMask@0))) (and (=> (= (ControlFlow 0 17) (- 0 20)) (HasDirectPerm_4230_3211 QPMask@0 y f_7)) (=> (HasDirectPerm_4230_3211 QPMask@0 y f_7) (and (=> (= (ControlFlow 0 17) (- 0 19)) (= (select (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| Heap@@17) y f_7) 3)) (=> (= (select (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| Heap@@17) y f_7) 3) (=> (state Heap@@17 QPMask@0) (=> (and (= perm_temp_quasihavoc_@0 (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| QPMask@0) x f_7)) (state Heap@@17 QPMask@0)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (>= perm_temp_quasihavoc_@0 NoPerm)) (=> (>= perm_temp_quasihavoc_@0 NoPerm) (and (=> (= (ControlFlow 0 17) 14) anon17_Then_correct) (=> (= (ControlFlow 0 17) 16) anon17_Else_correct)))))))))))))
(let ((anon16_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 23) 17)) anon8_correct)))
(let ((anon16_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (<= FullPerm (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| QPMask@0) y f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| QPMask@0) y f_7)) (=> (= (ControlFlow 0 21) 17) anon8_correct))))))
(let ((anon14_Else_correct  (=> (and (forall ((a_3_1 T@Ref) ) (!  (=> (select s_2 a_3_1) (= (select (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| Heap@@17) a_3_1 f_7) 3))
 :qid |stdinbpl.467:20|
 :skolemid |88|
 :pattern ( (select s_2 a_3_1))
)) (state Heap@@17 QPMask@0)) (=> (and (and (select s_2 x) (state Heap@@17 QPMask@0)) (and (select s_2 y) (state Heap@@17 QPMask@0))) (and (=> (= (ControlFlow 0 24) 21) anon16_Then_correct) (=> (= (ControlFlow 0 24) 23) anon16_Else_correct))))))
(let ((anon5_correct true))
(let ((anon15_Else_correct  (=> (and (not (select s_2 a_4)) (= (ControlFlow 0 5) 2)) anon5_correct)))
(let ((anon15_Then_correct  (=> (select s_2 a_4) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_4230_3211 QPMask@0 a_4 f_7)) (=> (HasDirectPerm_4230_3211 QPMask@0 a_4 f_7) (=> (= (ControlFlow 0 3) 2) anon5_correct))))))
(let ((anon13_Else_correct  (and (=> (= (ControlFlow 0 25) (- 0 26)) (forall ((a_1_1 T@Ref) (a_1_2 T@Ref) ) (!  (=> (and (and (and (and (not (= a_1_1 a_1_2)) (select s_2 a_1_1)) (select s_2 a_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= a_1_1 a_1_2)))
 :qid |stdinbpl.426:15|
 :skolemid |82|
))) (=> (forall ((a_1_1@@0 T@Ref) (a_1_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= a_1_1@@0 a_1_2@@0)) (select s_2 a_1_1@@0)) (select s_2 a_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= a_1_1@@0 a_1_2@@0)))
 :qid |stdinbpl.426:15|
 :skolemid |82|
)) (=> (and (and (forall ((a_1_1@@1 T@Ref) ) (!  (=> (and (select s_2 a_1_1@@1) (< NoPerm FullPerm)) (and (qpRange1 a_1_1@@1) (= (invRecv1 a_1_1@@1) a_1_1@@1)))
 :qid |stdinbpl.432:22|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| Heap@@17) a_1_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| QPMask@0) a_1_1@@1 f_7))
 :pattern ( (select s_2 a_1_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select s_2 (invRecv1 o_4)) (< NoPerm FullPerm)) (qpRange1 o_4)) (= (invRecv1 o_4) o_4))
 :qid |stdinbpl.436:22|
 :skolemid |84|
 :pattern ( (invRecv1 o_4))
))) (and (forall ((a_1_1@@2 T@Ref) ) (!  (=> (select s_2 a_1_1@@2) (not (= a_1_1@@2 null)))
 :qid |stdinbpl.442:22|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_6834_4230_3211#PolymorphicMapType_6834| Heap@@17) a_1_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| QPMask@0) a_1_1@@2 f_7))
 :pattern ( (select s_2 a_1_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select s_2 (invRecv1 o_4@@0)) (< NoPerm FullPerm)) (qpRange1 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| QPMask@0) o_4@@0 f_7) (+ (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| ZeroMask) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (select s_2 (invRecv1 o_4@@0)) (< NoPerm FullPerm)) (qpRange1 o_4@@0))) (= (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| QPMask@0) o_4@@0 f_7) (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| ZeroMask) o_4@@0 f_7))))
 :qid |stdinbpl.448:22|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| QPMask@0) o_4@@0 f_7))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_6894_53) ) (!  (=> true (= (select (|PolymorphicMapType_6855_4230_53#PolymorphicMapType_6855| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_6855_4230_53#PolymorphicMapType_6855| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.452:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_6855_4230_53#PolymorphicMapType_6855| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_6855_4230_53#PolymorphicMapType_6855| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_6907_6908) ) (!  (=> true (= (select (|PolymorphicMapType_6855_4230_6908#PolymorphicMapType_6855| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_6855_4230_6908#PolymorphicMapType_6855| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.452:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_6855_4230_6908#PolymorphicMapType_6855| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_6855_4230_6908#PolymorphicMapType_6855| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_13066_3211) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.452:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_6855_4230_3211#PolymorphicMapType_6855| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_4230_16881) ) (!  (=> true (= (select (|PolymorphicMapType_6855_4230_16881#PolymorphicMapType_6855| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_6855_4230_16881#PolymorphicMapType_6855| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.452:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_6855_4230_16881#PolymorphicMapType_6855| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_6855_4230_16881#PolymorphicMapType_6855| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_4230_17014) ) (!  (=> true (= (select (|PolymorphicMapType_6855_4230_21136#PolymorphicMapType_6855| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_6855_4230_21136#PolymorphicMapType_6855| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.452:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_6855_4230_21136#PolymorphicMapType_6855| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_6855_4230_21136#PolymorphicMapType_6855| QPMask@0) o_4@@5 f_5@@3))
))) (state Heap@@17 QPMask@0)) (and (and (=> (= (ControlFlow 0 25) 24) anon14_Else_correct) (=> (= (ControlFlow 0 25) 3) anon15_Then_correct)) (=> (= (ControlFlow 0 25) 5) anon15_Else_correct))))))))
(let ((anon13_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| Heap@@17) x $allocated) (select (|PolymorphicMapType_6834_3937_53#PolymorphicMapType_6834| Heap@@17) y $allocated))) (and (=> (= (ControlFlow 0 27) 1) anon13_Then_correct) (=> (= (ControlFlow 0 27) 25) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 28) 27) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 7) (- 6))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
