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
(declare-sort T@Field_7334_53 0)
(declare-sort T@Field_7347_7348 0)
(declare-sort T@Field_13509_3223 0)
(declare-sort T@Field_7334_17700 0)
(declare-sort T@Field_7334_17567 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_7295 0)) (((PolymorphicMapType_7295 (|PolymorphicMapType_7295_4543_3223#PolymorphicMapType_7295| (Array T@Ref T@Field_13509_3223 Real)) (|PolymorphicMapType_7295_4543_53#PolymorphicMapType_7295| (Array T@Ref T@Field_7334_53 Real)) (|PolymorphicMapType_7295_4543_7348#PolymorphicMapType_7295| (Array T@Ref T@Field_7347_7348 Real)) (|PolymorphicMapType_7295_4543_17567#PolymorphicMapType_7295| (Array T@Ref T@Field_7334_17567 Real)) (|PolymorphicMapType_7295_4543_21822#PolymorphicMapType_7295| (Array T@Ref T@Field_7334_17700 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7823 0)) (((PolymorphicMapType_7823 (|PolymorphicMapType_7823_7334_53#PolymorphicMapType_7823| (Array T@Ref T@Field_7334_53 Bool)) (|PolymorphicMapType_7823_7334_7348#PolymorphicMapType_7823| (Array T@Ref T@Field_7347_7348 Bool)) (|PolymorphicMapType_7823_7334_3223#PolymorphicMapType_7823| (Array T@Ref T@Field_13509_3223 Bool)) (|PolymorphicMapType_7823_7334_17567#PolymorphicMapType_7823| (Array T@Ref T@Field_7334_17567 Bool)) (|PolymorphicMapType_7823_7334_18878#PolymorphicMapType_7823| (Array T@Ref T@Field_7334_17700 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7274 0)) (((PolymorphicMapType_7274 (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| (Array T@Ref T@Field_7334_53 Bool)) (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| (Array T@Ref T@Field_7347_7348 T@Ref)) (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| (Array T@Ref T@Field_13509_3223 Int)) (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| (Array T@Ref T@Field_7334_17700 T@PolymorphicMapType_7823)) (|PolymorphicMapType_7274_7334_17567#PolymorphicMapType_7274| (Array T@Ref T@Field_7334_17567 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_7334_53)
(declare-fun m_20 () T@Field_13509_3223)
(declare-fun succHeap (T@PolymorphicMapType_7274 T@PolymorphicMapType_7274) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7274 T@PolymorphicMapType_7274) Bool)
(declare-fun state (T@PolymorphicMapType_7274 T@PolymorphicMapType_7295) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7295) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7823)
(declare-fun |Math#min| (Int Int) Int)
(declare-sort T@NodeDomainType 0)
(declare-fun |$'| (T@PolymorphicMapType_7274 T@Ref) T@NodeDomainType)
(declare-fun dummyFunction_4564 (T@NodeDomainType) Bool)
(declare-fun |$#triggerStateless| (T@Ref) T@NodeDomainType)
(declare-fun |purify_graph'| (T@PolymorphicMapType_7274 (Array T@Ref Bool)) (Array T@NodeDomainType Bool))
(declare-fun dummyFunction_14374 ((Array T@NodeDomainType Bool)) Bool)
(declare-fun |purify_graph#triggerStateless| ((Array T@Ref Bool)) (Array T@NodeDomainType Bool))
(declare-fun $ (T@PolymorphicMapType_7274 T@Ref) T@NodeDomainType)
(declare-fun purify_graph (T@PolymorphicMapType_7274 (Array T@Ref Bool)) (Array T@NodeDomainType Bool))
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7274 T@PolymorphicMapType_7274 T@PolymorphicMapType_7295) Bool)
(declare-fun IsPredicateField_7334_17658 (T@Field_7334_17567) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7334 (T@Field_7334_17567) T@Field_7334_17700)
(declare-fun HasDirectPerm_7334_17631 (T@PolymorphicMapType_7295 T@Ref T@Field_7334_17567) Bool)
(declare-fun IsWandField_7334_19405 (T@Field_7334_17567) Bool)
(declare-fun WandMaskField_7334 (T@Field_7334_17567) T@Field_7334_17700)
(declare-fun dummyHeap () T@PolymorphicMapType_7274)
(declare-fun ZeroMask () T@PolymorphicMapType_7295)
(declare-fun InsidePredicate_7334_7334 (T@Field_7334_17567 T@FrameType T@Field_7334_17567 T@FrameType) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |purify_graph#trigger| (T@FrameType (Array T@Ref Bool)) Bool)
(declare-fun FrameFragment_3223 (Int) T@FrameType)
(declare-fun |purify_graph#condqp1| (T@PolymorphicMapType_7274 (Array T@Ref Bool)) Int)
(declare-fun |$#frame| (T@FrameType T@Ref) T@NodeDomainType)
(declare-fun IsPredicateField_4543_3223 (T@Field_13509_3223) Bool)
(declare-fun IsWandField_4543_3223 (T@Field_13509_3223) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4543_22951 (T@Field_7334_17700) Bool)
(declare-fun IsWandField_4543_22967 (T@Field_7334_17700) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4543_7348 (T@Field_7347_7348) Bool)
(declare-fun IsWandField_4543_7348 (T@Field_7347_7348) Bool)
(declare-fun IsPredicateField_4543_53 (T@Field_7334_53) Bool)
(declare-fun IsWandField_4543_53 (T@Field_7334_53) Bool)
(declare-fun HasDirectPerm_7334_23405 (T@PolymorphicMapType_7295 T@Ref T@Field_7334_17700) Bool)
(declare-fun HasDirectPerm_7334_3223 (T@PolymorphicMapType_7295 T@Ref T@Field_13509_3223) Bool)
(declare-fun HasDirectPerm_7334_7348 (T@PolymorphicMapType_7295 T@Ref T@Field_7347_7348) Bool)
(declare-fun HasDirectPerm_7334_53 (T@PolymorphicMapType_7295 T@Ref T@Field_7334_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7295 T@PolymorphicMapType_7295 T@PolymorphicMapType_7295) Bool)
(declare-fun |purify_graph#frame| (T@FrameType (Array T@Ref Bool)) (Array T@NodeDomainType Bool))
(declare-fun |sk_purify_graph#condqp1| (Int Int) T@Ref)
(assert (forall ((Heap0 T@PolymorphicMapType_7274) (Heap1 T@PolymorphicMapType_7274) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7274) (Mask T@PolymorphicMapType_7295) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7274) (Heap1@@0 T@PolymorphicMapType_7274) (Heap2 T@PolymorphicMapType_7274) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7334_17700) ) (!  (not (select (|PolymorphicMapType_7823_7334_18878#PolymorphicMapType_7823| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7823_7334_18878#PolymorphicMapType_7823| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7334_17567) ) (!  (not (select (|PolymorphicMapType_7823_7334_17567#PolymorphicMapType_7823| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7823_7334_17567#PolymorphicMapType_7823| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13509_3223) ) (!  (not (select (|PolymorphicMapType_7823_7334_3223#PolymorphicMapType_7823| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7823_7334_3223#PolymorphicMapType_7823| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7347_7348) ) (!  (not (select (|PolymorphicMapType_7823_7334_7348#PolymorphicMapType_7823| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7823_7334_7348#PolymorphicMapType_7823| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7334_53) ) (!  (not (select (|PolymorphicMapType_7823_7334_53#PolymorphicMapType_7823| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7823_7334_53#PolymorphicMapType_7823| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.292:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7274) (n T@Ref) ) (! (dummyFunction_4564 (|$#triggerStateless| n))
 :qid |stdinbpl.415:15|
 :skolemid |83|
 :pattern ( (|$'| Heap@@0 n))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7274) (nodes (Array T@Ref Bool)) ) (! (dummyFunction_14374 (|purify_graph#triggerStateless| nodes))
 :qid |stdinbpl.465:15|
 :skolemid |86|
 :pattern ( (|purify_graph'| Heap@@1 nodes))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7274) (n@@0 T@Ref) ) (!  (and (= ($ Heap@@2 n@@0) (|$'| Heap@@2 n@@0)) (dummyFunction_4564 (|$#triggerStateless| n@@0)))
 :qid |stdinbpl.411:15|
 :skolemid |82|
 :pattern ( ($ Heap@@2 n@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7274) (nodes@@0 (Array T@Ref Bool)) ) (!  (and (= (purify_graph Heap@@3 nodes@@0) (|purify_graph'| Heap@@3 nodes@@0)) (dummyFunction_14374 (|purify_graph#triggerStateless| nodes@@0)))
 :qid |stdinbpl.461:15|
 :skolemid |85|
 :pattern ( (purify_graph Heap@@3 nodes@@0))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.295:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7274) (ExhaleHeap T@PolymorphicMapType_7274) (Mask@@0 T@PolymorphicMapType_7295) (pm_f_5 T@Field_7334_17567) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7334_17631 Mask@@0 null pm_f_5) (IsPredicateField_7334_17658 pm_f_5)) (= (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@4) null (PredicateMaskField_7334 pm_f_5)) (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| ExhaleHeap) null (PredicateMaskField_7334 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (IsPredicateField_7334_17658 pm_f_5) (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| ExhaleHeap) null (PredicateMaskField_7334 pm_f_5)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7274) (ExhaleHeap@@0 T@PolymorphicMapType_7274) (Mask@@1 T@PolymorphicMapType_7295) (pm_f_5@@0 T@Field_7334_17567) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7334_17631 Mask@@1 null pm_f_5@@0) (IsWandField_7334_19405 pm_f_5@@0)) (= (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@5) null (WandMaskField_7334 pm_f_5@@0)) (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| ExhaleHeap@@0) null (WandMaskField_7334 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (IsWandField_7334_19405 pm_f_5@@0) (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| ExhaleHeap@@0) null (WandMaskField_7334 pm_f_5@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7274) (ExhaleHeap@@1 T@PolymorphicMapType_7274) (Mask@@2 T@PolymorphicMapType_7295) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| Heap@@6) o_15 $allocated) (select (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| ExhaleHeap@@1) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| ExhaleHeap@@1) o_15 $allocated))
)))
(assert (forall ((p T@Field_7334_17567) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7334_7334 p v_1 p w))
 :qid |stdinbpl.190:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7334_7334 p v_1 p w))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7274) (Mask@@3 T@PolymorphicMapType_7295) (nodes@@1 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@7 Mask@@3) (or (< AssumeFunctionsAbove 0) (|purify_graph#trigger| (FrameFragment_3223 (|purify_graph#condqp1| Heap@@7 nodes@@1)) nodes@@1))) (forall ((n_2 T@Ref) ) (!  (=> (select nodes@@1 n_2) (select (|purify_graph'| Heap@@7 nodes@@1) ($ Heap@@7 n_2)))
 :qid |stdinbpl.490:144|
 :skolemid |89|
 :pattern ( (select nodes@@1 n_2))
 :pattern ( (select (|purify_graph'| Heap@@7 nodes@@1) (|$#frame| (FrameFragment_3223 (select (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| Heap@@7) n_2 m_20)) n_2)))
)))
 :qid |stdinbpl.488:15|
 :skolemid |90|
 :pattern ( (state Heap@@7 Mask@@3) (|purify_graph'| Heap@@7 nodes@@1))
)))
(assert  (not (IsPredicateField_4543_3223 m_20)))
(assert  (not (IsWandField_4543_3223 m_20)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7274) (ExhaleHeap@@2 T@PolymorphicMapType_7274) (Mask@@4 T@PolymorphicMapType_7295) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@8 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_7295) (o_2@@4 T@Ref) (f_4@@4 T@Field_7334_17700) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_7295_4543_21822#PolymorphicMapType_7295| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_4543_22951 f_4@@4))) (not (IsWandField_4543_22967 f_4@@4))) (<= (select (|PolymorphicMapType_7295_4543_21822#PolymorphicMapType_7295| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_7295_4543_21822#PolymorphicMapType_7295| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_7295) (o_2@@5 T@Ref) (f_4@@5 T@Field_7334_17567) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_7295_4543_17567#PolymorphicMapType_7295| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_7334_17658 f_4@@5))) (not (IsWandField_7334_19405 f_4@@5))) (<= (select (|PolymorphicMapType_7295_4543_17567#PolymorphicMapType_7295| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_7295_4543_17567#PolymorphicMapType_7295| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_7295) (o_2@@6 T@Ref) (f_4@@6 T@Field_7347_7348) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_7295_4543_7348#PolymorphicMapType_7295| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4543_7348 f_4@@6))) (not (IsWandField_4543_7348 f_4@@6))) (<= (select (|PolymorphicMapType_7295_4543_7348#PolymorphicMapType_7295| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_7295_4543_7348#PolymorphicMapType_7295| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_7295) (o_2@@7 T@Ref) (f_4@@7 T@Field_7334_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_7295_4543_53#PolymorphicMapType_7295| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4543_53 f_4@@7))) (not (IsWandField_4543_53 f_4@@7))) (<= (select (|PolymorphicMapType_7295_4543_53#PolymorphicMapType_7295| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_7295_4543_53#PolymorphicMapType_7295| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_7295) (o_2@@8 T@Ref) (f_4@@8 T@Field_13509_3223) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_7295_4543_3223#PolymorphicMapType_7295| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4543_3223 f_4@@8))) (not (IsWandField_4543_3223 f_4@@8))) (<= (select (|PolymorphicMapType_7295_4543_3223#PolymorphicMapType_7295| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_7295_4543_3223#PolymorphicMapType_7295| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7295) (o_2@@9 T@Ref) (f_4@@9 T@Field_7334_17700) ) (! (= (HasDirectPerm_7334_23405 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_7295_4543_21822#PolymorphicMapType_7295| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7334_23405 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7295) (o_2@@10 T@Ref) (f_4@@10 T@Field_7334_17567) ) (! (= (HasDirectPerm_7334_17631 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_7295_4543_17567#PolymorphicMapType_7295| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7334_17631 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7295) (o_2@@11 T@Ref) (f_4@@11 T@Field_13509_3223) ) (! (= (HasDirectPerm_7334_3223 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_7295_4543_3223#PolymorphicMapType_7295| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7334_3223 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7295) (o_2@@12 T@Ref) (f_4@@12 T@Field_7347_7348) ) (! (= (HasDirectPerm_7334_7348 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_7295_4543_7348#PolymorphicMapType_7295| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7334_7348 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7295) (o_2@@13 T@Ref) (f_4@@13 T@Field_7334_53) ) (! (= (HasDirectPerm_7334_53 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_7295_4543_53#PolymorphicMapType_7295| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7334_53 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7274) (ExhaleHeap@@3 T@PolymorphicMapType_7274) (Mask@@15 T@PolymorphicMapType_7295) (pm_f_5@@1 T@Field_7334_17567) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_7334_17631 Mask@@15 null pm_f_5@@1) (IsPredicateField_7334_17658 pm_f_5@@1)) (and (and (and (and (forall ((o2_5 T@Ref) (f_23 T@Field_7334_53) ) (!  (=> (select (|PolymorphicMapType_7823_7334_53#PolymorphicMapType_7823| (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@9) null (PredicateMaskField_7334 pm_f_5@@1))) o2_5 f_23) (= (select (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| Heap@@9) o2_5 f_23) (select (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| ExhaleHeap@@3) o2_5 f_23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| ExhaleHeap@@3) o2_5 f_23))
)) (forall ((o2_5@@0 T@Ref) (f_23@@0 T@Field_7347_7348) ) (!  (=> (select (|PolymorphicMapType_7823_7334_7348#PolymorphicMapType_7823| (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@9) null (PredicateMaskField_7334 pm_f_5@@1))) o2_5@@0 f_23@@0) (= (select (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| Heap@@9) o2_5@@0 f_23@@0) (select (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| ExhaleHeap@@3) o2_5@@0 f_23@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| ExhaleHeap@@3) o2_5@@0 f_23@@0))
))) (forall ((o2_5@@1 T@Ref) (f_23@@1 T@Field_13509_3223) ) (!  (=> (select (|PolymorphicMapType_7823_7334_3223#PolymorphicMapType_7823| (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@9) null (PredicateMaskField_7334 pm_f_5@@1))) o2_5@@1 f_23@@1) (= (select (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| Heap@@9) o2_5@@1 f_23@@1) (select (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| ExhaleHeap@@3) o2_5@@1 f_23@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| ExhaleHeap@@3) o2_5@@1 f_23@@1))
))) (forall ((o2_5@@2 T@Ref) (f_23@@2 T@Field_7334_17567) ) (!  (=> (select (|PolymorphicMapType_7823_7334_17567#PolymorphicMapType_7823| (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@9) null (PredicateMaskField_7334 pm_f_5@@1))) o2_5@@2 f_23@@2) (= (select (|PolymorphicMapType_7274_7334_17567#PolymorphicMapType_7274| Heap@@9) o2_5@@2 f_23@@2) (select (|PolymorphicMapType_7274_7334_17567#PolymorphicMapType_7274| ExhaleHeap@@3) o2_5@@2 f_23@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7274_7334_17567#PolymorphicMapType_7274| ExhaleHeap@@3) o2_5@@2 f_23@@2))
))) (forall ((o2_5@@3 T@Ref) (f_23@@3 T@Field_7334_17700) ) (!  (=> (select (|PolymorphicMapType_7823_7334_18878#PolymorphicMapType_7823| (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@9) null (PredicateMaskField_7334 pm_f_5@@1))) o2_5@@3 f_23@@3) (= (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@9) o2_5@@3 f_23@@3) (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| ExhaleHeap@@3) o2_5@@3 f_23@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| ExhaleHeap@@3) o2_5@@3 f_23@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@15) (IsPredicateField_7334_17658 pm_f_5@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7274) (ExhaleHeap@@4 T@PolymorphicMapType_7274) (Mask@@16 T@PolymorphicMapType_7295) (pm_f_5@@2 T@Field_7334_17567) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_7334_17631 Mask@@16 null pm_f_5@@2) (IsWandField_7334_19405 pm_f_5@@2)) (and (and (and (and (forall ((o2_5@@4 T@Ref) (f_23@@4 T@Field_7334_53) ) (!  (=> (select (|PolymorphicMapType_7823_7334_53#PolymorphicMapType_7823| (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@10) null (WandMaskField_7334 pm_f_5@@2))) o2_5@@4 f_23@@4) (= (select (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| Heap@@10) o2_5@@4 f_23@@4) (select (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| ExhaleHeap@@4) o2_5@@4 f_23@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| ExhaleHeap@@4) o2_5@@4 f_23@@4))
)) (forall ((o2_5@@5 T@Ref) (f_23@@5 T@Field_7347_7348) ) (!  (=> (select (|PolymorphicMapType_7823_7334_7348#PolymorphicMapType_7823| (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@10) null (WandMaskField_7334 pm_f_5@@2))) o2_5@@5 f_23@@5) (= (select (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| Heap@@10) o2_5@@5 f_23@@5) (select (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| ExhaleHeap@@4) o2_5@@5 f_23@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| ExhaleHeap@@4) o2_5@@5 f_23@@5))
))) (forall ((o2_5@@6 T@Ref) (f_23@@6 T@Field_13509_3223) ) (!  (=> (select (|PolymorphicMapType_7823_7334_3223#PolymorphicMapType_7823| (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@10) null (WandMaskField_7334 pm_f_5@@2))) o2_5@@6 f_23@@6) (= (select (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| Heap@@10) o2_5@@6 f_23@@6) (select (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| ExhaleHeap@@4) o2_5@@6 f_23@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| ExhaleHeap@@4) o2_5@@6 f_23@@6))
))) (forall ((o2_5@@7 T@Ref) (f_23@@7 T@Field_7334_17567) ) (!  (=> (select (|PolymorphicMapType_7823_7334_17567#PolymorphicMapType_7823| (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@10) null (WandMaskField_7334 pm_f_5@@2))) o2_5@@7 f_23@@7) (= (select (|PolymorphicMapType_7274_7334_17567#PolymorphicMapType_7274| Heap@@10) o2_5@@7 f_23@@7) (select (|PolymorphicMapType_7274_7334_17567#PolymorphicMapType_7274| ExhaleHeap@@4) o2_5@@7 f_23@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7274_7334_17567#PolymorphicMapType_7274| ExhaleHeap@@4) o2_5@@7 f_23@@7))
))) (forall ((o2_5@@8 T@Ref) (f_23@@8 T@Field_7334_17700) ) (!  (=> (select (|PolymorphicMapType_7823_7334_18878#PolymorphicMapType_7823| (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@10) null (WandMaskField_7334 pm_f_5@@2))) o2_5@@8 f_23@@8) (= (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@10) o2_5@@8 f_23@@8) (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| ExhaleHeap@@4) o2_5@@8 f_23@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| ExhaleHeap@@4) o2_5@@8 f_23@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@16) (IsWandField_7334_19405 pm_f_5@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.178:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7274) (ExhaleHeap@@5 T@PolymorphicMapType_7274) (Mask@@17 T@PolymorphicMapType_7295) (o_15@@0 T@Ref) (f_23@@9 T@Field_7334_17700) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_7334_23405 Mask@@17 o_15@@0 f_23@@9) (= (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@11) o_15@@0 f_23@@9) (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| ExhaleHeap@@5) o_15@@0 f_23@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| ExhaleHeap@@5) o_15@@0 f_23@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7274) (ExhaleHeap@@6 T@PolymorphicMapType_7274) (Mask@@18 T@PolymorphicMapType_7295) (o_15@@1 T@Ref) (f_23@@10 T@Field_7334_17567) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_7334_17631 Mask@@18 o_15@@1 f_23@@10) (= (select (|PolymorphicMapType_7274_7334_17567#PolymorphicMapType_7274| Heap@@12) o_15@@1 f_23@@10) (select (|PolymorphicMapType_7274_7334_17567#PolymorphicMapType_7274| ExhaleHeap@@6) o_15@@1 f_23@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_7274_7334_17567#PolymorphicMapType_7274| ExhaleHeap@@6) o_15@@1 f_23@@10))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7274) (ExhaleHeap@@7 T@PolymorphicMapType_7274) (Mask@@19 T@PolymorphicMapType_7295) (o_15@@2 T@Ref) (f_23@@11 T@Field_13509_3223) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_7334_3223 Mask@@19 o_15@@2 f_23@@11) (= (select (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| Heap@@13) o_15@@2 f_23@@11) (select (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| ExhaleHeap@@7) o_15@@2 f_23@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| ExhaleHeap@@7) o_15@@2 f_23@@11))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7274) (ExhaleHeap@@8 T@PolymorphicMapType_7274) (Mask@@20 T@PolymorphicMapType_7295) (o_15@@3 T@Ref) (f_23@@12 T@Field_7347_7348) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_7334_7348 Mask@@20 o_15@@3 f_23@@12) (= (select (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| Heap@@14) o_15@@3 f_23@@12) (select (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| ExhaleHeap@@8) o_15@@3 f_23@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| ExhaleHeap@@8) o_15@@3 f_23@@12))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7274) (ExhaleHeap@@9 T@PolymorphicMapType_7274) (Mask@@21 T@PolymorphicMapType_7295) (o_15@@4 T@Ref) (f_23@@13 T@Field_7334_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_7334_53 Mask@@21 o_15@@4 f_23@@13) (= (select (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| Heap@@15) o_15@@4 f_23@@13) (select (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| ExhaleHeap@@9) o_15@@4 f_23@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| ExhaleHeap@@9) o_15@@4 f_23@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7334_17700) ) (! (= (select (|PolymorphicMapType_7295_4543_21822#PolymorphicMapType_7295| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7295_4543_21822#PolymorphicMapType_7295| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_7334_17567) ) (! (= (select (|PolymorphicMapType_7295_4543_17567#PolymorphicMapType_7295| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7295_4543_17567#PolymorphicMapType_7295| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_7347_7348) ) (! (= (select (|PolymorphicMapType_7295_4543_7348#PolymorphicMapType_7295| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7295_4543_7348#PolymorphicMapType_7295| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_7334_53) ) (! (= (select (|PolymorphicMapType_7295_4543_53#PolymorphicMapType_7295| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7295_4543_53#PolymorphicMapType_7295| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_13509_3223) ) (! (= (select (|PolymorphicMapType_7295_4543_3223#PolymorphicMapType_7295| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7295_4543_3223#PolymorphicMapType_7295| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7295) (SummandMask1 T@PolymorphicMapType_7295) (SummandMask2 T@PolymorphicMapType_7295) (o_2@@19 T@Ref) (f_4@@19 T@Field_7334_17700) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7295_4543_21822#PolymorphicMapType_7295| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_7295_4543_21822#PolymorphicMapType_7295| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_7295_4543_21822#PolymorphicMapType_7295| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7295_4543_21822#PolymorphicMapType_7295| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7295_4543_21822#PolymorphicMapType_7295| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7295_4543_21822#PolymorphicMapType_7295| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7295) (SummandMask1@@0 T@PolymorphicMapType_7295) (SummandMask2@@0 T@PolymorphicMapType_7295) (o_2@@20 T@Ref) (f_4@@20 T@Field_7334_17567) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7295_4543_17567#PolymorphicMapType_7295| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_7295_4543_17567#PolymorphicMapType_7295| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_7295_4543_17567#PolymorphicMapType_7295| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7295_4543_17567#PolymorphicMapType_7295| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7295_4543_17567#PolymorphicMapType_7295| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7295_4543_17567#PolymorphicMapType_7295| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7295) (SummandMask1@@1 T@PolymorphicMapType_7295) (SummandMask2@@1 T@PolymorphicMapType_7295) (o_2@@21 T@Ref) (f_4@@21 T@Field_7347_7348) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7295_4543_7348#PolymorphicMapType_7295| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_7295_4543_7348#PolymorphicMapType_7295| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_7295_4543_7348#PolymorphicMapType_7295| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7295_4543_7348#PolymorphicMapType_7295| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7295_4543_7348#PolymorphicMapType_7295| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7295_4543_7348#PolymorphicMapType_7295| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7295) (SummandMask1@@2 T@PolymorphicMapType_7295) (SummandMask2@@2 T@PolymorphicMapType_7295) (o_2@@22 T@Ref) (f_4@@22 T@Field_7334_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7295_4543_53#PolymorphicMapType_7295| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_7295_4543_53#PolymorphicMapType_7295| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_7295_4543_53#PolymorphicMapType_7295| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7295_4543_53#PolymorphicMapType_7295| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7295_4543_53#PolymorphicMapType_7295| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7295_4543_53#PolymorphicMapType_7295| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7295) (SummandMask1@@3 T@PolymorphicMapType_7295) (SummandMask2@@3 T@PolymorphicMapType_7295) (o_2@@23 T@Ref) (f_4@@23 T@Field_13509_3223) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7295_4543_3223#PolymorphicMapType_7295| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_7295_4543_3223#PolymorphicMapType_7295| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_7295_4543_3223#PolymorphicMapType_7295| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7295_4543_3223#PolymorphicMapType_7295| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7295_4543_3223#PolymorphicMapType_7295| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7295_4543_3223#PolymorphicMapType_7295| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7274) (Mask@@22 T@PolymorphicMapType_7295) (n@@1 T@Ref) ) (!  (=> (state Heap@@16 Mask@@22) (= (|$'| Heap@@16 n@@1) (|$#frame| (FrameFragment_3223 (select (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| Heap@@16) n@@1 m_20)) n@@1)))
 :qid |stdinbpl.422:15|
 :skolemid |84|
 :pattern ( (state Heap@@16 Mask@@22) (|$'| Heap@@16 n@@1))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7274) (o_14 T@Ref) (f_24 T@Field_7334_17567) (v T@FrameType) ) (! (succHeap Heap@@17 (PolymorphicMapType_7274 (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| Heap@@17) (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| Heap@@17) (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| Heap@@17) (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@17) (store (|PolymorphicMapType_7274_7334_17567#PolymorphicMapType_7274| Heap@@17) o_14 f_24 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7274 (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| Heap@@17) (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| Heap@@17) (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| Heap@@17) (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@17) (store (|PolymorphicMapType_7274_7334_17567#PolymorphicMapType_7274| Heap@@17) o_14 f_24 v)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7274) (o_14@@0 T@Ref) (f_24@@0 T@Field_7334_17700) (v@@0 T@PolymorphicMapType_7823) ) (! (succHeap Heap@@18 (PolymorphicMapType_7274 (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| Heap@@18) (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| Heap@@18) (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| Heap@@18) (store (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@18) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_7274_7334_17567#PolymorphicMapType_7274| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7274 (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| Heap@@18) (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| Heap@@18) (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| Heap@@18) (store (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@18) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_7274_7334_17567#PolymorphicMapType_7274| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7274) (o_14@@1 T@Ref) (f_24@@1 T@Field_13509_3223) (v@@1 Int) ) (! (succHeap Heap@@19 (PolymorphicMapType_7274 (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| Heap@@19) (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| Heap@@19) (store (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| Heap@@19) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@19) (|PolymorphicMapType_7274_7334_17567#PolymorphicMapType_7274| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7274 (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| Heap@@19) (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| Heap@@19) (store (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| Heap@@19) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@19) (|PolymorphicMapType_7274_7334_17567#PolymorphicMapType_7274| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7274) (o_14@@2 T@Ref) (f_24@@2 T@Field_7347_7348) (v@@2 T@Ref) ) (! (succHeap Heap@@20 (PolymorphicMapType_7274 (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| Heap@@20) (store (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| Heap@@20) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| Heap@@20) (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@20) (|PolymorphicMapType_7274_7334_17567#PolymorphicMapType_7274| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7274 (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| Heap@@20) (store (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| Heap@@20) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| Heap@@20) (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@20) (|PolymorphicMapType_7274_7334_17567#PolymorphicMapType_7274| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7274) (o_14@@3 T@Ref) (f_24@@3 T@Field_7334_53) (v@@3 Bool) ) (! (succHeap Heap@@21 (PolymorphicMapType_7274 (store (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| Heap@@21) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| Heap@@21) (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| Heap@@21) (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@21) (|PolymorphicMapType_7274_7334_17567#PolymorphicMapType_7274| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7274 (store (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| Heap@@21) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| Heap@@21) (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| Heap@@21) (|PolymorphicMapType_7274_7334_17744#PolymorphicMapType_7274| Heap@@21) (|PolymorphicMapType_7274_7334_17567#PolymorphicMapType_7274| Heap@@21)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.290:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.291:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7274) (Mask@@23 T@PolymorphicMapType_7295) (nodes@@2 (Array T@Ref Bool)) ) (!  (=> (state Heap@@22 Mask@@23) (= (|purify_graph'| Heap@@22 nodes@@2) (|purify_graph#frame| (FrameFragment_3223 (|purify_graph#condqp1| Heap@@22 nodes@@2)) nodes@@2)))
 :qid |stdinbpl.472:15|
 :skolemid |87|
 :pattern ( (state Heap@@22 Mask@@23) (|purify_graph'| Heap@@22 nodes@@2))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_7274) (Heap1Heap T@PolymorphicMapType_7274) (nodes@@3 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select nodes@@3 (|sk_purify_graph#condqp1| (|purify_graph#condqp1| Heap2Heap nodes@@3) (|purify_graph#condqp1| Heap1Heap nodes@@3))) (< NoPerm FullPerm))  (and (select nodes@@3 (|sk_purify_graph#condqp1| (|purify_graph#condqp1| Heap2Heap nodes@@3) (|purify_graph#condqp1| Heap1Heap nodes@@3))) (< NoPerm FullPerm))) (=> (and (select nodes@@3 (|sk_purify_graph#condqp1| (|purify_graph#condqp1| Heap2Heap nodes@@3) (|purify_graph#condqp1| Heap1Heap nodes@@3))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| Heap2Heap) (|sk_purify_graph#condqp1| (|purify_graph#condqp1| Heap2Heap nodes@@3) (|purify_graph#condqp1| Heap1Heap nodes@@3)) m_20) (select (|PolymorphicMapType_7274_4543_3223#PolymorphicMapType_7274| Heap1Heap) (|sk_purify_graph#condqp1| (|purify_graph#condqp1| Heap2Heap nodes@@3) (|purify_graph#condqp1| Heap1Heap nodes@@3)) m_20)))) (= (|purify_graph#condqp1| Heap2Heap nodes@@3) (|purify_graph#condqp1| Heap1Heap nodes@@3)))
 :qid |stdinbpl.482:15|
 :skolemid |88|
 :pattern ( (|purify_graph#condqp1| Heap2Heap nodes@@3) (|purify_graph#condqp1| Heap1Heap nodes@@3) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((o_14@@4 T@Ref) (f_22 T@Field_7347_7348) (Heap@@23 T@PolymorphicMapType_7274) ) (!  (=> (select (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| Heap@@23) o_14@@4 $allocated) (select (|PolymorphicMapType_7274_4248_53#PolymorphicMapType_7274| Heap@@23) (select (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| Heap@@23) o_14@@4 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7274_4251_4252#PolymorphicMapType_7274| Heap@@23) o_14@@4 f_22))
)))
(assert (forall ((p@@1 T@Field_7334_17567) (v_1@@0 T@FrameType) (q T@Field_7334_17567) (w@@0 T@FrameType) (r T@Field_7334_17567) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7334_7334 p@@1 v_1@@0 q w@@0) (InsidePredicate_7334_7334 q w@@0 r u)) (InsidePredicate_7334_7334 p@@1 v_1@@0 r u))
 :qid |stdinbpl.185:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7334_7334 p@@1 v_1@@0 q w@@0) (InsidePredicate_7334_7334 q w@@0 r u))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.296:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |$#definedness|)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
