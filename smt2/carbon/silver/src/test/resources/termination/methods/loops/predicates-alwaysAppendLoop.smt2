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
(declare-sort T@Field_8455_53 0)
(declare-sort T@Field_8468_8469 0)
(declare-sort T@Field_12307_12308 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_12815_12820 0)
(declare-sort T@Field_4310_4340 0)
(declare-sort T@Field_11967_1334 0)
(declare-sort T@Field_4310_12820 0)
(declare-sort T@Field_4339_4311 0)
(declare-sort T@Field_4339_53 0)
(declare-sort T@Field_4339_1334 0)
(declare-datatypes ((T@PolymorphicMapType_8416 0)) (((PolymorphicMapType_8416 (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| (Array T@Ref T@Field_12307_12308 Real)) (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| (Array T@Ref T@Field_8468_8469 Real)) (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| (Array T@Ref T@Field_4339_4311 Real)) (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| (Array T@Ref T@Field_4339_53 Real)) (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| (Array T@Ref T@Field_4339_1334 Real)) (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| (Array T@Ref T@Field_12815_12820 Real)) (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| (Array T@Ref T@Field_4310_4340 Real)) (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| (Array T@Ref T@Field_8455_53 Real)) (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| (Array T@Ref T@Field_11967_1334 Real)) (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| (Array T@Ref T@Field_4310_12820 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8944 0)) (((PolymorphicMapType_8944 (|PolymorphicMapType_8944_4310_4311#PolymorphicMapType_8944| (Array T@Ref T@Field_8468_8469 Bool)) (|PolymorphicMapType_8944_4310_53#PolymorphicMapType_8944| (Array T@Ref T@Field_8455_53 Bool)) (|PolymorphicMapType_8944_4310_1334#PolymorphicMapType_8944| (Array T@Ref T@Field_11967_1334 Bool)) (|PolymorphicMapType_8944_4310_12308#PolymorphicMapType_8944| (Array T@Ref T@Field_4310_4340 Bool)) (|PolymorphicMapType_8944_4310_31007#PolymorphicMapType_8944| (Array T@Ref T@Field_4310_12820 Bool)) (|PolymorphicMapType_8944_12307_4311#PolymorphicMapType_8944| (Array T@Ref T@Field_4339_4311 Bool)) (|PolymorphicMapType_8944_12307_53#PolymorphicMapType_8944| (Array T@Ref T@Field_4339_53 Bool)) (|PolymorphicMapType_8944_12307_1334#PolymorphicMapType_8944| (Array T@Ref T@Field_4339_1334 Bool)) (|PolymorphicMapType_8944_12307_12308#PolymorphicMapType_8944| (Array T@Ref T@Field_12307_12308 Bool)) (|PolymorphicMapType_8944_12307_32055#PolymorphicMapType_8944| (Array T@Ref T@Field_12815_12820 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8395 0)) (((PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| (Array T@Ref T@Field_8455_53 Bool)) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| (Array T@Ref T@Field_8468_8469 T@Ref)) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| (Array T@Ref T@Field_12307_12308 T@FrameType)) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| (Array T@Ref T@Field_12815_12820 T@PolymorphicMapType_8944)) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| (Array T@Ref T@Field_4310_4340 T@FrameType)) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| (Array T@Ref T@Field_11967_1334 Int)) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| (Array T@Ref T@Field_4310_12820 T@PolymorphicMapType_8944)) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| (Array T@Ref T@Field_4339_4311 T@Ref)) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| (Array T@Ref T@Field_4339_53 Bool)) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| (Array T@Ref T@Field_4339_1334 Int)) ) ) ))
(declare-fun $allocated () T@Field_8455_53)
(declare-fun val () T@Field_11967_1334)
(declare-fun next () T@Field_8468_8469)
(declare-sort T@PredicateInstanceDomainType 0)
(declare-fun nestedPredicates (T@PredicateInstanceDomainType T@PredicateInstanceDomainType) Bool)
(declare-fun succHeap (T@PolymorphicMapType_8395 T@PolymorphicMapType_8395) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8395 T@PolymorphicMapType_8395) Bool)
(declare-fun bounded_4301 (T@PredicateInstanceDomainType) Bool)
(declare-fun state (T@PolymorphicMapType_8395 T@PolymorphicMapType_8416) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8416) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8944)
(declare-fun list (T@Ref) T@Field_12307_12308)
(declare-fun IsPredicateField_4339_4340 (T@Field_12307_12308) Bool)
(declare-fun |PI_list'| (T@PolymorphicMapType_8395 T@Ref) T@PredicateInstanceDomainType)
(declare-fun dummyFunction_4332 (T@PredicateInstanceDomainType) Bool)
(declare-fun |PI_list#triggerStateless| (T@Ref) T@PredicateInstanceDomainType)
(declare-fun |list#trigger_4339| (T@PolymorphicMapType_8395 T@Field_12307_12308) Bool)
(declare-fun |list#everUsed_4339| (T@Field_12307_12308) Bool)
(declare-fun PI_list (T@PolymorphicMapType_8395 T@Ref) T@PredicateInstanceDomainType)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8395 T@PolymorphicMapType_8395 T@PolymorphicMapType_8416) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4339 (T@Field_12307_12308) T@Field_12815_12820)
(declare-fun HasDirectPerm_4339_4340 (T@PolymorphicMapType_8416 T@Ref T@Field_12307_12308) Bool)
(declare-fun IsPredicateField_4310_29538 (T@Field_4310_4340) Bool)
(declare-fun PredicateMaskField_4310 (T@Field_4310_4340) T@Field_4310_12820)
(declare-fun HasDirectPerm_4310_4340 (T@PolymorphicMapType_8416 T@Ref T@Field_4310_4340) Bool)
(declare-fun IsWandField_4339_33220 (T@Field_12307_12308) Bool)
(declare-fun WandMaskField_4339 (T@Field_12307_12308) T@Field_12815_12820)
(declare-fun IsWandField_4310_32863 (T@Field_4310_4340) Bool)
(declare-fun WandMaskField_4310 (T@Field_4310_4340) T@Field_4310_12820)
(declare-fun |list#sm| (T@Ref) T@Field_12815_12820)
(declare-fun dummyHeap () T@PolymorphicMapType_8395)
(declare-fun ZeroMask () T@PolymorphicMapType_8416)
(declare-fun InsidePredicate_8455_8455 (T@Field_4310_4340 T@FrameType T@Field_4310_4340 T@FrameType) Bool)
(declare-fun InsidePredicate_4339_4339 (T@Field_12307_12308 T@FrameType T@Field_12307_12308 T@FrameType) Bool)
(declare-fun IsPredicateField_4308_1334 (T@Field_11967_1334) Bool)
(declare-fun IsWandField_4308_1334 (T@Field_11967_1334) Bool)
(declare-fun IsPredicateField_4310_4311 (T@Field_8468_8469) Bool)
(declare-fun IsWandField_4310_4311 (T@Field_8468_8469) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4310_40135 (T@Field_4310_12820) Bool)
(declare-fun IsWandField_4310_40151 (T@Field_4310_12820) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4310_53 (T@Field_8455_53) Bool)
(declare-fun IsWandField_4310_53 (T@Field_8455_53) Bool)
(declare-fun IsPredicateField_4339_39332 (T@Field_12815_12820) Bool)
(declare-fun IsWandField_4339_39348 (T@Field_12815_12820) Bool)
(declare-fun IsPredicateField_4339_1334 (T@Field_4339_1334) Bool)
(declare-fun IsWandField_4339_1334 (T@Field_4339_1334) Bool)
(declare-fun IsPredicateField_4339_53 (T@Field_4339_53) Bool)
(declare-fun IsWandField_4339_53 (T@Field_4339_53) Bool)
(declare-fun IsPredicateField_4339_4311 (T@Field_4339_4311) Bool)
(declare-fun IsWandField_4339_4311 (T@Field_4339_4311) Bool)
(declare-fun HasDirectPerm_4339_29293 (T@PolymorphicMapType_8416 T@Ref T@Field_12815_12820) Bool)
(declare-fun HasDirectPerm_4339_1334 (T@PolymorphicMapType_8416 T@Ref T@Field_4339_1334) Bool)
(declare-fun HasDirectPerm_4339_53 (T@PolymorphicMapType_8416 T@Ref T@Field_4339_53) Bool)
(declare-fun HasDirectPerm_4339_4311 (T@PolymorphicMapType_8416 T@Ref T@Field_4339_4311) Bool)
(declare-fun HasDirectPerm_4310_28152 (T@PolymorphicMapType_8416 T@Ref T@Field_4310_12820) Bool)
(declare-fun HasDirectPerm_4310_1334 (T@PolymorphicMapType_8416 T@Ref T@Field_11967_1334) Bool)
(declare-fun HasDirectPerm_4310_53 (T@PolymorphicMapType_8416 T@Ref T@Field_8455_53) Bool)
(declare-fun HasDirectPerm_4310_4311 (T@PolymorphicMapType_8416 T@Ref T@Field_8468_8469) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8416 T@PolymorphicMapType_8416 T@PolymorphicMapType_8416) Bool)
(declare-fun decreasing_4299 (T@PredicateInstanceDomainType T@PredicateInstanceDomainType) Bool)
(declare-fun |PI_list#frame| (T@FrameType T@Ref) T@PredicateInstanceDomainType)
(declare-fun getPredWandId_4339_4340 (T@Field_12307_12308) Int)
(declare-fun InsidePredicate_8455_4339 (T@Field_4310_4340 T@FrameType T@Field_12307_12308 T@FrameType) Bool)
(declare-fun InsidePredicate_4339_8455 (T@Field_12307_12308 T@FrameType T@Field_4310_4340 T@FrameType) Bool)
(assert (forall ((l1_1 T@PredicateInstanceDomainType) ) (!  (not (nestedPredicates l1_1 l1_1))
 :qid |stdinbpl.228:15|
 :skolemid |25|
 :pattern ( (nestedPredicates l1_1 l1_1))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_8395) (Heap1 T@PolymorphicMapType_8395) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((l1_1@@0 T@PredicateInstanceDomainType) ) (! (bounded_4301 l1_1@@0)
 :qid |stdinbpl.193:15|
 :skolemid |23|
 :pattern ( (bounded_4301 l1_1@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_8395) (Mask T@PolymorphicMapType_8416) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8395) (Heap1@@0 T@PolymorphicMapType_8395) (Heap2 T@PolymorphicMapType_8395) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((l1_1@@1 T@PredicateInstanceDomainType) (l2 T@PredicateInstanceDomainType) (l3 T@PredicateInstanceDomainType) ) (!  (=> (and (nestedPredicates l1_1@@1 l2) (nestedPredicates l2 l3)) (nestedPredicates l1_1@@1 l3))
 :qid |stdinbpl.222:15|
 :skolemid |24|
 :pattern ( (nestedPredicates l1_1@@1 l2) (nestedPredicates l2 l3))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12815_12820) ) (!  (not (select (|PolymorphicMapType_8944_12307_32055#PolymorphicMapType_8944| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8944_12307_32055#PolymorphicMapType_8944| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12307_12308) ) (!  (not (select (|PolymorphicMapType_8944_12307_12308#PolymorphicMapType_8944| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8944_12307_12308#PolymorphicMapType_8944| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_4339_1334) ) (!  (not (select (|PolymorphicMapType_8944_12307_1334#PolymorphicMapType_8944| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8944_12307_1334#PolymorphicMapType_8944| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4339_53) ) (!  (not (select (|PolymorphicMapType_8944_12307_53#PolymorphicMapType_8944| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8944_12307_53#PolymorphicMapType_8944| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4339_4311) ) (!  (not (select (|PolymorphicMapType_8944_12307_4311#PolymorphicMapType_8944| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8944_12307_4311#PolymorphicMapType_8944| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4310_12820) ) (!  (not (select (|PolymorphicMapType_8944_4310_31007#PolymorphicMapType_8944| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8944_4310_31007#PolymorphicMapType_8944| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_4310_4340) ) (!  (not (select (|PolymorphicMapType_8944_4310_12308#PolymorphicMapType_8944| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8944_4310_12308#PolymorphicMapType_8944| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_11967_1334) ) (!  (not (select (|PolymorphicMapType_8944_4310_1334#PolymorphicMapType_8944| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8944_4310_1334#PolymorphicMapType_8944| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8455_53) ) (!  (not (select (|PolymorphicMapType_8944_4310_53#PolymorphicMapType_8944| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8944_4310_53#PolymorphicMapType_8944| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_8468_8469) ) (!  (not (select (|PolymorphicMapType_8944_4310_4311#PolymorphicMapType_8944| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8944_4310_4311#PolymorphicMapType_8944| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((xs T@Ref) ) (! (IsPredicateField_4339_4340 (list xs))
 :qid |stdinbpl.313:15|
 :skolemid |30|
 :pattern ( (list xs))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8395) (xs@@0 T@Ref) ) (! (dummyFunction_4332 (|PI_list#triggerStateless| xs@@0))
 :qid |stdinbpl.262:15|
 :skolemid |27|
 :pattern ( (|PI_list'| Heap@@0 xs@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8395) (xs@@1 T@Ref) ) (! (|list#everUsed_4339| (list xs@@1))
 :qid |stdinbpl.332:15|
 :skolemid |34|
 :pattern ( (|list#trigger_4339| Heap@@1 (list xs@@1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8395) (xs@@2 T@Ref) ) (!  (and (= (PI_list Heap@@2 xs@@2) (|PI_list'| Heap@@2 xs@@2)) (dummyFunction_4332 (|PI_list#triggerStateless| xs@@2)))
 :qid |stdinbpl.258:15|
 :skolemid |26|
 :pattern ( (PI_list Heap@@2 xs@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8395) (ExhaleHeap T@PolymorphicMapType_8395) (Mask@@0 T@PolymorphicMapType_8416) (pm_f_5 T@Field_12307_12308) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4339_4340 Mask@@0 null pm_f_5) (IsPredicateField_4339_4340 pm_f_5)) (= (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@3) null (PredicateMaskField_4339 pm_f_5)) (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| ExhaleHeap) null (PredicateMaskField_4339 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_4339_4340 pm_f_5) (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| ExhaleHeap) null (PredicateMaskField_4339 pm_f_5)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8395) (ExhaleHeap@@0 T@PolymorphicMapType_8395) (Mask@@1 T@PolymorphicMapType_8416) (pm_f_5@@0 T@Field_4310_4340) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4310_4340 Mask@@1 null pm_f_5@@0) (IsPredicateField_4310_29538 pm_f_5@@0)) (= (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@4) null (PredicateMaskField_4310 pm_f_5@@0)) (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| ExhaleHeap@@0) null (PredicateMaskField_4310 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4310_29538 pm_f_5@@0) (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| ExhaleHeap@@0) null (PredicateMaskField_4310 pm_f_5@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8395) (ExhaleHeap@@1 T@PolymorphicMapType_8395) (Mask@@2 T@PolymorphicMapType_8416) (pm_f_5@@1 T@Field_12307_12308) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4339_4340 Mask@@2 null pm_f_5@@1) (IsWandField_4339_33220 pm_f_5@@1)) (= (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@5) null (WandMaskField_4339 pm_f_5@@1)) (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| ExhaleHeap@@1) null (WandMaskField_4339 pm_f_5@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsWandField_4339_33220 pm_f_5@@1) (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| ExhaleHeap@@1) null (WandMaskField_4339 pm_f_5@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8395) (ExhaleHeap@@2 T@PolymorphicMapType_8395) (Mask@@3 T@PolymorphicMapType_8416) (pm_f_5@@2 T@Field_4310_4340) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4310_4340 Mask@@3 null pm_f_5@@2) (IsWandField_4310_32863 pm_f_5@@2)) (= (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@6) null (WandMaskField_4310 pm_f_5@@2)) (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| ExhaleHeap@@2) null (WandMaskField_4310 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsWandField_4310_32863 pm_f_5@@2) (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| ExhaleHeap@@2) null (WandMaskField_4310 pm_f_5@@2)))
)))
(assert (forall ((xs@@3 T@Ref) (xs2 T@Ref) ) (!  (=> (= (list xs@@3) (list xs2)) (= xs@@3 xs2))
 :qid |stdinbpl.323:15|
 :skolemid |32|
 :pattern ( (list xs@@3) (list xs2))
)))
(assert (forall ((xs@@4 T@Ref) (xs2@@0 T@Ref) ) (!  (=> (= (|list#sm| xs@@4) (|list#sm| xs2@@0)) (= xs@@4 xs2@@0))
 :qid |stdinbpl.327:15|
 :skolemid |33|
 :pattern ( (|list#sm| xs@@4) (|list#sm| xs2@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8395) (ExhaleHeap@@3 T@PolymorphicMapType_8395) (Mask@@4 T@PolymorphicMapType_8416) (pm_f_5@@3 T@Field_12307_12308) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_4339_4340 Mask@@4 null pm_f_5@@3) (IsPredicateField_4339_4340 pm_f_5@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_23 T@Field_8468_8469) ) (!  (=> (select (|PolymorphicMapType_8944_4310_4311#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@7) null (PredicateMaskField_4339 pm_f_5@@3))) o2_5 f_23) (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@7) o2_5 f_23) (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@@3) o2_5 f_23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@@3) o2_5 f_23))
)) (forall ((o2_5@@0 T@Ref) (f_23@@0 T@Field_8455_53) ) (!  (=> (select (|PolymorphicMapType_8944_4310_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@7) null (PredicateMaskField_4339 pm_f_5@@3))) o2_5@@0 f_23@@0) (= (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@7) o2_5@@0 f_23@@0) (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| ExhaleHeap@@3) o2_5@@0 f_23@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| ExhaleHeap@@3) o2_5@@0 f_23@@0))
))) (forall ((o2_5@@1 T@Ref) (f_23@@1 T@Field_11967_1334) ) (!  (=> (select (|PolymorphicMapType_8944_4310_1334#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@7) null (PredicateMaskField_4339 pm_f_5@@3))) o2_5@@1 f_23@@1) (= (select (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@7) o2_5@@1 f_23@@1) (select (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| ExhaleHeap@@3) o2_5@@1 f_23@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| ExhaleHeap@@3) o2_5@@1 f_23@@1))
))) (forall ((o2_5@@2 T@Ref) (f_23@@2 T@Field_4310_4340) ) (!  (=> (select (|PolymorphicMapType_8944_4310_12308#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@7) null (PredicateMaskField_4339 pm_f_5@@3))) o2_5@@2 f_23@@2) (= (select (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@7) o2_5@@2 f_23@@2) (select (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| ExhaleHeap@@3) o2_5@@2 f_23@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| ExhaleHeap@@3) o2_5@@2 f_23@@2))
))) (forall ((o2_5@@3 T@Ref) (f_23@@3 T@Field_4310_12820) ) (!  (=> (select (|PolymorphicMapType_8944_4310_31007#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@7) null (PredicateMaskField_4339 pm_f_5@@3))) o2_5@@3 f_23@@3) (= (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@7) o2_5@@3 f_23@@3) (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| ExhaleHeap@@3) o2_5@@3 f_23@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| ExhaleHeap@@3) o2_5@@3 f_23@@3))
))) (forall ((o2_5@@4 T@Ref) (f_23@@4 T@Field_4339_4311) ) (!  (=> (select (|PolymorphicMapType_8944_12307_4311#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@7) null (PredicateMaskField_4339 pm_f_5@@3))) o2_5@@4 f_23@@4) (= (select (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@7) o2_5@@4 f_23@@4) (select (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| ExhaleHeap@@3) o2_5@@4 f_23@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| ExhaleHeap@@3) o2_5@@4 f_23@@4))
))) (forall ((o2_5@@5 T@Ref) (f_23@@5 T@Field_4339_53) ) (!  (=> (select (|PolymorphicMapType_8944_12307_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@7) null (PredicateMaskField_4339 pm_f_5@@3))) o2_5@@5 f_23@@5) (= (select (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@7) o2_5@@5 f_23@@5) (select (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| ExhaleHeap@@3) o2_5@@5 f_23@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| ExhaleHeap@@3) o2_5@@5 f_23@@5))
))) (forall ((o2_5@@6 T@Ref) (f_23@@6 T@Field_4339_1334) ) (!  (=> (select (|PolymorphicMapType_8944_12307_1334#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@7) null (PredicateMaskField_4339 pm_f_5@@3))) o2_5@@6 f_23@@6) (= (select (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@7) o2_5@@6 f_23@@6) (select (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| ExhaleHeap@@3) o2_5@@6 f_23@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| ExhaleHeap@@3) o2_5@@6 f_23@@6))
))) (forall ((o2_5@@7 T@Ref) (f_23@@7 T@Field_12307_12308) ) (!  (=> (select (|PolymorphicMapType_8944_12307_12308#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@7) null (PredicateMaskField_4339 pm_f_5@@3))) o2_5@@7 f_23@@7) (= (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@7) o2_5@@7 f_23@@7) (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| ExhaleHeap@@3) o2_5@@7 f_23@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| ExhaleHeap@@3) o2_5@@7 f_23@@7))
))) (forall ((o2_5@@8 T@Ref) (f_23@@8 T@Field_12815_12820) ) (!  (=> (select (|PolymorphicMapType_8944_12307_32055#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@7) null (PredicateMaskField_4339 pm_f_5@@3))) o2_5@@8 f_23@@8) (= (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@7) o2_5@@8 f_23@@8) (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| ExhaleHeap@@3) o2_5@@8 f_23@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| ExhaleHeap@@3) o2_5@@8 f_23@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsPredicateField_4339_4340 pm_f_5@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8395) (ExhaleHeap@@4 T@PolymorphicMapType_8395) (Mask@@5 T@PolymorphicMapType_8416) (pm_f_5@@4 T@Field_4310_4340) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4310_4340 Mask@@5 null pm_f_5@@4) (IsPredicateField_4310_29538 pm_f_5@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@9 T@Ref) (f_23@@9 T@Field_8468_8469) ) (!  (=> (select (|PolymorphicMapType_8944_4310_4311#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@8) null (PredicateMaskField_4310 pm_f_5@@4))) o2_5@@9 f_23@@9) (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@8) o2_5@@9 f_23@@9) (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@@4) o2_5@@9 f_23@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@@4) o2_5@@9 f_23@@9))
)) (forall ((o2_5@@10 T@Ref) (f_23@@10 T@Field_8455_53) ) (!  (=> (select (|PolymorphicMapType_8944_4310_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@8) null (PredicateMaskField_4310 pm_f_5@@4))) o2_5@@10 f_23@@10) (= (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@8) o2_5@@10 f_23@@10) (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| ExhaleHeap@@4) o2_5@@10 f_23@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| ExhaleHeap@@4) o2_5@@10 f_23@@10))
))) (forall ((o2_5@@11 T@Ref) (f_23@@11 T@Field_11967_1334) ) (!  (=> (select (|PolymorphicMapType_8944_4310_1334#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@8) null (PredicateMaskField_4310 pm_f_5@@4))) o2_5@@11 f_23@@11) (= (select (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@8) o2_5@@11 f_23@@11) (select (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| ExhaleHeap@@4) o2_5@@11 f_23@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| ExhaleHeap@@4) o2_5@@11 f_23@@11))
))) (forall ((o2_5@@12 T@Ref) (f_23@@12 T@Field_4310_4340) ) (!  (=> (select (|PolymorphicMapType_8944_4310_12308#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@8) null (PredicateMaskField_4310 pm_f_5@@4))) o2_5@@12 f_23@@12) (= (select (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@8) o2_5@@12 f_23@@12) (select (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| ExhaleHeap@@4) o2_5@@12 f_23@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| ExhaleHeap@@4) o2_5@@12 f_23@@12))
))) (forall ((o2_5@@13 T@Ref) (f_23@@13 T@Field_4310_12820) ) (!  (=> (select (|PolymorphicMapType_8944_4310_31007#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@8) null (PredicateMaskField_4310 pm_f_5@@4))) o2_5@@13 f_23@@13) (= (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@8) o2_5@@13 f_23@@13) (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| ExhaleHeap@@4) o2_5@@13 f_23@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| ExhaleHeap@@4) o2_5@@13 f_23@@13))
))) (forall ((o2_5@@14 T@Ref) (f_23@@14 T@Field_4339_4311) ) (!  (=> (select (|PolymorphicMapType_8944_12307_4311#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@8) null (PredicateMaskField_4310 pm_f_5@@4))) o2_5@@14 f_23@@14) (= (select (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@8) o2_5@@14 f_23@@14) (select (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| ExhaleHeap@@4) o2_5@@14 f_23@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| ExhaleHeap@@4) o2_5@@14 f_23@@14))
))) (forall ((o2_5@@15 T@Ref) (f_23@@15 T@Field_4339_53) ) (!  (=> (select (|PolymorphicMapType_8944_12307_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@8) null (PredicateMaskField_4310 pm_f_5@@4))) o2_5@@15 f_23@@15) (= (select (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@8) o2_5@@15 f_23@@15) (select (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| ExhaleHeap@@4) o2_5@@15 f_23@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| ExhaleHeap@@4) o2_5@@15 f_23@@15))
))) (forall ((o2_5@@16 T@Ref) (f_23@@16 T@Field_4339_1334) ) (!  (=> (select (|PolymorphicMapType_8944_12307_1334#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@8) null (PredicateMaskField_4310 pm_f_5@@4))) o2_5@@16 f_23@@16) (= (select (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@8) o2_5@@16 f_23@@16) (select (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| ExhaleHeap@@4) o2_5@@16 f_23@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| ExhaleHeap@@4) o2_5@@16 f_23@@16))
))) (forall ((o2_5@@17 T@Ref) (f_23@@17 T@Field_12307_12308) ) (!  (=> (select (|PolymorphicMapType_8944_12307_12308#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@8) null (PredicateMaskField_4310 pm_f_5@@4))) o2_5@@17 f_23@@17) (= (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@8) o2_5@@17 f_23@@17) (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| ExhaleHeap@@4) o2_5@@17 f_23@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| ExhaleHeap@@4) o2_5@@17 f_23@@17))
))) (forall ((o2_5@@18 T@Ref) (f_23@@18 T@Field_12815_12820) ) (!  (=> (select (|PolymorphicMapType_8944_12307_32055#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@8) null (PredicateMaskField_4310 pm_f_5@@4))) o2_5@@18 f_23@@18) (= (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@8) o2_5@@18 f_23@@18) (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| ExhaleHeap@@4) o2_5@@18 f_23@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| ExhaleHeap@@4) o2_5@@18 f_23@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsPredicateField_4310_29538 pm_f_5@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8395) (ExhaleHeap@@5 T@PolymorphicMapType_8395) (Mask@@6 T@PolymorphicMapType_8416) (pm_f_5@@5 T@Field_12307_12308) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_4339_4340 Mask@@6 null pm_f_5@@5) (IsWandField_4339_33220 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@19 T@Ref) (f_23@@19 T@Field_8468_8469) ) (!  (=> (select (|PolymorphicMapType_8944_4310_4311#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@9) null (WandMaskField_4339 pm_f_5@@5))) o2_5@@19 f_23@@19) (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@9) o2_5@@19 f_23@@19) (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@@5) o2_5@@19 f_23@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@@5) o2_5@@19 f_23@@19))
)) (forall ((o2_5@@20 T@Ref) (f_23@@20 T@Field_8455_53) ) (!  (=> (select (|PolymorphicMapType_8944_4310_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@9) null (WandMaskField_4339 pm_f_5@@5))) o2_5@@20 f_23@@20) (= (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@9) o2_5@@20 f_23@@20) (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| ExhaleHeap@@5) o2_5@@20 f_23@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| ExhaleHeap@@5) o2_5@@20 f_23@@20))
))) (forall ((o2_5@@21 T@Ref) (f_23@@21 T@Field_11967_1334) ) (!  (=> (select (|PolymorphicMapType_8944_4310_1334#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@9) null (WandMaskField_4339 pm_f_5@@5))) o2_5@@21 f_23@@21) (= (select (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@9) o2_5@@21 f_23@@21) (select (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| ExhaleHeap@@5) o2_5@@21 f_23@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| ExhaleHeap@@5) o2_5@@21 f_23@@21))
))) (forall ((o2_5@@22 T@Ref) (f_23@@22 T@Field_4310_4340) ) (!  (=> (select (|PolymorphicMapType_8944_4310_12308#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@9) null (WandMaskField_4339 pm_f_5@@5))) o2_5@@22 f_23@@22) (= (select (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@9) o2_5@@22 f_23@@22) (select (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| ExhaleHeap@@5) o2_5@@22 f_23@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| ExhaleHeap@@5) o2_5@@22 f_23@@22))
))) (forall ((o2_5@@23 T@Ref) (f_23@@23 T@Field_4310_12820) ) (!  (=> (select (|PolymorphicMapType_8944_4310_31007#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@9) null (WandMaskField_4339 pm_f_5@@5))) o2_5@@23 f_23@@23) (= (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@9) o2_5@@23 f_23@@23) (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| ExhaleHeap@@5) o2_5@@23 f_23@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| ExhaleHeap@@5) o2_5@@23 f_23@@23))
))) (forall ((o2_5@@24 T@Ref) (f_23@@24 T@Field_4339_4311) ) (!  (=> (select (|PolymorphicMapType_8944_12307_4311#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@9) null (WandMaskField_4339 pm_f_5@@5))) o2_5@@24 f_23@@24) (= (select (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@9) o2_5@@24 f_23@@24) (select (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| ExhaleHeap@@5) o2_5@@24 f_23@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| ExhaleHeap@@5) o2_5@@24 f_23@@24))
))) (forall ((o2_5@@25 T@Ref) (f_23@@25 T@Field_4339_53) ) (!  (=> (select (|PolymorphicMapType_8944_12307_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@9) null (WandMaskField_4339 pm_f_5@@5))) o2_5@@25 f_23@@25) (= (select (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@9) o2_5@@25 f_23@@25) (select (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| ExhaleHeap@@5) o2_5@@25 f_23@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| ExhaleHeap@@5) o2_5@@25 f_23@@25))
))) (forall ((o2_5@@26 T@Ref) (f_23@@26 T@Field_4339_1334) ) (!  (=> (select (|PolymorphicMapType_8944_12307_1334#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@9) null (WandMaskField_4339 pm_f_5@@5))) o2_5@@26 f_23@@26) (= (select (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@9) o2_5@@26 f_23@@26) (select (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| ExhaleHeap@@5) o2_5@@26 f_23@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| ExhaleHeap@@5) o2_5@@26 f_23@@26))
))) (forall ((o2_5@@27 T@Ref) (f_23@@27 T@Field_12307_12308) ) (!  (=> (select (|PolymorphicMapType_8944_12307_12308#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@9) null (WandMaskField_4339 pm_f_5@@5))) o2_5@@27 f_23@@27) (= (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@9) o2_5@@27 f_23@@27) (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| ExhaleHeap@@5) o2_5@@27 f_23@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| ExhaleHeap@@5) o2_5@@27 f_23@@27))
))) (forall ((o2_5@@28 T@Ref) (f_23@@28 T@Field_12815_12820) ) (!  (=> (select (|PolymorphicMapType_8944_12307_32055#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@9) null (WandMaskField_4339 pm_f_5@@5))) o2_5@@28 f_23@@28) (= (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@9) o2_5@@28 f_23@@28) (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| ExhaleHeap@@5) o2_5@@28 f_23@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| ExhaleHeap@@5) o2_5@@28 f_23@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_4339_33220 pm_f_5@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8395) (ExhaleHeap@@6 T@PolymorphicMapType_8395) (Mask@@7 T@PolymorphicMapType_8416) (pm_f_5@@6 T@Field_4310_4340) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_4310_4340 Mask@@7 null pm_f_5@@6) (IsWandField_4310_32863 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_23@@29 T@Field_8468_8469) ) (!  (=> (select (|PolymorphicMapType_8944_4310_4311#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@10) null (WandMaskField_4310 pm_f_5@@6))) o2_5@@29 f_23@@29) (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@10) o2_5@@29 f_23@@29) (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@@6) o2_5@@29 f_23@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@@6) o2_5@@29 f_23@@29))
)) (forall ((o2_5@@30 T@Ref) (f_23@@30 T@Field_8455_53) ) (!  (=> (select (|PolymorphicMapType_8944_4310_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@10) null (WandMaskField_4310 pm_f_5@@6))) o2_5@@30 f_23@@30) (= (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@10) o2_5@@30 f_23@@30) (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| ExhaleHeap@@6) o2_5@@30 f_23@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| ExhaleHeap@@6) o2_5@@30 f_23@@30))
))) (forall ((o2_5@@31 T@Ref) (f_23@@31 T@Field_11967_1334) ) (!  (=> (select (|PolymorphicMapType_8944_4310_1334#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@10) null (WandMaskField_4310 pm_f_5@@6))) o2_5@@31 f_23@@31) (= (select (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@10) o2_5@@31 f_23@@31) (select (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| ExhaleHeap@@6) o2_5@@31 f_23@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| ExhaleHeap@@6) o2_5@@31 f_23@@31))
))) (forall ((o2_5@@32 T@Ref) (f_23@@32 T@Field_4310_4340) ) (!  (=> (select (|PolymorphicMapType_8944_4310_12308#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@10) null (WandMaskField_4310 pm_f_5@@6))) o2_5@@32 f_23@@32) (= (select (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@10) o2_5@@32 f_23@@32) (select (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| ExhaleHeap@@6) o2_5@@32 f_23@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| ExhaleHeap@@6) o2_5@@32 f_23@@32))
))) (forall ((o2_5@@33 T@Ref) (f_23@@33 T@Field_4310_12820) ) (!  (=> (select (|PolymorphicMapType_8944_4310_31007#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@10) null (WandMaskField_4310 pm_f_5@@6))) o2_5@@33 f_23@@33) (= (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@10) o2_5@@33 f_23@@33) (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| ExhaleHeap@@6) o2_5@@33 f_23@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| ExhaleHeap@@6) o2_5@@33 f_23@@33))
))) (forall ((o2_5@@34 T@Ref) (f_23@@34 T@Field_4339_4311) ) (!  (=> (select (|PolymorphicMapType_8944_12307_4311#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@10) null (WandMaskField_4310 pm_f_5@@6))) o2_5@@34 f_23@@34) (= (select (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@10) o2_5@@34 f_23@@34) (select (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| ExhaleHeap@@6) o2_5@@34 f_23@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| ExhaleHeap@@6) o2_5@@34 f_23@@34))
))) (forall ((o2_5@@35 T@Ref) (f_23@@35 T@Field_4339_53) ) (!  (=> (select (|PolymorphicMapType_8944_12307_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@10) null (WandMaskField_4310 pm_f_5@@6))) o2_5@@35 f_23@@35) (= (select (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@10) o2_5@@35 f_23@@35) (select (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| ExhaleHeap@@6) o2_5@@35 f_23@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| ExhaleHeap@@6) o2_5@@35 f_23@@35))
))) (forall ((o2_5@@36 T@Ref) (f_23@@36 T@Field_4339_1334) ) (!  (=> (select (|PolymorphicMapType_8944_12307_1334#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@10) null (WandMaskField_4310 pm_f_5@@6))) o2_5@@36 f_23@@36) (= (select (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@10) o2_5@@36 f_23@@36) (select (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| ExhaleHeap@@6) o2_5@@36 f_23@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| ExhaleHeap@@6) o2_5@@36 f_23@@36))
))) (forall ((o2_5@@37 T@Ref) (f_23@@37 T@Field_12307_12308) ) (!  (=> (select (|PolymorphicMapType_8944_12307_12308#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@10) null (WandMaskField_4310 pm_f_5@@6))) o2_5@@37 f_23@@37) (= (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@10) o2_5@@37 f_23@@37) (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| ExhaleHeap@@6) o2_5@@37 f_23@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| ExhaleHeap@@6) o2_5@@37 f_23@@37))
))) (forall ((o2_5@@38 T@Ref) (f_23@@38 T@Field_12815_12820) ) (!  (=> (select (|PolymorphicMapType_8944_12307_32055#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@10) null (WandMaskField_4310 pm_f_5@@6))) o2_5@@38 f_23@@38) (= (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@10) o2_5@@38 f_23@@38) (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| ExhaleHeap@@6) o2_5@@38 f_23@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| ExhaleHeap@@6) o2_5@@38 f_23@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_4310_32863 pm_f_5@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8395) (ExhaleHeap@@7 T@PolymorphicMapType_8395) (Mask@@8 T@PolymorphicMapType_8416) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@11) o_15 $allocated) (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| ExhaleHeap@@7) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| ExhaleHeap@@7) o_15 $allocated))
)))
(assert (forall ((p T@Field_4310_4340) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8455_8455 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8455_8455 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_12307_12308) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_4339_4339 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4339_4339 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_4308_1334 val)))
(assert  (not (IsWandField_4308_1334 val)))
(assert  (not (IsPredicateField_4310_4311 next)))
(assert  (not (IsWandField_4310_4311 next)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8395) (ExhaleHeap@@8 T@PolymorphicMapType_8395) (Mask@@9 T@PolymorphicMapType_8416) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8416) (o_2@@9 T@Ref) (f_4@@9 T@Field_4310_12820) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4310_40135 f_4@@9))) (not (IsWandField_4310_40151 f_4@@9))) (<= (select (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8416) (o_2@@10 T@Ref) (f_4@@10 T@Field_11967_1334) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4308_1334 f_4@@10))) (not (IsWandField_4308_1334 f_4@@10))) (<= (select (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8416) (o_2@@11 T@Ref) (f_4@@11 T@Field_8455_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4310_53 f_4@@11))) (not (IsWandField_4310_53 f_4@@11))) (<= (select (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8416) (o_2@@12 T@Ref) (f_4@@12 T@Field_8468_8469) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4310_4311 f_4@@12))) (not (IsWandField_4310_4311 f_4@@12))) (<= (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8416) (o_2@@13 T@Ref) (f_4@@13 T@Field_4310_4340) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4310_29538 f_4@@13))) (not (IsWandField_4310_32863 f_4@@13))) (<= (select (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8416) (o_2@@14 T@Ref) (f_4@@14 T@Field_12815_12820) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4339_39332 f_4@@14))) (not (IsWandField_4339_39348 f_4@@14))) (<= (select (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8416) (o_2@@15 T@Ref) (f_4@@15 T@Field_4339_1334) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4339_1334 f_4@@15))) (not (IsWandField_4339_1334 f_4@@15))) (<= (select (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8416) (o_2@@16 T@Ref) (f_4@@16 T@Field_4339_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4339_53 f_4@@16))) (not (IsWandField_4339_53 f_4@@16))) (<= (select (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8416) (o_2@@17 T@Ref) (f_4@@17 T@Field_4339_4311) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4339_4311 f_4@@17))) (not (IsWandField_4339_4311 f_4@@17))) (<= (select (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8416) (o_2@@18 T@Ref) (f_4@@18 T@Field_12307_12308) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4339_4340 f_4@@18))) (not (IsWandField_4339_33220 f_4@@18))) (<= (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8416) (o_2@@19 T@Ref) (f_4@@19 T@Field_12815_12820) ) (! (= (HasDirectPerm_4339_29293 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4339_29293 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8416) (o_2@@20 T@Ref) (f_4@@20 T@Field_4339_1334) ) (! (= (HasDirectPerm_4339_1334 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4339_1334 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8416) (o_2@@21 T@Ref) (f_4@@21 T@Field_4339_53) ) (! (= (HasDirectPerm_4339_53 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4339_53 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8416) (o_2@@22 T@Ref) (f_4@@22 T@Field_12307_12308) ) (! (= (HasDirectPerm_4339_4340 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4339_4340 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8416) (o_2@@23 T@Ref) (f_4@@23 T@Field_4339_4311) ) (! (= (HasDirectPerm_4339_4311 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4339_4311 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8416) (o_2@@24 T@Ref) (f_4@@24 T@Field_4310_12820) ) (! (= (HasDirectPerm_4310_28152 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4310_28152 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_8416) (o_2@@25 T@Ref) (f_4@@25 T@Field_11967_1334) ) (! (= (HasDirectPerm_4310_1334 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4310_1334 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_8416) (o_2@@26 T@Ref) (f_4@@26 T@Field_8455_53) ) (! (= (HasDirectPerm_4310_53 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4310_53 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_8416) (o_2@@27 T@Ref) (f_4@@27 T@Field_4310_4340) ) (! (= (HasDirectPerm_4310_4340 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4310_4340 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_8416) (o_2@@28 T@Ref) (f_4@@28 T@Field_8468_8469) ) (! (= (HasDirectPerm_4310_4311 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4310_4311 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8395) (ExhaleHeap@@9 T@PolymorphicMapType_8395) (Mask@@30 T@PolymorphicMapType_8416) (o_15@@0 T@Ref) (f_23@@39 T@Field_12815_12820) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_4339_29293 Mask@@30 o_15@@0 f_23@@39) (= (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@13) o_15@@0 f_23@@39) (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| ExhaleHeap@@9) o_15@@0 f_23@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| ExhaleHeap@@9) o_15@@0 f_23@@39))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8395) (ExhaleHeap@@10 T@PolymorphicMapType_8395) (Mask@@31 T@PolymorphicMapType_8416) (o_15@@1 T@Ref) (f_23@@40 T@Field_4339_1334) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_4339_1334 Mask@@31 o_15@@1 f_23@@40) (= (select (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@14) o_15@@1 f_23@@40) (select (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| ExhaleHeap@@10) o_15@@1 f_23@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| ExhaleHeap@@10) o_15@@1 f_23@@40))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8395) (ExhaleHeap@@11 T@PolymorphicMapType_8395) (Mask@@32 T@PolymorphicMapType_8416) (o_15@@2 T@Ref) (f_23@@41 T@Field_4339_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_4339_53 Mask@@32 o_15@@2 f_23@@41) (= (select (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@15) o_15@@2 f_23@@41) (select (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| ExhaleHeap@@11) o_15@@2 f_23@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| ExhaleHeap@@11) o_15@@2 f_23@@41))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8395) (ExhaleHeap@@12 T@PolymorphicMapType_8395) (Mask@@33 T@PolymorphicMapType_8416) (o_15@@3 T@Ref) (f_23@@42 T@Field_12307_12308) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_4339_4340 Mask@@33 o_15@@3 f_23@@42) (= (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@16) o_15@@3 f_23@@42) (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| ExhaleHeap@@12) o_15@@3 f_23@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| ExhaleHeap@@12) o_15@@3 f_23@@42))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8395) (ExhaleHeap@@13 T@PolymorphicMapType_8395) (Mask@@34 T@PolymorphicMapType_8416) (o_15@@4 T@Ref) (f_23@@43 T@Field_4339_4311) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_4339_4311 Mask@@34 o_15@@4 f_23@@43) (= (select (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@17) o_15@@4 f_23@@43) (select (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| ExhaleHeap@@13) o_15@@4 f_23@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| ExhaleHeap@@13) o_15@@4 f_23@@43))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8395) (ExhaleHeap@@14 T@PolymorphicMapType_8395) (Mask@@35 T@PolymorphicMapType_8416) (o_15@@5 T@Ref) (f_23@@44 T@Field_4310_12820) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_4310_28152 Mask@@35 o_15@@5 f_23@@44) (= (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@18) o_15@@5 f_23@@44) (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| ExhaleHeap@@14) o_15@@5 f_23@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| ExhaleHeap@@14) o_15@@5 f_23@@44))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8395) (ExhaleHeap@@15 T@PolymorphicMapType_8395) (Mask@@36 T@PolymorphicMapType_8416) (o_15@@6 T@Ref) (f_23@@45 T@Field_11967_1334) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_4310_1334 Mask@@36 o_15@@6 f_23@@45) (= (select (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@19) o_15@@6 f_23@@45) (select (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| ExhaleHeap@@15) o_15@@6 f_23@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| ExhaleHeap@@15) o_15@@6 f_23@@45))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8395) (ExhaleHeap@@16 T@PolymorphicMapType_8395) (Mask@@37 T@PolymorphicMapType_8416) (o_15@@7 T@Ref) (f_23@@46 T@Field_8455_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_4310_53 Mask@@37 o_15@@7 f_23@@46) (= (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@20) o_15@@7 f_23@@46) (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| ExhaleHeap@@16) o_15@@7 f_23@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| ExhaleHeap@@16) o_15@@7 f_23@@46))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8395) (ExhaleHeap@@17 T@PolymorphicMapType_8395) (Mask@@38 T@PolymorphicMapType_8416) (o_15@@8 T@Ref) (f_23@@47 T@Field_4310_4340) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_4310_4340 Mask@@38 o_15@@8 f_23@@47) (= (select (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@21) o_15@@8 f_23@@47) (select (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| ExhaleHeap@@17) o_15@@8 f_23@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| ExhaleHeap@@17) o_15@@8 f_23@@47))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8395) (ExhaleHeap@@18 T@PolymorphicMapType_8395) (Mask@@39 T@PolymorphicMapType_8416) (o_15@@9 T@Ref) (f_23@@48 T@Field_8468_8469) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_4310_4311 Mask@@39 o_15@@9 f_23@@48) (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@22) o_15@@9 f_23@@48) (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@@18) o_15@@9 f_23@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@@18) o_15@@9 f_23@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_4310_12820) ) (! (= (select (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_11967_1334) ) (! (= (select (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_8455_53) ) (! (= (select (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_8468_8469) ) (! (= (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_4310_4340) ) (! (= (select (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_12815_12820) ) (! (= (select (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_4339_1334) ) (! (= (select (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_4339_53) ) (! (= (select (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_4339_4311) ) (! (= (select (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_12307_12308) ) (! (= (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8416) (SummandMask1 T@PolymorphicMapType_8416) (SummandMask2 T@PolymorphicMapType_8416) (o_2@@39 T@Ref) (f_4@@39 T@Field_4310_12820) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8416) (SummandMask1@@0 T@PolymorphicMapType_8416) (SummandMask2@@0 T@PolymorphicMapType_8416) (o_2@@40 T@Ref) (f_4@@40 T@Field_11967_1334) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8416) (SummandMask1@@1 T@PolymorphicMapType_8416) (SummandMask2@@1 T@PolymorphicMapType_8416) (o_2@@41 T@Ref) (f_4@@41 T@Field_8455_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8416) (SummandMask1@@2 T@PolymorphicMapType_8416) (SummandMask2@@2 T@PolymorphicMapType_8416) (o_2@@42 T@Ref) (f_4@@42 T@Field_8468_8469) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8416) (SummandMask1@@3 T@PolymorphicMapType_8416) (SummandMask2@@3 T@PolymorphicMapType_8416) (o_2@@43 T@Ref) (f_4@@43 T@Field_4310_4340) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8416) (SummandMask1@@4 T@PolymorphicMapType_8416) (SummandMask2@@4 T@PolymorphicMapType_8416) (o_2@@44 T@Ref) (f_4@@44 T@Field_12815_12820) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8416) (SummandMask1@@5 T@PolymorphicMapType_8416) (SummandMask2@@5 T@PolymorphicMapType_8416) (o_2@@45 T@Ref) (f_4@@45 T@Field_4339_1334) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8416) (SummandMask1@@6 T@PolymorphicMapType_8416) (SummandMask2@@6 T@PolymorphicMapType_8416) (o_2@@46 T@Ref) (f_4@@46 T@Field_4339_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_8416) (SummandMask1@@7 T@PolymorphicMapType_8416) (SummandMask2@@7 T@PolymorphicMapType_8416) (o_2@@47 T@Ref) (f_4@@47 T@Field_4339_4311) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_8416) (SummandMask1@@8 T@PolymorphicMapType_8416) (SummandMask2@@8 T@PolymorphicMapType_8416) (o_2@@48 T@Ref) (f_4@@48 T@Field_12307_12308) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((l1_1@@2 T@PredicateInstanceDomainType) (l2@@0 T@PredicateInstanceDomainType) ) (! (= (decreasing_4299 l1_1@@2 l2@@0) (nestedPredicates l1_1@@2 l2@@0))
 :qid |stdinbpl.187:15|
 :skolemid |22|
 :pattern ( (nestedPredicates l1_1@@2 l2@@0))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8395) (Mask@@40 T@PolymorphicMapType_8416) (xs@@5 T@Ref) ) (!  (=> (state Heap@@23 Mask@@40) (= (|PI_list'| Heap@@23 xs@@5) (|PI_list#frame| (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@23) null (list xs@@5)) xs@@5)))
 :qid |stdinbpl.269:15|
 :skolemid |28|
 :pattern ( (state Heap@@23 Mask@@40) (|PI_list'| Heap@@23 xs@@5))
)))
(assert (forall ((xs@@6 T@Ref) ) (! (= (getPredWandId_4339_4340 (list xs@@6)) 0)
 :qid |stdinbpl.317:15|
 :skolemid |31|
 :pattern ( (list xs@@6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8395) (o_14 T@Ref) (f_24 T@Field_4339_1334) (v Int) ) (! (succHeap Heap@@24 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@24) (store (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@24) o_14 f_24 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@24) (store (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@24) o_14 f_24 v)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8395) (o_14@@0 T@Ref) (f_24@@0 T@Field_12815_12820) (v@@0 T@PolymorphicMapType_8944) ) (! (succHeap Heap@@25 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@25) (store (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@25) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@25) (store (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@25) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8395) (o_14@@1 T@Ref) (f_24@@1 T@Field_12307_12308) (v@@1 T@FrameType) ) (! (succHeap Heap@@26 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@26) (store (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@26) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@26) (store (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@26) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8395) (o_14@@2 T@Ref) (f_24@@2 T@Field_4339_4311) (v@@2 T@Ref) ) (! (succHeap Heap@@27 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@27) (store (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@27) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@27) (store (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@27) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8395) (o_14@@3 T@Ref) (f_24@@3 T@Field_4339_53) (v@@3 Bool) ) (! (succHeap Heap@@28 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@28) (store (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@28) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@28) (store (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@28) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8395) (o_14@@4 T@Ref) (f_24@@4 T@Field_11967_1334) (v@@4 Int) ) (! (succHeap Heap@@29 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@29) (store (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@29) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@29) (store (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@29) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8395) (o_14@@5 T@Ref) (f_24@@5 T@Field_4310_12820) (v@@5 T@PolymorphicMapType_8944) ) (! (succHeap Heap@@30 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@30) (store (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@30) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@30) (store (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@30) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_8395) (o_14@@6 T@Ref) (f_24@@6 T@Field_4310_4340) (v@@6 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@31) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@31) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@31) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@31) (store (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@31) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@31) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@31) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@31) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@31) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@31) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@31) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@31) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@31) (store (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@31) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@31) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@31) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@31) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@31) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_8395) (o_14@@7 T@Ref) (f_24@@7 T@Field_8468_8469) (v@@7 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@32) (store (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@32) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@32) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@32) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@32) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@32) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@32) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@32) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@32) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@32) (store (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@32) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@32) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@32) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@32) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@32) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@32) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@32) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@32) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_8395) (o_14@@8 T@Ref) (f_24@@8 T@Field_8455_53) (v@@8 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_8395 (store (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@33) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@33) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@33) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@33) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@33) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@33) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@33) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@33) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@33) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8395 (store (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@33) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@33) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@33) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@33) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@33) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@33) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@33) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@33) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@33) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@33)))
)))
(assert (forall ((xs@@7 T@Ref) ) (! (= (PredicateMaskField_4339 (list xs@@7)) (|list#sm| xs@@7))
 :qid |stdinbpl.309:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_4339 (list xs@@7)))
)))
(assert (forall ((o_14@@9 T@Ref) (f_22 T@Field_8468_8469) (Heap@@34 T@PolymorphicMapType_8395) ) (!  (=> (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@34) o_14@@9 $allocated) (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@34) (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@34) o_14@@9 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@34) o_14@@9 f_22))
)))
(assert (forall ((p@@2 T@Field_4310_4340) (v_1@@1 T@FrameType) (q T@Field_4310_4340) (w@@1 T@FrameType) (r T@Field_4310_4340) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8455_8455 p@@2 v_1@@1 q w@@1) (InsidePredicate_8455_8455 q w@@1 r u)) (InsidePredicate_8455_8455 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8455_8455 p@@2 v_1@@1 q w@@1) (InsidePredicate_8455_8455 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_4310_4340) (v_1@@2 T@FrameType) (q@@0 T@Field_4310_4340) (w@@2 T@FrameType) (r@@0 T@Field_12307_12308) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_8455_8455 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8455_4339 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_8455_4339 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8455_8455 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8455_4339 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_4310_4340) (v_1@@3 T@FrameType) (q@@1 T@Field_12307_12308) (w@@3 T@FrameType) (r@@1 T@Field_4310_4340) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_8455_4339 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4339_8455 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_8455_8455 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8455_4339 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4339_8455 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_4310_4340) (v_1@@4 T@FrameType) (q@@2 T@Field_12307_12308) (w@@4 T@FrameType) (r@@2 T@Field_12307_12308) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_8455_4339 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4339_4339 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_8455_4339 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8455_4339 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4339_4339 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_12307_12308) (v_1@@5 T@FrameType) (q@@3 T@Field_4310_4340) (w@@5 T@FrameType) (r@@3 T@Field_4310_4340) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_4339_8455 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8455_8455 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_4339_8455 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4339_8455 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8455_8455 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_12307_12308) (v_1@@6 T@FrameType) (q@@4 T@Field_4310_4340) (w@@6 T@FrameType) (r@@4 T@Field_12307_12308) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_4339_8455 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8455_4339 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_4339_4339 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4339_8455 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8455_4339 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_12307_12308) (v_1@@7 T@FrameType) (q@@5 T@Field_12307_12308) (w@@7 T@FrameType) (r@@5 T@Field_4310_4340) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_4339_4339 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4339_8455 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_4339_8455 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4339_4339 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4339_8455 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_12307_12308) (v_1@@8 T@FrameType) (q@@6 T@Field_12307_12308) (w@@8 T@FrameType) (r@@6 T@Field_12307_12308) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_4339_4339 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4339_4339 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_4339_4339 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4339_4339 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4339_4339 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@4 () T@PolymorphicMapType_8416)
(declare-fun Heap@1 () T@PolymorphicMapType_8395)
(declare-fun xs@@8 () T@Ref)
(declare-fun Mask@17 () T@PolymorphicMapType_8416)
(declare-fun Heap@4 () T@PolymorphicMapType_8395)
(declare-fun ys@1 () T@Ref)
(declare-fun Mask@23 () T@PolymorphicMapType_8416)
(declare-fun Heap@14 () T@PolymorphicMapType_8395)
(declare-fun Mask@24 () T@PolymorphicMapType_8416)
(declare-fun old_W1_T0@0 () T@PredicateInstanceDomainType)
(declare-fun Heap@13 () T@PolymorphicMapType_8395)
(declare-fun Mask@22 () T@PolymorphicMapType_8416)
(declare-fun Heap@11 () T@PolymorphicMapType_8395)
(declare-fun freshObj@0 () T@Ref)
(declare-fun newPMask@0 () T@PolymorphicMapType_8944)
(declare-fun Heap@12 () T@PolymorphicMapType_8395)
(declare-fun Heap@10 () T@PolymorphicMapType_8395)
(declare-fun Heap@7 () T@PolymorphicMapType_8395)
(declare-fun Heap@8 () T@PolymorphicMapType_8395)
(declare-fun Heap@9 () T@PolymorphicMapType_8395)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@21 () T@PolymorphicMapType_8416)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_4311 (T@Ref) T@FrameType)
(declare-fun FrameFragment_4340 (T@FrameType) T@FrameType)
(declare-fun Mask@20 () T@PolymorphicMapType_8416)
(declare-fun Mask@19 () T@PolymorphicMapType_8416)
(declare-fun Mask@18 () T@PolymorphicMapType_8416)
(declare-fun n () T@Ref)
(declare-fun Heap@5 () T@PolymorphicMapType_8395)
(declare-fun Heap@6 () T@PolymorphicMapType_8395)
(declare-fun list__14324893200@0 () T@PredicateInstanceDomainType)
(declare-fun list__3388976200@0 () T@PredicateInstanceDomainType)
(declare-fun Mask@15 () T@PolymorphicMapType_8416)
(declare-fun Mask@16 () T@PolymorphicMapType_8416)
(declare-fun Mask@14 () T@PolymorphicMapType_8416)
(declare-fun ExhaleHeap@2 () T@PolymorphicMapType_8395)
(declare-fun Heap@3 () T@PolymorphicMapType_8395)
(declare-fun newVersion@1 () T@FrameType)
(declare-fun Mask@10 () T@PolymorphicMapType_8416)
(declare-fun ys@0 () T@Ref)
(declare-fun Mask@9 () T@PolymorphicMapType_8416)
(declare-fun Mask@7 () T@PolymorphicMapType_8416)
(declare-fun Mask@6 () T@PolymorphicMapType_8416)
(declare-fun Mask@11 () T@PolymorphicMapType_8416)
(declare-fun Mask@12 () T@PolymorphicMapType_8416)
(declare-fun Mask@13 () T@PolymorphicMapType_8416)
(declare-fun Heap@2 () T@PolymorphicMapType_8395)
(declare-fun Mask@5 () T@PolymorphicMapType_8416)
(declare-fun list__1432489320@0 () T@PredicateInstanceDomainType)
(declare-fun list__338897620@0 () T@PredicateInstanceDomainType)
(declare-fun Mask@2 () T@PolymorphicMapType_8416)
(declare-fun Mask@3 () T@PolymorphicMapType_8416)
(declare-fun Mask@1 () T@PolymorphicMapType_8416)
(declare-fun Heap@@35 () T@PolymorphicMapType_8395)
(declare-fun Heap@0 () T@PolymorphicMapType_8395)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_8416)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun ys () T@Ref)
(set-info :boogie-vc-id alwaysAppendLoop)
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
 (=> (= (ControlFlow 0 0) 111) (let ((anon65_Then_correct  (=> (= (ControlFlow 0 94) (- 0 93)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@4) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@1) xs@@8 next))))))))
