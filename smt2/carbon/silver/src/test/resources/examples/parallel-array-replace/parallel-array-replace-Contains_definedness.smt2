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
(declare-sort T@Field_11178_53 0)
(declare-sort T@Field_11191_11192 0)
(declare-sort T@Field_14640_1596 0)
(declare-sort T@Field_7519_32744 0)
(declare-sort T@Field_7519_32611 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_11139 0)) (((PolymorphicMapType_11139 (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| (Array T@Ref T@Field_14640_1596 Real)) (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| (Array T@Ref T@Field_11178_53 Real)) (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| (Array T@Ref T@Field_11191_11192 Real)) (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| (Array T@Ref T@Field_7519_32611 Real)) (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| (Array T@Ref T@Field_7519_32744 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11667 0)) (((PolymorphicMapType_11667 (|PolymorphicMapType_11667_11178_53#PolymorphicMapType_11667| (Array T@Ref T@Field_11178_53 Bool)) (|PolymorphicMapType_11667_11178_11192#PolymorphicMapType_11667| (Array T@Ref T@Field_11191_11192 Bool)) (|PolymorphicMapType_11667_11178_1596#PolymorphicMapType_11667| (Array T@Ref T@Field_14640_1596 Bool)) (|PolymorphicMapType_11667_11178_32611#PolymorphicMapType_11667| (Array T@Ref T@Field_7519_32611 Bool)) (|PolymorphicMapType_11667_11178_33922#PolymorphicMapType_11667| (Array T@Ref T@Field_7519_32744 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11118 0)) (((PolymorphicMapType_11118 (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| (Array T@Ref T@Field_11178_53 Bool)) (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| (Array T@Ref T@Field_11191_11192 T@Ref)) (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| (Array T@Ref T@Field_14640_1596 Int)) (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| (Array T@Ref T@Field_7519_32744 T@PolymorphicMapType_11667)) (|PolymorphicMapType_11118_11178_32611#PolymorphicMapType_11118| (Array T@Ref T@Field_7519_32611 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_11178_53)
(declare-fun val () T@Field_14640_1596)
(declare-fun succHeap (T@PolymorphicMapType_11118 T@PolymorphicMapType_11118) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11118 T@PolymorphicMapType_11118) Bool)
(declare-fun state (T@PolymorphicMapType_11118 T@PolymorphicMapType_11139) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11139) Bool)
(declare-sort T@ArrayDomainType 0)
(declare-fun |Contains'| (T@PolymorphicMapType_11118 T@ArrayDomainType Int Int) Bool)
(declare-fun dummyFunction_2064 (Bool) Bool)
(declare-fun |Contains#triggerStateless| (T@ArrayDomainType Int Int) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11667)
(declare-fun Contains (T@PolymorphicMapType_11118 T@ArrayDomainType Int Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11118 T@PolymorphicMapType_11118 T@PolymorphicMapType_11139) Bool)
(declare-fun IsPredicateField_7519_32702 (T@Field_7519_32611) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7519 (T@Field_7519_32611) T@Field_7519_32744)
(declare-fun HasDirectPerm_7519_32675 (T@PolymorphicMapType_11139 T@Ref T@Field_7519_32611) Bool)
(declare-fun IsWandField_7519_34449 (T@Field_7519_32611) Bool)
(declare-fun WandMaskField_7519 (T@Field_7519_32611) T@Field_7519_32744)
(declare-fun |Contains#condqp1| (T@PolymorphicMapType_11118 T@ArrayDomainType Int Int) Int)
(declare-fun |sk_Contains#condqp1| (Int Int) Int)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun loc (T@ArrayDomainType Int) T@Ref)
(declare-fun dummyHeap () T@PolymorphicMapType_11118)
(declare-fun ZeroMask () T@PolymorphicMapType_11139)
(declare-fun InsidePredicate_11178_11178 (T@Field_7519_32611 T@FrameType T@Field_7519_32611 T@FrameType) Bool)
(declare-fun IsPredicateField_7519_1596 (T@Field_14640_1596) Bool)
(declare-fun IsWandField_7519_1596 (T@Field_14640_1596) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7519_37995 (T@Field_7519_32744) Bool)
(declare-fun IsWandField_7519_38011 (T@Field_7519_32744) Bool)
(declare-fun IsPredicateField_7519_11192 (T@Field_11191_11192) Bool)
(declare-fun IsWandField_7519_11192 (T@Field_11191_11192) Bool)
(declare-fun IsPredicateField_7519_53 (T@Field_11178_53) Bool)
(declare-fun IsWandField_7519_53 (T@Field_11178_53) Bool)
(declare-fun HasDirectPerm_7519_38449 (T@PolymorphicMapType_11139 T@Ref T@Field_7519_32744) Bool)
(declare-fun HasDirectPerm_7519_11192 (T@PolymorphicMapType_11139 T@Ref T@Field_11191_11192) Bool)
(declare-fun HasDirectPerm_7519_53 (T@PolymorphicMapType_11139 T@Ref T@Field_11178_53) Bool)
(declare-fun HasDirectPerm_7519_1596 (T@PolymorphicMapType_11139 T@Ref T@Field_14640_1596) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_11139 T@PolymorphicMapType_11139 T@PolymorphicMapType_11139) Bool)
(declare-fun len (T@ArrayDomainType) Int)
(declare-fun |Contains#frame| (T@FrameType T@ArrayDomainType Int Int) Bool)
(declare-fun FrameFragment_1809 (Int) T@FrameType)
(declare-fun first_1 (T@Ref) T@ArrayDomainType)
(declare-fun second_1 (T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_11118) (Heap1 T@PolymorphicMapType_11118) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_11118) (Mask T@PolymorphicMapType_11139) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11118) (Heap1@@0 T@PolymorphicMapType_11118) (Heap2 T@PolymorphicMapType_11118) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11118) (a_2 T@ArrayDomainType) (v_2 Int) (before_1 Int) ) (! (dummyFunction_2064 (|Contains#triggerStateless| a_2 v_2 before_1))
 :qid |stdinbpl.280:15|
 :skolemid |25|
 :pattern ( (|Contains'| Heap@@0 a_2 v_2 before_1))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7519_32744) ) (!  (not (select (|PolymorphicMapType_11667_11178_33922#PolymorphicMapType_11667| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11667_11178_33922#PolymorphicMapType_11667| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7519_32611) ) (!  (not (select (|PolymorphicMapType_11667_11178_32611#PolymorphicMapType_11667| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11667_11178_32611#PolymorphicMapType_11667| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14640_1596) ) (!  (not (select (|PolymorphicMapType_11667_11178_1596#PolymorphicMapType_11667| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11667_11178_1596#PolymorphicMapType_11667| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11191_11192) ) (!  (not (select (|PolymorphicMapType_11667_11178_11192#PolymorphicMapType_11667| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11667_11178_11192#PolymorphicMapType_11667| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11178_53) ) (!  (not (select (|PolymorphicMapType_11667_11178_53#PolymorphicMapType_11667| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11667_11178_53#PolymorphicMapType_11667| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11118) (a_2@@0 T@ArrayDomainType) (v_2@@0 Int) (before_1@@0 Int) ) (!  (and (= (Contains Heap@@1 a_2@@0 v_2@@0 before_1@@0) (|Contains'| Heap@@1 a_2@@0 v_2@@0 before_1@@0)) (dummyFunction_2064 (|Contains#triggerStateless| a_2@@0 v_2@@0 before_1@@0)))
 :qid |stdinbpl.276:15|
 :skolemid |24|
 :pattern ( (Contains Heap@@1 a_2@@0 v_2@@0 before_1@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11118) (ExhaleHeap T@PolymorphicMapType_11118) (Mask@@0 T@PolymorphicMapType_11139) (pm_f_34 T@Field_7519_32611) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7519_32675 Mask@@0 null pm_f_34) (IsPredicateField_7519_32702 pm_f_34)) (= (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@2) null (PredicateMaskField_7519 pm_f_34)) (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| ExhaleHeap) null (PredicateMaskField_7519 pm_f_34)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_7519_32702 pm_f_34) (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| ExhaleHeap) null (PredicateMaskField_7519 pm_f_34)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11118) (ExhaleHeap@@0 T@PolymorphicMapType_11118) (Mask@@1 T@PolymorphicMapType_11139) (pm_f_34@@0 T@Field_7519_32611) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7519_32675 Mask@@1 null pm_f_34@@0) (IsWandField_7519_34449 pm_f_34@@0)) (= (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@3) null (WandMaskField_7519 pm_f_34@@0)) (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| ExhaleHeap@@0) null (WandMaskField_7519 pm_f_34@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_7519_34449 pm_f_34@@0) (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| ExhaleHeap@@0) null (WandMaskField_7519 pm_f_34@@0)))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_11118) (Heap1Heap T@PolymorphicMapType_11118) (a_2@@1 T@ArrayDomainType) (v_2@@1 Int) (before_1@@1 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_Contains#condqp1| (|Contains#condqp1| Heap2Heap a_2@@1 v_2@@1 before_1@@1) (|Contains#condqp1| Heap1Heap a_2@@1 v_2@@1 before_1@@1))) (< (|sk_Contains#condqp1| (|Contains#condqp1| Heap2Heap a_2@@1 v_2@@1 before_1@@1) (|Contains#condqp1| Heap1Heap a_2@@1 v_2@@1 before_1@@1)) before_1@@1)) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_Contains#condqp1| (|Contains#condqp1| Heap2Heap a_2@@1 v_2@@1 before_1@@1) (|Contains#condqp1| Heap1Heap a_2@@1 v_2@@1 before_1@@1))) (< (|sk_Contains#condqp1| (|Contains#condqp1| Heap2Heap a_2@@1 v_2@@1 before_1@@1) (|Contains#condqp1| Heap1Heap a_2@@1 v_2@@1 before_1@@1)) before_1@@1)) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_Contains#condqp1| (|Contains#condqp1| Heap2Heap a_2@@1 v_2@@1 before_1@@1) (|Contains#condqp1| Heap1Heap a_2@@1 v_2@@1 before_1@@1))) (< (|sk_Contains#condqp1| (|Contains#condqp1| Heap2Heap a_2@@1 v_2@@1 before_1@@1) (|Contains#condqp1| Heap1Heap a_2@@1 v_2@@1 before_1@@1)) before_1@@1)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap2Heap) (loc a_2@@1 (|sk_Contains#condqp1| (|Contains#condqp1| Heap2Heap a_2@@1 v_2@@1 before_1@@1) (|Contains#condqp1| Heap1Heap a_2@@1 v_2@@1 before_1@@1))) val) (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap1Heap) (loc a_2@@1 (|sk_Contains#condqp1| (|Contains#condqp1| Heap2Heap a_2@@1 v_2@@1 before_1@@1) (|Contains#condqp1| Heap1Heap a_2@@1 v_2@@1 before_1@@1))) val)))) (= (|Contains#condqp1| Heap2Heap a_2@@1 v_2@@1 before_1@@1) (|Contains#condqp1| Heap1Heap a_2@@1 v_2@@1 before_1@@1)))
 :qid |stdinbpl.297:15|
 :skolemid |27|
 :pattern ( (|Contains#condqp1| Heap2Heap a_2@@1 v_2@@1 before_1@@1) (|Contains#condqp1| Heap1Heap a_2@@1 v_2@@1 before_1@@1) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11118) (ExhaleHeap@@1 T@PolymorphicMapType_11118) (Mask@@2 T@PolymorphicMapType_11139) (o_47 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| Heap@@4) o_47 $allocated) (select (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| ExhaleHeap@@1) o_47 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| ExhaleHeap@@1) o_47 $allocated))
)))
(assert (forall ((p T@Field_7519_32611) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11178_11178 p v_1 p w))
 :qid |stdinbpl.225:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11178_11178 p v_1 p w))
)))
(assert  (not (IsPredicateField_7519_1596 val)))
(assert  (not (IsWandField_7519_1596 val)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11118) (ExhaleHeap@@2 T@PolymorphicMapType_11118) (Mask@@3 T@PolymorphicMapType_11139) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_11139) (o_2@@4 T@Ref) (f_4@@4 T@Field_7519_32744) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_7519_37995 f_4@@4))) (not (IsWandField_7519_38011 f_4@@4))) (<= (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_11139) (o_2@@5 T@Ref) (f_4@@5 T@Field_7519_32611) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_7519_32702 f_4@@5))) (not (IsWandField_7519_34449 f_4@@5))) (<= (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_11139) (o_2@@6 T@Ref) (f_4@@6 T@Field_11191_11192) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_7519_11192 f_4@@6))) (not (IsWandField_7519_11192 f_4@@6))) (<= (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_11139) (o_2@@7 T@Ref) (f_4@@7 T@Field_11178_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_7519_53 f_4@@7))) (not (IsWandField_7519_53 f_4@@7))) (<= (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_11139) (o_2@@8 T@Ref) (f_4@@8 T@Field_14640_1596) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_7519_1596 f_4@@8))) (not (IsWandField_7519_1596 f_4@@8))) (<= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_11139) (o_2@@9 T@Ref) (f_4@@9 T@Field_7519_32744) ) (! (= (HasDirectPerm_7519_38449 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7519_38449 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_11139) (o_2@@10 T@Ref) (f_4@@10 T@Field_7519_32611) ) (! (= (HasDirectPerm_7519_32675 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7519_32675 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_11139) (o_2@@11 T@Ref) (f_4@@11 T@Field_11191_11192) ) (! (= (HasDirectPerm_7519_11192 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7519_11192 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11139) (o_2@@12 T@Ref) (f_4@@12 T@Field_11178_53) ) (! (= (HasDirectPerm_7519_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7519_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11139) (o_2@@13 T@Ref) (f_4@@13 T@Field_14640_1596) ) (! (= (HasDirectPerm_7519_1596 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7519_1596 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11118) (ExhaleHeap@@3 T@PolymorphicMapType_11118) (Mask@@14 T@PolymorphicMapType_11139) (pm_f_34@@1 T@Field_7519_32611) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_7519_32675 Mask@@14 null pm_f_34@@1) (IsPredicateField_7519_32702 pm_f_34@@1)) (and (and (and (and (forall ((o2_34 T@Ref) (f_65 T@Field_11178_53) ) (!  (=> (select (|PolymorphicMapType_11667_11178_53#PolymorphicMapType_11667| (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@6) null (PredicateMaskField_7519 pm_f_34@@1))) o2_34 f_65) (= (select (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| Heap@@6) o2_34 f_65) (select (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| ExhaleHeap@@3) o2_34 f_65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| ExhaleHeap@@3) o2_34 f_65))
)) (forall ((o2_34@@0 T@Ref) (f_65@@0 T@Field_11191_11192) ) (!  (=> (select (|PolymorphicMapType_11667_11178_11192#PolymorphicMapType_11667| (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@6) null (PredicateMaskField_7519 pm_f_34@@1))) o2_34@@0 f_65@@0) (= (select (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| Heap@@6) o2_34@@0 f_65@@0) (select (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| ExhaleHeap@@3) o2_34@@0 f_65@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| ExhaleHeap@@3) o2_34@@0 f_65@@0))
))) (forall ((o2_34@@1 T@Ref) (f_65@@1 T@Field_14640_1596) ) (!  (=> (select (|PolymorphicMapType_11667_11178_1596#PolymorphicMapType_11667| (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@6) null (PredicateMaskField_7519 pm_f_34@@1))) o2_34@@1 f_65@@1) (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@6) o2_34@@1 f_65@@1) (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| ExhaleHeap@@3) o2_34@@1 f_65@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| ExhaleHeap@@3) o2_34@@1 f_65@@1))
))) (forall ((o2_34@@2 T@Ref) (f_65@@2 T@Field_7519_32611) ) (!  (=> (select (|PolymorphicMapType_11667_11178_32611#PolymorphicMapType_11667| (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@6) null (PredicateMaskField_7519 pm_f_34@@1))) o2_34@@2 f_65@@2) (= (select (|PolymorphicMapType_11118_11178_32611#PolymorphicMapType_11118| Heap@@6) o2_34@@2 f_65@@2) (select (|PolymorphicMapType_11118_11178_32611#PolymorphicMapType_11118| ExhaleHeap@@3) o2_34@@2 f_65@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11118_11178_32611#PolymorphicMapType_11118| ExhaleHeap@@3) o2_34@@2 f_65@@2))
))) (forall ((o2_34@@3 T@Ref) (f_65@@3 T@Field_7519_32744) ) (!  (=> (select (|PolymorphicMapType_11667_11178_33922#PolymorphicMapType_11667| (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@6) null (PredicateMaskField_7519 pm_f_34@@1))) o2_34@@3 f_65@@3) (= (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@6) o2_34@@3 f_65@@3) (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| ExhaleHeap@@3) o2_34@@3 f_65@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| ExhaleHeap@@3) o2_34@@3 f_65@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@14) (IsPredicateField_7519_32702 pm_f_34@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11118) (ExhaleHeap@@4 T@PolymorphicMapType_11118) (Mask@@15 T@PolymorphicMapType_11139) (pm_f_34@@2 T@Field_7519_32611) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_7519_32675 Mask@@15 null pm_f_34@@2) (IsWandField_7519_34449 pm_f_34@@2)) (and (and (and (and (forall ((o2_34@@4 T@Ref) (f_65@@4 T@Field_11178_53) ) (!  (=> (select (|PolymorphicMapType_11667_11178_53#PolymorphicMapType_11667| (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@7) null (WandMaskField_7519 pm_f_34@@2))) o2_34@@4 f_65@@4) (= (select (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| Heap@@7) o2_34@@4 f_65@@4) (select (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| ExhaleHeap@@4) o2_34@@4 f_65@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| ExhaleHeap@@4) o2_34@@4 f_65@@4))
)) (forall ((o2_34@@5 T@Ref) (f_65@@5 T@Field_11191_11192) ) (!  (=> (select (|PolymorphicMapType_11667_11178_11192#PolymorphicMapType_11667| (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@7) null (WandMaskField_7519 pm_f_34@@2))) o2_34@@5 f_65@@5) (= (select (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| Heap@@7) o2_34@@5 f_65@@5) (select (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| ExhaleHeap@@4) o2_34@@5 f_65@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| ExhaleHeap@@4) o2_34@@5 f_65@@5))
))) (forall ((o2_34@@6 T@Ref) (f_65@@6 T@Field_14640_1596) ) (!  (=> (select (|PolymorphicMapType_11667_11178_1596#PolymorphicMapType_11667| (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@7) null (WandMaskField_7519 pm_f_34@@2))) o2_34@@6 f_65@@6) (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@7) o2_34@@6 f_65@@6) (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| ExhaleHeap@@4) o2_34@@6 f_65@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| ExhaleHeap@@4) o2_34@@6 f_65@@6))
))) (forall ((o2_34@@7 T@Ref) (f_65@@7 T@Field_7519_32611) ) (!  (=> (select (|PolymorphicMapType_11667_11178_32611#PolymorphicMapType_11667| (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@7) null (WandMaskField_7519 pm_f_34@@2))) o2_34@@7 f_65@@7) (= (select (|PolymorphicMapType_11118_11178_32611#PolymorphicMapType_11118| Heap@@7) o2_34@@7 f_65@@7) (select (|PolymorphicMapType_11118_11178_32611#PolymorphicMapType_11118| ExhaleHeap@@4) o2_34@@7 f_65@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11118_11178_32611#PolymorphicMapType_11118| ExhaleHeap@@4) o2_34@@7 f_65@@7))
))) (forall ((o2_34@@8 T@Ref) (f_65@@8 T@Field_7519_32744) ) (!  (=> (select (|PolymorphicMapType_11667_11178_33922#PolymorphicMapType_11667| (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@7) null (WandMaskField_7519 pm_f_34@@2))) o2_34@@8 f_65@@8) (= (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@7) o2_34@@8 f_65@@8) (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| ExhaleHeap@@4) o2_34@@8 f_65@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| ExhaleHeap@@4) o2_34@@8 f_65@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@15) (IsWandField_7519_34449 pm_f_34@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.213:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11118) (ExhaleHeap@@5 T@PolymorphicMapType_11118) (Mask@@16 T@PolymorphicMapType_11139) (o_47@@0 T@Ref) (f_65@@9 T@Field_7519_32744) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_7519_38449 Mask@@16 o_47@@0 f_65@@9) (= (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@8) o_47@@0 f_65@@9) (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| ExhaleHeap@@5) o_47@@0 f_65@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| ExhaleHeap@@5) o_47@@0 f_65@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11118) (ExhaleHeap@@6 T@PolymorphicMapType_11118) (Mask@@17 T@PolymorphicMapType_11139) (o_47@@1 T@Ref) (f_65@@10 T@Field_7519_32611) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_7519_32675 Mask@@17 o_47@@1 f_65@@10) (= (select (|PolymorphicMapType_11118_11178_32611#PolymorphicMapType_11118| Heap@@9) o_47@@1 f_65@@10) (select (|PolymorphicMapType_11118_11178_32611#PolymorphicMapType_11118| ExhaleHeap@@6) o_47@@1 f_65@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_11118_11178_32611#PolymorphicMapType_11118| ExhaleHeap@@6) o_47@@1 f_65@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11118) (ExhaleHeap@@7 T@PolymorphicMapType_11118) (Mask@@18 T@PolymorphicMapType_11139) (o_47@@2 T@Ref) (f_65@@11 T@Field_11191_11192) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_7519_11192 Mask@@18 o_47@@2 f_65@@11) (= (select (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| Heap@@10) o_47@@2 f_65@@11) (select (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| ExhaleHeap@@7) o_47@@2 f_65@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| ExhaleHeap@@7) o_47@@2 f_65@@11))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11118) (ExhaleHeap@@8 T@PolymorphicMapType_11118) (Mask@@19 T@PolymorphicMapType_11139) (o_47@@3 T@Ref) (f_65@@12 T@Field_11178_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_7519_53 Mask@@19 o_47@@3 f_65@@12) (= (select (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| Heap@@11) o_47@@3 f_65@@12) (select (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| ExhaleHeap@@8) o_47@@3 f_65@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| ExhaleHeap@@8) o_47@@3 f_65@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11118) (ExhaleHeap@@9 T@PolymorphicMapType_11118) (Mask@@20 T@PolymorphicMapType_11139) (o_47@@4 T@Ref) (f_65@@13 T@Field_14640_1596) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_7519_1596 Mask@@20 o_47@@4 f_65@@13) (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@12) o_47@@4 f_65@@13) (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| ExhaleHeap@@9) o_47@@4 f_65@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| ExhaleHeap@@9) o_47@@4 f_65@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7519_32744) ) (! (= (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_7519_32611) ) (! (= (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_11191_11192) ) (! (= (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_11178_53) ) (! (= (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_14640_1596) ) (! (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11139) (SummandMask1 T@PolymorphicMapType_11139) (SummandMask2 T@PolymorphicMapType_11139) (o_2@@19 T@Ref) (f_4@@19 T@Field_7519_32744) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11139) (SummandMask1@@0 T@PolymorphicMapType_11139) (SummandMask2@@0 T@PolymorphicMapType_11139) (o_2@@20 T@Ref) (f_4@@20 T@Field_7519_32611) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11139) (SummandMask1@@1 T@PolymorphicMapType_11139) (SummandMask2@@1 T@PolymorphicMapType_11139) (o_2@@21 T@Ref) (f_4@@21 T@Field_11191_11192) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11139) (SummandMask1@@2 T@PolymorphicMapType_11139) (SummandMask2@@2 T@PolymorphicMapType_11139) (o_2@@22 T@Ref) (f_4@@22 T@Field_11178_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_11139) (SummandMask1@@3 T@PolymorphicMapType_11139) (SummandMask2@@3 T@PolymorphicMapType_11139) (o_2@@23 T@Ref) (f_4@@23 T@Field_14640_1596) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a_2@@2 T@ArrayDomainType) ) (! (>= (len a_2@@2) 0)
 :qid |stdinbpl.256:15|
 :skolemid |23|
 :pattern ( (len a_2@@2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11118) (Mask@@21 T@PolymorphicMapType_11139) (a_2@@3 T@ArrayDomainType) (v_2@@2 Int) (before_1@@2 Int) ) (!  (=> (state Heap@@13 Mask@@21) (= (|Contains'| Heap@@13 a_2@@3 v_2@@2 before_1@@2) (|Contains#frame| (FrameFragment_1809 (|Contains#condqp1| Heap@@13 a_2@@3 v_2@@2 before_1@@2)) a_2@@3 v_2@@2 before_1@@2)))
 :qid |stdinbpl.287:15|
 :skolemid |26|
 :pattern ( (state Heap@@13 Mask@@21) (|Contains'| Heap@@13 a_2@@3 v_2@@2 before_1@@2))
)))
(assert (forall ((a_2@@4 T@ArrayDomainType) (i Int) ) (!  (and (= (first_1 (loc a_2@@4 i)) a_2@@4) (= (second_1 (loc a_2@@4 i)) i))
 :qid |stdinbpl.250:15|
 :skolemid |22|
 :pattern ( (loc a_2@@4 i))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11118) (o_17 T@Ref) (f_19 T@Field_7519_32611) (v T@FrameType) ) (! (succHeap Heap@@14 (PolymorphicMapType_11118 (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| Heap@@14) (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| Heap@@14) (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@14) (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@14) (store (|PolymorphicMapType_11118_11178_32611#PolymorphicMapType_11118| Heap@@14) o_17 f_19 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11118 (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| Heap@@14) (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| Heap@@14) (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@14) (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@14) (store (|PolymorphicMapType_11118_11178_32611#PolymorphicMapType_11118| Heap@@14) o_17 f_19 v)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11118) (o_17@@0 T@Ref) (f_19@@0 T@Field_7519_32744) (v@@0 T@PolymorphicMapType_11667) ) (! (succHeap Heap@@15 (PolymorphicMapType_11118 (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| Heap@@15) (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| Heap@@15) (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@15) (store (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@15) o_17@@0 f_19@@0 v@@0) (|PolymorphicMapType_11118_11178_32611#PolymorphicMapType_11118| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11118 (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| Heap@@15) (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| Heap@@15) (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@15) (store (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@15) o_17@@0 f_19@@0 v@@0) (|PolymorphicMapType_11118_11178_32611#PolymorphicMapType_11118| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11118) (o_17@@1 T@Ref) (f_19@@1 T@Field_14640_1596) (v@@1 Int) ) (! (succHeap Heap@@16 (PolymorphicMapType_11118 (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| Heap@@16) (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| Heap@@16) (store (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@16) o_17@@1 f_19@@1 v@@1) (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@16) (|PolymorphicMapType_11118_11178_32611#PolymorphicMapType_11118| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11118 (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| Heap@@16) (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| Heap@@16) (store (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@16) o_17@@1 f_19@@1 v@@1) (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@16) (|PolymorphicMapType_11118_11178_32611#PolymorphicMapType_11118| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11118) (o_17@@2 T@Ref) (f_19@@2 T@Field_11191_11192) (v@@2 T@Ref) ) (! (succHeap Heap@@17 (PolymorphicMapType_11118 (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| Heap@@17) (store (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| Heap@@17) o_17@@2 f_19@@2 v@@2) (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@17) (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@17) (|PolymorphicMapType_11118_11178_32611#PolymorphicMapType_11118| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11118 (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| Heap@@17) (store (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| Heap@@17) o_17@@2 f_19@@2 v@@2) (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@17) (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@17) (|PolymorphicMapType_11118_11178_32611#PolymorphicMapType_11118| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11118) (o_17@@3 T@Ref) (f_19@@3 T@Field_11178_53) (v@@3 Bool) ) (! (succHeap Heap@@18 (PolymorphicMapType_11118 (store (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| Heap@@18) o_17@@3 f_19@@3 v@@3) (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| Heap@@18) (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@18) (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@18) (|PolymorphicMapType_11118_11178_32611#PolymorphicMapType_11118| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11118 (store (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| Heap@@18) o_17@@3 f_19@@3 v@@3) (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| Heap@@18) (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@18) (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@18) (|PolymorphicMapType_11118_11178_32611#PolymorphicMapType_11118| Heap@@18)))
)))
(assert (forall ((o_17@@4 T@Ref) (f_25 T@Field_11191_11192) (Heap@@19 T@PolymorphicMapType_11118) ) (!  (=> (select (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| Heap@@19) o_17@@4 $allocated) (select (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| Heap@@19) (select (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| Heap@@19) o_17@@4 f_25) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| Heap@@19) o_17@@4 f_25))
)))
(assert (forall ((p@@1 T@Field_7519_32611) (v_1@@0 T@FrameType) (q T@Field_7519_32611) (w@@0 T@FrameType) (r T@Field_7519_32611) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11178_11178 p@@1 v_1@@0 q w@@0) (InsidePredicate_11178_11178 q w@@0 r u)) (InsidePredicate_11178_11178 p@@1 v_1@@0 r u))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11178_11178 p@@1 v_1@@0 q w@@0) (InsidePredicate_11178_11178 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun before_1@@3 () Int)
(declare-fun a_2@@5 () T@ArrayDomainType)
(declare-fun Heap@@20 () T@PolymorphicMapType_11118)
(declare-fun AssumeFunctionsAbove () Int)
(set-info :boogie-vc-id |Contains#definedness|)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon3_Else_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (and (<= 0 i_3_2) (< i_3_2 before_1@@3))) (and (<= 0 i_3_3) (< i_3_3 before_1@@3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@5 i_3_2) (loc a_2@@5 i_3_3))))
 :qid |stdinbpl.331:15|
 :skolemid |28|
)))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@20 ZeroMask) (not AssumePermUpperBound)) (=> (and (and (= AssumeFunctionsAbove 0) (<= 0 before_1@@3)) (and (<= before_1@@3 (len a_2@@5)) (state Heap@@20 ZeroMask))) (and (=> (= (ControlFlow 0 4) 1) anon3_Then_correct) (=> (= (ControlFlow 0 4) 3) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 4) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
