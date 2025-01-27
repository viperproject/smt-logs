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
(declare-sort T@Field_3731_53 0)
(declare-sort T@Field_3744_3745 0)
(declare-sort T@Field_3731_9659 0)
(declare-sort T@Field_3731_9526 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3692 0)) (((PolymorphicMapType_3692 (|PolymorphicMapType_3692_3731_53#PolymorphicMapType_3692| (Array T@Ref T@Field_3731_53 Real)) (|PolymorphicMapType_3692_3731_3745#PolymorphicMapType_3692| (Array T@Ref T@Field_3744_3745 Real)) (|PolymorphicMapType_3692_3731_9526#PolymorphicMapType_3692| (Array T@Ref T@Field_3731_9526 Real)) (|PolymorphicMapType_3692_3731_13220#PolymorphicMapType_3692| (Array T@Ref T@Field_3731_9659 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4220 0)) (((PolymorphicMapType_4220 (|PolymorphicMapType_4220_3731_53#PolymorphicMapType_4220| (Array T@Ref T@Field_3731_53 Bool)) (|PolymorphicMapType_4220_3731_3745#PolymorphicMapType_4220| (Array T@Ref T@Field_3744_3745 Bool)) (|PolymorphicMapType_4220_3731_9526#PolymorphicMapType_4220| (Array T@Ref T@Field_3731_9526 Bool)) (|PolymorphicMapType_4220_3731_10639#PolymorphicMapType_4220| (Array T@Ref T@Field_3731_9659 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3671 0)) (((PolymorphicMapType_3671 (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| (Array T@Ref T@Field_3731_53 Bool)) (|PolymorphicMapType_3671_2139_2140#PolymorphicMapType_3671| (Array T@Ref T@Field_3744_3745 T@Ref)) (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| (Array T@Ref T@Field_3731_9659 T@PolymorphicMapType_4220)) (|PolymorphicMapType_3671_3731_9526#PolymorphicMapType_3671| (Array T@Ref T@Field_3731_9526 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_3731_53)
(declare-fun type_Nil () Int)
(declare-fun type_Cons () Int)
(declare-fun succHeap (T@PolymorphicMapType_3671 T@PolymorphicMapType_3671) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3671 T@PolymorphicMapType_3671) Bool)
(declare-fun state (T@PolymorphicMapType_3671 T@PolymorphicMapType_3692) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3692) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4220)
(declare-sort T@listDomainType 0)
(declare-fun vtype (T@listDomainType) Int)
(declare-fun Nil () T@listDomainType)
(declare-fun |f'| (T@PolymorphicMapType_3671 T@listDomainType) Int)
(declare-fun dummyFunction_1861 (Int) Bool)
(declare-fun |f#triggerStateless| (T@listDomainType) Int)
(declare-fun f_6 (T@PolymorphicMapType_3671 T@listDomainType) Int)
(declare-fun decreasing_1602 (Int Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3671 T@PolymorphicMapType_3671 T@PolymorphicMapType_3692) Bool)
(declare-fun IsPredicateField_3731_9617 (T@Field_3731_9526) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3731 (T@Field_3731_9526) T@Field_3731_9659)
(declare-fun HasDirectPerm_3731_9590 (T@PolymorphicMapType_3692 T@Ref T@Field_3731_9526) Bool)
(declare-fun IsWandField_3731_11166 (T@Field_3731_9526) Bool)
(declare-fun WandMaskField_3731 (T@Field_3731_9526) T@Field_3731_9659)
(declare-fun is_Nil (T@listDomainType) Bool)
(declare-fun is_Cons (T@listDomainType) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_3671)
(declare-fun ZeroMask () T@PolymorphicMapType_3692)
(declare-fun InsidePredicate_3731_3731 (T@Field_3731_9526 T@FrameType T@Field_3731_9526 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3731_14129 (T@Field_3731_9659) Bool)
(declare-fun IsWandField_3731_14145 (T@Field_3731_9659) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3731_3745 (T@Field_3744_3745) Bool)
(declare-fun IsWandField_3731_3745 (T@Field_3744_3745) Bool)
(declare-fun IsPredicateField_3731_53 (T@Field_3731_53) Bool)
(declare-fun IsWandField_3731_53 (T@Field_3731_53) Bool)
(declare-fun HasDirectPerm_3731_14500 (T@PolymorphicMapType_3692 T@Ref T@Field_3731_9659) Bool)
(declare-fun HasDirectPerm_3731_3745 (T@PolymorphicMapType_3692 T@Ref T@Field_3744_3745) Bool)
(declare-fun HasDirectPerm_3731_53 (T@PolymorphicMapType_3692 T@Ref T@Field_3731_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3692 T@PolymorphicMapType_3692 T@PolymorphicMapType_3692) Bool)
(declare-fun bounded_1627 (Int) Bool)
(declare-fun Cons (Int T@listDomainType) T@listDomainType)
(declare-fun |f#frame| (T@FrameType T@listDomainType) Int)
(declare-fun head_Cons (T@listDomainType) Int)
(declare-fun tail_Cons (T@listDomainType) T@listDomainType)
(declare-fun size (T@listDomainType) Int)
(declare-fun AssumeFunctionsAbove () Int)
(assert (distinct type_Nil type_Cons)
)
(assert (forall ((Heap0 T@PolymorphicMapType_3671) (Heap1 T@PolymorphicMapType_3671) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3671) (Mask T@PolymorphicMapType_3692) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3671) (Heap1@@0 T@PolymorphicMapType_3671) (Heap2 T@PolymorphicMapType_3671) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3731_9659) ) (!  (not (select (|PolymorphicMapType_4220_3731_10639#PolymorphicMapType_4220| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4220_3731_10639#PolymorphicMapType_4220| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3731_9526) ) (!  (not (select (|PolymorphicMapType_4220_3731_9526#PolymorphicMapType_4220| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4220_3731_9526#PolymorphicMapType_4220| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3744_3745) ) (!  (not (select (|PolymorphicMapType_4220_3731_3745#PolymorphicMapType_4220| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4220_3731_3745#PolymorphicMapType_4220| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3731_53) ) (!  (not (select (|PolymorphicMapType_4220_3731_53#PolymorphicMapType_4220| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4220_3731_53#PolymorphicMapType_4220| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (= (vtype Nil) type_Nil))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3671) (xs T@listDomainType) ) (! (dummyFunction_1861 (|f#triggerStateless| xs))
 :qid |stdinbpl.310:15|
 :skolemid |33|
 :pattern ( (|f'| Heap@@0 xs))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3671) (xs@@0 T@listDomainType) ) (!  (and (= (f_6 Heap@@1 xs@@0) (|f'| Heap@@1 xs@@0)) (dummyFunction_1861 (|f#triggerStateless| xs@@0)))
 :qid |stdinbpl.306:15|
 :skolemid |32|
 :pattern ( (f_6 Heap@@1 xs@@0))
)))
(assert (forall ((int1 Int) (int2 Int) ) (!  (=> (< int1 int2) (decreasing_1602 int1 int2))
 :qid |stdinbpl.275:15|
 :skolemid |30|
 :pattern ( (decreasing_1602 int1 int2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3671) (ExhaleHeap T@PolymorphicMapType_3671) (Mask@@0 T@PolymorphicMapType_3692) (pm_f T@Field_3731_9526) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3731_9590 Mask@@0 null pm_f) (IsPredicateField_3731_9617 pm_f)) (= (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| Heap@@2) null (PredicateMaskField_3731 pm_f)) (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| ExhaleHeap) null (PredicateMaskField_3731 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_3731_9617 pm_f) (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| ExhaleHeap) null (PredicateMaskField_3731 pm_f)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3671) (ExhaleHeap@@0 T@PolymorphicMapType_3671) (Mask@@1 T@PolymorphicMapType_3692) (pm_f@@0 T@Field_3731_9526) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3731_9590 Mask@@1 null pm_f@@0) (IsWandField_3731_11166 pm_f@@0)) (= (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| Heap@@3) null (WandMaskField_3731 pm_f@@0)) (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| ExhaleHeap@@0) null (WandMaskField_3731 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_3731_11166 pm_f@@0) (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| ExhaleHeap@@0) null (WandMaskField_3731 pm_f@@0)))
)))
(assert (forall ((xs@@1 T@listDomainType) ) (! (= (= (vtype xs@@1) type_Nil) (is_Nil xs@@1))
 :qid |stdinbpl.256:15|
 :skolemid |28|
 :pattern ( (vtype xs@@1))
 :pattern ( (is_Nil xs@@1))
)))
(assert (forall ((xs@@2 T@listDomainType) ) (! (= (= (vtype xs@@2) type_Cons) (is_Cons xs@@2))
 :qid |stdinbpl.262:15|
 :skolemid |29|
 :pattern ( (vtype xs@@2))
 :pattern ( (is_Cons xs@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3671) (ExhaleHeap@@1 T@PolymorphicMapType_3671) (Mask@@2 T@PolymorphicMapType_3692) (pm_f@@1 T@Field_3731_9526) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3731_9590 Mask@@2 null pm_f@@1) (IsPredicateField_3731_9617 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_3731_53) ) (!  (=> (select (|PolymorphicMapType_4220_3731_53#PolymorphicMapType_4220| (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| Heap@@4) null (PredicateMaskField_3731 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| Heap@@4) o2 f_2) (select (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_3744_3745) ) (!  (=> (select (|PolymorphicMapType_4220_3731_3745#PolymorphicMapType_4220| (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| Heap@@4) null (PredicateMaskField_3731 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_3671_2139_2140#PolymorphicMapType_3671| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_3671_2139_2140#PolymorphicMapType_3671| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3671_2139_2140#PolymorphicMapType_3671| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_3731_9526) ) (!  (=> (select (|PolymorphicMapType_4220_3731_9526#PolymorphicMapType_4220| (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| Heap@@4) null (PredicateMaskField_3731 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_3671_3731_9526#PolymorphicMapType_3671| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_3671_3731_9526#PolymorphicMapType_3671| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3671_3731_9526#PolymorphicMapType_3671| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3731_9659) ) (!  (=> (select (|PolymorphicMapType_4220_3731_10639#PolymorphicMapType_4220| (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| Heap@@4) null (PredicateMaskField_3731 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_3731_9617 pm_f@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3671) (ExhaleHeap@@2 T@PolymorphicMapType_3671) (Mask@@3 T@PolymorphicMapType_3692) (pm_f@@2 T@Field_3731_9526) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3731_9590 Mask@@3 null pm_f@@2) (IsWandField_3731_11166 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3731_53) ) (!  (=> (select (|PolymorphicMapType_4220_3731_53#PolymorphicMapType_4220| (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| Heap@@5) null (WandMaskField_3731 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| Heap@@5) o2@@3 f_2@@3) (select (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_3744_3745) ) (!  (=> (select (|PolymorphicMapType_4220_3731_3745#PolymorphicMapType_4220| (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| Heap@@5) null (WandMaskField_3731 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_3671_2139_2140#PolymorphicMapType_3671| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_3671_2139_2140#PolymorphicMapType_3671| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3671_2139_2140#PolymorphicMapType_3671| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_3731_9526) ) (!  (=> (select (|PolymorphicMapType_4220_3731_9526#PolymorphicMapType_4220| (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| Heap@@5) null (WandMaskField_3731 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_3671_3731_9526#PolymorphicMapType_3671| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_3671_3731_9526#PolymorphicMapType_3671| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3671_3731_9526#PolymorphicMapType_3671| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_3731_9659) ) (!  (=> (select (|PolymorphicMapType_4220_3731_10639#PolymorphicMapType_4220| (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| Heap@@5) null (WandMaskField_3731 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_3731_11166 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3671) (ExhaleHeap@@3 T@PolymorphicMapType_3671) (Mask@@4 T@PolymorphicMapType_3692) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| Heap@@6) o_1 $allocated) (select (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_3731_9526) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_3731_3731 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3731_3731 p v_1 p w))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3671) (ExhaleHeap@@4 T@PolymorphicMapType_3671) (Mask@@5 T@PolymorphicMapType_3692) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@7 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_3692) (o_2@@3 T@Ref) (f_4@@3 T@Field_3731_9659) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_3692_3731_13220#PolymorphicMapType_3692| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3731_14129 f_4@@3))) (not (IsWandField_3731_14145 f_4@@3))) (<= (select (|PolymorphicMapType_3692_3731_13220#PolymorphicMapType_3692| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_3692_3731_13220#PolymorphicMapType_3692| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_3692) (o_2@@4 T@Ref) (f_4@@4 T@Field_3731_9526) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_3692_3731_9526#PolymorphicMapType_3692| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3731_9617 f_4@@4))) (not (IsWandField_3731_11166 f_4@@4))) (<= (select (|PolymorphicMapType_3692_3731_9526#PolymorphicMapType_3692| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_3692_3731_9526#PolymorphicMapType_3692| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_3692) (o_2@@5 T@Ref) (f_4@@5 T@Field_3744_3745) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_3692_3731_3745#PolymorphicMapType_3692| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3731_3745 f_4@@5))) (not (IsWandField_3731_3745 f_4@@5))) (<= (select (|PolymorphicMapType_3692_3731_3745#PolymorphicMapType_3692| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_3692_3731_3745#PolymorphicMapType_3692| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_3692) (o_2@@6 T@Ref) (f_4@@6 T@Field_3731_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_3692_3731_53#PolymorphicMapType_3692| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3731_53 f_4@@6))) (not (IsWandField_3731_53 f_4@@6))) (<= (select (|PolymorphicMapType_3692_3731_53#PolymorphicMapType_3692| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_3692_3731_53#PolymorphicMapType_3692| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3692) (o_2@@7 T@Ref) (f_4@@7 T@Field_3731_9659) ) (! (= (HasDirectPerm_3731_14500 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3692_3731_13220#PolymorphicMapType_3692| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3731_14500 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3692) (o_2@@8 T@Ref) (f_4@@8 T@Field_3731_9526) ) (! (= (HasDirectPerm_3731_9590 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3692_3731_9526#PolymorphicMapType_3692| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3731_9590 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3692) (o_2@@9 T@Ref) (f_4@@9 T@Field_3744_3745) ) (! (= (HasDirectPerm_3731_3745 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3692_3731_3745#PolymorphicMapType_3692| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3731_3745 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3692) (o_2@@10 T@Ref) (f_4@@10 T@Field_3731_53) ) (! (= (HasDirectPerm_3731_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3692_3731_53#PolymorphicMapType_3692| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3731_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6@@0 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6@@0) (ite (> p@@0 0.0) f_6@@0 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3671) (ExhaleHeap@@5 T@PolymorphicMapType_3671) (Mask@@14 T@PolymorphicMapType_3692) (o_1@@0 T@Ref) (f_2@@7 T@Field_3731_9659) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_3731_14500 Mask@@14 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| Heap@@8) o_1@@0 f_2@@7) (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3671) (ExhaleHeap@@6 T@PolymorphicMapType_3671) (Mask@@15 T@PolymorphicMapType_3692) (o_1@@1 T@Ref) (f_2@@8 T@Field_3731_9526) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_3731_9590 Mask@@15 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_3671_3731_9526#PolymorphicMapType_3671| Heap@@9) o_1@@1 f_2@@8) (select (|PolymorphicMapType_3671_3731_9526#PolymorphicMapType_3671| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_3671_3731_9526#PolymorphicMapType_3671| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3671) (ExhaleHeap@@7 T@PolymorphicMapType_3671) (Mask@@16 T@PolymorphicMapType_3692) (o_1@@2 T@Ref) (f_2@@9 T@Field_3744_3745) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_3731_3745 Mask@@16 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_3671_2139_2140#PolymorphicMapType_3671| Heap@@10) o_1@@2 f_2@@9) (select (|PolymorphicMapType_3671_2139_2140#PolymorphicMapType_3671| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_3671_2139_2140#PolymorphicMapType_3671| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3671) (ExhaleHeap@@8 T@PolymorphicMapType_3671) (Mask@@17 T@PolymorphicMapType_3692) (o_1@@3 T@Ref) (f_2@@10 T@Field_3731_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_3731_53 Mask@@17 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| Heap@@11) o_1@@3 f_2@@10) (select (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3731_9659) ) (! (= (select (|PolymorphicMapType_3692_3731_13220#PolymorphicMapType_3692| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3692_3731_13220#PolymorphicMapType_3692| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3731_9526) ) (! (= (select (|PolymorphicMapType_3692_3731_9526#PolymorphicMapType_3692| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3692_3731_9526#PolymorphicMapType_3692| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_3744_3745) ) (! (= (select (|PolymorphicMapType_3692_3731_3745#PolymorphicMapType_3692| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3692_3731_3745#PolymorphicMapType_3692| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3731_53) ) (! (= (select (|PolymorphicMapType_3692_3731_53#PolymorphicMapType_3692| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3692_3731_53#PolymorphicMapType_3692| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3692) (SummandMask1 T@PolymorphicMapType_3692) (SummandMask2 T@PolymorphicMapType_3692) (o_2@@15 T@Ref) (f_4@@15 T@Field_3731_9659) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3692_3731_13220#PolymorphicMapType_3692| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3692_3731_13220#PolymorphicMapType_3692| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3692_3731_13220#PolymorphicMapType_3692| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3692_3731_13220#PolymorphicMapType_3692| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3692_3731_13220#PolymorphicMapType_3692| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3692_3731_13220#PolymorphicMapType_3692| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3692) (SummandMask1@@0 T@PolymorphicMapType_3692) (SummandMask2@@0 T@PolymorphicMapType_3692) (o_2@@16 T@Ref) (f_4@@16 T@Field_3731_9526) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3692_3731_9526#PolymorphicMapType_3692| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3692_3731_9526#PolymorphicMapType_3692| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3692_3731_9526#PolymorphicMapType_3692| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3692_3731_9526#PolymorphicMapType_3692| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3692_3731_9526#PolymorphicMapType_3692| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3692_3731_9526#PolymorphicMapType_3692| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3692) (SummandMask1@@1 T@PolymorphicMapType_3692) (SummandMask2@@1 T@PolymorphicMapType_3692) (o_2@@17 T@Ref) (f_4@@17 T@Field_3744_3745) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3692_3731_3745#PolymorphicMapType_3692| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3692_3731_3745#PolymorphicMapType_3692| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3692_3731_3745#PolymorphicMapType_3692| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3692_3731_3745#PolymorphicMapType_3692| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3692_3731_3745#PolymorphicMapType_3692| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3692_3731_3745#PolymorphicMapType_3692| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3692) (SummandMask1@@2 T@PolymorphicMapType_3692) (SummandMask2@@2 T@PolymorphicMapType_3692) (o_2@@18 T@Ref) (f_4@@18 T@Field_3731_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3692_3731_53#PolymorphicMapType_3692| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3692_3731_53#PolymorphicMapType_3692| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3692_3731_53#PolymorphicMapType_3692| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3692_3731_53#PolymorphicMapType_3692| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3692_3731_53#PolymorphicMapType_3692| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3692_3731_53#PolymorphicMapType_3692| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((int1@@0 Int) ) (!  (=> (>= int1@@0 0) (bounded_1627 int1@@0))
 :qid |stdinbpl.281:15|
 :skolemid |31|
 :pattern ( (bounded_1627 int1@@0))
)))
(assert (forall ((xs@@3 T@listDomainType) ) (! (= (is_Nil xs@@3)  (not (is_Cons xs@@3)))
 :qid |stdinbpl.217:15|
 :skolemid |22|
 :pattern ( (is_Nil xs@@3))
 :pattern ( (is_Cons xs@@3))
)))
(assert (forall ((head_1 Int) (tail_1 T@listDomainType) ) (! (= (vtype (Cons head_1 tail_1)) type_Cons)
 :qid |stdinbpl.244:15|
 :skolemid |26|
 :pattern ( (vtype (Cons head_1 tail_1)))
)))
(assert (forall ((xs@@4 T@listDomainType) ) (!  (or (= (vtype xs@@4) type_Nil) (= (vtype xs@@4) type_Cons))
 :qid |stdinbpl.250:15|
 :skolemid |27|
 :pattern ( (vtype xs@@4))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3671) (Mask@@18 T@PolymorphicMapType_3692) (xs@@5 T@listDomainType) ) (!  (=> (state Heap@@12 Mask@@18) (= (|f'| Heap@@12 xs@@5) (|f#frame| EmptyFrame xs@@5)))
 :qid |stdinbpl.323:15|
 :skolemid |35|
 :pattern ( (state Heap@@12 Mask@@18) (|f'| Heap@@12 xs@@5))
)))
(assert (forall ((head_1@@0 Int) (tail_1@@0 T@listDomainType) ) (!  (and (= (head_Cons (Cons head_1@@0 tail_1@@0)) head_1@@0) (= (tail_Cons (Cons head_1@@0 tail_1@@0)) tail_1@@0))
 :qid |stdinbpl.229:15|
 :skolemid |24|
 :pattern ( (Cons head_1@@0 tail_1@@0))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3671) (o T@Ref) (f_3 T@Field_3731_9526) (v T@FrameType) ) (! (succHeap Heap@@13 (PolymorphicMapType_3671 (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| Heap@@13) (|PolymorphicMapType_3671_2139_2140#PolymorphicMapType_3671| Heap@@13) (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| Heap@@13) (store (|PolymorphicMapType_3671_3731_9526#PolymorphicMapType_3671| Heap@@13) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3671 (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| Heap@@13) (|PolymorphicMapType_3671_2139_2140#PolymorphicMapType_3671| Heap@@13) (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| Heap@@13) (store (|PolymorphicMapType_3671_3731_9526#PolymorphicMapType_3671| Heap@@13) o f_3 v)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3671) (o@@0 T@Ref) (f_3@@0 T@Field_3731_9659) (v@@0 T@PolymorphicMapType_4220) ) (! (succHeap Heap@@14 (PolymorphicMapType_3671 (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| Heap@@14) (|PolymorphicMapType_3671_2139_2140#PolymorphicMapType_3671| Heap@@14) (store (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| Heap@@14) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3671_3731_9526#PolymorphicMapType_3671| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3671 (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| Heap@@14) (|PolymorphicMapType_3671_2139_2140#PolymorphicMapType_3671| Heap@@14) (store (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| Heap@@14) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_3671_3731_9526#PolymorphicMapType_3671| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3671) (o@@1 T@Ref) (f_3@@1 T@Field_3744_3745) (v@@1 T@Ref) ) (! (succHeap Heap@@15 (PolymorphicMapType_3671 (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| Heap@@15) (store (|PolymorphicMapType_3671_2139_2140#PolymorphicMapType_3671| Heap@@15) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| Heap@@15) (|PolymorphicMapType_3671_3731_9526#PolymorphicMapType_3671| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3671 (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| Heap@@15) (store (|PolymorphicMapType_3671_2139_2140#PolymorphicMapType_3671| Heap@@15) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| Heap@@15) (|PolymorphicMapType_3671_3731_9526#PolymorphicMapType_3671| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3671) (o@@2 T@Ref) (f_3@@2 T@Field_3731_53) (v@@2 Bool) ) (! (succHeap Heap@@16 (PolymorphicMapType_3671 (store (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| Heap@@16) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3671_2139_2140#PolymorphicMapType_3671| Heap@@16) (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| Heap@@16) (|PolymorphicMapType_3671_3731_9526#PolymorphicMapType_3671| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3671 (store (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| Heap@@16) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_3671_2139_2140#PolymorphicMapType_3671| Heap@@16) (|PolymorphicMapType_3671_3731_9703#PolymorphicMapType_3671| Heap@@16) (|PolymorphicMapType_3671_3731_9526#PolymorphicMapType_3671| Heap@@16)))
)))
(assert (forall ((xs@@6 T@listDomainType) ) (!  (=> (is_Cons xs@@6) (= xs@@6 (Cons (head_Cons xs@@6) (tail_Cons xs@@6))))
 :qid |stdinbpl.235:15|
 :skolemid |25|
 :pattern ( (head_Cons xs@@6))
 :pattern ( (tail_Cons xs@@6))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_3744_3745) (Heap@@17 T@PolymorphicMapType_3671) ) (!  (=> (select (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| Heap@@17) o@@3 $allocated) (select (|PolymorphicMapType_3671_2136_53#PolymorphicMapType_3671| Heap@@17) (select (|PolymorphicMapType_3671_2139_2140#PolymorphicMapType_3671| Heap@@17) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3671_2139_2140#PolymorphicMapType_3671| Heap@@17) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_3731_9526) (v_1@@0 T@FrameType) (q T@Field_3731_9526) (w@@0 T@FrameType) (r T@Field_3731_9526) (u T@FrameType) ) (!  (=> (and (InsidePredicate_3731_3731 p@@1 v_1@@0 q w@@0) (InsidePredicate_3731_3731 q w@@0 r u)) (InsidePredicate_3731_3731 p@@1 v_1@@0 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3731_3731 p@@1 v_1@@0 q w@@0) (InsidePredicate_3731_3731 q w@@0 r u))
)))
(assert (forall ((xs@@7 T@listDomainType) ) (!  (and (= (is_Nil xs@@7) (= (size xs@@7) 0)) (and (= (is_Cons xs@@7) (> (size xs@@7) 0)) (and (= (is_Cons xs@@7) (> (size xs@@7) (size (tail_Cons xs@@7)))) (= (is_Cons xs@@7) (= (size xs@@7) (+ 1 (size (tail_Cons xs@@7))))))))
 :qid |stdinbpl.223:15|
 :skolemid |23|
 :pattern ( (is_Nil xs@@7))
 :pattern ( (size xs@@7))
 :pattern ( (is_Cons xs@@7))
 :pattern ( (size (tail_Cons xs@@7)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3671) (Mask@@19 T@PolymorphicMapType_3692) (xs@@8 T@listDomainType) ) (!  (=> (and (state Heap@@18 Mask@@19) (< AssumeFunctionsAbove 0)) (=> (>= (size xs@@8) 0) (= (f_6 Heap@@18 xs@@8) (ite (> (size xs@@8) 0) (|f'| Heap@@18 (tail_Cons xs@@8)) 6))))
 :qid |stdinbpl.316:15|
 :skolemid |34|
 :pattern ( (state Heap@@18 Mask@@19) (f_6 Heap@@18 xs@@8))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun xs@@9 () T@listDomainType)
(declare-fun Heap@@19 () T@PolymorphicMapType_3671)
(set-info :boogie-vc-id f_termination_proof)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon2_correct true))
(let ((anon3_Else_correct  (=> (and (>= 0 (size xs@@9)) (= (ControlFlow 0 5) 1)) anon2_correct)))
(let ((anon3_Then_correct  (=> (> (size xs@@9) 0) (and (=> (= (ControlFlow 0 2) (- 0 4)) (decreasing_1602 (size (tail_Cons xs@@9)) (size xs@@9))) (=> (decreasing_1602 (size (tail_Cons xs@@9)) (size xs@@9)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (bounded_1627 (size xs@@9))) (=> (bounded_1627 (size xs@@9)) (=> (and (state Heap@@19 ZeroMask) (= (ControlFlow 0 2) 1)) anon2_correct))))))))
(let ((anon0_correct  (=> (state Heap@@19 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (>= (size xs@@9) 0) (state Heap@@19 ZeroMask))) (and (=> (= (ControlFlow 0 6) 2) anon3_Then_correct) (=> (= (ControlFlow 0 6) 5) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 6) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
