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
(assert (forall ((Heap@@2 T@PolymorphicMapType_13536) (ExhaleHeap T@PolymorphicMapType_13536) (Mask@@1 T@PolymorphicMapType_13557) (pm_f_34 T@Field_8991_41561) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_8991_41625 Mask@@1 null pm_f_34) (IsPredicateField_8991_41652 pm_f_34)) (= (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@2) null (PredicateMaskField_8991 pm_f_34)) (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| ExhaleHeap) null (PredicateMaskField_8991 pm_f_34)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (IsPredicateField_8991_41652 pm_f_34) (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| ExhaleHeap) null (PredicateMaskField_8991 pm_f_34)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_13536) (ExhaleHeap@@0 T@PolymorphicMapType_13536) (Mask@@2 T@PolymorphicMapType_13557) (pm_f_34@@0 T@Field_8991_41561) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_8991_41625 Mask@@2 null pm_f_34@@0) (IsWandField_8991_43399 pm_f_34@@0)) (= (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@3) null (WandMaskField_8991 pm_f_34@@0)) (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| ExhaleHeap@@0) null (WandMaskField_8991 pm_f_34@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (IsWandField_8991_43399 pm_f_34@@0) (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| ExhaleHeap@@0) null (WandMaskField_8991 pm_f_34@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_13536) (ExhaleHeap@@1 T@PolymorphicMapType_13536) (Mask@@3 T@PolymorphicMapType_13557) (o_30 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@4) o_30 $allocated) (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| ExhaleHeap@@1) o_30 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| ExhaleHeap@@1) o_30 $allocated))
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
(assert (forall ((Heap@@6 T@PolymorphicMapType_13536) (ExhaleHeap@@3 T@PolymorphicMapType_13536) (Mask@@15 T@PolymorphicMapType_13557) (pm_f_34@@1 T@Field_8991_41561) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_8991_41625 Mask@@15 null pm_f_34@@1) (IsPredicateField_8991_41652 pm_f_34@@1)) (and (and (and (and (forall ((o2_34 T@Ref) (f_35 T@Field_13596_53) ) (!  (=> (select (|PolymorphicMapType_14085_13596_53#PolymorphicMapType_14085| (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@6) null (PredicateMaskField_8991 pm_f_34@@1))) o2_34 f_35) (= (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@6) o2_34 f_35) (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| ExhaleHeap@@3) o2_34 f_35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| ExhaleHeap@@3) o2_34 f_35))
)) (forall ((o2_34@@0 T@Ref) (f_35@@0 T@Field_13609_13610) ) (!  (=> (select (|PolymorphicMapType_14085_13596_13610#PolymorphicMapType_14085| (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@6) null (PredicateMaskField_8991 pm_f_34@@1))) o2_34@@0 f_35@@0) (= (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@6) o2_34@@0 f_35@@0) (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| ExhaleHeap@@3) o2_34@@0 f_35@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| ExhaleHeap@@3) o2_34@@0 f_35@@0))
))) (forall ((o2_34@@1 T@Ref) (f_35@@1 T@Field_17066_1692) ) (!  (=> (select (|PolymorphicMapType_14085_13596_1692#PolymorphicMapType_14085| (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@6) null (PredicateMaskField_8991 pm_f_34@@1))) o2_34@@1 f_35@@1) (= (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@6) o2_34@@1 f_35@@1) (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@@3) o2_34@@1 f_35@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@@3) o2_34@@1 f_35@@1))
))) (forall ((o2_34@@2 T@Ref) (f_35@@2 T@Field_8991_41561) ) (!  (=> (select (|PolymorphicMapType_14085_13596_41561#PolymorphicMapType_14085| (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@6) null (PredicateMaskField_8991 pm_f_34@@1))) o2_34@@2 f_35@@2) (= (select (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@6) o2_34@@2 f_35@@2) (select (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| ExhaleHeap@@3) o2_34@@2 f_35@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| ExhaleHeap@@3) o2_34@@2 f_35@@2))
))) (forall ((o2_34@@3 T@Ref) (f_35@@3 T@Field_8991_41694) ) (!  (=> (select (|PolymorphicMapType_14085_13596_42872#PolymorphicMapType_14085| (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@6) null (PredicateMaskField_8991 pm_f_34@@1))) o2_34@@3 f_35@@3) (= (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@6) o2_34@@3 f_35@@3) (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| ExhaleHeap@@3) o2_34@@3 f_35@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| ExhaleHeap@@3) o2_34@@3 f_35@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (IsPredicateField_8991_41652 pm_f_34@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_13536) (ExhaleHeap@@4 T@PolymorphicMapType_13536) (Mask@@16 T@PolymorphicMapType_13557) (pm_f_34@@2 T@Field_8991_41561) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_8991_41625 Mask@@16 null pm_f_34@@2) (IsWandField_8991_43399 pm_f_34@@2)) (and (and (and (and (forall ((o2_34@@4 T@Ref) (f_35@@4 T@Field_13596_53) ) (!  (=> (select (|PolymorphicMapType_14085_13596_53#PolymorphicMapType_14085| (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@7) null (WandMaskField_8991 pm_f_34@@2))) o2_34@@4 f_35@@4) (= (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@7) o2_34@@4 f_35@@4) (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| ExhaleHeap@@4) o2_34@@4 f_35@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| ExhaleHeap@@4) o2_34@@4 f_35@@4))
)) (forall ((o2_34@@5 T@Ref) (f_35@@5 T@Field_13609_13610) ) (!  (=> (select (|PolymorphicMapType_14085_13596_13610#PolymorphicMapType_14085| (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@7) null (WandMaskField_8991 pm_f_34@@2))) o2_34@@5 f_35@@5) (= (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@7) o2_34@@5 f_35@@5) (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| ExhaleHeap@@4) o2_34@@5 f_35@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| ExhaleHeap@@4) o2_34@@5 f_35@@5))
))) (forall ((o2_34@@6 T@Ref) (f_35@@6 T@Field_17066_1692) ) (!  (=> (select (|PolymorphicMapType_14085_13596_1692#PolymorphicMapType_14085| (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@7) null (WandMaskField_8991 pm_f_34@@2))) o2_34@@6 f_35@@6) (= (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@7) o2_34@@6 f_35@@6) (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@@4) o2_34@@6 f_35@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@@4) o2_34@@6 f_35@@6))
))) (forall ((o2_34@@7 T@Ref) (f_35@@7 T@Field_8991_41561) ) (!  (=> (select (|PolymorphicMapType_14085_13596_41561#PolymorphicMapType_14085| (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@7) null (WandMaskField_8991 pm_f_34@@2))) o2_34@@7 f_35@@7) (= (select (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@7) o2_34@@7 f_35@@7) (select (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| ExhaleHeap@@4) o2_34@@7 f_35@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| ExhaleHeap@@4) o2_34@@7 f_35@@7))
))) (forall ((o2_34@@8 T@Ref) (f_35@@8 T@Field_8991_41694) ) (!  (=> (select (|PolymorphicMapType_14085_13596_42872#PolymorphicMapType_14085| (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@7) null (WandMaskField_8991 pm_f_34@@2))) o2_34@@8 f_35@@8) (= (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@7) o2_34@@8 f_35@@8) (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| ExhaleHeap@@4) o2_34@@8 f_35@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| ExhaleHeap@@4) o2_34@@8 f_35@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (IsWandField_8991_43399 pm_f_34@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.225:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_13536) (ExhaleHeap@@5 T@PolymorphicMapType_13536) (Mask@@17 T@PolymorphicMapType_13557) (o_30@@0 T@Ref) (f_35@@9 T@Field_8991_41694) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_8991_47399 Mask@@17 o_30@@0 f_35@@9) (= (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@8) o_30@@0 f_35@@9) (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| ExhaleHeap@@5) o_30@@0 f_35@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| ExhaleHeap@@5) o_30@@0 f_35@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_13536) (ExhaleHeap@@6 T@PolymorphicMapType_13536) (Mask@@18 T@PolymorphicMapType_13557) (o_30@@1 T@Ref) (f_35@@10 T@Field_8991_41561) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_8991_41625 Mask@@18 o_30@@1 f_35@@10) (= (select (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@9) o_30@@1 f_35@@10) (select (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| ExhaleHeap@@6) o_30@@1 f_35@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| ExhaleHeap@@6) o_30@@1 f_35@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_13536) (ExhaleHeap@@7 T@PolymorphicMapType_13536) (Mask@@19 T@PolymorphicMapType_13557) (o_30@@2 T@Ref) (f_35@@11 T@Field_13609_13610) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_8991_13610 Mask@@19 o_30@@2 f_35@@11) (= (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@10) o_30@@2 f_35@@11) (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| ExhaleHeap@@7) o_30@@2 f_35@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| ExhaleHeap@@7) o_30@@2 f_35@@11))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_13536) (ExhaleHeap@@8 T@PolymorphicMapType_13536) (Mask@@20 T@PolymorphicMapType_13557) (o_30@@3 T@Ref) (f_35@@12 T@Field_13596_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_8991_53 Mask@@20 o_30@@3 f_35@@12) (= (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@11) o_30@@3 f_35@@12) (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| ExhaleHeap@@8) o_30@@3 f_35@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| ExhaleHeap@@8) o_30@@3 f_35@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_13536) (ExhaleHeap@@9 T@PolymorphicMapType_13536) (Mask@@21 T@PolymorphicMapType_13557) (o_30@@4 T@Ref) (f_35@@13 T@Field_17066_1692) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_8991_1692 Mask@@21 o_30@@4 f_35@@13) (= (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@12) o_30@@4 f_35@@13) (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@@9) o_30@@4 f_35@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| ExhaleHeap@@9) o_30@@4 f_35@@13))
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
(assert (forall ((Heap@@14 T@PolymorphicMapType_13536) (o_6 T@Ref) (f_16 T@Field_8991_41561) (v T@FrameType) ) (! (succHeap Heap@@14 (PolymorphicMapType_13536 (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@14) (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@14) (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@14) (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@14) (store (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@14) o_6 f_16 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13536 (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@14) (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@14) (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@14) (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@14) (store (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@14) o_6 f_16 v)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_13536) (o_6@@0 T@Ref) (f_16@@0 T@Field_8991_41694) (v@@0 T@PolymorphicMapType_14085) ) (! (succHeap Heap@@15 (PolymorphicMapType_13536 (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@15) (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@15) (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@15) (store (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@15) o_6@@0 f_16@@0 v@@0) (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13536 (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@15) (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@15) (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@15) (store (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@15) o_6@@0 f_16@@0 v@@0) (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_13536) (o_6@@1 T@Ref) (f_16@@1 T@Field_17066_1692) (v@@1 Int) ) (! (succHeap Heap@@16 (PolymorphicMapType_13536 (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@16) (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@16) (store (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@16) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@16) (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13536 (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@16) (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@16) (store (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@16) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@16) (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_13536) (o_6@@2 T@Ref) (f_16@@2 T@Field_13609_13610) (v@@2 T@Ref) ) (! (succHeap Heap@@17 (PolymorphicMapType_13536 (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@17) (store (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@17) o_6@@2 f_16@@2 v@@2) (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@17) (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@17) (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13536 (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@17) (store (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@17) o_6@@2 f_16@@2 v@@2) (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@17) (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@17) (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_13536) (o_6@@3 T@Ref) (f_16@@3 T@Field_13596_53) (v@@3 Bool) ) (! (succHeap Heap@@18 (PolymorphicMapType_13536 (store (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@18) o_6@@3 f_16@@3 v@@3) (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@18) (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@18) (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@18) (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13536 (store (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@18) o_6@@3 f_16@@3 v@@3) (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@18) (|PolymorphicMapType_13536_8991_1692#PolymorphicMapType_13536| Heap@@18) (|PolymorphicMapType_13536_8991_41738#PolymorphicMapType_13536| Heap@@18) (|PolymorphicMapType_13536_13596_41561#PolymorphicMapType_13536| Heap@@18)))
)))
(assert (forall ((o_6@@4 T@Ref) (f_9 T@Field_13609_13610) (Heap@@19 T@PolymorphicMapType_13536) ) (!  (=> (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@19) o_6@@4 $allocated) (select (|PolymorphicMapType_13536_8817_53#PolymorphicMapType_13536| Heap@@19) (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@19) o_6@@4 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_13536_8820_8821#PolymorphicMapType_13536| Heap@@19) o_6@@4 f_9))
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
(set-info :boogie-vc-id |aloc#definedness|)
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