(let ((anon77_Then_correct  (=> (= (ControlFlow 0 60) (- 0 59)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@17) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@4) ys@1 next))))))))
(let ((anon87_Then_correct  (=> (= (ControlFlow 0 28) (- 0 27)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@23) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@14) ys@1 next))))))))
(let ((anon85_Then_correct  (=> (= (ControlFlow 0 23) (- 0 22)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@23) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@14) ys@1 next))))))))
(let ((anon57_correct true))
(let ((anon89_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 15) 12)) anon57_correct)))
(let ((anon89_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (<= FullPerm (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@24) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@14) ys@1 next))))) (=> (<= FullPerm (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@24) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@14) ys@1 next)))) (=> (= (ControlFlow 0 13) 12) anon57_correct))))))
(let ((anon55_correct  (=> (= Mask@24 (PolymorphicMapType_8416 (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@23) (store (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@23) ys@1 next (- (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@23) ys@1 next) FullPerm)) (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| Mask@23) (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| Mask@23) (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| Mask@23) (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| Mask@23) (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| Mask@23) (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| Mask@23) (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| Mask@23) (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| Mask@23))) (and (=> (= (ControlFlow 0 16) 13) anon89_Then_correct) (=> (= (ControlFlow 0 16) 15) anon89_Else_correct)))))
(let ((anon88_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 19) 16)) anon55_correct)))
(let ((anon88_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (<= FullPerm (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@23) ys@1 next))) (=> (<= FullPerm (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@23) ys@1 next)) (=> (= (ControlFlow 0 17) 16) anon55_correct))))))
(let ((anon53_correct  (=> (state Heap@14 Mask@23) (and (=> (= (ControlFlow 0 20) 17) anon88_Then_correct) (=> (= (ControlFlow 0 20) 19) anon88_Else_correct)))))
(let ((anon52_correct  (and (=> (= (ControlFlow 0 24) (- 0 25)) (and (decreasing_4299 (PI_list Heap@14 (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@14) ys@1 next)) old_W1_T0@0) (bounded_4301 old_W1_T0@0))) (=> (and (decreasing_4299 (PI_list Heap@14 (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@14) ys@1 next)) old_W1_T0@0) (bounded_4301 old_W1_T0@0)) (=> (= (ControlFlow 0 24) 20) anon53_correct)))))
(let ((anon86_Then_correct  (=> (not (and (decreasing_4299 (PI_list Heap@14 (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@14) ys@1 next)) old_W1_T0@0) (bounded_4301 old_W1_T0@0))) (and (=> (= (ControlFlow 0 29) (- 0 30)) (HasDirectPerm_4310_4311 Mask@23 ys@1 next)) (=> (HasDirectPerm_4310_4311 Mask@23 ys@1 next) (and (=> (= (ControlFlow 0 29) 28) anon87_Then_correct) (=> (= (ControlFlow 0 29) 24) anon52_correct)))))))
(let ((anon86_Else_correct  (=> (and (and (decreasing_4299 (PI_list Heap@14 (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@14) ys@1 next)) old_W1_T0@0) (bounded_4301 old_W1_T0@0)) (= (ControlFlow 0 26) 24)) anon52_correct)))
(let ((anon84_Then_correct  (=> (not (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@14) ys@1 next) null)) (and (=> (= (ControlFlow 0 31) (- 0 32)) (HasDirectPerm_4310_4311 Mask@23 ys@1 next)) (=> (HasDirectPerm_4310_4311 Mask@23 ys@1 next) (and (and (=> (= (ControlFlow 0 31) 23) anon85_Then_correct) (=> (= (ControlFlow 0 31) 29) anon86_Then_correct)) (=> (= (ControlFlow 0 31) 26) anon86_Else_correct)))))))
(let ((anon84_Else_correct  (=> (and (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@14) ys@1 next) null) (= (ControlFlow 0 21) 20)) anon53_correct)))
(let ((anon46_correct  (=> (state Heap@14 Mask@23) (and (=> (= (ControlFlow 0 33) (- 0 34)) (HasDirectPerm_4310_4311 Mask@23 ys@1 next)) (=> (HasDirectPerm_4310_4311 Mask@23 ys@1 next) (and (=> (= (ControlFlow 0 33) 31) anon84_Then_correct) (=> (= (ControlFlow 0 33) 21) anon84_Else_correct)))))))
(let ((anon45_correct  (=> (state Heap@13 Mask@22) (=> (and (and (state Heap@13 Mask@22) (= Heap@14 Heap@13)) (and (= Mask@23 Mask@22) (= (ControlFlow 0 36) 33))) anon46_correct))))
(let ((anon83_Else_correct  (=> (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@11) freshObj@0 next) null) (=> (and (= Heap@13 Heap@11) (= (ControlFlow 0 38) 36)) anon45_correct))))
(let ((anon83_Then_correct  (=> (not (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@11) freshObj@0 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_5 T@Ref) (f_11 T@Field_8468_8469) ) (!  (=> (or (select (|PolymorphicMapType_8944_4310_4311#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@11) null (|list#sm| freshObj@0))) o_5 f_11) (select (|PolymorphicMapType_8944_4310_4311#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@11) null (|list#sm| (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@11) freshObj@0 next)))) o_5 f_11)) (select (|PolymorphicMapType_8944_4310_4311#PolymorphicMapType_8944| newPMask@0) o_5 f_11))
 :qid |stdinbpl.776:45|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_8944_4310_4311#PolymorphicMapType_8944| newPMask@0) o_5 f_11))
)) (forall ((o_5@@0 T@Ref) (f_11@@0 T@Field_8455_53) ) (!  (=> (or (select (|PolymorphicMapType_8944_4310_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@11) null (|list#sm| freshObj@0))) o_5@@0 f_11@@0) (select (|PolymorphicMapType_8944_4310_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@11) null (|list#sm| (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@11) freshObj@0 next)))) o_5@@0 f_11@@0)) (select (|PolymorphicMapType_8944_4310_53#PolymorphicMapType_8944| newPMask@0) o_5@@0 f_11@@0))
 :qid |stdinbpl.776:45|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_8944_4310_53#PolymorphicMapType_8944| newPMask@0) o_5@@0 f_11@@0))
))) (forall ((o_5@@1 T@Ref) (f_11@@1 T@Field_11967_1334) ) (!  (=> (or (select (|PolymorphicMapType_8944_4310_1334#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@11) null (|list#sm| freshObj@0))) o_5@@1 f_11@@1) (select (|PolymorphicMapType_8944_4310_1334#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@11) null (|list#sm| (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@11) freshObj@0 next)))) o_5@@1 f_11@@1)) (select (|PolymorphicMapType_8944_4310_1334#PolymorphicMapType_8944| newPMask@0) o_5@@1 f_11@@1))
 :qid |stdinbpl.776:45|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_8944_4310_1334#PolymorphicMapType_8944| newPMask@0) o_5@@1 f_11@@1))
))) (forall ((o_5@@2 T@Ref) (f_11@@2 T@Field_4310_4340) ) (!  (=> (or (select (|PolymorphicMapType_8944_4310_12308#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@11) null (|list#sm| freshObj@0))) o_5@@2 f_11@@2) (select (|PolymorphicMapType_8944_4310_12308#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@11) null (|list#sm| (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@11) freshObj@0 next)))) o_5@@2 f_11@@2)) (select (|PolymorphicMapType_8944_4310_12308#PolymorphicMapType_8944| newPMask@0) o_5@@2 f_11@@2))
 :qid |stdinbpl.776:45|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_8944_4310_12308#PolymorphicMapType_8944| newPMask@0) o_5@@2 f_11@@2))
))) (forall ((o_5@@3 T@Ref) (f_11@@3 T@Field_4310_12820) ) (!  (=> (or (select (|PolymorphicMapType_8944_4310_31007#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@11) null (|list#sm| freshObj@0))) o_5@@3 f_11@@3) (select (|PolymorphicMapType_8944_4310_31007#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@11) null (|list#sm| (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@11) freshObj@0 next)))) o_5@@3 f_11@@3)) (select (|PolymorphicMapType_8944_4310_31007#PolymorphicMapType_8944| newPMask@0) o_5@@3 f_11@@3))
 :qid |stdinbpl.776:45|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_8944_4310_31007#PolymorphicMapType_8944| newPMask@0) o_5@@3 f_11@@3))
))) (forall ((o_5@@4 T@Ref) (f_11@@4 T@Field_4339_4311) ) (!  (=> (or (select (|PolymorphicMapType_8944_12307_4311#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@11) null (|list#sm| freshObj@0))) o_5@@4 f_11@@4) (select (|PolymorphicMapType_8944_12307_4311#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@11) null (|list#sm| (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@11) freshObj@0 next)))) o_5@@4 f_11@@4)) (select (|PolymorphicMapType_8944_12307_4311#PolymorphicMapType_8944| newPMask@0) o_5@@4 f_11@@4))
 :qid |stdinbpl.776:45|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_8944_12307_4311#PolymorphicMapType_8944| newPMask@0) o_5@@4 f_11@@4))
))) (forall ((o_5@@5 T@Ref) (f_11@@5 T@Field_4339_53) ) (!  (=> (or (select (|PolymorphicMapType_8944_12307_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@11) null (|list#sm| freshObj@0))) o_5@@5 f_11@@5) (select (|PolymorphicMapType_8944_12307_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@11) null (|list#sm| (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@11) freshObj@0 next)))) o_5@@5 f_11@@5)) (select (|PolymorphicMapType_8944_12307_53#PolymorphicMapType_8944| newPMask@0) o_5@@5 f_11@@5))
 :qid |stdinbpl.776:45|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_8944_12307_53#PolymorphicMapType_8944| newPMask@0) o_5@@5 f_11@@5))
))) (forall ((o_5@@6 T@Ref) (f_11@@6 T@Field_4339_1334) ) (!  (=> (or (select (|PolymorphicMapType_8944_12307_1334#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@11) null (|list#sm| freshObj@0))) o_5@@6 f_11@@6) (select (|PolymorphicMapType_8944_12307_1334#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@11) null (|list#sm| (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@11) freshObj@0 next)))) o_5@@6 f_11@@6)) (select (|PolymorphicMapType_8944_12307_1334#PolymorphicMapType_8944| newPMask@0) o_5@@6 f_11@@6))
 :qid |stdinbpl.776:45|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_8944_12307_1334#PolymorphicMapType_8944| newPMask@0) o_5@@6 f_11@@6))
))) (forall ((o_5@@7 T@Ref) (f_11@@7 T@Field_12307_12308) ) (!  (=> (or (select (|PolymorphicMapType_8944_12307_12308#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@11) null (|list#sm| freshObj@0))) o_5@@7 f_11@@7) (select (|PolymorphicMapType_8944_12307_12308#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@11) null (|list#sm| (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@11) freshObj@0 next)))) o_5@@7 f_11@@7)) (select (|PolymorphicMapType_8944_12307_12308#PolymorphicMapType_8944| newPMask@0) o_5@@7 f_11@@7))
 :qid |stdinbpl.776:45|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_8944_12307_12308#PolymorphicMapType_8944| newPMask@0) o_5@@7 f_11@@7))
))) (forall ((o_5@@8 T@Ref) (f_11@@8 T@Field_12815_12820) ) (!  (=> (or (select (|PolymorphicMapType_8944_12307_32055#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@11) null (|list#sm| freshObj@0))) o_5@@8 f_11@@8) (select (|PolymorphicMapType_8944_12307_32055#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@11) null (|list#sm| (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@11) freshObj@0 next)))) o_5@@8 f_11@@8)) (select (|PolymorphicMapType_8944_12307_32055#PolymorphicMapType_8944| newPMask@0) o_5@@8 f_11@@8))
 :qid |stdinbpl.776:45|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_8944_12307_32055#PolymorphicMapType_8944| newPMask@0) o_5@@8 f_11@@8))
))) (= Heap@12 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@11) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@11) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@11) (store (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@11) null (|list#sm| freshObj@0) newPMask@0) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@11) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@11) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@11) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@11) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@11) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@11)))) (and (= Heap@13 Heap@12) (= (ControlFlow 0 37) 36))) anon45_correct))))
(let ((anon43_correct  (=> (= Heap@11 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@10) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@10) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@10) (store (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@10) null (|list#sm| freshObj@0) (PolymorphicMapType_8944 (store (|PolymorphicMapType_8944_4310_4311#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@10) null (|list#sm| freshObj@0))) freshObj@0 next true) (|PolymorphicMapType_8944_4310_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@10) null (|list#sm| freshObj@0))) (|PolymorphicMapType_8944_4310_1334#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@10) null (|list#sm| freshObj@0))) (|PolymorphicMapType_8944_4310_12308#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@10) null (|list#sm| freshObj@0))) (|PolymorphicMapType_8944_4310_31007#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@10) null (|list#sm| freshObj@0))) (|PolymorphicMapType_8944_12307_4311#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@10) null (|list#sm| freshObj@0))) (|PolymorphicMapType_8944_12307_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@10) null (|list#sm| freshObj@0))) (|PolymorphicMapType_8944_12307_1334#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@10) null (|list#sm| freshObj@0))) (|PolymorphicMapType_8944_12307_12308#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@10) null (|list#sm| freshObj@0))) (|PolymorphicMapType_8944_12307_32055#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@10) null (|list#sm| freshObj@0))))) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@10) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@10) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@10) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@10) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@10) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@10))) (and (=> (= (ControlFlow 0 39) 37) anon83_Then_correct) (=> (= (ControlFlow 0 39) 38) anon83_Else_correct)))))
(let ((anon82_Else_correct  (=> (HasDirectPerm_4339_4340 Mask@22 null (list freshObj@0)) (=> (and (= Heap@10 Heap@7) (= (ControlFlow 0 41) 39)) anon43_correct))))
(let ((anon82_Then_correct  (=> (not (HasDirectPerm_4339_4340 Mask@22 null (list freshObj@0))) (=> (and (and (= Heap@8 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@7) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@7) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@7) (store (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@7) null (|list#sm| freshObj@0) ZeroPMask) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@7) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@7) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@7) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@7) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@7) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@7))) (= Heap@9 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@8) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@8) (store (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@8) null (list freshObj@0) freshVersion@0) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@8) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@8) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@8) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@8) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@8) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@8) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@8)))) (and (= Heap@10 Heap@9) (= (ControlFlow 0 40) 39))) anon43_correct))))
(let ((anon41_correct  (=> (= Mask@22 (PolymorphicMapType_8416 (store (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@21) null (list freshObj@0) (+ (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@21) null (list freshObj@0)) FullPerm)) (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@21) (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| Mask@21) (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| Mask@21) (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| Mask@21) (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| Mask@21) (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| Mask@21) (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| Mask@21) (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| Mask@21) (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| Mask@21))) (=> (and (and (state Heap@7 Mask@22) (state Heap@7 Mask@22)) (and (|list#trigger_4339| Heap@7 (list freshObj@0)) (= (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@7) null (list freshObj@0)) (CombineFrames (FrameFragment_4311 (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@7) freshObj@0 next)) (FrameFragment_4340 (ite (not (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@7) freshObj@0 next) null)) (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@7) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@7) freshObj@0 next))) EmptyFrame)))))) (and (=> (= (ControlFlow 0 42) 40) anon82_Then_correct) (=> (= (ControlFlow 0 42) 41) anon82_Else_correct))))))
(let ((anon40_correct  (=> (and (and (= Mask@20 (PolymorphicMapType_8416 (store (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@19) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@7) freshObj@0 next)) (- (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@19) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@7) freshObj@0 next))) FullPerm)) (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@19) (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| Mask@19) (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| Mask@19) (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| Mask@19) (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| Mask@19) (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| Mask@19) (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| Mask@19) (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| Mask@19) (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| Mask@19))) (InsidePredicate_4339_4339 (list freshObj@0) (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@7) null (list freshObj@0)) (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@7) freshObj@0 next)) (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@7) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@7) freshObj@0 next))))) (and (= Mask@21 Mask@20) (= (ControlFlow 0 44) 42))) anon41_correct)))
(let ((anon81_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 47) 44)) anon40_correct)))
(let ((anon81_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 45) (- 0 46)) (<= FullPerm (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@19) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@7) freshObj@0 next))))) (=> (<= FullPerm (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@19) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@7) freshObj@0 next)))) (=> (= (ControlFlow 0 45) 44) anon40_correct))))))
(let ((anon80_Then_correct  (=> (not (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@7) freshObj@0 next) null)) (and (=> (= (ControlFlow 0 48) 45) anon81_Then_correct) (=> (= (ControlFlow 0 48) 47) anon81_Else_correct)))))
(let ((anon80_Else_correct  (=> (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@7) freshObj@0 next) null) (=> (and (= Mask@21 Mask@19) (= (ControlFlow 0 43) 42)) anon41_correct))))
(let ((anon37_correct  (=> (= Mask@19 (PolymorphicMapType_8416 (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@18) (store (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@18) freshObj@0 next (- (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@18) freshObj@0 next) FullPerm)) (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| Mask@18) (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| Mask@18) (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| Mask@18) (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| Mask@18) (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| Mask@18) (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| Mask@18) (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| Mask@18) (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| Mask@18))) (and (=> (= (ControlFlow 0 49) 48) anon80_Then_correct) (=> (= (ControlFlow 0 49) 43) anon80_Else_correct)))))
(let ((anon79_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 52) 49)) anon37_correct)))
(let ((anon79_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 50) (- 0 51)) (<= FullPerm (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@18) freshObj@0 next))) (=> (<= FullPerm (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@18) freshObj@0 next)) (=> (= (ControlFlow 0 50) 49) anon37_correct))))))
(let ((anon78_Then_correct  (=> (and (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@4) ys@1 next) null) (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@4) n $allocated)) (=> (and (and (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@4) freshObj@0 $allocated))) (= Heap@5 (PolymorphicMapType_8395 (store (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@4) freshObj@0 $allocated true) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@4) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@4) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@4) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@4) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@4) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@4) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@4) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@4) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@4)))) (and (= Mask@18 (PolymorphicMapType_8416 (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@17) (store (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@17) freshObj@0 next (+ (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@17) freshObj@0 next) FullPerm)) (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| Mask@17) (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| Mask@17) (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| Mask@17) (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| Mask@17) (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| Mask@17) (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| Mask@17) (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| Mask@17) (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| Mask@17))) (state Heap@5 Mask@18))) (and (=> (= (ControlFlow 0 53) (- 0 55)) (= FullPerm (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@18) freshObj@0 next))) (=> (= FullPerm (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@18) freshObj@0 next)) (=> (and (= Heap@6 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@5) (store (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@5) freshObj@0 next null) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@5) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@5) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@5) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@5) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@5) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@5) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@5) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@5))) (state Heap@6 Mask@18)) (and (=> (= (ControlFlow 0 53) (- 0 54)) (= FullPerm (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@18) ys@1 next))) (=> (= FullPerm (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@18) ys@1 next)) (=> (and (= Heap@7 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@6) (store (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@6) ys@1 next freshObj@0) (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@6) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@6) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@6) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@6) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@6) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@6) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@6) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@6))) (state Heap@7 Mask@18)) (and (=> (= (ControlFlow 0 53) 50) anon79_Then_correct) (=> (= (ControlFlow 0 53) 52) anon79_Else_correct))))))))))))
(let ((anon78_Else_correct  (=> (and (and (not (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@4) ys@1 next) null)) (= Heap@14 Heap@4)) (and (= Mask@23 Mask@17) (= (ControlFlow 0 35) 33))) anon46_correct)))
(let ((anon34_correct  (=> (state Heap@4 Mask@17) (and (=> (= (ControlFlow 0 56) (- 0 57)) (HasDirectPerm_4310_4311 Mask@17 ys@1 next)) (=> (HasDirectPerm_4310_4311 Mask@17 ys@1 next) (and (=> (= (ControlFlow 0 56) 53) anon78_Then_correct) (=> (= (ControlFlow 0 56) 35) anon78_Else_correct)))))))
(let ((anon77_Else_correct  (=> (and (= list__14324893200@0 (PI_list Heap@4 (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@4) ys@1 next))) (state Heap@4 Mask@17)) (=> (and (and (nestedPredicates list__14324893200@0 list__3388976200@0) (state Heap@4 Mask@17)) (and (state Heap@4 Mask@17) (= (ControlFlow 0 61) 56))) anon34_correct))))
(let ((anon76_Then_correct  (=> (not (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@4) ys@1 next) null)) (and (=> (= (ControlFlow 0 62) (- 0 63)) (HasDirectPerm_4310_4311 Mask@17 ys@1 next)) (=> (HasDirectPerm_4310_4311 Mask@17 ys@1 next) (and (=> (= (ControlFlow 0 62) 60) anon77_Then_correct) (=> (= (ControlFlow 0 62) 61) anon77_Else_correct)))))))
(let ((anon76_Else_correct  (=> (and (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@4) ys@1 next) null) (= (ControlFlow 0 58) 56)) anon34_correct)))
(let ((anon30_correct  (=> (and (state Heap@4 Mask@17) (state Heap@4 Mask@17)) (and (=> (= (ControlFlow 0 64) (- 0 65)) (HasDirectPerm_4310_4311 Mask@17 ys@1 next)) (=> (HasDirectPerm_4310_4311 Mask@17 ys@1 next) (and (=> (= (ControlFlow 0 64) 62) anon76_Then_correct) (=> (= (ControlFlow 0 64) 58) anon76_Else_correct)))))))
(let ((anon75_Else_correct  (=> (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@4) ys@1 next) null) (=> (and (= Mask@17 Mask@15) (= (ControlFlow 0 67) 64)) anon30_correct))))
(let ((anon75_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@4) ys@1 next) null)) (= Mask@16 (PolymorphicMapType_8416 (store (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@15) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@4) ys@1 next)) (+ (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@15) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@4) ys@1 next))) FullPerm)) (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@15) (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| Mask@15) (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| Mask@15) (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| Mask@15) (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| Mask@15) (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| Mask@15) (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| Mask@15) (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| Mask@15) (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| Mask@15)))) (=> (and (and (InsidePredicate_4339_4339 (list ys@1) (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@4) null (list ys@1)) (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@4) ys@1 next)) (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@4) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@4) ys@1 next)))) (state Heap@4 Mask@16)) (and (= Mask@17 Mask@16) (= (ControlFlow 0 66) 64))) anon30_correct))))
(let ((anon28_correct  (=> (not (= ys@1 null)) (=> (and (= Mask@15 (PolymorphicMapType_8416 (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@14) (store (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@14) ys@1 next (+ (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@14) ys@1 next) FullPerm)) (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| Mask@14) (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| Mask@14) (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| Mask@14) (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| Mask@14) (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| Mask@14) (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| Mask@14) (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| Mask@14) (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| Mask@14))) (state Heap@4 Mask@15)) (and (=> (= (ControlFlow 0 68) 66) anon75_Then_correct) (=> (= (ControlFlow 0 68) 67) anon75_Else_correct))))))
(let ((anon74_Else_correct  (=> (HasDirectPerm_4339_4340 Mask@14 null (list ys@1)) (=> (and (= Heap@4 ExhaleHeap@2) (= (ControlFlow 0 70) 68)) anon28_correct))))
(let ((anon74_Then_correct  (=> (and (and (not (HasDirectPerm_4339_4340 Mask@14 null (list ys@1))) (= Heap@3 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| ExhaleHeap@2) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@2) (store (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| ExhaleHeap@2) null (list ys@1) newVersion@1) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| ExhaleHeap@2) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| ExhaleHeap@2) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| ExhaleHeap@2) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| ExhaleHeap@2) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| ExhaleHeap@2) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| ExhaleHeap@2) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| ExhaleHeap@2)))) (and (= Heap@4 Heap@3) (= (ControlFlow 0 69) 68))) anon28_correct)))
(let ((anon26_correct  (=> (= Mask@14 (PolymorphicMapType_8416 (store (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@10) null (list ys@1) (- (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@10) null (list ys@1)) FullPerm)) (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@10) (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| Mask@10) (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| Mask@10) (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| Mask@10) (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| Mask@10) (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| Mask@10) (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| Mask@10) (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| Mask@10) (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| Mask@10))) (and (=> (= (ControlFlow 0 71) 69) anon74_Then_correct) (=> (= (ControlFlow 0 71) 70) anon74_Else_correct)))))
(let ((anon73_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 74) 71)) anon26_correct)))
(let ((anon73_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 72) (- 0 73)) (<= FullPerm (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@10) null (list ys@1)))) (=> (<= FullPerm (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@10) null (list ys@1))) (=> (= (ControlFlow 0 72) 71) anon26_correct))))))
(let ((anon72_Else_correct  (=> (and (and (= list__3388976200@0 (PI_list ExhaleHeap@2 ys@1)) (state ExhaleHeap@2 Mask@10)) (and (|list#trigger_4339| ExhaleHeap@2 (list ys@1)) (= (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| ExhaleHeap@2) null (list ys@1)) (CombineFrames (FrameFragment_4311 (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@2) ys@1 next)) (FrameFragment_4340 (ite (not (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@2) ys@1 next) null)) (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| ExhaleHeap@2) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@2) ys@1 next))) EmptyFrame)))))) (and (=> (= (ControlFlow 0 75) 72) anon73_Then_correct) (=> (= (ControlFlow 0 75) 74) anon73_Else_correct)))))
(let ((anon72_Then_correct  (=> (= (ControlFlow 0 11) (- 0 10)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@10) null (list ys@1)))))))
(let ((anon71_Else_correct  (=> (and (= old_W1_T0@0 (PI_list ExhaleHeap@2 (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@2) ys@0 next))) (state ExhaleHeap@2 Mask@10)) (and (=> (= (ControlFlow 0 76) (- 0 77)) (HasDirectPerm_4310_4311 Mask@10 ys@0 next)) (=> (HasDirectPerm_4310_4311 Mask@10 ys@0 next) (=> (and (= ys@1 (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@2) ys@0 next)) (state ExhaleHeap@2 Mask@10)) (and (=> (= (ControlFlow 0 76) 11) anon72_Then_correct) (=> (= (ControlFlow 0 76) 75) anon72_Else_correct))))))))
(let ((anon71_Then_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@10) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@2) ys@0 next))))))))
(let ((anon70_Then_correct  (=> (state ExhaleHeap@2 ZeroMask) (=> (and (not (= ys@0 null)) (= Mask@9 (PolymorphicMapType_8416 (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| ZeroMask) (store (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| ZeroMask) ys@0 next (+ (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| ZeroMask) ys@0 next) FullPerm)) (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| ZeroMask)))) (=> (and (and (state ExhaleHeap@2 Mask@9) (= Mask@10 (PolymorphicMapType_8416 (store (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@9) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@2) ys@0 next)) (+ (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@9) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@2) ys@0 next))) FullPerm)) (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@9) (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| Mask@9) (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| Mask@9) (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| Mask@9) (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| Mask@9) (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| Mask@9) (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| Mask@9) (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| Mask@9) (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| Mask@9)))) (and (state ExhaleHeap@2 Mask@10) (state ExhaleHeap@2 Mask@10))) (and (=> (= (ControlFlow 0 78) (- 0 80)) (HasDirectPerm_4310_4311 Mask@10 ys@0 next)) (=> (HasDirectPerm_4310_4311 Mask@10 ys@0 next) (=> (and (not (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@2) ys@0 next) null)) (state ExhaleHeap@2 Mask@10)) (and (=> (= (ControlFlow 0 78) (- 0 79)) (HasDirectPerm_4310_4311 Mask@10 ys@0 next)) (=> (HasDirectPerm_4310_4311 Mask@10 ys@0 next) (and (=> (= (ControlFlow 0 78) 9) anon71_Then_correct) (=> (= (ControlFlow 0 78) 76) anon71_Else_correct))))))))))))
(let ((anon69_Then_correct  (=> (not (= ys@0 null)) (=> (and (and (= Mask@7 (PolymorphicMapType_8416 (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@6) (store (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@6) ys@0 next (+ (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@6) ys@0 next) FullPerm)) (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| Mask@6) (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| Mask@6) (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| Mask@6) (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| Mask@6) (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| Mask@6) (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| Mask@6) (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| Mask@6) (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| Mask@6))) (state ExhaleHeap@2 Mask@7)) (and (state ExhaleHeap@2 Mask@7) (= (ControlFlow 0 6) (- 0 5)))) (HasDirectPerm_4310_4311 Mask@7 ys@0 next)))))
(let ((anon59_correct true))
(let ((anon70_Else_correct  (=> (and (and (not (not (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@2) ys@0 next) null))) (state ExhaleHeap@2 Mask@6)) (and (not (= ys@0 null)) (= Mask@11 (PolymorphicMapType_8416 (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@6) (store (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@6) ys@0 next (+ (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@6) ys@0 next) FullPerm)) (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| Mask@6) (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| Mask@6) (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| Mask@6) (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| Mask@6) (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| Mask@6) (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| Mask@6) (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| Mask@6) (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| Mask@6))))) (=> (and (and (and (state ExhaleHeap@2 Mask@11) (= Mask@12 (PolymorphicMapType_8416 (store (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@11) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@2) ys@0 next)) (+ (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@11) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| ExhaleHeap@2) ys@0 next))) FullPerm)) (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@11) (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| Mask@11) (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| Mask@11) (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| Mask@11) (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| Mask@11) (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| Mask@11) (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| Mask@11) (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| Mask@11) (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| Mask@11)))) (and (state ExhaleHeap@2 Mask@12) (state ExhaleHeap@2 Mask@12))) (and (and (state ExhaleHeap@2 Mask@12) (= Mask@13 Mask@12)) (and (= Heap@2 ExhaleHeap@2) (= (ControlFlow 0 7) 3)))) anon59_correct))))
(let ((anon17_correct  (=> (= Mask@6 (PolymorphicMapType_8416 (store (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@5) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@1) xs@@8 next)) (- (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@5) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@1) xs@@8 next))) FullPerm)) (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@5) (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| Mask@5) (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| Mask@5) (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| Mask@5) (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| Mask@5) (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| Mask@5) (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| Mask@5) (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| Mask@5) (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| Mask@5))) (=> (and (IdenticalOnKnownLocations Heap@1 ExhaleHeap@2 Mask@6) (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| ExhaleHeap@2) ys@0 $allocated)) (and (and (=> (= (ControlFlow 0 81) 6) anon69_Then_correct) (=> (= (ControlFlow 0 81) 78) anon70_Then_correct)) (=> (= (ControlFlow 0 81) 7) anon70_Else_correct))))))
(let ((anon68_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 84) 81)) anon17_correct)))
(let ((anon68_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 82) (- 0 83)) (<= FullPerm (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@5) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@1) xs@@8 next))))) (=> (<= FullPerm (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@5) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@1) xs@@8 next)))) (=> (= (ControlFlow 0 82) 81) anon17_correct))))))
(let ((anon15_correct  (=> (= Mask@5 (PolymorphicMapType_8416 (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@4) (store (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@4) xs@@8 next (- (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@4) xs@@8 next) FullPerm)) (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| Mask@4) (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| Mask@4) (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| Mask@4) (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| Mask@4) (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| Mask@4) (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| Mask@4) (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| Mask@4) (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| Mask@4))) (and (=> (= (ControlFlow 0 85) 82) anon68_Then_correct) (=> (= (ControlFlow 0 85) 84) anon68_Else_correct)))))
(let ((anon67_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 88) 85)) anon15_correct)))
(let ((anon67_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 86) (- 0 87)) (<= FullPerm (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@4) xs@@8 next))) (=> (<= FullPerm (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@4) xs@@8 next)) (=> (= (ControlFlow 0 86) 85) anon15_correct))))))
(let ((anon66_Then_correct  (=> (not (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@1) xs@@8 next) null)) (and (=> (= (ControlFlow 0 89) 86) anon67_Then_correct) (=> (= (ControlFlow 0 89) 88) anon67_Else_correct)))))
(let ((anon66_Else_correct  (=> (and (and (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@1) xs@@8 next) null) (= Mask@13 Mask@4)) (and (= Heap@2 Heap@1) (= (ControlFlow 0 4) 3))) anon59_correct)))
(let ((anon12_correct  (=> (state Heap@1 Mask@4) (and (=> (= (ControlFlow 0 90) (- 0 91)) (HasDirectPerm_4310_4311 Mask@4 xs@@8 next)) (=> (HasDirectPerm_4310_4311 Mask@4 xs@@8 next) (and (=> (= (ControlFlow 0 90) 89) anon66_Then_correct) (=> (= (ControlFlow 0 90) 4) anon66_Else_correct)))))))
(let ((anon65_Else_correct  (=> (and (= list__1432489320@0 (PI_list Heap@1 (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@1) xs@@8 next))) (state Heap@1 Mask@4)) (=> (and (and (nestedPredicates list__1432489320@0 list__338897620@0) (state Heap@1 Mask@4)) (and (state Heap@1 Mask@4) (= (ControlFlow 0 95) 90))) anon12_correct))))
(let ((anon64_Then_correct  (=> (not (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@1) xs@@8 next) null)) (and (=> (= (ControlFlow 0 96) (- 0 97)) (HasDirectPerm_4310_4311 Mask@4 xs@@8 next)) (=> (HasDirectPerm_4310_4311 Mask@4 xs@@8 next) (and (=> (= (ControlFlow 0 96) 94) anon65_Then_correct) (=> (= (ControlFlow 0 96) 95) anon65_Else_correct)))))))
(let ((anon64_Else_correct  (=> (and (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@1) xs@@8 next) null) (= (ControlFlow 0 92) 90)) anon12_correct)))
(let ((anon8_correct  (=> (and (state Heap@1 Mask@4) (state Heap@1 Mask@4)) (and (=> (= (ControlFlow 0 98) (- 0 99)) (HasDirectPerm_4310_4311 Mask@4 xs@@8 next)) (=> (HasDirectPerm_4310_4311 Mask@4 xs@@8 next) (and (=> (= (ControlFlow 0 98) 96) anon64_Then_correct) (=> (= (ControlFlow 0 98) 92) anon64_Else_correct)))))))
(let ((anon63_Else_correct  (=> (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@1) xs@@8 next) null) (=> (and (= Mask@4 Mask@2) (= (ControlFlow 0 101) 98)) anon8_correct))))
(let ((anon63_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@1) xs@@8 next) null)) (= Mask@3 (PolymorphicMapType_8416 (store (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@2) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@1) xs@@8 next)) (+ (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@2) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@1) xs@@8 next))) FullPerm)) (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@2) (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| Mask@2) (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| Mask@2) (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| Mask@2) (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| Mask@2) (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| Mask@2) (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| Mask@2) (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| Mask@2) (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| Mask@2)))) (=> (and (and (InsidePredicate_4339_4339 (list xs@@8) (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@1) null (list xs@@8)) (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@1) xs@@8 next)) (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@1) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@1) xs@@8 next)))) (state Heap@1 Mask@3)) (and (= Mask@4 Mask@3) (= (ControlFlow 0 100) 98))) anon8_correct))))
(let ((anon6_correct  (=> (not (= xs@@8 null)) (=> (and (= Mask@2 (PolymorphicMapType_8416 (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@1) (store (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@1) xs@@8 next (+ (select (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@1) xs@@8 next) FullPerm)) (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| Mask@1) (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| Mask@1) (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| Mask@1) (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| Mask@1) (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| Mask@1) (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| Mask@1) (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| Mask@1) (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| Mask@1))) (state Heap@1 Mask@2)) (and (=> (= (ControlFlow 0 102) 100) anon63_Then_correct) (=> (= (ControlFlow 0 102) 101) anon63_Else_correct))))))
(let ((anon62_Else_correct  (=> (HasDirectPerm_4339_4340 Mask@1 null (list xs@@8)) (=> (and (= Heap@1 Heap@@35) (= (ControlFlow 0 104) 102)) anon6_correct))))
(let ((anon62_Then_correct  (=> (and (and (not (HasDirectPerm_4339_4340 Mask@1 null (list xs@@8))) (= Heap@0 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@35) (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@35) (store (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@35) null (list xs@@8) newVersion@0) (|PolymorphicMapType_8395_4343_23860#PolymorphicMapType_8395| Heap@@35) (|PolymorphicMapType_8395_4310_4340#PolymorphicMapType_8395| Heap@@35) (|PolymorphicMapType_8395_4310_1334#PolymorphicMapType_8395| Heap@@35) (|PolymorphicMapType_8395_4310_28194#PolymorphicMapType_8395| Heap@@35) (|PolymorphicMapType_8395_4339_4311#PolymorphicMapType_8395| Heap@@35) (|PolymorphicMapType_8395_4339_53#PolymorphicMapType_8395| Heap@@35) (|PolymorphicMapType_8395_4339_1334#PolymorphicMapType_8395| Heap@@35)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 103) 102))) anon6_correct)))
(let ((anon4_correct  (=> (= Mask@1 (PolymorphicMapType_8416 (store (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@0) null (list xs@@8) (- (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@0) null (list xs@@8)) FullPerm)) (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| Mask@0) (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| Mask@0) (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| Mask@0) (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| Mask@0) (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| Mask@0) (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| Mask@0) (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| Mask@0) (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| Mask@0) (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| Mask@0))) (and (=> (= (ControlFlow 0 105) 103) anon62_Then_correct) (=> (= (ControlFlow 0 105) 104) anon62_Else_correct)))))
(let ((anon61_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 108) 105)) anon4_correct)))
(let ((anon61_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 106) (- 0 107)) (<= FullPerm (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@0) null (list xs@@8)))) (=> (<= FullPerm (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@0) null (list xs@@8))) (=> (= (ControlFlow 0 106) 105) anon4_correct))))))
(let ((anon60_Else_correct  (=> (and (and (= list__338897620@0 (PI_list Heap@@35 xs@@8)) (state Heap@@35 Mask@0)) (and (|list#trigger_4339| Heap@@35 (list xs@@8)) (= (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@35) null (list xs@@8)) (CombineFrames (FrameFragment_4311 (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@35) xs@@8 next)) (FrameFragment_4340 (ite (not (= (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@35) xs@@8 next) null)) (select (|PolymorphicMapType_8395_4339_4340#PolymorphicMapType_8395| Heap@@35) null (list (select (|PolymorphicMapType_8395_4174_4175#PolymorphicMapType_8395| Heap@@35) xs@@8 next))) EmptyFrame)))))) (and (=> (= (ControlFlow 0 109) 106) anon61_Then_correct) (=> (= (ControlFlow 0 109) 108) anon61_Else_correct)))))
(let ((anon60_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| Mask@0) null (list xs@@8)))))))
(let ((anon0_correct  (=> (state Heap@@35 ZeroMask) (=> (and (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@35) xs@@8 $allocated) (= Mask@0 (PolymorphicMapType_8416 (store (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| ZeroMask) null (list xs@@8) (+ (select (|PolymorphicMapType_8416_4339_4340#PolymorphicMapType_8416| ZeroMask) null (list xs@@8)) FullPerm)) (|PolymorphicMapType_8416_4310_4311#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_4339_4311#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_4339_53#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_4339_1334#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_4339_37446#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_4310_4340#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_4310_53#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_4310_1334#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_4310_37857#PolymorphicMapType_8416| ZeroMask))))) (and (and (state Heap@@35 Mask@0) (state Heap@@35 Mask@0)) (and (select (|PolymorphicMapType_8395_4171_53#PolymorphicMapType_8395| Heap@@35) ys $allocated) (state Heap@@35 Mask@0)))) (and (=> (= (ControlFlow 0 110) 2) anon60_Then_correct) (=> (= (ControlFlow 0 110) 109) anon60_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 111) 110) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 24) (- 25))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
