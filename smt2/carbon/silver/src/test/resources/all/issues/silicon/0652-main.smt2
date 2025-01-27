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
(declare-sort T@Field_13596_53 0)
(declare-sort T@Field_13609_13610 0)
(declare-sort T@Field_17066_1692 0)
(declare-sort T@Field_8991_41694 0)
(declare-sort T@Field_8991_41561 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_13557 0)) (((PolymorphicMapType_13557 (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| (Array T@Ref T@Field_17066_1692 Real)) (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| (Array T@Ref T@Field_13596_53 Real)) (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| (Array T@Ref T@Field_13609_13610 Real)) (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| (Array T@Ref T@Field_8991_41561 Real)) (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| (Array T@Ref T@Field_8991_41694 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14085 0)) (((PolymorphicMapType_14085 (|PolymorphicMapType_14085_13596_53#PolymorphicMapType_14085| (Array T@Ref T@Field_13596_53 Bool)) (|PolymorphicMapType_14085_13596_13610#PolymorphicMapType_14085| (Array T@Ref T@Field_13609_13610 Bool)) (|PolymorphicMapType_14085_13596_1692#PolymorphicMapType_14085| (Array T@Ref T@Field_17066_1692 Bool)) (|PolymorphicMapType_14085_13596_41561#PolymorphicMapType_14085| (Array T@Ref T@Field_8991_41561 Bool)) (|PolymorphicMapType_14085_13596_42872#PolymorphicMapType_14085| (Array T@Ref T@Field_8991_41694 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13536 0)) (((PolymorphicMapType_13536 (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| (Array T@Ref T@Field_13596_53 Bool)) (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| (Array T@Ref T@Field_13609_13610 T@Ref)) (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| (Array T@Ref T@Field_17066_1692 Int)) (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| (Array T@Ref T@Field_8991_41694 T@PolymorphicMapType_14085)) (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| (Array T@Ref T@Field_8991_41561 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_13596_53)
(declare-fun vint_1 () T@Field_17066_1692)
(declare-fun succHeap (T@PolymorphicMapType_13536 T@PolymorphicMapType_13536) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_13536 T@PolymorphicMapType_13536) Bool)
(declare-fun state (T@PolymorphicMapType_13536 T@PolymorphicMapType_13557) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_13557) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_14085)
(declare-sort T@arrayDomainType 0)
(declare-fun |aloc'| (T@PolymorphicMapType_13536 T@arrayDomainType Int) T@Ref)
(declare-fun dummyFunction_9016 (T@Ref) Bool)
(declare-fun |aloc#triggerStateless| (T@arrayDomainType Int) T@Ref)
(declare-fun |aloc#frame| (T@FrameType T@arrayDomainType Int) T@Ref)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_13536 T@PolymorphicMapType_13536 T@PolymorphicMapType_13557) Bool)
(declare-fun IsPredicateField_8991_41652 (T@Field_8991_41561) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8991 (T@Field_8991_41561) T@Field_8991_41694)
(declare-fun HasDirectPerm_8991_41625 (T@PolymorphicMapType_13557 T@Ref T@Field_8991_41561) Bool)
(declare-fun IsWandField_8991_43399 (T@Field_8991_41561) Bool)
(declare-fun WandMaskField_8991 (T@Field_8991_41561) T@Field_8991_41694)
(declare-fun dummyHeap () T@PolymorphicMapType_13536)
(declare-fun ZeroMask () T@PolymorphicMapType_13557)
(declare-fun InsidePredicate_13596_13596 (T@Field_8991_41561 T@FrameType T@Field_8991_41561 T@FrameType) Bool)
(declare-fun IsPredicateField_8991_1692 (T@Field_17066_1692) Bool)
(declare-fun IsWandField_8991_1692 (T@Field_17066_1692) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8991_46945 (T@Field_8991_41694) Bool)
(declare-fun IsWandField_8991_46961 (T@Field_8991_41694) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8991_13610 (T@Field_13609_13610) Bool)
(declare-fun IsWandField_8991_13610 (T@Field_13609_13610) Bool)
(declare-fun IsPredicateField_8991_53 (T@Field_13596_53) Bool)
(declare-fun IsWandField_8991_53 (T@Field_13596_53) Bool)
(declare-fun HasDirectPerm_8991_47399 (T@PolymorphicMapType_13557 T@Ref T@Field_8991_41694) Bool)
(declare-fun HasDirectPerm_8991_13610 (T@PolymorphicMapType_13557 T@Ref T@Field_13609_13610) Bool)
(declare-fun HasDirectPerm_8991_53 (T@PolymorphicMapType_13557 T@Ref T@Field_13596_53) Bool)
(declare-fun HasDirectPerm_8991_1692 (T@PolymorphicMapType_13557 T@Ref T@Field_17066_1692) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun aloc_1 (T@PolymorphicMapType_13536 T@arrayDomainType Int) T@Ref)
(declare-fun sumMask (T@PolymorphicMapType_13557 T@PolymorphicMapType_13557 T@PolymorphicMapType_13557) Bool)
(declare-fun alen (T@arrayDomainType) Int)
(declare-fun array_loc (T@arrayDomainType Int) T@Ref)
(declare-fun loc_inv_1 (T@Ref) T@arrayDomainType)
(declare-fun loc_inv_2 (T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(assert (forall ((Heap0 T@PolymorphicMapType_13536) (Heap1 T@PolymorphicMapType_13536) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_13536) (Mask T@PolymorphicMapType_13557) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_13536) (Heap1@@0 T@PolymorphicMapType_13536) (Heap2 T@PolymorphicMapType_13536) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8991_41694) ) (!  (not (select (|PolymorphicMapType_14085_13596_42872#PolymorphicMapType_14085| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14085_13596_42872#PolymorphicMapType_14085| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8991_41561) ) (!  (not (select (|PolymorphicMapType_14085_13596_41561#PolymorphicMapType_14085| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14085_13596_41561#PolymorphicMapType_14085| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_17066_1692) ) (!  (not (select (|PolymorphicMapType_14085_13596_1692#PolymorphicMapType_14085| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14085_13596_1692#PolymorphicMapType_14085| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_13609_13610) ) (!  (not (select (|PolymorphicMapType_14085_13596_13610#PolymorphicMapType_14085| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14085_13596_13610#PolymorphicMapType_14085| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_13596_53) ) (!  (not (select (|PolymorphicMapType_14085_13596_53#PolymorphicMapType_14085| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14085_13596_53#PolymorphicMapType_14085| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_13536) (a_2 T@arrayDomainType) (i Int) ) (! (dummyFunction_9016 (|aloc#triggerStateless| a_2 i))
 :qid |stdinbpl.292:15|
 :skolemid |25|
 :pattern ( (|aloc'| Heap@@0 a_2 i))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_13536) (Mask@@0 T@PolymorphicMapType_13557) (a_2@@0 T@arrayDomainType) (i@@0 Int) ) (!  (=> (state Heap@@1 Mask@@0) (= (|aloc'| Heap@@1 a_2@@0 i@@0) (|aloc#frame| EmptyFrame a_2@@0 i@@0)))
 :qid |stdinbpl.305:15|
 :skolemid |27|
 :pattern ( (state Heap@@1 Mask@@0) (|aloc'| Heap@@1 a_2@@0 i@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_13536) (ExhaleHeap T@PolymorphicMapType_13536) (Mask@@1 T@PolymorphicMapType_13557) (pm_f_18 T@Field_8991_41561) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_8991_41625 Mask@@1 null pm_f_18) (IsPredicateField_8991_41652 pm_f_18)) (= (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@2) null (PredicateMaskField_8991 pm_f_18)) (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| ExhaleHeap) null (PredicateMaskField_8991 pm_f_18)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (IsPredicateField_8991_41652 pm_f_18) (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| ExhaleHeap) null (PredicateMaskField_8991 pm_f_18)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_13536) (ExhaleHeap@@0 T@PolymorphicMapType_13536) (Mask@@2 T@PolymorphicMapType_13557) (pm_f_18@@0 T@Field_8991_41561) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_8991_41625 Mask@@2 null pm_f_18@@0) (IsWandField_8991_43399 pm_f_18@@0)) (= (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@3) null (WandMaskField_8991 pm_f_18@@0)) (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| ExhaleHeap@@0) null (WandMaskField_8991 pm_f_18@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (IsWandField_8991_43399 pm_f_18@@0) (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| ExhaleHeap@@0) null (WandMaskField_8991 pm_f_18@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_13536) (ExhaleHeap@@1 T@PolymorphicMapType_13536) (Mask@@3 T@PolymorphicMapType_13557) (o_39 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@4) o_39 $allocated) (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| ExhaleHeap@@1) o_39 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| ExhaleHeap@@1) o_39 $allocated))
)))
(assert (forall ((p T@Field_8991_41561) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_13596_13596 p v_1 p w))
 :qid |stdinbpl.237:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13596_13596 p v_1 p w))
)))
(assert  (not (IsPredicateField_8991_1692 vint_1)))
(assert  (not (IsWandField_8991_1692 vint_1)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_13536) (ExhaleHeap@@2 T@PolymorphicMapType_13536) (Mask@@4 T@PolymorphicMapType_13557) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_13557) (o_2@@4 T@Ref) (f_4@@4 T@Field_8991_41694) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_8991_46945 f_4@@4))) (not (IsWandField_8991_46961 f_4@@4))) (<= (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_13557) (o_2@@5 T@Ref) (f_4@@5 T@Field_8991_41561) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_8991_41652 f_4@@5))) (not (IsWandField_8991_43399 f_4@@5))) (<= (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_13557) (o_2@@6 T@Ref) (f_4@@6 T@Field_13609_13610) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_8991_13610 f_4@@6))) (not (IsWandField_8991_13610 f_4@@6))) (<= (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_13557) (o_2@@7 T@Ref) (f_4@@7 T@Field_13596_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_8991_53 f_4@@7))) (not (IsWandField_8991_53 f_4@@7))) (<= (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_13557) (o_2@@8 T@Ref) (f_4@@8 T@Field_17066_1692) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_8991_1692 f_4@@8))) (not (IsWandField_8991_1692 f_4@@8))) (<= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_13557) (o_2@@9 T@Ref) (f_4@@9 T@Field_8991_41694) ) (! (= (HasDirectPerm_8991_47399 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8991_47399 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_13557) (o_2@@10 T@Ref) (f_4@@10 T@Field_8991_41561) ) (! (= (HasDirectPerm_8991_41625 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8991_41625 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_13557) (o_2@@11 T@Ref) (f_4@@11 T@Field_13609_13610) ) (! (= (HasDirectPerm_8991_13610 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8991_13610 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_13557) (o_2@@12 T@Ref) (f_4@@12 T@Field_13596_53) ) (! (= (HasDirectPerm_8991_53 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8991_53 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_13557) (o_2@@13 T@Ref) (f_4@@13 T@Field_17066_1692) ) (! (= (HasDirectPerm_8991_1692 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8991_1692 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_13536) (ExhaleHeap@@3 T@PolymorphicMapType_13536) (Mask@@15 T@PolymorphicMapType_13557) (pm_f_18@@1 T@Field_8991_41561) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_8991_41625 Mask@@15 null pm_f_18@@1) (IsPredicateField_8991_41652 pm_f_18@@1)) (and (and (and (and (forall ((o2_18 T@Ref) (f_21 T@Field_13596_53) ) (!  (=> (select (|PolymorphicMapType_14085_13596_53#PolymorphicMapType_14085| (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@6) null (PredicateMaskField_8991 pm_f_18@@1))) o2_18 f_21) (= (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@6) o2_18 f_21) (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| ExhaleHeap@@3) o2_18 f_21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| ExhaleHeap@@3) o2_18 f_21))
)) (forall ((o2_18@@0 T@Ref) (f_21@@0 T@Field_13609_13610) ) (!  (=> (select (|PolymorphicMapType_14085_13596_13610#PolymorphicMapType_14085| (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@6) null (PredicateMaskField_8991 pm_f_18@@1))) o2_18@@0 f_21@@0) (= (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@6) o2_18@@0 f_21@@0) (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| ExhaleHeap@@3) o2_18@@0 f_21@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| ExhaleHeap@@3) o2_18@@0 f_21@@0))
))) (forall ((o2_18@@1 T@Ref) (f_21@@1 T@Field_17066_1692) ) (!  (=> (select (|PolymorphicMapType_14085_13596_1692#PolymorphicMapType_14085| (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@6) null (PredicateMaskField_8991 pm_f_18@@1))) o2_18@@1 f_21@@1) (= (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@6) o2_18@@1 f_21@@1) (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@@3) o2_18@@1 f_21@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@@3) o2_18@@1 f_21@@1))
))) (forall ((o2_18@@2 T@Ref) (f_21@@2 T@Field_8991_41561) ) (!  (=> (select (|PolymorphicMapType_14085_13596_41561#PolymorphicMapType_14085| (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@6) null (PredicateMaskField_8991 pm_f_18@@1))) o2_18@@2 f_21@@2) (= (select (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@6) o2_18@@2 f_21@@2) (select (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| ExhaleHeap@@3) o2_18@@2 f_21@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| ExhaleHeap@@3) o2_18@@2 f_21@@2))
))) (forall ((o2_18@@3 T@Ref) (f_21@@3 T@Field_8991_41694) ) (!  (=> (select (|PolymorphicMapType_14085_13596_42872#PolymorphicMapType_14085| (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@6) null (PredicateMaskField_8991 pm_f_18@@1))) o2_18@@3 f_21@@3) (= (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@6) o2_18@@3 f_21@@3) (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| ExhaleHeap@@3) o2_18@@3 f_21@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| ExhaleHeap@@3) o2_18@@3 f_21@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (IsPredicateField_8991_41652 pm_f_18@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_13536) (ExhaleHeap@@4 T@PolymorphicMapType_13536) (Mask@@16 T@PolymorphicMapType_13557) (pm_f_18@@2 T@Field_8991_41561) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_8991_41625 Mask@@16 null pm_f_18@@2) (IsWandField_8991_43399 pm_f_18@@2)) (and (and (and (and (forall ((o2_18@@4 T@Ref) (f_21@@4 T@Field_13596_53) ) (!  (=> (select (|PolymorphicMapType_14085_13596_53#PolymorphicMapType_14085| (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@7) null (WandMaskField_8991 pm_f_18@@2))) o2_18@@4 f_21@@4) (= (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@7) o2_18@@4 f_21@@4) (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| ExhaleHeap@@4) o2_18@@4 f_21@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| ExhaleHeap@@4) o2_18@@4 f_21@@4))
)) (forall ((o2_18@@5 T@Ref) (f_21@@5 T@Field_13609_13610) ) (!  (=> (select (|PolymorphicMapType_14085_13596_13610#PolymorphicMapType_14085| (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@7) null (WandMaskField_8991 pm_f_18@@2))) o2_18@@5 f_21@@5) (= (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@7) o2_18@@5 f_21@@5) (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| ExhaleHeap@@4) o2_18@@5 f_21@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| ExhaleHeap@@4) o2_18@@5 f_21@@5))
))) (forall ((o2_18@@6 T@Ref) (f_21@@6 T@Field_17066_1692) ) (!  (=> (select (|PolymorphicMapType_14085_13596_1692#PolymorphicMapType_14085| (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@7) null (WandMaskField_8991 pm_f_18@@2))) o2_18@@6 f_21@@6) (= (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@7) o2_18@@6 f_21@@6) (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@@4) o2_18@@6 f_21@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@@4) o2_18@@6 f_21@@6))
))) (forall ((o2_18@@7 T@Ref) (f_21@@7 T@Field_8991_41561) ) (!  (=> (select (|PolymorphicMapType_14085_13596_41561#PolymorphicMapType_14085| (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@7) null (WandMaskField_8991 pm_f_18@@2))) o2_18@@7 f_21@@7) (= (select (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@7) o2_18@@7 f_21@@7) (select (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| ExhaleHeap@@4) o2_18@@7 f_21@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| ExhaleHeap@@4) o2_18@@7 f_21@@7))
))) (forall ((o2_18@@8 T@Ref) (f_21@@8 T@Field_8991_41694) ) (!  (=> (select (|PolymorphicMapType_14085_13596_42872#PolymorphicMapType_14085| (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@7) null (WandMaskField_8991 pm_f_18@@2))) o2_18@@8 f_21@@8) (= (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@7) o2_18@@8 f_21@@8) (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| ExhaleHeap@@4) o2_18@@8 f_21@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| ExhaleHeap@@4) o2_18@@8 f_21@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (IsWandField_8991_43399 pm_f_18@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.225:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_13536) (ExhaleHeap@@5 T@PolymorphicMapType_13536) (Mask@@17 T@PolymorphicMapType_13557) (o_39@@0 T@Ref) (f_21@@9 T@Field_8991_41694) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_8991_47399 Mask@@17 o_39@@0 f_21@@9) (= (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@8) o_39@@0 f_21@@9) (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| ExhaleHeap@@5) o_39@@0 f_21@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| ExhaleHeap@@5) o_39@@0 f_21@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_13536) (ExhaleHeap@@6 T@PolymorphicMapType_13536) (Mask@@18 T@PolymorphicMapType_13557) (o_39@@1 T@Ref) (f_21@@10 T@Field_8991_41561) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_8991_41625 Mask@@18 o_39@@1 f_21@@10) (= (select (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@9) o_39@@1 f_21@@10) (select (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| ExhaleHeap@@6) o_39@@1 f_21@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| ExhaleHeap@@6) o_39@@1 f_21@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_13536) (ExhaleHeap@@7 T@PolymorphicMapType_13536) (Mask@@19 T@PolymorphicMapType_13557) (o_39@@2 T@Ref) (f_21@@11 T@Field_13609_13610) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_8991_13610 Mask@@19 o_39@@2 f_21@@11) (= (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@10) o_39@@2 f_21@@11) (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| ExhaleHeap@@7) o_39@@2 f_21@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| ExhaleHeap@@7) o_39@@2 f_21@@11))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_13536) (ExhaleHeap@@8 T@PolymorphicMapType_13536) (Mask@@20 T@PolymorphicMapType_13557) (o_39@@3 T@Ref) (f_21@@12 T@Field_13596_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_8991_53 Mask@@20 o_39@@3 f_21@@12) (= (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@11) o_39@@3 f_21@@12) (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| ExhaleHeap@@8) o_39@@3 f_21@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| ExhaleHeap@@8) o_39@@3 f_21@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_13536) (ExhaleHeap@@9 T@PolymorphicMapType_13536) (Mask@@21 T@PolymorphicMapType_13557) (o_39@@4 T@Ref) (f_21@@13 T@Field_17066_1692) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_8991_1692 Mask@@21 o_39@@4 f_21@@13) (= (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@12) o_39@@4 f_21@@13) (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@@9) o_39@@4 f_21@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@@9) o_39@@4 f_21@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_8991_41694) ) (! (= (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_8991_41561) ) (! (= (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_13609_13610) ) (! (= (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_13596_53) ) (! (= (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_17066_1692) ) (! (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_13536) (a_2@@1 T@arrayDomainType) (i@@1 Int) ) (!  (and (= (aloc_1 Heap@@13 a_2@@1 i@@1) (|aloc'| Heap@@13 a_2@@1 i@@1)) (dummyFunction_9016 (|aloc#triggerStateless| a_2@@1 i@@1)))
 :qid |stdinbpl.288:15|
 :skolemid |24|
 :pattern ( (aloc_1 Heap@@13 a_2@@1 i@@1))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_13557) (SummandMask1 T@PolymorphicMapType_13557) (SummandMask2 T@PolymorphicMapType_13557) (o_2@@19 T@Ref) (f_4@@19 T@Field_8991_41694) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_13557) (SummandMask1@@0 T@PolymorphicMapType_13557) (SummandMask2@@0 T@PolymorphicMapType_13557) (o_2@@20 T@Ref) (f_4@@20 T@Field_8991_41561) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_13557) (SummandMask1@@1 T@PolymorphicMapType_13557) (SummandMask2@@1 T@PolymorphicMapType_13557) (o_2@@21 T@Ref) (f_4@@21 T@Field_13609_13610) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_13557) (SummandMask1@@2 T@PolymorphicMapType_13557) (SummandMask2@@2 T@PolymorphicMapType_13557) (o_2@@22 T@Ref) (f_4@@22 T@Field_13596_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_13557) (SummandMask1@@3 T@PolymorphicMapType_13557) (SummandMask2@@3 T@PolymorphicMapType_13557) (o_2@@23 T@Ref) (f_4@@23 T@Field_17066_1692) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a_2@@2 T@arrayDomainType) ) (! (>= (alen a_2@@2) 0)
 :qid |stdinbpl.268:15|
 :skolemid |23|
 :pattern ( (alen a_2@@2))
)))
(assert (forall ((a_2@@3 T@arrayDomainType) (i@@2 Int) ) (!  (and (= (loc_inv_1 (array_loc a_2@@3 i@@2)) a_2@@3) (= (loc_inv_2 (array_loc a_2@@3 i@@2)) i@@2))
 :qid |stdinbpl.262:15|
 :skolemid |22|
 :pattern ( (array_loc a_2@@3 i@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_13536) (o_38 T@Ref) (f_23 T@Field_8991_41561) (v T@FrameType) ) (! (succHeap Heap@@14 (PolymorphicMapType_13536 (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@14) (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@14) (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@14) (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@14) (store (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@14) o_38 f_23 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13536 (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@14) (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@14) (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@14) (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@14) (store (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@14) o_38 f_23 v)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_13536) (o_38@@0 T@Ref) (f_23@@0 T@Field_8991_41694) (v@@0 T@PolymorphicMapType_14085) ) (! (succHeap Heap@@15 (PolymorphicMapType_13536 (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@15) (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@15) (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@15) (store (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@15) o_38@@0 f_23@@0 v@@0) (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13536 (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@15) (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@15) (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@15) (store (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@15) o_38@@0 f_23@@0 v@@0) (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_13536) (o_38@@1 T@Ref) (f_23@@1 T@Field_17066_1692) (v@@1 Int) ) (! (succHeap Heap@@16 (PolymorphicMapType_13536 (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@16) (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@16) (store (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@16) o_38@@1 f_23@@1 v@@1) (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@16) (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13536 (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@16) (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@16) (store (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@16) o_38@@1 f_23@@1 v@@1) (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@16) (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_13536) (o_38@@2 T@Ref) (f_23@@2 T@Field_13609_13610) (v@@2 T@Ref) ) (! (succHeap Heap@@17 (PolymorphicMapType_13536 (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@17) (store (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@17) o_38@@2 f_23@@2 v@@2) (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@17) (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@17) (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13536 (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@17) (store (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@17) o_38@@2 f_23@@2 v@@2) (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@17) (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@17) (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_13536) (o_38@@3 T@Ref) (f_23@@3 T@Field_13596_53) (v@@3 Bool) ) (! (succHeap Heap@@18 (PolymorphicMapType_13536 (store (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@18) o_38@@3 f_23@@3 v@@3) (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@18) (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@18) (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@18) (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13536 (store (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@18) o_38@@3 f_23@@3 v@@3) (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@18) (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@18) (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@18) (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@18)))
)))
(assert (forall ((o_38@@4 T@Ref) (f_51 T@Field_13609_13610) (Heap@@19 T@PolymorphicMapType_13536) ) (!  (=> (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@19) o_38@@4 $allocated) (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@19) (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@19) o_38@@4 f_51) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@19) o_38@@4 f_51))
)))
(assert (forall ((p@@1 T@Field_8991_41561) (v_1@@0 T@FrameType) (q T@Field_8991_41561) (w@@0 T@FrameType) (r T@Field_8991_41561) (u T@FrameType) ) (!  (=> (and (InsidePredicate_13596_13596 p@@1 v_1@@0 q w@@0) (InsidePredicate_13596_13596 q w@@0 r u)) (InsidePredicate_13596_13596 p@@1 v_1@@0 r u))
 :qid |stdinbpl.232:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13596_13596 p@@1 v_1@@0 q w@@0) (InsidePredicate_13596_13596 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@20 T@PolymorphicMapType_13536) (Mask@@22 T@PolymorphicMapType_13557) (a_2@@4 T@arrayDomainType) (i@@3 Int) ) (!  (=> (and (state Heap@@20 Mask@@22) (< AssumeFunctionsAbove 0)) (=> (and (<= 0 i@@3) (< i@@3 (alen a_2@@4))) (= (aloc_1 Heap@@20 a_2@@4 i@@3) (array_loc a_2@@4 i@@3))))
 :qid |stdinbpl.298:15|
 :skolemid |26|
 :pattern ( (state Heap@@20 Mask@@22) (aloc_1 Heap@@20 a_2@@4 i@@3))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_7 () Int)
(declare-fun arr1 () T@arrayDomainType)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_13536)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) Int)
(declare-fun arr2 () T@arrayDomainType)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun QPMask@15 () T@PolymorphicMapType_13557)
(declare-fun QPMask@14 () T@PolymorphicMapType_13557)
(declare-fun i_15 () Int)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_13557)
(declare-fun i_5 () Int)
(declare-fun QPMask@7 () T@PolymorphicMapType_13557)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_13557)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_13557)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) Int)
(declare-fun Heap@@21 () T@PolymorphicMapType_13536)
(declare-fun QPMask@1 () T@PolymorphicMapType_13557)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_13557)
(declare-fun dummyFunction_1692 (Int) Bool)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_13557)
(declare-fun neverTriggered5 (Int) Bool)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun i_14 () Int)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_13557)
(declare-fun i_4 () Int)
(declare-fun i_3 () Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun i_18 () Int)
(set-info :boogie-vc-id main)
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
 (=> (= (ControlFlow 0 0) 113) (let ((anon73_Then_correct  (and (=> (= (ControlFlow 0 87) (- 0 88)) (<= 0 i_7)) (=> (<= 0 i_7) (=> (= (ControlFlow 0 87) (- 0 86)) (< i_7 (alen arr1)))))))
(let ((anon41_correct true))
(let ((anon72_Then_correct  (=> (and (<= 0 i_7) (< i_7 6)) (and (=> (= (ControlFlow 0 89) 87) anon73_Then_correct) (=> (= (ControlFlow 0 89) 84) anon41_correct)))))
(let ((anon72_Else_correct  (=> (and (not (and (<= 0 i_7) (< i_7 6))) (= (ControlFlow 0 85) 84)) anon41_correct)))
(let ((anon71_Else_correct  (and (=> (= (ControlFlow 0 82) (- 0 83)) (forall ((i_16_1 Int) (i_16_2 Int) ) (!  (=> (and (and (and (and (not (= i_16_1 i_16_2)) (and (<= 0 i_16_1) (< i_16_1 6))) (and (<= 0 i_16_2) (< i_16_2 6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (aloc_1 ExhaleHeap@0 arr1 i_16_1) (aloc_1 ExhaleHeap@0 arr1 i_16_2))))
 :qid |stdinbpl.859:19|
 :skolemid |76|
))) (=> (forall ((i_16_1@@0 Int) (i_16_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_16_1@@0 i_16_2@@0)) (and (<= 0 i_16_1@@0) (< i_16_1@@0 6))) (and (<= 0 i_16_2@@0) (< i_16_2@@0 6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (aloc_1 ExhaleHeap@0 arr1 i_16_1@@0) (aloc_1 ExhaleHeap@0 arr1 i_16_2@@0))))
 :qid |stdinbpl.859:19|
 :skolemid |76|
)) (=> (forall ((i_16_1@@1 Int) ) (!  (=> (and (and (<= 0 i_16_1@@1) (< i_16_1@@1 6)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange8 (aloc_1 ExhaleHeap@0 arr1 i_16_1@@1)) (= (invRecv8 (aloc_1 ExhaleHeap@0 arr1 i_16_1@@1)) i_16_1@@1)))
 :qid |stdinbpl.865:26|
 :skolemid |77|
 :pattern ( (|aloc#frame| EmptyFrame arr1 i_16_1@@1))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (|aloc#frame| EmptyFrame arr1 i_16_1@@1) vint_1))
)) (=> (and (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv8 o_9)) (< (invRecv8 o_9) 6)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange8 o_9)) (= (aloc_1 ExhaleHeap@0 arr1 (invRecv8 o_9)) o_9))
 :qid |stdinbpl.869:26|
 :skolemid |78|
 :pattern ( (invRecv8 o_9))
)) (= (ControlFlow 0 82) (- 0 81))) (forall ((i_16_1@@2 Int) ) (!  (=> (and (<= 0 i_16_1@@2) (< i_16_1@@2 6)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.875:19|
 :skolemid |79|
 :pattern ( (|aloc#frame| EmptyFrame arr1 i_16_1@@2))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (|aloc#frame| EmptyFrame arr1 i_16_1@@2) vint_1))
))))))))
(let ((anon68_Else_correct  (and (=> (= (ControlFlow 0 90) (- 0 92)) (forall ((i_14_1 Int) (i_14_2 Int) ) (!  (=> (and (and (and (and (not (= i_14_1 i_14_2)) (and (<= 6 i_14_1) (< i_14_1 12))) (and (<= 6 i_14_2) (< i_14_2 12))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (aloc_1 ExhaleHeap@0 arr2 i_14_1) (aloc_1 ExhaleHeap@0 arr2 i_14_2))))
 :qid |stdinbpl.799:19|
 :skolemid |69|
))) (=> (forall ((i_14_1@@0 Int) (i_14_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_14_1@@0 i_14_2@@0)) (and (<= 6 i_14_1@@0) (< i_14_1@@0 12))) (and (<= 6 i_14_2@@0) (< i_14_2@@0 12))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (aloc_1 ExhaleHeap@0 arr2 i_14_1@@0) (aloc_1 ExhaleHeap@0 arr2 i_14_2@@0))))
 :qid |stdinbpl.799:19|
 :skolemid |69|
)) (=> (and (forall ((i_14_1@@1 Int) ) (!  (=> (and (and (<= 6 i_14_1@@1) (< i_14_1@@1 12)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange7 (aloc_1 ExhaleHeap@0 arr2 i_14_1@@1)) (= (invRecv7 (aloc_1 ExhaleHeap@0 arr2 i_14_1@@1)) i_14_1@@1)))
 :qid |stdinbpl.805:26|
 :skolemid |70|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_14_1@@1))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (|aloc#frame| EmptyFrame arr2 i_14_1@@1) vint_1))
)) (forall ((o_9@@0 T@Ref) ) (!  (=> (and (and (and (<= 6 (invRecv7 o_9@@0)) (< (invRecv7 o_9@@0) 12)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange7 o_9@@0)) (= (aloc_1 ExhaleHeap@0 arr2 (invRecv7 o_9@@0)) o_9@@0))
 :qid |stdinbpl.809:26|
 :skolemid |71|
 :pattern ( (invRecv7 o_9@@0))
))) (and (=> (= (ControlFlow 0 90) (- 0 91)) (forall ((i_14_1@@2 Int) ) (!  (=> (and (<= 6 i_14_1@@2) (< i_14_1@@2 12)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.815:19|
 :skolemid |72|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_14_1@@2))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (|aloc#frame| EmptyFrame arr2 i_14_1@@2) vint_1))
))) (=> (forall ((i_14_1@@3 Int) ) (!  (=> (and (<= 6 i_14_1@@3) (< i_14_1@@3 12)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.815:19|
 :skolemid |72|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_14_1@@3))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (|aloc#frame| EmptyFrame arr2 i_14_1@@3) vint_1))
)) (=> (and (forall ((i_14_1@@4 Int) ) (!  (=> (and (and (<= 6 i_14_1@@4) (< i_14_1@@4 12)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (aloc_1 ExhaleHeap@0 arr2 i_14_1@@4) null)))
 :qid |stdinbpl.821:26|
 :skolemid |73|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_14_1@@4))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (|aloc#frame| EmptyFrame arr2 i_14_1@@4) vint_1))
)) (forall ((o_9@@1 T@Ref) ) (!  (and (=> (and (and (and (<= 6 (invRecv7 o_9@@1)) (< (invRecv7 o_9@@1) 12)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange7 o_9@@1)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (aloc_1 ExhaleHeap@0 arr2 (invRecv7 o_9@@1)) o_9@@1)) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@15) o_9@@1 vint_1) (+ (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@14) o_9@@1 vint_1) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 6 (invRecv7 o_9@@1)) (< (invRecv7 o_9@@1) 12)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange7 o_9@@1))) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@15) o_9@@1 vint_1) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@14) o_9@@1 vint_1))))
 :qid |stdinbpl.827:26|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@15) o_9@@1 vint_1))
))) (=> (and (and (and (and (and (and (forall ((o_9@@2 T@Ref) (f_5 T@Field_13596_53) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@14) o_9@@2 f_5) (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@15) o_9@@2 f_5)))
 :qid |stdinbpl.831:33|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@14) o_9@@2 f_5))
 :pattern ( (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@15) o_9@@2 f_5))
)) (forall ((o_9@@3 T@Ref) (f_5@@0 T@Field_13609_13610) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@14) o_9@@3 f_5@@0) (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@15) o_9@@3 f_5@@0)))
 :qid |stdinbpl.831:33|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@14) o_9@@3 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@15) o_9@@3 f_5@@0))
))) (forall ((o_9@@4 T@Ref) (f_5@@1 T@Field_17066_1692) ) (!  (=> (not (= f_5@@1 vint_1)) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@14) o_9@@4 f_5@@1) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@15) o_9@@4 f_5@@1)))
 :qid |stdinbpl.831:33|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@14) o_9@@4 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@15) o_9@@4 f_5@@1))
))) (forall ((o_9@@5 T@Ref) (f_5@@2 T@Field_8991_41561) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@14) o_9@@5 f_5@@2) (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@15) o_9@@5 f_5@@2)))
 :qid |stdinbpl.831:33|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@14) o_9@@5 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@15) o_9@@5 f_5@@2))
))) (forall ((o_9@@6 T@Ref) (f_5@@3 T@Field_8991_41694) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@14) o_9@@6 f_5@@3) (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@15) o_9@@6 f_5@@3)))
 :qid |stdinbpl.831:33|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@14) o_9@@6 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@15) o_9@@6 f_5@@3))
))) (state ExhaleHeap@0 QPMask@15)) (and (state ExhaleHeap@0 QPMask@15) (state ExhaleHeap@0 QPMask@15))) (and (and (=> (= (ControlFlow 0 90) 82) anon71_Else_correct) (=> (= (ControlFlow 0 90) 89) anon72_Then_correct)) (=> (= (ControlFlow 0 90) 85) anon72_Else_correct)))))))))))
(let ((anon70_Then_correct  (and (=> (= (ControlFlow 0 78) (- 0 79)) (<= 0 i_15)) (=> (<= 0 i_15) (=> (= (ControlFlow 0 78) (- 0 77)) (< i_15 (alen arr2)))))))
(let ((anon36_correct true))
(let ((anon69_Then_correct  (=> (and (<= 6 i_15) (< i_15 12)) (and (=> (= (ControlFlow 0 80) 78) anon70_Then_correct) (=> (= (ControlFlow 0 80) 75) anon36_correct)))))
(let ((anon69_Else_correct  (=> (and (not (and (<= 6 i_15) (< i_15 12))) (= (ControlFlow 0 76) 75)) anon36_correct)))
(let ((anon65_Else_correct  (and (=> (= (ControlFlow 0 93) (- 0 94)) (forall ((i_12_1 Int) (i_12_2 Int) ) (!  (=> (and (and (and (and (not (= i_12_1 i_12_2)) (and (<= 0 i_12_1) (< i_12_1 6))) (and (<= 0 i_12_2) (< i_12_2 6))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (aloc_1 ExhaleHeap@0 arr2 i_12_1) (aloc_1 ExhaleHeap@0 arr2 i_12_2))))
 :qid |stdinbpl.745:19|
 :skolemid |63|
))) (=> (forall ((i_12_1@@0 Int) (i_12_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_12_1@@0 i_12_2@@0)) (and (<= 0 i_12_1@@0) (< i_12_1@@0 6))) (and (<= 0 i_12_2@@0) (< i_12_2@@0 6))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (aloc_1 ExhaleHeap@0 arr2 i_12_1@@0) (aloc_1 ExhaleHeap@0 arr2 i_12_2@@0))))
 :qid |stdinbpl.745:19|
 :skolemid |63|
)) (=> (and (and (forall ((i_12_1@@1 Int) ) (!  (=> (and (and (<= 0 i_12_1@@1) (< i_12_1@@1 6)) (< NoPerm FullPerm)) (and (qpRange6 (aloc_1 ExhaleHeap@0 arr2 i_12_1@@1)) (= (invRecv6 (aloc_1 ExhaleHeap@0 arr2 i_12_1@@1)) i_12_1@@1)))
 :qid |stdinbpl.751:26|
 :skolemid |64|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_12_1@@1))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (|aloc#frame| EmptyFrame arr2 i_12_1@@1) vint_1))
)) (forall ((o_9@@7 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv6 o_9@@7)) (< (invRecv6 o_9@@7) 6)) (< NoPerm FullPerm)) (qpRange6 o_9@@7)) (= (aloc_1 ExhaleHeap@0 arr2 (invRecv6 o_9@@7)) o_9@@7))
 :qid |stdinbpl.755:26|
 :skolemid |65|
 :pattern ( (invRecv6 o_9@@7))
))) (and (forall ((i_12_1@@2 Int) ) (!  (=> (and (<= 0 i_12_1@@2) (< i_12_1@@2 6)) (not (= (aloc_1 ExhaleHeap@0 arr2 i_12_1@@2) null)))
 :qid |stdinbpl.761:26|
 :skolemid |66|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_12_1@@2))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (|aloc#frame| EmptyFrame arr2 i_12_1@@2) vint_1))
)) (forall ((o_9@@8 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv6 o_9@@8)) (< (invRecv6 o_9@@8) 6)) (< NoPerm FullPerm)) (qpRange6 o_9@@8)) (and (=> (< NoPerm FullPerm) (= (aloc_1 ExhaleHeap@0 arr2 (invRecv6 o_9@@8)) o_9@@8)) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@14) o_9@@8 vint_1) (+ (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@4) o_9@@8 vint_1) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv6 o_9@@8)) (< (invRecv6 o_9@@8) 6)) (< NoPerm FullPerm)) (qpRange6 o_9@@8))) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@14) o_9@@8 vint_1) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@4) o_9@@8 vint_1))))
 :qid |stdinbpl.767:26|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@14) o_9@@8 vint_1))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@9 T@Ref) (f_5@@4 T@Field_13596_53) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@4) o_9@@9 f_5@@4) (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@14) o_9@@9 f_5@@4)))
 :qid |stdinbpl.771:33|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@4) o_9@@9 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@14) o_9@@9 f_5@@4))
)) (forall ((o_9@@10 T@Ref) (f_5@@5 T@Field_13609_13610) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@4) o_9@@10 f_5@@5) (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@14) o_9@@10 f_5@@5)))
 :qid |stdinbpl.771:33|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@4) o_9@@10 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@14) o_9@@10 f_5@@5))
))) (forall ((o_9@@11 T@Ref) (f_5@@6 T@Field_17066_1692) ) (!  (=> (not (= f_5@@6 vint_1)) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@4) o_9@@11 f_5@@6) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@14) o_9@@11 f_5@@6)))
 :qid |stdinbpl.771:33|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@4) o_9@@11 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@14) o_9@@11 f_5@@6))
))) (forall ((o_9@@12 T@Ref) (f_5@@7 T@Field_8991_41561) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@4) o_9@@12 f_5@@7) (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@14) o_9@@12 f_5@@7)))
 :qid |stdinbpl.771:33|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@4) o_9@@12 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@14) o_9@@12 f_5@@7))
))) (forall ((o_9@@13 T@Ref) (f_5@@8 T@Field_8991_41694) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@4) o_9@@13 f_5@@8) (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@14) o_9@@13 f_5@@8)))
 :qid |stdinbpl.771:33|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@4) o_9@@13 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@14) o_9@@13 f_5@@8))
))) (state ExhaleHeap@0 QPMask@14)) (and (state ExhaleHeap@0 QPMask@14) (state ExhaleHeap@0 QPMask@14))) (and (and (=> (= (ControlFlow 0 93) 90) anon68_Else_correct) (=> (= (ControlFlow 0 93) 80) anon69_Then_correct)) (=> (= (ControlFlow 0 93) 76) anon69_Else_correct))))))))
(let ((anon67_Then_correct  (and (=> (= (ControlFlow 0 72) (- 0 73)) (<= 0 i_5)) (=> (<= 0 i_5) (=> (= (ControlFlow 0 72) (- 0 71)) (< i_5 (alen arr2)))))))
(let ((anon31_correct true))
(let ((anon66_Then_correct  (=> (and (<= 0 i_5) (< i_5 6)) (and (=> (= (ControlFlow 0 74) 72) anon67_Then_correct) (=> (= (ControlFlow 0 74) 69) anon31_correct)))))
(let ((anon66_Else_correct  (=> (and (not (and (<= 0 i_5) (< i_5 6))) (= (ControlFlow 0 70) 69)) anon31_correct)))
(let ((anon64_Then_correct  (=> (= 0 0) (=> (and (state ExhaleHeap@0 QPMask@4) (state ExhaleHeap@0 QPMask@4)) (and (and (=> (= (ControlFlow 0 95) 93) anon65_Else_correct) (=> (= (ControlFlow 0 95) 74) anon66_Then_correct)) (=> (= (ControlFlow 0 95) 70) anon66_Else_correct))))))
(let ((anon76_Else_correct  (and (=> (= (ControlFlow 0 49) (- 0 60)) (HasDirectPerm_8991_1692 QPMask@7 (aloc_1 ExhaleHeap@0 arr2 6) vint_1)) (=> (HasDirectPerm_8991_1692 QPMask@7 (aloc_1 ExhaleHeap@0 arr2 6) vint_1) (and (=> (= (ControlFlow 0 49) (- 0 59)) (= (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (aloc_1 ExhaleHeap@0 arr2 6) vint_1) (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (aloc_1 ExhaleHeap@0 arr2 6) vint_1))) (=> (= (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (aloc_1 ExhaleHeap@0 arr2 6) vint_1) (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (aloc_1 ExhaleHeap@0 arr2 6) vint_1)) (=> (and (state ExhaleHeap@0 QPMask@7) (= (ControlFlow 0 49) (- 0 58))) false)))))))
(let ((anon76_Then_correct  (=> (= (ControlFlow 0 47) (- 0 46)) (< 6 (alen arr2)))))
(let ((anon75_Else_correct  (and (=> (= (ControlFlow 0 61) (- 0 62)) (HasDirectPerm_8991_1692 QPMask@7 (aloc_1 ExhaleHeap@0 arr2 6) vint_1)) (=> (HasDirectPerm_8991_1692 QPMask@7 (aloc_1 ExhaleHeap@0 arr2 6) vint_1) (and (=> (= (ControlFlow 0 61) 47) anon76_Then_correct) (=> (= (ControlFlow 0 61) 49) anon76_Else_correct))))))
(let ((anon75_Then_correct  (=> (= (ControlFlow 0 45) (- 0 44)) (< 6 (alen arr2)))))
(let ((anon74_Then_correct  (=> (state ExhaleHeap@0 ZeroMask) (=> (and (= 0 0) (state ExhaleHeap@0 ZeroMask)) (and (=> (= (ControlFlow 0 63) (- 0 68)) (forall ((i_17_1 Int) (i_17_2 Int) ) (!  (=> (and (and (and (and (not (= i_17_1 i_17_2)) (and (<= 0 i_17_1) (< i_17_1 6))) (and (<= 0 i_17_2) (< i_17_2 6))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (aloc_1 ExhaleHeap@0 arr2 i_17_1) (aloc_1 ExhaleHeap@0 arr2 i_17_2))))
 :qid |stdinbpl.913:19|
 :skolemid |83|
))) (=> (forall ((i_17_1@@0 Int) (i_17_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_17_1@@0 i_17_2@@0)) (and (<= 0 i_17_1@@0) (< i_17_1@@0 6))) (and (<= 0 i_17_2@@0) (< i_17_2@@0 6))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (aloc_1 ExhaleHeap@0 arr2 i_17_1@@0) (aloc_1 ExhaleHeap@0 arr2 i_17_2@@0))))
 :qid |stdinbpl.913:19|
 :skolemid |83|
)) (=> (and (and (forall ((i_17_1@@1 Int) ) (!  (=> (and (and (<= 0 i_17_1@@1) (< i_17_1@@1 6)) (< NoPerm FullPerm)) (and (qpRange9 (aloc_1 ExhaleHeap@0 arr2 i_17_1@@1)) (= (invRecv9 (aloc_1 ExhaleHeap@0 arr2 i_17_1@@1)) i_17_1@@1)))
 :qid |stdinbpl.919:26|
 :skolemid |84|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_17_1@@1))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (|aloc#frame| EmptyFrame arr2 i_17_1@@1) vint_1))
)) (forall ((o_9@@14 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv9 o_9@@14)) (< (invRecv9 o_9@@14) 6)) (< NoPerm FullPerm)) (qpRange9 o_9@@14)) (= (aloc_1 ExhaleHeap@0 arr2 (invRecv9 o_9@@14)) o_9@@14))
 :qid |stdinbpl.923:26|
 :skolemid |85|
 :pattern ( (invRecv9 o_9@@14))
))) (and (forall ((i_17_1@@2 Int) ) (!  (=> (and (<= 0 i_17_1@@2) (< i_17_1@@2 6)) (not (= (aloc_1 ExhaleHeap@0 arr2 i_17_1@@2) null)))
 :qid |stdinbpl.929:26|
 :skolemid |86|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_17_1@@2))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (|aloc#frame| EmptyFrame arr2 i_17_1@@2) vint_1))
)) (forall ((o_9@@15 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv9 o_9@@15)) (< (invRecv9 o_9@@15) 6)) (< NoPerm FullPerm)) (qpRange9 o_9@@15)) (and (=> (< NoPerm FullPerm) (= (aloc_1 ExhaleHeap@0 arr2 (invRecv9 o_9@@15)) o_9@@15)) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@5) o_9@@15 vint_1) (+ (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| ZeroMask) o_9@@15 vint_1) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv9 o_9@@15)) (< (invRecv9 o_9@@15) 6)) (< NoPerm FullPerm)) (qpRange9 o_9@@15))) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@5) o_9@@15 vint_1) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| ZeroMask) o_9@@15 vint_1))))
 :qid |stdinbpl.935:26|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@5) o_9@@15 vint_1))
)))) (=> (and (and (and (and (and (forall ((o_9@@16 T@Ref) (f_5@@9 T@Field_13596_53) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| ZeroMask) o_9@@16 f_5@@9) (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@5) o_9@@16 f_5@@9)))
 :qid |stdinbpl.939:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| ZeroMask) o_9@@16 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@5) o_9@@16 f_5@@9))
)) (forall ((o_9@@17 T@Ref) (f_5@@10 T@Field_13609_13610) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| ZeroMask) o_9@@17 f_5@@10) (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@5) o_9@@17 f_5@@10)))
 :qid |stdinbpl.939:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| ZeroMask) o_9@@17 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@5) o_9@@17 f_5@@10))
))) (forall ((o_9@@18 T@Ref) (f_5@@11 T@Field_17066_1692) ) (!  (=> (not (= f_5@@11 vint_1)) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| ZeroMask) o_9@@18 f_5@@11) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@5) o_9@@18 f_5@@11)))
 :qid |stdinbpl.939:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| ZeroMask) o_9@@18 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@5) o_9@@18 f_5@@11))
))) (forall ((o_9@@19 T@Ref) (f_5@@12 T@Field_8991_41561) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| ZeroMask) o_9@@19 f_5@@12) (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@5) o_9@@19 f_5@@12)))
 :qid |stdinbpl.939:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| ZeroMask) o_9@@19 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@5) o_9@@19 f_5@@12))
))) (forall ((o_9@@20 T@Ref) (f_5@@13 T@Field_8991_41694) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| ZeroMask) o_9@@20 f_5@@13) (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@5) o_9@@20 f_5@@13)))
 :qid |stdinbpl.939:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| ZeroMask) o_9@@20 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@5) o_9@@20 f_5@@13))
))) (and (state ExhaleHeap@0 QPMask@5) (state ExhaleHeap@0 QPMask@5))) (and (=> (= (ControlFlow 0 63) (- 0 67)) (forall ((i_18_1 Int) (i_18_2 Int) ) (!  (=> (and (and (and (and (not (= i_18_1 i_18_2)) (and (<= 6 i_18_1) (< i_18_1 12))) (and (<= 6 i_18_2) (< i_18_2 12))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (aloc_1 ExhaleHeap@0 arr2 i_18_1) (aloc_1 ExhaleHeap@0 arr2 i_18_2))))
 :qid |stdinbpl.948:19|
 :skolemid |89|
))) (=> (forall ((i_18_1@@0 Int) (i_18_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_18_1@@0 i_18_2@@0)) (and (<= 6 i_18_1@@0) (< i_18_1@@0 12))) (and (<= 6 i_18_2@@0) (< i_18_2@@0 12))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (aloc_1 ExhaleHeap@0 arr2 i_18_1@@0) (aloc_1 ExhaleHeap@0 arr2 i_18_2@@0))))
 :qid |stdinbpl.948:19|
 :skolemid |89|
)) (=> (and (forall ((i_18_1@@1 Int) ) (!  (=> (and (and (<= 6 i_18_1@@1) (< i_18_1@@1 12)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange10 (aloc_1 ExhaleHeap@0 arr2 i_18_1@@1)) (= (invRecv10 (aloc_1 ExhaleHeap@0 arr2 i_18_1@@1)) i_18_1@@1)))
 :qid |stdinbpl.954:26|
 :skolemid |90|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_18_1@@1))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (|aloc#frame| EmptyFrame arr2 i_18_1@@1) vint_1))
)) (forall ((o_9@@21 T@Ref) ) (!  (=> (and (and (and (<= 6 (invRecv10 o_9@@21)) (< (invRecv10 o_9@@21) 12)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange10 o_9@@21)) (= (aloc_1 ExhaleHeap@0 arr2 (invRecv10 o_9@@21)) o_9@@21))
 :qid |stdinbpl.958:26|
 :skolemid |91|
 :pattern ( (invRecv10 o_9@@21))
))) (and (=> (= (ControlFlow 0 63) (- 0 66)) (forall ((i_18_1@@2 Int) ) (!  (=> (and (<= 6 i_18_1@@2) (< i_18_1@@2 12)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.964:19|
 :skolemid |92|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_18_1@@2))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (|aloc#frame| EmptyFrame arr2 i_18_1@@2) vint_1))
))) (=> (forall ((i_18_1@@3 Int) ) (!  (=> (and (<= 6 i_18_1@@3) (< i_18_1@@3 12)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.964:19|
 :skolemid |92|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_18_1@@3))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (|aloc#frame| EmptyFrame arr2 i_18_1@@3) vint_1))
)) (=> (and (forall ((i_18_1@@4 Int) ) (!  (=> (and (and (<= 6 i_18_1@@4) (< i_18_1@@4 12)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (aloc_1 ExhaleHeap@0 arr2 i_18_1@@4) null)))
 :qid |stdinbpl.970:26|
 :skolemid |93|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_18_1@@4))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (|aloc#frame| EmptyFrame arr2 i_18_1@@4) vint_1))
)) (forall ((o_9@@22 T@Ref) ) (!  (and (=> (and (and (and (<= 6 (invRecv10 o_9@@22)) (< (invRecv10 o_9@@22) 12)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange10 o_9@@22)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (aloc_1 ExhaleHeap@0 arr2 (invRecv10 o_9@@22)) o_9@@22)) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@6) o_9@@22 vint_1) (+ (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@5) o_9@@22 vint_1) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 6 (invRecv10 o_9@@22)) (< (invRecv10 o_9@@22) 12)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange10 o_9@@22))) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@6) o_9@@22 vint_1) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@5) o_9@@22 vint_1))))
 :qid |stdinbpl.976:26|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@6) o_9@@22 vint_1))
))) (=> (and (and (and (and (and (forall ((o_9@@23 T@Ref) (f_5@@14 T@Field_13596_53) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@5) o_9@@23 f_5@@14) (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@6) o_9@@23 f_5@@14)))
 :qid |stdinbpl.980:33|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@5) o_9@@23 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@6) o_9@@23 f_5@@14))
)) (forall ((o_9@@24 T@Ref) (f_5@@15 T@Field_13609_13610) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@5) o_9@@24 f_5@@15) (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@6) o_9@@24 f_5@@15)))
 :qid |stdinbpl.980:33|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@5) o_9@@24 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@6) o_9@@24 f_5@@15))
))) (forall ((o_9@@25 T@Ref) (f_5@@16 T@Field_17066_1692) ) (!  (=> (not (= f_5@@16 vint_1)) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@5) o_9@@25 f_5@@16) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@6) o_9@@25 f_5@@16)))
 :qid |stdinbpl.980:33|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@5) o_9@@25 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@6) o_9@@25 f_5@@16))
))) (forall ((o_9@@26 T@Ref) (f_5@@17 T@Field_8991_41561) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@5) o_9@@26 f_5@@17) (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@6) o_9@@26 f_5@@17)))
 :qid |stdinbpl.980:33|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@5) o_9@@26 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@6) o_9@@26 f_5@@17))
))) (forall ((o_9@@27 T@Ref) (f_5@@18 T@Field_8991_41694) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@5) o_9@@27 f_5@@18) (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@6) o_9@@27 f_5@@18)))
 :qid |stdinbpl.980:33|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@5) o_9@@27 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@6) o_9@@27 f_5@@18))
))) (and (state ExhaleHeap@0 QPMask@6) (state ExhaleHeap@0 QPMask@6))) (and (=> (= (ControlFlow 0 63) (- 0 65)) (forall ((i_19_1 Int) (i_19_2 Int) ) (!  (=> (and (and (and (and (not (= i_19_1 i_19_2)) (and (<= 0 i_19_1) (< i_19_1 6))) (and (<= 0 i_19_2) (< i_19_2 6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (aloc_1 ExhaleHeap@0 arr1 i_19_1) (aloc_1 ExhaleHeap@0 arr1 i_19_2))))
 :qid |stdinbpl.989:19|
 :skolemid |96|
))) (=> (forall ((i_19_1@@0 Int) (i_19_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_19_1@@0 i_19_2@@0)) (and (<= 0 i_19_1@@0) (< i_19_1@@0 6))) (and (<= 0 i_19_2@@0) (< i_19_2@@0 6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (aloc_1 ExhaleHeap@0 arr1 i_19_1@@0) (aloc_1 ExhaleHeap@0 arr1 i_19_2@@0))))
 :qid |stdinbpl.989:19|
 :skolemid |96|
)) (=> (and (forall ((i_19_1@@1 Int) ) (!  (=> (and (and (<= 0 i_19_1@@1) (< i_19_1@@1 6)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange11 (aloc_1 ExhaleHeap@0 arr1 i_19_1@@1)) (= (invRecv11 (aloc_1 ExhaleHeap@0 arr1 i_19_1@@1)) i_19_1@@1)))
 :qid |stdinbpl.995:26|
 :skolemid |97|
 :pattern ( (|aloc#frame| EmptyFrame arr1 i_19_1@@1))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (|aloc#frame| EmptyFrame arr1 i_19_1@@1) vint_1))
)) (forall ((o_9@@28 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv11 o_9@@28)) (< (invRecv11 o_9@@28) 6)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange11 o_9@@28)) (= (aloc_1 ExhaleHeap@0 arr1 (invRecv11 o_9@@28)) o_9@@28))
 :qid |stdinbpl.999:26|
 :skolemid |98|
 :pattern ( (invRecv11 o_9@@28))
))) (and (=> (= (ControlFlow 0 63) (- 0 64)) (forall ((i_19_1@@2 Int) ) (!  (=> (and (<= 0 i_19_1@@2) (< i_19_1@@2 6)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1005:19|
 :skolemid |99|
 :pattern ( (|aloc#frame| EmptyFrame arr1 i_19_1@@2))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (|aloc#frame| EmptyFrame arr1 i_19_1@@2) vint_1))
))) (=> (forall ((i_19_1@@3 Int) ) (!  (=> (and (<= 0 i_19_1@@3) (< i_19_1@@3 6)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1005:19|
 :skolemid |99|
 :pattern ( (|aloc#frame| EmptyFrame arr1 i_19_1@@3))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (|aloc#frame| EmptyFrame arr1 i_19_1@@3) vint_1))
)) (=> (and (forall ((i_19_1@@4 Int) ) (!  (=> (and (and (<= 0 i_19_1@@4) (< i_19_1@@4 6)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (aloc_1 ExhaleHeap@0 arr1 i_19_1@@4) null)))
 :qid |stdinbpl.1011:26|
 :skolemid |100|
 :pattern ( (|aloc#frame| EmptyFrame arr1 i_19_1@@4))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@0) (|aloc#frame| EmptyFrame arr1 i_19_1@@4) vint_1))
)) (forall ((o_9@@29 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv11 o_9@@29)) (< (invRecv11 o_9@@29) 6)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange11 o_9@@29)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (aloc_1 ExhaleHeap@0 arr1 (invRecv11 o_9@@29)) o_9@@29)) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@7) o_9@@29 vint_1) (+ (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@6) o_9@@29 vint_1) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv11 o_9@@29)) (< (invRecv11 o_9@@29) 6)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange11 o_9@@29))) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@7) o_9@@29 vint_1) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@6) o_9@@29 vint_1))))
 :qid |stdinbpl.1017:26|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@7) o_9@@29 vint_1))
))) (=> (and (and (and (and (and (and (forall ((o_9@@30 T@Ref) (f_5@@19 T@Field_13596_53) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@6) o_9@@30 f_5@@19) (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@7) o_9@@30 f_5@@19)))
 :qid |stdinbpl.1021:33|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@6) o_9@@30 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@7) o_9@@30 f_5@@19))
)) (forall ((o_9@@31 T@Ref) (f_5@@20 T@Field_13609_13610) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@6) o_9@@31 f_5@@20) (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@7) o_9@@31 f_5@@20)))
 :qid |stdinbpl.1021:33|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@6) o_9@@31 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@7) o_9@@31 f_5@@20))
))) (forall ((o_9@@32 T@Ref) (f_5@@21 T@Field_17066_1692) ) (!  (=> (not (= f_5@@21 vint_1)) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@6) o_9@@32 f_5@@21) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@7) o_9@@32 f_5@@21)))
 :qid |stdinbpl.1021:33|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@6) o_9@@32 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@7) o_9@@32 f_5@@21))
))) (forall ((o_9@@33 T@Ref) (f_5@@22 T@Field_8991_41561) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@6) o_9@@33 f_5@@22) (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@7) o_9@@33 f_5@@22)))
 :qid |stdinbpl.1021:33|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@6) o_9@@33 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@7) o_9@@33 f_5@@22))
))) (forall ((o_9@@34 T@Ref) (f_5@@23 T@Field_8991_41694) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@6) o_9@@34 f_5@@23) (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@7) o_9@@34 f_5@@23)))
 :qid |stdinbpl.1021:33|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@6) o_9@@34 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@7) o_9@@34 f_5@@23))
))) (state ExhaleHeap@0 QPMask@7)) (and (state ExhaleHeap@0 QPMask@7) (state ExhaleHeap@0 QPMask@7))) (and (=> (= (ControlFlow 0 63) 45) anon75_Then_correct) (=> (= (ControlFlow 0 63) 61) anon75_Else_correct))))))))))))))))))))))))
(let ((anon74_Else_correct true))
(let ((anon59_Else_correct  (=> (forall ((i_7_1 Int) ) (!  (=> (and (<= 0 i_7_1) (< i_7_1 6)) (= (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (aloc_1 Heap@@21 arr2 i_7_1) vint_1) (* 0 (- (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (aloc_1 Heap@@21 arr1 i_7_1) vint_1) (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (aloc_1 Heap@@21 arr1 0) vint_1)))))
 :qid |stdinbpl.559:20|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (|aloc#frame| EmptyFrame arr2 i_7_1) vint_1))
)) (=> (and (state Heap@@21 QPMask@1) (state Heap@@21 QPMask@1)) (and (=> (= (ControlFlow 0 96) (- 0 105)) (= 0 0)) (=> (= 0 0) (and (=> (= (ControlFlow 0 96) (- 0 104)) (forall ((i_8_1 Int) (i_8_2 Int) ) (!  (=> (and (and (and (and (not (= i_8_1 i_8_2)) (and (<= 0 i_8_1) (< i_8_1 6))) (and (<= 0 i_8_2) (< i_8_2 6))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (aloc_1 Heap@@21 arr2 i_8_1) (aloc_1 Heap@@21 arr2 i_8_2))))
 :qid |stdinbpl.591:21|
 :skolemid |43|
 :pattern ( (neverTriggered3 i_8_1) (neverTriggered3 i_8_2))
))) (=> (forall ((i_8_1@@0 Int) (i_8_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_8_1@@0 i_8_2@@0)) (and (<= 0 i_8_1@@0) (< i_8_1@@0 6))) (and (<= 0 i_8_2@@0) (< i_8_2@@0 6))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (aloc_1 Heap@@21 arr2 i_8_1@@0) (aloc_1 Heap@@21 arr2 i_8_2@@0))))
 :qid |stdinbpl.591:21|
 :skolemid |43|
 :pattern ( (neverTriggered3 i_8_1@@0) (neverTriggered3 i_8_2@@0))
)) (and (=> (= (ControlFlow 0 96) (- 0 103)) (forall ((i_8_1@@1 Int) ) (!  (=> (and (<= 0 i_8_1@@1) (< i_8_1@@1 6)) (>= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@1) (aloc_1 Heap@@21 arr2 i_8_1@@1) vint_1) FullPerm))
 :qid |stdinbpl.598:21|
 :skolemid |44|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_8_1@@1))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (|aloc#frame| EmptyFrame arr2 i_8_1@@1) vint_1))
))) (=> (forall ((i_8_1@@2 Int) ) (!  (=> (and (<= 0 i_8_1@@2) (< i_8_1@@2 6)) (>= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@1) (aloc_1 Heap@@21 arr2 i_8_1@@2) vint_1) FullPerm))
 :qid |stdinbpl.598:21|
 :skolemid |44|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_8_1@@2))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (|aloc#frame| EmptyFrame arr2 i_8_1@@2) vint_1))
)) (=> (forall ((i_8_1@@3 Int) ) (!  (=> (and (and (<= 0 i_8_1@@3) (< i_8_1@@3 6)) (< NoPerm FullPerm)) (and (qpRange3 (aloc_1 Heap@@21 arr2 i_8_1@@3)) (= (invRecv3 (aloc_1 Heap@@21 arr2 i_8_1@@3)) i_8_1@@3)))
 :qid |stdinbpl.604:26|
 :skolemid |45|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_8_1@@3))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (|aloc#frame| EmptyFrame arr2 i_8_1@@3) vint_1))
)) (=> (and (forall ((o_9@@35 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv3 o_9@@35)) (< (invRecv3 o_9@@35) 6)) (and (< NoPerm FullPerm) (qpRange3 o_9@@35))) (= (aloc_1 Heap@@21 arr2 (invRecv3 o_9@@35)) o_9@@35))
 :qid |stdinbpl.608:26|
 :skolemid |46|
 :pattern ( (invRecv3 o_9@@35))
)) (forall ((o_9@@36 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv3 o_9@@36)) (< (invRecv3 o_9@@36) 6)) (and (< NoPerm FullPerm) (qpRange3 o_9@@36))) (and (= (aloc_1 Heap@@21 arr2 (invRecv3 o_9@@36)) o_9@@36) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@2) o_9@@36 vint_1) (- (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@1) o_9@@36 vint_1) FullPerm)))) (=> (not (and (and (<= 0 (invRecv3 o_9@@36)) (< (invRecv3 o_9@@36) 6)) (and (< NoPerm FullPerm) (qpRange3 o_9@@36)))) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@2) o_9@@36 vint_1) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@1) o_9@@36 vint_1))))
 :qid |stdinbpl.614:26|
 :skolemid |47|
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@2) o_9@@36 vint_1))
))) (=> (and (and (and (and (forall ((o_9@@37 T@Ref) (f_5@@24 T@Field_13596_53) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@1) o_9@@37 f_5@@24) (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@2) o_9@@37 f_5@@24)))
 :qid |stdinbpl.620:33|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@2) o_9@@37 f_5@@24))
)) (forall ((o_9@@38 T@Ref) (f_5@@25 T@Field_13609_13610) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@1) o_9@@38 f_5@@25) (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@2) o_9@@38 f_5@@25)))
 :qid |stdinbpl.620:33|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@2) o_9@@38 f_5@@25))
))) (forall ((o_9@@39 T@Ref) (f_5@@26 T@Field_17066_1692) ) (!  (=> (not (= f_5@@26 vint_1)) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@1) o_9@@39 f_5@@26) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@2) o_9@@39 f_5@@26)))
 :qid |stdinbpl.620:33|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@2) o_9@@39 f_5@@26))
))) (forall ((o_9@@40 T@Ref) (f_5@@27 T@Field_8991_41561) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@1) o_9@@40 f_5@@27) (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@2) o_9@@40 f_5@@27)))
 :qid |stdinbpl.620:33|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@2) o_9@@40 f_5@@27))
))) (forall ((o_9@@41 T@Ref) (f_5@@28 T@Field_8991_41694) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@1) o_9@@41 f_5@@28) (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@2) o_9@@41 f_5@@28)))
 :qid |stdinbpl.620:33|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@2) o_9@@41 f_5@@28))
))) (and (=> (= (ControlFlow 0 96) (- 0 102)) (forall ((i_9_1 Int) ) (!  (=> (and (and (<= 6 i_9_1) (< i_9_1 12)) (dummyFunction_1692 (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (aloc_1 Heap@@21 arr2 i_9_1) vint_1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.629:21|
 :skolemid |49|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_9_1))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (|aloc#frame| EmptyFrame arr2 i_9_1) vint_1))
))) (=> (forall ((i_9_1@@0 Int) ) (!  (=> (and (and (<= 6 i_9_1@@0) (< i_9_1@@0 12)) (dummyFunction_1692 (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (aloc_1 Heap@@21 arr2 i_9_1@@0) vint_1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.629:21|
 :skolemid |49|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_9_1@@0))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (|aloc#frame| EmptyFrame arr2 i_9_1@@0) vint_1))
)) (and (=> (= (ControlFlow 0 96) (- 0 101)) (forall ((i_9_1@@1 Int) (i_9_2 Int) ) (!  (=> (and (and (and (and (not (= i_9_1@@1 i_9_2)) (and (<= 6 i_9_1@@1) (< i_9_1@@1 12))) (and (<= 6 i_9_2) (< i_9_2 12))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (aloc_1 Heap@@21 arr2 i_9_1@@1) (aloc_1 Heap@@21 arr2 i_9_2))))
 :qid |stdinbpl.636:21|
 :skolemid |50|
 :pattern ( (neverTriggered4 i_9_1@@1) (neverTriggered4 i_9_2))
))) (=> (forall ((i_9_1@@2 Int) (i_9_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_9_1@@2 i_9_2@@0)) (and (<= 6 i_9_1@@2) (< i_9_1@@2 12))) (and (<= 6 i_9_2@@0) (< i_9_2@@0 12))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (aloc_1 Heap@@21 arr2 i_9_1@@2) (aloc_1 Heap@@21 arr2 i_9_2@@0))))
 :qid |stdinbpl.636:21|
 :skolemid |50|
 :pattern ( (neverTriggered4 i_9_1@@2) (neverTriggered4 i_9_2@@0))
)) (and (=> (= (ControlFlow 0 96) (- 0 100)) (forall ((i_9_1@@3 Int) ) (!  (=> (and (<= 6 i_9_1@@3) (< i_9_1@@3 12)) (>= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@2) (aloc_1 Heap@@21 arr2 i_9_1@@3) vint_1) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.643:21|
 :skolemid |51|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_9_1@@3))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (|aloc#frame| EmptyFrame arr2 i_9_1@@3) vint_1))
))) (=> (forall ((i_9_1@@4 Int) ) (!  (=> (and (<= 6 i_9_1@@4) (< i_9_1@@4 12)) (>= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@2) (aloc_1 Heap@@21 arr2 i_9_1@@4) vint_1) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.643:21|
 :skolemid |51|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_9_1@@4))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (|aloc#frame| EmptyFrame arr2 i_9_1@@4) vint_1))
)) (=> (forall ((i_9_1@@5 Int) ) (!  (=> (and (and (<= 6 i_9_1@@5) (< i_9_1@@5 12)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange4 (aloc_1 Heap@@21 arr2 i_9_1@@5)) (= (invRecv4 (aloc_1 Heap@@21 arr2 i_9_1@@5)) i_9_1@@5)))
 :qid |stdinbpl.649:26|
 :skolemid |52|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_9_1@@5))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (|aloc#frame| EmptyFrame arr2 i_9_1@@5) vint_1))
)) (=> (and (forall ((o_9@@42 T@Ref) ) (!  (=> (and (and (<= 6 (invRecv4 o_9@@42)) (< (invRecv4 o_9@@42) 12)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange4 o_9@@42))) (= (aloc_1 Heap@@21 arr2 (invRecv4 o_9@@42)) o_9@@42))
 :qid |stdinbpl.653:26|
 :skolemid |53|
 :pattern ( (invRecv4 o_9@@42))
)) (forall ((o_9@@43 T@Ref) ) (!  (and (=> (and (and (<= 6 (invRecv4 o_9@@43)) (< (invRecv4 o_9@@43) 12)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange4 o_9@@43))) (and (= (aloc_1 Heap@@21 arr2 (invRecv4 o_9@@43)) o_9@@43) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@3) o_9@@43 vint_1) (- (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@2) o_9@@43 vint_1) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (<= 6 (invRecv4 o_9@@43)) (< (invRecv4 o_9@@43) 12)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange4 o_9@@43)))) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@3) o_9@@43 vint_1) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@2) o_9@@43 vint_1))))
 :qid |stdinbpl.659:26|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@3) o_9@@43 vint_1))
))) (=> (and (and (and (and (forall ((o_9@@44 T@Ref) (f_5@@29 T@Field_13596_53) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@2) o_9@@44 f_5@@29) (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@3) o_9@@44 f_5@@29)))
 :qid |stdinbpl.665:33|
 :skolemid |55|
 :pattern ( (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@3) o_9@@44 f_5@@29))
)) (forall ((o_9@@45 T@Ref) (f_5@@30 T@Field_13609_13610) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@2) o_9@@45 f_5@@30) (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@3) o_9@@45 f_5@@30)))
 :qid |stdinbpl.665:33|
 :skolemid |55|
 :pattern ( (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@3) o_9@@45 f_5@@30))
))) (forall ((o_9@@46 T@Ref) (f_5@@31 T@Field_17066_1692) ) (!  (=> (not (= f_5@@31 vint_1)) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@2) o_9@@46 f_5@@31) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@3) o_9@@46 f_5@@31)))
 :qid |stdinbpl.665:33|
 :skolemid |55|
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@3) o_9@@46 f_5@@31))
))) (forall ((o_9@@47 T@Ref) (f_5@@32 T@Field_8991_41561) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@2) o_9@@47 f_5@@32) (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@3) o_9@@47 f_5@@32)))
 :qid |stdinbpl.665:33|
 :skolemid |55|
 :pattern ( (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@3) o_9@@47 f_5@@32))
))) (forall ((o_9@@48 T@Ref) (f_5@@33 T@Field_8991_41694) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@2) o_9@@48 f_5@@33) (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@3) o_9@@48 f_5@@33)))
 :qid |stdinbpl.665:33|
 :skolemid |55|
 :pattern ( (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@3) o_9@@48 f_5@@33))
))) (and (=> (= (ControlFlow 0 96) (- 0 99)) (forall ((i_10_1 Int) ) (!  (=> (and (and (<= 0 i_10_1) (< i_10_1 6)) (dummyFunction_1692 (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (aloc_1 Heap@@21 arr1 i_10_1) vint_1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.674:21|
 :skolemid |56|
 :pattern ( (|aloc#frame| EmptyFrame arr1 i_10_1))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (|aloc#frame| EmptyFrame arr1 i_10_1) vint_1))
))) (=> (forall ((i_10_1@@0 Int) ) (!  (=> (and (and (<= 0 i_10_1@@0) (< i_10_1@@0 6)) (dummyFunction_1692 (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (aloc_1 Heap@@21 arr1 i_10_1@@0) vint_1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.674:21|
 :skolemid |56|
 :pattern ( (|aloc#frame| EmptyFrame arr1 i_10_1@@0))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (|aloc#frame| EmptyFrame arr1 i_10_1@@0) vint_1))
)) (and (=> (= (ControlFlow 0 96) (- 0 98)) (forall ((i_10_1@@1 Int) (i_10_2 Int) ) (!  (=> (and (and (and (and (not (= i_10_1@@1 i_10_2)) (and (<= 0 i_10_1@@1) (< i_10_1@@1 6))) (and (<= 0 i_10_2) (< i_10_2 6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (aloc_1 Heap@@21 arr1 i_10_1@@1) (aloc_1 Heap@@21 arr1 i_10_2))))
 :qid |stdinbpl.681:21|
 :skolemid |57|
 :pattern ( (neverTriggered5 i_10_1@@1) (neverTriggered5 i_10_2))
))) (=> (forall ((i_10_1@@2 Int) (i_10_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_10_1@@2 i_10_2@@0)) (and (<= 0 i_10_1@@2) (< i_10_1@@2 6))) (and (<= 0 i_10_2@@0) (< i_10_2@@0 6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (aloc_1 Heap@@21 arr1 i_10_1@@2) (aloc_1 Heap@@21 arr1 i_10_2@@0))))
 :qid |stdinbpl.681:21|
 :skolemid |57|
 :pattern ( (neverTriggered5 i_10_1@@2) (neverTriggered5 i_10_2@@0))
)) (and (=> (= (ControlFlow 0 96) (- 0 97)) (forall ((i_10_1@@3 Int) ) (!  (=> (and (<= 0 i_10_1@@3) (< i_10_1@@3 6)) (>= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@3) (aloc_1 Heap@@21 arr1 i_10_1@@3) vint_1) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.688:21|
 :skolemid |58|
 :pattern ( (|aloc#frame| EmptyFrame arr1 i_10_1@@3))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (|aloc#frame| EmptyFrame arr1 i_10_1@@3) vint_1))
))) (=> (forall ((i_10_1@@4 Int) ) (!  (=> (and (<= 0 i_10_1@@4) (< i_10_1@@4 6)) (>= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@3) (aloc_1 Heap@@21 arr1 i_10_1@@4) vint_1) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.688:21|
 :skolemid |58|
 :pattern ( (|aloc#frame| EmptyFrame arr1 i_10_1@@4))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (|aloc#frame| EmptyFrame arr1 i_10_1@@4) vint_1))
)) (=> (forall ((i_10_1@@5 Int) ) (!  (=> (and (and (<= 0 i_10_1@@5) (< i_10_1@@5 6)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange5 (aloc_1 Heap@@21 arr1 i_10_1@@5)) (= (invRecv5 (aloc_1 Heap@@21 arr1 i_10_1@@5)) i_10_1@@5)))
 :qid |stdinbpl.694:26|
 :skolemid |59|
 :pattern ( (|aloc#frame| EmptyFrame arr1 i_10_1@@5))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (|aloc#frame| EmptyFrame arr1 i_10_1@@5) vint_1))
)) (=> (and (forall ((o_9@@49 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv5 o_9@@49)) (< (invRecv5 o_9@@49) 6)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange5 o_9@@49))) (= (aloc_1 Heap@@21 arr1 (invRecv5 o_9@@49)) o_9@@49))
 :qid |stdinbpl.698:26|
 :skolemid |60|
 :pattern ( (invRecv5 o_9@@49))
)) (forall ((o_9@@50 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv5 o_9@@50)) (< (invRecv5 o_9@@50) 6)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange5 o_9@@50))) (and (= (aloc_1 Heap@@21 arr1 (invRecv5 o_9@@50)) o_9@@50) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@4) o_9@@50 vint_1) (- (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@3) o_9@@50 vint_1) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (<= 0 (invRecv5 o_9@@50)) (< (invRecv5 o_9@@50) 6)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange5 o_9@@50)))) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@4) o_9@@50 vint_1) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@3) o_9@@50 vint_1))))
 :qid |stdinbpl.704:26|
 :skolemid |61|
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@4) o_9@@50 vint_1))
))) (=> (and (and (and (and (and (forall ((o_9@@51 T@Ref) (f_5@@34 T@Field_13596_53) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@3) o_9@@51 f_5@@34) (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@4) o_9@@51 f_5@@34)))
 :qid |stdinbpl.710:33|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@4) o_9@@51 f_5@@34))
)) (forall ((o_9@@52 T@Ref) (f_5@@35 T@Field_13609_13610) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@3) o_9@@52 f_5@@35) (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@4) o_9@@52 f_5@@35)))
 :qid |stdinbpl.710:33|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@4) o_9@@52 f_5@@35))
))) (forall ((o_9@@53 T@Ref) (f_5@@36 T@Field_17066_1692) ) (!  (=> (not (= f_5@@36 vint_1)) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@3) o_9@@53 f_5@@36) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@4) o_9@@53 f_5@@36)))
 :qid |stdinbpl.710:33|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@4) o_9@@53 f_5@@36))
))) (forall ((o_9@@54 T@Ref) (f_5@@37 T@Field_8991_41561) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@3) o_9@@54 f_5@@37) (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@4) o_9@@54 f_5@@37)))
 :qid |stdinbpl.710:33|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@4) o_9@@54 f_5@@37))
))) (forall ((o_9@@55 T@Ref) (f_5@@38 T@Field_8991_41694) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@3) o_9@@55 f_5@@38) (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@4) o_9@@55 f_5@@38)))
 :qid |stdinbpl.710:33|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@4) o_9@@55 f_5@@38))
))) (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@0 QPMask@4)) (and (and (=> (= (ControlFlow 0 96) 95) anon64_Then_correct) (=> (= (ControlFlow 0 96) 63) anon74_Then_correct)) (=> (= (ControlFlow 0 96) 39) anon74_Else_correct)))))))))))))))))))))))))))))))))
(let ((anon63_Then_correct  (=> (= (ControlFlow 0 30) (- 0 29)) (< 0 (alen arr1)))))
(let ((anon62_Then_correct  (and (=> (= (ControlFlow 0 27) (- 0 28)) (<= 0 i_14)) (=> (<= 0 i_14) (=> (= (ControlFlow 0 27) (- 0 26)) (< i_14 (alen arr1)))))))
(let ((anon61_Then_correct  (and (=> (= (ControlFlow 0 24) (- 0 25)) (<= 0 i_14)) (=> (<= 0 i_14) (=> (= (ControlFlow 0 24) (- 0 23)) (< i_14 (alen arr2)))))))
(let ((anon25_correct true))
(let ((anon63_Else_correct  (and (=> (= (ControlFlow 0 31) (- 0 32)) (HasDirectPerm_8991_1692 QPMask@1 (aloc_1 Heap@@21 arr1 0) vint_1)) (=> (HasDirectPerm_8991_1692 QPMask@1 (aloc_1 Heap@@21 arr1 0) vint_1) (=> (= (ControlFlow 0 31) 21) anon25_correct)))))
(let ((anon62_Else_correct  (and (=> (= (ControlFlow 0 33) (- 0 34)) (HasDirectPerm_8991_1692 QPMask@1 (aloc_1 Heap@@21 arr1 i_14) vint_1)) (=> (HasDirectPerm_8991_1692 QPMask@1 (aloc_1 Heap@@21 arr1 i_14) vint_1) (and (=> (= (ControlFlow 0 33) 30) anon63_Then_correct) (=> (= (ControlFlow 0 33) 31) anon63_Else_correct))))))
(let ((anon61_Else_correct  (and (=> (= (ControlFlow 0 35) (- 0 36)) (HasDirectPerm_8991_1692 QPMask@1 (aloc_1 Heap@@21 arr2 i_14) vint_1)) (=> (HasDirectPerm_8991_1692 QPMask@1 (aloc_1 Heap@@21 arr2 i_14) vint_1) (and (=> (= (ControlFlow 0 35) 27) anon62_Then_correct) (=> (= (ControlFlow 0 35) 33) anon62_Else_correct))))))
(let ((anon60_Then_correct  (=> (and (<= 0 i_14) (< i_14 6)) (and (=> (= (ControlFlow 0 37) 24) anon61_Then_correct) (=> (= (ControlFlow 0 37) 35) anon61_Else_correct)))))
(let ((anon60_Else_correct  (=> (and (not (and (<= 0 i_14) (< i_14 6))) (= (ControlFlow 0 22) 21)) anon25_correct)))
(let ((anon56_Else_correct  (and (=> (= (ControlFlow 0 106) (- 0 107)) (forall ((i_5_1 Int) (i_5_2 Int) ) (!  (=> (and (and (and (and (not (= i_5_1 i_5_2)) (and (<= 0 i_5_1) (< i_5_1 12))) (and (<= 0 i_5_2) (< i_5_2 12))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (aloc_1 Heap@@21 arr2 i_5_1) (aloc_1 Heap@@21 arr2 i_5_2))))
 :qid |stdinbpl.481:15|
 :skolemid |36|
))) (=> (forall ((i_5_1@@0 Int) (i_5_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5_1@@0 i_5_2@@0)) (and (<= 0 i_5_1@@0) (< i_5_1@@0 12))) (and (<= 0 i_5_2@@0) (< i_5_2@@0 12))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (aloc_1 Heap@@21 arr2 i_5_1@@0) (aloc_1 Heap@@21 arr2 i_5_2@@0))))
 :qid |stdinbpl.481:15|
 :skolemid |36|
)) (=> (and (and (forall ((i_5_1@@1 Int) ) (!  (=> (and (and (<= 0 i_5_1@@1) (< i_5_1@@1 12)) (< NoPerm FullPerm)) (and (qpRange2 (aloc_1 Heap@@21 arr2 i_5_1@@1)) (= (invRecv2 (aloc_1 Heap@@21 arr2 i_5_1@@1)) i_5_1@@1)))
 :qid |stdinbpl.487:22|
 :skolemid |37|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_5_1@@1))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (|aloc#frame| EmptyFrame arr2 i_5_1@@1) vint_1))
)) (forall ((o_9@@56 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv2 o_9@@56)) (< (invRecv2 o_9@@56) 12)) (< NoPerm FullPerm)) (qpRange2 o_9@@56)) (= (aloc_1 Heap@@21 arr2 (invRecv2 o_9@@56)) o_9@@56))
 :qid |stdinbpl.491:22|
 :skolemid |38|
 :pattern ( (invRecv2 o_9@@56))
))) (and (forall ((i_5_1@@2 Int) ) (!  (=> (and (<= 0 i_5_1@@2) (< i_5_1@@2 12)) (not (= (aloc_1 Heap@@21 arr2 i_5_1@@2) null)))
 :qid |stdinbpl.497:22|
 :skolemid |39|
 :pattern ( (|aloc#frame| EmptyFrame arr2 i_5_1@@2))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (|aloc#frame| EmptyFrame arr2 i_5_1@@2) vint_1))
)) (forall ((o_9@@57 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv2 o_9@@57)) (< (invRecv2 o_9@@57) 12)) (< NoPerm FullPerm)) (qpRange2 o_9@@57)) (and (=> (< NoPerm FullPerm) (= (aloc_1 Heap@@21 arr2 (invRecv2 o_9@@57)) o_9@@57)) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@1) o_9@@57 vint_1) (+ (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@0) o_9@@57 vint_1) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv2 o_9@@57)) (< (invRecv2 o_9@@57) 12)) (< NoPerm FullPerm)) (qpRange2 o_9@@57))) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@1) o_9@@57 vint_1) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@0) o_9@@57 vint_1))))
 :qid |stdinbpl.503:22|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@1) o_9@@57 vint_1))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@58 T@Ref) (f_5@@39 T@Field_13596_53) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@0) o_9@@58 f_5@@39) (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@1) o_9@@58 f_5@@39)))
 :qid |stdinbpl.507:29|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@0) o_9@@58 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@1) o_9@@58 f_5@@39))
)) (forall ((o_9@@59 T@Ref) (f_5@@40 T@Field_13609_13610) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@0) o_9@@59 f_5@@40) (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@1) o_9@@59 f_5@@40)))
 :qid |stdinbpl.507:29|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@0) o_9@@59 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@1) o_9@@59 f_5@@40))
))) (forall ((o_9@@60 T@Ref) (f_5@@41 T@Field_17066_1692) ) (!  (=> (not (= f_5@@41 vint_1)) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@0) o_9@@60 f_5@@41) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@1) o_9@@60 f_5@@41)))
 :qid |stdinbpl.507:29|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@0) o_9@@60 f_5@@41))
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@1) o_9@@60 f_5@@41))
))) (forall ((o_9@@61 T@Ref) (f_5@@42 T@Field_8991_41561) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@0) o_9@@61 f_5@@42) (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@1) o_9@@61 f_5@@42)))
 :qid |stdinbpl.507:29|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@0) o_9@@61 f_5@@42))
 :pattern ( (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@1) o_9@@61 f_5@@42))
))) (forall ((o_9@@62 T@Ref) (f_5@@43 T@Field_8991_41694) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@0) o_9@@62 f_5@@43) (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@1) o_9@@62 f_5@@43)))
 :qid |stdinbpl.507:29|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@0) o_9@@62 f_5@@43))
 :pattern ( (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@1) o_9@@62 f_5@@43))
))) (state Heap@@21 QPMask@1)) (and (state Heap@@21 QPMask@1) (state Heap@@21 QPMask@1))) (and (and (=> (= (ControlFlow 0 106) 96) anon59_Else_correct) (=> (= (ControlFlow 0 106) 37) anon60_Then_correct)) (=> (= (ControlFlow 0 106) 22) anon60_Else_correct))))))))
(let ((anon58_Then_correct  (and (=> (= (ControlFlow 0 18) (- 0 19)) (<= 0 i_4)) (=> (<= 0 i_4) (=> (= (ControlFlow 0 18) (- 0 17)) (< i_4 (alen arr2)))))))
(let ((anon15_correct true))
(let ((anon57_Then_correct  (=> (and (<= 0 i_4) (< i_4 12)) (and (=> (= (ControlFlow 0 20) 18) anon58_Then_correct) (=> (= (ControlFlow 0 20) 15) anon15_correct)))))
(let ((anon57_Else_correct  (=> (and (not (and (<= 0 i_4) (< i_4 12))) (= (ControlFlow 0 16) 15)) anon15_correct)))
(let ((anon53_Else_correct  (=> (forall ((i_3_2 Int) ) (!  (=> (and (<= 0 i_3_2) (< i_3_2 6)) (= (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (aloc_1 Heap@@21 arr1 i_3_2) vint_1) 0))
 :qid |stdinbpl.455:20|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (|aloc#frame| EmptyFrame arr1 i_3_2) vint_1))
)) (=> (and (state Heap@@21 QPMask@0) (state Heap@@21 QPMask@0)) (and (and (=> (= (ControlFlow 0 108) 106) anon56_Else_correct) (=> (= (ControlFlow 0 108) 20) anon57_Then_correct)) (=> (= (ControlFlow 0 108) 16) anon57_Else_correct))))))
(let ((anon55_Then_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (<= 0 i_3)) (=> (<= 0 i_3) (=> (= (ControlFlow 0 10) (- 0 9)) (< i_3 (alen arr1)))))))
(let ((anon10_correct true))
(let ((anon55_Else_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_8991_1692 QPMask@0 (aloc_1 Heap@@21 arr1 i_3) vint_1)) (=> (HasDirectPerm_8991_1692 QPMask@0 (aloc_1 Heap@@21 arr1 i_3) vint_1) (=> (= (ControlFlow 0 12) 7) anon10_correct)))))
(let ((anon54_Then_correct  (=> (and (<= 0 i_3) (< i_3 6)) (and (=> (= (ControlFlow 0 14) 10) anon55_Then_correct) (=> (= (ControlFlow 0 14) 12) anon55_Else_correct)))))
(let ((anon54_Else_correct  (=> (and (not (and (<= 0 i_3) (< i_3 6))) (= (ControlFlow 0 8) 7)) anon10_correct)))
(let ((anon50_Else_correct  (and (=> (= (ControlFlow 0 109) (- 0 111)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (<= 0 i_1) (< i_1 6))) (and (<= 0 i_1_1) (< i_1_1 6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (aloc_1 Heap@@21 arr1 i_1) (aloc_1 Heap@@21 arr1 i_1_1))))
 :qid |stdinbpl.395:15|
 :skolemid |28|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (<= 0 i_1@@0) (< i_1@@0 6))) (and (<= 0 i_1_1@@0) (< i_1_1@@0 6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (aloc_1 Heap@@21 arr1 i_1@@0) (aloc_1 Heap@@21 arr1 i_1_1@@0))))
 :qid |stdinbpl.395:15|
 :skolemid |28|
)) (=> (and (forall ((i_1@@1 Int) ) (!  (=> (and (and (<= 0 i_1@@1) (< i_1@@1 6)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange1 (aloc_1 Heap@@21 arr1 i_1@@1)) (= (invRecv1 (aloc_1 Heap@@21 arr1 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.401:22|
 :skolemid |29|
 :pattern ( (|aloc#frame| EmptyFrame arr1 i_1@@1))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (|aloc#frame| EmptyFrame arr1 i_1@@1) vint_1))
)) (forall ((o_9@@63 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 o_9@@63)) (< (invRecv1 o_9@@63) 6)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange1 o_9@@63)) (= (aloc_1 Heap@@21 arr1 (invRecv1 o_9@@63)) o_9@@63))
 :qid |stdinbpl.405:22|
 :skolemid |30|
 :pattern ( (invRecv1 o_9@@63))
))) (and (=> (= (ControlFlow 0 109) (- 0 110)) (forall ((i_1@@2 Int) ) (!  (=> (and (<= 0 i_1@@2) (< i_1@@2 6)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.411:15|
 :skolemid |31|
 :pattern ( (|aloc#frame| EmptyFrame arr1 i_1@@2))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (|aloc#frame| EmptyFrame arr1 i_1@@2) vint_1))
))) (=> (forall ((i_1@@3 Int) ) (!  (=> (and (<= 0 i_1@@3) (< i_1@@3 6)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.411:15|
 :skolemid |31|
 :pattern ( (|aloc#frame| EmptyFrame arr1 i_1@@3))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (|aloc#frame| EmptyFrame arr1 i_1@@3) vint_1))
)) (=> (and (forall ((i_1@@4 Int) ) (!  (=> (and (and (<= 0 i_1@@4) (< i_1@@4 6)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (aloc_1 Heap@@21 arr1 i_1@@4) null)))
 :qid |stdinbpl.417:22|
 :skolemid |32|
 :pattern ( (|aloc#frame| EmptyFrame arr1 i_1@@4))
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@21) (|aloc#frame| EmptyFrame arr1 i_1@@4) vint_1))
)) (forall ((o_9@@64 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv1 o_9@@64)) (< (invRecv1 o_9@@64) 6)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange1 o_9@@64)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (aloc_1 Heap@@21 arr1 (invRecv1 o_9@@64)) o_9@@64)) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@0) o_9@@64 vint_1) (+ (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| ZeroMask) o_9@@64 vint_1) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv1 o_9@@64)) (< (invRecv1 o_9@@64) 6)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange1 o_9@@64))) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@0) o_9@@64 vint_1) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| ZeroMask) o_9@@64 vint_1))))
 :qid |stdinbpl.423:22|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@0) o_9@@64 vint_1))
))) (=> (and (and (and (and (and (and (forall ((o_9@@65 T@Ref) (f_5@@44 T@Field_13596_53) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| ZeroMask) o_9@@65 f_5@@44) (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@0) o_9@@65 f_5@@44)))
 :qid |stdinbpl.427:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| ZeroMask) o_9@@65 f_5@@44))
 :pattern ( (select (|PolymorphicMapType_13557_8991_53#PolymorphicMapType_13557| QPMask@0) o_9@@65 f_5@@44))
)) (forall ((o_9@@66 T@Ref) (f_5@@45 T@Field_13609_13610) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| ZeroMask) o_9@@66 f_5@@45) (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@0) o_9@@66 f_5@@45)))
 :qid |stdinbpl.427:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| ZeroMask) o_9@@66 f_5@@45))
 :pattern ( (select (|PolymorphicMapType_13557_8991_13610#PolymorphicMapType_13557| QPMask@0) o_9@@66 f_5@@45))
))) (forall ((o_9@@67 T@Ref) (f_5@@46 T@Field_17066_1692) ) (!  (=> (not (= f_5@@46 vint_1)) (= (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| ZeroMask) o_9@@67 f_5@@46) (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@0) o_9@@67 f_5@@46)))
 :qid |stdinbpl.427:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| ZeroMask) o_9@@67 f_5@@46))
 :pattern ( (select (|PolymorphicMapType_13557_8991_1692#PolymorphicMapType_13557| QPMask@0) o_9@@67 f_5@@46))
))) (forall ((o_9@@68 T@Ref) (f_5@@47 T@Field_8991_41561) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| ZeroMask) o_9@@68 f_5@@47) (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@0) o_9@@68 f_5@@47)))
 :qid |stdinbpl.427:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| ZeroMask) o_9@@68 f_5@@47))
 :pattern ( (select (|PolymorphicMapType_13557_8991_41561#PolymorphicMapType_13557| QPMask@0) o_9@@68 f_5@@47))
))) (forall ((o_9@@69 T@Ref) (f_5@@48 T@Field_8991_41694) ) (!  (=> true (= (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| ZeroMask) o_9@@69 f_5@@48) (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@0) o_9@@69 f_5@@48)))
 :qid |stdinbpl.427:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| ZeroMask) o_9@@69 f_5@@48))
 :pattern ( (select (|PolymorphicMapType_13557_8991_45816#PolymorphicMapType_13557| QPMask@0) o_9@@69 f_5@@48))
))) (state Heap@@21 QPMask@0)) (and (state Heap@@21 QPMask@0) (state Heap@@21 QPMask@0))) (and (and (=> (= (ControlFlow 0 109) 108) anon53_Else_correct) (=> (= (ControlFlow 0 109) 14) anon54_Then_correct)) (=> (= (ControlFlow 0 109) 8) anon54_Else_correct)))))))))))
(let ((anon52_Then_correct  (and (=> (= (ControlFlow 0 4) (- 0 5)) (<= 0 i_18)) (=> (<= 0 i_18) (=> (= (ControlFlow 0 4) (- 0 3)) (< i_18 (alen arr1)))))))
(let ((anon4_correct true))
(let ((anon51_Then_correct  (=> (and (<= 0 i_18) (< i_18 6)) (and (=> (= (ControlFlow 0 6) 4) anon52_Then_correct) (=> (= (ControlFlow 0 6) 1) anon4_correct)))))
(let ((anon51_Else_correct  (=> (and (not (and (<= 0 i_18) (< i_18 6))) (= (ControlFlow 0 2) 1)) anon4_correct)))
(let ((anon0_correct  (=> (and (and (and (state Heap@@21 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (= (alen arr1) 6))) (and (and (state Heap@@21 ZeroMask) (= (alen arr2) 12)) (and (state Heap@@21 ZeroMask) (state Heap@@21 ZeroMask)))) (and (and (=> (= (ControlFlow 0 112) 109) anon50_Else_correct) (=> (= (ControlFlow 0 112) 6) anon51_Then_correct)) (=> (= (ControlFlow 0 112) 2) anon51_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 113) 112) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 49) (- 58))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
