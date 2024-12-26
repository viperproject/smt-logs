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
(declare-sort T@Field_36934_53 0)
(declare-sort T@Field_36947_36948 0)
(declare-sort T@Field_40393_40394 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_40260_1186 0)
(declare-sort T@Field_40406_40411 0)
(declare-sort T@Field_18640_18648 0)
(declare-sort T@Field_18640_40411 0)
(declare-sort T@Field_18647_18641 0)
(declare-sort T@Field_18647_1186 0)
(declare-sort T@Field_18647_53 0)
(declare-datatypes ((T@PolymorphicMapType_36895 0)) (((PolymorphicMapType_36895 (|PolymorphicMapType_36895_18638_1186#PolymorphicMapType_36895| (Array T@Ref T@Field_40260_1186 Real)) (|PolymorphicMapType_36895_18640_18641#PolymorphicMapType_36895| (Array T@Ref T@Field_36947_36948 Real)) (|PolymorphicMapType_36895_18647_18648#PolymorphicMapType_36895| (Array T@Ref T@Field_40393_40394 Real)) (|PolymorphicMapType_36895_18638_18648#PolymorphicMapType_36895| (Array T@Ref T@Field_18640_18648 Real)) (|PolymorphicMapType_36895_18638_53#PolymorphicMapType_36895| (Array T@Ref T@Field_36934_53 Real)) (|PolymorphicMapType_36895_18638_157672#PolymorphicMapType_36895| (Array T@Ref T@Field_18640_40411 Real)) (|PolymorphicMapType_36895_18647_1186#PolymorphicMapType_36895| (Array T@Ref T@Field_18647_1186 Real)) (|PolymorphicMapType_36895_18647_18641#PolymorphicMapType_36895| (Array T@Ref T@Field_18647_18641 Real)) (|PolymorphicMapType_36895_18647_53#PolymorphicMapType_36895| (Array T@Ref T@Field_18647_53 Real)) (|PolymorphicMapType_36895_18647_158083#PolymorphicMapType_36895| (Array T@Ref T@Field_40406_40411 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_37423 0)) (((PolymorphicMapType_37423 (|PolymorphicMapType_37423_18638_1186#PolymorphicMapType_37423| (Array T@Ref T@Field_40260_1186 Bool)) (|PolymorphicMapType_37423_18640_18641#PolymorphicMapType_37423| (Array T@Ref T@Field_36947_36948 Bool)) (|PolymorphicMapType_37423_18638_53#PolymorphicMapType_37423| (Array T@Ref T@Field_36934_53 Bool)) (|PolymorphicMapType_37423_18638_40394#PolymorphicMapType_37423| (Array T@Ref T@Field_18640_18648 Bool)) (|PolymorphicMapType_37423_18638_151245#PolymorphicMapType_37423| (Array T@Ref T@Field_18640_40411 Bool)) (|PolymorphicMapType_37423_40393_1186#PolymorphicMapType_37423| (Array T@Ref T@Field_18647_1186 Bool)) (|PolymorphicMapType_37423_40393_18641#PolymorphicMapType_37423| (Array T@Ref T@Field_18647_18641 Bool)) (|PolymorphicMapType_37423_40393_53#PolymorphicMapType_37423| (Array T@Ref T@Field_18647_53 Bool)) (|PolymorphicMapType_37423_40393_40394#PolymorphicMapType_37423| (Array T@Ref T@Field_40393_40394 Bool)) (|PolymorphicMapType_37423_40393_152293#PolymorphicMapType_37423| (Array T@Ref T@Field_40406_40411 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_36874 0)) (((PolymorphicMapType_36874 (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| (Array T@Ref T@Field_36934_53 Bool)) (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| (Array T@Ref T@Field_36947_36948 T@Ref)) (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| (Array T@Ref T@Field_40393_40394 T@FrameType)) (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| (Array T@Ref T@Field_40260_1186 Int)) (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| (Array T@Ref T@Field_40406_40411 T@PolymorphicMapType_37423)) (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| (Array T@Ref T@Field_18640_18648 T@FrameType)) (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| (Array T@Ref T@Field_18640_40411 T@PolymorphicMapType_37423)) (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| (Array T@Ref T@Field_18647_18641 T@Ref)) (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| (Array T@Ref T@Field_18647_1186 Int)) (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| (Array T@Ref T@Field_18647_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_36934_53)
(declare-fun data () T@Field_40260_1186)
(declare-fun next_child () T@Field_36947_36948)
(declare-fun next_sibling () T@Field_36947_36948)
(declare-fun succHeap (T@PolymorphicMapType_36874 T@PolymorphicMapType_36874) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_36874 T@PolymorphicMapType_36874) Bool)
(declare-fun state (T@PolymorphicMapType_36874 T@PolymorphicMapType_36895) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_36895) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_37423)
(declare-fun tree (T@Ref) T@Field_40393_40394)
(declare-fun IsPredicateField_18647_18648 (T@Field_40393_40394) Bool)
(declare-fun |tree#trigger_18647| (T@PolymorphicMapType_36874 T@Field_40393_40394) Bool)
(declare-fun |tree#everUsed_18647| (T@Field_40393_40394) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_36874 T@PolymorphicMapType_36874 T@PolymorphicMapType_36895) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_18647 (T@Field_40393_40394) T@Field_40406_40411)
(declare-fun HasDirectPerm_18647_18648 (T@PolymorphicMapType_36895 T@Ref T@Field_40393_40394) Bool)
(declare-fun IsPredicateField_18640_149788 (T@Field_18640_18648) Bool)
(declare-fun PredicateMaskField_18640 (T@Field_18640_18648) T@Field_18640_40411)
(declare-fun HasDirectPerm_18640_18648 (T@PolymorphicMapType_36895 T@Ref T@Field_18640_18648) Bool)
(declare-fun IsWandField_18647_153458 (T@Field_40393_40394) Bool)
(declare-fun WandMaskField_18647 (T@Field_40393_40394) T@Field_40406_40411)
(declare-fun IsWandField_18640_153101 (T@Field_18640_18648) Bool)
(declare-fun WandMaskField_18640 (T@Field_18640_18648) T@Field_18640_40411)
(declare-fun |tree#sm| (T@Ref) T@Field_40406_40411)
(declare-fun dummyHeap () T@PolymorphicMapType_36874)
(declare-fun ZeroMask () T@PolymorphicMapType_36895)
(declare-fun InsidePredicate_36934_36934 (T@Field_18640_18648 T@FrameType T@Field_18640_18648 T@FrameType) Bool)
(declare-fun InsidePredicate_18647_18647 (T@Field_40393_40394 T@FrameType T@Field_40393_40394 T@FrameType) Bool)
(declare-fun IsPredicateField_18638_1186 (T@Field_40260_1186) Bool)
(declare-fun IsWandField_18638_1186 (T@Field_40260_1186) Bool)
(declare-fun IsPredicateField_18640_18641 (T@Field_36947_36948) Bool)
(declare-fun IsWandField_18640_18641 (T@Field_36947_36948) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_18647_160361 (T@Field_40406_40411) Bool)
(declare-fun IsWandField_18647_160377 (T@Field_40406_40411) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_18647_53 (T@Field_18647_53) Bool)
(declare-fun IsWandField_18647_53 (T@Field_18647_53) Bool)
(declare-fun IsPredicateField_18647_18641 (T@Field_18647_18641) Bool)
(declare-fun IsWandField_18647_18641 (T@Field_18647_18641) Bool)
(declare-fun IsPredicateField_18647_1186 (T@Field_18647_1186) Bool)
(declare-fun IsWandField_18647_1186 (T@Field_18647_1186) Bool)
(declare-fun IsPredicateField_18638_159530 (T@Field_18640_40411) Bool)
(declare-fun IsWandField_18638_159546 (T@Field_18640_40411) Bool)
(declare-fun IsPredicateField_18638_53 (T@Field_36934_53) Bool)
(declare-fun IsWandField_18638_53 (T@Field_36934_53) Bool)
(declare-fun HasDirectPerm_18647_149543 (T@PolymorphicMapType_36895 T@Ref T@Field_40406_40411) Bool)
(declare-fun HasDirectPerm_18647_53 (T@PolymorphicMapType_36895 T@Ref T@Field_18647_53) Bool)
(declare-fun HasDirectPerm_18647_1186 (T@PolymorphicMapType_36895 T@Ref T@Field_18647_1186) Bool)
(declare-fun HasDirectPerm_18647_18641 (T@PolymorphicMapType_36895 T@Ref T@Field_18647_18641) Bool)
(declare-fun HasDirectPerm_18640_148402 (T@PolymorphicMapType_36895 T@Ref T@Field_18640_40411) Bool)
(declare-fun HasDirectPerm_18640_53 (T@PolymorphicMapType_36895 T@Ref T@Field_36934_53) Bool)
(declare-fun HasDirectPerm_18638_1186 (T@PolymorphicMapType_36895 T@Ref T@Field_40260_1186) Bool)
(declare-fun HasDirectPerm_18640_18641 (T@PolymorphicMapType_36895 T@Ref T@Field_36947_36948) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_36895 T@PolymorphicMapType_36895 T@PolymorphicMapType_36895) Bool)
(declare-fun getPredWandId_18647_18648 (T@Field_40393_40394) Int)
(declare-fun InsidePredicate_36934_18647 (T@Field_18640_18648 T@FrameType T@Field_40393_40394 T@FrameType) Bool)
(declare-fun InsidePredicate_18647_36934 (T@Field_40393_40394 T@FrameType T@Field_18640_18648 T@FrameType) Bool)
(assert (distinct next_child next_sibling)
)
(assert (forall ((Heap0 T@PolymorphicMapType_36874) (Heap1 T@PolymorphicMapType_36874) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_36874) (Mask T@PolymorphicMapType_36895) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_36874) (Heap1@@0 T@PolymorphicMapType_36874) (Heap2 T@PolymorphicMapType_36874) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_40406_40411) ) (!  (not (select (|PolymorphicMapType_37423_40393_152293#PolymorphicMapType_37423| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_37423_40393_152293#PolymorphicMapType_37423| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_40393_40394) ) (!  (not (select (|PolymorphicMapType_37423_40393_40394#PolymorphicMapType_37423| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_37423_40393_40394#PolymorphicMapType_37423| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_18647_53) ) (!  (not (select (|PolymorphicMapType_37423_40393_53#PolymorphicMapType_37423| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_37423_40393_53#PolymorphicMapType_37423| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_18647_18641) ) (!  (not (select (|PolymorphicMapType_37423_40393_18641#PolymorphicMapType_37423| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_37423_40393_18641#PolymorphicMapType_37423| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_18647_1186) ) (!  (not (select (|PolymorphicMapType_37423_40393_1186#PolymorphicMapType_37423| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_37423_40393_1186#PolymorphicMapType_37423| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_18640_40411) ) (!  (not (select (|PolymorphicMapType_37423_18638_151245#PolymorphicMapType_37423| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_37423_18638_151245#PolymorphicMapType_37423| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_18640_18648) ) (!  (not (select (|PolymorphicMapType_37423_18638_40394#PolymorphicMapType_37423| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_37423_18638_40394#PolymorphicMapType_37423| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_36934_53) ) (!  (not (select (|PolymorphicMapType_37423_18638_53#PolymorphicMapType_37423| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_37423_18638_53#PolymorphicMapType_37423| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_36947_36948) ) (!  (not (select (|PolymorphicMapType_37423_18640_18641#PolymorphicMapType_37423| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_37423_18640_18641#PolymorphicMapType_37423| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_40260_1186) ) (!  (not (select (|PolymorphicMapType_37423_18638_1186#PolymorphicMapType_37423| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_37423_18638_1186#PolymorphicMapType_37423| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_18647_18648 (tree this))
 :qid |stdinbpl.201:15|
 :skolemid |23|
 :pattern ( (tree this))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_36874) (this@@0 T@Ref) ) (! (|tree#everUsed_18647| (tree this@@0))
 :qid |stdinbpl.220:15|
 :skolemid |27|
 :pattern ( (|tree#trigger_18647| Heap@@0 (tree this@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_36874) (ExhaleHeap T@PolymorphicMapType_36874) (Mask@@0 T@PolymorphicMapType_36895) (pm_f_59 T@Field_40393_40394) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_18647_18648 Mask@@0 null pm_f_59) (IsPredicateField_18647_18648 pm_f_59)) (= (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@1) null (PredicateMaskField_18647 pm_f_59)) (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| ExhaleHeap) null (PredicateMaskField_18647 pm_f_59)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_18647_18648 pm_f_59) (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| ExhaleHeap) null (PredicateMaskField_18647 pm_f_59)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_36874) (ExhaleHeap@@0 T@PolymorphicMapType_36874) (Mask@@1 T@PolymorphicMapType_36895) (pm_f_59@@0 T@Field_18640_18648) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_18640_18648 Mask@@1 null pm_f_59@@0) (IsPredicateField_18640_149788 pm_f_59@@0)) (= (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@2) null (PredicateMaskField_18640 pm_f_59@@0)) (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| ExhaleHeap@@0) null (PredicateMaskField_18640 pm_f_59@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_18640_149788 pm_f_59@@0) (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| ExhaleHeap@@0) null (PredicateMaskField_18640 pm_f_59@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_36874) (ExhaleHeap@@1 T@PolymorphicMapType_36874) (Mask@@2 T@PolymorphicMapType_36895) (pm_f_59@@1 T@Field_40393_40394) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_18647_18648 Mask@@2 null pm_f_59@@1) (IsWandField_18647_153458 pm_f_59@@1)) (= (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@3) null (WandMaskField_18647 pm_f_59@@1)) (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| ExhaleHeap@@1) null (WandMaskField_18647 pm_f_59@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_18647_153458 pm_f_59@@1) (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| ExhaleHeap@@1) null (WandMaskField_18647 pm_f_59@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_36874) (ExhaleHeap@@2 T@PolymorphicMapType_36874) (Mask@@3 T@PolymorphicMapType_36895) (pm_f_59@@2 T@Field_18640_18648) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_18640_18648 Mask@@3 null pm_f_59@@2) (IsWandField_18640_153101 pm_f_59@@2)) (= (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@4) null (WandMaskField_18640 pm_f_59@@2)) (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| ExhaleHeap@@2) null (WandMaskField_18640 pm_f_59@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_18640_153101 pm_f_59@@2) (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| ExhaleHeap@@2) null (WandMaskField_18640 pm_f_59@@2)))
)))
(assert (forall ((this@@1 T@Ref) (this2 T@Ref) ) (!  (=> (= (tree this@@1) (tree this2)) (= this@@1 this2))
 :qid |stdinbpl.211:15|
 :skolemid |25|
 :pattern ( (tree this@@1) (tree this2))
)))
(assert (forall ((this@@2 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|tree#sm| this@@2) (|tree#sm| this2@@0)) (= this@@2 this2@@0))
 :qid |stdinbpl.215:15|
 :skolemid |26|
 :pattern ( (|tree#sm| this@@2) (|tree#sm| this2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_36874) (ExhaleHeap@@3 T@PolymorphicMapType_36874) (Mask@@4 T@PolymorphicMapType_36895) (pm_f_59@@3 T@Field_40393_40394) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_18647_18648 Mask@@4 null pm_f_59@@3) (IsPredicateField_18647_18648 pm_f_59@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_59 T@Ref) (f_202 T@Field_40260_1186) ) (!  (=> (select (|PolymorphicMapType_37423_18638_1186#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@5) null (PredicateMaskField_18647 pm_f_59@@3))) o2_59 f_202) (= (select (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@5) o2_59 f_202) (select (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| ExhaleHeap@@3) o2_59 f_202)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| ExhaleHeap@@3) o2_59 f_202))
)) (forall ((o2_59@@0 T@Ref) (f_202@@0 T@Field_36947_36948) ) (!  (=> (select (|PolymorphicMapType_37423_18640_18641#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@5) null (PredicateMaskField_18647 pm_f_59@@3))) o2_59@@0 f_202@@0) (= (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@5) o2_59@@0 f_202@@0) (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| ExhaleHeap@@3) o2_59@@0 f_202@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| ExhaleHeap@@3) o2_59@@0 f_202@@0))
))) (forall ((o2_59@@1 T@Ref) (f_202@@1 T@Field_36934_53) ) (!  (=> (select (|PolymorphicMapType_37423_18638_53#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@5) null (PredicateMaskField_18647 pm_f_59@@3))) o2_59@@1 f_202@@1) (= (select (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@5) o2_59@@1 f_202@@1) (select (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| ExhaleHeap@@3) o2_59@@1 f_202@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| ExhaleHeap@@3) o2_59@@1 f_202@@1))
))) (forall ((o2_59@@2 T@Ref) (f_202@@2 T@Field_18640_18648) ) (!  (=> (select (|PolymorphicMapType_37423_18638_40394#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@5) null (PredicateMaskField_18647 pm_f_59@@3))) o2_59@@2 f_202@@2) (= (select (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@5) o2_59@@2 f_202@@2) (select (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| ExhaleHeap@@3) o2_59@@2 f_202@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| ExhaleHeap@@3) o2_59@@2 f_202@@2))
))) (forall ((o2_59@@3 T@Ref) (f_202@@3 T@Field_18640_40411) ) (!  (=> (select (|PolymorphicMapType_37423_18638_151245#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@5) null (PredicateMaskField_18647 pm_f_59@@3))) o2_59@@3 f_202@@3) (= (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@5) o2_59@@3 f_202@@3) (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| ExhaleHeap@@3) o2_59@@3 f_202@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| ExhaleHeap@@3) o2_59@@3 f_202@@3))
))) (forall ((o2_59@@4 T@Ref) (f_202@@4 T@Field_18647_1186) ) (!  (=> (select (|PolymorphicMapType_37423_40393_1186#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@5) null (PredicateMaskField_18647 pm_f_59@@3))) o2_59@@4 f_202@@4) (= (select (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@5) o2_59@@4 f_202@@4) (select (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| ExhaleHeap@@3) o2_59@@4 f_202@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| ExhaleHeap@@3) o2_59@@4 f_202@@4))
))) (forall ((o2_59@@5 T@Ref) (f_202@@5 T@Field_18647_18641) ) (!  (=> (select (|PolymorphicMapType_37423_40393_18641#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@5) null (PredicateMaskField_18647 pm_f_59@@3))) o2_59@@5 f_202@@5) (= (select (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@5) o2_59@@5 f_202@@5) (select (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| ExhaleHeap@@3) o2_59@@5 f_202@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| ExhaleHeap@@3) o2_59@@5 f_202@@5))
))) (forall ((o2_59@@6 T@Ref) (f_202@@6 T@Field_18647_53) ) (!  (=> (select (|PolymorphicMapType_37423_40393_53#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@5) null (PredicateMaskField_18647 pm_f_59@@3))) o2_59@@6 f_202@@6) (= (select (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@5) o2_59@@6 f_202@@6) (select (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| ExhaleHeap@@3) o2_59@@6 f_202@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| ExhaleHeap@@3) o2_59@@6 f_202@@6))
))) (forall ((o2_59@@7 T@Ref) (f_202@@7 T@Field_40393_40394) ) (!  (=> (select (|PolymorphicMapType_37423_40393_40394#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@5) null (PredicateMaskField_18647 pm_f_59@@3))) o2_59@@7 f_202@@7) (= (select (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@5) o2_59@@7 f_202@@7) (select (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| ExhaleHeap@@3) o2_59@@7 f_202@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| ExhaleHeap@@3) o2_59@@7 f_202@@7))
))) (forall ((o2_59@@8 T@Ref) (f_202@@8 T@Field_40406_40411) ) (!  (=> (select (|PolymorphicMapType_37423_40393_152293#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@5) null (PredicateMaskField_18647 pm_f_59@@3))) o2_59@@8 f_202@@8) (= (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@5) o2_59@@8 f_202@@8) (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| ExhaleHeap@@3) o2_59@@8 f_202@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| ExhaleHeap@@3) o2_59@@8 f_202@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_18647_18648 pm_f_59@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_36874) (ExhaleHeap@@4 T@PolymorphicMapType_36874) (Mask@@5 T@PolymorphicMapType_36895) (pm_f_59@@4 T@Field_18640_18648) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_18640_18648 Mask@@5 null pm_f_59@@4) (IsPredicateField_18640_149788 pm_f_59@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_59@@9 T@Ref) (f_202@@9 T@Field_40260_1186) ) (!  (=> (select (|PolymorphicMapType_37423_18638_1186#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@6) null (PredicateMaskField_18640 pm_f_59@@4))) o2_59@@9 f_202@@9) (= (select (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@6) o2_59@@9 f_202@@9) (select (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| ExhaleHeap@@4) o2_59@@9 f_202@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| ExhaleHeap@@4) o2_59@@9 f_202@@9))
)) (forall ((o2_59@@10 T@Ref) (f_202@@10 T@Field_36947_36948) ) (!  (=> (select (|PolymorphicMapType_37423_18640_18641#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@6) null (PredicateMaskField_18640 pm_f_59@@4))) o2_59@@10 f_202@@10) (= (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@6) o2_59@@10 f_202@@10) (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| ExhaleHeap@@4) o2_59@@10 f_202@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| ExhaleHeap@@4) o2_59@@10 f_202@@10))
))) (forall ((o2_59@@11 T@Ref) (f_202@@11 T@Field_36934_53) ) (!  (=> (select (|PolymorphicMapType_37423_18638_53#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@6) null (PredicateMaskField_18640 pm_f_59@@4))) o2_59@@11 f_202@@11) (= (select (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@6) o2_59@@11 f_202@@11) (select (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| ExhaleHeap@@4) o2_59@@11 f_202@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| ExhaleHeap@@4) o2_59@@11 f_202@@11))
))) (forall ((o2_59@@12 T@Ref) (f_202@@12 T@Field_18640_18648) ) (!  (=> (select (|PolymorphicMapType_37423_18638_40394#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@6) null (PredicateMaskField_18640 pm_f_59@@4))) o2_59@@12 f_202@@12) (= (select (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@6) o2_59@@12 f_202@@12) (select (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| ExhaleHeap@@4) o2_59@@12 f_202@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| ExhaleHeap@@4) o2_59@@12 f_202@@12))
))) (forall ((o2_59@@13 T@Ref) (f_202@@13 T@Field_18640_40411) ) (!  (=> (select (|PolymorphicMapType_37423_18638_151245#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@6) null (PredicateMaskField_18640 pm_f_59@@4))) o2_59@@13 f_202@@13) (= (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@6) o2_59@@13 f_202@@13) (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| ExhaleHeap@@4) o2_59@@13 f_202@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| ExhaleHeap@@4) o2_59@@13 f_202@@13))
))) (forall ((o2_59@@14 T@Ref) (f_202@@14 T@Field_18647_1186) ) (!  (=> (select (|PolymorphicMapType_37423_40393_1186#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@6) null (PredicateMaskField_18640 pm_f_59@@4))) o2_59@@14 f_202@@14) (= (select (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@6) o2_59@@14 f_202@@14) (select (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| ExhaleHeap@@4) o2_59@@14 f_202@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| ExhaleHeap@@4) o2_59@@14 f_202@@14))
))) (forall ((o2_59@@15 T@Ref) (f_202@@15 T@Field_18647_18641) ) (!  (=> (select (|PolymorphicMapType_37423_40393_18641#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@6) null (PredicateMaskField_18640 pm_f_59@@4))) o2_59@@15 f_202@@15) (= (select (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@6) o2_59@@15 f_202@@15) (select (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| ExhaleHeap@@4) o2_59@@15 f_202@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| ExhaleHeap@@4) o2_59@@15 f_202@@15))
))) (forall ((o2_59@@16 T@Ref) (f_202@@16 T@Field_18647_53) ) (!  (=> (select (|PolymorphicMapType_37423_40393_53#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@6) null (PredicateMaskField_18640 pm_f_59@@4))) o2_59@@16 f_202@@16) (= (select (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@6) o2_59@@16 f_202@@16) (select (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| ExhaleHeap@@4) o2_59@@16 f_202@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| ExhaleHeap@@4) o2_59@@16 f_202@@16))
))) (forall ((o2_59@@17 T@Ref) (f_202@@17 T@Field_40393_40394) ) (!  (=> (select (|PolymorphicMapType_37423_40393_40394#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@6) null (PredicateMaskField_18640 pm_f_59@@4))) o2_59@@17 f_202@@17) (= (select (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@6) o2_59@@17 f_202@@17) (select (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| ExhaleHeap@@4) o2_59@@17 f_202@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| ExhaleHeap@@4) o2_59@@17 f_202@@17))
))) (forall ((o2_59@@18 T@Ref) (f_202@@18 T@Field_40406_40411) ) (!  (=> (select (|PolymorphicMapType_37423_40393_152293#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@6) null (PredicateMaskField_18640 pm_f_59@@4))) o2_59@@18 f_202@@18) (= (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@6) o2_59@@18 f_202@@18) (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| ExhaleHeap@@4) o2_59@@18 f_202@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| ExhaleHeap@@4) o2_59@@18 f_202@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_18640_149788 pm_f_59@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_36874) (ExhaleHeap@@5 T@PolymorphicMapType_36874) (Mask@@6 T@PolymorphicMapType_36895) (pm_f_59@@5 T@Field_40393_40394) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_18647_18648 Mask@@6 null pm_f_59@@5) (IsWandField_18647_153458 pm_f_59@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_59@@19 T@Ref) (f_202@@19 T@Field_40260_1186) ) (!  (=> (select (|PolymorphicMapType_37423_18638_1186#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@7) null (WandMaskField_18647 pm_f_59@@5))) o2_59@@19 f_202@@19) (= (select (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@7) o2_59@@19 f_202@@19) (select (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| ExhaleHeap@@5) o2_59@@19 f_202@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| ExhaleHeap@@5) o2_59@@19 f_202@@19))
)) (forall ((o2_59@@20 T@Ref) (f_202@@20 T@Field_36947_36948) ) (!  (=> (select (|PolymorphicMapType_37423_18640_18641#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@7) null (WandMaskField_18647 pm_f_59@@5))) o2_59@@20 f_202@@20) (= (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@7) o2_59@@20 f_202@@20) (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| ExhaleHeap@@5) o2_59@@20 f_202@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| ExhaleHeap@@5) o2_59@@20 f_202@@20))
))) (forall ((o2_59@@21 T@Ref) (f_202@@21 T@Field_36934_53) ) (!  (=> (select (|PolymorphicMapType_37423_18638_53#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@7) null (WandMaskField_18647 pm_f_59@@5))) o2_59@@21 f_202@@21) (= (select (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@7) o2_59@@21 f_202@@21) (select (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| ExhaleHeap@@5) o2_59@@21 f_202@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| ExhaleHeap@@5) o2_59@@21 f_202@@21))
))) (forall ((o2_59@@22 T@Ref) (f_202@@22 T@Field_18640_18648) ) (!  (=> (select (|PolymorphicMapType_37423_18638_40394#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@7) null (WandMaskField_18647 pm_f_59@@5))) o2_59@@22 f_202@@22) (= (select (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@7) o2_59@@22 f_202@@22) (select (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| ExhaleHeap@@5) o2_59@@22 f_202@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| ExhaleHeap@@5) o2_59@@22 f_202@@22))
))) (forall ((o2_59@@23 T@Ref) (f_202@@23 T@Field_18640_40411) ) (!  (=> (select (|PolymorphicMapType_37423_18638_151245#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@7) null (WandMaskField_18647 pm_f_59@@5))) o2_59@@23 f_202@@23) (= (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@7) o2_59@@23 f_202@@23) (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| ExhaleHeap@@5) o2_59@@23 f_202@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| ExhaleHeap@@5) o2_59@@23 f_202@@23))
))) (forall ((o2_59@@24 T@Ref) (f_202@@24 T@Field_18647_1186) ) (!  (=> (select (|PolymorphicMapType_37423_40393_1186#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@7) null (WandMaskField_18647 pm_f_59@@5))) o2_59@@24 f_202@@24) (= (select (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@7) o2_59@@24 f_202@@24) (select (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| ExhaleHeap@@5) o2_59@@24 f_202@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| ExhaleHeap@@5) o2_59@@24 f_202@@24))
))) (forall ((o2_59@@25 T@Ref) (f_202@@25 T@Field_18647_18641) ) (!  (=> (select (|PolymorphicMapType_37423_40393_18641#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@7) null (WandMaskField_18647 pm_f_59@@5))) o2_59@@25 f_202@@25) (= (select (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@7) o2_59@@25 f_202@@25) (select (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| ExhaleHeap@@5) o2_59@@25 f_202@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| ExhaleHeap@@5) o2_59@@25 f_202@@25))
))) (forall ((o2_59@@26 T@Ref) (f_202@@26 T@Field_18647_53) ) (!  (=> (select (|PolymorphicMapType_37423_40393_53#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@7) null (WandMaskField_18647 pm_f_59@@5))) o2_59@@26 f_202@@26) (= (select (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@7) o2_59@@26 f_202@@26) (select (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| ExhaleHeap@@5) o2_59@@26 f_202@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| ExhaleHeap@@5) o2_59@@26 f_202@@26))
))) (forall ((o2_59@@27 T@Ref) (f_202@@27 T@Field_40393_40394) ) (!  (=> (select (|PolymorphicMapType_37423_40393_40394#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@7) null (WandMaskField_18647 pm_f_59@@5))) o2_59@@27 f_202@@27) (= (select (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@7) o2_59@@27 f_202@@27) (select (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| ExhaleHeap@@5) o2_59@@27 f_202@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| ExhaleHeap@@5) o2_59@@27 f_202@@27))
))) (forall ((o2_59@@28 T@Ref) (f_202@@28 T@Field_40406_40411) ) (!  (=> (select (|PolymorphicMapType_37423_40393_152293#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@7) null (WandMaskField_18647 pm_f_59@@5))) o2_59@@28 f_202@@28) (= (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@7) o2_59@@28 f_202@@28) (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| ExhaleHeap@@5) o2_59@@28 f_202@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| ExhaleHeap@@5) o2_59@@28 f_202@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_18647_153458 pm_f_59@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_36874) (ExhaleHeap@@6 T@PolymorphicMapType_36874) (Mask@@7 T@PolymorphicMapType_36895) (pm_f_59@@6 T@Field_18640_18648) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_18640_18648 Mask@@7 null pm_f_59@@6) (IsWandField_18640_153101 pm_f_59@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_59@@29 T@Ref) (f_202@@29 T@Field_40260_1186) ) (!  (=> (select (|PolymorphicMapType_37423_18638_1186#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@8) null (WandMaskField_18640 pm_f_59@@6))) o2_59@@29 f_202@@29) (= (select (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@8) o2_59@@29 f_202@@29) (select (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| ExhaleHeap@@6) o2_59@@29 f_202@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| ExhaleHeap@@6) o2_59@@29 f_202@@29))
)) (forall ((o2_59@@30 T@Ref) (f_202@@30 T@Field_36947_36948) ) (!  (=> (select (|PolymorphicMapType_37423_18640_18641#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@8) null (WandMaskField_18640 pm_f_59@@6))) o2_59@@30 f_202@@30) (= (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@8) o2_59@@30 f_202@@30) (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| ExhaleHeap@@6) o2_59@@30 f_202@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| ExhaleHeap@@6) o2_59@@30 f_202@@30))
))) (forall ((o2_59@@31 T@Ref) (f_202@@31 T@Field_36934_53) ) (!  (=> (select (|PolymorphicMapType_37423_18638_53#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@8) null (WandMaskField_18640 pm_f_59@@6))) o2_59@@31 f_202@@31) (= (select (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@8) o2_59@@31 f_202@@31) (select (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| ExhaleHeap@@6) o2_59@@31 f_202@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| ExhaleHeap@@6) o2_59@@31 f_202@@31))
))) (forall ((o2_59@@32 T@Ref) (f_202@@32 T@Field_18640_18648) ) (!  (=> (select (|PolymorphicMapType_37423_18638_40394#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@8) null (WandMaskField_18640 pm_f_59@@6))) o2_59@@32 f_202@@32) (= (select (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@8) o2_59@@32 f_202@@32) (select (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| ExhaleHeap@@6) o2_59@@32 f_202@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| ExhaleHeap@@6) o2_59@@32 f_202@@32))
))) (forall ((o2_59@@33 T@Ref) (f_202@@33 T@Field_18640_40411) ) (!  (=> (select (|PolymorphicMapType_37423_18638_151245#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@8) null (WandMaskField_18640 pm_f_59@@6))) o2_59@@33 f_202@@33) (= (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@8) o2_59@@33 f_202@@33) (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| ExhaleHeap@@6) o2_59@@33 f_202@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| ExhaleHeap@@6) o2_59@@33 f_202@@33))
))) (forall ((o2_59@@34 T@Ref) (f_202@@34 T@Field_18647_1186) ) (!  (=> (select (|PolymorphicMapType_37423_40393_1186#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@8) null (WandMaskField_18640 pm_f_59@@6))) o2_59@@34 f_202@@34) (= (select (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@8) o2_59@@34 f_202@@34) (select (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| ExhaleHeap@@6) o2_59@@34 f_202@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| ExhaleHeap@@6) o2_59@@34 f_202@@34))
))) (forall ((o2_59@@35 T@Ref) (f_202@@35 T@Field_18647_18641) ) (!  (=> (select (|PolymorphicMapType_37423_40393_18641#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@8) null (WandMaskField_18640 pm_f_59@@6))) o2_59@@35 f_202@@35) (= (select (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@8) o2_59@@35 f_202@@35) (select (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| ExhaleHeap@@6) o2_59@@35 f_202@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| ExhaleHeap@@6) o2_59@@35 f_202@@35))
))) (forall ((o2_59@@36 T@Ref) (f_202@@36 T@Field_18647_53) ) (!  (=> (select (|PolymorphicMapType_37423_40393_53#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@8) null (WandMaskField_18640 pm_f_59@@6))) o2_59@@36 f_202@@36) (= (select (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@8) o2_59@@36 f_202@@36) (select (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| ExhaleHeap@@6) o2_59@@36 f_202@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| ExhaleHeap@@6) o2_59@@36 f_202@@36))
))) (forall ((o2_59@@37 T@Ref) (f_202@@37 T@Field_40393_40394) ) (!  (=> (select (|PolymorphicMapType_37423_40393_40394#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@8) null (WandMaskField_18640 pm_f_59@@6))) o2_59@@37 f_202@@37) (= (select (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@8) o2_59@@37 f_202@@37) (select (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| ExhaleHeap@@6) o2_59@@37 f_202@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| ExhaleHeap@@6) o2_59@@37 f_202@@37))
))) (forall ((o2_59@@38 T@Ref) (f_202@@38 T@Field_40406_40411) ) (!  (=> (select (|PolymorphicMapType_37423_40393_152293#PolymorphicMapType_37423| (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@8) null (WandMaskField_18640 pm_f_59@@6))) o2_59@@38 f_202@@38) (= (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@8) o2_59@@38 f_202@@38) (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| ExhaleHeap@@6) o2_59@@38 f_202@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| ExhaleHeap@@6) o2_59@@38 f_202@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_18640_153101 pm_f_59@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_36874) (ExhaleHeap@@7 T@PolymorphicMapType_36874) (Mask@@8 T@PolymorphicMapType_36895) (o_106 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@9) o_106 $allocated) (select (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| ExhaleHeap@@7) o_106 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| ExhaleHeap@@7) o_106 $allocated))
)))
(assert (forall ((p T@Field_18640_18648) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_36934_36934 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_36934_36934 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_40393_40394) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_18647_18647 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18647_18647 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_18638_1186 data)))
(assert  (not (IsWandField_18638_1186 data)))
(assert  (not (IsPredicateField_18640_18641 next_child)))
(assert  (not (IsWandField_18640_18641 next_child)))
(assert  (not (IsPredicateField_18640_18641 next_sibling)))
(assert  (not (IsWandField_18640_18641 next_sibling)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_36874) (ExhaleHeap@@8 T@PolymorphicMapType_36874) (Mask@@9 T@PolymorphicMapType_36895) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_36895) (o_2@@9 T@Ref) (f_4@@9 T@Field_40406_40411) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_36895_18647_158083#PolymorphicMapType_36895| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_18647_160361 f_4@@9))) (not (IsWandField_18647_160377 f_4@@9))) (<= (select (|PolymorphicMapType_36895_18647_158083#PolymorphicMapType_36895| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_36895_18647_158083#PolymorphicMapType_36895| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_36895) (o_2@@10 T@Ref) (f_4@@10 T@Field_18647_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_36895_18647_53#PolymorphicMapType_36895| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_18647_53 f_4@@10))) (not (IsWandField_18647_53 f_4@@10))) (<= (select (|PolymorphicMapType_36895_18647_53#PolymorphicMapType_36895| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_36895_18647_53#PolymorphicMapType_36895| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_36895) (o_2@@11 T@Ref) (f_4@@11 T@Field_40393_40394) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_36895_18647_18648#PolymorphicMapType_36895| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_18647_18648 f_4@@11))) (not (IsWandField_18647_153458 f_4@@11))) (<= (select (|PolymorphicMapType_36895_18647_18648#PolymorphicMapType_36895| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_36895_18647_18648#PolymorphicMapType_36895| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_36895) (o_2@@12 T@Ref) (f_4@@12 T@Field_18647_18641) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_36895_18647_18641#PolymorphicMapType_36895| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_18647_18641 f_4@@12))) (not (IsWandField_18647_18641 f_4@@12))) (<= (select (|PolymorphicMapType_36895_18647_18641#PolymorphicMapType_36895| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_36895_18647_18641#PolymorphicMapType_36895| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_36895) (o_2@@13 T@Ref) (f_4@@13 T@Field_18647_1186) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_36895_18647_1186#PolymorphicMapType_36895| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_18647_1186 f_4@@13))) (not (IsWandField_18647_1186 f_4@@13))) (<= (select (|PolymorphicMapType_36895_18647_1186#PolymorphicMapType_36895| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_36895_18647_1186#PolymorphicMapType_36895| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_36895) (o_2@@14 T@Ref) (f_4@@14 T@Field_18640_40411) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_36895_18638_157672#PolymorphicMapType_36895| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_18638_159530 f_4@@14))) (not (IsWandField_18638_159546 f_4@@14))) (<= (select (|PolymorphicMapType_36895_18638_157672#PolymorphicMapType_36895| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_36895_18638_157672#PolymorphicMapType_36895| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_36895) (o_2@@15 T@Ref) (f_4@@15 T@Field_36934_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_36895_18638_53#PolymorphicMapType_36895| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_18638_53 f_4@@15))) (not (IsWandField_18638_53 f_4@@15))) (<= (select (|PolymorphicMapType_36895_18638_53#PolymorphicMapType_36895| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_36895_18638_53#PolymorphicMapType_36895| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_36895) (o_2@@16 T@Ref) (f_4@@16 T@Field_18640_18648) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_36895_18638_18648#PolymorphicMapType_36895| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_18640_149788 f_4@@16))) (not (IsWandField_18640_153101 f_4@@16))) (<= (select (|PolymorphicMapType_36895_18638_18648#PolymorphicMapType_36895| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_36895_18638_18648#PolymorphicMapType_36895| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_36895) (o_2@@17 T@Ref) (f_4@@17 T@Field_36947_36948) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_36895_18640_18641#PolymorphicMapType_36895| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_18640_18641 f_4@@17))) (not (IsWandField_18640_18641 f_4@@17))) (<= (select (|PolymorphicMapType_36895_18640_18641#PolymorphicMapType_36895| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_36895_18640_18641#PolymorphicMapType_36895| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_36895) (o_2@@18 T@Ref) (f_4@@18 T@Field_40260_1186) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_36895_18638_1186#PolymorphicMapType_36895| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_18638_1186 f_4@@18))) (not (IsWandField_18638_1186 f_4@@18))) (<= (select (|PolymorphicMapType_36895_18638_1186#PolymorphicMapType_36895| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_36895_18638_1186#PolymorphicMapType_36895| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_36895) (o_2@@19 T@Ref) (f_4@@19 T@Field_40406_40411) ) (! (= (HasDirectPerm_18647_149543 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_36895_18647_158083#PolymorphicMapType_36895| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18647_149543 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_36895) (o_2@@20 T@Ref) (f_4@@20 T@Field_18647_53) ) (! (= (HasDirectPerm_18647_53 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_36895_18647_53#PolymorphicMapType_36895| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18647_53 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_36895) (o_2@@21 T@Ref) (f_4@@21 T@Field_18647_1186) ) (! (= (HasDirectPerm_18647_1186 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_36895_18647_1186#PolymorphicMapType_36895| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18647_1186 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_36895) (o_2@@22 T@Ref) (f_4@@22 T@Field_40393_40394) ) (! (= (HasDirectPerm_18647_18648 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_36895_18647_18648#PolymorphicMapType_36895| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18647_18648 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_36895) (o_2@@23 T@Ref) (f_4@@23 T@Field_18647_18641) ) (! (= (HasDirectPerm_18647_18641 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_36895_18647_18641#PolymorphicMapType_36895| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18647_18641 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_36895) (o_2@@24 T@Ref) (f_4@@24 T@Field_18640_40411) ) (! (= (HasDirectPerm_18640_148402 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_36895_18638_157672#PolymorphicMapType_36895| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18640_148402 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_36895) (o_2@@25 T@Ref) (f_4@@25 T@Field_36934_53) ) (! (= (HasDirectPerm_18640_53 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_36895_18638_53#PolymorphicMapType_36895| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18640_53 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_36895) (o_2@@26 T@Ref) (f_4@@26 T@Field_40260_1186) ) (! (= (HasDirectPerm_18638_1186 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_36895_18638_1186#PolymorphicMapType_36895| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18638_1186 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_36895) (o_2@@27 T@Ref) (f_4@@27 T@Field_18640_18648) ) (! (= (HasDirectPerm_18640_18648 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_36895_18638_18648#PolymorphicMapType_36895| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18640_18648 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_36895) (o_2@@28 T@Ref) (f_4@@28 T@Field_36947_36948) ) (! (= (HasDirectPerm_18640_18641 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_36895_18640_18641#PolymorphicMapType_36895| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18640_18641 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_36874) (ExhaleHeap@@9 T@PolymorphicMapType_36874) (Mask@@30 T@PolymorphicMapType_36895) (o_106@@0 T@Ref) (f_202@@39 T@Field_40406_40411) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_18647_149543 Mask@@30 o_106@@0 f_202@@39) (= (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@11) o_106@@0 f_202@@39) (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| ExhaleHeap@@9) o_106@@0 f_202@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| ExhaleHeap@@9) o_106@@0 f_202@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_36874) (ExhaleHeap@@10 T@PolymorphicMapType_36874) (Mask@@31 T@PolymorphicMapType_36895) (o_106@@1 T@Ref) (f_202@@40 T@Field_18647_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_18647_53 Mask@@31 o_106@@1 f_202@@40) (= (select (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@12) o_106@@1 f_202@@40) (select (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| ExhaleHeap@@10) o_106@@1 f_202@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| ExhaleHeap@@10) o_106@@1 f_202@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_36874) (ExhaleHeap@@11 T@PolymorphicMapType_36874) (Mask@@32 T@PolymorphicMapType_36895) (o_106@@2 T@Ref) (f_202@@41 T@Field_18647_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_18647_1186 Mask@@32 o_106@@2 f_202@@41) (= (select (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@13) o_106@@2 f_202@@41) (select (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| ExhaleHeap@@11) o_106@@2 f_202@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| ExhaleHeap@@11) o_106@@2 f_202@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_36874) (ExhaleHeap@@12 T@PolymorphicMapType_36874) (Mask@@33 T@PolymorphicMapType_36895) (o_106@@3 T@Ref) (f_202@@42 T@Field_40393_40394) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_18647_18648 Mask@@33 o_106@@3 f_202@@42) (= (select (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@14) o_106@@3 f_202@@42) (select (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| ExhaleHeap@@12) o_106@@3 f_202@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| ExhaleHeap@@12) o_106@@3 f_202@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_36874) (ExhaleHeap@@13 T@PolymorphicMapType_36874) (Mask@@34 T@PolymorphicMapType_36895) (o_106@@4 T@Ref) (f_202@@43 T@Field_18647_18641) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_18647_18641 Mask@@34 o_106@@4 f_202@@43) (= (select (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@15) o_106@@4 f_202@@43) (select (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| ExhaleHeap@@13) o_106@@4 f_202@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| ExhaleHeap@@13) o_106@@4 f_202@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_36874) (ExhaleHeap@@14 T@PolymorphicMapType_36874) (Mask@@35 T@PolymorphicMapType_36895) (o_106@@5 T@Ref) (f_202@@44 T@Field_18640_40411) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_18640_148402 Mask@@35 o_106@@5 f_202@@44) (= (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@16) o_106@@5 f_202@@44) (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| ExhaleHeap@@14) o_106@@5 f_202@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| ExhaleHeap@@14) o_106@@5 f_202@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_36874) (ExhaleHeap@@15 T@PolymorphicMapType_36874) (Mask@@36 T@PolymorphicMapType_36895) (o_106@@6 T@Ref) (f_202@@45 T@Field_36934_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_18640_53 Mask@@36 o_106@@6 f_202@@45) (= (select (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@17) o_106@@6 f_202@@45) (select (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| ExhaleHeap@@15) o_106@@6 f_202@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| ExhaleHeap@@15) o_106@@6 f_202@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_36874) (ExhaleHeap@@16 T@PolymorphicMapType_36874) (Mask@@37 T@PolymorphicMapType_36895) (o_106@@7 T@Ref) (f_202@@46 T@Field_40260_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_18638_1186 Mask@@37 o_106@@7 f_202@@46) (= (select (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@18) o_106@@7 f_202@@46) (select (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| ExhaleHeap@@16) o_106@@7 f_202@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| ExhaleHeap@@16) o_106@@7 f_202@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_36874) (ExhaleHeap@@17 T@PolymorphicMapType_36874) (Mask@@38 T@PolymorphicMapType_36895) (o_106@@8 T@Ref) (f_202@@47 T@Field_18640_18648) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_18640_18648 Mask@@38 o_106@@8 f_202@@47) (= (select (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@19) o_106@@8 f_202@@47) (select (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| ExhaleHeap@@17) o_106@@8 f_202@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| ExhaleHeap@@17) o_106@@8 f_202@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_36874) (ExhaleHeap@@18 T@PolymorphicMapType_36874) (Mask@@39 T@PolymorphicMapType_36895) (o_106@@9 T@Ref) (f_202@@48 T@Field_36947_36948) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_18640_18641 Mask@@39 o_106@@9 f_202@@48) (= (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@20) o_106@@9 f_202@@48) (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| ExhaleHeap@@18) o_106@@9 f_202@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| ExhaleHeap@@18) o_106@@9 f_202@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_40406_40411) ) (! (= (select (|PolymorphicMapType_36895_18647_158083#PolymorphicMapType_36895| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_36895_18647_158083#PolymorphicMapType_36895| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_18647_53) ) (! (= (select (|PolymorphicMapType_36895_18647_53#PolymorphicMapType_36895| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_36895_18647_53#PolymorphicMapType_36895| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_40393_40394) ) (! (= (select (|PolymorphicMapType_36895_18647_18648#PolymorphicMapType_36895| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_36895_18647_18648#PolymorphicMapType_36895| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_18647_18641) ) (! (= (select (|PolymorphicMapType_36895_18647_18641#PolymorphicMapType_36895| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_36895_18647_18641#PolymorphicMapType_36895| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_18647_1186) ) (! (= (select (|PolymorphicMapType_36895_18647_1186#PolymorphicMapType_36895| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_36895_18647_1186#PolymorphicMapType_36895| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_18640_40411) ) (! (= (select (|PolymorphicMapType_36895_18638_157672#PolymorphicMapType_36895| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_36895_18638_157672#PolymorphicMapType_36895| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_36934_53) ) (! (= (select (|PolymorphicMapType_36895_18638_53#PolymorphicMapType_36895| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_36895_18638_53#PolymorphicMapType_36895| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_18640_18648) ) (! (= (select (|PolymorphicMapType_36895_18638_18648#PolymorphicMapType_36895| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_36895_18638_18648#PolymorphicMapType_36895| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_36947_36948) ) (! (= (select (|PolymorphicMapType_36895_18640_18641#PolymorphicMapType_36895| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_36895_18640_18641#PolymorphicMapType_36895| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_40260_1186) ) (! (= (select (|PolymorphicMapType_36895_18638_1186#PolymorphicMapType_36895| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_36895_18638_1186#PolymorphicMapType_36895| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_36895) (SummandMask1 T@PolymorphicMapType_36895) (SummandMask2 T@PolymorphicMapType_36895) (o_2@@39 T@Ref) (f_4@@39 T@Field_40406_40411) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_36895_18647_158083#PolymorphicMapType_36895| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_36895_18647_158083#PolymorphicMapType_36895| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_36895_18647_158083#PolymorphicMapType_36895| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_36895_18647_158083#PolymorphicMapType_36895| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_36895_18647_158083#PolymorphicMapType_36895| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_36895_18647_158083#PolymorphicMapType_36895| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_36895) (SummandMask1@@0 T@PolymorphicMapType_36895) (SummandMask2@@0 T@PolymorphicMapType_36895) (o_2@@40 T@Ref) (f_4@@40 T@Field_18647_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_36895_18647_53#PolymorphicMapType_36895| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_36895_18647_53#PolymorphicMapType_36895| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_36895_18647_53#PolymorphicMapType_36895| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_36895_18647_53#PolymorphicMapType_36895| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_36895_18647_53#PolymorphicMapType_36895| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_36895_18647_53#PolymorphicMapType_36895| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_36895) (SummandMask1@@1 T@PolymorphicMapType_36895) (SummandMask2@@1 T@PolymorphicMapType_36895) (o_2@@41 T@Ref) (f_4@@41 T@Field_40393_40394) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_36895_18647_18648#PolymorphicMapType_36895| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_36895_18647_18648#PolymorphicMapType_36895| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_36895_18647_18648#PolymorphicMapType_36895| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_36895_18647_18648#PolymorphicMapType_36895| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_36895_18647_18648#PolymorphicMapType_36895| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_36895_18647_18648#PolymorphicMapType_36895| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_36895) (SummandMask1@@2 T@PolymorphicMapType_36895) (SummandMask2@@2 T@PolymorphicMapType_36895) (o_2@@42 T@Ref) (f_4@@42 T@Field_18647_18641) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_36895_18647_18641#PolymorphicMapType_36895| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_36895_18647_18641#PolymorphicMapType_36895| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_36895_18647_18641#PolymorphicMapType_36895| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_36895_18647_18641#PolymorphicMapType_36895| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_36895_18647_18641#PolymorphicMapType_36895| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_36895_18647_18641#PolymorphicMapType_36895| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_36895) (SummandMask1@@3 T@PolymorphicMapType_36895) (SummandMask2@@3 T@PolymorphicMapType_36895) (o_2@@43 T@Ref) (f_4@@43 T@Field_18647_1186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_36895_18647_1186#PolymorphicMapType_36895| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_36895_18647_1186#PolymorphicMapType_36895| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_36895_18647_1186#PolymorphicMapType_36895| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_36895_18647_1186#PolymorphicMapType_36895| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_36895_18647_1186#PolymorphicMapType_36895| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_36895_18647_1186#PolymorphicMapType_36895| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_36895) (SummandMask1@@4 T@PolymorphicMapType_36895) (SummandMask2@@4 T@PolymorphicMapType_36895) (o_2@@44 T@Ref) (f_4@@44 T@Field_18640_40411) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_36895_18638_157672#PolymorphicMapType_36895| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_36895_18638_157672#PolymorphicMapType_36895| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_36895_18638_157672#PolymorphicMapType_36895| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_36895_18638_157672#PolymorphicMapType_36895| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_36895_18638_157672#PolymorphicMapType_36895| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_36895_18638_157672#PolymorphicMapType_36895| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_36895) (SummandMask1@@5 T@PolymorphicMapType_36895) (SummandMask2@@5 T@PolymorphicMapType_36895) (o_2@@45 T@Ref) (f_4@@45 T@Field_36934_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_36895_18638_53#PolymorphicMapType_36895| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_36895_18638_53#PolymorphicMapType_36895| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_36895_18638_53#PolymorphicMapType_36895| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_36895_18638_53#PolymorphicMapType_36895| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_36895_18638_53#PolymorphicMapType_36895| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_36895_18638_53#PolymorphicMapType_36895| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_36895) (SummandMask1@@6 T@PolymorphicMapType_36895) (SummandMask2@@6 T@PolymorphicMapType_36895) (o_2@@46 T@Ref) (f_4@@46 T@Field_18640_18648) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_36895_18638_18648#PolymorphicMapType_36895| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_36895_18638_18648#PolymorphicMapType_36895| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_36895_18638_18648#PolymorphicMapType_36895| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_36895_18638_18648#PolymorphicMapType_36895| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_36895_18638_18648#PolymorphicMapType_36895| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_36895_18638_18648#PolymorphicMapType_36895| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_36895) (SummandMask1@@7 T@PolymorphicMapType_36895) (SummandMask2@@7 T@PolymorphicMapType_36895) (o_2@@47 T@Ref) (f_4@@47 T@Field_36947_36948) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_36895_18640_18641#PolymorphicMapType_36895| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_36895_18640_18641#PolymorphicMapType_36895| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_36895_18640_18641#PolymorphicMapType_36895| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_36895_18640_18641#PolymorphicMapType_36895| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_36895_18640_18641#PolymorphicMapType_36895| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_36895_18640_18641#PolymorphicMapType_36895| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_36895) (SummandMask1@@8 T@PolymorphicMapType_36895) (SummandMask2@@8 T@PolymorphicMapType_36895) (o_2@@48 T@Ref) (f_4@@48 T@Field_40260_1186) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_36895_18638_1186#PolymorphicMapType_36895| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_36895_18638_1186#PolymorphicMapType_36895| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_36895_18638_1186#PolymorphicMapType_36895| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_36895_18638_1186#PolymorphicMapType_36895| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_36895_18638_1186#PolymorphicMapType_36895| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_36895_18638_1186#PolymorphicMapType_36895| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((this@@3 T@Ref) ) (! (= (getPredWandId_18647_18648 (tree this@@3)) 0)
 :qid |stdinbpl.205:15|
 :skolemid |24|
 :pattern ( (tree this@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_36874) (o_103 T@Ref) (f_105 T@Field_40406_40411) (v T@PolymorphicMapType_37423) ) (! (succHeap Heap@@21 (PolymorphicMapType_36874 (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@21) (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@21) (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@21) (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@21) (store (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@21) o_103 f_105 v) (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@21) (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@21) (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@21) (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@21) (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_36874 (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@21) (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@21) (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@21) (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@21) (store (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@21) o_103 f_105 v) (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@21) (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@21) (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@21) (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@21) (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_36874) (o_103@@0 T@Ref) (f_105@@0 T@Field_18647_1186) (v@@0 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_36874 (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@22) (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@22) (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@22) (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@22) (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@22) (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@22) (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@22) (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@22) (store (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@22) o_103@@0 f_105@@0 v@@0) (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_36874 (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@22) (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@22) (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@22) (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@22) (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@22) (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@22) (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@22) (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@22) (store (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@22) o_103@@0 f_105@@0 v@@0) (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_36874) (o_103@@1 T@Ref) (f_105@@1 T@Field_40393_40394) (v@@1 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_36874 (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@23) (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@23) (store (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@23) o_103@@1 f_105@@1 v@@1) (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@23) (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@23) (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@23) (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@23) (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@23) (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@23) (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_36874 (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@23) (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@23) (store (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@23) o_103@@1 f_105@@1 v@@1) (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@23) (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@23) (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@23) (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@23) (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@23) (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@23) (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_36874) (o_103@@2 T@Ref) (f_105@@2 T@Field_18647_18641) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_36874 (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@24) (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@24) (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@24) (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@24) (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@24) (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@24) (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@24) (store (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@24) o_103@@2 f_105@@2 v@@2) (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@24) (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_36874 (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@24) (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@24) (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@24) (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@24) (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@24) (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@24) (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@24) (store (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@24) o_103@@2 f_105@@2 v@@2) (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@24) (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_36874) (o_103@@3 T@Ref) (f_105@@3 T@Field_18647_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_36874 (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@25) (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@25) (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@25) (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@25) (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@25) (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@25) (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@25) (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@25) (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@25) (store (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@25) o_103@@3 f_105@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_36874 (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@25) (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@25) (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@25) (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@25) (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@25) (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@25) (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@25) (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@25) (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@25) (store (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@25) o_103@@3 f_105@@3 v@@3)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_36874) (o_103@@4 T@Ref) (f_105@@4 T@Field_18640_40411) (v@@4 T@PolymorphicMapType_37423) ) (! (succHeap Heap@@26 (PolymorphicMapType_36874 (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@26) (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@26) (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@26) (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@26) (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@26) (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@26) (store (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@26) o_103@@4 f_105@@4 v@@4) (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@26) (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@26) (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_36874 (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@26) (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@26) (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@26) (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@26) (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@26) (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@26) (store (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@26) o_103@@4 f_105@@4 v@@4) (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@26) (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@26) (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_36874) (o_103@@5 T@Ref) (f_105@@5 T@Field_40260_1186) (v@@5 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_36874 (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@27) (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@27) (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@27) (store (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@27) o_103@@5 f_105@@5 v@@5) (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@27) (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@27) (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@27) (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@27) (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@27) (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_36874 (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@27) (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@27) (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@27) (store (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@27) o_103@@5 f_105@@5 v@@5) (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@27) (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@27) (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@27) (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@27) (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@27) (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_36874) (o_103@@6 T@Ref) (f_105@@6 T@Field_18640_18648) (v@@6 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_36874 (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@28) (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@28) (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@28) (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@28) (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@28) (store (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@28) o_103@@6 f_105@@6 v@@6) (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@28) (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@28) (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@28) (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_36874 (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@28) (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@28) (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@28) (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@28) (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@28) (store (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@28) o_103@@6 f_105@@6 v@@6) (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@28) (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@28) (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@28) (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_36874) (o_103@@7 T@Ref) (f_105@@7 T@Field_36947_36948) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_36874 (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@29) (store (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@29) o_103@@7 f_105@@7 v@@7) (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@29) (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@29) (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@29) (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@29) (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@29) (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@29) (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@29) (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_36874 (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@29) (store (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@29) o_103@@7 f_105@@7 v@@7) (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@29) (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@29) (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@29) (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@29) (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@29) (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@29) (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@29) (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_36874) (o_103@@8 T@Ref) (f_105@@8 T@Field_36934_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_36874 (store (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@30) o_103@@8 f_105@@8 v@@8) (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@30) (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@30) (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@30) (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@30) (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@30) (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@30) (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@30) (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@30) (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_36874 (store (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@30) o_103@@8 f_105@@8 v@@8) (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@30) (|PolymorphicMapType_36874_18647_18648#PolymorphicMapType_36874| Heap@@30) (|PolymorphicMapType_36874_18638_1186#PolymorphicMapType_36874| Heap@@30) (|PolymorphicMapType_36874_18651_46943#PolymorphicMapType_36874| Heap@@30) (|PolymorphicMapType_36874_18640_18648#PolymorphicMapType_36874| Heap@@30) (|PolymorphicMapType_36874_18640_148444#PolymorphicMapType_36874| Heap@@30) (|PolymorphicMapType_36874_18647_18641#PolymorphicMapType_36874| Heap@@30) (|PolymorphicMapType_36874_18647_1186#PolymorphicMapType_36874| Heap@@30) (|PolymorphicMapType_36874_18647_53#PolymorphicMapType_36874| Heap@@30)))
)))
(assert (forall ((this@@4 T@Ref) ) (! (= (PredicateMaskField_18647 (tree this@@4)) (|tree#sm| this@@4))
 :qid |stdinbpl.197:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_18647 (tree this@@4)))
)))
(assert (forall ((o_103@@9 T@Ref) (f_207 T@Field_36947_36948) (Heap@@31 T@PolymorphicMapType_36874) ) (!  (=> (select (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@31) o_103@@9 $allocated) (select (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@31) (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@31) o_103@@9 f_207) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@31) o_103@@9 f_207))
)))
(assert (forall ((p@@2 T@Field_18640_18648) (v_1@@1 T@FrameType) (q T@Field_18640_18648) (w@@1 T@FrameType) (r T@Field_18640_18648) (u T@FrameType) ) (!  (=> (and (InsidePredicate_36934_36934 p@@2 v_1@@1 q w@@1) (InsidePredicate_36934_36934 q w@@1 r u)) (InsidePredicate_36934_36934 p@@2 v_1@@1 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36934_36934 p@@2 v_1@@1 q w@@1) (InsidePredicate_36934_36934 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_18640_18648) (v_1@@2 T@FrameType) (q@@0 T@Field_18640_18648) (w@@2 T@FrameType) (r@@0 T@Field_40393_40394) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_36934_36934 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_36934_18647 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_36934_18647 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36934_36934 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_36934_18647 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_18640_18648) (v_1@@3 T@FrameType) (q@@1 T@Field_40393_40394) (w@@3 T@FrameType) (r@@1 T@Field_18640_18648) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_36934_18647 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_18647_36934 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_36934_36934 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36934_18647 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_18647_36934 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_18640_18648) (v_1@@4 T@FrameType) (q@@2 T@Field_40393_40394) (w@@4 T@FrameType) (r@@2 T@Field_40393_40394) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_36934_18647 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_18647_18647 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_36934_18647 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_36934_18647 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_18647_18647 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_40393_40394) (v_1@@5 T@FrameType) (q@@3 T@Field_18640_18648) (w@@5 T@FrameType) (r@@3 T@Field_18640_18648) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_18647_36934 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_36934_36934 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_18647_36934 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18647_36934 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_36934_36934 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_40393_40394) (v_1@@6 T@FrameType) (q@@4 T@Field_18640_18648) (w@@6 T@FrameType) (r@@4 T@Field_40393_40394) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_18647_36934 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_36934_18647 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_18647_18647 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18647_36934 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_36934_18647 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_40393_40394) (v_1@@7 T@FrameType) (q@@5 T@Field_40393_40394) (w@@7 T@FrameType) (r@@5 T@Field_18640_18648) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_18647_18647 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_18647_36934 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_18647_36934 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18647_18647 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_18647_36934 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_40393_40394) (v_1@@8 T@FrameType) (q@@6 T@Field_40393_40394) (w@@8 T@FrameType) (r@@6 T@Field_40393_40394) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_18647_18647 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_18647_18647 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_18647_18647 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18647_18647 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_18647_18647 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@32 () T@PolymorphicMapType_36874)
(declare-fun this@@5 () T@Ref)
(declare-fun Mask@6 () T@PolymorphicMapType_36895)
(declare-fun Mask@4 () T@PolymorphicMapType_36895)
(declare-fun Mask@5 () T@PolymorphicMapType_36895)
(declare-fun Mask@2 () T@PolymorphicMapType_36895)
(declare-fun Mask@3 () T@PolymorphicMapType_36895)
(declare-fun Mask@0 () T@PolymorphicMapType_36895)
(declare-fun Mask@1 () T@PolymorphicMapType_36895)
(set-info :boogie-vc-id |tree#definedness|)
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
 (=> (= (ControlFlow 0 0) 23) (let ((anon9_correct true))
(let ((anon14_Else_correct  (=> (and (= (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@32) this@@5 next_child) null) (= (ControlFlow 0 5) 1)) anon9_correct)))
(let ((anon14_Then_correct  (=> (not (= (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@32) this@@5 next_child) null)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_18640_18641 Mask@6 this@@5 next_sibling)) (=> (HasDirectPerm_18640_18641 Mask@6 this@@5 next_sibling) (=> (= (ControlFlow 0 3) 1) anon9_correct))))))
(let ((anon13_Then_correct  (=> (not (and (= (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@32) this@@5 next_child) null) (= (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@32) this@@5 next_sibling) null))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_18640_18641 Mask@6 this@@5 next_child)) (=> (HasDirectPerm_18640_18641 Mask@6 this@@5 next_child) (and (=> (= (ControlFlow 0 6) 3) anon14_Then_correct) (=> (= (ControlFlow 0 6) 5) anon14_Else_correct)))))))
(let ((anon13_Else_correct  (=> (and (and (= (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@32) this@@5 next_child) null) (= (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@32) this@@5 next_sibling) null)) (= (ControlFlow 0 2) 1)) anon9_correct)))
(let ((anon12_Else_correct  (=> (not (= (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@32) this@@5 next_child) null)) (and (=> (= (ControlFlow 0 10) 6) anon13_Then_correct) (=> (= (ControlFlow 0 10) 2) anon13_Else_correct)))))
(let ((anon12_Then_correct  (=> (= (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@32) this@@5 next_child) null) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_18640_18641 Mask@6 this@@5 next_sibling)) (=> (HasDirectPerm_18640_18641 Mask@6 this@@5 next_sibling) (and (=> (= (ControlFlow 0 8) 6) anon13_Then_correct) (=> (= (ControlFlow 0 8) 2) anon13_Else_correct)))))))
(let ((anon4_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_18640_18641 Mask@6 this@@5 next_child)) (=> (HasDirectPerm_18640_18641 Mask@6 this@@5 next_child) (and (=> (= (ControlFlow 0 11) 8) anon12_Then_correct) (=> (= (ControlFlow 0 11) 10) anon12_Else_correct))))))
(let ((anon11_Else_correct  (=> (= (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@32) this@@5 next_sibling) null) (=> (and (= Mask@6 Mask@4) (= (ControlFlow 0 15) 11)) anon4_correct))))
(let ((anon11_Then_correct  (=> (not (= (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@32) this@@5 next_sibling) null)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (HasDirectPerm_18640_18641 Mask@4 this@@5 next_sibling)) (=> (HasDirectPerm_18640_18641 Mask@4 this@@5 next_sibling) (=> (and (and (= Mask@5 (PolymorphicMapType_36895 (|PolymorphicMapType_36895_18638_1186#PolymorphicMapType_36895| Mask@4) (|PolymorphicMapType_36895_18640_18641#PolymorphicMapType_36895| Mask@4) (store (|PolymorphicMapType_36895_18647_18648#PolymorphicMapType_36895| Mask@4) null (tree (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@32) this@@5 next_sibling)) (+ (select (|PolymorphicMapType_36895_18647_18648#PolymorphicMapType_36895| Mask@4) null (tree (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@32) this@@5 next_sibling))) FullPerm)) (|PolymorphicMapType_36895_18638_18648#PolymorphicMapType_36895| Mask@4) (|PolymorphicMapType_36895_18638_53#PolymorphicMapType_36895| Mask@4) (|PolymorphicMapType_36895_18638_157672#PolymorphicMapType_36895| Mask@4) (|PolymorphicMapType_36895_18647_1186#PolymorphicMapType_36895| Mask@4) (|PolymorphicMapType_36895_18647_18641#PolymorphicMapType_36895| Mask@4) (|PolymorphicMapType_36895_18647_53#PolymorphicMapType_36895| Mask@4) (|PolymorphicMapType_36895_18647_158083#PolymorphicMapType_36895| Mask@4))) (state Heap@@32 Mask@5)) (and (= Mask@6 Mask@5) (= (ControlFlow 0 13) 11))) anon4_correct))))))
(let ((anon2_correct  (and (=> (= (ControlFlow 0 16) (- 0 17)) (HasDirectPerm_18640_18641 Mask@4 this@@5 next_sibling)) (=> (HasDirectPerm_18640_18641 Mask@4 this@@5 next_sibling) (and (=> (= (ControlFlow 0 16) 13) anon11_Then_correct) (=> (= (ControlFlow 0 16) 15) anon11_Else_correct))))))
(let ((anon10_Else_correct  (=> (= (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@32) this@@5 next_child) null) (=> (and (= Mask@4 Mask@2) (= (ControlFlow 0 20) 16)) anon2_correct))))
(let ((anon10_Then_correct  (=> (not (= (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@32) this@@5 next_child) null)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (HasDirectPerm_18640_18641 Mask@2 this@@5 next_child)) (=> (HasDirectPerm_18640_18641 Mask@2 this@@5 next_child) (=> (and (and (= Mask@3 (PolymorphicMapType_36895 (|PolymorphicMapType_36895_18638_1186#PolymorphicMapType_36895| Mask@2) (|PolymorphicMapType_36895_18640_18641#PolymorphicMapType_36895| Mask@2) (store (|PolymorphicMapType_36895_18647_18648#PolymorphicMapType_36895| Mask@2) null (tree (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@32) this@@5 next_child)) (+ (select (|PolymorphicMapType_36895_18647_18648#PolymorphicMapType_36895| Mask@2) null (tree (select (|PolymorphicMapType_36874_18513_18514#PolymorphicMapType_36874| Heap@@32) this@@5 next_child))) FullPerm)) (|PolymorphicMapType_36895_18638_18648#PolymorphicMapType_36895| Mask@2) (|PolymorphicMapType_36895_18638_53#PolymorphicMapType_36895| Mask@2) (|PolymorphicMapType_36895_18638_157672#PolymorphicMapType_36895| Mask@2) (|PolymorphicMapType_36895_18647_1186#PolymorphicMapType_36895| Mask@2) (|PolymorphicMapType_36895_18647_18641#PolymorphicMapType_36895| Mask@2) (|PolymorphicMapType_36895_18647_53#PolymorphicMapType_36895| Mask@2) (|PolymorphicMapType_36895_18647_158083#PolymorphicMapType_36895| Mask@2))) (state Heap@@32 Mask@3)) (and (= Mask@4 Mask@3) (= (ControlFlow 0 18) 16))) anon2_correct))))))
(let ((anon0_correct  (=> (and (and (state Heap@@32 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_36874_18510_53#PolymorphicMapType_36874| Heap@@32) this@@5 $allocated) (not (= this@@5 null)))) (=> (and (and (and (= Mask@0 (PolymorphicMapType_36895 (store (|PolymorphicMapType_36895_18638_1186#PolymorphicMapType_36895| ZeroMask) this@@5 data (+ (select (|PolymorphicMapType_36895_18638_1186#PolymorphicMapType_36895| ZeroMask) this@@5 data) FullPerm)) (|PolymorphicMapType_36895_18640_18641#PolymorphicMapType_36895| ZeroMask) (|PolymorphicMapType_36895_18647_18648#PolymorphicMapType_36895| ZeroMask) (|PolymorphicMapType_36895_18638_18648#PolymorphicMapType_36895| ZeroMask) (|PolymorphicMapType_36895_18638_53#PolymorphicMapType_36895| ZeroMask) (|PolymorphicMapType_36895_18638_157672#PolymorphicMapType_36895| ZeroMask) (|PolymorphicMapType_36895_18647_1186#PolymorphicMapType_36895| ZeroMask) (|PolymorphicMapType_36895_18647_18641#PolymorphicMapType_36895| ZeroMask) (|PolymorphicMapType_36895_18647_53#PolymorphicMapType_36895| ZeroMask) (|PolymorphicMapType_36895_18647_158083#PolymorphicMapType_36895| ZeroMask))) (state Heap@@32 Mask@0)) (and (not (= this@@5 null)) (= Mask@1 (PolymorphicMapType_36895 (|PolymorphicMapType_36895_18638_1186#PolymorphicMapType_36895| Mask@0) (store (|PolymorphicMapType_36895_18640_18641#PolymorphicMapType_36895| Mask@0) this@@5 next_child (+ (select (|PolymorphicMapType_36895_18640_18641#PolymorphicMapType_36895| Mask@0) this@@5 next_child) FullPerm)) (|PolymorphicMapType_36895_18647_18648#PolymorphicMapType_36895| Mask@0) (|PolymorphicMapType_36895_18638_18648#PolymorphicMapType_36895| Mask@0) (|PolymorphicMapType_36895_18638_53#PolymorphicMapType_36895| Mask@0) (|PolymorphicMapType_36895_18638_157672#PolymorphicMapType_36895| Mask@0) (|PolymorphicMapType_36895_18647_1186#PolymorphicMapType_36895| Mask@0) (|PolymorphicMapType_36895_18647_18641#PolymorphicMapType_36895| Mask@0) (|PolymorphicMapType_36895_18647_53#PolymorphicMapType_36895| Mask@0) (|PolymorphicMapType_36895_18647_158083#PolymorphicMapType_36895| Mask@0))))) (and (and (state Heap@@32 Mask@1) (not (= this@@5 null))) (and (= Mask@2 (PolymorphicMapType_36895 (|PolymorphicMapType_36895_18638_1186#PolymorphicMapType_36895| Mask@1) (store (|PolymorphicMapType_36895_18640_18641#PolymorphicMapType_36895| Mask@1) this@@5 next_sibling (+ (select (|PolymorphicMapType_36895_18640_18641#PolymorphicMapType_36895| Mask@1) this@@5 next_sibling) FullPerm)) (|PolymorphicMapType_36895_18647_18648#PolymorphicMapType_36895| Mask@1) (|PolymorphicMapType_36895_18638_18648#PolymorphicMapType_36895| Mask@1) (|PolymorphicMapType_36895_18638_53#PolymorphicMapType_36895| Mask@1) (|PolymorphicMapType_36895_18638_157672#PolymorphicMapType_36895| Mask@1) (|PolymorphicMapType_36895_18647_1186#PolymorphicMapType_36895| Mask@1) (|PolymorphicMapType_36895_18647_18641#PolymorphicMapType_36895| Mask@1) (|PolymorphicMapType_36895_18647_53#PolymorphicMapType_36895| Mask@1) (|PolymorphicMapType_36895_18647_158083#PolymorphicMapType_36895| Mask@1))) (state Heap@@32 Mask@2)))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (HasDirectPerm_18640_18641 Mask@2 this@@5 next_child)) (=> (HasDirectPerm_18640_18641 Mask@2 this@@5 next_child) (and (=> (= (ControlFlow 0 21) 18) anon10_Then_correct) (=> (= (ControlFlow 0 21) 20) anon10_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 23) 21) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
