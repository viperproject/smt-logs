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
(declare-sort T@Field_6240_53 0)
(declare-sort T@Field_6253_6254 0)
(declare-sort T@Field_9687_1425 0)
(declare-sort T@Field_6240_18076 0)
(declare-sort T@Field_6240_17943 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6201 0)) (((PolymorphicMapType_6201 (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| (Array T@Ref T@Field_9687_1425 Real)) (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| (Array T@Ref T@Field_6240_53 Real)) (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| (Array T@Ref T@Field_6253_6254 Real)) (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| (Array T@Ref T@Field_6240_17943 Real)) (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| (Array T@Ref T@Field_6240_18076 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6729 0)) (((PolymorphicMapType_6729 (|PolymorphicMapType_6729_6240_53#PolymorphicMapType_6729| (Array T@Ref T@Field_6240_53 Bool)) (|PolymorphicMapType_6729_6240_6254#PolymorphicMapType_6729| (Array T@Ref T@Field_6253_6254 Bool)) (|PolymorphicMapType_6729_6240_1425#PolymorphicMapType_6729| (Array T@Ref T@Field_9687_1425 Bool)) (|PolymorphicMapType_6729_6240_17943#PolymorphicMapType_6729| (Array T@Ref T@Field_6240_17943 Bool)) (|PolymorphicMapType_6729_6240_19254#PolymorphicMapType_6729| (Array T@Ref T@Field_6240_18076 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6180 0)) (((PolymorphicMapType_6180 (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| (Array T@Ref T@Field_6240_53 Bool)) (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| (Array T@Ref T@Field_6253_6254 T@Ref)) (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| (Array T@Ref T@Field_9687_1425 Int)) (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| (Array T@Ref T@Field_6240_18076 T@PolymorphicMapType_6729)) (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| (Array T@Ref T@Field_6240_17943 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6240_53)
(declare-fun val () T@Field_9687_1425)
(declare-fun succHeap (T@PolymorphicMapType_6180 T@PolymorphicMapType_6180) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6180 T@PolymorphicMapType_6180) Bool)
(declare-fun state (T@PolymorphicMapType_6180 T@PolymorphicMapType_6201) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6201) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6729)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6180 T@PolymorphicMapType_6180 T@PolymorphicMapType_6201) Bool)
(declare-fun IsPredicateField_6240_18034 (T@Field_6240_17943) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6240 (T@Field_6240_17943) T@Field_6240_18076)
(declare-fun HasDirectPerm_6240_18007 (T@PolymorphicMapType_6201 T@Ref T@Field_6240_17943) Bool)
(declare-fun IsWandField_6240_19781 (T@Field_6240_17943) Bool)
(declare-fun WandMaskField_6240 (T@Field_6240_17943) T@Field_6240_18076)
(declare-fun dummyHeap () T@PolymorphicMapType_6180)
(declare-fun ZeroMask () T@PolymorphicMapType_6201)
(declare-fun InsidePredicate_6240_6240 (T@Field_6240_17943 T@FrameType T@Field_6240_17943 T@FrameType) Bool)
(declare-fun IsPredicateField_4176_1425 (T@Field_9687_1425) Bool)
(declare-fun IsWandField_4176_1425 (T@Field_9687_1425) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4176_23327 (T@Field_6240_18076) Bool)
(declare-fun IsWandField_4176_23343 (T@Field_6240_18076) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4176_6254 (T@Field_6253_6254) Bool)
(declare-fun IsWandField_4176_6254 (T@Field_6253_6254) Bool)
(declare-fun IsPredicateField_4176_53 (T@Field_6240_53) Bool)
(declare-fun IsWandField_4176_53 (T@Field_6240_53) Bool)
(declare-fun HasDirectPerm_6240_23781 (T@PolymorphicMapType_6201 T@Ref T@Field_6240_18076) Bool)
(declare-fun HasDirectPerm_6240_1425 (T@PolymorphicMapType_6201 T@Ref T@Field_9687_1425) Bool)
(declare-fun HasDirectPerm_6240_6254 (T@PolymorphicMapType_6201 T@Ref T@Field_6253_6254) Bool)
(declare-fun HasDirectPerm_6240_53 (T@PolymorphicMapType_6201 T@Ref T@Field_6240_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6201 T@PolymorphicMapType_6201 T@PolymorphicMapType_6201) Bool)
(declare-sort T@ArrayDomainType 0)
(declare-fun length_2 (T@ArrayDomainType) Int)
(declare-fun loc (T@ArrayDomainType Int) T@Ref)
(declare-fun ref_to_array (T@Ref) T@ArrayDomainType)
(declare-fun ref_to_index (T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_6180) (Heap1 T@PolymorphicMapType_6180) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6180) (Mask T@PolymorphicMapType_6201) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6180) (Heap1@@0 T@PolymorphicMapType_6180) (Heap2 T@PolymorphicMapType_6180) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6240_18076) ) (!  (not (select (|PolymorphicMapType_6729_6240_19254#PolymorphicMapType_6729| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6729_6240_19254#PolymorphicMapType_6729| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6240_17943) ) (!  (not (select (|PolymorphicMapType_6729_6240_17943#PolymorphicMapType_6729| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6729_6240_17943#PolymorphicMapType_6729| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9687_1425) ) (!  (not (select (|PolymorphicMapType_6729_6240_1425#PolymorphicMapType_6729| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6729_6240_1425#PolymorphicMapType_6729| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6253_6254) ) (!  (not (select (|PolymorphicMapType_6729_6240_6254#PolymorphicMapType_6729| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6729_6240_6254#PolymorphicMapType_6729| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6240_53) ) (!  (not (select (|PolymorphicMapType_6729_6240_53#PolymorphicMapType_6729| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6729_6240_53#PolymorphicMapType_6729| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6180) (ExhaleHeap T@PolymorphicMapType_6180) (Mask@@0 T@PolymorphicMapType_6201) (pm_f_5 T@Field_6240_17943) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6240_18007 Mask@@0 null pm_f_5) (IsPredicateField_6240_18034 pm_f_5)) (= (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@0) null (PredicateMaskField_6240 pm_f_5)) (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| ExhaleHeap) null (PredicateMaskField_6240 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_6240_18034 pm_f_5) (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| ExhaleHeap) null (PredicateMaskField_6240 pm_f_5)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6180) (ExhaleHeap@@0 T@PolymorphicMapType_6180) (Mask@@1 T@PolymorphicMapType_6201) (pm_f_5@@0 T@Field_6240_17943) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6240_18007 Mask@@1 null pm_f_5@@0) (IsWandField_6240_19781 pm_f_5@@0)) (= (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@1) null (WandMaskField_6240 pm_f_5@@0)) (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| ExhaleHeap@@0) null (WandMaskField_6240 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_6240_19781 pm_f_5@@0) (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| ExhaleHeap@@0) null (WandMaskField_6240 pm_f_5@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6180) (ExhaleHeap@@1 T@PolymorphicMapType_6180) (Mask@@2 T@PolymorphicMapType_6201) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| Heap@@2) o_15 $allocated) (select (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| ExhaleHeap@@1) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| ExhaleHeap@@1) o_15 $allocated))
)))
(assert (forall ((p T@Field_6240_17943) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6240_6240 p v_1 p w))
 :qid |stdinbpl.201:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6240_6240 p v_1 p w))
)))
(assert  (not (IsPredicateField_4176_1425 val)))
(assert  (not (IsWandField_4176_1425 val)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6180) (ExhaleHeap@@2 T@PolymorphicMapType_6180) (Mask@@3 T@PolymorphicMapType_6201) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_6201) (o_2@@4 T@Ref) (f_4@@4 T@Field_6240_18076) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_4176_23327 f_4@@4))) (not (IsWandField_4176_23343 f_4@@4))) (<= (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_6201) (o_2@@5 T@Ref) (f_4@@5 T@Field_6240_17943) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_6240_18034 f_4@@5))) (not (IsWandField_6240_19781 f_4@@5))) (<= (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6201) (o_2@@6 T@Ref) (f_4@@6 T@Field_6253_6254) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4176_6254 f_4@@6))) (not (IsWandField_4176_6254 f_4@@6))) (<= (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6201) (o_2@@7 T@Ref) (f_4@@7 T@Field_6240_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4176_53 f_4@@7))) (not (IsWandField_4176_53 f_4@@7))) (<= (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6201) (o_2@@8 T@Ref) (f_4@@8 T@Field_9687_1425) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4176_1425 f_4@@8))) (not (IsWandField_4176_1425 f_4@@8))) (<= (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6201) (o_2@@9 T@Ref) (f_4@@9 T@Field_6240_18076) ) (! (= (HasDirectPerm_6240_23781 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6240_23781 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6201) (o_2@@10 T@Ref) (f_4@@10 T@Field_6240_17943) ) (! (= (HasDirectPerm_6240_18007 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6240_18007 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6201) (o_2@@11 T@Ref) (f_4@@11 T@Field_9687_1425) ) (! (= (HasDirectPerm_6240_1425 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6240_1425 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6201) (o_2@@12 T@Ref) (f_4@@12 T@Field_6253_6254) ) (! (= (HasDirectPerm_6240_6254 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6240_6254 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6201) (o_2@@13 T@Ref) (f_4@@13 T@Field_6240_53) ) (! (= (HasDirectPerm_6240_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6240_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6180) (ExhaleHeap@@3 T@PolymorphicMapType_6180) (Mask@@14 T@PolymorphicMapType_6201) (pm_f_5@@1 T@Field_6240_17943) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_6240_18007 Mask@@14 null pm_f_5@@1) (IsPredicateField_6240_18034 pm_f_5@@1)) (and (and (and (and (forall ((o2_5 T@Ref) (f_23 T@Field_6240_53) ) (!  (=> (select (|PolymorphicMapType_6729_6240_53#PolymorphicMapType_6729| (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@4) null (PredicateMaskField_6240 pm_f_5@@1))) o2_5 f_23) (= (select (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| Heap@@4) o2_5 f_23) (select (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| ExhaleHeap@@3) o2_5 f_23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| ExhaleHeap@@3) o2_5 f_23))
)) (forall ((o2_5@@0 T@Ref) (f_23@@0 T@Field_6253_6254) ) (!  (=> (select (|PolymorphicMapType_6729_6240_6254#PolymorphicMapType_6729| (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@4) null (PredicateMaskField_6240 pm_f_5@@1))) o2_5@@0 f_23@@0) (= (select (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| Heap@@4) o2_5@@0 f_23@@0) (select (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| ExhaleHeap@@3) o2_5@@0 f_23@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| ExhaleHeap@@3) o2_5@@0 f_23@@0))
))) (forall ((o2_5@@1 T@Ref) (f_23@@1 T@Field_9687_1425) ) (!  (=> (select (|PolymorphicMapType_6729_6240_1425#PolymorphicMapType_6729| (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@4) null (PredicateMaskField_6240 pm_f_5@@1))) o2_5@@1 f_23@@1) (= (select (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| Heap@@4) o2_5@@1 f_23@@1) (select (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| ExhaleHeap@@3) o2_5@@1 f_23@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| ExhaleHeap@@3) o2_5@@1 f_23@@1))
))) (forall ((o2_5@@2 T@Ref) (f_23@@2 T@Field_6240_17943) ) (!  (=> (select (|PolymorphicMapType_6729_6240_17943#PolymorphicMapType_6729| (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@4) null (PredicateMaskField_6240 pm_f_5@@1))) o2_5@@2 f_23@@2) (= (select (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| Heap@@4) o2_5@@2 f_23@@2) (select (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| ExhaleHeap@@3) o2_5@@2 f_23@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| ExhaleHeap@@3) o2_5@@2 f_23@@2))
))) (forall ((o2_5@@3 T@Ref) (f_23@@3 T@Field_6240_18076) ) (!  (=> (select (|PolymorphicMapType_6729_6240_19254#PolymorphicMapType_6729| (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@4) null (PredicateMaskField_6240 pm_f_5@@1))) o2_5@@3 f_23@@3) (= (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@4) o2_5@@3 f_23@@3) (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| ExhaleHeap@@3) o2_5@@3 f_23@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| ExhaleHeap@@3) o2_5@@3 f_23@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_6240_18034 pm_f_5@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6180) (ExhaleHeap@@4 T@PolymorphicMapType_6180) (Mask@@15 T@PolymorphicMapType_6201) (pm_f_5@@2 T@Field_6240_17943) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_6240_18007 Mask@@15 null pm_f_5@@2) (IsWandField_6240_19781 pm_f_5@@2)) (and (and (and (and (forall ((o2_5@@4 T@Ref) (f_23@@4 T@Field_6240_53) ) (!  (=> (select (|PolymorphicMapType_6729_6240_53#PolymorphicMapType_6729| (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@5) null (WandMaskField_6240 pm_f_5@@2))) o2_5@@4 f_23@@4) (= (select (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| Heap@@5) o2_5@@4 f_23@@4) (select (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| ExhaleHeap@@4) o2_5@@4 f_23@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| ExhaleHeap@@4) o2_5@@4 f_23@@4))
)) (forall ((o2_5@@5 T@Ref) (f_23@@5 T@Field_6253_6254) ) (!  (=> (select (|PolymorphicMapType_6729_6240_6254#PolymorphicMapType_6729| (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@5) null (WandMaskField_6240 pm_f_5@@2))) o2_5@@5 f_23@@5) (= (select (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| Heap@@5) o2_5@@5 f_23@@5) (select (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| ExhaleHeap@@4) o2_5@@5 f_23@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| ExhaleHeap@@4) o2_5@@5 f_23@@5))
))) (forall ((o2_5@@6 T@Ref) (f_23@@6 T@Field_9687_1425) ) (!  (=> (select (|PolymorphicMapType_6729_6240_1425#PolymorphicMapType_6729| (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@5) null (WandMaskField_6240 pm_f_5@@2))) o2_5@@6 f_23@@6) (= (select (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| Heap@@5) o2_5@@6 f_23@@6) (select (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| ExhaleHeap@@4) o2_5@@6 f_23@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| ExhaleHeap@@4) o2_5@@6 f_23@@6))
))) (forall ((o2_5@@7 T@Ref) (f_23@@7 T@Field_6240_17943) ) (!  (=> (select (|PolymorphicMapType_6729_6240_17943#PolymorphicMapType_6729| (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@5) null (WandMaskField_6240 pm_f_5@@2))) o2_5@@7 f_23@@7) (= (select (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| Heap@@5) o2_5@@7 f_23@@7) (select (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| ExhaleHeap@@4) o2_5@@7 f_23@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| ExhaleHeap@@4) o2_5@@7 f_23@@7))
))) (forall ((o2_5@@8 T@Ref) (f_23@@8 T@Field_6240_18076) ) (!  (=> (select (|PolymorphicMapType_6729_6240_19254#PolymorphicMapType_6729| (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@5) null (WandMaskField_6240 pm_f_5@@2))) o2_5@@8 f_23@@8) (= (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@5) o2_5@@8 f_23@@8) (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| ExhaleHeap@@4) o2_5@@8 f_23@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| ExhaleHeap@@4) o2_5@@8 f_23@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_6240_19781 pm_f_5@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.189:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6180) (ExhaleHeap@@5 T@PolymorphicMapType_6180) (Mask@@16 T@PolymorphicMapType_6201) (o_15@@0 T@Ref) (f_23@@9 T@Field_6240_18076) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_6240_23781 Mask@@16 o_15@@0 f_23@@9) (= (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@6) o_15@@0 f_23@@9) (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| ExhaleHeap@@5) o_15@@0 f_23@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| ExhaleHeap@@5) o_15@@0 f_23@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6180) (ExhaleHeap@@6 T@PolymorphicMapType_6180) (Mask@@17 T@PolymorphicMapType_6201) (o_15@@1 T@Ref) (f_23@@10 T@Field_6240_17943) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_6240_18007 Mask@@17 o_15@@1 f_23@@10) (= (select (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| Heap@@7) o_15@@1 f_23@@10) (select (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| ExhaleHeap@@6) o_15@@1 f_23@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| ExhaleHeap@@6) o_15@@1 f_23@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6180) (ExhaleHeap@@7 T@PolymorphicMapType_6180) (Mask@@18 T@PolymorphicMapType_6201) (o_15@@2 T@Ref) (f_23@@11 T@Field_9687_1425) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_6240_1425 Mask@@18 o_15@@2 f_23@@11) (= (select (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| Heap@@8) o_15@@2 f_23@@11) (select (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| ExhaleHeap@@7) o_15@@2 f_23@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| ExhaleHeap@@7) o_15@@2 f_23@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6180) (ExhaleHeap@@8 T@PolymorphicMapType_6180) (Mask@@19 T@PolymorphicMapType_6201) (o_15@@3 T@Ref) (f_23@@12 T@Field_6253_6254) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_6240_6254 Mask@@19 o_15@@3 f_23@@12) (= (select (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| Heap@@9) o_15@@3 f_23@@12) (select (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| ExhaleHeap@@8) o_15@@3 f_23@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| ExhaleHeap@@8) o_15@@3 f_23@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6180) (ExhaleHeap@@9 T@PolymorphicMapType_6180) (Mask@@20 T@PolymorphicMapType_6201) (o_15@@4 T@Ref) (f_23@@13 T@Field_6240_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_6240_53 Mask@@20 o_15@@4 f_23@@13) (= (select (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| Heap@@10) o_15@@4 f_23@@13) (select (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| ExhaleHeap@@9) o_15@@4 f_23@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| ExhaleHeap@@9) o_15@@4 f_23@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6240_18076) ) (! (= (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_6240_17943) ) (! (= (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_6253_6254) ) (! (= (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6240_53) ) (! (= (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_9687_1425) ) (! (= (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6201) (SummandMask1 T@PolymorphicMapType_6201) (SummandMask2 T@PolymorphicMapType_6201) (o_2@@19 T@Ref) (f_4@@19 T@Field_6240_18076) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6201) (SummandMask1@@0 T@PolymorphicMapType_6201) (SummandMask2@@0 T@PolymorphicMapType_6201) (o_2@@20 T@Ref) (f_4@@20 T@Field_6240_17943) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6201) (SummandMask1@@1 T@PolymorphicMapType_6201) (SummandMask2@@1 T@PolymorphicMapType_6201) (o_2@@21 T@Ref) (f_4@@21 T@Field_6253_6254) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6201) (SummandMask1@@2 T@PolymorphicMapType_6201) (SummandMask2@@2 T@PolymorphicMapType_6201) (o_2@@22 T@Ref) (f_4@@22 T@Field_6240_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6201) (SummandMask1@@3 T@PolymorphicMapType_6201) (SummandMask2@@3 T@PolymorphicMapType_6201) (o_2@@23 T@Ref) (f_4@@23 T@Field_9687_1425) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a_2 T@ArrayDomainType) ) (! (>= (length_2 a_2) 0)
 :qid |stdinbpl.232:15|
 :skolemid |23|
 :pattern ( (length_2 a_2))
)))
(assert (forall ((a_2@@0 T@ArrayDomainType) (i Int) ) (!  (and (= (ref_to_array (loc a_2@@0 i)) a_2@@0) (= (ref_to_index (loc a_2@@0 i)) i))
 :qid |stdinbpl.226:15|
 :skolemid |22|
 :pattern ( (loc a_2@@0 i))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6180) (o_14 T@Ref) (f_24 T@Field_6240_17943) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_6180 (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| Heap@@11) (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| Heap@@11) (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| Heap@@11) (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@11) (store (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| Heap@@11) o_14 f_24 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6180 (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| Heap@@11) (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| Heap@@11) (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| Heap@@11) (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@11) (store (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| Heap@@11) o_14 f_24 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6180) (o_14@@0 T@Ref) (f_24@@0 T@Field_6240_18076) (v@@0 T@PolymorphicMapType_6729) ) (! (succHeap Heap@@12 (PolymorphicMapType_6180 (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| Heap@@12) (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| Heap@@12) (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| Heap@@12) (store (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@12) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6180 (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| Heap@@12) (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| Heap@@12) (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| Heap@@12) (store (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@12) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6180) (o_14@@1 T@Ref) (f_24@@1 T@Field_9687_1425) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_6180 (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| Heap@@13) (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| Heap@@13) (store (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| Heap@@13) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@13) (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6180 (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| Heap@@13) (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| Heap@@13) (store (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| Heap@@13) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@13) (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6180) (o_14@@2 T@Ref) (f_24@@2 T@Field_6253_6254) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_6180 (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| Heap@@14) (store (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| Heap@@14) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| Heap@@14) (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@14) (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6180 (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| Heap@@14) (store (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| Heap@@14) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| Heap@@14) (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@14) (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6180) (o_14@@3 T@Ref) (f_24@@3 T@Field_6240_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_6180 (store (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| Heap@@15) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| Heap@@15) (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| Heap@@15) (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@15) (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6180 (store (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| Heap@@15) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| Heap@@15) (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| Heap@@15) (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@@15) (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| Heap@@15)))
)))
(assert (forall ((o_14@@4 T@Ref) (f_22 T@Field_6253_6254) (Heap@@16 T@PolymorphicMapType_6180) ) (!  (=> (select (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| Heap@@16) o_14@@4 $allocated) (select (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| Heap@@16) (select (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| Heap@@16) o_14@@4 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| Heap@@16) o_14@@4 f_22))
)))
(assert (forall ((p@@1 T@Field_6240_17943) (v_1@@0 T@FrameType) (q T@Field_6240_17943) (w@@0 T@FrameType) (r T@Field_6240_17943) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6240_6240 p@@1 v_1@@0 q w@@0) (InsidePredicate_6240_6240 q w@@0 r u)) (InsidePredicate_6240_6240 p@@1 v_1@@0 r u))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6240_6240 p@@1 v_1@@0 q w@@0) (InsidePredicate_6240_6240 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun arr1 () T@ArrayDomainType)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun t_2@0 () Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_6180)
(declare-fun QPMask@1 () T@PolymorphicMapType_6201)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_6201)
(declare-fun Heap@0 () T@PolymorphicMapType_6180)
(declare-fun arr2 () T@ArrayDomainType)
(declare-fun Heap@1 () T@PolymorphicMapType_6180)
(declare-fun t_2@1 () Int)
(declare-fun dummyFunction_1425 (Int) Bool)
(declare-fun neverTriggered5 (Int) Bool)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_6201)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_6201)
(declare-fun Heap@@17 () T@PolymorphicMapType_6180)
(declare-fun neverTriggered2 (Int) Bool)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(set-info :boogie-vc-id multiple_arrays)
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
 (=> (= (ControlFlow 0 0) 28) (let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 17) (- 0 18)) (forall ((i_4_1 Int) (i_4_2 Int) ) (!  (=> (and (and (not (= i_4_1 i_4_2)) (< NoPerm (ite  (and (<= 0 i_4_1) (< i_4_1 10)) FullPerm NoPerm))) (< NoPerm (ite  (and (<= 0 i_4_2) (< i_4_2 10)) FullPerm NoPerm))) (not (= (loc arr1 i_4_1) (loc arr1 i_4_2))))
 :qid |stdinbpl.398:19|
 :skolemid |38|
))) (=> (forall ((i_4_1@@0 Int) (i_4_2@@0 Int) ) (!  (=> (and (and (not (= i_4_1@@0 i_4_2@@0)) (< NoPerm (ite  (and (<= 0 i_4_1@@0) (< i_4_1@@0 10)) FullPerm NoPerm))) (< NoPerm (ite  (and (<= 0 i_4_2@@0) (< i_4_2@@0 10)) FullPerm NoPerm))) (not (= (loc arr1 i_4_1@@0) (loc arr1 i_4_2@@0))))
 :qid |stdinbpl.398:19|
 :skolemid |38|
)) (=> (forall ((i_4_1@@1 Int) ) (!  (=> (< NoPerm (ite  (and (<= 0 i_4_1@@1) (< i_4_1@@1 10)) FullPerm NoPerm)) (and (qpRange3 (loc arr1 i_4_1@@1)) (= (invRecv3 (loc arr1 i_4_1@@1)) i_4_1@@1)))
 :qid |stdinbpl.404:26|
 :skolemid |39|
 :pattern ( (loc arr1 i_4_1@@1))
 :pattern ( (loc arr1 i_4_1@@1))
)) (=> (and (forall ((o_9 T@Ref) ) (!  (=> (and (< NoPerm (ite  (and (<= 0 (invRecv3 o_9)) (< (invRecv3 o_9) 10)) FullPerm NoPerm)) (qpRange3 o_9)) (= (loc arr1 (invRecv3 o_9)) o_9))
 :qid |stdinbpl.408:26|
 :skolemid |40|
 :pattern ( (invRecv3 o_9))
)) (= (ControlFlow 0 17) (- 0 16))) (forall ((i_4_1@@2 Int) ) (! (>= (ite  (and (<= 0 i_4_1@@2) (< i_4_1@@2 10)) FullPerm NoPerm) NoPerm)
 :qid |stdinbpl.414:19|
 :skolemid |41|
 :pattern ( (loc arr1 i_4_1@@2))
 :pattern ( (loc arr1 i_4_1@@2))
))))))))
(let ((anon11_Then_correct true))
(let ((anon12_Else_correct  (=> (and (not (< t_2@0 10)) (state ExhaleHeap@0 QPMask@1)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (not (= i_7_1 i_7_2)) (< NoPerm (ite  (and (<= 0 i_7_1) (< i_7_1 10)) FullPerm NoPerm))) (< NoPerm (ite  (and (<= 0 i_7_2) (< i_7_2 10)) FullPerm NoPerm))) (not (= (loc arr1 i_7_1) (loc arr1 i_7_2))))
 :qid |stdinbpl.580:17|
 :skolemid |59|
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (not (= i_7_1@@0 i_7_2@@0)) (< NoPerm (ite  (and (<= 0 i_7_1@@0) (< i_7_1@@0 10)) FullPerm NoPerm))) (< NoPerm (ite  (and (<= 0 i_7_2@@0) (< i_7_2@@0 10)) FullPerm NoPerm))) (not (= (loc arr1 i_7_1@@0) (loc arr1 i_7_2@@0))))
 :qid |stdinbpl.580:17|
 :skolemid |59|
)) (=> (forall ((i_7_1@@1 Int) ) (!  (=> (< NoPerm (ite  (and (<= 0 i_7_1@@1) (< i_7_1@@1 10)) FullPerm NoPerm)) (and (qpRange6 (loc arr1 i_7_1@@1)) (= (invRecv6 (loc arr1 i_7_1@@1)) i_7_1@@1)))
 :qid |stdinbpl.586:24|
 :skolemid |60|
 :pattern ( (loc arr1 i_7_1@@1))
 :pattern ( (loc arr1 i_7_1@@1))
)) (=> (and (forall ((o_9@@0 T@Ref) ) (!  (=> (and (< NoPerm (ite  (and (<= 0 (invRecv6 o_9@@0)) (< (invRecv6 o_9@@0) 10)) FullPerm NoPerm)) (qpRange6 o_9@@0)) (= (loc arr1 (invRecv6 o_9@@0)) o_9@@0))
 :qid |stdinbpl.590:24|
 :skolemid |61|
 :pattern ( (invRecv6 o_9@@0))
)) (= (ControlFlow 0 13) (- 0 12))) (forall ((i_7_1@@2 Int) ) (! (>= (ite  (and (<= 0 i_7_1@@2) (< i_7_1@@2 10)) FullPerm NoPerm) NoPerm)
 :qid |stdinbpl.596:17|
 :skolemid |62|
 :pattern ( (loc arr1 i_7_1@@2))
 :pattern ( (loc arr1 i_7_1@@2))
)))))))))
(let ((anon12_Then_correct  (=> (state ExhaleHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 3) (- 0 11)) (forall ((i_5_1 Int) (i_5_2 Int) ) (!  (=> (and (and (not (= i_5_1 i_5_2)) (< NoPerm (ite  (and (<= 0 i_5_1) (< i_5_1 10)) FullPerm NoPerm))) (< NoPerm (ite  (and (<= 0 i_5_2) (< i_5_2 10)) FullPerm NoPerm))) (not (= (loc arr1 i_5_1) (loc arr1 i_5_2))))
 :qid |stdinbpl.453:19|
 :skolemid |45|
))) (=> (forall ((i_5_1@@0 Int) (i_5_2@@0 Int) ) (!  (=> (and (and (not (= i_5_1@@0 i_5_2@@0)) (< NoPerm (ite  (and (<= 0 i_5_1@@0) (< i_5_1@@0 10)) FullPerm NoPerm))) (< NoPerm (ite  (and (<= 0 i_5_2@@0) (< i_5_2@@0 10)) FullPerm NoPerm))) (not (= (loc arr1 i_5_1@@0) (loc arr1 i_5_2@@0))))
 :qid |stdinbpl.453:19|
 :skolemid |45|
)) (=> (and (forall ((i_5_1@@1 Int) ) (!  (=> (< NoPerm (ite  (and (<= 0 i_5_1@@1) (< i_5_1@@1 10)) FullPerm NoPerm)) (and (qpRange4 (loc arr1 i_5_1@@1)) (= (invRecv4 (loc arr1 i_5_1@@1)) i_5_1@@1)))
 :qid |stdinbpl.459:26|
 :skolemid |46|
 :pattern ( (loc arr1 i_5_1@@1))
 :pattern ( (loc arr1 i_5_1@@1))
)) (forall ((o_9@@1 T@Ref) ) (!  (=> (and (< NoPerm (ite  (and (<= 0 (invRecv4 o_9@@1)) (< (invRecv4 o_9@@1) 10)) FullPerm NoPerm)) (qpRange4 o_9@@1)) (= (loc arr1 (invRecv4 o_9@@1)) o_9@@1))
 :qid |stdinbpl.463:26|
 :skolemid |47|
 :pattern ( (invRecv4 o_9@@1))
))) (and (=> (= (ControlFlow 0 3) (- 0 10)) (forall ((i_5_1@@2 Int) ) (! (>= (ite  (and (<= 0 i_5_1@@2) (< i_5_1@@2 10)) FullPerm NoPerm) NoPerm)
 :qid |stdinbpl.469:19|
 :skolemid |48|
 :pattern ( (loc arr1 i_5_1@@2))
 :pattern ( (loc arr1 i_5_1@@2))
))) (=> (forall ((i_5_1@@3 Int) ) (! (>= (ite  (and (<= 0 i_5_1@@3) (< i_5_1@@3 10)) FullPerm NoPerm) NoPerm)
 :qid |stdinbpl.469:19|
 :skolemid |48|
 :pattern ( (loc arr1 i_5_1@@3))
 :pattern ( (loc arr1 i_5_1@@3))
)) (=> (and (forall ((i_5_1@@4 Int) ) (!  (=> (> (ite  (and (<= 0 i_5_1@@4) (< i_5_1@@4 10)) FullPerm NoPerm) NoPerm) (not (= (loc arr1 i_5_1@@4) null)))
 :qid |stdinbpl.475:26|
 :skolemid |49|
 :pattern ( (loc arr1 i_5_1@@4))
 :pattern ( (loc arr1 i_5_1@@4))
)) (forall ((o_9@@2 T@Ref) ) (!  (and (=> (and (< NoPerm (ite  (and (<= 0 (invRecv4 o_9@@2)) (< (invRecv4 o_9@@2) 10)) FullPerm NoPerm)) (qpRange4 o_9@@2)) (and (=> (< NoPerm (ite  (and (<= 0 (invRecv4 o_9@@2)) (< (invRecv4 o_9@@2) 10)) FullPerm NoPerm)) (= (loc arr1 (invRecv4 o_9@@2)) o_9@@2)) (= (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@2) o_9@@2 val) (+ (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| ZeroMask) o_9@@2 val) (ite  (and (<= 0 (invRecv4 o_9@@2)) (< (invRecv4 o_9@@2) 10)) FullPerm NoPerm))))) (=> (not (and (< NoPerm (ite  (and (<= 0 (invRecv4 o_9@@2)) (< (invRecv4 o_9@@2) 10)) FullPerm NoPerm)) (qpRange4 o_9@@2))) (= (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@2) o_9@@2 val) (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| ZeroMask) o_9@@2 val))))
 :qid |stdinbpl.481:26|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@2) o_9@@2 val))
))) (=> (and (and (and (and (and (and (forall ((o_9@@3 T@Ref) (f_5 T@Field_6240_53) ) (!  (=> true (= (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| ZeroMask) o_9@@3 f_5) (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| QPMask@2) o_9@@3 f_5)))
 :qid |stdinbpl.485:33|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| ZeroMask) o_9@@3 f_5))
 :pattern ( (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| QPMask@2) o_9@@3 f_5))
)) (forall ((o_9@@4 T@Ref) (f_5@@0 T@Field_6253_6254) ) (!  (=> true (= (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| ZeroMask) o_9@@4 f_5@@0) (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| QPMask@2) o_9@@4 f_5@@0)))
 :qid |stdinbpl.485:33|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| ZeroMask) o_9@@4 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| QPMask@2) o_9@@4 f_5@@0))
))) (forall ((o_9@@5 T@Ref) (f_5@@1 T@Field_9687_1425) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| ZeroMask) o_9@@5 f_5@@1) (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@2) o_9@@5 f_5@@1)))
 :qid |stdinbpl.485:33|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| ZeroMask) o_9@@5 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@2) o_9@@5 f_5@@1))
))) (forall ((o_9@@6 T@Ref) (f_5@@2 T@Field_6240_17943) ) (!  (=> true (= (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| ZeroMask) o_9@@6 f_5@@2) (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| QPMask@2) o_9@@6 f_5@@2)))
 :qid |stdinbpl.485:33|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| ZeroMask) o_9@@6 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| QPMask@2) o_9@@6 f_5@@2))
))) (forall ((o_9@@7 T@Ref) (f_5@@3 T@Field_6240_18076) ) (!  (=> true (= (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| ZeroMask) o_9@@7 f_5@@3) (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| QPMask@2) o_9@@7 f_5@@3)))
 :qid |stdinbpl.485:33|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| ZeroMask) o_9@@7 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| QPMask@2) o_9@@7 f_5@@3))
))) (and (state ExhaleHeap@0 QPMask@2) (<= 0 t_2@0))) (and (and (<= t_2@0 10) (state ExhaleHeap@0 QPMask@2)) (and (< t_2@0 10) (state ExhaleHeap@0 QPMask@2)))) (and (=> (= (ControlFlow 0 3) (- 0 9)) (= FullPerm (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@2) (loc arr1 t_2@0) val))) (=> (= FullPerm (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@2) (loc arr1 t_2@0) val)) (=> (and (= Heap@0 (PolymorphicMapType_6180 (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| ExhaleHeap@0) (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| ExhaleHeap@0) (store (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| ExhaleHeap@0) (loc arr1 t_2@0) val 0) (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| ExhaleHeap@0) (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| ExhaleHeap@0))) (state Heap@0 QPMask@2)) (and (=> (= (ControlFlow 0 3) (- 0 8)) (= FullPerm (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@2) (loc arr2 t_2@0) val))) (=> (= FullPerm (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@2) (loc arr2 t_2@0) val)) (=> (and (and (= Heap@1 (PolymorphicMapType_6180 (|PolymorphicMapType_6180_4024_53#PolymorphicMapType_6180| Heap@0) (|PolymorphicMapType_6180_4027_4028#PolymorphicMapType_6180| Heap@0) (store (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| Heap@0) (loc arr2 t_2@0) val 0) (|PolymorphicMapType_6180_6240_18120#PolymorphicMapType_6180| Heap@0) (|PolymorphicMapType_6180_6240_17943#PolymorphicMapType_6180| Heap@0))) (state Heap@1 QPMask@2)) (and (= t_2@1 (+ t_2@0 1)) (state Heap@1 QPMask@2))) (and (=> (= (ControlFlow 0 3) (- 0 7)) (forall ((i_6_2 Int) ) (!  (=> (dummyFunction_1425 (select (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| Heap@1) (loc arr1 i_6_2) val)) (>= (ite  (and (<= 0 i_6_2) (< i_6_2 10)) FullPerm NoPerm) NoPerm))
 :qid |stdinbpl.522:21|
 :skolemid |52|
 :pattern ( (loc arr1 i_6_2))
 :pattern ( (loc arr1 i_6_2))
))) (=> (forall ((i_6_2@@0 Int) ) (!  (=> (dummyFunction_1425 (select (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| Heap@1) (loc arr1 i_6_2@@0) val)) (>= (ite  (and (<= 0 i_6_2@@0) (< i_6_2@@0 10)) FullPerm NoPerm) NoPerm))
 :qid |stdinbpl.522:21|
 :skolemid |52|
 :pattern ( (loc arr1 i_6_2@@0))
 :pattern ( (loc arr1 i_6_2@@0))
)) (and (=> (= (ControlFlow 0 3) (- 0 6)) (forall ((i_6_2@@1 Int) (i_6_3 Int) ) (!  (=> (and (and (not (= i_6_2@@1 i_6_3)) (< NoPerm (ite  (and (<= 0 i_6_2@@1) (< i_6_2@@1 10)) FullPerm NoPerm))) (< NoPerm (ite  (and (<= 0 i_6_3) (< i_6_3 10)) FullPerm NoPerm))) (not (= (loc arr1 i_6_2@@1) (loc arr1 i_6_3))))
 :qid |stdinbpl.529:21|
 :skolemid |53|
 :pattern ( (neverTriggered5 i_6_2@@1) (neverTriggered5 i_6_3))
))) (=> (forall ((i_6_2@@2 Int) (i_6_3@@0 Int) ) (!  (=> (and (and (not (= i_6_2@@2 i_6_3@@0)) (< NoPerm (ite  (and (<= 0 i_6_2@@2) (< i_6_2@@2 10)) FullPerm NoPerm))) (< NoPerm (ite  (and (<= 0 i_6_3@@0) (< i_6_3@@0 10)) FullPerm NoPerm))) (not (= (loc arr1 i_6_2@@2) (loc arr1 i_6_3@@0))))
 :qid |stdinbpl.529:21|
 :skolemid |53|
 :pattern ( (neverTriggered5 i_6_2@@2) (neverTriggered5 i_6_3@@0))
)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (forall ((i_6_2@@3 Int) ) (! (>= (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@2) (loc arr1 i_6_2@@3) val) (ite  (and (<= 0 i_6_2@@3) (< i_6_2@@3 10)) FullPerm NoPerm))
 :qid |stdinbpl.536:21|
 :skolemid |54|
 :pattern ( (loc arr1 i_6_2@@3))
 :pattern ( (loc arr1 i_6_2@@3))
))) (=> (forall ((i_6_2@@4 Int) ) (! (>= (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@2) (loc arr1 i_6_2@@4) val) (ite  (and (<= 0 i_6_2@@4) (< i_6_2@@4 10)) FullPerm NoPerm))
 :qid |stdinbpl.536:21|
 :skolemid |54|
 :pattern ( (loc arr1 i_6_2@@4))
 :pattern ( (loc arr1 i_6_2@@4))
)) (=> (forall ((i_6_2@@5 Int) ) (!  (=> (< NoPerm (ite  (and (<= 0 i_6_2@@5) (< i_6_2@@5 10)) FullPerm NoPerm)) (and (qpRange5 (loc arr1 i_6_2@@5)) (= (invRecv5 (loc arr1 i_6_2@@5)) i_6_2@@5)))
 :qid |stdinbpl.542:26|
 :skolemid |55|
 :pattern ( (loc arr1 i_6_2@@5))
 :pattern ( (loc arr1 i_6_2@@5))
)) (=> (and (forall ((o_9@@8 T@Ref) ) (!  (=> (and (< NoPerm (ite  (and (<= 0 (invRecv5 o_9@@8)) (< (invRecv5 o_9@@8) 10)) FullPerm NoPerm)) (qpRange5 o_9@@8)) (= (loc arr1 (invRecv5 o_9@@8)) o_9@@8))
 :qid |stdinbpl.546:26|
 :skolemid |56|
 :pattern ( (invRecv5 o_9@@8))
)) (forall ((o_9@@9 T@Ref) ) (!  (and (=> (and (< NoPerm (ite  (and (<= 0 (invRecv5 o_9@@9)) (< (invRecv5 o_9@@9) 10)) FullPerm NoPerm)) (qpRange5 o_9@@9)) (and (= (loc arr1 (invRecv5 o_9@@9)) o_9@@9) (= (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@3) o_9@@9 val) (- (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@2) o_9@@9 val) (ite  (and (<= 0 (invRecv5 o_9@@9)) (< (invRecv5 o_9@@9) 10)) FullPerm NoPerm))))) (=> (not (and (< NoPerm (ite  (and (<= 0 (invRecv5 o_9@@9)) (< (invRecv5 o_9@@9) 10)) FullPerm NoPerm)) (qpRange5 o_9@@9))) (= (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@3) o_9@@9 val) (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@2) o_9@@9 val))))
 :qid |stdinbpl.552:26|
 :skolemid |57|
 :pattern ( (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@3) o_9@@9 val))
))) (=> (and (and (and (and (forall ((o_9@@10 T@Ref) (f_5@@4 T@Field_6240_53) ) (!  (=> true (= (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| QPMask@2) o_9@@10 f_5@@4) (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| QPMask@3) o_9@@10 f_5@@4)))
 :qid |stdinbpl.558:33|
 :skolemid |58|
 :pattern ( (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| QPMask@3) o_9@@10 f_5@@4))
)) (forall ((o_9@@11 T@Ref) (f_5@@5 T@Field_6253_6254) ) (!  (=> true (= (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| QPMask@2) o_9@@11 f_5@@5) (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| QPMask@3) o_9@@11 f_5@@5)))
 :qid |stdinbpl.558:33|
 :skolemid |58|
 :pattern ( (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| QPMask@3) o_9@@11 f_5@@5))
))) (forall ((o_9@@12 T@Ref) (f_5@@6 T@Field_9687_1425) ) (!  (=> (not (= f_5@@6 val)) (= (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@2) o_9@@12 f_5@@6) (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@3) o_9@@12 f_5@@6)))
 :qid |stdinbpl.558:33|
 :skolemid |58|
 :pattern ( (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@3) o_9@@12 f_5@@6))
))) (forall ((o_9@@13 T@Ref) (f_5@@7 T@Field_6240_17943) ) (!  (=> true (= (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| QPMask@2) o_9@@13 f_5@@7) (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| QPMask@3) o_9@@13 f_5@@7)))
 :qid |stdinbpl.558:33|
 :skolemid |58|
 :pattern ( (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| QPMask@3) o_9@@13 f_5@@7))
))) (forall ((o_9@@14 T@Ref) (f_5@@8 T@Field_6240_18076) ) (!  (=> true (= (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| QPMask@2) o_9@@14 f_5@@8) (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| QPMask@3) o_9@@14 f_5@@8)))
 :qid |stdinbpl.558:33|
 :skolemid |58|
 :pattern ( (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| QPMask@3) o_9@@14 f_5@@8))
))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (<= 0 t_2@1)) (=> (<= 0 t_2@1) (=> (= (ControlFlow 0 3) (- 0 2)) (<= t_2@1 10)))))))))))))))))))))))))))))
(let ((anon9_Else_correct  (and (=> (= (ControlFlow 0 19) (- 0 26)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (not (= i_1 i_1_1)) (< NoPerm (ite  (and (<= 0 i_1) (< i_1 10)) FullPerm NoPerm))) (< NoPerm (ite  (and (<= 0 i_1_1) (< i_1_1 10)) FullPerm NoPerm))) (not (= (loc arr1 i_1) (loc arr1 i_1_1))))
 :qid |stdinbpl.275:15|
 :skolemid |24|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (not (= i_1@@0 i_1_1@@0)) (< NoPerm (ite  (and (<= 0 i_1@@0) (< i_1@@0 10)) FullPerm NoPerm))) (< NoPerm (ite  (and (<= 0 i_1_1@@0) (< i_1_1@@0 10)) FullPerm NoPerm))) (not (= (loc arr1 i_1@@0) (loc arr1 i_1_1@@0))))
 :qid |stdinbpl.275:15|
 :skolemid |24|
)) (=> (and (forall ((i_1@@1 Int) ) (!  (=> (< NoPerm (ite  (and (<= 0 i_1@@1) (< i_1@@1 10)) FullPerm NoPerm)) (and (qpRange1 (loc arr1 i_1@@1)) (= (invRecv1 (loc arr1 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.281:22|
 :skolemid |25|
 :pattern ( (loc arr1 i_1@@1))
 :pattern ( (loc arr1 i_1@@1))
)) (forall ((o_9@@15 T@Ref) ) (!  (=> (and (< NoPerm (ite  (and (<= 0 (invRecv1 o_9@@15)) (< (invRecv1 o_9@@15) 10)) FullPerm NoPerm)) (qpRange1 o_9@@15)) (= (loc arr1 (invRecv1 o_9@@15)) o_9@@15))
 :qid |stdinbpl.285:22|
 :skolemid |26|
 :pattern ( (invRecv1 o_9@@15))
))) (and (=> (= (ControlFlow 0 19) (- 0 25)) (forall ((i_1@@2 Int) ) (! (>= (ite  (and (<= 0 i_1@@2) (< i_1@@2 10)) FullPerm NoPerm) NoPerm)
 :qid |stdinbpl.291:15|
 :skolemid |27|
 :pattern ( (loc arr1 i_1@@2))
 :pattern ( (loc arr1 i_1@@2))
))) (=> (forall ((i_1@@3 Int) ) (! (>= (ite  (and (<= 0 i_1@@3) (< i_1@@3 10)) FullPerm NoPerm) NoPerm)
 :qid |stdinbpl.291:15|
 :skolemid |27|
 :pattern ( (loc arr1 i_1@@3))
 :pattern ( (loc arr1 i_1@@3))
)) (=> (and (forall ((i_1@@4 Int) ) (!  (=> (> (ite  (and (<= 0 i_1@@4) (< i_1@@4 10)) FullPerm NoPerm) NoPerm) (not (= (loc arr1 i_1@@4) null)))
 :qid |stdinbpl.297:22|
 :skolemid |28|
 :pattern ( (loc arr1 i_1@@4))
 :pattern ( (loc arr1 i_1@@4))
)) (forall ((o_9@@16 T@Ref) ) (!  (and (=> (and (< NoPerm (ite  (and (<= 0 (invRecv1 o_9@@16)) (< (invRecv1 o_9@@16) 10)) FullPerm NoPerm)) (qpRange1 o_9@@16)) (and (=> (< NoPerm (ite  (and (<= 0 (invRecv1 o_9@@16)) (< (invRecv1 o_9@@16) 10)) FullPerm NoPerm)) (= (loc arr1 (invRecv1 o_9@@16)) o_9@@16)) (= (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@0) o_9@@16 val) (+ (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| ZeroMask) o_9@@16 val) (ite  (and (<= 0 (invRecv1 o_9@@16)) (< (invRecv1 o_9@@16) 10)) FullPerm NoPerm))))) (=> (not (and (< NoPerm (ite  (and (<= 0 (invRecv1 o_9@@16)) (< (invRecv1 o_9@@16) 10)) FullPerm NoPerm)) (qpRange1 o_9@@16))) (= (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@0) o_9@@16 val) (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| ZeroMask) o_9@@16 val))))
 :qid |stdinbpl.303:22|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@0) o_9@@16 val))
))) (=> (and (and (and (and (and (and (forall ((o_9@@17 T@Ref) (f_5@@9 T@Field_6240_53) ) (!  (=> true (= (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| ZeroMask) o_9@@17 f_5@@9) (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| QPMask@0) o_9@@17 f_5@@9)))
 :qid |stdinbpl.307:29|
 :skolemid |30|
 :pattern ( (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| ZeroMask) o_9@@17 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| QPMask@0) o_9@@17 f_5@@9))
)) (forall ((o_9@@18 T@Ref) (f_5@@10 T@Field_6253_6254) ) (!  (=> true (= (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| ZeroMask) o_9@@18 f_5@@10) (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| QPMask@0) o_9@@18 f_5@@10)))
 :qid |stdinbpl.307:29|
 :skolemid |30|
 :pattern ( (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| ZeroMask) o_9@@18 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| QPMask@0) o_9@@18 f_5@@10))
))) (forall ((o_9@@19 T@Ref) (f_5@@11 T@Field_9687_1425) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| ZeroMask) o_9@@19 f_5@@11) (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@0) o_9@@19 f_5@@11)))
 :qid |stdinbpl.307:29|
 :skolemid |30|
 :pattern ( (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| ZeroMask) o_9@@19 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@0) o_9@@19 f_5@@11))
))) (forall ((o_9@@20 T@Ref) (f_5@@12 T@Field_6240_17943) ) (!  (=> true (= (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| ZeroMask) o_9@@20 f_5@@12) (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| QPMask@0) o_9@@20 f_5@@12)))
 :qid |stdinbpl.307:29|
 :skolemid |30|
 :pattern ( (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| ZeroMask) o_9@@20 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| QPMask@0) o_9@@20 f_5@@12))
))) (forall ((o_9@@21 T@Ref) (f_5@@13 T@Field_6240_18076) ) (!  (=> true (= (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| ZeroMask) o_9@@21 f_5@@13) (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| QPMask@0) o_9@@21 f_5@@13)))
 :qid |stdinbpl.307:29|
 :skolemid |30|
 :pattern ( (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| ZeroMask) o_9@@21 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| QPMask@0) o_9@@21 f_5@@13))
))) (state Heap@@17 QPMask@0)) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (=> (= (ControlFlow 0 19) (- 0 24)) (forall ((i_2 Int) ) (!  (=> (dummyFunction_1425 (select (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| Heap@@17) (loc arr1 i_2) val)) (>= (ite  (and (<= 0 i_2) (< i_2 10)) FullPerm NoPerm) NoPerm))
 :qid |stdinbpl.336:21|
 :skolemid |31|
 :pattern ( (loc arr1 i_2))
 :pattern ( (loc arr1 i_2))
))) (=> (forall ((i_2@@0 Int) ) (!  (=> (dummyFunction_1425 (select (|PolymorphicMapType_6180_4176_1425#PolymorphicMapType_6180| Heap@@17) (loc arr1 i_2@@0) val)) (>= (ite  (and (<= 0 i_2@@0) (< i_2@@0 10)) FullPerm NoPerm) NoPerm))
 :qid |stdinbpl.336:21|
 :skolemid |31|
 :pattern ( (loc arr1 i_2@@0))
 :pattern ( (loc arr1 i_2@@0))
)) (and (=> (= (ControlFlow 0 19) (- 0 23)) (forall ((i_2@@1 Int) (i_2_2 Int) ) (!  (=> (and (and (not (= i_2@@1 i_2_2)) (< NoPerm (ite  (and (<= 0 i_2@@1) (< i_2@@1 10)) FullPerm NoPerm))) (< NoPerm (ite  (and (<= 0 i_2_2) (< i_2_2 10)) FullPerm NoPerm))) (not (= (loc arr1 i_2@@1) (loc arr1 i_2_2))))
 :qid |stdinbpl.343:21|
 :skolemid |32|
 :pattern ( (neverTriggered2 i_2@@1) (neverTriggered2 i_2_2))
))) (=> (forall ((i_2@@2 Int) (i_2_2@@0 Int) ) (!  (=> (and (and (not (= i_2@@2 i_2_2@@0)) (< NoPerm (ite  (and (<= 0 i_2@@2) (< i_2@@2 10)) FullPerm NoPerm))) (< NoPerm (ite  (and (<= 0 i_2_2@@0) (< i_2_2@@0 10)) FullPerm NoPerm))) (not (= (loc arr1 i_2@@2) (loc arr1 i_2_2@@0))))
 :qid |stdinbpl.343:21|
 :skolemid |32|
 :pattern ( (neverTriggered2 i_2@@2) (neverTriggered2 i_2_2@@0))
)) (and (=> (= (ControlFlow 0 19) (- 0 22)) (forall ((i_2@@3 Int) ) (! (>= (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@0) (loc arr1 i_2@@3) val) (ite  (and (<= 0 i_2@@3) (< i_2@@3 10)) FullPerm NoPerm))
 :qid |stdinbpl.350:21|
 :skolemid |33|
 :pattern ( (loc arr1 i_2@@3))
 :pattern ( (loc arr1 i_2@@3))
))) (=> (forall ((i_2@@4 Int) ) (! (>= (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@0) (loc arr1 i_2@@4) val) (ite  (and (<= 0 i_2@@4) (< i_2@@4 10)) FullPerm NoPerm))
 :qid |stdinbpl.350:21|
 :skolemid |33|
 :pattern ( (loc arr1 i_2@@4))
 :pattern ( (loc arr1 i_2@@4))
)) (=> (forall ((i_2@@5 Int) ) (!  (=> (< NoPerm (ite  (and (<= 0 i_2@@5) (< i_2@@5 10)) FullPerm NoPerm)) (and (qpRange2 (loc arr1 i_2@@5)) (= (invRecv2 (loc arr1 i_2@@5)) i_2@@5)))
 :qid |stdinbpl.356:26|
 :skolemid |34|
 :pattern ( (loc arr1 i_2@@5))
 :pattern ( (loc arr1 i_2@@5))
)) (=> (and (forall ((o_9@@22 T@Ref) ) (!  (=> (and (< NoPerm (ite  (and (<= 0 (invRecv2 o_9@@22)) (< (invRecv2 o_9@@22) 10)) FullPerm NoPerm)) (qpRange2 o_9@@22)) (= (loc arr1 (invRecv2 o_9@@22)) o_9@@22))
 :qid |stdinbpl.360:26|
 :skolemid |35|
 :pattern ( (invRecv2 o_9@@22))
)) (forall ((o_9@@23 T@Ref) ) (!  (and (=> (and (< NoPerm (ite  (and (<= 0 (invRecv2 o_9@@23)) (< (invRecv2 o_9@@23) 10)) FullPerm NoPerm)) (qpRange2 o_9@@23)) (and (= (loc arr1 (invRecv2 o_9@@23)) o_9@@23) (= (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@1) o_9@@23 val) (- (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@0) o_9@@23 val) (ite  (and (<= 0 (invRecv2 o_9@@23)) (< (invRecv2 o_9@@23) 10)) FullPerm NoPerm))))) (=> (not (and (< NoPerm (ite  (and (<= 0 (invRecv2 o_9@@23)) (< (invRecv2 o_9@@23) 10)) FullPerm NoPerm)) (qpRange2 o_9@@23))) (= (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@1) o_9@@23 val) (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@0) o_9@@23 val))))
 :qid |stdinbpl.366:26|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@1) o_9@@23 val))
))) (=> (and (and (and (and (forall ((o_9@@24 T@Ref) (f_5@@14 T@Field_6240_53) ) (!  (=> true (= (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| QPMask@0) o_9@@24 f_5@@14) (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| QPMask@1) o_9@@24 f_5@@14)))
 :qid |stdinbpl.372:33|
 :skolemid |37|
 :pattern ( (select (|PolymorphicMapType_6201_4176_53#PolymorphicMapType_6201| QPMask@1) o_9@@24 f_5@@14))
)) (forall ((o_9@@25 T@Ref) (f_5@@15 T@Field_6253_6254) ) (!  (=> true (= (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| QPMask@0) o_9@@25 f_5@@15) (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| QPMask@1) o_9@@25 f_5@@15)))
 :qid |stdinbpl.372:33|
 :skolemid |37|
 :pattern ( (select (|PolymorphicMapType_6201_4176_6254#PolymorphicMapType_6201| QPMask@1) o_9@@25 f_5@@15))
))) (forall ((o_9@@26 T@Ref) (f_5@@16 T@Field_9687_1425) ) (!  (=> (not (= f_5@@16 val)) (= (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@0) o_9@@26 f_5@@16) (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@1) o_9@@26 f_5@@16)))
 :qid |stdinbpl.372:33|
 :skolemid |37|
 :pattern ( (select (|PolymorphicMapType_6201_4176_1425#PolymorphicMapType_6201| QPMask@1) o_9@@26 f_5@@16))
))) (forall ((o_9@@27 T@Ref) (f_5@@17 T@Field_6240_17943) ) (!  (=> true (= (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| QPMask@0) o_9@@27 f_5@@17) (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| QPMask@1) o_9@@27 f_5@@17)))
 :qid |stdinbpl.372:33|
 :skolemid |37|
 :pattern ( (select (|PolymorphicMapType_6201_4176_17943#PolymorphicMapType_6201| QPMask@1) o_9@@27 f_5@@17))
))) (forall ((o_9@@28 T@Ref) (f_5@@18 T@Field_6240_18076) ) (!  (=> true (= (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| QPMask@0) o_9@@28 f_5@@18) (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| QPMask@1) o_9@@28 f_5@@18)))
 :qid |stdinbpl.372:33|
 :skolemid |37|
 :pattern ( (select (|PolymorphicMapType_6201_4176_22198#PolymorphicMapType_6201| QPMask@1) o_9@@28 f_5@@18))
))) (and (=> (= (ControlFlow 0 19) (- 0 21)) (<= 0 0)) (=> (<= 0 0) (and (=> (= (ControlFlow 0 19) (- 0 20)) (<= 0 10)) (=> (<= 0 10) (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@1) (and (and (and (=> (= (ControlFlow 0 19) 3) anon12_Then_correct) (=> (= (ControlFlow 0 19) 13) anon12_Else_correct)) (=> (= (ControlFlow 0 19) 15) anon11_Then_correct)) (=> (= (ControlFlow 0 19) 17) anon11_Else_correct)))))))))))))))))))))))))
(let ((anon9_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 27) 1) anon9_Then_correct) (=> (= (ControlFlow 0 27) 19) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 28) 27) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 8))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
