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
(declare-sort T@Field_6133_53 0)
(declare-sort T@Field_6146_6147 0)
(declare-sort T@Field_6133_16579 0)
(declare-sort T@Field_6133_16446 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6094 0)) (((PolymorphicMapType_6094 (|PolymorphicMapType_6094_6133_53#PolymorphicMapType_6094| (Array T@Ref T@Field_6133_53 Real)) (|PolymorphicMapType_6094_6133_6147#PolymorphicMapType_6094| (Array T@Ref T@Field_6146_6147 Real)) (|PolymorphicMapType_6094_6133_16446#PolymorphicMapType_6094| (Array T@Ref T@Field_6133_16446 Real)) (|PolymorphicMapType_6094_6133_20140#PolymorphicMapType_6094| (Array T@Ref T@Field_6133_16579 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6622 0)) (((PolymorphicMapType_6622 (|PolymorphicMapType_6622_6133_53#PolymorphicMapType_6622| (Array T@Ref T@Field_6133_53 Bool)) (|PolymorphicMapType_6622_6133_6147#PolymorphicMapType_6622| (Array T@Ref T@Field_6146_6147 Bool)) (|PolymorphicMapType_6622_6133_16446#PolymorphicMapType_6622| (Array T@Ref T@Field_6133_16446 Bool)) (|PolymorphicMapType_6622_6133_17559#PolymorphicMapType_6622| (Array T@Ref T@Field_6133_16579 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6073 0)) (((PolymorphicMapType_6073 (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| (Array T@Ref T@Field_6133_53 Bool)) (|PolymorphicMapType_6073_3604_3605#PolymorphicMapType_6073| (Array T@Ref T@Field_6146_6147 T@Ref)) (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| (Array T@Ref T@Field_6133_16579 T@PolymorphicMapType_6622)) (|PolymorphicMapType_6073_6133_16446#PolymorphicMapType_6073| (Array T@Ref T@Field_6133_16446 T@FrameType)) ) ) ))
(declare-sort T@TreeDomainType 0)
(declare-fun state (T@PolymorphicMapType_6073 T@PolymorphicMapType_6094) Bool)
(declare-fun |allNodesLessThan'| (T@PolymorphicMapType_6073 T@TreeDomainType Int) Bool)
(declare-fun |allNodesLessThan#frame| (T@FrameType T@TreeDomainType Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |allNodesGreaterThan'| (T@PolymorphicMapType_6073 T@TreeDomainType Int) Bool)
(declare-fun |allNodesGreaterThan#frame| (T@FrameType T@TreeDomainType Int) Bool)
(declare-fun succHeap (T@PolymorphicMapType_6073 T@PolymorphicMapType_6073) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6073 T@PolymorphicMapType_6073) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6094) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6622)
(declare-fun Node_1 (Int T@TreeDomainType T@TreeDomainType) T@TreeDomainType)
(declare-fun Tree_tag (T@TreeDomainType) Int)
(declare-fun dummyFunction_1656 (Bool) Bool)
(declare-fun |allNodesLessThan#triggerStateless| (T@TreeDomainType Int) Bool)
(declare-fun |allNodesGreaterThan#triggerStateless| (T@TreeDomainType Int) Bool)
(declare-fun Leaf () T@TreeDomainType)
(declare-fun |isBST'| (T@PolymorphicMapType_6073 T@TreeDomainType) Bool)
(declare-fun |isBST#triggerStateless| (T@TreeDomainType) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6073 T@PolymorphicMapType_6073 T@PolymorphicMapType_6094) Bool)
(declare-fun IsPredicateField_6133_16537 (T@Field_6133_16446) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6133 (T@Field_6133_16446) T@Field_6133_16579)
(declare-fun HasDirectPerm_6133_16510 (T@PolymorphicMapType_6094 T@Ref T@Field_6133_16446) Bool)
(declare-fun IsWandField_6133_18086 (T@Field_6133_16446) Bool)
(declare-fun WandMaskField_6133 (T@Field_6133_16446) T@Field_6133_16579)
(declare-fun allNodesLessThan (T@PolymorphicMapType_6073 T@TreeDomainType Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun get_Tree_v (T@TreeDomainType) Int)
(declare-fun get_Tree_right (T@TreeDomainType) T@TreeDomainType)
(declare-fun get_Tree_left (T@TreeDomainType) T@TreeDomainType)
(declare-fun allNodesGreaterThan (T@PolymorphicMapType_6073 T@TreeDomainType Int) Bool)
(declare-fun isBST (T@PolymorphicMapType_6073 T@TreeDomainType) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_6073)
(declare-fun ZeroMask () T@PolymorphicMapType_6094)
(declare-fun $allocated () T@Field_6133_53)
(declare-fun InsidePredicate_6133_6133 (T@Field_6133_16446 T@FrameType T@Field_6133_16446 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6133_21049 (T@Field_6133_16579) Bool)
(declare-fun IsWandField_6133_21065 (T@Field_6133_16579) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6133_6147 (T@Field_6146_6147) Bool)
(declare-fun IsWandField_6133_6147 (T@Field_6146_6147) Bool)
(declare-fun IsPredicateField_6133_53 (T@Field_6133_53) Bool)
(declare-fun IsWandField_6133_53 (T@Field_6133_53) Bool)
(declare-fun HasDirectPerm_6133_21420 (T@PolymorphicMapType_6094 T@Ref T@Field_6133_16579) Bool)
(declare-fun HasDirectPerm_6133_6147 (T@PolymorphicMapType_6094 T@Ref T@Field_6146_6147) Bool)
(declare-fun HasDirectPerm_6133_53 (T@PolymorphicMapType_6094 T@Ref T@Field_6133_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6094 T@PolymorphicMapType_6094 T@PolymorphicMapType_6094) Bool)
(declare-fun |isBST#frame| (T@FrameType T@TreeDomainType) Bool)
(assert (forall ((Heap T@PolymorphicMapType_6073) (Mask T@PolymorphicMapType_6094) (t_2 T@TreeDomainType) (value Int) ) (!  (=> (state Heap Mask) (= (|allNodesLessThan'| Heap t_2 value) (|allNodesLessThan#frame| EmptyFrame t_2 value)))
 :qid |stdinbpl.348:15|
 :skolemid |34|
 :pattern ( (state Heap Mask) (|allNodesLessThan'| Heap t_2 value))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6073) (Mask@@0 T@PolymorphicMapType_6094) (t_2@@0 T@TreeDomainType) (value@@0 Int) ) (!  (=> (state Heap@@0 Mask@@0) (= (|allNodesGreaterThan'| Heap@@0 t_2@@0 value@@0) (|allNodesGreaterThan#frame| EmptyFrame t_2@@0 value@@0)))
 :qid |stdinbpl.423:15|
 :skolemid |38|
 :pattern ( (state Heap@@0 Mask@@0) (|allNodesGreaterThan'| Heap@@0 t_2@@0 value@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_6073) (Heap1 T@PolymorphicMapType_6073) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6073) (Mask@@1 T@PolymorphicMapType_6094) ) (!  (=> (state Heap@@1 Mask@@1) (GoodMask Mask@@1))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@1 Mask@@1))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6073) (Heap1@@0 T@PolymorphicMapType_6073) (Heap2 T@PolymorphicMapType_6073) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6133_16579) ) (!  (not (select (|PolymorphicMapType_6622_6133_17559#PolymorphicMapType_6622| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6622_6133_17559#PolymorphicMapType_6622| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6133_16446) ) (!  (not (select (|PolymorphicMapType_6622_6133_16446#PolymorphicMapType_6622| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6622_6133_16446#PolymorphicMapType_6622| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6146_6147) ) (!  (not (select (|PolymorphicMapType_6622_6133_6147#PolymorphicMapType_6622| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6622_6133_6147#PolymorphicMapType_6622| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6133_53) ) (!  (not (select (|PolymorphicMapType_6622_6133_53#PolymorphicMapType_6622| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6622_6133_53#PolymorphicMapType_6622| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((v_2 Int) (left T@TreeDomainType) (right_2 T@TreeDomainType) ) (! (= (Tree_tag (Node_1 v_2 left right_2)) 1)
 :qid |stdinbpl.228:15|
 :skolemid |25|
 :pattern ( (Node_1 v_2 left right_2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6073) (t_2@@1 T@TreeDomainType) (value@@1 Int) ) (! (dummyFunction_1656 (|allNodesLessThan#triggerStateless| t_2@@1 value@@1))
 :qid |stdinbpl.335:15|
 :skolemid |32|
 :pattern ( (|allNodesLessThan'| Heap@@2 t_2@@1 value@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6073) (t_2@@2 T@TreeDomainType) (value@@2 Int) ) (! (dummyFunction_1656 (|allNodesGreaterThan#triggerStateless| t_2@@2 value@@2))
 :qid |stdinbpl.410:15|
 :skolemid |36|
 :pattern ( (|allNodesGreaterThan'| Heap@@3 t_2@@2 value@@2))
)))
(assert (= (Tree_tag Leaf) 0))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6073) (t_2@@3 T@TreeDomainType) ) (! (dummyFunction_1656 (|isBST#triggerStateless| t_2@@3))
 :qid |stdinbpl.250:15|
 :skolemid |28|
 :pattern ( (|isBST'| Heap@@4 t_2@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6073) (ExhaleHeap T@PolymorphicMapType_6073) (Mask@@2 T@PolymorphicMapType_6094) (pm_f_5 T@Field_6133_16446) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_6133_16510 Mask@@2 null pm_f_5) (IsPredicateField_6133_16537 pm_f_5)) (= (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| Heap@@5) null (PredicateMaskField_6133 pm_f_5)) (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| ExhaleHeap) null (PredicateMaskField_6133 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@2) (IsPredicateField_6133_16537 pm_f_5) (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| ExhaleHeap) null (PredicateMaskField_6133 pm_f_5)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6073) (ExhaleHeap@@0 T@PolymorphicMapType_6073) (Mask@@3 T@PolymorphicMapType_6094) (pm_f_5@@0 T@Field_6133_16446) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_6133_16510 Mask@@3 null pm_f_5@@0) (IsWandField_6133_18086 pm_f_5@@0)) (= (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| Heap@@6) null (WandMaskField_6133 pm_f_5@@0)) (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| ExhaleHeap@@0) null (WandMaskField_6133 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@3) (IsWandField_6133_18086 pm_f_5@@0) (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| ExhaleHeap@@0) null (WandMaskField_6133 pm_f_5@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6073) (Mask@@4 T@PolymorphicMapType_6094) (t_2@@4 T@TreeDomainType) (value@@3 Int) ) (!  (=> (and (state Heap@@7 Mask@@4) (< AssumeFunctionsAbove 1)) (= (allNodesLessThan Heap@@7 t_2@@4 value@@3)  (or (= (Tree_tag t_2@@4) 0) (and (< (get_Tree_v t_2@@4) value@@3) (and (|allNodesLessThan'| Heap@@7 (get_Tree_right t_2@@4) value@@3) (|allNodesLessThan'| Heap@@7 (get_Tree_left t_2@@4) value@@3))))))
 :qid |stdinbpl.341:15|
 :skolemid |33|
 :pattern ( (state Heap@@7 Mask@@4) (allNodesLessThan Heap@@7 t_2@@4 value@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6073) (Mask@@5 T@PolymorphicMapType_6094) (t_2@@5 T@TreeDomainType) (value@@4 Int) ) (!  (=> (and (state Heap@@8 Mask@@5) (< AssumeFunctionsAbove 2)) (= (allNodesGreaterThan Heap@@8 t_2@@5 value@@4)  (or (= (Tree_tag t_2@@5) 0) (and (> (get_Tree_v t_2@@5) value@@4) (and (|allNodesGreaterThan'| Heap@@8 (get_Tree_left t_2@@5) value@@4) (|allNodesGreaterThan'| Heap@@8 (get_Tree_right t_2@@5) value@@4))))))
 :qid |stdinbpl.416:15|
 :skolemid |37|
 :pattern ( (state Heap@@8 Mask@@5) (allNodesGreaterThan Heap@@8 t_2@@5 value@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6073) (ExhaleHeap@@1 T@PolymorphicMapType_6073) (Mask@@6 T@PolymorphicMapType_6094) (pm_f_5@@1 T@Field_6133_16446) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@6) (=> (and (HasDirectPerm_6133_16510 Mask@@6 null pm_f_5@@1) (IsPredicateField_6133_16537 pm_f_5@@1)) (and (and (and (forall ((o2_5 T@Ref) (f_23 T@Field_6133_53) ) (!  (=> (select (|PolymorphicMapType_6622_6133_53#PolymorphicMapType_6622| (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| Heap@@9) null (PredicateMaskField_6133 pm_f_5@@1))) o2_5 f_23) (= (select (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| Heap@@9) o2_5 f_23) (select (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| ExhaleHeap@@1) o2_5 f_23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| ExhaleHeap@@1) o2_5 f_23))
)) (forall ((o2_5@@0 T@Ref) (f_23@@0 T@Field_6146_6147) ) (!  (=> (select (|PolymorphicMapType_6622_6133_6147#PolymorphicMapType_6622| (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| Heap@@9) null (PredicateMaskField_6133 pm_f_5@@1))) o2_5@@0 f_23@@0) (= (select (|PolymorphicMapType_6073_3604_3605#PolymorphicMapType_6073| Heap@@9) o2_5@@0 f_23@@0) (select (|PolymorphicMapType_6073_3604_3605#PolymorphicMapType_6073| ExhaleHeap@@1) o2_5@@0 f_23@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6073_3604_3605#PolymorphicMapType_6073| ExhaleHeap@@1) o2_5@@0 f_23@@0))
))) (forall ((o2_5@@1 T@Ref) (f_23@@1 T@Field_6133_16446) ) (!  (=> (select (|PolymorphicMapType_6622_6133_16446#PolymorphicMapType_6622| (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| Heap@@9) null (PredicateMaskField_6133 pm_f_5@@1))) o2_5@@1 f_23@@1) (= (select (|PolymorphicMapType_6073_6133_16446#PolymorphicMapType_6073| Heap@@9) o2_5@@1 f_23@@1) (select (|PolymorphicMapType_6073_6133_16446#PolymorphicMapType_6073| ExhaleHeap@@1) o2_5@@1 f_23@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6073_6133_16446#PolymorphicMapType_6073| ExhaleHeap@@1) o2_5@@1 f_23@@1))
))) (forall ((o2_5@@2 T@Ref) (f_23@@2 T@Field_6133_16579) ) (!  (=> (select (|PolymorphicMapType_6622_6133_17559#PolymorphicMapType_6622| (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| Heap@@9) null (PredicateMaskField_6133 pm_f_5@@1))) o2_5@@2 f_23@@2) (= (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| Heap@@9) o2_5@@2 f_23@@2) (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| ExhaleHeap@@1) o2_5@@2 f_23@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| ExhaleHeap@@1) o2_5@@2 f_23@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@6) (IsPredicateField_6133_16537 pm_f_5@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6073) (ExhaleHeap@@2 T@PolymorphicMapType_6073) (Mask@@7 T@PolymorphicMapType_6094) (pm_f_5@@2 T@Field_6133_16446) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@7) (=> (and (HasDirectPerm_6133_16510 Mask@@7 null pm_f_5@@2) (IsWandField_6133_18086 pm_f_5@@2)) (and (and (and (forall ((o2_5@@3 T@Ref) (f_23@@3 T@Field_6133_53) ) (!  (=> (select (|PolymorphicMapType_6622_6133_53#PolymorphicMapType_6622| (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| Heap@@10) null (WandMaskField_6133 pm_f_5@@2))) o2_5@@3 f_23@@3) (= (select (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| Heap@@10) o2_5@@3 f_23@@3) (select (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| ExhaleHeap@@2) o2_5@@3 f_23@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| ExhaleHeap@@2) o2_5@@3 f_23@@3))
)) (forall ((o2_5@@4 T@Ref) (f_23@@4 T@Field_6146_6147) ) (!  (=> (select (|PolymorphicMapType_6622_6133_6147#PolymorphicMapType_6622| (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| Heap@@10) null (WandMaskField_6133 pm_f_5@@2))) o2_5@@4 f_23@@4) (= (select (|PolymorphicMapType_6073_3604_3605#PolymorphicMapType_6073| Heap@@10) o2_5@@4 f_23@@4) (select (|PolymorphicMapType_6073_3604_3605#PolymorphicMapType_6073| ExhaleHeap@@2) o2_5@@4 f_23@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6073_3604_3605#PolymorphicMapType_6073| ExhaleHeap@@2) o2_5@@4 f_23@@4))
))) (forall ((o2_5@@5 T@Ref) (f_23@@5 T@Field_6133_16446) ) (!  (=> (select (|PolymorphicMapType_6622_6133_16446#PolymorphicMapType_6622| (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| Heap@@10) null (WandMaskField_6133 pm_f_5@@2))) o2_5@@5 f_23@@5) (= (select (|PolymorphicMapType_6073_6133_16446#PolymorphicMapType_6073| Heap@@10) o2_5@@5 f_23@@5) (select (|PolymorphicMapType_6073_6133_16446#PolymorphicMapType_6073| ExhaleHeap@@2) o2_5@@5 f_23@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6073_6133_16446#PolymorphicMapType_6073| ExhaleHeap@@2) o2_5@@5 f_23@@5))
))) (forall ((o2_5@@6 T@Ref) (f_23@@6 T@Field_6133_16579) ) (!  (=> (select (|PolymorphicMapType_6622_6133_17559#PolymorphicMapType_6622| (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| Heap@@10) null (WandMaskField_6133 pm_f_5@@2))) o2_5@@6 f_23@@6) (= (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| Heap@@10) o2_5@@6 f_23@@6) (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| ExhaleHeap@@2) o2_5@@6 f_23@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| ExhaleHeap@@2) o2_5@@6 f_23@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@7) (IsWandField_6133_18086 pm_f_5@@2))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6073) (Mask@@8 T@PolymorphicMapType_6094) (t_2@@6 T@TreeDomainType) ) (!  (=> (and (state Heap@@11 Mask@@8) (< AssumeFunctionsAbove 0)) (= (isBST Heap@@11 t_2@@6)  (or (= (Tree_tag t_2@@6) 0) (and (allNodesLessThan Heap@@11 (get_Tree_left t_2@@6) (get_Tree_v t_2@@6)) (and (|isBST'| Heap@@11 (get_Tree_left t_2@@6)) (and (allNodesGreaterThan Heap@@11 (get_Tree_right t_2@@6) (get_Tree_v t_2@@6)) (|isBST'| Heap@@11 (get_Tree_right t_2@@6))))))))
 :qid |stdinbpl.256:15|
 :skolemid |29|
 :pattern ( (state Heap@@11 Mask@@8) (isBST Heap@@11 t_2@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6073) (ExhaleHeap@@3 T@PolymorphicMapType_6073) (Mask@@9 T@PolymorphicMapType_6094) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@9) (=> (select (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| Heap@@12) o_15 $allocated) (select (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| ExhaleHeap@@3) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@9) (select (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| ExhaleHeap@@3) o_15 $allocated))
)))
(assert (forall ((p T@Field_6133_16446) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6133_6133 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6133_6133 p v_1 p w))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6073) (ExhaleHeap@@4 T@PolymorphicMapType_6073) (Mask@@10 T@PolymorphicMapType_6094) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@10) (succHeap Heap@@13 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6094) (o_2@@3 T@Ref) (f_4@@3 T@Field_6133_16579) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6094_6133_20140#PolymorphicMapType_6094| Mask@@11) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6133_21049 f_4@@3))) (not (IsWandField_6133_21065 f_4@@3))) (<= (select (|PolymorphicMapType_6094_6133_20140#PolymorphicMapType_6094| Mask@@11) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6094_6133_20140#PolymorphicMapType_6094| Mask@@11) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6094) (o_2@@4 T@Ref) (f_4@@4 T@Field_6133_16446) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6094_6133_16446#PolymorphicMapType_6094| Mask@@12) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6133_16537 f_4@@4))) (not (IsWandField_6133_18086 f_4@@4))) (<= (select (|PolymorphicMapType_6094_6133_16446#PolymorphicMapType_6094| Mask@@12) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6094_6133_16446#PolymorphicMapType_6094| Mask@@12) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6094) (o_2@@5 T@Ref) (f_4@@5 T@Field_6146_6147) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6094_6133_6147#PolymorphicMapType_6094| Mask@@13) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6133_6147 f_4@@5))) (not (IsWandField_6133_6147 f_4@@5))) (<= (select (|PolymorphicMapType_6094_6133_6147#PolymorphicMapType_6094| Mask@@13) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6094_6133_6147#PolymorphicMapType_6094| Mask@@13) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6094) (o_2@@6 T@Ref) (f_4@@6 T@Field_6133_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6094_6133_53#PolymorphicMapType_6094| Mask@@14) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6133_53 f_4@@6))) (not (IsWandField_6133_53 f_4@@6))) (<= (select (|PolymorphicMapType_6094_6133_53#PolymorphicMapType_6094| Mask@@14) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6094_6133_53#PolymorphicMapType_6094| Mask@@14) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6094) (o_2@@7 T@Ref) (f_4@@7 T@Field_6133_16579) ) (! (= (HasDirectPerm_6133_21420 Mask@@15 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_6094_6133_20140#PolymorphicMapType_6094| Mask@@15) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6133_21420 Mask@@15 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6094) (o_2@@8 T@Ref) (f_4@@8 T@Field_6133_16446) ) (! (= (HasDirectPerm_6133_16510 Mask@@16 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_6094_6133_16446#PolymorphicMapType_6094| Mask@@16) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6133_16510 Mask@@16 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6094) (o_2@@9 T@Ref) (f_4@@9 T@Field_6146_6147) ) (! (= (HasDirectPerm_6133_6147 Mask@@17 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6094_6133_6147#PolymorphicMapType_6094| Mask@@17) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6133_6147 Mask@@17 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6094) (o_2@@10 T@Ref) (f_4@@10 T@Field_6133_53) ) (! (= (HasDirectPerm_6133_53 Mask@@18 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6094_6133_53#PolymorphicMapType_6094| Mask@@18) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6133_53 Mask@@18 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6073) (ExhaleHeap@@5 T@PolymorphicMapType_6073) (Mask@@19 T@PolymorphicMapType_6094) (o_15@@0 T@Ref) (f_23@@7 T@Field_6133_16579) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@19) (=> (HasDirectPerm_6133_21420 Mask@@19 o_15@@0 f_23@@7) (= (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| Heap@@14) o_15@@0 f_23@@7) (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| ExhaleHeap@@5) o_15@@0 f_23@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@19) (select (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| ExhaleHeap@@5) o_15@@0 f_23@@7))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6073) (ExhaleHeap@@6 T@PolymorphicMapType_6073) (Mask@@20 T@PolymorphicMapType_6094) (o_15@@1 T@Ref) (f_23@@8 T@Field_6133_16446) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@6 Mask@@20) (=> (HasDirectPerm_6133_16510 Mask@@20 o_15@@1 f_23@@8) (= (select (|PolymorphicMapType_6073_6133_16446#PolymorphicMapType_6073| Heap@@15) o_15@@1 f_23@@8) (select (|PolymorphicMapType_6073_6133_16446#PolymorphicMapType_6073| ExhaleHeap@@6) o_15@@1 f_23@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@6 Mask@@20) (select (|PolymorphicMapType_6073_6133_16446#PolymorphicMapType_6073| ExhaleHeap@@6) o_15@@1 f_23@@8))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6073) (ExhaleHeap@@7 T@PolymorphicMapType_6073) (Mask@@21 T@PolymorphicMapType_6094) (o_15@@2 T@Ref) (f_23@@9 T@Field_6146_6147) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@7 Mask@@21) (=> (HasDirectPerm_6133_6147 Mask@@21 o_15@@2 f_23@@9) (= (select (|PolymorphicMapType_6073_3604_3605#PolymorphicMapType_6073| Heap@@16) o_15@@2 f_23@@9) (select (|PolymorphicMapType_6073_3604_3605#PolymorphicMapType_6073| ExhaleHeap@@7) o_15@@2 f_23@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@7 Mask@@21) (select (|PolymorphicMapType_6073_3604_3605#PolymorphicMapType_6073| ExhaleHeap@@7) o_15@@2 f_23@@9))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6073) (ExhaleHeap@@8 T@PolymorphicMapType_6073) (Mask@@22 T@PolymorphicMapType_6094) (o_15@@3 T@Ref) (f_23@@10 T@Field_6133_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@8 Mask@@22) (=> (HasDirectPerm_6133_53 Mask@@22 o_15@@3 f_23@@10) (= (select (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| Heap@@17) o_15@@3 f_23@@10) (select (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| ExhaleHeap@@8) o_15@@3 f_23@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@8 Mask@@22) (select (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| ExhaleHeap@@8) o_15@@3 f_23@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6133_16579) ) (! (= (select (|PolymorphicMapType_6094_6133_20140#PolymorphicMapType_6094| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6094_6133_20140#PolymorphicMapType_6094| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6133_16446) ) (! (= (select (|PolymorphicMapType_6094_6133_16446#PolymorphicMapType_6094| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6094_6133_16446#PolymorphicMapType_6094| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_6146_6147) ) (! (= (select (|PolymorphicMapType_6094_6133_6147#PolymorphicMapType_6094| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6094_6133_6147#PolymorphicMapType_6094| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6133_53) ) (! (= (select (|PolymorphicMapType_6094_6133_53#PolymorphicMapType_6094| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6094_6133_53#PolymorphicMapType_6094| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6094) (SummandMask1 T@PolymorphicMapType_6094) (SummandMask2 T@PolymorphicMapType_6094) (o_2@@15 T@Ref) (f_4@@15 T@Field_6133_16579) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6094_6133_20140#PolymorphicMapType_6094| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_6094_6133_20140#PolymorphicMapType_6094| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_6094_6133_20140#PolymorphicMapType_6094| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6094_6133_20140#PolymorphicMapType_6094| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6094_6133_20140#PolymorphicMapType_6094| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6094_6133_20140#PolymorphicMapType_6094| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6094) (SummandMask1@@0 T@PolymorphicMapType_6094) (SummandMask2@@0 T@PolymorphicMapType_6094) (o_2@@16 T@Ref) (f_4@@16 T@Field_6133_16446) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6094_6133_16446#PolymorphicMapType_6094| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_6094_6133_16446#PolymorphicMapType_6094| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_6094_6133_16446#PolymorphicMapType_6094| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6094_6133_16446#PolymorphicMapType_6094| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6094_6133_16446#PolymorphicMapType_6094| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6094_6133_16446#PolymorphicMapType_6094| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6094) (SummandMask1@@1 T@PolymorphicMapType_6094) (SummandMask2@@1 T@PolymorphicMapType_6094) (o_2@@17 T@Ref) (f_4@@17 T@Field_6146_6147) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6094_6133_6147#PolymorphicMapType_6094| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_6094_6133_6147#PolymorphicMapType_6094| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_6094_6133_6147#PolymorphicMapType_6094| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6094_6133_6147#PolymorphicMapType_6094| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6094_6133_6147#PolymorphicMapType_6094| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6094_6133_6147#PolymorphicMapType_6094| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6094) (SummandMask1@@2 T@PolymorphicMapType_6094) (SummandMask2@@2 T@PolymorphicMapType_6094) (o_2@@18 T@Ref) (f_4@@18 T@Field_6133_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6094_6133_53#PolymorphicMapType_6094| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_6094_6133_53#PolymorphicMapType_6094| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_6094_6133_53#PolymorphicMapType_6094| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6094_6133_53#PolymorphicMapType_6094| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6094_6133_53#PolymorphicMapType_6094| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6094_6133_53#PolymorphicMapType_6094| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6073) (Mask@@23 T@PolymorphicMapType_6094) (t_2@@7 T@TreeDomainType) ) (!  (=> (state Heap@@18 Mask@@23) (= (|isBST'| Heap@@18 t_2@@7) (|isBST#frame| EmptyFrame t_2@@7)))
 :qid |stdinbpl.263:15|
 :skolemid |30|
 :pattern ( (state Heap@@18 Mask@@23) (|isBST'| Heap@@18 t_2@@7))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6073) (t_2@@8 T@TreeDomainType) ) (!  (and (= (isBST Heap@@19 t_2@@8) (|isBST'| Heap@@19 t_2@@8)) (dummyFunction_1656 (|isBST#triggerStateless| t_2@@8)))
 :qid |stdinbpl.246:15|
 :skolemid |27|
 :pattern ( (isBST Heap@@19 t_2@@8))
)))
(assert (forall ((v_2@@0 Int) (left@@0 T@TreeDomainType) (right_2@@0 T@TreeDomainType) ) (! (= v_2@@0 (get_Tree_v (Node_1 v_2@@0 left@@0 right_2@@0)))
 :qid |stdinbpl.207:15|
 :skolemid |22|
 :pattern ( (Node_1 v_2@@0 left@@0 right_2@@0))
)))
(assert (forall ((v_2@@1 Int) (left@@1 T@TreeDomainType) (right_2@@1 T@TreeDomainType) ) (! (= left@@1 (get_Tree_left (Node_1 v_2@@1 left@@1 right_2@@1)))
 :qid |stdinbpl.213:15|
 :skolemid |23|
 :pattern ( (Node_1 v_2@@1 left@@1 right_2@@1))
)))
(assert (forall ((v_2@@2 Int) (left@@2 T@TreeDomainType) (right_2@@2 T@TreeDomainType) ) (! (= right_2@@2 (get_Tree_right (Node_1 v_2@@2 left@@2 right_2@@2)))
 :qid |stdinbpl.219:15|
 :skolemid |24|
 :pattern ( (Node_1 v_2@@2 left@@2 right_2@@2))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6073) (o_14 T@Ref) (f_24 T@Field_6133_16446) (v T@FrameType) ) (! (succHeap Heap@@20 (PolymorphicMapType_6073 (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| Heap@@20) (|PolymorphicMapType_6073_3604_3605#PolymorphicMapType_6073| Heap@@20) (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| Heap@@20) (store (|PolymorphicMapType_6073_6133_16446#PolymorphicMapType_6073| Heap@@20) o_14 f_24 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6073 (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| Heap@@20) (|PolymorphicMapType_6073_3604_3605#PolymorphicMapType_6073| Heap@@20) (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| Heap@@20) (store (|PolymorphicMapType_6073_6133_16446#PolymorphicMapType_6073| Heap@@20) o_14 f_24 v)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6073) (o_14@@0 T@Ref) (f_24@@0 T@Field_6133_16579) (v@@0 T@PolymorphicMapType_6622) ) (! (succHeap Heap@@21 (PolymorphicMapType_6073 (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| Heap@@21) (|PolymorphicMapType_6073_3604_3605#PolymorphicMapType_6073| Heap@@21) (store (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| Heap@@21) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_6073_6133_16446#PolymorphicMapType_6073| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6073 (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| Heap@@21) (|PolymorphicMapType_6073_3604_3605#PolymorphicMapType_6073| Heap@@21) (store (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| Heap@@21) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_6073_6133_16446#PolymorphicMapType_6073| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6073) (o_14@@1 T@Ref) (f_24@@1 T@Field_6146_6147) (v@@1 T@Ref) ) (! (succHeap Heap@@22 (PolymorphicMapType_6073 (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| Heap@@22) (store (|PolymorphicMapType_6073_3604_3605#PolymorphicMapType_6073| Heap@@22) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| Heap@@22) (|PolymorphicMapType_6073_6133_16446#PolymorphicMapType_6073| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6073 (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| Heap@@22) (store (|PolymorphicMapType_6073_3604_3605#PolymorphicMapType_6073| Heap@@22) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| Heap@@22) (|PolymorphicMapType_6073_6133_16446#PolymorphicMapType_6073| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6073) (o_14@@2 T@Ref) (f_24@@2 T@Field_6133_53) (v@@2 Bool) ) (! (succHeap Heap@@23 (PolymorphicMapType_6073 (store (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| Heap@@23) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_6073_3604_3605#PolymorphicMapType_6073| Heap@@23) (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| Heap@@23) (|PolymorphicMapType_6073_6133_16446#PolymorphicMapType_6073| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6073 (store (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| Heap@@23) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_6073_3604_3605#PolymorphicMapType_6073| Heap@@23) (|PolymorphicMapType_6073_6133_16623#PolymorphicMapType_6073| Heap@@23) (|PolymorphicMapType_6073_6133_16446#PolymorphicMapType_6073| Heap@@23)))
)))
(assert (forall ((o_14@@3 T@Ref) (f_22 T@Field_6146_6147) (Heap@@24 T@PolymorphicMapType_6073) ) (!  (=> (select (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| Heap@@24) o_14@@3 $allocated) (select (|PolymorphicMapType_6073_3601_53#PolymorphicMapType_6073| Heap@@24) (select (|PolymorphicMapType_6073_3604_3605#PolymorphicMapType_6073| Heap@@24) o_14@@3 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6073_3604_3605#PolymorphicMapType_6073| Heap@@24) o_14@@3 f_22))
)))
(assert (forall ((p@@1 T@Field_6133_16446) (v_1@@0 T@FrameType) (q T@Field_6133_16446) (w@@0 T@FrameType) (r T@Field_6133_16446) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6133_6133 p@@1 v_1@@0 q w@@0) (InsidePredicate_6133_6133 q w@@0 r u)) (InsidePredicate_6133_6133 p@@1 v_1@@0 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6133_6133 p@@1 v_1@@0 q w@@0) (InsidePredicate_6133_6133 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((t_2@@9 T@TreeDomainType) ) (!  (or (= t_2@@9 Leaf) (= t_2@@9 (Node_1 (get_Tree_v t_2@@9) (get_Tree_left t_2@@9) (get_Tree_right t_2@@9))))
 :qid |stdinbpl.234:15|
 :skolemid |26|
 :pattern ( (Tree_tag t_2@@9))
 :pattern ( (get_Tree_v t_2@@9))
 :pattern ( (get_Tree_left t_2@@9))
 :pattern ( (get_Tree_right t_2@@9))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6073) (t_2@@10 T@TreeDomainType) (value@@5 Int) ) (!  (and (= (allNodesLessThan Heap@@25 t_2@@10 value@@5) (|allNodesLessThan'| Heap@@25 t_2@@10 value@@5)) (dummyFunction_1656 (|allNodesLessThan#triggerStateless| t_2@@10 value@@5)))
 :qid |stdinbpl.331:15|
 :skolemid |31|
 :pattern ( (allNodesLessThan Heap@@25 t_2@@10 value@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6073) (t_2@@11 T@TreeDomainType) (value@@6 Int) ) (!  (and (= (allNodesGreaterThan Heap@@26 t_2@@11 value@@6) (|allNodesGreaterThan'| Heap@@26 t_2@@11 value@@6)) (dummyFunction_1656 (|allNodesGreaterThan#triggerStateless| t_2@@11 value@@6)))
 :qid |stdinbpl.406:15|
 :skolemid |35|
 :pattern ( (allNodesGreaterThan Heap@@26 t_2@@11 value@@6))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |allNodesGreaterThan#definedness|)
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
 (=> (= (ControlFlow 0 0) 13) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
