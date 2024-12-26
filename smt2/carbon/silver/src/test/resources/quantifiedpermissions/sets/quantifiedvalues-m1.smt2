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
(declare-sort T@Field_8134_53 0)
(declare-sort T@Field_8147_8148 0)
(declare-sort T@Field_14314_14316 0)
(declare-sort T@Field_14378_3251 0)
(declare-sort T@Field_4792_21834 0)
(declare-sort T@Field_4792_21701 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_8095 0)) (((PolymorphicMapType_8095 (|PolymorphicMapType_8095_4792_14753#PolymorphicMapType_8095| (Array T@Ref T@Field_14314_14316 Real)) (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| (Array T@Ref T@Field_14378_3251 Real)) (|PolymorphicMapType_8095_4792_53#PolymorphicMapType_8095| (Array T@Ref T@Field_8134_53 Real)) (|PolymorphicMapType_8095_4792_8148#PolymorphicMapType_8095| (Array T@Ref T@Field_8147_8148 Real)) (|PolymorphicMapType_8095_4792_21701#PolymorphicMapType_8095| (Array T@Ref T@Field_4792_21701 Real)) (|PolymorphicMapType_8095_4792_26560#PolymorphicMapType_8095| (Array T@Ref T@Field_4792_21834 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8623 0)) (((PolymorphicMapType_8623 (|PolymorphicMapType_8623_8134_53#PolymorphicMapType_8623| (Array T@Ref T@Field_8134_53 Bool)) (|PolymorphicMapType_8623_8134_8148#PolymorphicMapType_8623| (Array T@Ref T@Field_8147_8148 Bool)) (|PolymorphicMapType_8623_8134_22593#PolymorphicMapType_8623| (Array T@Ref T@Field_14314_14316 Bool)) (|PolymorphicMapType_8623_8134_3251#PolymorphicMapType_8623| (Array T@Ref T@Field_14378_3251 Bool)) (|PolymorphicMapType_8623_8134_21701#PolymorphicMapType_8623| (Array T@Ref T@Field_4792_21701 Bool)) (|PolymorphicMapType_8623_8134_23230#PolymorphicMapType_8623| (Array T@Ref T@Field_4792_21834 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8074 0)) (((PolymorphicMapType_8074 (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| (Array T@Ref T@Field_8134_53 Bool)) (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| (Array T@Ref T@Field_8147_8148 T@Ref)) (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| (Array T@Ref T@Field_14314_14316 (Array T@Ref Bool))) (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| (Array T@Ref T@Field_14378_3251 Int)) (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| (Array T@Ref T@Field_4792_21834 T@PolymorphicMapType_8623)) (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| (Array T@Ref T@Field_4792_21701 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_8134_53)
(declare-fun all () T@Field_14314_14316)
(declare-fun f_7 () T@Field_14378_3251)
(declare-fun succHeap (T@PolymorphicMapType_8074 T@PolymorphicMapType_8074) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8074 T@PolymorphicMapType_8074) Bool)
(declare-fun state (T@PolymorphicMapType_8074 T@PolymorphicMapType_8095) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8095) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8623)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8074 T@PolymorphicMapType_8074 T@PolymorphicMapType_8095) Bool)
(declare-fun IsPredicateField_4792_21792 (T@Field_4792_21701) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4792 (T@Field_4792_21701) T@Field_4792_21834)
(declare-fun HasDirectPerm_4792_21765 (T@PolymorphicMapType_8095 T@Ref T@Field_4792_21701) Bool)
(declare-fun IsWandField_4792_23757 (T@Field_4792_21701) Bool)
(declare-fun WandMaskField_4792 (T@Field_4792_21701) T@Field_4792_21834)
(declare-fun dummyHeap () T@PolymorphicMapType_8074)
(declare-fun ZeroMask () T@PolymorphicMapType_8095)
(declare-fun InsidePredicate_8134_8134 (T@Field_4792_21701 T@FrameType T@Field_4792_21701 T@FrameType) Bool)
(declare-fun IsPredicateField_4792_14340 (T@Field_14314_14316) Bool)
(declare-fun IsWandField_4792_14367 (T@Field_14314_14316) Bool)
(declare-fun IsPredicateField_4797_3251 (T@Field_14378_3251) Bool)
(declare-fun IsWandField_4797_3251 (T@Field_14378_3251) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4792_27916 (T@Field_4792_21834) Bool)
(declare-fun IsWandField_4792_27932 (T@Field_4792_21834) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4792_8148 (T@Field_8147_8148) Bool)
(declare-fun IsWandField_4792_8148 (T@Field_8147_8148) Bool)
(declare-fun IsPredicateField_4792_53 (T@Field_8134_53) Bool)
(declare-fun IsWandField_4792_53 (T@Field_8134_53) Bool)
(declare-fun HasDirectPerm_4792_28456 (T@PolymorphicMapType_8095 T@Ref T@Field_4792_21834) Bool)
(declare-fun HasDirectPerm_4792_8148 (T@PolymorphicMapType_8095 T@Ref T@Field_8147_8148) Bool)
(declare-fun HasDirectPerm_4792_53 (T@PolymorphicMapType_8095 T@Ref T@Field_8134_53) Bool)
(declare-fun HasDirectPerm_4797_3251 (T@PolymorphicMapType_8095 T@Ref T@Field_14378_3251) Bool)
(declare-fun HasDirectPerm_4792_14871 (T@PolymorphicMapType_8095 T@Ref T@Field_14314_14316) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8095 T@PolymorphicMapType_8095 T@PolymorphicMapType_8095) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_8074) (Heap1 T@PolymorphicMapType_8074) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8074) (Mask T@PolymorphicMapType_8095) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8074) (Heap1@@0 T@PolymorphicMapType_8074) (Heap2 T@PolymorphicMapType_8074) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4792_21834) ) (!  (not (select (|PolymorphicMapType_8623_8134_23230#PolymorphicMapType_8623| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8623_8134_23230#PolymorphicMapType_8623| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4792_21701) ) (!  (not (select (|PolymorphicMapType_8623_8134_21701#PolymorphicMapType_8623| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8623_8134_21701#PolymorphicMapType_8623| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14378_3251) ) (!  (not (select (|PolymorphicMapType_8623_8134_3251#PolymorphicMapType_8623| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8623_8134_3251#PolymorphicMapType_8623| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_14314_14316) ) (!  (not (select (|PolymorphicMapType_8623_8134_22593#PolymorphicMapType_8623| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8623_8134_22593#PolymorphicMapType_8623| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8147_8148) ) (!  (not (select (|PolymorphicMapType_8623_8134_8148#PolymorphicMapType_8623| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8623_8134_8148#PolymorphicMapType_8623| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_8134_53) ) (!  (not (select (|PolymorphicMapType_8623_8134_53#PolymorphicMapType_8623| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8623_8134_53#PolymorphicMapType_8623| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.291:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.294:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8074) (ExhaleHeap T@PolymorphicMapType_8074) (Mask@@0 T@PolymorphicMapType_8095) (pm_f_5 T@Field_4792_21701) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4792_21765 Mask@@0 null pm_f_5) (IsPredicateField_4792_21792 pm_f_5)) (= (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@0) null (PredicateMaskField_4792 pm_f_5)) (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| ExhaleHeap) null (PredicateMaskField_4792 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4792_21792 pm_f_5) (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| ExhaleHeap) null (PredicateMaskField_4792 pm_f_5)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8074) (ExhaleHeap@@0 T@PolymorphicMapType_8074) (Mask@@1 T@PolymorphicMapType_8095) (pm_f_5@@0 T@Field_4792_21701) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4792_21765 Mask@@1 null pm_f_5@@0) (IsWandField_4792_23757 pm_f_5@@0)) (= (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@1) null (WandMaskField_4792 pm_f_5@@0)) (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| ExhaleHeap@@0) null (WandMaskField_4792 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_4792_23757 pm_f_5@@0) (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| ExhaleHeap@@0) null (WandMaskField_4792 pm_f_5@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8074) (ExhaleHeap@@1 T@PolymorphicMapType_8074) (Mask@@2 T@PolymorphicMapType_8095) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| Heap@@2) o_12 $allocated) (select (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| ExhaleHeap@@1) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| ExhaleHeap@@1) o_12 $allocated))
)))
(assert (forall ((p T@Field_4792_21701) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8134_8134 p v_1 p w))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8134_8134 p v_1 p w))
)))
(assert  (not (IsPredicateField_4792_14340 all)))
(assert  (not (IsWandField_4792_14367 all)))
(assert  (not (IsPredicateField_4797_3251 f_7)))
(assert  (not (IsWandField_4797_3251 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8074) (ExhaleHeap@@2 T@PolymorphicMapType_8074) (Mask@@3 T@PolymorphicMapType_8095) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_8095) (o_2@@5 T@Ref) (f_4@@5 T@Field_4792_21834) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_8095_4792_26560#PolymorphicMapType_8095| Mask@@4) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_4792_27916 f_4@@5))) (not (IsWandField_4792_27932 f_4@@5))) (<= (select (|PolymorphicMapType_8095_4792_26560#PolymorphicMapType_8095| Mask@@4) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_8095_4792_26560#PolymorphicMapType_8095| Mask@@4) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_8095) (o_2@@6 T@Ref) (f_4@@6 T@Field_4792_21701) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_8095_4792_21701#PolymorphicMapType_8095| Mask@@5) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_4792_21792 f_4@@6))) (not (IsWandField_4792_23757 f_4@@6))) (<= (select (|PolymorphicMapType_8095_4792_21701#PolymorphicMapType_8095| Mask@@5) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_8095_4792_21701#PolymorphicMapType_8095| Mask@@5) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_8095) (o_2@@7 T@Ref) (f_4@@7 T@Field_8147_8148) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_8095_4792_8148#PolymorphicMapType_8095| Mask@@6) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4792_8148 f_4@@7))) (not (IsWandField_4792_8148 f_4@@7))) (<= (select (|PolymorphicMapType_8095_4792_8148#PolymorphicMapType_8095| Mask@@6) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_8095_4792_8148#PolymorphicMapType_8095| Mask@@6) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_8095) (o_2@@8 T@Ref) (f_4@@8 T@Field_8134_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_8095_4792_53#PolymorphicMapType_8095| Mask@@7) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4792_53 f_4@@8))) (not (IsWandField_4792_53 f_4@@8))) (<= (select (|PolymorphicMapType_8095_4792_53#PolymorphicMapType_8095| Mask@@7) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_8095_4792_53#PolymorphicMapType_8095| Mask@@7) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8095) (o_2@@9 T@Ref) (f_4@@9 T@Field_14378_3251) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| Mask@@8) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4797_3251 f_4@@9))) (not (IsWandField_4797_3251 f_4@@9))) (<= (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| Mask@@8) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| Mask@@8) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8095) (o_2@@10 T@Ref) (f_4@@10 T@Field_14314_14316) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_8095_4792_14753#PolymorphicMapType_8095| Mask@@9) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4792_14340 f_4@@10))) (not (IsWandField_4792_14367 f_4@@10))) (<= (select (|PolymorphicMapType_8095_4792_14753#PolymorphicMapType_8095| Mask@@9) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_8095_4792_14753#PolymorphicMapType_8095| Mask@@9) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8095) (o_2@@11 T@Ref) (f_4@@11 T@Field_4792_21834) ) (! (= (HasDirectPerm_4792_28456 Mask@@10 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_8095_4792_26560#PolymorphicMapType_8095| Mask@@10) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4792_28456 Mask@@10 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8095) (o_2@@12 T@Ref) (f_4@@12 T@Field_4792_21701) ) (! (= (HasDirectPerm_4792_21765 Mask@@11 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_8095_4792_21701#PolymorphicMapType_8095| Mask@@11) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4792_21765 Mask@@11 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8095) (o_2@@13 T@Ref) (f_4@@13 T@Field_8147_8148) ) (! (= (HasDirectPerm_4792_8148 Mask@@12 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_8095_4792_8148#PolymorphicMapType_8095| Mask@@12) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4792_8148 Mask@@12 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8095) (o_2@@14 T@Ref) (f_4@@14 T@Field_8134_53) ) (! (= (HasDirectPerm_4792_53 Mask@@13 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_8095_4792_53#PolymorphicMapType_8095| Mask@@13) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4792_53 Mask@@13 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8095) (o_2@@15 T@Ref) (f_4@@15 T@Field_14378_3251) ) (! (= (HasDirectPerm_4797_3251 Mask@@14 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| Mask@@14) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4797_3251 Mask@@14 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8095) (o_2@@16 T@Ref) (f_4@@16 T@Field_14314_14316) ) (! (= (HasDirectPerm_4792_14871 Mask@@15 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_8095_4792_14753#PolymorphicMapType_8095| Mask@@15) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4792_14871 Mask@@15 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.177:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8074) (ExhaleHeap@@3 T@PolymorphicMapType_8074) (Mask@@16 T@PolymorphicMapType_8095) (o_12@@0 T@Ref) (f_16 T@Field_4792_21834) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_4792_28456 Mask@@16 o_12@@0 f_16) (= (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@4) o_12@@0 f_16) (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| ExhaleHeap@@3) o_12@@0 f_16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| ExhaleHeap@@3) o_12@@0 f_16))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8074) (ExhaleHeap@@4 T@PolymorphicMapType_8074) (Mask@@17 T@PolymorphicMapType_8095) (o_12@@1 T@Ref) (f_16@@0 T@Field_4792_21701) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_4792_21765 Mask@@17 o_12@@1 f_16@@0) (= (select (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| Heap@@5) o_12@@1 f_16@@0) (select (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| ExhaleHeap@@4) o_12@@1 f_16@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| ExhaleHeap@@4) o_12@@1 f_16@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8074) (ExhaleHeap@@5 T@PolymorphicMapType_8074) (Mask@@18 T@PolymorphicMapType_8095) (o_12@@2 T@Ref) (f_16@@1 T@Field_8147_8148) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_4792_8148 Mask@@18 o_12@@2 f_16@@1) (= (select (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| Heap@@6) o_12@@2 f_16@@1) (select (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| ExhaleHeap@@5) o_12@@2 f_16@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| ExhaleHeap@@5) o_12@@2 f_16@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8074) (ExhaleHeap@@6 T@PolymorphicMapType_8074) (Mask@@19 T@PolymorphicMapType_8095) (o_12@@3 T@Ref) (f_16@@2 T@Field_8134_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_4792_53 Mask@@19 o_12@@3 f_16@@2) (= (select (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| Heap@@7) o_12@@3 f_16@@2) (select (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| ExhaleHeap@@6) o_12@@3 f_16@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| ExhaleHeap@@6) o_12@@3 f_16@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8074) (ExhaleHeap@@7 T@PolymorphicMapType_8074) (Mask@@20 T@PolymorphicMapType_8095) (o_12@@4 T@Ref) (f_16@@3 T@Field_14378_3251) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_4797_3251 Mask@@20 o_12@@4 f_16@@3) (= (select (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@8) o_12@@4 f_16@@3) (select (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| ExhaleHeap@@7) o_12@@4 f_16@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| ExhaleHeap@@7) o_12@@4 f_16@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8074) (ExhaleHeap@@8 T@PolymorphicMapType_8074) (Mask@@21 T@PolymorphicMapType_8095) (o_12@@5 T@Ref) (f_16@@4 T@Field_14314_14316) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_4792_14871 Mask@@21 o_12@@5 f_16@@4) (= (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@9) o_12@@5 f_16@@4) (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| ExhaleHeap@@8) o_12@@5 f_16@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| ExhaleHeap@@8) o_12@@5 f_16@@4))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_4792_21834) ) (! (= (select (|PolymorphicMapType_8095_4792_26560#PolymorphicMapType_8095| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8095_4792_26560#PolymorphicMapType_8095| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_4792_21701) ) (! (= (select (|PolymorphicMapType_8095_4792_21701#PolymorphicMapType_8095| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8095_4792_21701#PolymorphicMapType_8095| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_8147_8148) ) (! (= (select (|PolymorphicMapType_8095_4792_8148#PolymorphicMapType_8095| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8095_4792_8148#PolymorphicMapType_8095| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_8134_53) ) (! (= (select (|PolymorphicMapType_8095_4792_53#PolymorphicMapType_8095| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8095_4792_53#PolymorphicMapType_8095| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_14378_3251) ) (! (= (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_14314_14316) ) (! (= (select (|PolymorphicMapType_8095_4792_14753#PolymorphicMapType_8095| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8095_4792_14753#PolymorphicMapType_8095| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8095) (SummandMask1 T@PolymorphicMapType_8095) (SummandMask2 T@PolymorphicMapType_8095) (o_2@@23 T@Ref) (f_4@@23 T@Field_4792_21834) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8095_4792_26560#PolymorphicMapType_8095| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_8095_4792_26560#PolymorphicMapType_8095| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_8095_4792_26560#PolymorphicMapType_8095| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8095_4792_26560#PolymorphicMapType_8095| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8095_4792_26560#PolymorphicMapType_8095| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8095_4792_26560#PolymorphicMapType_8095| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8095) (SummandMask1@@0 T@PolymorphicMapType_8095) (SummandMask2@@0 T@PolymorphicMapType_8095) (o_2@@24 T@Ref) (f_4@@24 T@Field_4792_21701) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8095_4792_21701#PolymorphicMapType_8095| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_8095_4792_21701#PolymorphicMapType_8095| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_8095_4792_21701#PolymorphicMapType_8095| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8095_4792_21701#PolymorphicMapType_8095| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8095_4792_21701#PolymorphicMapType_8095| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8095_4792_21701#PolymorphicMapType_8095| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8095) (SummandMask1@@1 T@PolymorphicMapType_8095) (SummandMask2@@1 T@PolymorphicMapType_8095) (o_2@@25 T@Ref) (f_4@@25 T@Field_8147_8148) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8095_4792_8148#PolymorphicMapType_8095| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_8095_4792_8148#PolymorphicMapType_8095| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_8095_4792_8148#PolymorphicMapType_8095| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8095_4792_8148#PolymorphicMapType_8095| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8095_4792_8148#PolymorphicMapType_8095| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8095_4792_8148#PolymorphicMapType_8095| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8095) (SummandMask1@@2 T@PolymorphicMapType_8095) (SummandMask2@@2 T@PolymorphicMapType_8095) (o_2@@26 T@Ref) (f_4@@26 T@Field_8134_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8095_4792_53#PolymorphicMapType_8095| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_8095_4792_53#PolymorphicMapType_8095| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_8095_4792_53#PolymorphicMapType_8095| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8095_4792_53#PolymorphicMapType_8095| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8095_4792_53#PolymorphicMapType_8095| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8095_4792_53#PolymorphicMapType_8095| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8095) (SummandMask1@@3 T@PolymorphicMapType_8095) (SummandMask2@@3 T@PolymorphicMapType_8095) (o_2@@27 T@Ref) (f_4@@27 T@Field_14378_3251) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8095) (SummandMask1@@4 T@PolymorphicMapType_8095) (SummandMask2@@4 T@PolymorphicMapType_8095) (o_2@@28 T@Ref) (f_4@@28 T@Field_14314_14316) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8095_4792_14753#PolymorphicMapType_8095| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_8095_4792_14753#PolymorphicMapType_8095| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_8095_4792_14753#PolymorphicMapType_8095| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8095_4792_14753#PolymorphicMapType_8095| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8095_4792_14753#PolymorphicMapType_8095| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8095_4792_14753#PolymorphicMapType_8095| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8074) (ExhaleHeap@@9 T@PolymorphicMapType_8074) (Mask@@22 T@PolymorphicMapType_8095) (pm_f_5@@1 T@Field_4792_21701) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_4792_21765 Mask@@22 null pm_f_5@@1) (IsPredicateField_4792_21792 pm_f_5@@1)) (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16@@5 T@Field_8134_53) ) (!  (=> (select (|PolymorphicMapType_8623_8134_53#PolymorphicMapType_8623| (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@10) null (PredicateMaskField_4792 pm_f_5@@1))) o2_5 f_16@@5) (= (select (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| Heap@@10) o2_5 f_16@@5) (select (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| ExhaleHeap@@9) o2_5 f_16@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| ExhaleHeap@@9) o2_5 f_16@@5))
)) (forall ((o2_5@@0 T@Ref) (f_16@@6 T@Field_8147_8148) ) (!  (=> (select (|PolymorphicMapType_8623_8134_8148#PolymorphicMapType_8623| (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@10) null (PredicateMaskField_4792 pm_f_5@@1))) o2_5@@0 f_16@@6) (= (select (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| Heap@@10) o2_5@@0 f_16@@6) (select (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| ExhaleHeap@@9) o2_5@@0 f_16@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| ExhaleHeap@@9) o2_5@@0 f_16@@6))
))) (forall ((o2_5@@1 T@Ref) (f_16@@7 T@Field_14314_14316) ) (!  (=> (select (|PolymorphicMapType_8623_8134_22593#PolymorphicMapType_8623| (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@10) null (PredicateMaskField_4792 pm_f_5@@1))) o2_5@@1 f_16@@7) (= (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@10) o2_5@@1 f_16@@7) (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| ExhaleHeap@@9) o2_5@@1 f_16@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| ExhaleHeap@@9) o2_5@@1 f_16@@7))
))) (forall ((o2_5@@2 T@Ref) (f_16@@8 T@Field_14378_3251) ) (!  (=> (select (|PolymorphicMapType_8623_8134_3251#PolymorphicMapType_8623| (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@10) null (PredicateMaskField_4792 pm_f_5@@1))) o2_5@@2 f_16@@8) (= (select (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@10) o2_5@@2 f_16@@8) (select (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| ExhaleHeap@@9) o2_5@@2 f_16@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| ExhaleHeap@@9) o2_5@@2 f_16@@8))
))) (forall ((o2_5@@3 T@Ref) (f_16@@9 T@Field_4792_21701) ) (!  (=> (select (|PolymorphicMapType_8623_8134_21701#PolymorphicMapType_8623| (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@10) null (PredicateMaskField_4792 pm_f_5@@1))) o2_5@@3 f_16@@9) (= (select (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| Heap@@10) o2_5@@3 f_16@@9) (select (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| ExhaleHeap@@9) o2_5@@3 f_16@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| ExhaleHeap@@9) o2_5@@3 f_16@@9))
))) (forall ((o2_5@@4 T@Ref) (f_16@@10 T@Field_4792_21834) ) (!  (=> (select (|PolymorphicMapType_8623_8134_23230#PolymorphicMapType_8623| (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@10) null (PredicateMaskField_4792 pm_f_5@@1))) o2_5@@4 f_16@@10) (= (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@10) o2_5@@4 f_16@@10) (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| ExhaleHeap@@9) o2_5@@4 f_16@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| ExhaleHeap@@9) o2_5@@4 f_16@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_4792_21792 pm_f_5@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8074) (ExhaleHeap@@10 T@PolymorphicMapType_8074) (Mask@@23 T@PolymorphicMapType_8095) (pm_f_5@@2 T@Field_4792_21701) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_4792_21765 Mask@@23 null pm_f_5@@2) (IsWandField_4792_23757 pm_f_5@@2)) (and (and (and (and (and (forall ((o2_5@@5 T@Ref) (f_16@@11 T@Field_8134_53) ) (!  (=> (select (|PolymorphicMapType_8623_8134_53#PolymorphicMapType_8623| (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@11) null (WandMaskField_4792 pm_f_5@@2))) o2_5@@5 f_16@@11) (= (select (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| Heap@@11) o2_5@@5 f_16@@11) (select (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| ExhaleHeap@@10) o2_5@@5 f_16@@11)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| ExhaleHeap@@10) o2_5@@5 f_16@@11))
)) (forall ((o2_5@@6 T@Ref) (f_16@@12 T@Field_8147_8148) ) (!  (=> (select (|PolymorphicMapType_8623_8134_8148#PolymorphicMapType_8623| (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@11) null (WandMaskField_4792 pm_f_5@@2))) o2_5@@6 f_16@@12) (= (select (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| Heap@@11) o2_5@@6 f_16@@12) (select (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| ExhaleHeap@@10) o2_5@@6 f_16@@12)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| ExhaleHeap@@10) o2_5@@6 f_16@@12))
))) (forall ((o2_5@@7 T@Ref) (f_16@@13 T@Field_14314_14316) ) (!  (=> (select (|PolymorphicMapType_8623_8134_22593#PolymorphicMapType_8623| (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@11) null (WandMaskField_4792 pm_f_5@@2))) o2_5@@7 f_16@@13) (= (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@11) o2_5@@7 f_16@@13) (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| ExhaleHeap@@10) o2_5@@7 f_16@@13)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| ExhaleHeap@@10) o2_5@@7 f_16@@13))
))) (forall ((o2_5@@8 T@Ref) (f_16@@14 T@Field_14378_3251) ) (!  (=> (select (|PolymorphicMapType_8623_8134_3251#PolymorphicMapType_8623| (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@11) null (WandMaskField_4792 pm_f_5@@2))) o2_5@@8 f_16@@14) (= (select (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@11) o2_5@@8 f_16@@14) (select (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| ExhaleHeap@@10) o2_5@@8 f_16@@14)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| ExhaleHeap@@10) o2_5@@8 f_16@@14))
))) (forall ((o2_5@@9 T@Ref) (f_16@@15 T@Field_4792_21701) ) (!  (=> (select (|PolymorphicMapType_8623_8134_21701#PolymorphicMapType_8623| (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@11) null (WandMaskField_4792 pm_f_5@@2))) o2_5@@9 f_16@@15) (= (select (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| Heap@@11) o2_5@@9 f_16@@15) (select (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| ExhaleHeap@@10) o2_5@@9 f_16@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| ExhaleHeap@@10) o2_5@@9 f_16@@15))
))) (forall ((o2_5@@10 T@Ref) (f_16@@16 T@Field_4792_21834) ) (!  (=> (select (|PolymorphicMapType_8623_8134_23230#PolymorphicMapType_8623| (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@11) null (WandMaskField_4792 pm_f_5@@2))) o2_5@@10 f_16@@16) (= (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@11) o2_5@@10 f_16@@16) (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| ExhaleHeap@@10) o2_5@@10 f_16@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| ExhaleHeap@@10) o2_5@@10 f_16@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_4792_23757 pm_f_5@@2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8074) (o_11 T@Ref) (f_17 T@Field_4792_21701) (v T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_8074 (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| Heap@@12) (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| Heap@@12) (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@12) (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@12) (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@12) (store (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| Heap@@12) o_11 f_17 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8074 (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| Heap@@12) (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| Heap@@12) (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@12) (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@12) (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@12) (store (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| Heap@@12) o_11 f_17 v)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8074) (o_11@@0 T@Ref) (f_17@@0 T@Field_4792_21834) (v@@0 T@PolymorphicMapType_8623) ) (! (succHeap Heap@@13 (PolymorphicMapType_8074 (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| Heap@@13) (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| Heap@@13) (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@13) (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@13) (store (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@13) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8074 (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| Heap@@13) (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| Heap@@13) (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@13) (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@13) (store (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@13) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8074) (o_11@@1 T@Ref) (f_17@@1 T@Field_14378_3251) (v@@1 Int) ) (! (succHeap Heap@@14 (PolymorphicMapType_8074 (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| Heap@@14) (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| Heap@@14) (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@14) (store (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@14) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@14) (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8074 (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| Heap@@14) (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| Heap@@14) (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@14) (store (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@14) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@14) (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8074) (o_11@@2 T@Ref) (f_17@@2 T@Field_14314_14316) (v@@2 (Array T@Ref Bool)) ) (! (succHeap Heap@@15 (PolymorphicMapType_8074 (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| Heap@@15) (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| Heap@@15) (store (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@15) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@15) (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@15) (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8074 (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| Heap@@15) (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| Heap@@15) (store (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@15) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@15) (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@15) (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8074) (o_11@@3 T@Ref) (f_17@@3 T@Field_8147_8148) (v@@3 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_8074 (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| Heap@@16) (store (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| Heap@@16) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@16) (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@16) (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@16) (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8074 (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| Heap@@16) (store (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| Heap@@16) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@16) (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@16) (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@16) (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8074) (o_11@@4 T@Ref) (f_17@@4 T@Field_8134_53) (v@@4 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_8074 (store (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| Heap@@17) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| Heap@@17) (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@17) (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@17) (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@17) (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8074 (store (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| Heap@@17) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| Heap@@17) (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@17) (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@17) (|PolymorphicMapType_8074_4792_21878#PolymorphicMapType_8074| Heap@@17) (|PolymorphicMapType_8074_8134_21701#PolymorphicMapType_8074| Heap@@17)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.289:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.290:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_11@@5 T@Ref) (f_10 T@Field_8147_8148) (Heap@@18 T@PolymorphicMapType_8074) ) (!  (=> (select (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| Heap@@18) o_11@@5 $allocated) (select (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| Heap@@18) (select (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| Heap@@18) o_11@@5 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8074_4498_4499#PolymorphicMapType_8074| Heap@@18) o_11@@5 f_10))
)))
(assert (forall ((p@@1 T@Field_4792_21701) (v_1@@0 T@FrameType) (q T@Field_4792_21701) (w@@0 T@FrameType) (r T@Field_4792_21701) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8134_8134 p@@1 v_1@@0 q w@@0) (InsidePredicate_8134_8134 q w@@0 r u)) (InsidePredicate_8134_8134 p@@1 v_1@@0 r u))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8134_8134 p@@1 v_1@@0 q w@@0) (InsidePredicate_8134_8134 q w@@0 r u))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.295:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@19 () T@PolymorphicMapType_8074)
(declare-fun this () T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_8095)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_8095)
(declare-fun y () T@Ref)
(declare-fun x () T@Ref)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon3_Else_correct  (and (=> (= (ControlFlow 0 4) (- 0 10)) (forall ((o_1_1 T@Ref) (o_1_2 T@Ref) ) (!  (=> (and (and (and (and (not (= o_1_1 o_1_2)) (select (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@19) this all) o_1_1)) (select (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@19) this all) o_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= o_1_1 o_1_2)))
 :qid |stdinbpl.451:15|
 :skolemid |82|
))) (=> (forall ((o_1_1@@0 T@Ref) (o_1_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= o_1_1@@0 o_1_2@@0)) (select (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@19) this all) o_1_1@@0)) (select (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@19) this all) o_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= o_1_1@@0 o_1_2@@0)))
 :qid |stdinbpl.451:15|
 :skolemid |82|
)) (=> (and (and (forall ((o_1_1@@1 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@19) this all) o_1_1@@1) (< NoPerm FullPerm)) (and (qpRange1 o_1_1@@1) (= (invRecv1 o_1_1@@1) o_1_1@@1)))
 :qid |stdinbpl.457:22|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@19) o_1_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| QPMask@0) o_1_1@@1 f_7))
 :pattern ( (select (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@19) this all) o_1_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@19) this all) (invRecv1 o_4)) (< NoPerm FullPerm)) (qpRange1 o_4)) (= (invRecv1 o_4) o_4))
 :qid |stdinbpl.461:22|
 :skolemid |84|
 :pattern ( (invRecv1 o_4))
))) (and (forall ((o_1_1@@2 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@19) this all) o_1_1@@2) (not (= o_1_1@@2 null)))
 :qid |stdinbpl.467:22|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@19) o_1_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| QPMask@0) o_1_1@@2 f_7))
 :pattern ( (select (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@19) this all) o_1_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@19) this all) (invRecv1 o_4@@0)) (< NoPerm FullPerm)) (qpRange1 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| QPMask@0) o_4@@0 f_7) (+ (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| Mask@0) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (select (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@19) this all) (invRecv1 o_4@@0)) (< NoPerm FullPerm)) (qpRange1 o_4@@0))) (= (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| QPMask@0) o_4@@0 f_7) (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| Mask@0) o_4@@0 f_7))))
 :qid |stdinbpl.473:22|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| QPMask@0) o_4@@0 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_8134_53) ) (!  (=> true (= (select (|PolymorphicMapType_8095_4792_53#PolymorphicMapType_8095| Mask@0) o_4@@1 f_5) (select (|PolymorphicMapType_8095_4792_53#PolymorphicMapType_8095| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.477:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8095_4792_53#PolymorphicMapType_8095| Mask@0) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_8095_4792_53#PolymorphicMapType_8095| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_8147_8148) ) (!  (=> true (= (select (|PolymorphicMapType_8095_4792_8148#PolymorphicMapType_8095| Mask@0) o_4@@2 f_5@@0) (select (|PolymorphicMapType_8095_4792_8148#PolymorphicMapType_8095| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.477:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8095_4792_8148#PolymorphicMapType_8095| Mask@0) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_8095_4792_8148#PolymorphicMapType_8095| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_14314_14316) ) (!  (=> true (= (select (|PolymorphicMapType_8095_4792_14753#PolymorphicMapType_8095| Mask@0) o_4@@3 f_5@@1) (select (|PolymorphicMapType_8095_4792_14753#PolymorphicMapType_8095| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.477:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8095_4792_14753#PolymorphicMapType_8095| Mask@0) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_8095_4792_14753#PolymorphicMapType_8095| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_14378_3251) ) (!  (=> (not (= f_5@@2 f_7)) (= (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| Mask@0) o_4@@4 f_5@@2) (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.477:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| Mask@0) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_4792_21701) ) (!  (=> true (= (select (|PolymorphicMapType_8095_4792_21701#PolymorphicMapType_8095| Mask@0) o_4@@5 f_5@@3) (select (|PolymorphicMapType_8095_4792_21701#PolymorphicMapType_8095| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.477:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8095_4792_21701#PolymorphicMapType_8095| Mask@0) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_8095_4792_21701#PolymorphicMapType_8095| QPMask@0) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_4792_21834) ) (!  (=> true (= (select (|PolymorphicMapType_8095_4792_26560#PolymorphicMapType_8095| Mask@0) o_4@@6 f_5@@4) (select (|PolymorphicMapType_8095_4792_26560#PolymorphicMapType_8095| QPMask@0) o_4@@6 f_5@@4)))
 :qid |stdinbpl.477:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8095_4792_26560#PolymorphicMapType_8095| Mask@0) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_8095_4792_26560#PolymorphicMapType_8095| QPMask@0) o_4@@6 f_5@@4))
))) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (=> (= (ControlFlow 0 4) (- 0 9)) (HasDirectPerm_4797_3251 QPMask@0 y f_7)) (=> (HasDirectPerm_4797_3251 QPMask@0 y f_7) (and (=> (= (ControlFlow 0 4) (- 0 8)) (HasDirectPerm_4797_3251 QPMask@0 y f_7)) (=> (HasDirectPerm_4797_3251 QPMask@0 y f_7) (and (=> (= (ControlFlow 0 4) (- 0 7)) (= (select (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@19) y f_7) (select (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@19) y f_7))) (=> (= (select (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@19) y f_7) (select (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@19) y f_7)) (=> (state Heap@@19 QPMask@0) (and (=> (= (ControlFlow 0 4) (- 0 6)) (HasDirectPerm_4797_3251 QPMask@0 x f_7)) (=> (HasDirectPerm_4797_3251 QPMask@0 x f_7) (and (=> (= (ControlFlow 0 4) (- 0 5)) (HasDirectPerm_4797_3251 QPMask@0 x f_7)) (=> (HasDirectPerm_4797_3251 QPMask@0 x f_7) (=> (= (ControlFlow 0 4) (- 0 3)) (= (select (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@19) x f_7) (select (|PolymorphicMapType_8074_4797_3251#PolymorphicMapType_8074| Heap@@19) x f_7))))))))))))))))))))
(let ((anon3_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (HasDirectPerm_4792_14871 Mask@0 this all))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@19 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| Heap@@19) this $allocated) (select (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| Heap@@19) x $allocated))) (and (and (select (|PolymorphicMapType_8074_4495_53#PolymorphicMapType_8074| Heap@@19) y $allocated) (not (= this null))) (and (= Mask@0 (PolymorphicMapType_8095 (store (|PolymorphicMapType_8095_4792_14753#PolymorphicMapType_8095| ZeroMask) this all (+ (select (|PolymorphicMapType_8095_4792_14753#PolymorphicMapType_8095| ZeroMask) this all) FullPerm)) (|PolymorphicMapType_8095_4797_3251#PolymorphicMapType_8095| ZeroMask) (|PolymorphicMapType_8095_4792_53#PolymorphicMapType_8095| ZeroMask) (|PolymorphicMapType_8095_4792_8148#PolymorphicMapType_8095| ZeroMask) (|PolymorphicMapType_8095_4792_21701#PolymorphicMapType_8095| ZeroMask) (|PolymorphicMapType_8095_4792_26560#PolymorphicMapType_8095| ZeroMask))) (state Heap@@19 Mask@0)))) (and (=> (= (ControlFlow 0 11) (- 0 14)) (HasDirectPerm_4792_14871 Mask@0 this all)) (=> (HasDirectPerm_4792_14871 Mask@0 this all) (=> (select (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@19) this all) x) (and (=> (= (ControlFlow 0 11) (- 0 13)) (HasDirectPerm_4792_14871 Mask@0 this all)) (=> (HasDirectPerm_4792_14871 Mask@0 this all) (=> (and (select (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@19) this all) y) (not (= x y))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_4792_14871 Mask@0 this all)) (=> (HasDirectPerm_4792_14871 Mask@0 this all) (=> (and (not (select (select (|PolymorphicMapType_8074_4792_14936#PolymorphicMapType_8074| Heap@@19) this all) null)) (state Heap@@19 Mask@0)) (and (=> (= (ControlFlow 0 11) 2) anon3_Then_correct) (=> (= (ControlFlow 0 11) 4) anon3_Else_correct))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15) 11) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
