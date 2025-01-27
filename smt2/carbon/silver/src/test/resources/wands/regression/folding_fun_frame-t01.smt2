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
(declare-sort T@Field_10278_53 0)
(declare-sort T@Field_10291_10292 0)
(declare-sort T@Field_14249_1511 0)
(declare-sort T@Field_14716_14717 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_17453_17458 0)
(declare-sort T@Field_13620_13625 0)
(declare-sort T@Field_5623_5660 0)
(declare-sort T@Field_5623_13625 0)
(declare-sort T@Field_5659_1511 0)
(declare-sort T@Field_5659_5626 0)
(declare-sort T@Field_5659_53 0)
(declare-sort T@Field_13607_1206 0)
(declare-sort T@Field_13607_5626 0)
(declare-sort T@Field_13636_13637 0)
(declare-sort T@Field_13607_53 0)
(declare-datatypes ((T@PolymorphicMapType_10239 0)) (((PolymorphicMapType_10239 (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| (Array T@Ref T@Field_14716_14717 Real)) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| (Array T@Ref T@Field_14249_1511 Real)) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| (Array T@Ref T@Field_10291_10292 Real)) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| (Array T@Ref T@Field_13607_1206 Real)) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| (Array T@Ref T@Field_5659_1511 Real)) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| (Array T@Ref T@Field_5659_5626 Real)) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| (Array T@Ref T@Field_5659_53 Real)) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| (Array T@Ref T@Field_17453_17458 Real)) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| (Array T@Ref T@Field_5623_5660 Real)) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| (Array T@Ref T@Field_10278_53 Real)) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| (Array T@Ref T@Field_5623_13625 Real)) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| (Array T@Ref T@Field_13636_13637 Real)) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| (Array T@Ref T@Field_13607_5626 Real)) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| (Array T@Ref T@Field_13607_53 Real)) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| (Array T@Ref T@Field_13620_13625 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10767 0)) (((PolymorphicMapType_10767 (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| (Array T@Ref T@Field_14249_1511 Bool)) (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| (Array T@Ref T@Field_10291_10292 Bool)) (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| (Array T@Ref T@Field_10278_53 Bool)) (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| (Array T@Ref T@Field_5623_13625 Bool)) (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| (Array T@Ref T@Field_5623_5660 Bool)) (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| (Array T@Ref T@Field_13607_1206 Bool)) (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| (Array T@Ref T@Field_13607_5626 Bool)) (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| (Array T@Ref T@Field_13607_53 Bool)) (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| (Array T@Ref T@Field_13620_13625 Bool)) (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| (Array T@Ref T@Field_13636_13637 Bool)) (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| (Array T@Ref T@Field_5659_1511 Bool)) (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| (Array T@Ref T@Field_5659_5626 Bool)) (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| (Array T@Ref T@Field_5659_53 Bool)) (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| (Array T@Ref T@Field_17453_17458 Bool)) (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| (Array T@Ref T@Field_14716_14717 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10218 0)) (((PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| (Array T@Ref T@Field_10278_53 Bool)) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| (Array T@Ref T@Field_10291_10292 T@Ref)) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| (Array T@Ref T@Field_14249_1511 Int)) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| (Array T@Ref T@Field_14716_14717 T@FrameType)) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| (Array T@Ref T@Field_17453_17458 T@PolymorphicMapType_10767)) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| (Array T@Ref T@Field_13620_13625 T@PolymorphicMapType_10767)) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| (Array T@Ref T@Field_5623_5660 T@FrameType)) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| (Array T@Ref T@Field_5623_13625 T@PolymorphicMapType_10767)) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| (Array T@Ref T@Field_5659_1511 Int)) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| (Array T@Ref T@Field_5659_5626 T@Ref)) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| (Array T@Ref T@Field_5659_53 Bool)) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| (Array T@Ref T@Field_13607_1206 Int)) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| (Array T@Ref T@Field_13607_5626 T@Ref)) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| (Array T@Ref T@Field_13636_13637 T@FrameType)) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| (Array T@Ref T@Field_13607_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_10278_53)
(declare-fun val () T@Field_14249_1511)
(declare-fun next () T@Field_10291_10292)
(declare-fun succHeap (T@PolymorphicMapType_10218 T@PolymorphicMapType_10218) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10218 T@PolymorphicMapType_10218) Bool)
(declare-fun wand (Bool T@Ref T@Ref Int) T@Field_13607_1206)
(declare-fun getPredWandId_5595_1206 (T@Field_13607_1206) Int)
(declare-fun state (T@PolymorphicMapType_10218 T@PolymorphicMapType_10239) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10239) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10767)
(declare-fun List (T@Ref) T@Field_14716_14717)
(declare-fun IsPredicateField_5659_5660 (T@Field_14716_14717) Bool)
(declare-fun |sum_rec'| (T@PolymorphicMapType_10218 T@Ref) Int)
(declare-fun dummyFunction_1759 (Int) Bool)
(declare-fun |sum_rec#triggerStateless| (T@Ref) Int)
(declare-fun |List#trigger_5659| (T@PolymorphicMapType_10218 T@Field_14716_14717) Bool)
(declare-fun |List#everUsed_5659| (T@Field_14716_14717) Bool)
(declare-fun sum_rec (T@PolymorphicMapType_10218 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10218 T@PolymorphicMapType_10218 T@PolymorphicMapType_10239) Bool)
(declare-fun IsPredicateField_5604_5605 (T@Field_13636_13637) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_13607 (T@Field_13636_13637) T@Field_13620_13625)
(declare-fun HasDirectPerm_13607_5660 (T@PolymorphicMapType_10239 T@Ref T@Field_13636_13637) Bool)
(declare-fun PredicateMaskField_5659 (T@Field_14716_14717) T@Field_17453_17458)
(declare-fun HasDirectPerm_5659_5660 (T@PolymorphicMapType_10239 T@Ref T@Field_14716_14717) Bool)
(declare-fun IsPredicateField_5623_36251 (T@Field_5623_5660) Bool)
(declare-fun PredicateMaskField_5623 (T@Field_5623_5660) T@Field_5623_13625)
(declare-fun HasDirectPerm_5623_5660 (T@PolymorphicMapType_10239 T@Ref T@Field_5623_5660) Bool)
(declare-fun IsWandField_5604_5605 (T@Field_13636_13637) Bool)
(declare-fun WandMaskField_5604 (T@Field_13636_13637) T@Field_13620_13625)
(declare-fun IsWandField_5659_41600 (T@Field_14716_14717) Bool)
(declare-fun WandMaskField_5659 (T@Field_14716_14717) T@Field_17453_17458)
(declare-fun IsWandField_5623_41243 (T@Field_5623_5660) Bool)
(declare-fun WandMaskField_5623 (T@Field_5623_5660) T@Field_5623_13625)
(declare-fun |List#sm| (T@Ref) T@Field_17453_17458)
(declare-fun dummyHeap () T@PolymorphicMapType_10218)
(declare-fun ZeroMask () T@PolymorphicMapType_10239)
(declare-fun InsidePredicate_13607_13607 (T@Field_13636_13637 T@FrameType T@Field_13636_13637 T@FrameType) Bool)
(declare-fun InsidePredicate_10278_10278 (T@Field_5623_5660 T@FrameType T@Field_5623_5660 T@FrameType) Bool)
(declare-fun InsidePredicate_5659_5659 (T@Field_14716_14717 T@FrameType T@Field_14716_14717 T@FrameType) Bool)
(declare-fun IsPredicateField_5623_1511 (T@Field_14249_1511) Bool)
(declare-fun IsWandField_5623_1511 (T@Field_14249_1511) Bool)
(declare-fun IsPredicateField_5625_5626 (T@Field_10291_10292) Bool)
(declare-fun IsWandField_5625_5626 (T@Field_10291_10292) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5595_52203 (T@Field_13620_13625) Bool)
(declare-fun IsWandField_5595_52219 (T@Field_13620_13625) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5595_53 (T@Field_13607_53) Bool)
(declare-fun IsWandField_5595_53 (T@Field_13607_53) Bool)
(declare-fun IsPredicateField_5595_5626 (T@Field_13607_5626) Bool)
(declare-fun IsWandField_5595_5626 (T@Field_13607_5626) Bool)
(declare-fun IsPredicateField_5595_1206 (T@Field_13607_1206) Bool)
(declare-fun IsWandField_5595_1206 (T@Field_13607_1206) Bool)
(declare-fun IsPredicateField_5623_51386 (T@Field_5623_13625) Bool)
(declare-fun IsWandField_5623_51402 (T@Field_5623_13625) Bool)
(declare-fun IsPredicateField_5623_53 (T@Field_10278_53) Bool)
(declare-fun IsWandField_5623_53 (T@Field_10278_53) Bool)
(declare-fun IsPredicateField_5659_50583 (T@Field_17453_17458) Bool)
(declare-fun IsWandField_5659_50599 (T@Field_17453_17458) Bool)
(declare-fun IsPredicateField_5659_53 (T@Field_5659_53) Bool)
(declare-fun IsWandField_5659_53 (T@Field_5659_53) Bool)
(declare-fun IsPredicateField_5659_5626 (T@Field_5659_5626) Bool)
(declare-fun IsWandField_5659_5626 (T@Field_5659_5626) Bool)
(declare-fun IsPredicateField_5659_1511 (T@Field_5659_1511) Bool)
(declare-fun IsWandField_5659_1511 (T@Field_5659_1511) Bool)
(declare-fun HasDirectPerm_13607_36006 (T@PolymorphicMapType_10239 T@Ref T@Field_13620_13625) Bool)
(declare-fun HasDirectPerm_13607_53 (T@PolymorphicMapType_10239 T@Ref T@Field_13607_53) Bool)
(declare-fun HasDirectPerm_13607_5626 (T@PolymorphicMapType_10239 T@Ref T@Field_13607_5626) Bool)
(declare-fun HasDirectPerm_13607_1511 (T@PolymorphicMapType_10239 T@Ref T@Field_13607_1206) Bool)
(declare-fun HasDirectPerm_5659_34872 (T@PolymorphicMapType_10239 T@Ref T@Field_17453_17458) Bool)
(declare-fun HasDirectPerm_5659_53 (T@PolymorphicMapType_10239 T@Ref T@Field_5659_53) Bool)
(declare-fun HasDirectPerm_5659_5626 (T@PolymorphicMapType_10239 T@Ref T@Field_5659_5626) Bool)
(declare-fun HasDirectPerm_5659_1511 (T@PolymorphicMapType_10239 T@Ref T@Field_5659_1511) Bool)
(declare-fun HasDirectPerm_5623_33731 (T@PolymorphicMapType_10239 T@Ref T@Field_5623_13625) Bool)
(declare-fun HasDirectPerm_5623_53 (T@PolymorphicMapType_10239 T@Ref T@Field_10278_53) Bool)
(declare-fun HasDirectPerm_5625_5626 (T@PolymorphicMapType_10239 T@Ref T@Field_10291_10292) Bool)
(declare-fun HasDirectPerm_5623_1511 (T@PolymorphicMapType_10239 T@Ref T@Field_14249_1511) Bool)
(declare-fun |wand#ft| (Bool T@Ref T@Ref Int) T@Field_13636_13637)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |wand#sm| (Bool T@Ref T@Ref Int) T@Field_13620_13625)
(declare-fun sumMask (T@PolymorphicMapType_10239 T@PolymorphicMapType_10239 T@PolymorphicMapType_10239) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |sum_rec#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_5659_5660 (T@Field_14716_14717) Int)
(declare-fun InsidePredicate_13607_10278 (T@Field_13636_13637 T@FrameType T@Field_5623_5660 T@FrameType) Bool)
(declare-fun InsidePredicate_13607_5659 (T@Field_13636_13637 T@FrameType T@Field_14716_14717 T@FrameType) Bool)
(declare-fun InsidePredicate_10278_13607 (T@Field_5623_5660 T@FrameType T@Field_13636_13637 T@FrameType) Bool)
(declare-fun InsidePredicate_10278_5659 (T@Field_5623_5660 T@FrameType T@Field_14716_14717 T@FrameType) Bool)
(declare-fun InsidePredicate_5659_13607 (T@Field_14716_14717 T@FrameType T@Field_13636_13637 T@FrameType) Bool)
(declare-fun InsidePredicate_5659_10278 (T@Field_14716_14717 T@FrameType T@Field_5623_5660 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_10218) (Heap1 T@PolymorphicMapType_10218) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1 Bool) (arg2 T@Ref) (arg3 T@Ref) (arg4 Int) ) (! (= (getPredWandId_5595_1206 (wand arg1 arg2 arg3 arg4)) 1)
 :qid |stdinbpl.207:15|
 :skolemid |27|
 :pattern ( (wand arg1 arg2 arg3 arg4))
)))
(assert (forall ((Heap T@PolymorphicMapType_10218) (Mask T@PolymorphicMapType_10239) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10218) (Heap1@@0 T@PolymorphicMapType_10218) (Heap2 T@PolymorphicMapType_10218) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_14716_14717) ) (!  (not (select (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17453_17458) ) (!  (not (select (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5659_53) ) (!  (not (select (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5659_5626) ) (!  (not (select (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5659_1511) ) (!  (not (select (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_13636_13637) ) (!  (not (select (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_13620_13625) ) (!  (not (select (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_13607_53) ) (!  (not (select (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_13607_5626) ) (!  (not (select (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_13607_1206) ) (!  (not (select (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_5623_5660) ) (!  (not (select (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_5623_13625) ) (!  (not (select (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_10278_53) ) (!  (not (select (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_10291_10292) ) (!  (not (select (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_14249_1511) ) (!  (not (select (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((ys T@Ref) ) (! (IsPredicateField_5659_5660 (List ys))
 :qid |stdinbpl.371:15|
 :skolemid |35|
 :pattern ( (List ys))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10218) (ys@@0 T@Ref) ) (! (dummyFunction_1759 (|sum_rec#triggerStateless| ys@@0))
 :qid |stdinbpl.238:15|
 :skolemid |30|
 :pattern ( (|sum_rec'| Heap@@0 ys@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10218) (ys@@1 T@Ref) ) (! (|List#everUsed_5659| (List ys@@1))
 :qid |stdinbpl.390:15|
 :skolemid |39|
 :pattern ( (|List#trigger_5659| Heap@@1 (List ys@@1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10218) (ys@@2 T@Ref) ) (!  (and (= (sum_rec Heap@@2 ys@@2) (|sum_rec'| Heap@@2 ys@@2)) (dummyFunction_1759 (|sum_rec#triggerStateless| ys@@2)))
 :qid |stdinbpl.234:15|
 :skolemid |29|
 :pattern ( (sum_rec Heap@@2 ys@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10218) (ExhaleHeap T@PolymorphicMapType_10218) (Mask@@0 T@PolymorphicMapType_10239) (pm_f_20 T@Field_13636_13637) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_13607_5660 Mask@@0 null pm_f_20) (IsPredicateField_5604_5605 pm_f_20)) (= (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@3) null (PredicateMaskField_13607 pm_f_20)) (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| ExhaleHeap) null (PredicateMaskField_13607 pm_f_20)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_5604_5605 pm_f_20) (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| ExhaleHeap) null (PredicateMaskField_13607 pm_f_20)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10218) (ExhaleHeap@@0 T@PolymorphicMapType_10218) (Mask@@1 T@PolymorphicMapType_10239) (pm_f_20@@0 T@Field_14716_14717) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5659_5660 Mask@@1 null pm_f_20@@0) (IsPredicateField_5659_5660 pm_f_20@@0)) (= (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@4) null (PredicateMaskField_5659 pm_f_20@@0)) (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| ExhaleHeap@@0) null (PredicateMaskField_5659 pm_f_20@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5659_5660 pm_f_20@@0) (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| ExhaleHeap@@0) null (PredicateMaskField_5659 pm_f_20@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10218) (ExhaleHeap@@1 T@PolymorphicMapType_10218) (Mask@@2 T@PolymorphicMapType_10239) (pm_f_20@@1 T@Field_5623_5660) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5623_5660 Mask@@2 null pm_f_20@@1) (IsPredicateField_5623_36251 pm_f_20@@1)) (= (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@5) null (PredicateMaskField_5623 pm_f_20@@1)) (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| ExhaleHeap@@1) null (PredicateMaskField_5623 pm_f_20@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5623_36251 pm_f_20@@1) (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| ExhaleHeap@@1) null (PredicateMaskField_5623 pm_f_20@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10218) (ExhaleHeap@@2 T@PolymorphicMapType_10218) (Mask@@3 T@PolymorphicMapType_10239) (pm_f_20@@2 T@Field_13636_13637) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_13607_5660 Mask@@3 null pm_f_20@@2) (IsWandField_5604_5605 pm_f_20@@2)) (= (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@6) null (WandMaskField_5604 pm_f_20@@2)) (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| ExhaleHeap@@2) null (WandMaskField_5604 pm_f_20@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsWandField_5604_5605 pm_f_20@@2) (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| ExhaleHeap@@2) null (WandMaskField_5604 pm_f_20@@2)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10218) (ExhaleHeap@@3 T@PolymorphicMapType_10218) (Mask@@4 T@PolymorphicMapType_10239) (pm_f_20@@3 T@Field_14716_14717) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_5659_5660 Mask@@4 null pm_f_20@@3) (IsWandField_5659_41600 pm_f_20@@3)) (= (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@7) null (WandMaskField_5659 pm_f_20@@3)) (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| ExhaleHeap@@3) null (WandMaskField_5659 pm_f_20@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsWandField_5659_41600 pm_f_20@@3) (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| ExhaleHeap@@3) null (WandMaskField_5659 pm_f_20@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10218) (ExhaleHeap@@4 T@PolymorphicMapType_10218) (Mask@@5 T@PolymorphicMapType_10239) (pm_f_20@@4 T@Field_5623_5660) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5623_5660 Mask@@5 null pm_f_20@@4) (IsWandField_5623_41243 pm_f_20@@4)) (= (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@8) null (WandMaskField_5623 pm_f_20@@4)) (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| ExhaleHeap@@4) null (WandMaskField_5623 pm_f_20@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsWandField_5623_41243 pm_f_20@@4) (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| ExhaleHeap@@4) null (WandMaskField_5623 pm_f_20@@4)))
)))
(assert (forall ((ys@@3 T@Ref) (ys2 T@Ref) ) (!  (=> (= (List ys@@3) (List ys2)) (= ys@@3 ys2))
 :qid |stdinbpl.381:15|
 :skolemid |37|
 :pattern ( (List ys@@3) (List ys2))
)))
(assert (forall ((ys@@4 T@Ref) (ys2@@0 T@Ref) ) (!  (=> (= (|List#sm| ys@@4) (|List#sm| ys2@@0)) (= ys@@4 ys2@@0))
 :qid |stdinbpl.385:15|
 :skolemid |38|
 :pattern ( (|List#sm| ys@@4) (|List#sm| ys2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10218) (ExhaleHeap@@5 T@PolymorphicMapType_10218) (Mask@@6 T@PolymorphicMapType_10239) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@9) o_41 $allocated) (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| ExhaleHeap@@5) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| ExhaleHeap@@5) o_41 $allocated))
)))
(assert (forall ((p T@Field_13636_13637) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_13607_13607 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13607_13607 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_5623_5660) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_10278_10278 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10278_10278 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_14716_14717) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_5659_5659 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5659_5659 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_5623_1511 val)))
(assert  (not (IsWandField_5623_1511 val)))
(assert  (not (IsPredicateField_5625_5626 next)))
(assert  (not (IsWandField_5625_5626 next)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10218) (ExhaleHeap@@6 T@PolymorphicMapType_10218) (Mask@@7 T@PolymorphicMapType_10239) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@10 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_10239) (o_2@@14 T@Ref) (f_4@@14 T@Field_13620_13625) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5595_52203 f_4@@14))) (not (IsWandField_5595_52219 f_4@@14))) (<= (select (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_10239) (o_2@@15 T@Ref) (f_4@@15 T@Field_13607_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5595_53 f_4@@15))) (not (IsWandField_5595_53 f_4@@15))) (<= (select (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10239) (o_2@@16 T@Ref) (f_4@@16 T@Field_13607_5626) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5595_5626 f_4@@16))) (not (IsWandField_5595_5626 f_4@@16))) (<= (select (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10239) (o_2@@17 T@Ref) (f_4@@17 T@Field_13607_1206) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5595_1206 f_4@@17))) (not (IsWandField_5595_1206 f_4@@17))) (<= (select (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10239) (o_2@@18 T@Ref) (f_4@@18 T@Field_13636_13637) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5604_5605 f_4@@18))) (not (IsWandField_5604_5605 f_4@@18))) (<= (select (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10239) (o_2@@19 T@Ref) (f_4@@19 T@Field_5623_13625) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5623_51386 f_4@@19))) (not (IsWandField_5623_51402 f_4@@19))) (<= (select (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10239) (o_2@@20 T@Ref) (f_4@@20 T@Field_10278_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5623_53 f_4@@20))) (not (IsWandField_5623_53 f_4@@20))) (<= (select (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10239) (o_2@@21 T@Ref) (f_4@@21 T@Field_10291_10292) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5625_5626 f_4@@21))) (not (IsWandField_5625_5626 f_4@@21))) (<= (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_10239) (o_2@@22 T@Ref) (f_4@@22 T@Field_14249_1511) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5623_1511 f_4@@22))) (not (IsWandField_5623_1511 f_4@@22))) (<= (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_10239) (o_2@@23 T@Ref) (f_4@@23 T@Field_5623_5660) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5623_36251 f_4@@23))) (not (IsWandField_5623_41243 f_4@@23))) (<= (select (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_10239) (o_2@@24 T@Ref) (f_4@@24 T@Field_17453_17458) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5659_50583 f_4@@24))) (not (IsWandField_5659_50599 f_4@@24))) (<= (select (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_10239) (o_2@@25 T@Ref) (f_4@@25 T@Field_5659_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5659_53 f_4@@25))) (not (IsWandField_5659_53 f_4@@25))) (<= (select (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_10239) (o_2@@26 T@Ref) (f_4@@26 T@Field_5659_5626) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5659_5626 f_4@@26))) (not (IsWandField_5659_5626 f_4@@26))) (<= (select (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_10239) (o_2@@27 T@Ref) (f_4@@27 T@Field_5659_1511) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5659_1511 f_4@@27))) (not (IsWandField_5659_1511 f_4@@27))) (<= (select (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_10239) (o_2@@28 T@Ref) (f_4@@28 T@Field_14716_14717) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_5659_5660 f_4@@28))) (not (IsWandField_5659_41600 f_4@@28))) (<= (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_10239) (o_2@@29 T@Ref) (f_4@@29 T@Field_13620_13625) ) (! (= (HasDirectPerm_13607_36006 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13607_36006 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_10239) (o_2@@30 T@Ref) (f_4@@30 T@Field_13607_53) ) (! (= (HasDirectPerm_13607_53 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13607_53 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_10239) (o_2@@31 T@Ref) (f_4@@31 T@Field_13636_13637) ) (! (= (HasDirectPerm_13607_5660 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13607_5660 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_10239) (o_2@@32 T@Ref) (f_4@@32 T@Field_13607_5626) ) (! (= (HasDirectPerm_13607_5626 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13607_5626 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_10239) (o_2@@33 T@Ref) (f_4@@33 T@Field_13607_1206) ) (! (= (HasDirectPerm_13607_1511 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13607_1511 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_10239) (o_2@@34 T@Ref) (f_4@@34 T@Field_17453_17458) ) (! (= (HasDirectPerm_5659_34872 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5659_34872 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_10239) (o_2@@35 T@Ref) (f_4@@35 T@Field_5659_53) ) (! (= (HasDirectPerm_5659_53 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5659_53 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_10239) (o_2@@36 T@Ref) (f_4@@36 T@Field_14716_14717) ) (! (= (HasDirectPerm_5659_5660 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5659_5660 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_10239) (o_2@@37 T@Ref) (f_4@@37 T@Field_5659_5626) ) (! (= (HasDirectPerm_5659_5626 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5659_5626 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_10239) (o_2@@38 T@Ref) (f_4@@38 T@Field_5659_1511) ) (! (= (HasDirectPerm_5659_1511 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5659_1511 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_10239) (o_2@@39 T@Ref) (f_4@@39 T@Field_5623_13625) ) (! (= (HasDirectPerm_5623_33731 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5623_33731 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_10239) (o_2@@40 T@Ref) (f_4@@40 T@Field_10278_53) ) (! (= (HasDirectPerm_5623_53 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5623_53 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_10239) (o_2@@41 T@Ref) (f_4@@41 T@Field_5623_5660) ) (! (= (HasDirectPerm_5623_5660 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5623_5660 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_10239) (o_2@@42 T@Ref) (f_4@@42 T@Field_10291_10292) ) (! (= (HasDirectPerm_5625_5626 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5625_5626 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_10239) (o_2@@43 T@Ref) (f_4@@43 T@Field_14249_1511) ) (! (= (HasDirectPerm_5623_1511 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5623_1511 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((arg1@@0 Bool) (arg2@@0 T@Ref) (arg3@@0 T@Ref) (arg4@@0 Int) ) (! (IsWandField_5595_1206 (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0))
 :qid |stdinbpl.187:15|
 :skolemid |22|
 :pattern ( (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0))
)))
(assert (forall ((arg1@@1 Bool) (arg2@@1 T@Ref) (arg3@@1 T@Ref) (arg4@@1 Int) ) (! (IsWandField_5604_5605 (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1))
 :qid |stdinbpl.191:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1))
)))
(assert (forall ((arg1@@2 Bool) (arg2@@2 T@Ref) (arg3@@2 T@Ref) (arg4@@2 Int) (arg1_2 Bool) (arg2_2 T@Ref) (arg3_2 T@Ref) (arg4_2 Int) ) (!  (=> (= (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2) (wand arg1_2 arg2_2 arg3_2 arg4_2)) (and (= arg1@@2 arg1_2) (and (= arg2@@2 arg2_2) (and (= arg3@@2 arg3_2) (= arg4@@2 arg4_2)))))
 :qid |stdinbpl.211:15|
 :skolemid |28|
 :pattern ( (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2) (wand arg1_2 arg2_2 arg3_2 arg4_2))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10218) (ExhaleHeap@@7 T@PolymorphicMapType_10218) (Mask@@38 T@PolymorphicMapType_10239) (o_41@@0 T@Ref) (f_53 T@Field_13620_13625) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_13607_36006 Mask@@38 o_41@@0 f_53) (= (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@11) o_41@@0 f_53) (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| ExhaleHeap@@7) o_41@@0 f_53))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| ExhaleHeap@@7) o_41@@0 f_53))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10218) (ExhaleHeap@@8 T@PolymorphicMapType_10218) (Mask@@39 T@PolymorphicMapType_10239) (o_41@@1 T@Ref) (f_53@@0 T@Field_13607_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_13607_53 Mask@@39 o_41@@1 f_53@@0) (= (select (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@12) o_41@@1 f_53@@0) (select (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| ExhaleHeap@@8) o_41@@1 f_53@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| ExhaleHeap@@8) o_41@@1 f_53@@0))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10218) (ExhaleHeap@@9 T@PolymorphicMapType_10218) (Mask@@40 T@PolymorphicMapType_10239) (o_41@@2 T@Ref) (f_53@@1 T@Field_13636_13637) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_13607_5660 Mask@@40 o_41@@2 f_53@@1) (= (select (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@13) o_41@@2 f_53@@1) (select (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| ExhaleHeap@@9) o_41@@2 f_53@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| ExhaleHeap@@9) o_41@@2 f_53@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10218) (ExhaleHeap@@10 T@PolymorphicMapType_10218) (Mask@@41 T@PolymorphicMapType_10239) (o_41@@3 T@Ref) (f_53@@2 T@Field_13607_5626) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_13607_5626 Mask@@41 o_41@@3 f_53@@2) (= (select (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@14) o_41@@3 f_53@@2) (select (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| ExhaleHeap@@10) o_41@@3 f_53@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| ExhaleHeap@@10) o_41@@3 f_53@@2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10218) (ExhaleHeap@@11 T@PolymorphicMapType_10218) (Mask@@42 T@PolymorphicMapType_10239) (o_41@@4 T@Ref) (f_53@@3 T@Field_13607_1206) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_13607_1511 Mask@@42 o_41@@4 f_53@@3) (= (select (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@15) o_41@@4 f_53@@3) (select (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| ExhaleHeap@@11) o_41@@4 f_53@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| ExhaleHeap@@11) o_41@@4 f_53@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10218) (ExhaleHeap@@12 T@PolymorphicMapType_10218) (Mask@@43 T@PolymorphicMapType_10239) (o_41@@5 T@Ref) (f_53@@4 T@Field_17453_17458) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_5659_34872 Mask@@43 o_41@@5 f_53@@4) (= (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@16) o_41@@5 f_53@@4) (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| ExhaleHeap@@12) o_41@@5 f_53@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| ExhaleHeap@@12) o_41@@5 f_53@@4))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10218) (ExhaleHeap@@13 T@PolymorphicMapType_10218) (Mask@@44 T@PolymorphicMapType_10239) (o_41@@6 T@Ref) (f_53@@5 T@Field_5659_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_5659_53 Mask@@44 o_41@@6 f_53@@5) (= (select (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@17) o_41@@6 f_53@@5) (select (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| ExhaleHeap@@13) o_41@@6 f_53@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| ExhaleHeap@@13) o_41@@6 f_53@@5))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10218) (ExhaleHeap@@14 T@PolymorphicMapType_10218) (Mask@@45 T@PolymorphicMapType_10239) (o_41@@7 T@Ref) (f_53@@6 T@Field_14716_14717) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_5659_5660 Mask@@45 o_41@@7 f_53@@6) (= (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@18) o_41@@7 f_53@@6) (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| ExhaleHeap@@14) o_41@@7 f_53@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| ExhaleHeap@@14) o_41@@7 f_53@@6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10218) (ExhaleHeap@@15 T@PolymorphicMapType_10218) (Mask@@46 T@PolymorphicMapType_10239) (o_41@@8 T@Ref) (f_53@@7 T@Field_5659_5626) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_5659_5626 Mask@@46 o_41@@8 f_53@@7) (= (select (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@19) o_41@@8 f_53@@7) (select (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| ExhaleHeap@@15) o_41@@8 f_53@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| ExhaleHeap@@15) o_41@@8 f_53@@7))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10218) (ExhaleHeap@@16 T@PolymorphicMapType_10218) (Mask@@47 T@PolymorphicMapType_10239) (o_41@@9 T@Ref) (f_53@@8 T@Field_5659_1511) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_5659_1511 Mask@@47 o_41@@9 f_53@@8) (= (select (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@20) o_41@@9 f_53@@8) (select (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| ExhaleHeap@@16) o_41@@9 f_53@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| ExhaleHeap@@16) o_41@@9 f_53@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10218) (ExhaleHeap@@17 T@PolymorphicMapType_10218) (Mask@@48 T@PolymorphicMapType_10239) (o_41@@10 T@Ref) (f_53@@9 T@Field_5623_13625) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_5623_33731 Mask@@48 o_41@@10 f_53@@9) (= (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@21) o_41@@10 f_53@@9) (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| ExhaleHeap@@17) o_41@@10 f_53@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| ExhaleHeap@@17) o_41@@10 f_53@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10218) (ExhaleHeap@@18 T@PolymorphicMapType_10218) (Mask@@49 T@PolymorphicMapType_10239) (o_41@@11 T@Ref) (f_53@@10 T@Field_10278_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_5623_53 Mask@@49 o_41@@11 f_53@@10) (= (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@22) o_41@@11 f_53@@10) (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| ExhaleHeap@@18) o_41@@11 f_53@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| ExhaleHeap@@18) o_41@@11 f_53@@10))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10218) (ExhaleHeap@@19 T@PolymorphicMapType_10218) (Mask@@50 T@PolymorphicMapType_10239) (o_41@@12 T@Ref) (f_53@@11 T@Field_5623_5660) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_5623_5660 Mask@@50 o_41@@12 f_53@@11) (= (select (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@23) o_41@@12 f_53@@11) (select (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| ExhaleHeap@@19) o_41@@12 f_53@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| ExhaleHeap@@19) o_41@@12 f_53@@11))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10218) (ExhaleHeap@@20 T@PolymorphicMapType_10218) (Mask@@51 T@PolymorphicMapType_10239) (o_41@@13 T@Ref) (f_53@@12 T@Field_10291_10292) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_5625_5626 Mask@@51 o_41@@13 f_53@@12) (= (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@24) o_41@@13 f_53@@12) (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| ExhaleHeap@@20) o_41@@13 f_53@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| ExhaleHeap@@20) o_41@@13 f_53@@12))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10218) (ExhaleHeap@@21 T@PolymorphicMapType_10218) (Mask@@52 T@PolymorphicMapType_10239) (o_41@@14 T@Ref) (f_53@@13 T@Field_14249_1511) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_5623_1511 Mask@@52 o_41@@14 f_53@@13) (= (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@25) o_41@@14 f_53@@13) (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| ExhaleHeap@@21) o_41@@14 f_53@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| ExhaleHeap@@21) o_41@@14 f_53@@13))
)))
(assert (forall ((arg1@@3 Bool) (arg2@@3 T@Ref) (arg3@@3 T@Ref) (arg4@@3 Int) ) (!  (not (IsPredicateField_5595_1206 (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3)))
 :qid |stdinbpl.195:15|
 :skolemid |24|
 :pattern ( (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3))
)))
(assert (forall ((arg1@@4 Bool) (arg2@@4 T@Ref) (arg3@@4 T@Ref) (arg4@@4 Int) ) (!  (not (IsPredicateField_5604_5605 (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4)))
 :qid |stdinbpl.199:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@4 arg2@@4 arg3@@4 arg4@@4))
)))
(assert (forall ((arg1@@5 Bool) (arg2@@5 T@Ref) (arg3@@5 T@Ref) (arg4@@5 Int) ) (! (= (|wand#sm| arg1@@5 arg2@@5 arg3@@5 arg4@@5) (WandMaskField_5604 (|wand#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5)))
 :qid |stdinbpl.203:15|
 :skolemid |26|
 :pattern ( (WandMaskField_5604 (|wand#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5)))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_13620_13625) ) (! (= (select (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_13607_53) ) (! (= (select (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_13607_5626) ) (! (= (select (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_13607_1206) ) (! (= (select (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_13636_13637) ) (! (= (select (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_5623_13625) ) (! (= (select (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_10278_53) ) (! (= (select (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_10291_10292) ) (! (= (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_14249_1511) ) (! (= (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_5623_5660) ) (! (= (select (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_17453_17458) ) (! (= (select (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_5659_53) ) (! (= (select (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_5659_5626) ) (! (= (select (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_5659_1511) ) (! (= (select (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_14716_14717) ) (! (= (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10239) (SummandMask1 T@PolymorphicMapType_10239) (SummandMask2 T@PolymorphicMapType_10239) (o_2@@59 T@Ref) (f_4@@59 T@Field_13620_13625) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10239) (SummandMask1@@0 T@PolymorphicMapType_10239) (SummandMask2@@0 T@PolymorphicMapType_10239) (o_2@@60 T@Ref) (f_4@@60 T@Field_13607_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10239) (SummandMask1@@1 T@PolymorphicMapType_10239) (SummandMask2@@1 T@PolymorphicMapType_10239) (o_2@@61 T@Ref) (f_4@@61 T@Field_13607_5626) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10239) (SummandMask1@@2 T@PolymorphicMapType_10239) (SummandMask2@@2 T@PolymorphicMapType_10239) (o_2@@62 T@Ref) (f_4@@62 T@Field_13607_1206) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10239) (SummandMask1@@3 T@PolymorphicMapType_10239) (SummandMask2@@3 T@PolymorphicMapType_10239) (o_2@@63 T@Ref) (f_4@@63 T@Field_13636_13637) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_10239) (SummandMask1@@4 T@PolymorphicMapType_10239) (SummandMask2@@4 T@PolymorphicMapType_10239) (o_2@@64 T@Ref) (f_4@@64 T@Field_5623_13625) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_10239) (SummandMask1@@5 T@PolymorphicMapType_10239) (SummandMask2@@5 T@PolymorphicMapType_10239) (o_2@@65 T@Ref) (f_4@@65 T@Field_10278_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_10239) (SummandMask1@@6 T@PolymorphicMapType_10239) (SummandMask2@@6 T@PolymorphicMapType_10239) (o_2@@66 T@Ref) (f_4@@66 T@Field_10291_10292) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_10239) (SummandMask1@@7 T@PolymorphicMapType_10239) (SummandMask2@@7 T@PolymorphicMapType_10239) (o_2@@67 T@Ref) (f_4@@67 T@Field_14249_1511) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_10239) (SummandMask1@@8 T@PolymorphicMapType_10239) (SummandMask2@@8 T@PolymorphicMapType_10239) (o_2@@68 T@Ref) (f_4@@68 T@Field_5623_5660) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_10239) (SummandMask1@@9 T@PolymorphicMapType_10239) (SummandMask2@@9 T@PolymorphicMapType_10239) (o_2@@69 T@Ref) (f_4@@69 T@Field_17453_17458) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_10239) (SummandMask1@@10 T@PolymorphicMapType_10239) (SummandMask2@@10 T@PolymorphicMapType_10239) (o_2@@70 T@Ref) (f_4@@70 T@Field_5659_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_10239) (SummandMask1@@11 T@PolymorphicMapType_10239) (SummandMask2@@11 T@PolymorphicMapType_10239) (o_2@@71 T@Ref) (f_4@@71 T@Field_5659_5626) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_10239) (SummandMask1@@12 T@PolymorphicMapType_10239) (SummandMask2@@12 T@PolymorphicMapType_10239) (o_2@@72 T@Ref) (f_4@@72 T@Field_5659_1511) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_10239) (SummandMask1@@13 T@PolymorphicMapType_10239) (SummandMask2@@13 T@PolymorphicMapType_10239) (o_2@@73 T@Ref) (f_4@@73 T@Field_14716_14717) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10218) (ExhaleHeap@@22 T@PolymorphicMapType_10218) (Mask@@53 T@PolymorphicMapType_10239) (pm_f_20@@5 T@Field_13636_13637) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_13607_5660 Mask@@53 null pm_f_20@@5) (IsPredicateField_5604_5605 pm_f_20@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_20 T@Ref) (f_53@@14 T@Field_14249_1511) ) (!  (=> (select (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@26) null (PredicateMaskField_13607 pm_f_20@@5))) o2_20 f_53@@14) (= (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@26) o2_20 f_53@@14) (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20 f_53@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20 f_53@@14))
)) (forall ((o2_20@@0 T@Ref) (f_53@@15 T@Field_10291_10292) ) (!  (=> (select (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@26) null (PredicateMaskField_13607 pm_f_20@@5))) o2_20@@0 f_53@@15) (= (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@26) o2_20@@0 f_53@@15) (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@0 f_53@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@0 f_53@@15))
))) (forall ((o2_20@@1 T@Ref) (f_53@@16 T@Field_10278_53) ) (!  (=> (select (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@26) null (PredicateMaskField_13607 pm_f_20@@5))) o2_20@@1 f_53@@16) (= (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@26) o2_20@@1 f_53@@16) (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@1 f_53@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@1 f_53@@16))
))) (forall ((o2_20@@2 T@Ref) (f_53@@17 T@Field_5623_13625) ) (!  (=> (select (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@26) null (PredicateMaskField_13607 pm_f_20@@5))) o2_20@@2 f_53@@17) (= (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@26) o2_20@@2 f_53@@17) (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@2 f_53@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@2 f_53@@17))
))) (forall ((o2_20@@3 T@Ref) (f_53@@18 T@Field_5623_5660) ) (!  (=> (select (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@26) null (PredicateMaskField_13607 pm_f_20@@5))) o2_20@@3 f_53@@18) (= (select (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@26) o2_20@@3 f_53@@18) (select (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@3 f_53@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@3 f_53@@18))
))) (forall ((o2_20@@4 T@Ref) (f_53@@19 T@Field_13607_1206) ) (!  (=> (select (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@26) null (PredicateMaskField_13607 pm_f_20@@5))) o2_20@@4 f_53@@19) (= (select (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@26) o2_20@@4 f_53@@19) (select (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@4 f_53@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@4 f_53@@19))
))) (forall ((o2_20@@5 T@Ref) (f_53@@20 T@Field_13607_5626) ) (!  (=> (select (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@26) null (PredicateMaskField_13607 pm_f_20@@5))) o2_20@@5 f_53@@20) (= (select (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@26) o2_20@@5 f_53@@20) (select (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@5 f_53@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@5 f_53@@20))
))) (forall ((o2_20@@6 T@Ref) (f_53@@21 T@Field_13607_53) ) (!  (=> (select (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@26) null (PredicateMaskField_13607 pm_f_20@@5))) o2_20@@6 f_53@@21) (= (select (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@26) o2_20@@6 f_53@@21) (select (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@6 f_53@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@6 f_53@@21))
))) (forall ((o2_20@@7 T@Ref) (f_53@@22 T@Field_13620_13625) ) (!  (=> (select (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@26) null (PredicateMaskField_13607 pm_f_20@@5))) o2_20@@7 f_53@@22) (= (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@26) o2_20@@7 f_53@@22) (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@7 f_53@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@7 f_53@@22))
))) (forall ((o2_20@@8 T@Ref) (f_53@@23 T@Field_13636_13637) ) (!  (=> (select (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@26) null (PredicateMaskField_13607 pm_f_20@@5))) o2_20@@8 f_53@@23) (= (select (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@26) o2_20@@8 f_53@@23) (select (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@8 f_53@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@8 f_53@@23))
))) (forall ((o2_20@@9 T@Ref) (f_53@@24 T@Field_5659_1511) ) (!  (=> (select (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@26) null (PredicateMaskField_13607 pm_f_20@@5))) o2_20@@9 f_53@@24) (= (select (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@26) o2_20@@9 f_53@@24) (select (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@9 f_53@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@9 f_53@@24))
))) (forall ((o2_20@@10 T@Ref) (f_53@@25 T@Field_5659_5626) ) (!  (=> (select (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@26) null (PredicateMaskField_13607 pm_f_20@@5))) o2_20@@10 f_53@@25) (= (select (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@26) o2_20@@10 f_53@@25) (select (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@10 f_53@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@10 f_53@@25))
))) (forall ((o2_20@@11 T@Ref) (f_53@@26 T@Field_5659_53) ) (!  (=> (select (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@26) null (PredicateMaskField_13607 pm_f_20@@5))) o2_20@@11 f_53@@26) (= (select (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@26) o2_20@@11 f_53@@26) (select (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@11 f_53@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@11 f_53@@26))
))) (forall ((o2_20@@12 T@Ref) (f_53@@27 T@Field_17453_17458) ) (!  (=> (select (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@26) null (PredicateMaskField_13607 pm_f_20@@5))) o2_20@@12 f_53@@27) (= (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@26) o2_20@@12 f_53@@27) (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@12 f_53@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@12 f_53@@27))
))) (forall ((o2_20@@13 T@Ref) (f_53@@28 T@Field_14716_14717) ) (!  (=> (select (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@26) null (PredicateMaskField_13607 pm_f_20@@5))) o2_20@@13 f_53@@28) (= (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@26) o2_20@@13 f_53@@28) (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@13 f_53@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| ExhaleHeap@@22) o2_20@@13 f_53@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@22 Mask@@53) (IsPredicateField_5604_5605 pm_f_20@@5))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10218) (ExhaleHeap@@23 T@PolymorphicMapType_10218) (Mask@@54 T@PolymorphicMapType_10239) (pm_f_20@@6 T@Field_14716_14717) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_5659_5660 Mask@@54 null pm_f_20@@6) (IsPredicateField_5659_5660 pm_f_20@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_20@@14 T@Ref) (f_53@@29 T@Field_14249_1511) ) (!  (=> (select (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@27) null (PredicateMaskField_5659 pm_f_20@@6))) o2_20@@14 f_53@@29) (= (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@27) o2_20@@14 f_53@@29) (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@14 f_53@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@14 f_53@@29))
)) (forall ((o2_20@@15 T@Ref) (f_53@@30 T@Field_10291_10292) ) (!  (=> (select (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@27) null (PredicateMaskField_5659 pm_f_20@@6))) o2_20@@15 f_53@@30) (= (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@27) o2_20@@15 f_53@@30) (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@15 f_53@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@15 f_53@@30))
))) (forall ((o2_20@@16 T@Ref) (f_53@@31 T@Field_10278_53) ) (!  (=> (select (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@27) null (PredicateMaskField_5659 pm_f_20@@6))) o2_20@@16 f_53@@31) (= (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@27) o2_20@@16 f_53@@31) (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@16 f_53@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@16 f_53@@31))
))) (forall ((o2_20@@17 T@Ref) (f_53@@32 T@Field_5623_13625) ) (!  (=> (select (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@27) null (PredicateMaskField_5659 pm_f_20@@6))) o2_20@@17 f_53@@32) (= (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@27) o2_20@@17 f_53@@32) (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@17 f_53@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@17 f_53@@32))
))) (forall ((o2_20@@18 T@Ref) (f_53@@33 T@Field_5623_5660) ) (!  (=> (select (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@27) null (PredicateMaskField_5659 pm_f_20@@6))) o2_20@@18 f_53@@33) (= (select (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@27) o2_20@@18 f_53@@33) (select (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@18 f_53@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@18 f_53@@33))
))) (forall ((o2_20@@19 T@Ref) (f_53@@34 T@Field_13607_1206) ) (!  (=> (select (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@27) null (PredicateMaskField_5659 pm_f_20@@6))) o2_20@@19 f_53@@34) (= (select (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@27) o2_20@@19 f_53@@34) (select (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@19 f_53@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@19 f_53@@34))
))) (forall ((o2_20@@20 T@Ref) (f_53@@35 T@Field_13607_5626) ) (!  (=> (select (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@27) null (PredicateMaskField_5659 pm_f_20@@6))) o2_20@@20 f_53@@35) (= (select (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@27) o2_20@@20 f_53@@35) (select (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@20 f_53@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@20 f_53@@35))
))) (forall ((o2_20@@21 T@Ref) (f_53@@36 T@Field_13607_53) ) (!  (=> (select (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@27) null (PredicateMaskField_5659 pm_f_20@@6))) o2_20@@21 f_53@@36) (= (select (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@27) o2_20@@21 f_53@@36) (select (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@21 f_53@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@21 f_53@@36))
))) (forall ((o2_20@@22 T@Ref) (f_53@@37 T@Field_13620_13625) ) (!  (=> (select (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@27) null (PredicateMaskField_5659 pm_f_20@@6))) o2_20@@22 f_53@@37) (= (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@27) o2_20@@22 f_53@@37) (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@22 f_53@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@22 f_53@@37))
))) (forall ((o2_20@@23 T@Ref) (f_53@@38 T@Field_13636_13637) ) (!  (=> (select (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@27) null (PredicateMaskField_5659 pm_f_20@@6))) o2_20@@23 f_53@@38) (= (select (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@27) o2_20@@23 f_53@@38) (select (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@23 f_53@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@23 f_53@@38))
))) (forall ((o2_20@@24 T@Ref) (f_53@@39 T@Field_5659_1511) ) (!  (=> (select (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@27) null (PredicateMaskField_5659 pm_f_20@@6))) o2_20@@24 f_53@@39) (= (select (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@27) o2_20@@24 f_53@@39) (select (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@24 f_53@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@24 f_53@@39))
))) (forall ((o2_20@@25 T@Ref) (f_53@@40 T@Field_5659_5626) ) (!  (=> (select (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@27) null (PredicateMaskField_5659 pm_f_20@@6))) o2_20@@25 f_53@@40) (= (select (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@27) o2_20@@25 f_53@@40) (select (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@25 f_53@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@25 f_53@@40))
))) (forall ((o2_20@@26 T@Ref) (f_53@@41 T@Field_5659_53) ) (!  (=> (select (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@27) null (PredicateMaskField_5659 pm_f_20@@6))) o2_20@@26 f_53@@41) (= (select (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@27) o2_20@@26 f_53@@41) (select (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@26 f_53@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@26 f_53@@41))
))) (forall ((o2_20@@27 T@Ref) (f_53@@42 T@Field_17453_17458) ) (!  (=> (select (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@27) null (PredicateMaskField_5659 pm_f_20@@6))) o2_20@@27 f_53@@42) (= (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@27) o2_20@@27 f_53@@42) (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@27 f_53@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@27 f_53@@42))
))) (forall ((o2_20@@28 T@Ref) (f_53@@43 T@Field_14716_14717) ) (!  (=> (select (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@27) null (PredicateMaskField_5659 pm_f_20@@6))) o2_20@@28 f_53@@43) (= (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@27) o2_20@@28 f_53@@43) (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@28 f_53@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| ExhaleHeap@@23) o2_20@@28 f_53@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@23 Mask@@54) (IsPredicateField_5659_5660 pm_f_20@@6))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_10218) (ExhaleHeap@@24 T@PolymorphicMapType_10218) (Mask@@55 T@PolymorphicMapType_10239) (pm_f_20@@7 T@Field_5623_5660) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_5623_5660 Mask@@55 null pm_f_20@@7) (IsPredicateField_5623_36251 pm_f_20@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_20@@29 T@Ref) (f_53@@44 T@Field_14249_1511) ) (!  (=> (select (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@28) null (PredicateMaskField_5623 pm_f_20@@7))) o2_20@@29 f_53@@44) (= (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@28) o2_20@@29 f_53@@44) (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@29 f_53@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@29 f_53@@44))
)) (forall ((o2_20@@30 T@Ref) (f_53@@45 T@Field_10291_10292) ) (!  (=> (select (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@28) null (PredicateMaskField_5623 pm_f_20@@7))) o2_20@@30 f_53@@45) (= (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@28) o2_20@@30 f_53@@45) (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@30 f_53@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@30 f_53@@45))
))) (forall ((o2_20@@31 T@Ref) (f_53@@46 T@Field_10278_53) ) (!  (=> (select (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@28) null (PredicateMaskField_5623 pm_f_20@@7))) o2_20@@31 f_53@@46) (= (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@28) o2_20@@31 f_53@@46) (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@31 f_53@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@31 f_53@@46))
))) (forall ((o2_20@@32 T@Ref) (f_53@@47 T@Field_5623_13625) ) (!  (=> (select (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@28) null (PredicateMaskField_5623 pm_f_20@@7))) o2_20@@32 f_53@@47) (= (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@28) o2_20@@32 f_53@@47) (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@32 f_53@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@32 f_53@@47))
))) (forall ((o2_20@@33 T@Ref) (f_53@@48 T@Field_5623_5660) ) (!  (=> (select (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@28) null (PredicateMaskField_5623 pm_f_20@@7))) o2_20@@33 f_53@@48) (= (select (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@28) o2_20@@33 f_53@@48) (select (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@33 f_53@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@33 f_53@@48))
))) (forall ((o2_20@@34 T@Ref) (f_53@@49 T@Field_13607_1206) ) (!  (=> (select (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@28) null (PredicateMaskField_5623 pm_f_20@@7))) o2_20@@34 f_53@@49) (= (select (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@28) o2_20@@34 f_53@@49) (select (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@34 f_53@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@34 f_53@@49))
))) (forall ((o2_20@@35 T@Ref) (f_53@@50 T@Field_13607_5626) ) (!  (=> (select (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@28) null (PredicateMaskField_5623 pm_f_20@@7))) o2_20@@35 f_53@@50) (= (select (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@28) o2_20@@35 f_53@@50) (select (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@35 f_53@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@35 f_53@@50))
))) (forall ((o2_20@@36 T@Ref) (f_53@@51 T@Field_13607_53) ) (!  (=> (select (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@28) null (PredicateMaskField_5623 pm_f_20@@7))) o2_20@@36 f_53@@51) (= (select (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@28) o2_20@@36 f_53@@51) (select (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@36 f_53@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@36 f_53@@51))
))) (forall ((o2_20@@37 T@Ref) (f_53@@52 T@Field_13620_13625) ) (!  (=> (select (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@28) null (PredicateMaskField_5623 pm_f_20@@7))) o2_20@@37 f_53@@52) (= (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@28) o2_20@@37 f_53@@52) (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@37 f_53@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@37 f_53@@52))
))) (forall ((o2_20@@38 T@Ref) (f_53@@53 T@Field_13636_13637) ) (!  (=> (select (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@28) null (PredicateMaskField_5623 pm_f_20@@7))) o2_20@@38 f_53@@53) (= (select (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@28) o2_20@@38 f_53@@53) (select (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@38 f_53@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@38 f_53@@53))
))) (forall ((o2_20@@39 T@Ref) (f_53@@54 T@Field_5659_1511) ) (!  (=> (select (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@28) null (PredicateMaskField_5623 pm_f_20@@7))) o2_20@@39 f_53@@54) (= (select (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@28) o2_20@@39 f_53@@54) (select (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@39 f_53@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@39 f_53@@54))
))) (forall ((o2_20@@40 T@Ref) (f_53@@55 T@Field_5659_5626) ) (!  (=> (select (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@28) null (PredicateMaskField_5623 pm_f_20@@7))) o2_20@@40 f_53@@55) (= (select (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@28) o2_20@@40 f_53@@55) (select (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@40 f_53@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@40 f_53@@55))
))) (forall ((o2_20@@41 T@Ref) (f_53@@56 T@Field_5659_53) ) (!  (=> (select (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@28) null (PredicateMaskField_5623 pm_f_20@@7))) o2_20@@41 f_53@@56) (= (select (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@28) o2_20@@41 f_53@@56) (select (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@41 f_53@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@41 f_53@@56))
))) (forall ((o2_20@@42 T@Ref) (f_53@@57 T@Field_17453_17458) ) (!  (=> (select (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@28) null (PredicateMaskField_5623 pm_f_20@@7))) o2_20@@42 f_53@@57) (= (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@28) o2_20@@42 f_53@@57) (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@42 f_53@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@42 f_53@@57))
))) (forall ((o2_20@@43 T@Ref) (f_53@@58 T@Field_14716_14717) ) (!  (=> (select (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@28) null (PredicateMaskField_5623 pm_f_20@@7))) o2_20@@43 f_53@@58) (= (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@28) o2_20@@43 f_53@@58) (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@43 f_53@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| ExhaleHeap@@24) o2_20@@43 f_53@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@24 Mask@@55) (IsPredicateField_5623_36251 pm_f_20@@7))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_10218) (ExhaleHeap@@25 T@PolymorphicMapType_10218) (Mask@@56 T@PolymorphicMapType_10239) (pm_f_20@@8 T@Field_13636_13637) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_13607_5660 Mask@@56 null pm_f_20@@8) (IsWandField_5604_5605 pm_f_20@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_20@@44 T@Ref) (f_53@@59 T@Field_14249_1511) ) (!  (=> (select (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@29) null (WandMaskField_5604 pm_f_20@@8))) o2_20@@44 f_53@@59) (= (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@29) o2_20@@44 f_53@@59) (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@44 f_53@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@44 f_53@@59))
)) (forall ((o2_20@@45 T@Ref) (f_53@@60 T@Field_10291_10292) ) (!  (=> (select (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@29) null (WandMaskField_5604 pm_f_20@@8))) o2_20@@45 f_53@@60) (= (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@29) o2_20@@45 f_53@@60) (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@45 f_53@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@45 f_53@@60))
))) (forall ((o2_20@@46 T@Ref) (f_53@@61 T@Field_10278_53) ) (!  (=> (select (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@29) null (WandMaskField_5604 pm_f_20@@8))) o2_20@@46 f_53@@61) (= (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@29) o2_20@@46 f_53@@61) (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@46 f_53@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@46 f_53@@61))
))) (forall ((o2_20@@47 T@Ref) (f_53@@62 T@Field_5623_13625) ) (!  (=> (select (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@29) null (WandMaskField_5604 pm_f_20@@8))) o2_20@@47 f_53@@62) (= (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@29) o2_20@@47 f_53@@62) (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@47 f_53@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@47 f_53@@62))
))) (forall ((o2_20@@48 T@Ref) (f_53@@63 T@Field_5623_5660) ) (!  (=> (select (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@29) null (WandMaskField_5604 pm_f_20@@8))) o2_20@@48 f_53@@63) (= (select (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@29) o2_20@@48 f_53@@63) (select (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@48 f_53@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@48 f_53@@63))
))) (forall ((o2_20@@49 T@Ref) (f_53@@64 T@Field_13607_1206) ) (!  (=> (select (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@29) null (WandMaskField_5604 pm_f_20@@8))) o2_20@@49 f_53@@64) (= (select (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@29) o2_20@@49 f_53@@64) (select (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@49 f_53@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@49 f_53@@64))
))) (forall ((o2_20@@50 T@Ref) (f_53@@65 T@Field_13607_5626) ) (!  (=> (select (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@29) null (WandMaskField_5604 pm_f_20@@8))) o2_20@@50 f_53@@65) (= (select (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@29) o2_20@@50 f_53@@65) (select (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@50 f_53@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@50 f_53@@65))
))) (forall ((o2_20@@51 T@Ref) (f_53@@66 T@Field_13607_53) ) (!  (=> (select (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@29) null (WandMaskField_5604 pm_f_20@@8))) o2_20@@51 f_53@@66) (= (select (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@29) o2_20@@51 f_53@@66) (select (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@51 f_53@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@51 f_53@@66))
))) (forall ((o2_20@@52 T@Ref) (f_53@@67 T@Field_13620_13625) ) (!  (=> (select (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@29) null (WandMaskField_5604 pm_f_20@@8))) o2_20@@52 f_53@@67) (= (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@29) o2_20@@52 f_53@@67) (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@52 f_53@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@52 f_53@@67))
))) (forall ((o2_20@@53 T@Ref) (f_53@@68 T@Field_13636_13637) ) (!  (=> (select (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@29) null (WandMaskField_5604 pm_f_20@@8))) o2_20@@53 f_53@@68) (= (select (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@29) o2_20@@53 f_53@@68) (select (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@53 f_53@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@53 f_53@@68))
))) (forall ((o2_20@@54 T@Ref) (f_53@@69 T@Field_5659_1511) ) (!  (=> (select (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@29) null (WandMaskField_5604 pm_f_20@@8))) o2_20@@54 f_53@@69) (= (select (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@29) o2_20@@54 f_53@@69) (select (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@54 f_53@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@54 f_53@@69))
))) (forall ((o2_20@@55 T@Ref) (f_53@@70 T@Field_5659_5626) ) (!  (=> (select (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@29) null (WandMaskField_5604 pm_f_20@@8))) o2_20@@55 f_53@@70) (= (select (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@29) o2_20@@55 f_53@@70) (select (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@55 f_53@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@55 f_53@@70))
))) (forall ((o2_20@@56 T@Ref) (f_53@@71 T@Field_5659_53) ) (!  (=> (select (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@29) null (WandMaskField_5604 pm_f_20@@8))) o2_20@@56 f_53@@71) (= (select (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@29) o2_20@@56 f_53@@71) (select (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@56 f_53@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@56 f_53@@71))
))) (forall ((o2_20@@57 T@Ref) (f_53@@72 T@Field_17453_17458) ) (!  (=> (select (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@29) null (WandMaskField_5604 pm_f_20@@8))) o2_20@@57 f_53@@72) (= (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@29) o2_20@@57 f_53@@72) (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@57 f_53@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@57 f_53@@72))
))) (forall ((o2_20@@58 T@Ref) (f_53@@73 T@Field_14716_14717) ) (!  (=> (select (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@29) null (WandMaskField_5604 pm_f_20@@8))) o2_20@@58 f_53@@73) (= (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@29) o2_20@@58 f_53@@73) (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@58 f_53@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| ExhaleHeap@@25) o2_20@@58 f_53@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@25 Mask@@56) (IsWandField_5604_5605 pm_f_20@@8))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_10218) (ExhaleHeap@@26 T@PolymorphicMapType_10218) (Mask@@57 T@PolymorphicMapType_10239) (pm_f_20@@9 T@Field_14716_14717) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_5659_5660 Mask@@57 null pm_f_20@@9) (IsWandField_5659_41600 pm_f_20@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_20@@59 T@Ref) (f_53@@74 T@Field_14249_1511) ) (!  (=> (select (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@30) null (WandMaskField_5659 pm_f_20@@9))) o2_20@@59 f_53@@74) (= (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@30) o2_20@@59 f_53@@74) (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@59 f_53@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@59 f_53@@74))
)) (forall ((o2_20@@60 T@Ref) (f_53@@75 T@Field_10291_10292) ) (!  (=> (select (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@30) null (WandMaskField_5659 pm_f_20@@9))) o2_20@@60 f_53@@75) (= (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@30) o2_20@@60 f_53@@75) (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@60 f_53@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@60 f_53@@75))
))) (forall ((o2_20@@61 T@Ref) (f_53@@76 T@Field_10278_53) ) (!  (=> (select (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@30) null (WandMaskField_5659 pm_f_20@@9))) o2_20@@61 f_53@@76) (= (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@30) o2_20@@61 f_53@@76) (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@61 f_53@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@61 f_53@@76))
))) (forall ((o2_20@@62 T@Ref) (f_53@@77 T@Field_5623_13625) ) (!  (=> (select (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@30) null (WandMaskField_5659 pm_f_20@@9))) o2_20@@62 f_53@@77) (= (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@30) o2_20@@62 f_53@@77) (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@62 f_53@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@62 f_53@@77))
))) (forall ((o2_20@@63 T@Ref) (f_53@@78 T@Field_5623_5660) ) (!  (=> (select (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@30) null (WandMaskField_5659 pm_f_20@@9))) o2_20@@63 f_53@@78) (= (select (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@30) o2_20@@63 f_53@@78) (select (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@63 f_53@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@63 f_53@@78))
))) (forall ((o2_20@@64 T@Ref) (f_53@@79 T@Field_13607_1206) ) (!  (=> (select (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@30) null (WandMaskField_5659 pm_f_20@@9))) o2_20@@64 f_53@@79) (= (select (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@30) o2_20@@64 f_53@@79) (select (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@64 f_53@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@64 f_53@@79))
))) (forall ((o2_20@@65 T@Ref) (f_53@@80 T@Field_13607_5626) ) (!  (=> (select (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@30) null (WandMaskField_5659 pm_f_20@@9))) o2_20@@65 f_53@@80) (= (select (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@30) o2_20@@65 f_53@@80) (select (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@65 f_53@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@65 f_53@@80))
))) (forall ((o2_20@@66 T@Ref) (f_53@@81 T@Field_13607_53) ) (!  (=> (select (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@30) null (WandMaskField_5659 pm_f_20@@9))) o2_20@@66 f_53@@81) (= (select (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@30) o2_20@@66 f_53@@81) (select (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@66 f_53@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@66 f_53@@81))
))) (forall ((o2_20@@67 T@Ref) (f_53@@82 T@Field_13620_13625) ) (!  (=> (select (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@30) null (WandMaskField_5659 pm_f_20@@9))) o2_20@@67 f_53@@82) (= (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@30) o2_20@@67 f_53@@82) (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@67 f_53@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@67 f_53@@82))
))) (forall ((o2_20@@68 T@Ref) (f_53@@83 T@Field_13636_13637) ) (!  (=> (select (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@30) null (WandMaskField_5659 pm_f_20@@9))) o2_20@@68 f_53@@83) (= (select (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@30) o2_20@@68 f_53@@83) (select (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@68 f_53@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@68 f_53@@83))
))) (forall ((o2_20@@69 T@Ref) (f_53@@84 T@Field_5659_1511) ) (!  (=> (select (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@30) null (WandMaskField_5659 pm_f_20@@9))) o2_20@@69 f_53@@84) (= (select (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@30) o2_20@@69 f_53@@84) (select (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@69 f_53@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@69 f_53@@84))
))) (forall ((o2_20@@70 T@Ref) (f_53@@85 T@Field_5659_5626) ) (!  (=> (select (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@30) null (WandMaskField_5659 pm_f_20@@9))) o2_20@@70 f_53@@85) (= (select (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@30) o2_20@@70 f_53@@85) (select (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@70 f_53@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@70 f_53@@85))
))) (forall ((o2_20@@71 T@Ref) (f_53@@86 T@Field_5659_53) ) (!  (=> (select (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@30) null (WandMaskField_5659 pm_f_20@@9))) o2_20@@71 f_53@@86) (= (select (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@30) o2_20@@71 f_53@@86) (select (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@71 f_53@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@71 f_53@@86))
))) (forall ((o2_20@@72 T@Ref) (f_53@@87 T@Field_17453_17458) ) (!  (=> (select (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@30) null (WandMaskField_5659 pm_f_20@@9))) o2_20@@72 f_53@@87) (= (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@30) o2_20@@72 f_53@@87) (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@72 f_53@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@72 f_53@@87))
))) (forall ((o2_20@@73 T@Ref) (f_53@@88 T@Field_14716_14717) ) (!  (=> (select (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@30) null (WandMaskField_5659 pm_f_20@@9))) o2_20@@73 f_53@@88) (= (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@30) o2_20@@73 f_53@@88) (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@73 f_53@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| ExhaleHeap@@26) o2_20@@73 f_53@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@26 Mask@@57) (IsWandField_5659_41600 pm_f_20@@9))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_10218) (ExhaleHeap@@27 T@PolymorphicMapType_10218) (Mask@@58 T@PolymorphicMapType_10239) (pm_f_20@@10 T@Field_5623_5660) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_5623_5660 Mask@@58 null pm_f_20@@10) (IsWandField_5623_41243 pm_f_20@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_20@@74 T@Ref) (f_53@@89 T@Field_14249_1511) ) (!  (=> (select (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@31) null (WandMaskField_5623 pm_f_20@@10))) o2_20@@74 f_53@@89) (= (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@31) o2_20@@74 f_53@@89) (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@74 f_53@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@74 f_53@@89))
)) (forall ((o2_20@@75 T@Ref) (f_53@@90 T@Field_10291_10292) ) (!  (=> (select (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@31) null (WandMaskField_5623 pm_f_20@@10))) o2_20@@75 f_53@@90) (= (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@31) o2_20@@75 f_53@@90) (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@75 f_53@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@75 f_53@@90))
))) (forall ((o2_20@@76 T@Ref) (f_53@@91 T@Field_10278_53) ) (!  (=> (select (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@31) null (WandMaskField_5623 pm_f_20@@10))) o2_20@@76 f_53@@91) (= (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@31) o2_20@@76 f_53@@91) (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@76 f_53@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@76 f_53@@91))
))) (forall ((o2_20@@77 T@Ref) (f_53@@92 T@Field_5623_13625) ) (!  (=> (select (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@31) null (WandMaskField_5623 pm_f_20@@10))) o2_20@@77 f_53@@92) (= (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@31) o2_20@@77 f_53@@92) (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@77 f_53@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@77 f_53@@92))
))) (forall ((o2_20@@78 T@Ref) (f_53@@93 T@Field_5623_5660) ) (!  (=> (select (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@31) null (WandMaskField_5623 pm_f_20@@10))) o2_20@@78 f_53@@93) (= (select (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@31) o2_20@@78 f_53@@93) (select (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@78 f_53@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@78 f_53@@93))
))) (forall ((o2_20@@79 T@Ref) (f_53@@94 T@Field_13607_1206) ) (!  (=> (select (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@31) null (WandMaskField_5623 pm_f_20@@10))) o2_20@@79 f_53@@94) (= (select (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@31) o2_20@@79 f_53@@94) (select (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@79 f_53@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@79 f_53@@94))
))) (forall ((o2_20@@80 T@Ref) (f_53@@95 T@Field_13607_5626) ) (!  (=> (select (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@31) null (WandMaskField_5623 pm_f_20@@10))) o2_20@@80 f_53@@95) (= (select (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@31) o2_20@@80 f_53@@95) (select (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@80 f_53@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@80 f_53@@95))
))) (forall ((o2_20@@81 T@Ref) (f_53@@96 T@Field_13607_53) ) (!  (=> (select (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@31) null (WandMaskField_5623 pm_f_20@@10))) o2_20@@81 f_53@@96) (= (select (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@31) o2_20@@81 f_53@@96) (select (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@81 f_53@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@81 f_53@@96))
))) (forall ((o2_20@@82 T@Ref) (f_53@@97 T@Field_13620_13625) ) (!  (=> (select (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@31) null (WandMaskField_5623 pm_f_20@@10))) o2_20@@82 f_53@@97) (= (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@31) o2_20@@82 f_53@@97) (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@82 f_53@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@82 f_53@@97))
))) (forall ((o2_20@@83 T@Ref) (f_53@@98 T@Field_13636_13637) ) (!  (=> (select (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@31) null (WandMaskField_5623 pm_f_20@@10))) o2_20@@83 f_53@@98) (= (select (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@31) o2_20@@83 f_53@@98) (select (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@83 f_53@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@83 f_53@@98))
))) (forall ((o2_20@@84 T@Ref) (f_53@@99 T@Field_5659_1511) ) (!  (=> (select (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@31) null (WandMaskField_5623 pm_f_20@@10))) o2_20@@84 f_53@@99) (= (select (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@31) o2_20@@84 f_53@@99) (select (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@84 f_53@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@84 f_53@@99))
))) (forall ((o2_20@@85 T@Ref) (f_53@@100 T@Field_5659_5626) ) (!  (=> (select (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@31) null (WandMaskField_5623 pm_f_20@@10))) o2_20@@85 f_53@@100) (= (select (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@31) o2_20@@85 f_53@@100) (select (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@85 f_53@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@85 f_53@@100))
))) (forall ((o2_20@@86 T@Ref) (f_53@@101 T@Field_5659_53) ) (!  (=> (select (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@31) null (WandMaskField_5623 pm_f_20@@10))) o2_20@@86 f_53@@101) (= (select (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@31) o2_20@@86 f_53@@101) (select (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@86 f_53@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@86 f_53@@101))
))) (forall ((o2_20@@87 T@Ref) (f_53@@102 T@Field_17453_17458) ) (!  (=> (select (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@31) null (WandMaskField_5623 pm_f_20@@10))) o2_20@@87 f_53@@102) (= (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@31) o2_20@@87 f_53@@102) (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@87 f_53@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@87 f_53@@102))
))) (forall ((o2_20@@88 T@Ref) (f_53@@103 T@Field_14716_14717) ) (!  (=> (select (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@31) null (WandMaskField_5623 pm_f_20@@10))) o2_20@@88 f_53@@103) (= (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@31) o2_20@@88 f_53@@103) (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@88 f_53@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| ExhaleHeap@@27) o2_20@@88 f_53@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@27 Mask@@58) (IsWandField_5623_41243 pm_f_20@@10))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_10218) (Mask@@59 T@PolymorphicMapType_10239) (ys@@5 T@Ref) ) (!  (=> (and (state Heap@@32 Mask@@59) (< AssumeFunctionsAbove 0)) (= (sum_rec Heap@@32 ys@@5) (+ (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@32) ys@@5 val) (ite (= (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@32) ys@@5 next) null) 0 (|sum_rec'| Heap@@32 (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@32) ys@@5 next))))))
 :qid |stdinbpl.244:15|
 :skolemid |31|
 :pattern ( (state Heap@@32 Mask@@59) (sum_rec Heap@@32 ys@@5))
 :pattern ( (state Heap@@32 Mask@@59) (|sum_rec#triggerStateless| ys@@5) (|List#trigger_5659| Heap@@32 (List ys@@5)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_10218) (Mask@@60 T@PolymorphicMapType_10239) (ys@@6 T@Ref) ) (!  (=> (state Heap@@33 Mask@@60) (= (|sum_rec'| Heap@@33 ys@@6) (|sum_rec#frame| (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@33) null (List ys@@6)) ys@@6)))
 :qid |stdinbpl.251:15|
 :skolemid |32|
 :pattern ( (state Heap@@33 Mask@@60) (|sum_rec'| Heap@@33 ys@@6))
 :pattern ( (state Heap@@33 Mask@@60) (|sum_rec#triggerStateless| ys@@6) (|List#trigger_5659| Heap@@33 (List ys@@6)))
)))
(assert (forall ((ys@@7 T@Ref) ) (! (= (getPredWandId_5659_5660 (List ys@@7)) 0)
 :qid |stdinbpl.375:15|
 :skolemid |36|
 :pattern ( (List ys@@7))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_10218) (o_15 T@Ref) (f_54 T@Field_13620_13625) (v T@PolymorphicMapType_10767) ) (! (succHeap Heap@@34 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@34) (store (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@34) o_15 f_54 v) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@34) (store (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@34) o_15 f_54 v) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@34) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_10218) (o_15@@0 T@Ref) (f_54@@0 T@Field_13636_13637) (v@@0 T@FrameType) ) (! (succHeap Heap@@35 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@35) (store (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@35) o_15@@0 f_54@@0 v@@0) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@35) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@35) (store (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@35) o_15@@0 f_54@@0 v@@0) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_10218) (o_15@@1 T@Ref) (f_54@@1 T@Field_13607_1206) (v@@1 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@36) (store (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@36) o_15@@1 f_54@@1 v@@1) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@36) (store (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@36) o_15@@1 f_54@@1 v@@1) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@36) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_10218) (o_15@@2 T@Ref) (f_54@@2 T@Field_13607_5626) (v@@2 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@37) (store (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@37) o_15@@2 f_54@@2 v@@2) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@37) (store (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@37) o_15@@2 f_54@@2 v@@2) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@37) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_10218) (o_15@@3 T@Ref) (f_54@@3 T@Field_13607_53) (v@@3 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@38) (store (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@38) o_15@@3 f_54@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@38) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@38) (store (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@38) o_15@@3 f_54@@3 v@@3)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_10218) (o_15@@4 T@Ref) (f_54@@4 T@Field_17453_17458) (v@@4 T@PolymorphicMapType_10767) ) (! (succHeap Heap@@39 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@39) (store (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@39) o_15@@4 f_54@@4 v@@4) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@39) (store (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@39) o_15@@4 f_54@@4 v@@4) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@39) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_10218) (o_15@@5 T@Ref) (f_54@@5 T@Field_14716_14717) (v@@5 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@40) (store (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@40) o_15@@5 f_54@@5 v@@5) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@40) (store (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@40) o_15@@5 f_54@@5 v@@5) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@40) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_10218) (o_15@@6 T@Ref) (f_54@@6 T@Field_5659_1511) (v@@6 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@41) (store (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@41) o_15@@6 f_54@@6 v@@6) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@41) (store (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@41) o_15@@6 f_54@@6 v@@6) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@41) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_10218) (o_15@@7 T@Ref) (f_54@@7 T@Field_5659_5626) (v@@7 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@42) (store (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@42) o_15@@7 f_54@@7 v@@7) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@42) (store (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@42) o_15@@7 f_54@@7 v@@7) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@42) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_10218) (o_15@@8 T@Ref) (f_54@@8 T@Field_5659_53) (v@@8 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@43) (store (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@43) o_15@@8 f_54@@8 v@@8) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@43) (store (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@43) o_15@@8 f_54@@8 v@@8) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@43) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_10218) (o_15@@9 T@Ref) (f_54@@9 T@Field_5623_13625) (v@@9 T@PolymorphicMapType_10767) ) (! (succHeap Heap@@44 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@44) (store (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@44) o_15@@9 f_54@@9 v@@9) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@44) (store (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@44) o_15@@9 f_54@@9 v@@9) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@44) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_10218) (o_15@@10 T@Ref) (f_54@@10 T@Field_5623_5660) (v@@10 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@45) (store (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@45) o_15@@10 f_54@@10 v@@10) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@45) (store (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@45) o_15@@10 f_54@@10 v@@10) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@45) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_10218) (o_15@@11 T@Ref) (f_54@@11 T@Field_14249_1511) (v@@11 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@46) (store (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@46) o_15@@11 f_54@@11 v@@11) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@46) (store (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@46) o_15@@11 f_54@@11 v@@11) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@46) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_10218) (o_15@@12 T@Ref) (f_54@@12 T@Field_10291_10292) (v@@12 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@47) (store (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@47) o_15@@12 f_54@@12 v@@12) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@47) (store (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@47) o_15@@12 f_54@@12 v@@12) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@47) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_10218) (o_15@@13 T@Ref) (f_54@@13 T@Field_10278_53) (v@@13 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_10218 (store (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@48) o_15@@13 f_54@@13 v@@13) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10218 (store (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@48) o_15@@13 f_54@@13 v@@13) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@48) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@48)))
)))
(assert (forall ((ys@@8 T@Ref) ) (! (= (PredicateMaskField_5659 (List ys@@8)) (|List#sm| ys@@8))
 :qid |stdinbpl.367:15|
 :skolemid |34|
 :pattern ( (PredicateMaskField_5659 (List ys@@8)))
)))
(assert (forall ((o_15@@14 T@Ref) (f_23 T@Field_10291_10292) (Heap@@49 T@PolymorphicMapType_10218) ) (!  (=> (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@49) o_15@@14 $allocated) (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@49) (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@49) o_15@@14 f_23) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@49) o_15@@14 f_23))
)))
(assert (forall ((p@@3 T@Field_13636_13637) (v_1@@2 T@FrameType) (q T@Field_13636_13637) (w@@2 T@FrameType) (r T@Field_13636_13637) (u T@FrameType) ) (!  (=> (and (InsidePredicate_13607_13607 p@@3 v_1@@2 q w@@2) (InsidePredicate_13607_13607 q w@@2 r u)) (InsidePredicate_13607_13607 p@@3 v_1@@2 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13607_13607 p@@3 v_1@@2 q w@@2) (InsidePredicate_13607_13607 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_13636_13637) (v_1@@3 T@FrameType) (q@@0 T@Field_13636_13637) (w@@3 T@FrameType) (r@@0 T@Field_5623_5660) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_13607_13607 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_13607_10278 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_13607_10278 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13607_13607 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_13607_10278 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_13636_13637) (v_1@@4 T@FrameType) (q@@1 T@Field_13636_13637) (w@@4 T@FrameType) (r@@1 T@Field_14716_14717) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_13607_13607 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_13607_5659 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_13607_5659 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13607_13607 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_13607_5659 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_13636_13637) (v_1@@5 T@FrameType) (q@@2 T@Field_5623_5660) (w@@5 T@FrameType) (r@@2 T@Field_13636_13637) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_13607_10278 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_10278_13607 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_13607_13607 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13607_10278 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_10278_13607 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_13636_13637) (v_1@@6 T@FrameType) (q@@3 T@Field_5623_5660) (w@@6 T@FrameType) (r@@3 T@Field_5623_5660) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_13607_10278 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_10278_10278 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_13607_10278 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13607_10278 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_10278_10278 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_13636_13637) (v_1@@7 T@FrameType) (q@@4 T@Field_5623_5660) (w@@7 T@FrameType) (r@@4 T@Field_14716_14717) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_13607_10278 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_10278_5659 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_13607_5659 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13607_10278 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_10278_5659 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_13636_13637) (v_1@@8 T@FrameType) (q@@5 T@Field_14716_14717) (w@@8 T@FrameType) (r@@5 T@Field_13636_13637) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_13607_5659 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_5659_13607 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_13607_13607 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13607_5659 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_5659_13607 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_13636_13637) (v_1@@9 T@FrameType) (q@@6 T@Field_14716_14717) (w@@9 T@FrameType) (r@@6 T@Field_5623_5660) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_13607_5659 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_5659_10278 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_13607_10278 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13607_5659 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_5659_10278 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_13636_13637) (v_1@@10 T@FrameType) (q@@7 T@Field_14716_14717) (w@@10 T@FrameType) (r@@7 T@Field_14716_14717) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_13607_5659 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_5659_5659 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_13607_5659 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13607_5659 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_5659_5659 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_5623_5660) (v_1@@11 T@FrameType) (q@@8 T@Field_13636_13637) (w@@11 T@FrameType) (r@@8 T@Field_13636_13637) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_10278_13607 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_13607_13607 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_10278_13607 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10278_13607 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_13607_13607 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_5623_5660) (v_1@@12 T@FrameType) (q@@9 T@Field_13636_13637) (w@@12 T@FrameType) (r@@9 T@Field_5623_5660) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_10278_13607 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_13607_10278 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_10278_10278 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10278_13607 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_13607_10278 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_5623_5660) (v_1@@13 T@FrameType) (q@@10 T@Field_13636_13637) (w@@13 T@FrameType) (r@@10 T@Field_14716_14717) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_10278_13607 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_13607_5659 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_10278_5659 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10278_13607 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_13607_5659 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_5623_5660) (v_1@@14 T@FrameType) (q@@11 T@Field_5623_5660) (w@@14 T@FrameType) (r@@11 T@Field_13636_13637) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_10278_10278 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_10278_13607 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_10278_13607 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10278_10278 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_10278_13607 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_5623_5660) (v_1@@15 T@FrameType) (q@@12 T@Field_5623_5660) (w@@15 T@FrameType) (r@@12 T@Field_5623_5660) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_10278_10278 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_10278_10278 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_10278_10278 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10278_10278 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_10278_10278 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_5623_5660) (v_1@@16 T@FrameType) (q@@13 T@Field_5623_5660) (w@@16 T@FrameType) (r@@13 T@Field_14716_14717) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_10278_10278 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_10278_5659 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_10278_5659 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10278_10278 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_10278_5659 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_5623_5660) (v_1@@17 T@FrameType) (q@@14 T@Field_14716_14717) (w@@17 T@FrameType) (r@@14 T@Field_13636_13637) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_10278_5659 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_5659_13607 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_10278_13607 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10278_5659 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_5659_13607 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_5623_5660) (v_1@@18 T@FrameType) (q@@15 T@Field_14716_14717) (w@@18 T@FrameType) (r@@15 T@Field_5623_5660) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_10278_5659 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_5659_10278 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_10278_10278 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10278_5659 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_5659_10278 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_5623_5660) (v_1@@19 T@FrameType) (q@@16 T@Field_14716_14717) (w@@19 T@FrameType) (r@@16 T@Field_14716_14717) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_10278_5659 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_5659_5659 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_10278_5659 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10278_5659 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_5659_5659 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_14716_14717) (v_1@@20 T@FrameType) (q@@17 T@Field_13636_13637) (w@@20 T@FrameType) (r@@17 T@Field_13636_13637) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_5659_13607 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_13607_13607 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_5659_13607 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5659_13607 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_13607_13607 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_14716_14717) (v_1@@21 T@FrameType) (q@@18 T@Field_13636_13637) (w@@21 T@FrameType) (r@@18 T@Field_5623_5660) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_5659_13607 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_13607_10278 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_5659_10278 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5659_13607 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_13607_10278 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_14716_14717) (v_1@@22 T@FrameType) (q@@19 T@Field_13636_13637) (w@@22 T@FrameType) (r@@19 T@Field_14716_14717) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_5659_13607 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_13607_5659 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_5659_5659 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5659_13607 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_13607_5659 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_14716_14717) (v_1@@23 T@FrameType) (q@@20 T@Field_5623_5660) (w@@23 T@FrameType) (r@@20 T@Field_13636_13637) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_5659_10278 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_10278_13607 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_5659_13607 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5659_10278 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_10278_13607 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_14716_14717) (v_1@@24 T@FrameType) (q@@21 T@Field_5623_5660) (w@@24 T@FrameType) (r@@21 T@Field_5623_5660) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_5659_10278 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_10278_10278 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_5659_10278 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5659_10278 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_10278_10278 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_14716_14717) (v_1@@25 T@FrameType) (q@@22 T@Field_5623_5660) (w@@25 T@FrameType) (r@@22 T@Field_14716_14717) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_5659_10278 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_10278_5659 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_5659_5659 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5659_10278 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_10278_5659 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_14716_14717) (v_1@@26 T@FrameType) (q@@23 T@Field_14716_14717) (w@@26 T@FrameType) (r@@23 T@Field_13636_13637) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_5659_5659 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_5659_13607 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_5659_13607 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5659_5659 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_5659_13607 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_14716_14717) (v_1@@27 T@FrameType) (q@@24 T@Field_14716_14717) (w@@27 T@FrameType) (r@@24 T@Field_5623_5660) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_5659_5659 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_5659_10278 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_5659_10278 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5659_5659 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_5659_10278 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_14716_14717) (v_1@@28 T@FrameType) (q@@25 T@Field_14716_14717) (w@@28 T@FrameType) (r@@25 T@Field_14716_14717) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_5659_5659 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_5659_5659 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_5659_5659 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5659_5659 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_5659_5659 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Result_4Mask () T@PolymorphicMapType_10239)
(declare-fun xs () T@Ref)
(declare-fun b_1_1@18 () Bool)
(declare-fun b_7@6 () Bool)
(declare-fun Result_4Heap () T@PolymorphicMapType_10218)
(declare-fun i@0 () Int)
(declare-fun Heap@11 () T@PolymorphicMapType_10218)
(declare-fun Mask@15 () T@PolymorphicMapType_10239)
(declare-fun Mask@16 () T@PolymorphicMapType_10239)
(declare-fun b_1_1@17 () Bool)
(declare-fun neededTransfer@15 () Real)
(declare-fun Used_2Mask@3 () T@PolymorphicMapType_10239)
(declare-fun initNeededTransfer@3 () Real)
(declare-fun b_8@0 () Bool)
(declare-fun b_8@1 () Bool)
(declare-fun b_8@2 () Bool)
(declare-fun Ops_1Mask@10 () T@PolymorphicMapType_10239)
(declare-fun b_8@3 () Bool)
(declare-fun Ops_1Heap@8 () T@PolymorphicMapType_10218)
(declare-fun Used_2Heap@0 () T@PolymorphicMapType_10218)
(declare-fun b_8@4 () Bool)
(declare-fun takeTransfer@7 () Real)
(declare-fun neededTransfer@13 () Real)
(declare-fun Heap@9 () T@PolymorphicMapType_10218)
(declare-fun b_7@3 () Bool)
(declare-fun Mask@13 () T@PolymorphicMapType_10239)
(declare-fun Used_2Mask@1 () T@PolymorphicMapType_10239)
(declare-fun neededTransfer@14 () Real)
(declare-fun Used_2Mask@2 () T@PolymorphicMapType_10239)
(declare-fun b_7@4 () Bool)
(declare-fun TempMask@3 () T@PolymorphicMapType_10239)
(declare-fun b_7@5 () Bool)
(declare-fun Mask@14 () T@PolymorphicMapType_10239)
(declare-fun newPMask@2 () T@PolymorphicMapType_10767)
(declare-fun Heap@10 () T@PolymorphicMapType_10218)
(declare-fun maskTransfer@7 () Real)
(declare-fun takeTransfer@6 () Real)
(declare-fun Ops_1Mask@8 () T@PolymorphicMapType_10239)
(declare-fun b_7@0 () Bool)
(declare-fun neededTransfer@12 () Real)
(declare-fun Used_2Mask@0 () T@PolymorphicMapType_10239)
(declare-fun b_7@1 () Bool)
(declare-fun TempMask@2 () T@PolymorphicMapType_10239)
(declare-fun b_7@2 () Bool)
(declare-fun Ops_1Mask@9 () T@PolymorphicMapType_10239)
(declare-fun maskTransfer@6 () Real)
(declare-fun b_7 () Bool)
(declare-fun Ops_1Heap@7 () T@PolymorphicMapType_10218)
(declare-fun Ops_1Mask@7 () T@PolymorphicMapType_10239)
(declare-fun b_1_1@16 () Bool)
(declare-fun b_1_1@15 () Bool)
(declare-fun Mask@12 () T@PolymorphicMapType_10239)
(declare-fun Heap@8 () T@PolymorphicMapType_10218)
(declare-fun Ops_1Heap@5 () T@PolymorphicMapType_10218)
(declare-fun newPMask@1 () T@PolymorphicMapType_10767)
(declare-fun Ops_1Heap@6 () T@PolymorphicMapType_10218)
(declare-fun Ops_1Heap@4 () T@PolymorphicMapType_10218)
(declare-fun Ops_1Heap@3 () T@PolymorphicMapType_10218)
(declare-fun Ops_1Heap@0 () T@PolymorphicMapType_10218)
(declare-fun Ops_1Heap@1 () T@PolymorphicMapType_10218)
(declare-fun Ops_1Heap@2 () T@PolymorphicMapType_10218)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun b_6@0 () Bool)
(declare-fun b_1_1@12 () Bool)
(declare-fun b_2_1@19 () Bool)
(declare-fun b_6@1 () Bool)
(declare-fun Result_3Heap () T@PolymorphicMapType_10218)
(declare-fun Result_3Mask () T@PolymorphicMapType_10239)
(declare-fun b_6@2 () Bool)
(declare-fun Ops_1Mask@6 () T@PolymorphicMapType_10239)
(declare-fun Used_1Mask@12 () T@PolymorphicMapType_10239)
(declare-fun b_6@3 () Bool)
(declare-fun Used_1Heap@0 () T@PolymorphicMapType_10218)
(declare-fun b_6@4 () Bool)
(declare-fun b_1_1@13 () Bool)
(declare-fun b_1_1@14 () Bool)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1511 (Int) T@FrameType)
(declare-fun FrameFragment_5626 (T@Ref) T@FrameType)
(declare-fun FrameFragment_5660 (T@FrameType) T@FrameType)
(declare-fun b_1_1@8 () Bool)
(declare-fun b_2_1@18 () Bool)
(declare-fun neededTransfer@11 () Real)
(declare-fun Used_1Mask@11 () T@PolymorphicMapType_10239)
(declare-fun arg@0 () T@Ref)
(declare-fun initNeededTransfer@2 () Real)
(declare-fun b_5@0 () Bool)
(declare-fun b_5@1 () Bool)
(declare-fun Result_2Heap () T@PolymorphicMapType_10218)
(declare-fun Result_2Mask () T@PolymorphicMapType_10239)
(declare-fun b_5@2 () Bool)
(declare-fun Ops_1Mask@5 () T@PolymorphicMapType_10239)
(declare-fun b_5@3 () Bool)
(declare-fun b_5@4 () Bool)
(declare-fun b_1_1@9 () Bool)
(declare-fun b_1_1@10 () Bool)
(declare-fun b_1_1@11 () Bool)
(declare-fun Heap@7 () T@PolymorphicMapType_10218)
(declare-fun Mask@11 () T@PolymorphicMapType_10239)
(declare-fun takeTransfer@5 () Real)
(declare-fun neededTransfer@9 () Real)
(declare-fun b_2_1@15 () Bool)
(declare-fun Mask@9 () T@PolymorphicMapType_10239)
(declare-fun Heap@5 () T@PolymorphicMapType_10218)
(declare-fun Used_1Mask@9 () T@PolymorphicMapType_10239)
(declare-fun neededTransfer@10 () Real)
(declare-fun Used_1Mask@10 () T@PolymorphicMapType_10239)
(declare-fun b_2_1@16 () Bool)
(declare-fun TempMask@1 () T@PolymorphicMapType_10239)
(declare-fun b_2_1@17 () Bool)
(declare-fun Mask@10 () T@PolymorphicMapType_10239)
(declare-fun newPMask@0 () T@PolymorphicMapType_10767)
(declare-fun Heap@6 () T@PolymorphicMapType_10218)
(declare-fun maskTransfer@5 () Real)
(declare-fun takeTransfer@4 () Real)
(declare-fun Ops_1Mask@3 () T@PolymorphicMapType_10239)
(declare-fun Used_1Mask@7 () T@PolymorphicMapType_10239)
(declare-fun b_2_1@12 () Bool)
(declare-fun neededTransfer@8 () Real)
(declare-fun Used_1Mask@8 () T@PolymorphicMapType_10239)
(declare-fun b_2_1@13 () Bool)
(declare-fun TempMask@0 () T@PolymorphicMapType_10239)
(declare-fun b_2_1@14 () Bool)
(declare-fun Ops_1Mask@4 () T@PolymorphicMapType_10239)
(declare-fun maskTransfer@4 () Real)
(declare-fun Result_1Heap () T@PolymorphicMapType_10218)
(declare-fun Result_1Mask () T@PolymorphicMapType_10239)
(declare-fun b_1_1@5 () Bool)
(declare-fun neededTransfer@7 () Real)
(declare-fun initNeededTransfer@1 () Real)
(declare-fun b_4@0 () Bool)
(declare-fun b_4@1 () Bool)
(declare-fun b_4@2 () Bool)
(declare-fun b_4@3 () Bool)
(declare-fun b_4@4 () Bool)
(declare-fun b_1_1@6 () Bool)
(declare-fun b_1_1@7 () Bool)
(declare-fun takeTransfer@3 () Real)
(declare-fun neededTransfer@5 () Real)
(declare-fun b_2_1@9 () Bool)
(declare-fun Heap@3 () T@PolymorphicMapType_10218)
(declare-fun Mask@7 () T@PolymorphicMapType_10239)
(declare-fun Used_1Mask@5 () T@PolymorphicMapType_10239)
(declare-fun neededTransfer@6 () Real)
(declare-fun Used_1Mask@6 () T@PolymorphicMapType_10239)
(declare-fun b_2_1@10 () Bool)
(declare-fun b_2_1@11 () Bool)
(declare-fun Mask@8 () T@PolymorphicMapType_10239)
(declare-fun Heap@4 () T@PolymorphicMapType_10218)
(declare-fun maskTransfer@3 () Real)
(declare-fun takeTransfer@2 () Real)
(declare-fun Used_1Mask@3 () T@PolymorphicMapType_10239)
(declare-fun b_2_1@6 () Bool)
(declare-fun Ops_1Mask@1 () T@PolymorphicMapType_10239)
(declare-fun neededTransfer@4 () Real)
(declare-fun Used_1Mask@4 () T@PolymorphicMapType_10239)
(declare-fun b_2_1@7 () Bool)
(declare-fun b_2_1@8 () Bool)
(declare-fun Ops_1Mask@2 () T@PolymorphicMapType_10239)
(declare-fun maskTransfer@2 () Real)
(declare-fun b_1_1@2 () Bool)
(declare-fun neededTransfer@3 () Real)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun b_3@0 () Bool)
(declare-fun b_3@1 () Bool)
(declare-fun ResultHeap () T@PolymorphicMapType_10218)
(declare-fun ResultMask@@14 () T@PolymorphicMapType_10239)
(declare-fun b_3@2 () Bool)
(declare-fun b_3@3 () Bool)
(declare-fun b_3@4 () Bool)
(declare-fun b_1_1@3 () Bool)
(declare-fun b_1_1@4 () Bool)
(declare-fun takeTransfer@1 () Real)
(declare-fun Mask@5 () T@PolymorphicMapType_10239)
(declare-fun Heap@1 () T@PolymorphicMapType_10218)
(declare-fun neededTransfer@1 () Real)
(declare-fun b_2_1@3 () Bool)
(declare-fun Used_1Mask@1 () T@PolymorphicMapType_10239)
(declare-fun neededTransfer@2 () Real)
(declare-fun Used_1Mask@2 () T@PolymorphicMapType_10239)
(declare-fun b_2_1@4 () Bool)
(declare-fun b_2_1@5 () Bool)
(declare-fun Mask@6 () T@PolymorphicMapType_10239)
(declare-fun Heap@2 () T@PolymorphicMapType_10218)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun b_2_1@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun Used_1Mask@0 () T@PolymorphicMapType_10239)
(declare-fun b_2_1@1 () Bool)
(declare-fun b_2_1@2 () Bool)
(declare-fun Ops_1Mask@0 () T@PolymorphicMapType_10239)
(declare-fun maskTransfer@0 () Real)
(declare-fun b_2_1 () Bool)
(declare-fun b_1_1@1 () Bool)
(declare-fun b_1_1@0 () Bool)
(declare-fun b_1_1 () Bool)
(declare-fun b_2@0 () Bool)
(declare-fun b_2 () Bool)
(declare-fun UsedHeap@0 () T@PolymorphicMapType_10218)
(declare-fun Mask@3 () T@PolymorphicMapType_10239)
(declare-fun Mask@4 () T@PolymorphicMapType_10239)
(declare-fun Mask@2 () T@PolymorphicMapType_10239)
(declare-fun Mask@1 () T@PolymorphicMapType_10239)
(declare-fun Heap@@50 () T@PolymorphicMapType_10218)
(declare-fun Heap@0 () T@PolymorphicMapType_10218)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_10239)
(set-info :boogie-vc-id t01)
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
 (=> (= (ControlFlow 0 0) 105) (let ((anon111_Then_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Result_4Mask) null (List xs)))))))
