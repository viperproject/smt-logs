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
(declare-sort T@Field_6572_53 0)
(declare-sort T@Field_6585_6586 0)
(declare-sort T@Field_12744_3211 0)
(declare-sort T@Field_6572_15926 0)
(declare-sort T@Field_6572_15793 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6533 0)) (((PolymorphicMapType_6533 (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| (Array T@Ref T@Field_12744_3211 Real)) (|PolymorphicMapType_6533_4076_53#PolymorphicMapType_6533| (Array T@Ref T@Field_6572_53 Real)) (|PolymorphicMapType_6533_4076_6586#PolymorphicMapType_6533| (Array T@Ref T@Field_6585_6586 Real)) (|PolymorphicMapType_6533_4076_15793#PolymorphicMapType_6533| (Array T@Ref T@Field_6572_15793 Real)) (|PolymorphicMapType_6533_4076_20048#PolymorphicMapType_6533| (Array T@Ref T@Field_6572_15926 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7061 0)) (((PolymorphicMapType_7061 (|PolymorphicMapType_7061_6572_53#PolymorphicMapType_7061| (Array T@Ref T@Field_6572_53 Bool)) (|PolymorphicMapType_7061_6572_6586#PolymorphicMapType_7061| (Array T@Ref T@Field_6585_6586 Bool)) (|PolymorphicMapType_7061_6572_3211#PolymorphicMapType_7061| (Array T@Ref T@Field_12744_3211 Bool)) (|PolymorphicMapType_7061_6572_15793#PolymorphicMapType_7061| (Array T@Ref T@Field_6572_15793 Bool)) (|PolymorphicMapType_7061_6572_17104#PolymorphicMapType_7061| (Array T@Ref T@Field_6572_15926 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6512 0)) (((PolymorphicMapType_6512 (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| (Array T@Ref T@Field_6572_53 Bool)) (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| (Array T@Ref T@Field_6585_6586 T@Ref)) (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| (Array T@Ref T@Field_12744_3211 Int)) (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| (Array T@Ref T@Field_6572_15926 T@PolymorphicMapType_7061)) (|PolymorphicMapType_6512_6572_15793#PolymorphicMapType_6512| (Array T@Ref T@Field_6572_15793 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6572_53)
(declare-fun f_7 () T@Field_12744_3211)
(declare-fun succHeap (T@PolymorphicMapType_6512 T@PolymorphicMapType_6512) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6512 T@PolymorphicMapType_6512) Bool)
(declare-fun state (T@PolymorphicMapType_6512 T@PolymorphicMapType_6533) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6533) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7061)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6512 T@PolymorphicMapType_6512 T@PolymorphicMapType_6533) Bool)
(declare-fun IsPredicateField_6572_15884 (T@Field_6572_15793) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6572 (T@Field_6572_15793) T@Field_6572_15926)
(declare-fun HasDirectPerm_6572_15857 (T@PolymorphicMapType_6533 T@Ref T@Field_6572_15793) Bool)
(declare-fun IsWandField_6572_17631 (T@Field_6572_15793) Bool)
(declare-fun WandMaskField_6572 (T@Field_6572_15793) T@Field_6572_15926)
(declare-fun dummyHeap () T@PolymorphicMapType_6512)
(declare-fun ZeroMask () T@PolymorphicMapType_6533)
(declare-fun InsidePredicate_6572_6572 (T@Field_6572_15793 T@FrameType T@Field_6572_15793 T@FrameType) Bool)
(declare-fun IsPredicateField_4076_3211 (T@Field_12744_3211) Bool)
(declare-fun IsWandField_4076_3211 (T@Field_12744_3211) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4076_21177 (T@Field_6572_15926) Bool)
(declare-fun IsWandField_4076_21193 (T@Field_6572_15926) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4076_6586 (T@Field_6585_6586) Bool)
(declare-fun IsWandField_4076_6586 (T@Field_6585_6586) Bool)
(declare-fun IsPredicateField_4076_53 (T@Field_6572_53) Bool)
(declare-fun IsWandField_4076_53 (T@Field_6572_53) Bool)
(declare-fun HasDirectPerm_6572_21631 (T@PolymorphicMapType_6533 T@Ref T@Field_6572_15926) Bool)
(declare-fun HasDirectPerm_6572_3211 (T@PolymorphicMapType_6533 T@Ref T@Field_12744_3211) Bool)
(declare-fun HasDirectPerm_6572_6586 (T@PolymorphicMapType_6533 T@Ref T@Field_6585_6586) Bool)
(declare-fun HasDirectPerm_6572_53 (T@PolymorphicMapType_6533 T@Ref T@Field_6572_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6533 T@PolymorphicMapType_6533 T@PolymorphicMapType_6533) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6512) (Heap1 T@PolymorphicMapType_6512) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6512) (Mask T@PolymorphicMapType_6533) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6512) (Heap1@@0 T@PolymorphicMapType_6512) (Heap2 T@PolymorphicMapType_6512) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6572_15926) ) (!  (not (select (|PolymorphicMapType_7061_6572_17104#PolymorphicMapType_7061| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7061_6572_17104#PolymorphicMapType_7061| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6572_15793) ) (!  (not (select (|PolymorphicMapType_7061_6572_15793#PolymorphicMapType_7061| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7061_6572_15793#PolymorphicMapType_7061| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_12744_3211) ) (!  (not (select (|PolymorphicMapType_7061_6572_3211#PolymorphicMapType_7061| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7061_6572_3211#PolymorphicMapType_7061| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6585_6586) ) (!  (not (select (|PolymorphicMapType_7061_6572_6586#PolymorphicMapType_7061| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7061_6572_6586#PolymorphicMapType_7061| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6572_53) ) (!  (not (select (|PolymorphicMapType_7061_6572_53#PolymorphicMapType_7061| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7061_6572_53#PolymorphicMapType_7061| ZeroPMask) o_2@@3 f_4@@3))
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_6512) (ExhaleHeap T@PolymorphicMapType_6512) (Mask@@0 T@PolymorphicMapType_6533) (pm_f_2 T@Field_6572_15793) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6572_15857 Mask@@0 null pm_f_2) (IsPredicateField_6572_15884 pm_f_2)) (= (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@0) null (PredicateMaskField_6572 pm_f_2)) (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| ExhaleHeap) null (PredicateMaskField_6572 pm_f_2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_6572_15884 pm_f_2) (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| ExhaleHeap) null (PredicateMaskField_6572 pm_f_2)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6512) (ExhaleHeap@@0 T@PolymorphicMapType_6512) (Mask@@1 T@PolymorphicMapType_6533) (pm_f_2@@0 T@Field_6572_15793) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6572_15857 Mask@@1 null pm_f_2@@0) (IsWandField_6572_17631 pm_f_2@@0)) (= (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@1) null (WandMaskField_6572 pm_f_2@@0)) (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| ExhaleHeap@@0) null (WandMaskField_6572 pm_f_2@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_6572_17631 pm_f_2@@0) (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| ExhaleHeap@@0) null (WandMaskField_6572 pm_f_2@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6512) (ExhaleHeap@@1 T@PolymorphicMapType_6512) (Mask@@2 T@PolymorphicMapType_6533) (o_6 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| Heap@@2) o_6 $allocated) (select (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| ExhaleHeap@@1) o_6 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| ExhaleHeap@@1) o_6 $allocated))
)))
(assert (forall ((p T@Field_6572_15793) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6572_6572 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6572_6572 p v_1 p w))
)))
(assert  (not (IsPredicateField_4076_3211 f_7)))
(assert  (not (IsWandField_4076_3211 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6512) (ExhaleHeap@@2 T@PolymorphicMapType_6512) (Mask@@3 T@PolymorphicMapType_6533) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_6533) (o_2@@4 T@Ref) (f_4@@4 T@Field_6572_15926) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_6533_4076_20048#PolymorphicMapType_6533| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_4076_21177 f_4@@4))) (not (IsWandField_4076_21193 f_4@@4))) (<= (select (|PolymorphicMapType_6533_4076_20048#PolymorphicMapType_6533| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_6533_4076_20048#PolymorphicMapType_6533| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_6533) (o_2@@5 T@Ref) (f_4@@5 T@Field_6572_15793) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_6533_4076_15793#PolymorphicMapType_6533| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_6572_15884 f_4@@5))) (not (IsWandField_6572_17631 f_4@@5))) (<= (select (|PolymorphicMapType_6533_4076_15793#PolymorphicMapType_6533| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_6533_4076_15793#PolymorphicMapType_6533| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6533) (o_2@@6 T@Ref) (f_4@@6 T@Field_6585_6586) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6533_4076_6586#PolymorphicMapType_6533| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4076_6586 f_4@@6))) (not (IsWandField_4076_6586 f_4@@6))) (<= (select (|PolymorphicMapType_6533_4076_6586#PolymorphicMapType_6533| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6533_4076_6586#PolymorphicMapType_6533| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6533) (o_2@@7 T@Ref) (f_4@@7 T@Field_6572_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6533_4076_53#PolymorphicMapType_6533| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4076_53 f_4@@7))) (not (IsWandField_4076_53 f_4@@7))) (<= (select (|PolymorphicMapType_6533_4076_53#PolymorphicMapType_6533| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6533_4076_53#PolymorphicMapType_6533| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6533) (o_2@@8 T@Ref) (f_4@@8 T@Field_12744_3211) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4076_3211 f_4@@8))) (not (IsWandField_4076_3211 f_4@@8))) (<= (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6533) (o_2@@9 T@Ref) (f_4@@9 T@Field_6572_15926) ) (! (= (HasDirectPerm_6572_21631 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6533_4076_20048#PolymorphicMapType_6533| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6572_21631 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6533) (o_2@@10 T@Ref) (f_4@@10 T@Field_6572_15793) ) (! (= (HasDirectPerm_6572_15857 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6533_4076_15793#PolymorphicMapType_6533| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6572_15857 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6533) (o_2@@11 T@Ref) (f_4@@11 T@Field_12744_3211) ) (! (= (HasDirectPerm_6572_3211 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6572_3211 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6533) (o_2@@12 T@Ref) (f_4@@12 T@Field_6585_6586) ) (! (= (HasDirectPerm_6572_6586 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6533_4076_6586#PolymorphicMapType_6533| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6572_6586 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6533) (o_2@@13 T@Ref) (f_4@@13 T@Field_6572_53) ) (! (= (HasDirectPerm_6572_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6533_4076_53#PolymorphicMapType_6533| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6572_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6512) (ExhaleHeap@@3 T@PolymorphicMapType_6512) (Mask@@14 T@PolymorphicMapType_6533) (pm_f_2@@1 T@Field_6572_15793) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_6572_15857 Mask@@14 null pm_f_2@@1) (IsPredicateField_6572_15884 pm_f_2@@1)) (and (and (and (and (forall ((o2_2 T@Ref) (f_9 T@Field_6572_53) ) (!  (=> (select (|PolymorphicMapType_7061_6572_53#PolymorphicMapType_7061| (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@4) null (PredicateMaskField_6572 pm_f_2@@1))) o2_2 f_9) (= (select (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| Heap@@4) o2_2 f_9) (select (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| ExhaleHeap@@3) o2_2 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| ExhaleHeap@@3) o2_2 f_9))
)) (forall ((o2_2@@0 T@Ref) (f_9@@0 T@Field_6585_6586) ) (!  (=> (select (|PolymorphicMapType_7061_6572_6586#PolymorphicMapType_7061| (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@4) null (PredicateMaskField_6572 pm_f_2@@1))) o2_2@@0 f_9@@0) (= (select (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| Heap@@4) o2_2@@0 f_9@@0) (select (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| ExhaleHeap@@3) o2_2@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| ExhaleHeap@@3) o2_2@@0 f_9@@0))
))) (forall ((o2_2@@1 T@Ref) (f_9@@1 T@Field_12744_3211) ) (!  (=> (select (|PolymorphicMapType_7061_6572_3211#PolymorphicMapType_7061| (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@4) null (PredicateMaskField_6572 pm_f_2@@1))) o2_2@@1 f_9@@1) (= (select (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| Heap@@4) o2_2@@1 f_9@@1) (select (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| ExhaleHeap@@3) o2_2@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| ExhaleHeap@@3) o2_2@@1 f_9@@1))
))) (forall ((o2_2@@2 T@Ref) (f_9@@2 T@Field_6572_15793) ) (!  (=> (select (|PolymorphicMapType_7061_6572_15793#PolymorphicMapType_7061| (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@4) null (PredicateMaskField_6572 pm_f_2@@1))) o2_2@@2 f_9@@2) (= (select (|PolymorphicMapType_6512_6572_15793#PolymorphicMapType_6512| Heap@@4) o2_2@@2 f_9@@2) (select (|PolymorphicMapType_6512_6572_15793#PolymorphicMapType_6512| ExhaleHeap@@3) o2_2@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6512_6572_15793#PolymorphicMapType_6512| ExhaleHeap@@3) o2_2@@2 f_9@@2))
))) (forall ((o2_2@@3 T@Ref) (f_9@@3 T@Field_6572_15926) ) (!  (=> (select (|PolymorphicMapType_7061_6572_17104#PolymorphicMapType_7061| (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@4) null (PredicateMaskField_6572 pm_f_2@@1))) o2_2@@3 f_9@@3) (= (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@4) o2_2@@3 f_9@@3) (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| ExhaleHeap@@3) o2_2@@3 f_9@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| ExhaleHeap@@3) o2_2@@3 f_9@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_6572_15884 pm_f_2@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6512) (ExhaleHeap@@4 T@PolymorphicMapType_6512) (Mask@@15 T@PolymorphicMapType_6533) (pm_f_2@@2 T@Field_6572_15793) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_6572_15857 Mask@@15 null pm_f_2@@2) (IsWandField_6572_17631 pm_f_2@@2)) (and (and (and (and (forall ((o2_2@@4 T@Ref) (f_9@@4 T@Field_6572_53) ) (!  (=> (select (|PolymorphicMapType_7061_6572_53#PolymorphicMapType_7061| (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@5) null (WandMaskField_6572 pm_f_2@@2))) o2_2@@4 f_9@@4) (= (select (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| Heap@@5) o2_2@@4 f_9@@4) (select (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| ExhaleHeap@@4) o2_2@@4 f_9@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| ExhaleHeap@@4) o2_2@@4 f_9@@4))
)) (forall ((o2_2@@5 T@Ref) (f_9@@5 T@Field_6585_6586) ) (!  (=> (select (|PolymorphicMapType_7061_6572_6586#PolymorphicMapType_7061| (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@5) null (WandMaskField_6572 pm_f_2@@2))) o2_2@@5 f_9@@5) (= (select (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| Heap@@5) o2_2@@5 f_9@@5) (select (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| ExhaleHeap@@4) o2_2@@5 f_9@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| ExhaleHeap@@4) o2_2@@5 f_9@@5))
))) (forall ((o2_2@@6 T@Ref) (f_9@@6 T@Field_12744_3211) ) (!  (=> (select (|PolymorphicMapType_7061_6572_3211#PolymorphicMapType_7061| (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@5) null (WandMaskField_6572 pm_f_2@@2))) o2_2@@6 f_9@@6) (= (select (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| Heap@@5) o2_2@@6 f_9@@6) (select (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| ExhaleHeap@@4) o2_2@@6 f_9@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| ExhaleHeap@@4) o2_2@@6 f_9@@6))
))) (forall ((o2_2@@7 T@Ref) (f_9@@7 T@Field_6572_15793) ) (!  (=> (select (|PolymorphicMapType_7061_6572_15793#PolymorphicMapType_7061| (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@5) null (WandMaskField_6572 pm_f_2@@2))) o2_2@@7 f_9@@7) (= (select (|PolymorphicMapType_6512_6572_15793#PolymorphicMapType_6512| Heap@@5) o2_2@@7 f_9@@7) (select (|PolymorphicMapType_6512_6572_15793#PolymorphicMapType_6512| ExhaleHeap@@4) o2_2@@7 f_9@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6512_6572_15793#PolymorphicMapType_6512| ExhaleHeap@@4) o2_2@@7 f_9@@7))
))) (forall ((o2_2@@8 T@Ref) (f_9@@8 T@Field_6572_15926) ) (!  (=> (select (|PolymorphicMapType_7061_6572_17104#PolymorphicMapType_7061| (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@5) null (WandMaskField_6572 pm_f_2@@2))) o2_2@@8 f_9@@8) (= (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@5) o2_2@@8 f_9@@8) (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| ExhaleHeap@@4) o2_2@@8 f_9@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| ExhaleHeap@@4) o2_2@@8 f_9@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_6572_17631 pm_f_2@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6512) (ExhaleHeap@@5 T@PolymorphicMapType_6512) (Mask@@16 T@PolymorphicMapType_6533) (o_6@@0 T@Ref) (f_9@@9 T@Field_6572_15926) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_6572_21631 Mask@@16 o_6@@0 f_9@@9) (= (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@6) o_6@@0 f_9@@9) (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| ExhaleHeap@@5) o_6@@0 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| ExhaleHeap@@5) o_6@@0 f_9@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6512) (ExhaleHeap@@6 T@PolymorphicMapType_6512) (Mask@@17 T@PolymorphicMapType_6533) (o_6@@1 T@Ref) (f_9@@10 T@Field_6572_15793) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_6572_15857 Mask@@17 o_6@@1 f_9@@10) (= (select (|PolymorphicMapType_6512_6572_15793#PolymorphicMapType_6512| Heap@@7) o_6@@1 f_9@@10) (select (|PolymorphicMapType_6512_6572_15793#PolymorphicMapType_6512| ExhaleHeap@@6) o_6@@1 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_6512_6572_15793#PolymorphicMapType_6512| ExhaleHeap@@6) o_6@@1 f_9@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6512) (ExhaleHeap@@7 T@PolymorphicMapType_6512) (Mask@@18 T@PolymorphicMapType_6533) (o_6@@2 T@Ref) (f_9@@11 T@Field_12744_3211) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_6572_3211 Mask@@18 o_6@@2 f_9@@11) (= (select (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| Heap@@8) o_6@@2 f_9@@11) (select (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| ExhaleHeap@@7) o_6@@2 f_9@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| ExhaleHeap@@7) o_6@@2 f_9@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6512) (ExhaleHeap@@8 T@PolymorphicMapType_6512) (Mask@@19 T@PolymorphicMapType_6533) (o_6@@3 T@Ref) (f_9@@12 T@Field_6585_6586) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_6572_6586 Mask@@19 o_6@@3 f_9@@12) (= (select (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| Heap@@9) o_6@@3 f_9@@12) (select (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| ExhaleHeap@@8) o_6@@3 f_9@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| ExhaleHeap@@8) o_6@@3 f_9@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6512) (ExhaleHeap@@9 T@PolymorphicMapType_6512) (Mask@@20 T@PolymorphicMapType_6533) (o_6@@4 T@Ref) (f_9@@13 T@Field_6572_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_6572_53 Mask@@20 o_6@@4 f_9@@13) (= (select (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| Heap@@10) o_6@@4 f_9@@13) (select (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| ExhaleHeap@@9) o_6@@4 f_9@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| ExhaleHeap@@9) o_6@@4 f_9@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6572_15926) ) (! (= (select (|PolymorphicMapType_6533_4076_20048#PolymorphicMapType_6533| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6533_4076_20048#PolymorphicMapType_6533| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_6572_15793) ) (! (= (select (|PolymorphicMapType_6533_4076_15793#PolymorphicMapType_6533| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6533_4076_15793#PolymorphicMapType_6533| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_6585_6586) ) (! (= (select (|PolymorphicMapType_6533_4076_6586#PolymorphicMapType_6533| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6533_4076_6586#PolymorphicMapType_6533| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6572_53) ) (! (= (select (|PolymorphicMapType_6533_4076_53#PolymorphicMapType_6533| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6533_4076_53#PolymorphicMapType_6533| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_12744_3211) ) (! (= (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6533) (SummandMask1 T@PolymorphicMapType_6533) (SummandMask2 T@PolymorphicMapType_6533) (o_2@@19 T@Ref) (f_4@@19 T@Field_6572_15926) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6533_4076_20048#PolymorphicMapType_6533| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6533_4076_20048#PolymorphicMapType_6533| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6533_4076_20048#PolymorphicMapType_6533| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6533_4076_20048#PolymorphicMapType_6533| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6533_4076_20048#PolymorphicMapType_6533| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6533_4076_20048#PolymorphicMapType_6533| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6533) (SummandMask1@@0 T@PolymorphicMapType_6533) (SummandMask2@@0 T@PolymorphicMapType_6533) (o_2@@20 T@Ref) (f_4@@20 T@Field_6572_15793) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6533_4076_15793#PolymorphicMapType_6533| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6533_4076_15793#PolymorphicMapType_6533| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6533_4076_15793#PolymorphicMapType_6533| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6533_4076_15793#PolymorphicMapType_6533| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6533_4076_15793#PolymorphicMapType_6533| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6533_4076_15793#PolymorphicMapType_6533| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6533) (SummandMask1@@1 T@PolymorphicMapType_6533) (SummandMask2@@1 T@PolymorphicMapType_6533) (o_2@@21 T@Ref) (f_4@@21 T@Field_6585_6586) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6533_4076_6586#PolymorphicMapType_6533| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6533_4076_6586#PolymorphicMapType_6533| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6533_4076_6586#PolymorphicMapType_6533| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6533_4076_6586#PolymorphicMapType_6533| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6533_4076_6586#PolymorphicMapType_6533| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6533_4076_6586#PolymorphicMapType_6533| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6533) (SummandMask1@@2 T@PolymorphicMapType_6533) (SummandMask2@@2 T@PolymorphicMapType_6533) (o_2@@22 T@Ref) (f_4@@22 T@Field_6572_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6533_4076_53#PolymorphicMapType_6533| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6533_4076_53#PolymorphicMapType_6533| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6533_4076_53#PolymorphicMapType_6533| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6533_4076_53#PolymorphicMapType_6533| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6533_4076_53#PolymorphicMapType_6533| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6533_4076_53#PolymorphicMapType_6533| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6533) (SummandMask1@@3 T@PolymorphicMapType_6533) (SummandMask2@@3 T@PolymorphicMapType_6533) (o_2@@23 T@Ref) (f_4@@23 T@Field_12744_3211) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6512) (o_5 T@Ref) (f_10 T@Field_6572_15793) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_6512 (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| Heap@@11) (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| Heap@@11) (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| Heap@@11) (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@11) (store (|PolymorphicMapType_6512_6572_15793#PolymorphicMapType_6512| Heap@@11) o_5 f_10 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6512 (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| Heap@@11) (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| Heap@@11) (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| Heap@@11) (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@11) (store (|PolymorphicMapType_6512_6572_15793#PolymorphicMapType_6512| Heap@@11) o_5 f_10 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6512) (o_5@@0 T@Ref) (f_10@@0 T@Field_6572_15926) (v@@0 T@PolymorphicMapType_7061) ) (! (succHeap Heap@@12 (PolymorphicMapType_6512 (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| Heap@@12) (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| Heap@@12) (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| Heap@@12) (store (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@12) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_6512_6572_15793#PolymorphicMapType_6512| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6512 (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| Heap@@12) (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| Heap@@12) (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| Heap@@12) (store (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@12) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_6512_6572_15793#PolymorphicMapType_6512| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6512) (o_5@@1 T@Ref) (f_10@@1 T@Field_12744_3211) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_6512 (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| Heap@@13) (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| Heap@@13) (store (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| Heap@@13) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@13) (|PolymorphicMapType_6512_6572_15793#PolymorphicMapType_6512| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6512 (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| Heap@@13) (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| Heap@@13) (store (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| Heap@@13) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@13) (|PolymorphicMapType_6512_6572_15793#PolymorphicMapType_6512| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6512) (o_5@@2 T@Ref) (f_10@@2 T@Field_6585_6586) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_6512 (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| Heap@@14) (store (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| Heap@@14) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| Heap@@14) (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@14) (|PolymorphicMapType_6512_6572_15793#PolymorphicMapType_6512| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6512 (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| Heap@@14) (store (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| Heap@@14) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| Heap@@14) (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@14) (|PolymorphicMapType_6512_6572_15793#PolymorphicMapType_6512| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6512) (o_5@@3 T@Ref) (f_10@@3 T@Field_6572_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_6512 (store (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| Heap@@15) o_5@@3 f_10@@3 v@@3) (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| Heap@@15) (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| Heap@@15) (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@15) (|PolymorphicMapType_6512_6572_15793#PolymorphicMapType_6512| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6512 (store (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| Heap@@15) o_5@@3 f_10@@3 v@@3) (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| Heap@@15) (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| Heap@@15) (|PolymorphicMapType_6512_6572_15970#PolymorphicMapType_6512| Heap@@15) (|PolymorphicMapType_6512_6572_15793#PolymorphicMapType_6512| Heap@@15)))
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
(assert (forall ((o_5@@4 T@Ref) (f_3 T@Field_6585_6586) (Heap@@16 T@PolymorphicMapType_6512) ) (!  (=> (select (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| Heap@@16) o_5@@4 $allocated) (select (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| Heap@@16) (select (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| Heap@@16) o_5@@4 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6512_3786_3787#PolymorphicMapType_6512| Heap@@16) o_5@@4 f_3))
)))
(assert (forall ((p@@1 T@Field_6572_15793) (v_1@@0 T@FrameType) (q T@Field_6572_15793) (w@@0 T@FrameType) (r T@Field_6572_15793) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6572_6572 p@@1 v_1@@0 q w@@0) (InsidePredicate_6572_6572 q w@@0 r u)) (InsidePredicate_6572_6572 p@@1 v_1@@0 r u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6572_6572 p@@1 v_1@@0 q w@@0) (InsidePredicate_6572_6572 q w@@0 r u))
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
(declare-fun Mask@3 () T@PolymorphicMapType_6533)
(declare-fun x () T@Ref)
(declare-fun Heap@@17 () T@PolymorphicMapType_6512)
(declare-fun b_24 () Bool)
(declare-fun perm@2 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_6533)
(declare-fun Mask@0 () T@PolymorphicMapType_6533)
(declare-fun perm@1 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_6533)
(declare-fun xs () (Array T@Ref Bool))
(declare-fun QPMask@0 () T@PolymorphicMapType_6533)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(declare-fun perm@0 () Real)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon7_correct true))
(let ((anon10_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 5) 2)) anon7_correct)))
(let ((anon10_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (<= FullPerm (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| Mask@3) x f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| Mask@3) x f_7)) (=> (= (ControlFlow 0 3) 2) anon7_correct))))))
(let ((anon5_correct  (=> (state Heap@@17 Mask@3) (and (=> (= (ControlFlow 0 6) 3) anon10_Then_correct) (=> (= (ControlFlow 0 6) 5) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (and (not b_24) (= perm@2 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (=> (=> (> perm@2 NoPerm) (not (= x null))) (=> (and (= Mask@2 (PolymorphicMapType_6533 (store (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| Mask@0) x f_7 (+ (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| Mask@0) x f_7) perm@2)) (|PolymorphicMapType_6533_4076_53#PolymorphicMapType_6533| Mask@0) (|PolymorphicMapType_6533_4076_6586#PolymorphicMapType_6533| Mask@0) (|PolymorphicMapType_6533_4076_15793#PolymorphicMapType_6533| Mask@0) (|PolymorphicMapType_6533_4076_20048#PolymorphicMapType_6533| Mask@0))) (state Heap@@17 Mask@2)) (=> (and (and (state Heap@@17 Mask@2) (state Heap@@17 Mask@2)) (and (= Mask@3 Mask@2) (= (ControlFlow 0 9) 6))) anon5_correct))))))))
(let ((anon9_Then_correct  (=> (and b_24 (= perm@1 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (=> (> perm@1 NoPerm) (not (= x null))) (=> (and (= Mask@1 (PolymorphicMapType_6533 (store (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| Mask@0) x f_7 (+ (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| Mask@0) x f_7) perm@1)) (|PolymorphicMapType_6533_4076_53#PolymorphicMapType_6533| Mask@0) (|PolymorphicMapType_6533_4076_6586#PolymorphicMapType_6533| Mask@0) (|PolymorphicMapType_6533_4076_15793#PolymorphicMapType_6533| Mask@0) (|PolymorphicMapType_6533_4076_20048#PolymorphicMapType_6533| Mask@0))) (state Heap@@17 Mask@1)) (=> (and (and (state Heap@@17 Mask@1) (state Heap@@17 Mask@1)) (and (= Mask@3 Mask@1) (= (ControlFlow 0 7) 6))) anon5_correct))))))))
(let ((anon8_Else_correct  (and (=> (= (ControlFlow 0 11) (- 0 13)) (forall ((r_1_1 T@Ref) (r_1_2 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1_1 r_1_2)) (select xs r_1_1)) (select xs r_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_1_1 r_1_2)))
 :qid |stdinbpl.423:15|
 :skolemid |82|
))) (=> (forall ((r_1_1@@0 T@Ref) (r_1_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1_1@@0 r_1_2@@0)) (select xs r_1_1@@0)) (select xs r_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_1_1@@0 r_1_2@@0)))
 :qid |stdinbpl.423:15|
 :skolemid |82|
)) (=> (and (and (forall ((r_1_1@@1 T@Ref) ) (!  (=> (and (select xs r_1_1@@1) (< NoPerm FullPerm)) (and (qpRange1 r_1_1@@1) (= (invRecv1 r_1_1@@1) r_1_1@@1)))
 :qid |stdinbpl.429:22|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| Heap@@17) r_1_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| QPMask@0) r_1_1@@1 f_7))
 :pattern ( (select xs r_1_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select xs (invRecv1 o_4)) (< NoPerm FullPerm)) (qpRange1 o_4)) (= (invRecv1 o_4) o_4))
 :qid |stdinbpl.433:22|
 :skolemid |84|
 :pattern ( (invRecv1 o_4))
))) (and (forall ((r_1_1@@2 T@Ref) ) (!  (=> (select xs r_1_1@@2) (not (= r_1_1@@2 null)))
 :qid |stdinbpl.439:22|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_6512_4076_3211#PolymorphicMapType_6512| Heap@@17) r_1_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| QPMask@0) r_1_1@@2 f_7))
 :pattern ( (select xs r_1_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select xs (invRecv1 o_4@@0)) (< NoPerm FullPerm)) (qpRange1 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| QPMask@0) o_4@@0 f_7) (+ (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| ZeroMask) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (select xs (invRecv1 o_4@@0)) (< NoPerm FullPerm)) (qpRange1 o_4@@0))) (= (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| QPMask@0) o_4@@0 f_7) (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| ZeroMask) o_4@@0 f_7))))
 :qid |stdinbpl.445:22|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| QPMask@0) o_4@@0 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_6572_53) ) (!  (=> true (= (select (|PolymorphicMapType_6533_4076_53#PolymorphicMapType_6533| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_6533_4076_53#PolymorphicMapType_6533| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.449:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_6533_4076_53#PolymorphicMapType_6533| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_6533_4076_53#PolymorphicMapType_6533| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_6585_6586) ) (!  (=> true (= (select (|PolymorphicMapType_6533_4076_6586#PolymorphicMapType_6533| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_6533_4076_6586#PolymorphicMapType_6533| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.449:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_6533_4076_6586#PolymorphicMapType_6533| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_6533_4076_6586#PolymorphicMapType_6533| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_12744_3211) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.449:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_6572_15793) ) (!  (=> true (= (select (|PolymorphicMapType_6533_4076_15793#PolymorphicMapType_6533| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_6533_4076_15793#PolymorphicMapType_6533| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.449:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_6533_4076_15793#PolymorphicMapType_6533| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_6533_4076_15793#PolymorphicMapType_6533| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_6572_15926) ) (!  (=> true (= (select (|PolymorphicMapType_6533_4076_20048#PolymorphicMapType_6533| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_6533_4076_20048#PolymorphicMapType_6533| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.449:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_6533_4076_20048#PolymorphicMapType_6533| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_6533_4076_20048#PolymorphicMapType_6533| QPMask@0) o_4@@5 f_5@@3))
))) (state Heap@@17 QPMask@0)) (and (state Heap@@17 QPMask@0) (= perm@0 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (=> (> perm@0 NoPerm) (not (= x null))) (=> (and (and (= Mask@0 (PolymorphicMapType_6533 (store (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| QPMask@0) x f_7 (+ (select (|PolymorphicMapType_6533_4076_3211#PolymorphicMapType_6533| QPMask@0) x f_7) perm@0)) (|PolymorphicMapType_6533_4076_53#PolymorphicMapType_6533| QPMask@0) (|PolymorphicMapType_6533_4076_6586#PolymorphicMapType_6533| QPMask@0) (|PolymorphicMapType_6533_4076_15793#PolymorphicMapType_6533| QPMask@0) (|PolymorphicMapType_6533_4076_20048#PolymorphicMapType_6533| QPMask@0))) (state Heap@@17 Mask@0)) (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0))) (and (=> (= (ControlFlow 0 11) 7) anon9_Then_correct) (=> (= (ControlFlow 0 11) 9) anon9_Else_correct))))))))))))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_6512_3783_53#PolymorphicMapType_6512| Heap@@17) x $allocated)) (and (=> (= (ControlFlow 0 14) 1) anon8_Then_correct) (=> (= (ControlFlow 0 14) 11) anon8_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15) 14) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
