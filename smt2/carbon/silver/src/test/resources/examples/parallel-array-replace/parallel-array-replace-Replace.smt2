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
(declare-fun Heap@@20 () T@PolymorphicMapType_11118)
(declare-fun a_2@@5 () T@ArrayDomainType)
(declare-fun i$1_6 () Int)
(declare-fun from_1 () Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_11139)
(declare-fun QPMask@0 () T@PolymorphicMapType_11139)
(declare-fun left () Int)
(declare-fun right_2 () Int)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_11118)
(declare-fun i$1_2_1 () Int)
(declare-fun Heap@2 () T@PolymorphicMapType_11118)
(declare-fun to_1 () Int)
(declare-fun Mask@0 () T@PolymorphicMapType_11139)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_11139)
(declare-fun Heap@1 () T@PolymorphicMapType_11118)
(declare-fun Heap@0 () T@PolymorphicMapType_11118)
(declare-fun mid@0 () Int)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_11118)
(declare-fun QPMask@4 () T@PolymorphicMapType_11139)
(declare-fun i$7 () Int)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_11139)
(declare-fun i$5 () Int)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_11139)
(declare-fun neverTriggered6 (Int) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_11139)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_11118)
(declare-fun neverTriggered5 (Int) Bool)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(set-info :boogie-vc-id Replace)
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
 (=> (= (ControlFlow 0 0) 77) (let ((anon10_correct true))
(let ((anon49_Else_correct  (=> (not (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@20) (loc a_2@@5 i$1_6) val) from_1)) (and (=> (= (ControlFlow 0 66) (- 0 68)) (HasDirectPerm_7519_1596 QPMask@6 (loc a_2@@5 i$1_6) val)) (=> (HasDirectPerm_7519_1596 QPMask@6 (loc a_2@@5 i$1_6) val) (and (=> (= (ControlFlow 0 66) (- 0 67)) (HasDirectPerm_7519_1596 QPMask@0 (loc a_2@@5 i$1_6) val)) (=> (HasDirectPerm_7519_1596 QPMask@0 (loc a_2@@5 i$1_6) val) (=> (= (ControlFlow 0 66) 62) anon10_correct))))))))
(let ((anon49_Then_correct  (=> (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@20) (loc a_2@@5 i$1_6) val) from_1) (and (=> (= (ControlFlow 0 64) (- 0 65)) (HasDirectPerm_7519_1596 QPMask@6 (loc a_2@@5 i$1_6) val)) (=> (HasDirectPerm_7519_1596 QPMask@6 (loc a_2@@5 i$1_6) val) (=> (= (ControlFlow 0 64) 62) anon10_correct))))))
(let ((anon48_Then_correct  (=> (and (<= left i$1_6) (< i$1_6 right_2)) (and (=> (= (ControlFlow 0 69) (- 0 70)) (HasDirectPerm_7519_1596 QPMask@0 (loc a_2@@5 i$1_6) val)) (=> (HasDirectPerm_7519_1596 QPMask@0 (loc a_2@@5 i$1_6) val) (and (=> (= (ControlFlow 0 69) 64) anon49_Then_correct) (=> (= (ControlFlow 0 69) 66) anon49_Else_correct)))))))
(let ((anon48_Else_correct  (=> (and (not (and (<= left i$1_6) (< i$1_6 right_2))) (= (ControlFlow 0 63) 62)) anon10_correct)))
(let ((anon47_Else_correct true))
(let ((anon46_Else_correct  (and (=> (= (ControlFlow 0 71) (- 0 72)) (forall ((i$0_1 Int) (i$0_1_2 Int) ) (!  (=> (and (and (and (and (not (= i$0_1 i$0_1_2)) (and (<= left i$0_1) (< i$0_1 right_2))) (and (<= left i$0_1_2) (< i$0_1_2 right_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@5 i$0_1) (loc a_2@@5 i$0_1_2))))
 :qid |stdinbpl.456:15|
 :skolemid |40|
))) (=> (forall ((i$0_1@@0 Int) (i$0_1_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i$0_1@@0 i$0_1_2@@0)) (and (<= left i$0_1@@0) (< i$0_1@@0 right_2))) (and (<= left i$0_1_2@@0) (< i$0_1_2@@0 right_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@5 i$0_1@@0) (loc a_2@@5 i$0_1_2@@0))))
 :qid |stdinbpl.456:15|
 :skolemid |40|
)) (=> (and (and (forall ((i$0_1@@1 Int) ) (!  (=> (and (and (<= left i$0_1@@1) (< i$0_1@@1 right_2)) (< NoPerm FullPerm)) (and (qpRange3 (loc a_2@@5 i$0_1@@1)) (= (invRecv3 (loc a_2@@5 i$0_1@@1)) i$0_1@@1)))
 :qid |stdinbpl.462:22|
 :skolemid |41|
 :pattern ( (loc a_2@@5 i$0_1@@1))
 :pattern ( (loc a_2@@5 i$0_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (<= left (invRecv3 o_9)) (< (invRecv3 o_9) right_2)) (< NoPerm FullPerm)) (qpRange3 o_9)) (= (loc a_2@@5 (invRecv3 o_9)) o_9))
 :qid |stdinbpl.466:22|
 :skolemid |42|
 :pattern ( (invRecv3 o_9))
))) (and (forall ((i$0_1@@2 Int) ) (!  (=> (and (<= left i$0_1@@2) (< i$0_1@@2 right_2)) (not (= (loc a_2@@5 i$0_1@@2) null)))
 :qid |stdinbpl.472:22|
 :skolemid |43|
 :pattern ( (loc a_2@@5 i$0_1@@2))
 :pattern ( (loc a_2@@5 i$0_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (<= left (invRecv3 o_9@@0)) (< (invRecv3 o_9@@0) right_2)) (< NoPerm FullPerm)) (qpRange3 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@5 (invRecv3 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@6) o_9@@0 val) (+ (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| ZeroMask) o_9@@0 val) FullPerm)))) (=> (not (and (and (and (<= left (invRecv3 o_9@@0)) (< (invRecv3 o_9@@0) right_2)) (< NoPerm FullPerm)) (qpRange3 o_9@@0))) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@6) o_9@@0 val) (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| ZeroMask) o_9@@0 val))))
 :qid |stdinbpl.478:22|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@6) o_9@@0 val))
)))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_11178_53) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| QPMask@6) o_9@@1 f_5)))
 :qid |stdinbpl.482:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| QPMask@6) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_11191_11192) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| QPMask@6) o_9@@2 f_5@@0)))
 :qid |stdinbpl.482:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| QPMask@6) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_14640_1596) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@6) o_9@@3 f_5@@1)))
 :qid |stdinbpl.482:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@6) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_7519_32611) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| QPMask@6) o_9@@4 f_5@@2)))
 :qid |stdinbpl.482:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| QPMask@6) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_7519_32744) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| QPMask@6) o_9@@5 f_5@@3)))
 :qid |stdinbpl.482:29|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| QPMask@6) o_9@@5 f_5@@3))
))) (and (state PostHeap@0 QPMask@6) (state PostHeap@0 QPMask@6))) (and (and (=> (= (ControlFlow 0 71) 61) anon47_Else_correct) (=> (= (ControlFlow 0 71) 69) anon48_Then_correct)) (=> (= (ControlFlow 0 71) 63) anon48_Else_correct))))))))
(let ((anon46_Then_correct true))
(let ((anon45_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 73) 60) anon46_Then_correct) (=> (= (ControlFlow 0 73) 71) anon46_Else_correct)))))
(let ((anon42_correct true))
(let ((anon64_Else_correct  (=> (not (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@20) (loc a_2@@5 i$1_2_1) val) from_1)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@2) (loc a_2@@5 i$1_2_1) val) (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@20) (loc a_2@@5 i$1_2_1) val))) (=> (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@2) (loc a_2@@5 i$1_2_1) val) (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@20) (loc a_2@@5 i$1_2_1) val)) (=> (= (ControlFlow 0 29) 25) anon42_correct))))))
(let ((anon64_Then_correct  (=> (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@20) (loc a_2@@5 i$1_2_1) val) from_1) (and (=> (= (ControlFlow 0 27) (- 0 28)) (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@2) (loc a_2@@5 i$1_2_1) val) to_1)) (=> (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@2) (loc a_2@@5 i$1_2_1) val) to_1) (=> (= (ControlFlow 0 27) 25) anon42_correct))))))
(let ((anon63_Then_correct  (=> (and (<= left i$1_2_1) (< i$1_2_1 right_2)) (and (=> (= (ControlFlow 0 31) 27) anon64_Then_correct) (=> (= (ControlFlow 0 31) 29) anon64_Else_correct)))))
(let ((anon63_Else_correct  (=> (and (not (and (<= left i$1_2_1) (< i$1_2_1 right_2))) (= (ControlFlow 0 26) 25)) anon42_correct)))
(let ((anon62_Else_correct true))
(let ((anon37_correct  (=> (state Heap@2 Mask@0) (and (=> (= (ControlFlow 0 32) (- 0 34)) (forall ((i$0_2_1 Int) (i$0_2_2 Int) ) (!  (=> (and (and (and (and (not (= i$0_2_1 i$0_2_2)) (and (<= left i$0_2_1) (< i$0_2_1 right_2))) (and (<= left i$0_2_2) (< i$0_2_2 right_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@5 i$0_2_1) (loc a_2@@5 i$0_2_2))))
 :qid |stdinbpl.841:17|
 :skolemid |73|
 :pattern ( (neverTriggered4 i$0_2_1) (neverTriggered4 i$0_2_2))
))) (=> (forall ((i$0_2_1@@0 Int) (i$0_2_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i$0_2_1@@0 i$0_2_2@@0)) (and (<= left i$0_2_1@@0) (< i$0_2_1@@0 right_2))) (and (<= left i$0_2_2@@0) (< i$0_2_2@@0 right_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@5 i$0_2_1@@0) (loc a_2@@5 i$0_2_2@@0))))
 :qid |stdinbpl.841:17|
 :skolemid |73|
 :pattern ( (neverTriggered4 i$0_2_1@@0) (neverTriggered4 i$0_2_2@@0))
)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (forall ((i$0_2_1@@1 Int) ) (!  (=> (and (<= left i$0_2_1@@1) (< i$0_2_1@@1 right_2)) (>= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| Mask@0) (loc a_2@@5 i$0_2_1@@1) val) FullPerm))
 :qid |stdinbpl.848:17|
 :skolemid |74|
 :pattern ( (loc a_2@@5 i$0_2_1@@1))
 :pattern ( (loc a_2@@5 i$0_2_1@@1))
))) (=> (forall ((i$0_2_1@@2 Int) ) (!  (=> (and (<= left i$0_2_1@@2) (< i$0_2_1@@2 right_2)) (>= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| Mask@0) (loc a_2@@5 i$0_2_1@@2) val) FullPerm))
 :qid |stdinbpl.848:17|
 :skolemid |74|
 :pattern ( (loc a_2@@5 i$0_2_1@@2))
 :pattern ( (loc a_2@@5 i$0_2_1@@2))
)) (=> (forall ((i$0_2_1@@3 Int) ) (!  (=> (and (and (<= left i$0_2_1@@3) (< i$0_2_1@@3 right_2)) (< NoPerm FullPerm)) (and (qpRange4 (loc a_2@@5 i$0_2_1@@3)) (= (invRecv4 (loc a_2@@5 i$0_2_1@@3)) i$0_2_1@@3)))
 :qid |stdinbpl.854:22|
 :skolemid |75|
 :pattern ( (loc a_2@@5 i$0_2_1@@3))
 :pattern ( (loc a_2@@5 i$0_2_1@@3))
)) (=> (and (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (<= left (invRecv4 o_9@@6)) (< (invRecv4 o_9@@6) right_2)) (and (< NoPerm FullPerm) (qpRange4 o_9@@6))) (= (loc a_2@@5 (invRecv4 o_9@@6)) o_9@@6))
 :qid |stdinbpl.858:22|
 :skolemid |76|
 :pattern ( (invRecv4 o_9@@6))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (<= left (invRecv4 o_9@@7)) (< (invRecv4 o_9@@7) right_2)) (and (< NoPerm FullPerm) (qpRange4 o_9@@7))) (and (= (loc a_2@@5 (invRecv4 o_9@@7)) o_9@@7) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@5) o_9@@7 val) (- (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| Mask@0) o_9@@7 val) FullPerm)))) (=> (not (and (and (<= left (invRecv4 o_9@@7)) (< (invRecv4 o_9@@7) right_2)) (and (< NoPerm FullPerm) (qpRange4 o_9@@7)))) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@5) o_9@@7 val) (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| Mask@0) o_9@@7 val))))
 :qid |stdinbpl.864:22|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@5) o_9@@7 val))
))) (=> (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_11178_53) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| Mask@0) o_9@@8 f_5@@4) (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| QPMask@5) o_9@@8 f_5@@4)))
 :qid |stdinbpl.870:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| QPMask@5) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_11191_11192) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| Mask@0) o_9@@9 f_5@@5) (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| QPMask@5) o_9@@9 f_5@@5)))
 :qid |stdinbpl.870:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| QPMask@5) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_14640_1596) ) (!  (=> (not (= f_5@@6 val)) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| Mask@0) o_9@@10 f_5@@6) (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@5) o_9@@10 f_5@@6)))
 :qid |stdinbpl.870:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@5) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_7519_32611) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| Mask@0) o_9@@11 f_5@@7) (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| QPMask@5) o_9@@11 f_5@@7)))
 :qid |stdinbpl.870:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| QPMask@5) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_7519_32744) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| Mask@0) o_9@@12 f_5@@8) (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| QPMask@5) o_9@@12 f_5@@8)))
 :qid |stdinbpl.870:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| QPMask@5) o_9@@12 f_5@@8))
))) (and (and (=> (= (ControlFlow 0 32) 24) anon62_Else_correct) (=> (= (ControlFlow 0 32) 31) anon63_Then_correct)) (=> (= (ControlFlow 0 32) 26) anon63_Else_correct))))))))))))
(let ((anon15_correct  (=> (and (and (state Heap@1 QPMask@0) (= Mask@0 QPMask@0)) (and (= Heap@2 Heap@1) (= (ControlFlow 0 54) 32))) anon37_correct)))
(let ((anon51_Else_correct  (=> (not (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@20) (loc a_2@@5 left) val) from_1)) (=> (and (= Heap@1 Heap@@20) (= (ControlFlow 0 57) 54)) anon15_correct))))
(let ((anon51_Then_correct  (=> (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@20) (loc a_2@@5 left) val) from_1) (and (=> (= (ControlFlow 0 55) (- 0 56)) (= FullPerm (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@0) (loc a_2@@5 left) val))) (=> (= FullPerm (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@0) (loc a_2@@5 left) val)) (=> (and (and (= Heap@0 (PolymorphicMapType_11118 (|PolymorphicMapType_11118_7353_53#PolymorphicMapType_11118| Heap@@20) (|PolymorphicMapType_11118_7356_7357#PolymorphicMapType_11118| Heap@@20) (store (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@20) (loc a_2@@5 left) val to_1) (|PolymorphicMapType_11118_7519_32788#PolymorphicMapType_11118| Heap@@20) (|PolymorphicMapType_11118_11178_32611#PolymorphicMapType_11118| Heap@@20))) (state Heap@0 QPMask@0)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 55) 54))) anon15_correct))))))
(let ((anon50_Then_correct  (=> (<= (- right_2 left) 1) (and (=> (= (ControlFlow 0 58) (- 0 59)) (HasDirectPerm_7519_1596 QPMask@0 (loc a_2@@5 left) val)) (=> (HasDirectPerm_7519_1596 QPMask@0 (loc a_2@@5 left) val) (and (=> (= (ControlFlow 0 58) 55) anon51_Then_correct) (=> (= (ControlFlow 0 58) 57) anon51_Else_correct)))))))
(let ((anon59_Else_correct  (=> (and (forall ((i$7_1 Int) ) (!  (=> (and (<= mid@0 i$7_1) (< i$7_1 right_2)) (ite (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@20) (loc a_2@@5 i$7_1) val) from_1) (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| ExhaleHeap@1) (loc a_2@@5 i$7_1) val) to_1) (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| ExhaleHeap@1) (loc a_2@@5 i$7_1) val) (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@20) (loc a_2@@5 i$7_1) val))))
 :qid |stdinbpl.822:24|
 :skolemid |72|
 :pattern ( (loc a_2@@5 i$7_1))
)) (state ExhaleHeap@1 QPMask@4)) (=> (and (and (state ExhaleHeap@1 QPMask@4) (= Mask@0 QPMask@4)) (and (= Heap@2 ExhaleHeap@1) (= (ControlFlow 0 35) 32))) anon37_correct))))
(let ((anon35_correct true))
(let ((anon61_Else_correct  (=> (not (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@20) (loc a_2@@5 i$7) val) from_1)) (and (=> (= (ControlFlow 0 19) (- 0 21)) (HasDirectPerm_7519_1596 QPMask@4 (loc a_2@@5 i$7) val)) (=> (HasDirectPerm_7519_1596 QPMask@4 (loc a_2@@5 i$7) val) (and (=> (= (ControlFlow 0 19) (- 0 20)) (HasDirectPerm_7519_1596 QPMask@0 (loc a_2@@5 i$7) val)) (=> (HasDirectPerm_7519_1596 QPMask@0 (loc a_2@@5 i$7) val) (=> (= (ControlFlow 0 19) 15) anon35_correct))))))))
(let ((anon61_Then_correct  (=> (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@20) (loc a_2@@5 i$7) val) from_1) (and (=> (= (ControlFlow 0 17) (- 0 18)) (HasDirectPerm_7519_1596 QPMask@4 (loc a_2@@5 i$7) val)) (=> (HasDirectPerm_7519_1596 QPMask@4 (loc a_2@@5 i$7) val) (=> (= (ControlFlow 0 17) 15) anon35_correct))))))
(let ((anon60_Then_correct  (=> (and (<= mid@0 i$7) (< i$7 right_2)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (HasDirectPerm_7519_1596 QPMask@0 (loc a_2@@5 i$7) val)) (=> (HasDirectPerm_7519_1596 QPMask@0 (loc a_2@@5 i$7) val) (and (=> (= (ControlFlow 0 22) 17) anon61_Then_correct) (=> (= (ControlFlow 0 22) 19) anon61_Else_correct)))))))
(let ((anon60_Else_correct  (=> (and (not (and (<= mid@0 i$7) (< i$7 right_2))) (= (ControlFlow 0 16) 15)) anon35_correct)))
(let ((anon58_Else_correct  (and (=> (= (ControlFlow 0 36) (- 0 37)) (forall ((i$6_1 Int) (i$6_1_1 Int) ) (!  (=> (and (and (and (and (not (= i$6_1 i$6_1_1)) (and (<= mid@0 i$6_1) (< i$6_1 right_2))) (and (<= mid@0 i$6_1_1) (< i$6_1_1 right_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@5 i$6_1) (loc a_2@@5 i$6_1_1))))
 :qid |stdinbpl.763:19|
 :skolemid |66|
))) (=> (forall ((i$6_1@@0 Int) (i$6_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i$6_1@@0 i$6_1_1@@0)) (and (<= mid@0 i$6_1@@0) (< i$6_1@@0 right_2))) (and (<= mid@0 i$6_1_1@@0) (< i$6_1_1@@0 right_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@5 i$6_1@@0) (loc a_2@@5 i$6_1_1@@0))))
 :qid |stdinbpl.763:19|
 :skolemid |66|
)) (=> (and (and (forall ((i$6_1@@1 Int) ) (!  (=> (and (and (<= mid@0 i$6_1@@1) (< i$6_1@@1 right_2)) (< NoPerm FullPerm)) (and (qpRange8 (loc a_2@@5 i$6_1@@1)) (= (invRecv8 (loc a_2@@5 i$6_1@@1)) i$6_1@@1)))
 :qid |stdinbpl.769:26|
 :skolemid |67|
 :pattern ( (loc a_2@@5 i$6_1@@1))
 :pattern ( (loc a_2@@5 i$6_1@@1))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (and (<= mid@0 (invRecv8 o_9@@13)) (< (invRecv8 o_9@@13) right_2)) (< NoPerm FullPerm)) (qpRange8 o_9@@13)) (= (loc a_2@@5 (invRecv8 o_9@@13)) o_9@@13))
 :qid |stdinbpl.773:26|
 :skolemid |68|
 :pattern ( (invRecv8 o_9@@13))
))) (and (forall ((i$6_1@@2 Int) ) (!  (=> (and (<= mid@0 i$6_1@@2) (< i$6_1@@2 right_2)) (not (= (loc a_2@@5 i$6_1@@2) null)))
 :qid |stdinbpl.779:26|
 :skolemid |69|
 :pattern ( (loc a_2@@5 i$6_1@@2))
 :pattern ( (loc a_2@@5 i$6_1@@2))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (and (<= mid@0 (invRecv8 o_9@@14)) (< (invRecv8 o_9@@14) right_2)) (< NoPerm FullPerm)) (qpRange8 o_9@@14)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@5 (invRecv8 o_9@@14)) o_9@@14)) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@4) o_9@@14 val) (+ (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@3) o_9@@14 val) FullPerm)))) (=> (not (and (and (and (<= mid@0 (invRecv8 o_9@@14)) (< (invRecv8 o_9@@14) right_2)) (< NoPerm FullPerm)) (qpRange8 o_9@@14))) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@4) o_9@@14 val) (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@3) o_9@@14 val))))
 :qid |stdinbpl.785:26|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@4) o_9@@14 val))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_11178_53) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| QPMask@3) o_9@@15 f_5@@9) (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| QPMask@4) o_9@@15 f_5@@9)))
 :qid |stdinbpl.789:33|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| QPMask@3) o_9@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| QPMask@4) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_11191_11192) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| QPMask@3) o_9@@16 f_5@@10) (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| QPMask@4) o_9@@16 f_5@@10)))
 :qid |stdinbpl.789:33|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| QPMask@3) o_9@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| QPMask@4) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_14640_1596) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@3) o_9@@17 f_5@@11) (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@4) o_9@@17 f_5@@11)))
 :qid |stdinbpl.789:33|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@3) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@4) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_7519_32611) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| QPMask@3) o_9@@18 f_5@@12) (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| QPMask@4) o_9@@18 f_5@@12)))
 :qid |stdinbpl.789:33|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| QPMask@3) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| QPMask@4) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_7519_32744) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| QPMask@3) o_9@@19 f_5@@13) (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| QPMask@4) o_9@@19 f_5@@13)))
 :qid |stdinbpl.789:33|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| QPMask@3) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| QPMask@4) o_9@@19 f_5@@13))
))) (state ExhaleHeap@1 QPMask@4)) (and (state ExhaleHeap@1 QPMask@4) (state ExhaleHeap@1 QPMask@4))) (and (and (=> (= (ControlFlow 0 36) 35) anon59_Else_correct) (=> (= (ControlFlow 0 36) 22) anon60_Then_correct)) (=> (= (ControlFlow 0 36) 16) anon60_Else_correct))))))))
(let ((anon58_Then_correct true))
(let ((anon55_Else_correct  (=> (forall ((i$5_1 Int) ) (!  (=> (and (<= left i$5_1) (< i$5_1 mid@0)) (ite (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@20) (loc a_2@@5 i$5_1) val) from_1) (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| ExhaleHeap@1) (loc a_2@@5 i$5_1) val) to_1) (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| ExhaleHeap@1) (loc a_2@@5 i$5_1) val) (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@20) (loc a_2@@5 i$5_1) val))))
 :qid |stdinbpl.745:24|
 :skolemid |65|
 :pattern ( (loc a_2@@5 i$5_1))
)) (=> (and (state ExhaleHeap@1 QPMask@3) (state ExhaleHeap@1 QPMask@3)) (and (=> (= (ControlFlow 0 38) 14) anon58_Then_correct) (=> (= (ControlFlow 0 38) 36) anon58_Else_correct))))))
(let ((anon27_correct true))
(let ((anon57_Else_correct  (=> (not (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@20) (loc a_2@@5 i$5) val) from_1)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (HasDirectPerm_7519_1596 QPMask@3 (loc a_2@@5 i$5) val)) (=> (HasDirectPerm_7519_1596 QPMask@3 (loc a_2@@5 i$5) val) (and (=> (= (ControlFlow 0 9) (- 0 10)) (HasDirectPerm_7519_1596 QPMask@0 (loc a_2@@5 i$5) val)) (=> (HasDirectPerm_7519_1596 QPMask@0 (loc a_2@@5 i$5) val) (=> (= (ControlFlow 0 9) 5) anon27_correct))))))))
(let ((anon57_Then_correct  (=> (= (select (|PolymorphicMapType_11118_7519_1596#PolymorphicMapType_11118| Heap@@20) (loc a_2@@5 i$5) val) from_1) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_7519_1596 QPMask@3 (loc a_2@@5 i$5) val)) (=> (HasDirectPerm_7519_1596 QPMask@3 (loc a_2@@5 i$5) val) (=> (= (ControlFlow 0 7) 5) anon27_correct))))))
(let ((anon56_Then_correct  (=> (and (<= left i$5) (< i$5 mid@0)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_7519_1596 QPMask@0 (loc a_2@@5 i$5) val)) (=> (HasDirectPerm_7519_1596 QPMask@0 (loc a_2@@5 i$5) val) (and (=> (= (ControlFlow 0 12) 7) anon57_Then_correct) (=> (= (ControlFlow 0 12) 9) anon57_Else_correct)))))))
(let ((anon56_Else_correct  (=> (and (not (and (<= left i$5) (< i$5 mid@0))) (= (ControlFlow 0 6) 5)) anon27_correct)))
(let ((anon54_Else_correct  (and (=> (= (ControlFlow 0 39) (- 0 40)) (forall ((i$4_1 Int) (i$4_1_1 Int) ) (!  (=> (and (and (and (and (not (= i$4_1 i$4_1_1)) (and (<= left i$4_1) (< i$4_1 mid@0))) (and (<= left i$4_1_1) (< i$4_1_1 mid@0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@5 i$4_1) (loc a_2@@5 i$4_1_1))))
 :qid |stdinbpl.686:19|
 :skolemid |59|
))) (=> (forall ((i$4_1@@0 Int) (i$4_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i$4_1@@0 i$4_1_1@@0)) (and (<= left i$4_1@@0) (< i$4_1@@0 mid@0))) (and (<= left i$4_1_1@@0) (< i$4_1_1@@0 mid@0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@5 i$4_1@@0) (loc a_2@@5 i$4_1_1@@0))))
 :qid |stdinbpl.686:19|
 :skolemid |59|
)) (=> (and (and (forall ((i$4_1@@1 Int) ) (!  (=> (and (and (<= left i$4_1@@1) (< i$4_1@@1 mid@0)) (< NoPerm FullPerm)) (and (qpRange7 (loc a_2@@5 i$4_1@@1)) (= (invRecv7 (loc a_2@@5 i$4_1@@1)) i$4_1@@1)))
 :qid |stdinbpl.692:26|
 :skolemid |60|
 :pattern ( (loc a_2@@5 i$4_1@@1))
 :pattern ( (loc a_2@@5 i$4_1@@1))
)) (forall ((o_9@@20 T@Ref) ) (!  (=> (and (and (and (<= left (invRecv7 o_9@@20)) (< (invRecv7 o_9@@20) mid@0)) (< NoPerm FullPerm)) (qpRange7 o_9@@20)) (= (loc a_2@@5 (invRecv7 o_9@@20)) o_9@@20))
 :qid |stdinbpl.696:26|
 :skolemid |61|
 :pattern ( (invRecv7 o_9@@20))
))) (and (forall ((i$4_1@@2 Int) ) (!  (=> (and (<= left i$4_1@@2) (< i$4_1@@2 mid@0)) (not (= (loc a_2@@5 i$4_1@@2) null)))
 :qid |stdinbpl.702:26|
 :skolemid |62|
 :pattern ( (loc a_2@@5 i$4_1@@2))
 :pattern ( (loc a_2@@5 i$4_1@@2))
)) (forall ((o_9@@21 T@Ref) ) (!  (and (=> (and (and (and (<= left (invRecv7 o_9@@21)) (< (invRecv7 o_9@@21) mid@0)) (< NoPerm FullPerm)) (qpRange7 o_9@@21)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@5 (invRecv7 o_9@@21)) o_9@@21)) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@3) o_9@@21 val) (+ (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@2) o_9@@21 val) FullPerm)))) (=> (not (and (and (and (<= left (invRecv7 o_9@@21)) (< (invRecv7 o_9@@21) mid@0)) (< NoPerm FullPerm)) (qpRange7 o_9@@21))) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@3) o_9@@21 val) (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@2) o_9@@21 val))))
 :qid |stdinbpl.708:26|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@3) o_9@@21 val))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_11178_53) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| QPMask@2) o_9@@22 f_5@@14) (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| QPMask@3) o_9@@22 f_5@@14)))
 :qid |stdinbpl.712:33|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| QPMask@2) o_9@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| QPMask@3) o_9@@22 f_5@@14))
)) (forall ((o_9@@23 T@Ref) (f_5@@15 T@Field_11191_11192) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| QPMask@2) o_9@@23 f_5@@15) (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| QPMask@3) o_9@@23 f_5@@15)))
 :qid |stdinbpl.712:33|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| QPMask@2) o_9@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| QPMask@3) o_9@@23 f_5@@15))
))) (forall ((o_9@@24 T@Ref) (f_5@@16 T@Field_14640_1596) ) (!  (=> (not (= f_5@@16 val)) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@2) o_9@@24 f_5@@16) (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@3) o_9@@24 f_5@@16)))
 :qid |stdinbpl.712:33|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@2) o_9@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@3) o_9@@24 f_5@@16))
))) (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_7519_32611) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| QPMask@2) o_9@@25 f_5@@17) (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| QPMask@3) o_9@@25 f_5@@17)))
 :qid |stdinbpl.712:33|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| QPMask@2) o_9@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| QPMask@3) o_9@@25 f_5@@17))
))) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_7519_32744) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| QPMask@2) o_9@@26 f_5@@18) (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| QPMask@3) o_9@@26 f_5@@18)))
 :qid |stdinbpl.712:33|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| QPMask@2) o_9@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| QPMask@3) o_9@@26 f_5@@18))
))) (state ExhaleHeap@1 QPMask@3)) (and (state ExhaleHeap@1 QPMask@3) (state ExhaleHeap@1 QPMask@3))) (and (and (=> (= (ControlFlow 0 39) 38) anon55_Else_correct) (=> (= (ControlFlow 0 39) 12) anon56_Then_correct)) (=> (= (ControlFlow 0 39) 6) anon56_Else_correct))))))))
(let ((anon54_Then_correct true))
(let ((anon53_Else_correct  (and (=> (= (ControlFlow 0 41) (- 0 43)) (forall ((i$3_1 Int) (i$3_1_1 Int) ) (!  (=> (and (and (and (and (not (= i$3_1 i$3_1_1)) (and (<= mid@0 i$3_1) (< i$3_1 right_2))) (and (<= mid@0 i$3_1_1) (< i$3_1_1 right_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@5 i$3_1) (loc a_2@@5 i$3_1_1))))
 :qid |stdinbpl.635:21|
 :skolemid |53|
 :pattern ( (neverTriggered6 i$3_1) (neverTriggered6 i$3_1_1))
))) (=> (forall ((i$3_1@@0 Int) (i$3_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i$3_1@@0 i$3_1_1@@0)) (and (<= mid@0 i$3_1@@0) (< i$3_1@@0 right_2))) (and (<= mid@0 i$3_1_1@@0) (< i$3_1_1@@0 right_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@5 i$3_1@@0) (loc a_2@@5 i$3_1_1@@0))))
 :qid |stdinbpl.635:21|
 :skolemid |53|
 :pattern ( (neverTriggered6 i$3_1@@0) (neverTriggered6 i$3_1_1@@0))
)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (forall ((i$3_1@@1 Int) ) (!  (=> (and (<= mid@0 i$3_1@@1) (< i$3_1@@1 right_2)) (>= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@1) (loc a_2@@5 i$3_1@@1) val) FullPerm))
 :qid |stdinbpl.642:21|
 :skolemid |54|
 :pattern ( (loc a_2@@5 i$3_1@@1))
 :pattern ( (loc a_2@@5 i$3_1@@1))
))) (=> (forall ((i$3_1@@2 Int) ) (!  (=> (and (<= mid@0 i$3_1@@2) (< i$3_1@@2 right_2)) (>= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@1) (loc a_2@@5 i$3_1@@2) val) FullPerm))
 :qid |stdinbpl.642:21|
 :skolemid |54|
 :pattern ( (loc a_2@@5 i$3_1@@2))
 :pattern ( (loc a_2@@5 i$3_1@@2))
)) (=> (forall ((i$3_1@@3 Int) ) (!  (=> (and (and (<= mid@0 i$3_1@@3) (< i$3_1@@3 right_2)) (< NoPerm FullPerm)) (and (qpRange6 (loc a_2@@5 i$3_1@@3)) (= (invRecv6 (loc a_2@@5 i$3_1@@3)) i$3_1@@3)))
 :qid |stdinbpl.648:26|
 :skolemid |55|
 :pattern ( (loc a_2@@5 i$3_1@@3))
 :pattern ( (loc a_2@@5 i$3_1@@3))
)) (=> (and (forall ((o_9@@27 T@Ref) ) (!  (=> (and (and (<= mid@0 (invRecv6 o_9@@27)) (< (invRecv6 o_9@@27) right_2)) (and (< NoPerm FullPerm) (qpRange6 o_9@@27))) (= (loc a_2@@5 (invRecv6 o_9@@27)) o_9@@27))
 :qid |stdinbpl.652:26|
 :skolemid |56|
 :pattern ( (invRecv6 o_9@@27))
)) (forall ((o_9@@28 T@Ref) ) (!  (and (=> (and (and (<= mid@0 (invRecv6 o_9@@28)) (< (invRecv6 o_9@@28) right_2)) (and (< NoPerm FullPerm) (qpRange6 o_9@@28))) (and (= (loc a_2@@5 (invRecv6 o_9@@28)) o_9@@28) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@2) o_9@@28 val) (- (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@1) o_9@@28 val) FullPerm)))) (=> (not (and (and (<= mid@0 (invRecv6 o_9@@28)) (< (invRecv6 o_9@@28) right_2)) (and (< NoPerm FullPerm) (qpRange6 o_9@@28)))) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@2) o_9@@28 val) (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@1) o_9@@28 val))))
 :qid |stdinbpl.658:26|
 :skolemid |57|
 :pattern ( (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@2) o_9@@28 val))
))) (=> (and (and (and (and (and (forall ((o_9@@29 T@Ref) (f_5@@19 T@Field_11178_53) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| QPMask@1) o_9@@29 f_5@@19) (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| QPMask@2) o_9@@29 f_5@@19)))
 :qid |stdinbpl.664:33|
 :skolemid |58|
 :pattern ( (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| QPMask@2) o_9@@29 f_5@@19))
)) (forall ((o_9@@30 T@Ref) (f_5@@20 T@Field_11191_11192) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| QPMask@1) o_9@@30 f_5@@20) (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| QPMask@2) o_9@@30 f_5@@20)))
 :qid |stdinbpl.664:33|
 :skolemid |58|
 :pattern ( (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| QPMask@2) o_9@@30 f_5@@20))
))) (forall ((o_9@@31 T@Ref) (f_5@@21 T@Field_14640_1596) ) (!  (=> (not (= f_5@@21 val)) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@1) o_9@@31 f_5@@21) (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@2) o_9@@31 f_5@@21)))
 :qid |stdinbpl.664:33|
 :skolemid |58|
 :pattern ( (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@2) o_9@@31 f_5@@21))
))) (forall ((o_9@@32 T@Ref) (f_5@@22 T@Field_7519_32611) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| QPMask@1) o_9@@32 f_5@@22) (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| QPMask@2) o_9@@32 f_5@@22)))
 :qid |stdinbpl.664:33|
 :skolemid |58|
 :pattern ( (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| QPMask@2) o_9@@32 f_5@@22))
))) (forall ((o_9@@33 T@Ref) (f_5@@23 T@Field_7519_32744) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| QPMask@1) o_9@@33 f_5@@23) (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| QPMask@2) o_9@@33 f_5@@23)))
 :qid |stdinbpl.664:33|
 :skolemid |58|
 :pattern ( (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| QPMask@2) o_9@@33 f_5@@23))
))) (and (IdenticalOnKnownLocations ExhaleHeap@0 ExhaleHeap@1 QPMask@2) (state ExhaleHeap@1 QPMask@2))) (and (=> (= (ControlFlow 0 41) 4) anon54_Then_correct) (=> (= (ControlFlow 0 41) 39) anon54_Else_correct)))))))))))
(let ((anon53_Then_correct true))
(let ((anon52_Else_correct  (and (=> (= (ControlFlow 0 44) (- 0 49)) (forall ((i$2_1 Int) (i$2_1_1 Int) ) (!  (=> (and (and (and (and (not (= i$2_1 i$2_1_1)) (and (<= left i$2_1) (< i$2_1 mid@0))) (and (<= left i$2_1_1) (< i$2_1_1 mid@0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@5 i$2_1) (loc a_2@@5 i$2_1_1))))
 :qid |stdinbpl.567:21|
 :skolemid |47|
 :pattern ( (neverTriggered5 i$2_1) (neverTriggered5 i$2_1_1))
))) (=> (forall ((i$2_1@@0 Int) (i$2_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i$2_1@@0 i$2_1_1@@0)) (and (<= left i$2_1@@0) (< i$2_1@@0 mid@0))) (and (<= left i$2_1_1@@0) (< i$2_1_1@@0 mid@0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@5 i$2_1@@0) (loc a_2@@5 i$2_1_1@@0))))
 :qid |stdinbpl.567:21|
 :skolemid |47|
 :pattern ( (neverTriggered5 i$2_1@@0) (neverTriggered5 i$2_1_1@@0))
)) (and (=> (= (ControlFlow 0 44) (- 0 48)) (forall ((i$2_1@@1 Int) ) (!  (=> (and (<= left i$2_1@@1) (< i$2_1@@1 mid@0)) (>= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@0) (loc a_2@@5 i$2_1@@1) val) FullPerm))
 :qid |stdinbpl.574:21|
 :skolemid |48|
 :pattern ( (loc a_2@@5 i$2_1@@1))
 :pattern ( (loc a_2@@5 i$2_1@@1))
))) (=> (forall ((i$2_1@@2 Int) ) (!  (=> (and (<= left i$2_1@@2) (< i$2_1@@2 mid@0)) (>= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@0) (loc a_2@@5 i$2_1@@2) val) FullPerm))
 :qid |stdinbpl.574:21|
 :skolemid |48|
 :pattern ( (loc a_2@@5 i$2_1@@2))
 :pattern ( (loc a_2@@5 i$2_1@@2))
)) (=> (forall ((i$2_1@@3 Int) ) (!  (=> (and (and (<= left i$2_1@@3) (< i$2_1@@3 mid@0)) (< NoPerm FullPerm)) (and (qpRange5 (loc a_2@@5 i$2_1@@3)) (= (invRecv5 (loc a_2@@5 i$2_1@@3)) i$2_1@@3)))
 :qid |stdinbpl.580:26|
 :skolemid |49|
 :pattern ( (loc a_2@@5 i$2_1@@3))
 :pattern ( (loc a_2@@5 i$2_1@@3))
)) (=> (and (forall ((o_9@@34 T@Ref) ) (!  (=> (and (and (<= left (invRecv5 o_9@@34)) (< (invRecv5 o_9@@34) mid@0)) (and (< NoPerm FullPerm) (qpRange5 o_9@@34))) (= (loc a_2@@5 (invRecv5 o_9@@34)) o_9@@34))
 :qid |stdinbpl.584:26|
 :skolemid |50|
 :pattern ( (invRecv5 o_9@@34))
)) (forall ((o_9@@35 T@Ref) ) (!  (and (=> (and (and (<= left (invRecv5 o_9@@35)) (< (invRecv5 o_9@@35) mid@0)) (and (< NoPerm FullPerm) (qpRange5 o_9@@35))) (and (= (loc a_2@@5 (invRecv5 o_9@@35)) o_9@@35) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@1) o_9@@35 val) (- (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@0) o_9@@35 val) FullPerm)))) (=> (not (and (and (<= left (invRecv5 o_9@@35)) (< (invRecv5 o_9@@35) mid@0)) (and (< NoPerm FullPerm) (qpRange5 o_9@@35)))) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@1) o_9@@35 val) (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@0) o_9@@35 val))))
 :qid |stdinbpl.590:26|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@1) o_9@@35 val))
))) (=> (and (and (and (and (and (forall ((o_9@@36 T@Ref) (f_5@@24 T@Field_11178_53) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| QPMask@0) o_9@@36 f_5@@24) (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| QPMask@1) o_9@@36 f_5@@24)))
 :qid |stdinbpl.596:33|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| QPMask@1) o_9@@36 f_5@@24))
)) (forall ((o_9@@37 T@Ref) (f_5@@25 T@Field_11191_11192) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| QPMask@0) o_9@@37 f_5@@25) (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| QPMask@1) o_9@@37 f_5@@25)))
 :qid |stdinbpl.596:33|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| QPMask@1) o_9@@37 f_5@@25))
))) (forall ((o_9@@38 T@Ref) (f_5@@26 T@Field_14640_1596) ) (!  (=> (not (= f_5@@26 val)) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@0) o_9@@38 f_5@@26) (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@1) o_9@@38 f_5@@26)))
 :qid |stdinbpl.596:33|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@1) o_9@@38 f_5@@26))
))) (forall ((o_9@@39 T@Ref) (f_5@@27 T@Field_7519_32611) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| QPMask@0) o_9@@39 f_5@@27) (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| QPMask@1) o_9@@39 f_5@@27)))
 :qid |stdinbpl.596:33|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| QPMask@1) o_9@@39 f_5@@27))
))) (forall ((o_9@@40 T@Ref) (f_5@@28 T@Field_7519_32744) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| QPMask@0) o_9@@40 f_5@@28) (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| QPMask@1) o_9@@40 f_5@@28)))
 :qid |stdinbpl.596:33|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| QPMask@1) o_9@@40 f_5@@28))
))) (and (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@0 QPMask@1) (state ExhaleHeap@0 QPMask@1))) (and (=> (= (ControlFlow 0 44) (- 0 47)) (<= 0 mid@0)) (=> (<= 0 mid@0) (and (=> (= (ControlFlow 0 44) (- 0 46)) (< mid@0 right_2)) (=> (< mid@0 right_2) (and (=> (= (ControlFlow 0 44) (- 0 45)) (<= right_2 (len a_2@@5))) (=> (<= right_2 (len a_2@@5)) (=> (state ExhaleHeap@0 QPMask@1) (and (=> (= (ControlFlow 0 44) 3) anon53_Then_correct) (=> (= (ControlFlow 0 44) 41) anon53_Else_correct))))))))))))))))))
(let ((anon52_Then_correct true))
(let ((anon50_Else_correct  (=> (< 1 (- right_2 left)) (=> (and (= mid@0 (+ left (div (- right_2 left) 2))) (state Heap@@20 QPMask@0)) (and (=> (= (ControlFlow 0 50) (- 0 53)) (<= 0 left)) (=> (<= 0 left) (and (=> (= (ControlFlow 0 50) (- 0 52)) (< left mid@0)) (=> (< left mid@0) (and (=> (= (ControlFlow 0 50) (- 0 51)) (<= mid@0 (len a_2@@5))) (=> (<= mid@0 (len a_2@@5)) (=> (state Heap@@20 QPMask@0) (and (=> (= (ControlFlow 0 50) 2) anon52_Then_correct) (=> (= (ControlFlow 0 50) 44) anon52_Else_correct)))))))))))))
(let ((anon44_Else_correct  (and (=> (= (ControlFlow 0 74) (- 0 75)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (<= left i_1) (< i_1 right_2))) (and (<= left i_1_1) (< i_1_1 right_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@5 i_1) (loc a_2@@5 i_1_1))))
 :qid |stdinbpl.405:15|
 :skolemid |34|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (<= left i_1@@0) (< i_1@@0 right_2))) (and (<= left i_1_1@@0) (< i_1_1@@0 right_2))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@5 i_1@@0) (loc a_2@@5 i_1_1@@0))))
 :qid |stdinbpl.405:15|
 :skolemid |34|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (and (<= left i_1@@1) (< i_1@@1 right_2)) (< NoPerm FullPerm)) (and (qpRange2 (loc a_2@@5 i_1@@1)) (= (invRecv2 (loc a_2@@5 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.411:22|
 :skolemid |35|
 :pattern ( (loc a_2@@5 i_1@@1))
 :pattern ( (loc a_2@@5 i_1@@1))
)) (forall ((o_9@@41 T@Ref) ) (!  (=> (and (and (and (<= left (invRecv2 o_9@@41)) (< (invRecv2 o_9@@41) right_2)) (< NoPerm FullPerm)) (qpRange2 o_9@@41)) (= (loc a_2@@5 (invRecv2 o_9@@41)) o_9@@41))
 :qid |stdinbpl.415:22|
 :skolemid |36|
 :pattern ( (invRecv2 o_9@@41))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (and (<= left i_1@@2) (< i_1@@2 right_2)) (not (= (loc a_2@@5 i_1@@2) null)))
 :qid |stdinbpl.421:22|
 :skolemid |37|
 :pattern ( (loc a_2@@5 i_1@@2))
 :pattern ( (loc a_2@@5 i_1@@2))
)) (forall ((o_9@@42 T@Ref) ) (!  (and (=> (and (and (and (<= left (invRecv2 o_9@@42)) (< (invRecv2 o_9@@42) right_2)) (< NoPerm FullPerm)) (qpRange2 o_9@@42)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@5 (invRecv2 o_9@@42)) o_9@@42)) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@0) o_9@@42 val) (+ (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| ZeroMask) o_9@@42 val) FullPerm)))) (=> (not (and (and (and (<= left (invRecv2 o_9@@42)) (< (invRecv2 o_9@@42) right_2)) (< NoPerm FullPerm)) (qpRange2 o_9@@42))) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@0) o_9@@42 val) (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| ZeroMask) o_9@@42 val))))
 :qid |stdinbpl.427:22|
 :skolemid |38|
 :pattern ( (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@0) o_9@@42 val))
)))) (=> (and (and (and (and (and (forall ((o_9@@43 T@Ref) (f_5@@29 T@Field_11178_53) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| ZeroMask) o_9@@43 f_5@@29) (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| QPMask@0) o_9@@43 f_5@@29)))
 :qid |stdinbpl.431:29|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| ZeroMask) o_9@@43 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_11139_7519_53#PolymorphicMapType_11139| QPMask@0) o_9@@43 f_5@@29))
)) (forall ((o_9@@44 T@Ref) (f_5@@30 T@Field_11191_11192) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| ZeroMask) o_9@@44 f_5@@30) (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| QPMask@0) o_9@@44 f_5@@30)))
 :qid |stdinbpl.431:29|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| ZeroMask) o_9@@44 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_11139_7519_11192#PolymorphicMapType_11139| QPMask@0) o_9@@44 f_5@@30))
))) (forall ((o_9@@45 T@Ref) (f_5@@31 T@Field_14640_1596) ) (!  (=> (not (= f_5@@31 val)) (= (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| ZeroMask) o_9@@45 f_5@@31) (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@0) o_9@@45 f_5@@31)))
 :qid |stdinbpl.431:29|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| ZeroMask) o_9@@45 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_11139_7519_1596#PolymorphicMapType_11139| QPMask@0) o_9@@45 f_5@@31))
))) (forall ((o_9@@46 T@Ref) (f_5@@32 T@Field_7519_32611) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| ZeroMask) o_9@@46 f_5@@32) (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| QPMask@0) o_9@@46 f_5@@32)))
 :qid |stdinbpl.431:29|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| ZeroMask) o_9@@46 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_11139_7519_32611#PolymorphicMapType_11139| QPMask@0) o_9@@46 f_5@@32))
))) (forall ((o_9@@47 T@Ref) (f_5@@33 T@Field_7519_32744) ) (!  (=> true (= (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| ZeroMask) o_9@@47 f_5@@33) (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| QPMask@0) o_9@@47 f_5@@33)))
 :qid |stdinbpl.431:29|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| ZeroMask) o_9@@47 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_11139_7519_36866#PolymorphicMapType_11139| QPMask@0) o_9@@47 f_5@@33))
))) (and (state Heap@@20 QPMask@0) (state Heap@@20 QPMask@0))) (and (and (=> (= (ControlFlow 0 74) 73) anon45_Then_correct) (=> (= (ControlFlow 0 74) 58) anon50_Then_correct)) (=> (= (ControlFlow 0 74) 50) anon50_Else_correct))))))))
(let ((anon44_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@20 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (<= 0 left) (< left right_2)) (and (<= right_2 (len a_2@@5)) (state Heap@@20 ZeroMask))) (and (=> (= (ControlFlow 0 76) 1) anon44_Then_correct) (=> (= (ControlFlow 0 76) 74) anon44_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 77) 76) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