(let ((anon73_correct  (and (=> (= (ControlFlow 0 4) (- 0 5)) (=> (and (and b_1_1@18 b_1_1@18) b_7@6) (= (sum_rec Result_4Heap xs) i@0))) (=> (=> (and (and b_1_1@18 b_1_1@18) b_7@6) (= (sum_rec Result_4Heap xs) i@0)) (=> (and (state Heap@11 Mask@15) (= Mask@16 (PolymorphicMapType_10239 (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@15) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Mask@15) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Mask@15) (store (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Mask@15) null (wand true xs xs i@0) (+ (select (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Mask@15) null (wand true xs xs i@0)) FullPerm)) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Mask@15) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Mask@15) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Mask@15) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Mask@15) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Mask@15) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Mask@15) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Mask@15) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Mask@15) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Mask@15) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Mask@15) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Mask@15)))) (=> (and (and (state Heap@11 Mask@16) (state Heap@11 Mask@16)) (and (state Heap@11 Mask@16) (= (ControlFlow 0 4) (- 0 3)))) false))))))
(let ((anon110_Then_correct  (=> b_1_1@18 (and (=> (= (ControlFlow 0 10) 9) anon111_Then_correct) (=> (= (ControlFlow 0 10) 4) anon73_correct)))))
(let ((anon110_Else_correct  (=> (and (not b_1_1@18) (= (ControlFlow 0 7) 4)) anon73_correct)))
(let ((anon109_Then_correct  (=> (and (and b_1_1@18 b_1_1@18) b_7@6) (and (=> (= (ControlFlow 0 11) 10) anon110_Then_correct) (=> (= (ControlFlow 0 11) 7) anon110_Else_correct)))))
(let ((anon109_Else_correct  (=> (and (not (and (and b_1_1@18 b_1_1@18) b_7@6)) (= (ControlFlow 0 6) 4)) anon73_correct)))
(let ((anon69_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (=> (and (and b_1_1@17 b_1_1@17) b_7@6) (and (= neededTransfer@15 0.0) (= (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Used_2Mask@3) null (List xs)) initNeededTransfer@3)))) (=> (=> (and (and b_1_1@17 b_1_1@17) b_7@6) (and (= neededTransfer@15 0.0) (= (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Used_2Mask@3) null (List xs)) initNeededTransfer@3))) (=> (and (= b_8@0  (and b_1_1@17 b_7@6)) (= b_8@1  (and b_8@0 (state Result_4Heap Result_4Mask)))) (=> (and (and (= b_8@2  (and b_8@1 (sumMask Result_4Mask Ops_1Mask@10 Used_2Mask@3))) (= b_8@3  (and (and b_8@2 (IdenticalOnKnownLocations Ops_1Heap@8 Result_4Heap Ops_1Mask@10)) (IdenticalOnKnownLocations Used_2Heap@0 Result_4Heap Used_2Mask@3)))) (and (= b_8@4  (and b_8@3 (state Result_4Heap Result_4Mask))) (= b_1_1@18  (and b_1_1@17 b_8@4)))) (and (=> (= (ControlFlow 0 12) 11) anon109_Then_correct) (=> (= (ControlFlow 0 12) 6) anon109_Else_correct))))))))
(let ((anon108_Else_correct  (=> (>= 0.0 takeTransfer@7) (=> (and (= neededTransfer@15 neededTransfer@13) (= Heap@11 Heap@9)) (=> (and (and (= b_7@6 b_7@3) (= Mask@15 Mask@13)) (and (= Used_2Mask@3 Used_2Mask@1) (= (ControlFlow 0 16) 12))) anon69_correct)))))
(let ((anon108_Then_correct  (=> (> takeTransfer@7 0.0) (=> (and (= neededTransfer@14 (- neededTransfer@13 takeTransfer@7)) (= Used_2Mask@2 (PolymorphicMapType_10239 (store (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Used_2Mask@1) null (List xs) (+ (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Used_2Mask@1) null (List xs)) takeTransfer@7)) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Used_2Mask@1) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Used_2Mask@1) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Used_2Mask@1) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Used_2Mask@1) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Used_2Mask@1) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Used_2Mask@1) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Used_2Mask@1) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Used_2Mask@1) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Used_2Mask@1) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Used_2Mask@1) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Used_2Mask@1) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Used_2Mask@1) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Used_2Mask@1) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Used_2Mask@1)))) (=> (and (and (= b_7@4  (and b_7@3 (state Used_2Heap@0 Used_2Mask@2))) (= TempMask@3 (PolymorphicMapType_10239 (store (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| ZeroMask) null (List xs) FullPerm) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| ZeroMask)))) (and (= b_7@5  (and b_7@4 (IdenticalOnKnownLocations Heap@9 Used_2Heap@0 TempMask@3))) (= Mask@14 (PolymorphicMapType_10239 (store (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@13) null (List xs) (- (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@13) null (List xs)) takeTransfer@7)) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Mask@13) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Mask@13) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Mask@13) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Mask@13) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Mask@13) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Mask@13) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Mask@13) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Mask@13) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Mask@13) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Mask@13) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Mask@13) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Mask@13) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Mask@13) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Mask@13))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_42 T@Ref) (f_55 T@Field_14249_1511) ) (!  (=> (or (select (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@9) null (|wand#sm| true xs xs i@0))) o_42 f_55) (select (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@9) null (|List#sm| xs))) o_42 f_55)) (select (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| newPMask@2) o_42 f_55))
 :qid |stdinbpl.879:35|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| newPMask@2) o_42 f_55))
)) (forall ((o_42@@0 T@Ref) (f_55@@0 T@Field_10291_10292) ) (!  (=> (or (select (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@9) null (|wand#sm| true xs xs i@0))) o_42@@0 f_55@@0) (select (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@9) null (|List#sm| xs))) o_42@@0 f_55@@0)) (select (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| newPMask@2) o_42@@0 f_55@@0))
 :qid |stdinbpl.879:35|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| newPMask@2) o_42@@0 f_55@@0))
))) (forall ((o_42@@1 T@Ref) (f_55@@1 T@Field_10278_53) ) (!  (=> (or (select (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@9) null (|wand#sm| true xs xs i@0))) o_42@@1 f_55@@1) (select (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@9) null (|List#sm| xs))) o_42@@1 f_55@@1)) (select (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| newPMask@2) o_42@@1 f_55@@1))
 :qid |stdinbpl.879:35|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| newPMask@2) o_42@@1 f_55@@1))
))) (forall ((o_42@@2 T@Ref) (f_55@@2 T@Field_5623_13625) ) (!  (=> (or (select (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@9) null (|wand#sm| true xs xs i@0))) o_42@@2 f_55@@2) (select (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@9) null (|List#sm| xs))) o_42@@2 f_55@@2)) (select (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| newPMask@2) o_42@@2 f_55@@2))
 :qid |stdinbpl.879:35|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| newPMask@2) o_42@@2 f_55@@2))
))) (forall ((o_42@@3 T@Ref) (f_55@@3 T@Field_5623_5660) ) (!  (=> (or (select (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@9) null (|wand#sm| true xs xs i@0))) o_42@@3 f_55@@3) (select (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@9) null (|List#sm| xs))) o_42@@3 f_55@@3)) (select (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| newPMask@2) o_42@@3 f_55@@3))
 :qid |stdinbpl.879:35|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| newPMask@2) o_42@@3 f_55@@3))
))) (forall ((o_42@@4 T@Ref) (f_55@@4 T@Field_13607_1206) ) (!  (=> (or (select (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@9) null (|wand#sm| true xs xs i@0))) o_42@@4 f_55@@4) (select (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@9) null (|List#sm| xs))) o_42@@4 f_55@@4)) (select (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| newPMask@2) o_42@@4 f_55@@4))
 :qid |stdinbpl.879:35|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| newPMask@2) o_42@@4 f_55@@4))
))) (forall ((o_42@@5 T@Ref) (f_55@@5 T@Field_13607_5626) ) (!  (=> (or (select (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@9) null (|wand#sm| true xs xs i@0))) o_42@@5 f_55@@5) (select (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@9) null (|List#sm| xs))) o_42@@5 f_55@@5)) (select (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| newPMask@2) o_42@@5 f_55@@5))
 :qid |stdinbpl.879:35|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| newPMask@2) o_42@@5 f_55@@5))
))) (forall ((o_42@@6 T@Ref) (f_55@@6 T@Field_13607_53) ) (!  (=> (or (select (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@9) null (|wand#sm| true xs xs i@0))) o_42@@6 f_55@@6) (select (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@9) null (|List#sm| xs))) o_42@@6 f_55@@6)) (select (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| newPMask@2) o_42@@6 f_55@@6))
 :qid |stdinbpl.879:35|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| newPMask@2) o_42@@6 f_55@@6))
))) (forall ((o_42@@7 T@Ref) (f_55@@7 T@Field_13620_13625) ) (!  (=> (or (select (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@9) null (|wand#sm| true xs xs i@0))) o_42@@7 f_55@@7) (select (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@9) null (|List#sm| xs))) o_42@@7 f_55@@7)) (select (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| newPMask@2) o_42@@7 f_55@@7))
 :qid |stdinbpl.879:35|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| newPMask@2) o_42@@7 f_55@@7))
))) (forall ((o_42@@8 T@Ref) (f_55@@8 T@Field_13636_13637) ) (!  (=> (or (select (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@9) null (|wand#sm| true xs xs i@0))) o_42@@8 f_55@@8) (select (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@9) null (|List#sm| xs))) o_42@@8 f_55@@8)) (select (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| newPMask@2) o_42@@8 f_55@@8))
 :qid |stdinbpl.879:35|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| newPMask@2) o_42@@8 f_55@@8))
))) (forall ((o_42@@9 T@Ref) (f_55@@9 T@Field_5659_1511) ) (!  (=> (or (select (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@9) null (|wand#sm| true xs xs i@0))) o_42@@9 f_55@@9) (select (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@9) null (|List#sm| xs))) o_42@@9 f_55@@9)) (select (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| newPMask@2) o_42@@9 f_55@@9))
 :qid |stdinbpl.879:35|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| newPMask@2) o_42@@9 f_55@@9))
))) (forall ((o_42@@10 T@Ref) (f_55@@10 T@Field_5659_5626) ) (!  (=> (or (select (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@9) null (|wand#sm| true xs xs i@0))) o_42@@10 f_55@@10) (select (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@9) null (|List#sm| xs))) o_42@@10 f_55@@10)) (select (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| newPMask@2) o_42@@10 f_55@@10))
 :qid |stdinbpl.879:35|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| newPMask@2) o_42@@10 f_55@@10))
))) (forall ((o_42@@11 T@Ref) (f_55@@11 T@Field_5659_53) ) (!  (=> (or (select (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@9) null (|wand#sm| true xs xs i@0))) o_42@@11 f_55@@11) (select (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@9) null (|List#sm| xs))) o_42@@11 f_55@@11)) (select (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| newPMask@2) o_42@@11 f_55@@11))
 :qid |stdinbpl.879:35|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| newPMask@2) o_42@@11 f_55@@11))
))) (forall ((o_42@@12 T@Ref) (f_55@@12 T@Field_17453_17458) ) (!  (=> (or (select (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@9) null (|wand#sm| true xs xs i@0))) o_42@@12 f_55@@12) (select (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@9) null (|List#sm| xs))) o_42@@12 f_55@@12)) (select (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| newPMask@2) o_42@@12 f_55@@12))
 :qid |stdinbpl.879:35|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| newPMask@2) o_42@@12 f_55@@12))
))) (forall ((o_42@@13 T@Ref) (f_55@@13 T@Field_14716_14717) ) (!  (=> (or (select (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@9) null (|wand#sm| true xs xs i@0))) o_42@@13 f_55@@13) (select (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@9) null (|List#sm| xs))) o_42@@13 f_55@@13)) (select (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| newPMask@2) o_42@@13 f_55@@13))
 :qid |stdinbpl.879:35|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| newPMask@2) o_42@@13 f_55@@13))
))) (= Heap@10 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@9) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@9) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@9) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@9) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@9) (store (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@9) null (|wand#sm| true xs xs i@0) newPMask@2) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@9) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@9) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@9) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@9) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@9) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@9) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@9) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@9) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@9)))) (and (= neededTransfer@15 neededTransfer@14) (= Heap@11 Heap@10))) (and (and (= b_7@6 b_7@5) (= Mask@15 Mask@14)) (and (= Used_2Mask@3 Used_2Mask@2) (= (ControlFlow 0 15) 12)))) anon69_correct))))))
(let ((anon107_Else_correct  (=> (and (< maskTransfer@7 neededTransfer@13) (= takeTransfer@7 maskTransfer@7)) (and (=> (= (ControlFlow 0 18) 15) anon108_Then_correct) (=> (= (ControlFlow 0 18) 16) anon108_Else_correct)))))
(let ((anon107_Then_correct  (=> (and (<= neededTransfer@13 maskTransfer@7) (= takeTransfer@7 neededTransfer@13)) (and (=> (= (ControlFlow 0 17) 15) anon108_Then_correct) (=> (= (ControlFlow 0 17) 16) anon108_Else_correct)))))
(let ((anon106_Then_correct  (=> (and (and (and (and (and b_1_1@17 b_1_1@17) b_7@3) true) (> neededTransfer@13 0.0)) (= maskTransfer@7 (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@13) null (List xs)))) (and (=> (= (ControlFlow 0 19) 17) anon107_Then_correct) (=> (= (ControlFlow 0 19) 18) anon107_Else_correct)))))
(let ((anon106_Else_correct  (=> (not (and (and (and (and b_1_1@17 b_1_1@17) b_7@3) true) (> neededTransfer@13 0.0))) (=> (and (= neededTransfer@15 neededTransfer@13) (= Heap@11 Heap@9)) (=> (and (and (= b_7@6 b_7@3) (= Mask@15 Mask@13)) (and (= Used_2Mask@3 Used_2Mask@1) (= (ControlFlow 0 14) 12))) anon69_correct)))))
(let ((anon105_Else_correct  (=> (>= 0.0 takeTransfer@6) (=> (and (and (= Used_2Mask@1 ZeroMask) (= Ops_1Mask@10 Ops_1Mask@8)) (and (= b_7@3 b_7@0) (= neededTransfer@13 FullPerm))) (and (=> (= (ControlFlow 0 22) 19) anon106_Then_correct) (=> (= (ControlFlow 0 22) 14) anon106_Else_correct))))))
(let ((anon105_Then_correct  (=> (> takeTransfer@6 0.0) (=> (and (= neededTransfer@12 (- FullPerm takeTransfer@6)) (= Used_2Mask@0 (PolymorphicMapType_10239 (store (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| ZeroMask) null (List xs) (+ (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| ZeroMask) null (List xs)) takeTransfer@6)) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| ZeroMask)))) (=> (and (and (and (= b_7@1  (and b_7@0 (state Used_2Heap@0 Used_2Mask@0))) (= TempMask@2 (PolymorphicMapType_10239 (store (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| ZeroMask) null (List xs) FullPerm) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| ZeroMask)))) (and (= b_7@2  (and b_7@1 (IdenticalOnKnownLocations Ops_1Heap@8 Used_2Heap@0 TempMask@2))) (= Ops_1Mask@9 (PolymorphicMapType_10239 (store (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Ops_1Mask@8) null (List xs) (- (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Ops_1Mask@8) null (List xs)) takeTransfer@6)) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Ops_1Mask@8) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Ops_1Mask@8) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Ops_1Mask@8) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Ops_1Mask@8) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Ops_1Mask@8) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Ops_1Mask@8) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Ops_1Mask@8) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Ops_1Mask@8) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Ops_1Mask@8) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Ops_1Mask@8) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Ops_1Mask@8) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Ops_1Mask@8) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Ops_1Mask@8) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Ops_1Mask@8))))) (and (and (= Used_2Mask@1 Used_2Mask@0) (= Ops_1Mask@10 Ops_1Mask@9)) (and (= b_7@3 b_7@2) (= neededTransfer@13 neededTransfer@12)))) (and (=> (= (ControlFlow 0 21) 19) anon106_Then_correct) (=> (= (ControlFlow 0 21) 14) anon106_Else_correct)))))))
(let ((anon104_Else_correct  (=> (and (< maskTransfer@6 FullPerm) (= takeTransfer@6 maskTransfer@6)) (and (=> (= (ControlFlow 0 24) 21) anon105_Then_correct) (=> (= (ControlFlow 0 24) 22) anon105_Else_correct)))))
(let ((anon104_Then_correct  (=> (and (<= FullPerm maskTransfer@6) (= takeTransfer@6 FullPerm)) (and (=> (= (ControlFlow 0 23) 21) anon105_Then_correct) (=> (= (ControlFlow 0 23) 22) anon105_Else_correct)))))
(let ((anon103_Then_correct  (=> (and (and (and (and (and b_1_1@17 b_1_1@17) b_7@0) true) (> FullPerm 0.0)) (= maskTransfer@6 (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Ops_1Mask@8) null (List xs)))) (and (=> (= (ControlFlow 0 25) 23) anon104_Then_correct) (=> (= (ControlFlow 0 25) 24) anon104_Else_correct)))))
(let ((anon103_Else_correct  (=> (not (and (and (and (and b_1_1@17 b_1_1@17) b_7@0) true) (> FullPerm 0.0))) (=> (and (and (= Used_2Mask@1 ZeroMask) (= Ops_1Mask@10 Ops_1Mask@8)) (and (= b_7@3 b_7@0) (= neededTransfer@13 FullPerm))) (and (=> (= (ControlFlow 0 20) 19) anon106_Then_correct) (=> (= (ControlFlow 0 20) 14) anon106_Else_correct))))))
(let ((anon57_correct  (=> (and (= b_7@0  (and b_7 (state Used_2Heap@0 ZeroMask))) (= initNeededTransfer@3 (+ (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| ZeroMask) null (List xs)) FullPerm))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 26) 25) anon103_Then_correct) (=> (= (ControlFlow 0 26) 20) anon103_Else_correct)))))))
(let ((anon56_correct  (=> (and (and (and (state Ops_1Heap@7 Ops_1Mask@7) (= b_1_1@16  (and b_1_1@15 (state Ops_1Heap@7 Ops_1Mask@7)))) (and (= Ops_1Heap@8 Ops_1Heap@7) (= Mask@13 Mask@12))) (and (and (= Ops_1Mask@8 Ops_1Mask@7) (= b_1_1@17 b_1_1@16)) (and (= Heap@9 Heap@8) (= (ControlFlow 0 29) 26)))) anon57_correct)))
(let ((anon102_Else_correct  (=> (= (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@5) xs next) null) (=> (and (= Ops_1Heap@7 Ops_1Heap@5) (= (ControlFlow 0 31) 29)) anon56_correct))))
(let ((anon102_Then_correct  (=> (not (= (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@5) xs next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_40 T@Ref) (f_52 T@Field_14249_1511) ) (!  (=> (or (select (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| xs))) o_40 f_52) (select (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@5) xs next)))) o_40 f_52)) (select (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| newPMask@1) o_40 f_52))
 :qid |stdinbpl.818:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| newPMask@1) o_40 f_52))
)) (forall ((o_40@@0 T@Ref) (f_52@@0 T@Field_10291_10292) ) (!  (=> (or (select (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| xs))) o_40@@0 f_52@@0) (select (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@5) xs next)))) o_40@@0 f_52@@0)) (select (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| newPMask@1) o_40@@0 f_52@@0))
 :qid |stdinbpl.818:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| newPMask@1) o_40@@0 f_52@@0))
))) (forall ((o_40@@1 T@Ref) (f_52@@1 T@Field_10278_53) ) (!  (=> (or (select (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| xs))) o_40@@1 f_52@@1) (select (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@5) xs next)))) o_40@@1 f_52@@1)) (select (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| newPMask@1) o_40@@1 f_52@@1))
 :qid |stdinbpl.818:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| newPMask@1) o_40@@1 f_52@@1))
))) (forall ((o_40@@2 T@Ref) (f_52@@2 T@Field_5623_13625) ) (!  (=> (or (select (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| xs))) o_40@@2 f_52@@2) (select (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@5) xs next)))) o_40@@2 f_52@@2)) (select (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| newPMask@1) o_40@@2 f_52@@2))
 :qid |stdinbpl.818:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| newPMask@1) o_40@@2 f_52@@2))
))) (forall ((o_40@@3 T@Ref) (f_52@@3 T@Field_5623_5660) ) (!  (=> (or (select (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| xs))) o_40@@3 f_52@@3) (select (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@5) xs next)))) o_40@@3 f_52@@3)) (select (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| newPMask@1) o_40@@3 f_52@@3))
 :qid |stdinbpl.818:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| newPMask@1) o_40@@3 f_52@@3))
))) (forall ((o_40@@4 T@Ref) (f_52@@4 T@Field_13607_1206) ) (!  (=> (or (select (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| xs))) o_40@@4 f_52@@4) (select (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@5) xs next)))) o_40@@4 f_52@@4)) (select (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| newPMask@1) o_40@@4 f_52@@4))
 :qid |stdinbpl.818:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| newPMask@1) o_40@@4 f_52@@4))
))) (forall ((o_40@@5 T@Ref) (f_52@@5 T@Field_13607_5626) ) (!  (=> (or (select (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| xs))) o_40@@5 f_52@@5) (select (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@5) xs next)))) o_40@@5 f_52@@5)) (select (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| newPMask@1) o_40@@5 f_52@@5))
 :qid |stdinbpl.818:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| newPMask@1) o_40@@5 f_52@@5))
))) (forall ((o_40@@6 T@Ref) (f_52@@6 T@Field_13607_53) ) (!  (=> (or (select (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| xs))) o_40@@6 f_52@@6) (select (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@5) xs next)))) o_40@@6 f_52@@6)) (select (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| newPMask@1) o_40@@6 f_52@@6))
 :qid |stdinbpl.818:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| newPMask@1) o_40@@6 f_52@@6))
))) (forall ((o_40@@7 T@Ref) (f_52@@7 T@Field_13620_13625) ) (!  (=> (or (select (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| xs))) o_40@@7 f_52@@7) (select (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@5) xs next)))) o_40@@7 f_52@@7)) (select (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| newPMask@1) o_40@@7 f_52@@7))
 :qid |stdinbpl.818:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| newPMask@1) o_40@@7 f_52@@7))
))) (forall ((o_40@@8 T@Ref) (f_52@@8 T@Field_13636_13637) ) (!  (=> (or (select (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| xs))) o_40@@8 f_52@@8) (select (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@5) xs next)))) o_40@@8 f_52@@8)) (select (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| newPMask@1) o_40@@8 f_52@@8))
 :qid |stdinbpl.818:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| newPMask@1) o_40@@8 f_52@@8))
))) (forall ((o_40@@9 T@Ref) (f_52@@9 T@Field_5659_1511) ) (!  (=> (or (select (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| xs))) o_40@@9 f_52@@9) (select (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@5) xs next)))) o_40@@9 f_52@@9)) (select (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| newPMask@1) o_40@@9 f_52@@9))
 :qid |stdinbpl.818:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| newPMask@1) o_40@@9 f_52@@9))
))) (forall ((o_40@@10 T@Ref) (f_52@@10 T@Field_5659_5626) ) (!  (=> (or (select (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| xs))) o_40@@10 f_52@@10) (select (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@5) xs next)))) o_40@@10 f_52@@10)) (select (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| newPMask@1) o_40@@10 f_52@@10))
 :qid |stdinbpl.818:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| newPMask@1) o_40@@10 f_52@@10))
))) (forall ((o_40@@11 T@Ref) (f_52@@11 T@Field_5659_53) ) (!  (=> (or (select (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| xs))) o_40@@11 f_52@@11) (select (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@5) xs next)))) o_40@@11 f_52@@11)) (select (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| newPMask@1) o_40@@11 f_52@@11))
 :qid |stdinbpl.818:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| newPMask@1) o_40@@11 f_52@@11))
))) (forall ((o_40@@12 T@Ref) (f_52@@12 T@Field_17453_17458) ) (!  (=> (or (select (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| xs))) o_40@@12 f_52@@12) (select (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@5) xs next)))) o_40@@12 f_52@@12)) (select (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| newPMask@1) o_40@@12 f_52@@12))
 :qid |stdinbpl.818:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| newPMask@1) o_40@@12 f_52@@12))
))) (forall ((o_40@@13 T@Ref) (f_52@@13 T@Field_14716_14717) ) (!  (=> (or (select (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| xs))) o_40@@13 f_52@@13) (select (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@5) xs next)))) o_40@@13 f_52@@13)) (select (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| newPMask@1) o_40@@13 f_52@@13))
 :qid |stdinbpl.818:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| newPMask@1) o_40@@13 f_52@@13))
))) (= Ops_1Heap@6 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Ops_1Heap@5) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@5) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Ops_1Heap@5) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Ops_1Heap@5) (store (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@5) null (|List#sm| xs) newPMask@1) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Ops_1Heap@5) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Ops_1Heap@5) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Ops_1Heap@5) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Ops_1Heap@5) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Ops_1Heap@5) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Ops_1Heap@5) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Ops_1Heap@5) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Ops_1Heap@5) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Ops_1Heap@5) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Ops_1Heap@5)))) (and (= Ops_1Heap@7 Ops_1Heap@6) (= (ControlFlow 0 30) 29))) anon56_correct))))
(let ((anon54_correct  (=> (and (= Ops_1Heap@4 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Ops_1Heap@3) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@3) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Ops_1Heap@3) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Ops_1Heap@3) (store (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@3) null (|List#sm| xs) (PolymorphicMapType_10767 (store (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@3) null (|List#sm| xs))) xs val true) (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@3) null (|List#sm| xs))) (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@3) null (|List#sm| xs))) (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@3) null (|List#sm| xs))) (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@3) null (|List#sm| xs))) (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@3) null (|List#sm| xs))) (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@3) null (|List#sm| xs))) (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@3) null (|List#sm| xs))) (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@3) null (|List#sm| xs))) (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@3) null (|List#sm| xs))) (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@3) null (|List#sm| xs))) (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@3) null (|List#sm| xs))) (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@3) null (|List#sm| xs))) (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@3) null (|List#sm| xs))) (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@3) null (|List#sm| xs))))) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Ops_1Heap@3) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Ops_1Heap@3) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Ops_1Heap@3) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Ops_1Heap@3) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Ops_1Heap@3) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Ops_1Heap@3) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Ops_1Heap@3) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Ops_1Heap@3) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Ops_1Heap@3) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Ops_1Heap@3))) (= Ops_1Heap@5 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Ops_1Heap@4) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@4) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Ops_1Heap@4) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Ops_1Heap@4) (store (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@4) null (|List#sm| xs) (PolymorphicMapType_10767 (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@4) null (|List#sm| xs))) (store (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@4) null (|List#sm| xs))) xs next true) (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@4) null (|List#sm| xs))) (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@4) null (|List#sm| xs))) (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@4) null (|List#sm| xs))) (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@4) null (|List#sm| xs))) (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@4) null (|List#sm| xs))) (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@4) null (|List#sm| xs))) (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@4) null (|List#sm| xs))) (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@4) null (|List#sm| xs))) (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@4) null (|List#sm| xs))) (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@4) null (|List#sm| xs))) (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@4) null (|List#sm| xs))) (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@4) null (|List#sm| xs))) (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@4) null (|List#sm| xs))))) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Ops_1Heap@4) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Ops_1Heap@4) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Ops_1Heap@4) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Ops_1Heap@4) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Ops_1Heap@4) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Ops_1Heap@4) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Ops_1Heap@4) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Ops_1Heap@4) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Ops_1Heap@4) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Ops_1Heap@4)))) (and (=> (= (ControlFlow 0 32) 30) anon102_Then_correct) (=> (= (ControlFlow 0 32) 31) anon102_Else_correct)))))
(let ((anon101_Else_correct  (=> (HasDirectPerm_5659_5660 Ops_1Mask@7 null (List xs)) (=> (and (= Ops_1Heap@3 Ops_1Heap@0) (= (ControlFlow 0 34) 32)) anon54_correct))))
(let ((anon101_Then_correct  (=> (not (HasDirectPerm_5659_5660 Ops_1Mask@7 null (List xs))) (=> (and (and (= Ops_1Heap@1 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Ops_1Heap@0) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@0) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Ops_1Heap@0) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Ops_1Heap@0) (store (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@0) null (|List#sm| xs) ZeroPMask) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Ops_1Heap@0) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Ops_1Heap@0) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Ops_1Heap@0) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Ops_1Heap@0) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Ops_1Heap@0) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Ops_1Heap@0) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Ops_1Heap@0) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Ops_1Heap@0) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Ops_1Heap@0) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Ops_1Heap@0))) (= Ops_1Heap@2 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Ops_1Heap@1) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@1) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Ops_1Heap@1) (store (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Ops_1Heap@1) null (List xs) freshVersion@0) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Ops_1Heap@1) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Ops_1Heap@1) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Ops_1Heap@1) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Ops_1Heap@1) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Ops_1Heap@1) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Ops_1Heap@1) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Ops_1Heap@1) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Ops_1Heap@1) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Ops_1Heap@1) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Ops_1Heap@1) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Ops_1Heap@1)))) (and (= Ops_1Heap@3 Ops_1Heap@2) (= (ControlFlow 0 33) 32))) anon54_correct))))
(let ((anon52_correct  (=> (= b_6@0  (and b_1_1@12 b_2_1@19)) (=> (and (= b_6@1  (and b_6@0 (state Result_3Heap Result_3Mask))) (= b_6@2  (and b_6@1 (sumMask Result_3Mask Ops_1Mask@6 Used_1Mask@12)))) (=> (and (and (and (= b_6@3  (and (and b_6@2 (IdenticalOnKnownLocations Ops_1Heap@0 Result_3Heap Ops_1Mask@6)) (IdenticalOnKnownLocations Used_1Heap@0 Result_3Heap Used_1Mask@12))) (= b_6@4  (and b_6@3 (state Result_3Heap Result_3Mask)))) (and (= b_1_1@13  (and b_1_1@12 b_6@4)) (= Ops_1Mask@7 (PolymorphicMapType_10239 (store (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Ops_1Mask@6) null (List xs) (+ (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Ops_1Mask@6) null (List xs)) FullPerm)) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Ops_1Mask@6) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Ops_1Mask@6) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Ops_1Mask@6) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Ops_1Mask@6) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Ops_1Mask@6) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Ops_1Mask@6) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Ops_1Mask@6) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Ops_1Mask@6) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Ops_1Mask@6) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Ops_1Mask@6) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Ops_1Mask@6) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Ops_1Mask@6) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Ops_1Mask@6) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Ops_1Mask@6))))) (and (and (= b_1_1@14  (and b_1_1@13 (state Ops_1Heap@0 Ops_1Mask@7))) (= b_1_1@15  (and b_1_1@14 (state Ops_1Heap@0 Ops_1Mask@7)))) (and (|List#trigger_5659| Ops_1Heap@0 (List xs)) (= (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Ops_1Heap@0) null (List xs)) (CombineFrames (FrameFragment_1511 (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Ops_1Heap@0) xs val)) (CombineFrames (FrameFragment_5626 (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@0) xs next)) (FrameFragment_5660 (ite (not (= (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@0) xs next) null)) (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Ops_1Heap@0) null (List (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@0) xs next))) EmptyFrame)))))))) (and (=> (= (ControlFlow 0 35) 33) anon101_Then_correct) (=> (= (ControlFlow 0 35) 34) anon101_Else_correct)))))))
(let ((anon51_correct  (and (=> (= (ControlFlow 0 37) (- 0 38)) (=> (and b_1_1@8 b_2_1@18) (and (= neededTransfer@11 0.0) (= (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Used_1Mask@11) null (List arg@0)) initNeededTransfer@2)))) (=> (=> (and b_1_1@8 b_2_1@18) (and (= neededTransfer@11 0.0) (= (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Used_1Mask@11) null (List arg@0)) initNeededTransfer@2))) (=> (= b_5@0  (and b_1_1@8 b_2_1@18)) (=> (and (= b_5@1  (and b_5@0 (state Result_2Heap Result_2Mask))) (= b_5@2  (and b_5@1 (sumMask Result_2Mask Ops_1Mask@5 Used_1Mask@11)))) (=> (and (and (= b_5@3  (and (and b_5@2 (IdenticalOnKnownLocations Ops_1Heap@0 Result_2Heap Ops_1Mask@5)) (IdenticalOnKnownLocations Used_1Heap@0 Result_2Heap Used_1Mask@11))) (= b_5@4  (and b_5@3 (state Result_2Heap Result_2Mask)))) (and (= b_1_1@9  (and b_1_1@8 b_5@4)) (= b_1_1@10  (and b_1_1@9 b_2_1@18)))) (=> (and (and (and (= b_1_1@11  (and b_1_1@10 (= Used_1Heap@0 Ops_1Heap@0))) (= Used_1Mask@12 Used_1Mask@11)) (and (= Heap@8 Heap@7) (= Mask@12 Mask@11))) (and (and (= b_1_1@12 b_1_1@11) (= b_2_1@19 b_2_1@18)) (and (= Ops_1Mask@6 Ops_1Mask@5) (= (ControlFlow 0 37) 35)))) anon52_correct))))))))
(let ((anon100_Else_correct  (=> (>= 0.0 takeTransfer@5) (=> (and (= neededTransfer@11 neededTransfer@9) (= b_2_1@18 b_2_1@15)) (=> (and (and (= Mask@11 Mask@9) (= Heap@7 Heap@5)) (and (= Used_1Mask@11 Used_1Mask@9) (= (ControlFlow 0 41) 37))) anon51_correct)))))
(let ((anon100_Then_correct  (=> (> takeTransfer@5 0.0) (=> (and (= neededTransfer@10 (- neededTransfer@9 takeTransfer@5)) (= Used_1Mask@10 (PolymorphicMapType_10239 (store (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Used_1Mask@9) null (List arg@0) (+ (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Used_1Mask@9) null (List arg@0)) takeTransfer@5)) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Used_1Mask@9) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Used_1Mask@9) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Used_1Mask@9) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Used_1Mask@9) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Used_1Mask@9) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Used_1Mask@9) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Used_1Mask@9) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Used_1Mask@9) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Used_1Mask@9) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Used_1Mask@9) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Used_1Mask@9) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Used_1Mask@9) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Used_1Mask@9) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Used_1Mask@9)))) (=> (and (and (= b_2_1@16  (and b_2_1@15 (state Used_1Heap@0 Used_1Mask@10))) (= TempMask@1 (PolymorphicMapType_10239 (store (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| ZeroMask) null (List arg@0) FullPerm) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| ZeroMask)))) (and (= b_2_1@17  (and b_2_1@16 (IdenticalOnKnownLocations Heap@5 Used_1Heap@0 TempMask@1))) (= Mask@10 (PolymorphicMapType_10239 (store (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@9) null (List arg@0) (- (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@9) null (List arg@0)) takeTransfer@5)) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Mask@9) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Mask@9) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Mask@9) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Mask@9) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Mask@9) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Mask@9) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Mask@9) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Mask@9) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Mask@9) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Mask@9) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Mask@9) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Mask@9) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Mask@9) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Mask@9))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_6 T@Ref) (f_12 T@Field_14249_1511) ) (!  (=> (or (select (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@5) null (|wand#sm| true xs xs i@0))) o_6 f_12) (select (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@5) xs next)))) o_6 f_12)) (select (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| newPMask@0) o_6 f_12))
 :qid |stdinbpl.774:41|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| newPMask@0) o_6 f_12))
)) (forall ((o_6@@0 T@Ref) (f_12@@0 T@Field_10291_10292) ) (!  (=> (or (select (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@5) null (|wand#sm| true xs xs i@0))) o_6@@0 f_12@@0) (select (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@5) xs next)))) o_6@@0 f_12@@0)) (select (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| newPMask@0) o_6@@0 f_12@@0))
 :qid |stdinbpl.774:41|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| newPMask@0) o_6@@0 f_12@@0))
))) (forall ((o_6@@1 T@Ref) (f_12@@1 T@Field_10278_53) ) (!  (=> (or (select (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@5) null (|wand#sm| true xs xs i@0))) o_6@@1 f_12@@1) (select (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@5) xs next)))) o_6@@1 f_12@@1)) (select (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| newPMask@0) o_6@@1 f_12@@1))
 :qid |stdinbpl.774:41|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| newPMask@0) o_6@@1 f_12@@1))
))) (forall ((o_6@@2 T@Ref) (f_12@@2 T@Field_5623_13625) ) (!  (=> (or (select (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@5) null (|wand#sm| true xs xs i@0))) o_6@@2 f_12@@2) (select (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@5) xs next)))) o_6@@2 f_12@@2)) (select (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| newPMask@0) o_6@@2 f_12@@2))
 :qid |stdinbpl.774:41|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| newPMask@0) o_6@@2 f_12@@2))
))) (forall ((o_6@@3 T@Ref) (f_12@@3 T@Field_5623_5660) ) (!  (=> (or (select (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@5) null (|wand#sm| true xs xs i@0))) o_6@@3 f_12@@3) (select (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@5) xs next)))) o_6@@3 f_12@@3)) (select (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| newPMask@0) o_6@@3 f_12@@3))
 :qid |stdinbpl.774:41|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| newPMask@0) o_6@@3 f_12@@3))
))) (forall ((o_6@@4 T@Ref) (f_12@@4 T@Field_13607_1206) ) (!  (=> (or (select (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@5) null (|wand#sm| true xs xs i@0))) o_6@@4 f_12@@4) (select (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@5) xs next)))) o_6@@4 f_12@@4)) (select (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| newPMask@0) o_6@@4 f_12@@4))
 :qid |stdinbpl.774:41|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| newPMask@0) o_6@@4 f_12@@4))
))) (forall ((o_6@@5 T@Ref) (f_12@@5 T@Field_13607_5626) ) (!  (=> (or (select (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@5) null (|wand#sm| true xs xs i@0))) o_6@@5 f_12@@5) (select (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@5) xs next)))) o_6@@5 f_12@@5)) (select (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| newPMask@0) o_6@@5 f_12@@5))
 :qid |stdinbpl.774:41|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| newPMask@0) o_6@@5 f_12@@5))
))) (forall ((o_6@@6 T@Ref) (f_12@@6 T@Field_13607_53) ) (!  (=> (or (select (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@5) null (|wand#sm| true xs xs i@0))) o_6@@6 f_12@@6) (select (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@5) xs next)))) o_6@@6 f_12@@6)) (select (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| newPMask@0) o_6@@6 f_12@@6))
 :qid |stdinbpl.774:41|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| newPMask@0) o_6@@6 f_12@@6))
))) (forall ((o_6@@7 T@Ref) (f_12@@7 T@Field_13620_13625) ) (!  (=> (or (select (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@5) null (|wand#sm| true xs xs i@0))) o_6@@7 f_12@@7) (select (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@5) xs next)))) o_6@@7 f_12@@7)) (select (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| newPMask@0) o_6@@7 f_12@@7))
 :qid |stdinbpl.774:41|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| newPMask@0) o_6@@7 f_12@@7))
))) (forall ((o_6@@8 T@Ref) (f_12@@8 T@Field_13636_13637) ) (!  (=> (or (select (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@5) null (|wand#sm| true xs xs i@0))) o_6@@8 f_12@@8) (select (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@5) xs next)))) o_6@@8 f_12@@8)) (select (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| newPMask@0) o_6@@8 f_12@@8))
 :qid |stdinbpl.774:41|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| newPMask@0) o_6@@8 f_12@@8))
))) (forall ((o_6@@9 T@Ref) (f_12@@9 T@Field_5659_1511) ) (!  (=> (or (select (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@5) null (|wand#sm| true xs xs i@0))) o_6@@9 f_12@@9) (select (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@5) xs next)))) o_6@@9 f_12@@9)) (select (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| newPMask@0) o_6@@9 f_12@@9))
 :qid |stdinbpl.774:41|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| newPMask@0) o_6@@9 f_12@@9))
))) (forall ((o_6@@10 T@Ref) (f_12@@10 T@Field_5659_5626) ) (!  (=> (or (select (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@5) null (|wand#sm| true xs xs i@0))) o_6@@10 f_12@@10) (select (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@5) xs next)))) o_6@@10 f_12@@10)) (select (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| newPMask@0) o_6@@10 f_12@@10))
 :qid |stdinbpl.774:41|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| newPMask@0) o_6@@10 f_12@@10))
))) (forall ((o_6@@11 T@Ref) (f_12@@11 T@Field_5659_53) ) (!  (=> (or (select (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@5) null (|wand#sm| true xs xs i@0))) o_6@@11 f_12@@11) (select (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@5) xs next)))) o_6@@11 f_12@@11)) (select (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| newPMask@0) o_6@@11 f_12@@11))
 :qid |stdinbpl.774:41|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| newPMask@0) o_6@@11 f_12@@11))
))) (forall ((o_6@@12 T@Ref) (f_12@@12 T@Field_17453_17458) ) (!  (=> (or (select (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@5) null (|wand#sm| true xs xs i@0))) o_6@@12 f_12@@12) (select (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@5) xs next)))) o_6@@12 f_12@@12)) (select (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| newPMask@0) o_6@@12 f_12@@12))
 :qid |stdinbpl.774:41|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| newPMask@0) o_6@@12 f_12@@12))
))) (forall ((o_6@@13 T@Ref) (f_12@@13 T@Field_14716_14717) ) (!  (=> (or (select (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@5) null (|wand#sm| true xs xs i@0))) o_6@@13 f_12@@13) (select (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@5) null (|List#sm| (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@5) xs next)))) o_6@@13 f_12@@13)) (select (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| newPMask@0) o_6@@13 f_12@@13))
 :qid |stdinbpl.774:41|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| newPMask@0) o_6@@13 f_12@@13))
))) (= Heap@6 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@5) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@5) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@5) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@5) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@5) (store (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@5) null (|wand#sm| true xs xs i@0) newPMask@0) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@5) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@5) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@5) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@5) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@5) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@5) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@5) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@5) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@5)))) (and (= neededTransfer@11 neededTransfer@10) (= b_2_1@18 b_2_1@17))) (and (and (= Mask@11 Mask@10) (= Heap@7 Heap@6)) (and (= Used_1Mask@11 Used_1Mask@10) (= (ControlFlow 0 40) 37)))) anon51_correct))))))
(let ((anon99_Else_correct  (=> (and (< maskTransfer@5 neededTransfer@9) (= takeTransfer@5 maskTransfer@5)) (and (=> (= (ControlFlow 0 43) 40) anon100_Then_correct) (=> (= (ControlFlow 0 43) 41) anon100_Else_correct)))))
(let ((anon99_Then_correct  (=> (and (<= neededTransfer@9 maskTransfer@5) (= takeTransfer@5 neededTransfer@9)) (and (=> (= (ControlFlow 0 42) 40) anon100_Then_correct) (=> (= (ControlFlow 0 42) 41) anon100_Else_correct)))))
(let ((anon98_Then_correct  (=> (and (and (and (and b_1_1@8 b_2_1@15) true) (> neededTransfer@9 0.0)) (= maskTransfer@5 (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@9) null (List arg@0)))) (and (=> (= (ControlFlow 0 44) 42) anon99_Then_correct) (=> (= (ControlFlow 0 44) 43) anon99_Else_correct)))))
(let ((anon98_Else_correct  (=> (not (and (and (and b_1_1@8 b_2_1@15) true) (> neededTransfer@9 0.0))) (=> (and (= neededTransfer@11 neededTransfer@9) (= b_2_1@18 b_2_1@15)) (=> (and (and (= Mask@11 Mask@9) (= Heap@7 Heap@5)) (and (= Used_1Mask@11 Used_1Mask@9) (= (ControlFlow 0 39) 37))) anon51_correct)))))
(let ((anon97_Else_correct  (=> (>= 0.0 takeTransfer@4) (=> (and (and (= Ops_1Mask@5 Ops_1Mask@3) (= Used_1Mask@9 Used_1Mask@7)) (and (= b_2_1@15 b_2_1@12) (= neededTransfer@9 FullPerm))) (and (=> (= (ControlFlow 0 47) 44) anon98_Then_correct) (=> (= (ControlFlow 0 47) 39) anon98_Else_correct))))))
(let ((anon97_Then_correct  (=> (> takeTransfer@4 0.0) (=> (and (= neededTransfer@8 (- FullPerm takeTransfer@4)) (= Used_1Mask@8 (PolymorphicMapType_10239 (store (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Used_1Mask@7) null (List arg@0) (+ (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Used_1Mask@7) null (List arg@0)) takeTransfer@4)) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Used_1Mask@7) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Used_1Mask@7) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Used_1Mask@7) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Used_1Mask@7) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Used_1Mask@7) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Used_1Mask@7) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Used_1Mask@7) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Used_1Mask@7) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Used_1Mask@7) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Used_1Mask@7) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Used_1Mask@7) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Used_1Mask@7) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Used_1Mask@7) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Used_1Mask@7)))) (=> (and (and (and (= b_2_1@13  (and b_2_1@12 (state Used_1Heap@0 Used_1Mask@8))) (= TempMask@0 (PolymorphicMapType_10239 (store (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| ZeroMask) null (List arg@0) FullPerm) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| ZeroMask)))) (and (= b_2_1@14  (and b_2_1@13 (IdenticalOnKnownLocations Ops_1Heap@0 Used_1Heap@0 TempMask@0))) (= Ops_1Mask@4 (PolymorphicMapType_10239 (store (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Ops_1Mask@3) null (List arg@0) (- (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Ops_1Mask@3) null (List arg@0)) takeTransfer@4)) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Ops_1Mask@3) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Ops_1Mask@3) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Ops_1Mask@3) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Ops_1Mask@3) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Ops_1Mask@3) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Ops_1Mask@3) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Ops_1Mask@3) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Ops_1Mask@3) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Ops_1Mask@3) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Ops_1Mask@3) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Ops_1Mask@3) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Ops_1Mask@3) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Ops_1Mask@3) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Ops_1Mask@3))))) (and (and (= Ops_1Mask@5 Ops_1Mask@4) (= Used_1Mask@9 Used_1Mask@8)) (and (= b_2_1@15 b_2_1@14) (= neededTransfer@9 neededTransfer@8)))) (and (=> (= (ControlFlow 0 46) 44) anon98_Then_correct) (=> (= (ControlFlow 0 46) 39) anon98_Else_correct)))))))
(let ((anon96_Else_correct  (=> (and (< maskTransfer@4 FullPerm) (= takeTransfer@4 maskTransfer@4)) (and (=> (= (ControlFlow 0 49) 46) anon97_Then_correct) (=> (= (ControlFlow 0 49) 47) anon97_Else_correct)))))
(let ((anon96_Then_correct  (=> (and (<= FullPerm maskTransfer@4) (= takeTransfer@4 FullPerm)) (and (=> (= (ControlFlow 0 48) 46) anon97_Then_correct) (=> (= (ControlFlow 0 48) 47) anon97_Else_correct)))))
(let ((anon95_Then_correct  (=> (and (and (and (and b_1_1@8 b_2_1@12) true) (> FullPerm 0.0)) (= maskTransfer@4 (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Ops_1Mask@3) null (List arg@0)))) (and (=> (= (ControlFlow 0 50) 48) anon96_Then_correct) (=> (= (ControlFlow 0 50) 49) anon96_Else_correct)))))
(let ((anon95_Else_correct  (=> (not (and (and (and b_1_1@8 b_2_1@12) true) (> FullPerm 0.0))) (=> (and (and (= Ops_1Mask@5 Ops_1Mask@3) (= Used_1Mask@9 Used_1Mask@7)) (and (= b_2_1@15 b_2_1@12) (= neededTransfer@9 FullPerm))) (and (=> (= (ControlFlow 0 45) 44) anon98_Then_correct) (=> (= (ControlFlow 0 45) 39) anon98_Else_correct))))))
(let ((anon39_correct  (=> (and (= arg@0 (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Result_1Heap) xs next)) (= initNeededTransfer@2 (+ (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Used_1Mask@7) null (List arg@0)) FullPerm))) (and (=> (= (ControlFlow 0 51) (- 0 52)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 51) 50) anon95_Then_correct) (=> (= (ControlFlow 0 51) 45) anon95_Else_correct)))))))
(let ((anon94_Else_correct  (=> (and (not b_1_1@8) (= (ControlFlow 0 56) 51)) anon39_correct)))
(let ((anon94_Then_correct  (=> b_1_1@8 (and (=> (= (ControlFlow 0 54) (- 0 55)) (HasDirectPerm_5625_5626 Result_1Mask xs next)) (=> (HasDirectPerm_5625_5626 Result_1Mask xs next) (=> (= (ControlFlow 0 54) 51) anon39_correct))))))
(let ((anon93_Then_correct  (=> (and b_1_1@8 b_2_1@12) (and (=> (= (ControlFlow 0 57) 54) anon94_Then_correct) (=> (= (ControlFlow 0 57) 56) anon94_Else_correct)))))
(let ((anon93_Else_correct  (=> (and (not (and b_1_1@8 b_2_1@12)) (= (ControlFlow 0 53) 51)) anon39_correct)))
(let ((anon92_Then_correct  (=> (=> b_1_1@8 (not (= (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Result_1Heap) xs next) null))) (and (=> (= (ControlFlow 0 58) 57) anon93_Then_correct) (=> (= (ControlFlow 0 58) 53) anon93_Else_correct)))))
(let ((anon92_Else_correct  (=> (and (and (and (not (=> b_1_1@8 (not (= (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Result_1Heap) xs next) null)))) (= Used_1Mask@12 Used_1Mask@7)) (and (= Heap@8 Heap@5) (= Mask@12 Mask@9))) (and (and (= b_1_1@12 b_1_1@8) (= b_2_1@19 b_2_1@12)) (and (= Ops_1Mask@6 Ops_1Mask@3) (= (ControlFlow 0 36) 35)))) anon52_correct)))
(let ((anon35_correct  (and (=> (= (ControlFlow 0 59) (- 0 60)) (=> (and b_1_1@5 b_2_1@12) (and (= neededTransfer@7 0.0) (= (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Used_1Mask@7) xs next) initNeededTransfer@1)))) (=> (=> (and b_1_1@5 b_2_1@12) (and (= neededTransfer@7 0.0) (= (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Used_1Mask@7) xs next) initNeededTransfer@1))) (=> (and (and (and (= b_4@0  (and b_1_1@5 b_2_1@12)) (= b_4@1  (and b_4@0 (state Result_1Heap Result_1Mask)))) (and (= b_4@2  (and b_4@1 (sumMask Result_1Mask Ops_1Mask@3 Used_1Mask@7))) (= b_4@3  (and (and b_4@2 (IdenticalOnKnownLocations Ops_1Heap@0 Result_1Heap Ops_1Mask@3)) (IdenticalOnKnownLocations Used_1Heap@0 Result_1Heap Used_1Mask@7))))) (and (and (= b_4@4  (and b_4@3 (state Result_1Heap Result_1Mask))) (= b_1_1@6  (and b_1_1@5 b_4@4))) (and (= b_1_1@7  (and b_1_1@6 b_2_1@12)) (= b_1_1@8  (and b_1_1@7 (= Used_1Heap@0 Ops_1Heap@0)))))) (and (=> (= (ControlFlow 0 59) 58) anon92_Then_correct) (=> (= (ControlFlow 0 59) 36) anon92_Else_correct)))))))
(let ((anon91_Else_correct  (=> (>= 0.0 takeTransfer@3) (=> (and (= neededTransfer@7 neededTransfer@5) (= b_2_1@12 b_2_1@9)) (=> (and (and (= Heap@5 Heap@3) (= Mask@9 Mask@7)) (and (= Used_1Mask@7 Used_1Mask@5) (= (ControlFlow 0 63) 59))) anon35_correct)))))
(let ((anon91_Then_correct  (=> (> takeTransfer@3 0.0) (=> (and (and (= neededTransfer@6 (- neededTransfer@5 takeTransfer@3)) (= Used_1Mask@6 (PolymorphicMapType_10239 (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Used_1Mask@5) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Used_1Mask@5) (store (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Used_1Mask@5) xs next (+ (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Used_1Mask@5) xs next) takeTransfer@3)) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Used_1Mask@5) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Used_1Mask@5) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Used_1Mask@5) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Used_1Mask@5) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Used_1Mask@5) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Used_1Mask@5) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Used_1Mask@5) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Used_1Mask@5) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Used_1Mask@5) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Used_1Mask@5) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Used_1Mask@5) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Used_1Mask@5)))) (and (= b_2_1@10  (and b_2_1@9 (state Used_1Heap@0 Used_1Mask@6))) (= b_2_1@11  (and b_2_1@10 (= (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@3) xs next) (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Used_1Heap@0) xs next)))))) (=> (and (and (and (= Mask@8 (PolymorphicMapType_10239 (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@7) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Mask@7) (store (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Mask@7) xs next (- (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Mask@7) xs next) takeTransfer@3)) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Mask@7) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Mask@7) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Mask@7) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Mask@7) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Mask@7) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Mask@7) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Mask@7) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Mask@7) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Mask@7) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Mask@7) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Mask@7) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Mask@7))) (= Heap@4 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@3) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@3) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@3) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@3) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@3) (store (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@3) null (|wand#sm| true xs xs i@0) (PolymorphicMapType_10767 (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@3) null (|wand#sm| true xs xs i@0))) (store (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@3) null (|wand#sm| true xs xs i@0))) xs next true) (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@3) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@3) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@3) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@3) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@3) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@3) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@3) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@3) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@3) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@3) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@3) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@3) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@3) null (|wand#sm| true xs xs i@0))))) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@3) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@3) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@3) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@3) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@3) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@3) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@3) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@3) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@3)))) (and (= neededTransfer@7 neededTransfer@6) (= b_2_1@12 b_2_1@11))) (and (and (= Heap@5 Heap@4) (= Mask@9 Mask@8)) (and (= Used_1Mask@7 Used_1Mask@6) (= (ControlFlow 0 62) 59)))) anon35_correct)))))
(let ((anon90_Else_correct  (=> (and (< maskTransfer@3 neededTransfer@5) (= takeTransfer@3 maskTransfer@3)) (and (=> (= (ControlFlow 0 65) 62) anon91_Then_correct) (=> (= (ControlFlow 0 65) 63) anon91_Else_correct)))))
(let ((anon90_Then_correct  (=> (and (<= neededTransfer@5 maskTransfer@3) (= takeTransfer@3 neededTransfer@5)) (and (=> (= (ControlFlow 0 64) 62) anon91_Then_correct) (=> (= (ControlFlow 0 64) 63) anon91_Else_correct)))))
(let ((anon89_Then_correct  (=> (and (and (and (and b_1_1@5 b_2_1@9) true) (> neededTransfer@5 0.0)) (= maskTransfer@3 (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Mask@7) xs next))) (and (=> (= (ControlFlow 0 66) 64) anon90_Then_correct) (=> (= (ControlFlow 0 66) 65) anon90_Else_correct)))))
(let ((anon89_Else_correct  (=> (not (and (and (and b_1_1@5 b_2_1@9) true) (> neededTransfer@5 0.0))) (=> (and (= neededTransfer@7 neededTransfer@5) (= b_2_1@12 b_2_1@9)) (=> (and (and (= Heap@5 Heap@3) (= Mask@9 Mask@7)) (and (= Used_1Mask@7 Used_1Mask@5) (= (ControlFlow 0 61) 59))) anon35_correct)))))
(let ((anon88_Else_correct  (=> (>= 0.0 takeTransfer@2) (=> (and (and (= Used_1Mask@5 Used_1Mask@3) (= b_2_1@9 b_2_1@6)) (and (= neededTransfer@5 FullPerm) (= Ops_1Mask@3 Ops_1Mask@1))) (and (=> (= (ControlFlow 0 69) 66) anon89_Then_correct) (=> (= (ControlFlow 0 69) 61) anon89_Else_correct))))))
(let ((anon88_Then_correct  (=> (and (> takeTransfer@2 0.0) (= neededTransfer@4 (- FullPerm takeTransfer@2))) (=> (and (and (and (= Used_1Mask@4 (PolymorphicMapType_10239 (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Used_1Mask@3) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Used_1Mask@3) (store (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Used_1Mask@3) xs next (+ (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Used_1Mask@3) xs next) takeTransfer@2)) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Used_1Mask@3) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Used_1Mask@3) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Used_1Mask@3) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Used_1Mask@3) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Used_1Mask@3) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Used_1Mask@3) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Used_1Mask@3) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Used_1Mask@3) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Used_1Mask@3) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Used_1Mask@3) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Used_1Mask@3) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Used_1Mask@3))) (= b_2_1@7  (and b_2_1@6 (state Used_1Heap@0 Used_1Mask@4)))) (and (= b_2_1@8  (and b_2_1@7 (= (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Ops_1Heap@0) xs next) (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Used_1Heap@0) xs next)))) (= Ops_1Mask@2 (PolymorphicMapType_10239 (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Ops_1Mask@1) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Ops_1Mask@1) (store (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Ops_1Mask@1) xs next (- (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Ops_1Mask@1) xs next) takeTransfer@2)) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Ops_1Mask@1) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Ops_1Mask@1) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Ops_1Mask@1) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Ops_1Mask@1) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Ops_1Mask@1) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Ops_1Mask@1) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Ops_1Mask@1) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Ops_1Mask@1) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Ops_1Mask@1) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Ops_1Mask@1) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Ops_1Mask@1) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Ops_1Mask@1))))) (and (and (= Used_1Mask@5 Used_1Mask@4) (= b_2_1@9 b_2_1@8)) (and (= neededTransfer@5 neededTransfer@4) (= Ops_1Mask@3 Ops_1Mask@2)))) (and (=> (= (ControlFlow 0 68) 66) anon89_Then_correct) (=> (= (ControlFlow 0 68) 61) anon89_Else_correct))))))
(let ((anon87_Else_correct  (=> (and (< maskTransfer@2 FullPerm) (= takeTransfer@2 maskTransfer@2)) (and (=> (= (ControlFlow 0 71) 68) anon88_Then_correct) (=> (= (ControlFlow 0 71) 69) anon88_Else_correct)))))
(let ((anon87_Then_correct  (=> (and (<= FullPerm maskTransfer@2) (= takeTransfer@2 FullPerm)) (and (=> (= (ControlFlow 0 70) 68) anon88_Then_correct) (=> (= (ControlFlow 0 70) 69) anon88_Else_correct)))))
(let ((anon86_Then_correct  (=> (and (and (and (and b_1_1@5 b_2_1@6) true) (> FullPerm 0.0)) (= maskTransfer@2 (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Ops_1Mask@1) xs next))) (and (=> (= (ControlFlow 0 72) 70) anon87_Then_correct) (=> (= (ControlFlow 0 72) 71) anon87_Else_correct)))))
(let ((anon86_Else_correct  (=> (not (and (and (and b_1_1@5 b_2_1@6) true) (> FullPerm 0.0))) (=> (and (and (= Used_1Mask@5 Used_1Mask@3) (= b_2_1@9 b_2_1@6)) (and (= neededTransfer@5 FullPerm) (= Ops_1Mask@3 Ops_1Mask@1))) (and (=> (= (ControlFlow 0 67) 66) anon89_Then_correct) (=> (= (ControlFlow 0 67) 61) anon89_Else_correct))))))
(let ((anon23_correct  (and (=> (= (ControlFlow 0 73) (- 0 75)) (=> (and b_1_1@2 b_2_1@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Used_1Mask@3) xs val) initNeededTransfer@0)))) (=> (=> (and b_1_1@2 b_2_1@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Used_1Mask@3) xs val) initNeededTransfer@0))) (=> (= b_3@0  (and b_1_1@2 b_2_1@6)) (=> (and (and (and (= b_3@1  (and b_3@0 (state ResultHeap ResultMask@@14))) (= b_3@2  (and b_3@1 (sumMask ResultMask@@14 Ops_1Mask@1 Used_1Mask@3)))) (and (= b_3@3  (and (and b_3@2 (IdenticalOnKnownLocations Ops_1Heap@0 ResultHeap Ops_1Mask@1)) (IdenticalOnKnownLocations Used_1Heap@0 ResultHeap Used_1Mask@3))) (= b_3@4  (and b_3@3 (state ResultHeap ResultMask@@14))))) (and (and (= b_1_1@3  (and b_1_1@2 b_3@4)) (= b_1_1@4  (and b_1_1@3 b_2_1@6))) (and (= b_1_1@5  (and b_1_1@4 (= Used_1Heap@0 Ops_1Heap@0))) (= initNeededTransfer@1 (+ (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Used_1Mask@3) xs next) FullPerm))))) (and (=> (= (ControlFlow 0 73) (- 0 74)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 73) 72) anon86_Then_correct) (=> (= (ControlFlow 0 73) 67) anon86_Else_correct))))))))))
(let ((anon85_Else_correct  (=> (>= 0.0 takeTransfer@1) (=> (and (= Mask@7 Mask@5) (= Heap@3 Heap@1)) (=> (and (and (= neededTransfer@3 neededTransfer@1) (= b_2_1@6 b_2_1@3)) (and (= Used_1Mask@3 Used_1Mask@1) (= (ControlFlow 0 78) 73))) anon23_correct)))))
(let ((anon85_Then_correct  (=> (> takeTransfer@1 0.0) (=> (and (and (= neededTransfer@2 (- neededTransfer@1 takeTransfer@1)) (= Used_1Mask@2 (PolymorphicMapType_10239 (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Used_1Mask@1) (store (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Used_1Mask@1) xs val (+ (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Used_1Mask@1) xs val) takeTransfer@1)) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Used_1Mask@1) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Used_1Mask@1) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Used_1Mask@1) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Used_1Mask@1) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Used_1Mask@1) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Used_1Mask@1) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Used_1Mask@1) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Used_1Mask@1) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Used_1Mask@1) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Used_1Mask@1) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Used_1Mask@1) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Used_1Mask@1) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Used_1Mask@1)))) (and (= b_2_1@4  (and b_2_1@3 (state Used_1Heap@0 Used_1Mask@2))) (= b_2_1@5  (and b_2_1@4 (= (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@1) xs val) (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Used_1Heap@0) xs val)))))) (=> (and (and (and (= Mask@6 (PolymorphicMapType_10239 (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@5) (store (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Mask@5) xs val (- (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Mask@5) xs val) takeTransfer@1)) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Mask@5) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Mask@5) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Mask@5) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Mask@5) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Mask@5) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Mask@5) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Mask@5) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Mask@5) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Mask@5) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Mask@5) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Mask@5) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Mask@5) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Mask@5))) (= Heap@2 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@1) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@1) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@1) (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@1) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@1) (store (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@1) null (|wand#sm| true xs xs i@0) (PolymorphicMapType_10767 (store (|PolymorphicMapType_10767_5623_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@1) null (|wand#sm| true xs xs i@0))) xs val true) (|PolymorphicMapType_10767_5625_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@1) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_5623_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@1) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_5623_37854#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@1) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_5623_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@1) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_13607_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@1) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_13607_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@1) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_13607_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@1) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_13607_38902#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@1) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_13607_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@1) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_14716_1511#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@1) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_14716_5626#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@1) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_14716_53#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@1) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_14716_39950#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@1) null (|wand#sm| true xs xs i@0))) (|PolymorphicMapType_10767_14716_13637#PolymorphicMapType_10767| (select (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@1) null (|wand#sm| true xs xs i@0))))) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@1) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@1) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@1) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@1) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@1) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@1) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@1) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@1) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@1)))) (and (= Mask@7 Mask@6) (= Heap@3 Heap@2))) (and (and (= neededTransfer@3 neededTransfer@2) (= b_2_1@6 b_2_1@5)) (and (= Used_1Mask@3 Used_1Mask@2) (= (ControlFlow 0 77) 73)))) anon23_correct)))))
(let ((anon84_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@1) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 80) 77) anon85_Then_correct) (=> (= (ControlFlow 0 80) 78) anon85_Else_correct)))))
(let ((anon84_Then_correct  (=> (and (<= neededTransfer@1 maskTransfer@1) (= takeTransfer@1 neededTransfer@1)) (and (=> (= (ControlFlow 0 79) 77) anon85_Then_correct) (=> (= (ControlFlow 0 79) 78) anon85_Else_correct)))))
(let ((anon83_Then_correct  (=> (and (and (and (and b_1_1@2 b_2_1@3) true) (> neededTransfer@1 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Mask@5) xs val))) (and (=> (= (ControlFlow 0 81) 79) anon84_Then_correct) (=> (= (ControlFlow 0 81) 80) anon84_Else_correct)))))
(let ((anon83_Else_correct  (=> (not (and (and (and b_1_1@2 b_2_1@3) true) (> neededTransfer@1 0.0))) (=> (and (= Mask@7 Mask@5) (= Heap@3 Heap@1)) (=> (and (and (= neededTransfer@3 neededTransfer@1) (= b_2_1@6 b_2_1@3)) (and (= Used_1Mask@3 Used_1Mask@1) (= (ControlFlow 0 76) 73))) anon23_correct)))))
(let ((anon82_Else_correct  (=> (>= 0.0 takeTransfer@0) (=> (and (and (= Ops_1Mask@1 ZeroMask) (= Used_1Mask@1 ZeroMask)) (and (= b_2_1@3 b_2_1@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 84) 81) anon83_Then_correct) (=> (= (ControlFlow 0 84) 76) anon83_Else_correct))))))
(let ((anon82_Then_correct  (=> (and (> takeTransfer@0 0.0) (= neededTransfer@0 (- FullPerm takeTransfer@0))) (=> (and (and (and (= Used_1Mask@0 (PolymorphicMapType_10239 (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| ZeroMask) (store (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| ZeroMask) xs val (+ (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| ZeroMask) xs val) takeTransfer@0)) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| ZeroMask))) (= b_2_1@1  (and b_2_1@0 (state Used_1Heap@0 Used_1Mask@0)))) (and (= b_2_1@2  (and b_2_1@1 (= (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Ops_1Heap@0) xs val) (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Used_1Heap@0) xs val)))) (= Ops_1Mask@0 (PolymorphicMapType_10239 (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| ZeroMask) (store (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| ZeroMask) xs val (- (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| ZeroMask) xs val) takeTransfer@0)) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| ZeroMask))))) (and (and (= Ops_1Mask@1 Ops_1Mask@0) (= Used_1Mask@1 Used_1Mask@0)) (and (= b_2_1@3 b_2_1@2) (= neededTransfer@1 neededTransfer@0)))) (and (=> (= (ControlFlow 0 83) 81) anon83_Then_correct) (=> (= (ControlFlow 0 83) 76) anon83_Else_correct))))))
(let ((anon81_Else_correct  (=> (and (< maskTransfer@0 FullPerm) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 86) 83) anon82_Then_correct) (=> (= (ControlFlow 0 86) 84) anon82_Else_correct)))))
(let ((anon81_Then_correct  (=> (and (<= FullPerm maskTransfer@0) (= takeTransfer@0 FullPerm)) (and (=> (= (ControlFlow 0 85) 83) anon82_Then_correct) (=> (= (ControlFlow 0 85) 84) anon82_Else_correct)))))
(let ((anon80_Then_correct  (=> (and (and (and (and b_1_1@2 b_2_1@0) true) (> FullPerm 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| ZeroMask) xs val))) (and (=> (= (ControlFlow 0 87) 85) anon81_Then_correct) (=> (= (ControlFlow 0 87) 86) anon81_Else_correct)))))
(let ((anon80_Else_correct  (=> (not (and (and (and b_1_1@2 b_2_1@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_1Mask@1 ZeroMask) (= Used_1Mask@1 ZeroMask)) (and (= b_2_1@3 b_2_1@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 82) 81) anon83_Then_correct) (=> (= (ControlFlow 0 82) 76) anon83_Else_correct))))))
(let ((anon79_Then_correct  (=> b_1_1@2 (=> (and (= b_2_1@0  (and b_2_1 (state Used_1Heap@0 ZeroMask))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| ZeroMask) xs val) FullPerm))) (and (=> (= (ControlFlow 0 88) (- 0 89)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 88) 87) anon80_Then_correct) (=> (= (ControlFlow 0 88) 82) anon80_Else_correct))))))))
(let ((anon79_Else_correct  (=> (not b_1_1@2) (=> (and (= Ops_1Heap@8 Ops_1Heap@0) (= Mask@13 Mask@5)) (=> (and (and (= Ops_1Mask@8 ZeroMask) (= b_1_1@17 b_1_1@2)) (and (= Heap@9 Heap@1) (= (ControlFlow 0 28) 26))) anon57_correct)))))
(let ((anon10_correct  (=> (and (= b_1_1@1  (and b_1_1@0 (state Ops_1Heap@0 ZeroMask))) (= b_1_1@2  (and b_1_1@1 (state Ops_1Heap@0 ZeroMask)))) (and (=> (= (ControlFlow 0 90) 88) anon79_Then_correct) (=> (= (ControlFlow 0 90) 28) anon79_Else_correct)))))
(let ((anon78_Else_correct  (=> (and (not b_1_1@0) (= (ControlFlow 0 92) 90)) anon10_correct)))
(let ((anon78_Then_correct  (=> (and b_1_1@0 (= (ControlFlow 0 91) 90)) anon10_correct)))
(let ((anon8_correct  (=> (and (and (state Heap@1 Mask@5) (state Heap@1 Mask@5)) (and (= b_1_1@0  (and b_1_1 (state Ops_1Heap@0 ZeroMask))) (= b_2@0  (and b_2 (state UsedHeap@0 ZeroMask))))) (and (=> (= (ControlFlow 0 93) 91) anon78_Then_correct) (=> (= (ControlFlow 0 93) 92) anon78_Else_correct)))))
(let ((anon77_Else_correct  (=> (= (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@1) xs next) null) (=> (and (= Mask@5 Mask@3) (= (ControlFlow 0 95) 93)) anon8_correct))))
(let ((anon77_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@1) xs next) null)) (= Mask@4 (PolymorphicMapType_10239 (store (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@3) null (List (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@1) xs next)) (+ (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@3) null (List (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@1) xs next))) FullPerm)) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Mask@3) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Mask@3) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Mask@3) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Mask@3) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Mask@3) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Mask@3) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Mask@3) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Mask@3) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Mask@3) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Mask@3) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Mask@3) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Mask@3) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Mask@3) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Mask@3)))) (=> (and (and (InsidePredicate_5659_5659 (List xs) (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@1) null (List xs)) (List (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@1) xs next)) (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@1) null (List (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@1) xs next)))) (state Heap@1 Mask@4)) (and (= Mask@5 Mask@4) (= (ControlFlow 0 94) 93))) anon8_correct))))
(let ((anon6_correct  (=> (and (not (= xs null)) (= Mask@2 (PolymorphicMapType_10239 (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@1) (store (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Mask@1) xs val (+ (select (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Mask@1) xs val) FullPerm)) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Mask@1) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Mask@1) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Mask@1) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Mask@1) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Mask@1) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Mask@1) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Mask@1) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Mask@1) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Mask@1) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Mask@1) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Mask@1) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Mask@1) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Mask@1)))) (=> (and (and (state Heap@1 Mask@2) (not (= xs null))) (and (= Mask@3 (PolymorphicMapType_10239 (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@2) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Mask@2) (store (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Mask@2) xs next (+ (select (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Mask@2) xs next) FullPerm)) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Mask@2) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Mask@2) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Mask@2) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Mask@2) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Mask@2) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Mask@2) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Mask@2) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Mask@2) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Mask@2) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Mask@2) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Mask@2) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Mask@2))) (state Heap@1 Mask@3))) (and (=> (= (ControlFlow 0 96) 94) anon77_Then_correct) (=> (= (ControlFlow 0 96) 95) anon77_Else_correct))))))
(let ((anon76_Else_correct  (=> (HasDirectPerm_5659_5660 Mask@1 null (List xs)) (=> (and (= Heap@1 Heap@@50) (= (ControlFlow 0 98) 96)) anon6_correct))))
(let ((anon76_Then_correct  (=> (and (and (not (HasDirectPerm_5659_5660 Mask@1 null (List xs))) (= Heap@0 (PolymorphicMapType_10218 (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@50) (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@50) (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@50) (store (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@50) null (List xs) newVersion@0) (|PolymorphicMapType_10218_5663_17545#PolymorphicMapType_10218| Heap@@50) (|PolymorphicMapType_10218_5599_23918#PolymorphicMapType_10218| Heap@@50) (|PolymorphicMapType_10218_5623_5660#PolymorphicMapType_10218| Heap@@50) (|PolymorphicMapType_10218_5623_33773#PolymorphicMapType_10218| Heap@@50) (|PolymorphicMapType_10218_5659_1511#PolymorphicMapType_10218| Heap@@50) (|PolymorphicMapType_10218_5659_5626#PolymorphicMapType_10218| Heap@@50) (|PolymorphicMapType_10218_5659_53#PolymorphicMapType_10218| Heap@@50) (|PolymorphicMapType_10218_13607_1511#PolymorphicMapType_10218| Heap@@50) (|PolymorphicMapType_10218_13607_5626#PolymorphicMapType_10218| Heap@@50) (|PolymorphicMapType_10218_13607_5660#PolymorphicMapType_10218| Heap@@50) (|PolymorphicMapType_10218_13607_53#PolymorphicMapType_10218| Heap@@50)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 97) 96))) anon6_correct)))
(let ((anon4_correct  (=> (= Mask@1 (PolymorphicMapType_10239 (store (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@0) null (List xs) (- (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@0) null (List xs)) FullPerm)) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| Mask@0) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| Mask@0) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| Mask@0) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| Mask@0) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| Mask@0) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| Mask@0) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| Mask@0) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| Mask@0) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| Mask@0) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| Mask@0) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| Mask@0) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| Mask@0) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| Mask@0) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| Mask@0))) (and (=> (= (ControlFlow 0 99) 97) anon76_Then_correct) (=> (= (ControlFlow 0 99) 98) anon76_Else_correct)))))
(let ((anon75_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 102) 99)) anon4_correct)))
(let ((anon75_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 100) (- 0 101)) (<= FullPerm (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@0) null (List xs)))) (=> (<= FullPerm (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@0) null (List xs))) (=> (= (ControlFlow 0 100) 99) anon4_correct))))))
(let ((anon74_Else_correct  (=> (and (and (= i@0 (sum_rec Heap@@50 xs)) (state Heap@@50 Mask@0)) (and (|List#trigger_5659| Heap@@50 (List xs)) (= (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@50) null (List xs)) (CombineFrames (FrameFragment_1511 (select (|PolymorphicMapType_10218_5623_1511#PolymorphicMapType_10218| Heap@@50) xs val)) (CombineFrames (FrameFragment_5626 (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@50) xs next)) (FrameFragment_5660 (ite (not (= (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@50) xs next) null)) (select (|PolymorphicMapType_10218_5659_5660#PolymorphicMapType_10218| Heap@@50) null (List (select (|PolymorphicMapType_10218_5468_5469#PolymorphicMapType_10218| Heap@@50) xs next))) EmptyFrame))))))) (and (=> (= (ControlFlow 0 103) 100) anon75_Then_correct) (=> (= (ControlFlow 0 103) 102) anon75_Else_correct)))))
(let ((anon74_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| Mask@0) null (List xs)))))))
(let ((anon0_correct  (=> (state Heap@@50 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_10218_5465_53#PolymorphicMapType_10218| Heap@@50) xs $allocated) (= Mask@0 (PolymorphicMapType_10239 (store (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| ZeroMask) null (List xs) (+ (select (|PolymorphicMapType_10239_5659_5660#PolymorphicMapType_10239| ZeroMask) null (List xs)) FullPerm)) (|PolymorphicMapType_10239_5623_1511#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5625_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_1206#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_1511#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5659_47963#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_5660#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5623_48362#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_5660#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_5626#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_53#PolymorphicMapType_10239| ZeroMask) (|PolymorphicMapType_10239_5595_48776#PolymorphicMapType_10239| ZeroMask)))) (and (state Heap@@50 Mask@0) (state Heap@@50 Mask@0))) (and (=> (= (ControlFlow 0 104) 2) anon74_Then_correct) (=> (= (ControlFlow 0 104) 103) anon74_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 105) 104) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
