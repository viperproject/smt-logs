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
(declare-sort T@Field_29557_53 0)
(declare-sort T@Field_29570_29571 0)
(declare-sort T@Field_35635_3709 0)
(declare-sort T@Field_35682_35687 0)
(declare-sort T@Seq_35685 0)
(declare-sort T@Field_19497_90694 0)
(declare-sort T@Field_19497_90561 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_29518 0)) (((PolymorphicMapType_29518 (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| (Array T@Ref T@Field_35635_3709 Real)) (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| (Array T@Ref T@Field_35682_35687 Real)) (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| (Array T@Ref T@Field_29557_53 Real)) (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| (Array T@Ref T@Field_29570_29571 Real)) (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| (Array T@Ref T@Field_19497_90561 Real)) (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| (Array T@Ref T@Field_19497_90694 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_30046 0)) (((PolymorphicMapType_30046 (|PolymorphicMapType_30046_29557_53#PolymorphicMapType_30046| (Array T@Ref T@Field_29557_53 Bool)) (|PolymorphicMapType_30046_29557_29571#PolymorphicMapType_30046| (Array T@Ref T@Field_29570_29571 Bool)) (|PolymorphicMapType_30046_29557_3709#PolymorphicMapType_30046| (Array T@Ref T@Field_35635_3709 Bool)) (|PolymorphicMapType_30046_29557_35687#PolymorphicMapType_30046| (Array T@Ref T@Field_35682_35687 Bool)) (|PolymorphicMapType_30046_29557_90561#PolymorphicMapType_30046| (Array T@Ref T@Field_19497_90561 Bool)) (|PolymorphicMapType_30046_29557_92076#PolymorphicMapType_30046| (Array T@Ref T@Field_19497_90694 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_29497 0)) (((PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| (Array T@Ref T@Field_29557_53 Bool)) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| (Array T@Ref T@Field_29570_29571 T@Ref)) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| (Array T@Ref T@Field_35635_3709 Int)) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| (Array T@Ref T@Field_35682_35687 T@Seq_35685)) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| (Array T@Ref T@Field_19497_90694 T@PolymorphicMapType_30046)) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| (Array T@Ref T@Field_19497_90561 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_29557_53)
(declare-fun f_7 () T@Field_35635_3709)
(declare-fun elems () T@Field_35682_35687)
(declare-fun |Seq#Length_19583| (T@Seq_35685) Int)
(declare-fun |Seq#Drop_19583| (T@Seq_35685 Int) T@Seq_35685)
(declare-sort T@Seq_3587 0)
(declare-fun |Seq#Length_3587| (T@Seq_3587) Int)
(declare-fun |Seq#Drop_3587| (T@Seq_3587 Int) T@Seq_3587)
(declare-fun state (T@PolymorphicMapType_29497 T@PolymorphicMapType_29518) Bool)
(declare-fun |fun02'| (T@PolymorphicMapType_29497 T@Ref T@Ref Bool) Int)
(declare-fun |fun02#frame| (T@FrameType T@Ref T@Ref Bool) Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun FullPerm () Real)
(declare-fun NoPerm () Real)
(declare-fun FrameFragment_3709 (Int) T@FrameType)
(declare-fun succHeap (T@PolymorphicMapType_29497 T@PolymorphicMapType_29497) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_29497 T@PolymorphicMapType_29497) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_29518) Bool)
(declare-fun |fun01'| (T@PolymorphicMapType_29497 T@Ref T@Ref Bool) Int)
(declare-fun dummyFunction_3962 (Int) Bool)
(declare-fun |fun01#triggerStateless| (T@Ref T@Ref Bool) Int)
(declare-fun |fun02#triggerStateless| (T@Ref T@Ref Bool) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_30046)
(declare-fun |fun01qp'| (T@PolymorphicMapType_29497 T@Seq_35685 Int) Int)
(declare-fun |fun01qp#triggerStateless| (T@Seq_35685 Int) Int)
(declare-fun |fun02qp'| (T@PolymorphicMapType_29497 T@Seq_35685 Int) Int)
(declare-fun |fun02qp#triggerStateless| (T@Seq_35685 Int) Int)
(declare-fun |fun03qp'| (T@PolymorphicMapType_29497 T@Ref Int) Int)
(declare-fun |fun03qp#triggerStateless| (T@Ref Int) Int)
(declare-fun |fun04qp'| (T@PolymorphicMapType_29497 T@Ref Int) Int)
(declare-fun |fun04qp#triggerStateless| (T@Ref Int) Int)
(declare-fun |Seq#Index_19583| (T@Seq_35685 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3587| (T@Seq_3587 Int) Int)
(declare-fun |Seq#Empty_19583| () T@Seq_35685)
(declare-fun |Seq#Empty_3587| () T@Seq_3587)
(declare-fun |Seq#Update_19583| (T@Seq_35685 Int T@Ref) T@Seq_35685)
(declare-fun |Seq#Update_3587| (T@Seq_3587 Int Int) T@Seq_3587)
(declare-fun |Seq#Take_19583| (T@Seq_35685 Int) T@Seq_35685)
(declare-fun |Seq#Take_3587| (T@Seq_3587 Int) T@Seq_3587)
(declare-fun |Seq#Contains_3587| (T@Seq_3587 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3587)
(declare-fun |Seq#Contains_35685| (T@Seq_35685 T@Ref) Bool)
(declare-fun |Seq#Skolem_35685| (T@Seq_35685 T@Ref) Int)
(declare-fun |Seq#Skolem_3587| (T@Seq_3587 Int) Int)
(declare-fun |fun03qp#frame| (T@FrameType T@Ref Int) Int)
(declare-fun FrameFragment_42927 (T@Seq_35685) T@FrameType)
(declare-fun |fun03qp#condqp3| (T@PolymorphicMapType_29497 T@Ref Int) Int)
(declare-fun |fun04qp#frame| (T@FrameType T@Ref Int) Int)
(declare-fun |fun04qp#condqp4| (T@PolymorphicMapType_29497 T@Ref Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_29497 T@PolymorphicMapType_29497 T@PolymorphicMapType_29518) Bool)
(declare-fun IsPredicateField_19497_90652 (T@Field_19497_90561) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_19497 (T@Field_19497_90561) T@Field_19497_90694)
(declare-fun HasDirectPerm_19497_90625 (T@PolymorphicMapType_29518 T@Ref T@Field_19497_90561) Bool)
(declare-fun IsWandField_19497_92603 (T@Field_19497_90561) Bool)
(declare-fun WandMaskField_19497 (T@Field_19497_90561) T@Field_19497_90694)
(declare-fun |fun02qp#condqp2| (T@PolymorphicMapType_29497 T@Seq_35685 Int) Int)
(declare-fun |sk_fun02qp#condqp2| (Int Int) Int)
(declare-fun |Seq#Singleton_19583| (T@Ref) T@Seq_35685)
(declare-fun |Seq#Singleton_3587| (Int) T@Seq_3587)
(declare-fun |Seq#Append_35685| (T@Seq_35685 T@Seq_35685) T@Seq_35685)
(declare-fun |Seq#Append_3587| (T@Seq_3587 T@Seq_3587) T@Seq_3587)
(declare-fun dummyHeap () T@PolymorphicMapType_29497)
(declare-fun ZeroMask () T@PolymorphicMapType_29518)
(declare-fun InsidePredicate_29557_29557 (T@Field_19497_90561 T@FrameType T@Field_19497_90561 T@FrameType) Bool)
(declare-fun IsPredicateField_19495_3709 (T@Field_35635_3709) Bool)
(declare-fun IsWandField_19495_3709 (T@Field_35635_3709) Bool)
(declare-fun IsPredicateField_19497_35709 (T@Field_35682_35687) Bool)
(declare-fun IsWandField_19497_35735 (T@Field_35682_35687) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_19495_96737 (T@Field_19497_90694) Bool)
(declare-fun IsWandField_19495_96753 (T@Field_19497_90694) Bool)
(declare-fun IsPredicateField_19495_29571 (T@Field_29570_29571) Bool)
(declare-fun IsWandField_19495_29571 (T@Field_29570_29571) Bool)
(declare-fun IsPredicateField_19495_53 (T@Field_29557_53) Bool)
(declare-fun IsWandField_19495_53 (T@Field_29557_53) Bool)
(declare-fun HasDirectPerm_19497_97274 (T@PolymorphicMapType_29518 T@Ref T@Field_19497_90694) Bool)
(declare-fun HasDirectPerm_19497_3709 (T@PolymorphicMapType_29518 T@Ref T@Field_35635_3709) Bool)
(declare-fun HasDirectPerm_19497_29571 (T@PolymorphicMapType_29518 T@Ref T@Field_29570_29571) Bool)
(declare-fun HasDirectPerm_19497_53 (T@PolymorphicMapType_29518 T@Ref T@Field_29557_53) Bool)
(declare-fun HasDirectPerm_19497_44302 (T@PolymorphicMapType_29518 T@Ref T@Field_35682_35687) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun fun01qp (T@PolymorphicMapType_29497 T@Seq_35685 Int) Int)
(declare-fun fun02qp (T@PolymorphicMapType_29497 T@Seq_35685 Int) Int)
(declare-fun fun03qp (T@PolymorphicMapType_29497 T@Ref Int) Int)
(declare-fun fun04qp (T@PolymorphicMapType_29497 T@Ref Int) Int)
(declare-fun |fun01qp#frame| (T@FrameType T@Seq_35685 Int) Int)
(declare-fun |fun01qp#condqp1| (T@PolymorphicMapType_29497 T@Seq_35685 Int) Int)
(declare-fun |fun02qp#frame| (T@FrameType T@Seq_35685 Int) Int)
(declare-fun |sk_fun04qp#condqp4| (Int Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_29518 T@PolymorphicMapType_29518 T@PolymorphicMapType_29518) Bool)
(declare-fun |sk_fun03qp#condqp3| (Int Int) Int)
(declare-fun |Seq#Equal_3587| (T@Seq_3587 T@Seq_3587) Bool)
(declare-fun |Seq#Equal_19498| (T@Seq_35685 T@Seq_35685) Bool)
(declare-fun fun01 (T@PolymorphicMapType_29497 T@Ref T@Ref Bool) Int)
(declare-fun fun02 (T@PolymorphicMapType_29497 T@Ref T@Ref Bool) Int)
(declare-fun |Seq#ContainsTrigger_19583| (T@Seq_35685 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3587| (T@Seq_3587 Int) Bool)
(declare-fun |fun01#frame| (T@FrameType T@Ref T@Ref Bool) Int)
(declare-fun FrameFragment_21492 (T@FrameType) T@FrameType)
(declare-fun |Seq#SkolemDiff_35685| (T@Seq_35685 T@Seq_35685) Int)
(declare-fun |Seq#SkolemDiff_3587| (T@Seq_3587 T@Seq_3587) Int)
(declare-fun |sk_fun01qp#condqp1| (Int Int) Int)
(assert (forall ((s T@Seq_35685) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_19583| s)) (= (|Seq#Length_19583| (|Seq#Drop_19583| s n)) (- (|Seq#Length_19583| s) n))) (=> (< (|Seq#Length_19583| s) n) (= (|Seq#Length_19583| (|Seq#Drop_19583| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_19583| (|Seq#Drop_19583| s n)) (|Seq#Length_19583| s))))
 :qid |stdinbpl.383:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_19583| (|Seq#Drop_19583| s n)))
 :pattern ( (|Seq#Length_19583| s) (|Seq#Drop_19583| s n))
)))
(assert (forall ((s@@0 T@Seq_3587) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3587| s@@0)) (= (|Seq#Length_3587| (|Seq#Drop_3587| s@@0 n@@0)) (- (|Seq#Length_3587| s@@0) n@@0))) (=> (< (|Seq#Length_3587| s@@0) n@@0) (= (|Seq#Length_3587| (|Seq#Drop_3587| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3587| (|Seq#Drop_3587| s@@0 n@@0)) (|Seq#Length_3587| s@@0))))
 :qid |stdinbpl.383:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3587| (|Seq#Drop_3587| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3587| s@@0) (|Seq#Drop_3587| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_29497) (Mask T@PolymorphicMapType_29518) (x T@Ref) (y T@Ref) (b_24 Bool) ) (!  (=> (state Heap Mask) (= (|fun02'| Heap x y b_24) (|fun02#frame| (CombineFrames (ConditionalFrame (ite b_24 FullPerm NoPerm) (FrameFragment_3709 (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap) x f_7))) (ConditionalFrame (ite  (not b_24) FullPerm NoPerm) (FrameFragment_3709 (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap) y f_7)))) x y b_24)))
 :qid |stdinbpl.737:15|
 :skolemid |63|
 :pattern ( (state Heap Mask) (|fun02'| Heap x y b_24))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_29497) (Heap1 T@PolymorphicMapType_29497) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_29497) (Mask@@0 T@PolymorphicMapType_29518) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_29497) (Heap1@@0 T@PolymorphicMapType_29497) (Heap2 T@PolymorphicMapType_29497) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_29497) (x@@0 T@Ref) (y@@0 T@Ref) (b_24@@0 Bool) ) (! (dummyFunction_3962 (|fun01#triggerStateless| x@@0 y@@0 b_24@@0))
 :qid |stdinbpl.672:15|
 :skolemid |59|
 :pattern ( (|fun01'| Heap@@1 x@@0 y@@0 b_24@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_29497) (x@@1 T@Ref) (y@@1 T@Ref) (b_24@@1 Bool) ) (! (dummyFunction_3962 (|fun02#triggerStateless| x@@1 y@@1 b_24@@1))
 :qid |stdinbpl.730:15|
 :skolemid |62|
 :pattern ( (|fun02'| Heap@@2 x@@1 y@@1 b_24@@1))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_19497_90694) ) (!  (not (select (|PolymorphicMapType_30046_29557_92076#PolymorphicMapType_30046| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30046_29557_92076#PolymorphicMapType_30046| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_19497_90561) ) (!  (not (select (|PolymorphicMapType_30046_29557_90561#PolymorphicMapType_30046| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30046_29557_90561#PolymorphicMapType_30046| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_35682_35687) ) (!  (not (select (|PolymorphicMapType_30046_29557_35687#PolymorphicMapType_30046| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30046_29557_35687#PolymorphicMapType_30046| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_35635_3709) ) (!  (not (select (|PolymorphicMapType_30046_29557_3709#PolymorphicMapType_30046| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30046_29557_3709#PolymorphicMapType_30046| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_29570_29571) ) (!  (not (select (|PolymorphicMapType_30046_29557_29571#PolymorphicMapType_30046| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30046_29557_29571#PolymorphicMapType_30046| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_29557_53) ) (!  (not (select (|PolymorphicMapType_30046_29557_53#PolymorphicMapType_30046| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30046_29557_53#PolymorphicMapType_30046| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_29497) (xs T@Seq_35685) (i Int) ) (! (dummyFunction_3962 (|fun01qp#triggerStateless| xs i))
 :qid |stdinbpl.790:15|
 :skolemid |65|
 :pattern ( (|fun01qp'| Heap@@3 xs i))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_29497) (xs@@0 T@Seq_35685) (i@@0 Int) ) (! (dummyFunction_3962 (|fun02qp#triggerStateless| xs@@0 i@@0))
 :qid |stdinbpl.894:15|
 :skolemid |75|
 :pattern ( (|fun02qp'| Heap@@4 xs@@0 i@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_29497) (x@@2 T@Ref) (i@@1 Int) ) (! (dummyFunction_3962 (|fun03qp#triggerStateless| x@@2 i@@1))
 :qid |stdinbpl.1004:15|
 :skolemid |86|
 :pattern ( (|fun03qp'| Heap@@5 x@@2 i@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_29497) (x@@3 T@Ref) (i@@2 Int) ) (! (dummyFunction_3962 (|fun04qp#triggerStateless| x@@3 i@@2))
 :qid |stdinbpl.1125:15|
 :skolemid |96|
 :pattern ( (|fun04qp'| Heap@@6 x@@3 i@@2))
)))
(assert (forall ((s@@1 T@Seq_35685) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_19583| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_19583| (|Seq#Drop_19583| s@@1 n@@1) j) (|Seq#Index_19583| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.404:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_19583| (|Seq#Drop_19583| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3587) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3587| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3587| (|Seq#Drop_3587| s@@2 n@@2) j@@0) (|Seq#Index_3587| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.404:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3587| (|Seq#Drop_3587| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_19583| |Seq#Empty_19583|) 0))
(assert (= (|Seq#Length_3587| |Seq#Empty_3587|) 0))
(assert (forall ((s@@3 T@Seq_35685) (i@@3 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_19583| s@@3))) (and (=> (= i@@3 n@@3) (= (|Seq#Index_19583| (|Seq#Update_19583| s@@3 i@@3 v) n@@3) v)) (=> (not (= i@@3 n@@3)) (= (|Seq#Index_19583| (|Seq#Update_19583| s@@3 i@@3 v) n@@3) (|Seq#Index_19583| s@@3 n@@3)))))
 :qid |stdinbpl.359:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_19583| (|Seq#Update_19583| s@@3 i@@3 v) n@@3))
 :pattern ( (|Seq#Index_19583| s@@3 n@@3) (|Seq#Update_19583| s@@3 i@@3 v))
)))
(assert (forall ((s@@4 T@Seq_3587) (i@@4 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3587| s@@4))) (and (=> (= i@@4 n@@4) (= (|Seq#Index_3587| (|Seq#Update_3587| s@@4 i@@4 v@@0) n@@4) v@@0)) (=> (not (= i@@4 n@@4)) (= (|Seq#Index_3587| (|Seq#Update_3587| s@@4 i@@4 v@@0) n@@4) (|Seq#Index_3587| s@@4 n@@4)))))
 :qid |stdinbpl.359:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3587| (|Seq#Update_3587| s@@4 i@@4 v@@0) n@@4))
 :pattern ( (|Seq#Index_3587| s@@4 n@@4) (|Seq#Update_3587| s@@4 i@@4 v@@0))
)))
(assert (forall ((s@@5 T@Seq_35685) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_19583| s@@5)) (= (|Seq#Length_19583| (|Seq#Take_19583| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_19583| s@@5) n@@5) (= (|Seq#Length_19583| (|Seq#Take_19583| s@@5 n@@5)) (|Seq#Length_19583| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_19583| (|Seq#Take_19583| s@@5 n@@5)) 0)))
 :qid |stdinbpl.370:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_19583| (|Seq#Take_19583| s@@5 n@@5)))
 :pattern ( (|Seq#Take_19583| s@@5 n@@5) (|Seq#Length_19583| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3587) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3587| s@@6)) (= (|Seq#Length_3587| (|Seq#Take_3587| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3587| s@@6) n@@6) (= (|Seq#Length_3587| (|Seq#Take_3587| s@@6 n@@6)) (|Seq#Length_3587| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3587| (|Seq#Take_3587| s@@6 n@@6)) 0)))
 :qid |stdinbpl.370:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3587| (|Seq#Take_3587| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3587| s@@6 n@@6) (|Seq#Length_3587| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3587| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.644:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3587| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_35685) (x@@4 T@Ref) ) (!  (=> (|Seq#Contains_35685| s@@7 x@@4) (and (and (<= 0 (|Seq#Skolem_35685| s@@7 x@@4)) (< (|Seq#Skolem_35685| s@@7 x@@4) (|Seq#Length_19583| s@@7))) (= (|Seq#Index_19583| s@@7 (|Seq#Skolem_35685| s@@7 x@@4)) x@@4)))
 :qid |stdinbpl.502:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_35685| s@@7 x@@4))
)))
(assert (forall ((s@@8 T@Seq_3587) (x@@5 Int) ) (!  (=> (|Seq#Contains_3587| s@@8 x@@5) (and (and (<= 0 (|Seq#Skolem_3587| s@@8 x@@5)) (< (|Seq#Skolem_3587| s@@8 x@@5) (|Seq#Length_3587| s@@8))) (= (|Seq#Index_3587| s@@8 (|Seq#Skolem_3587| s@@8 x@@5)) x@@5)))
 :qid |stdinbpl.502:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3587| s@@8 x@@5))
)))
(assert (forall ((s@@9 T@Seq_35685) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_19583| s@@9 n@@7) s@@9))
 :qid |stdinbpl.486:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_19583| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3587) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3587| s@@10 n@@8) s@@10))
 :qid |stdinbpl.486:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3587| s@@10 n@@8))
)))
(assert (forall ((i@@5 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@5 j@@1) (- i@@5 j@@1))
 :qid |stdinbpl.339:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@5 j@@1))
)))
(assert (forall ((i@@6 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@6 j@@2) (+ i@@6 j@@2))
 :qid |stdinbpl.337:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@6 j@@2))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_29497) (Mask@@1 T@PolymorphicMapType_29518) (x@@6 T@Ref) (i@@7 Int) ) (!  (=> (state Heap@@7 Mask@@1) (= (|fun03qp'| Heap@@7 x@@6 i@@7) (|fun03qp#frame| (CombineFrames (FrameFragment_42927 (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@7) x@@6 elems)) (FrameFragment_3709 (|fun03qp#condqp3| Heap@@7 x@@6 i@@7))) x@@6 i@@7)))
 :qid |stdinbpl.1011:15|
 :skolemid |87|
 :pattern ( (state Heap@@7 Mask@@1) (|fun03qp'| Heap@@7 x@@6 i@@7))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_29497) (Mask@@2 T@PolymorphicMapType_29518) (x@@7 T@Ref) (i@@8 Int) ) (!  (=> (state Heap@@8 Mask@@2) (= (|fun04qp'| Heap@@8 x@@7 i@@8) (|fun04qp#frame| (CombineFrames (FrameFragment_42927 (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@8) x@@7 elems)) (FrameFragment_3709 (|fun04qp#condqp4| Heap@@8 x@@7 i@@8))) x@@7 i@@8)))
 :qid |stdinbpl.1132:15|
 :skolemid |97|
 :pattern ( (state Heap@@8 Mask@@2) (|fun04qp'| Heap@@8 x@@7 i@@8))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_29497) (ExhaleHeap T@PolymorphicMapType_29497) (Mask@@3 T@PolymorphicMapType_29518) (pm_f_16 T@Field_19497_90561) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_19497_90625 Mask@@3 null pm_f_16) (IsPredicateField_19497_90652 pm_f_16)) (= (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@9) null (PredicateMaskField_19497 pm_f_16)) (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| ExhaleHeap) null (PredicateMaskField_19497 pm_f_16)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap Mask@@3) (IsPredicateField_19497_90652 pm_f_16) (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| ExhaleHeap) null (PredicateMaskField_19497 pm_f_16)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_29497) (ExhaleHeap@@0 T@PolymorphicMapType_29497) (Mask@@4 T@PolymorphicMapType_29518) (pm_f_16@@0 T@Field_19497_90561) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_19497_90625 Mask@@4 null pm_f_16@@0) (IsWandField_19497_92603 pm_f_16@@0)) (= (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@10) null (WandMaskField_19497 pm_f_16@@0)) (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| ExhaleHeap@@0) null (WandMaskField_19497 pm_f_16@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@0 Mask@@4) (IsWandField_19497_92603 pm_f_16@@0) (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| ExhaleHeap@@0) null (WandMaskField_19497 pm_f_16@@0)))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_29497) (Heap1Heap T@PolymorphicMapType_29497) (xs@@1 T@Seq_35685) (i@@9 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9))) (< (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9)) (|Seq#Length_19583| xs@@1))) (< NoPerm (ite (= (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9)) i@@9) FullPerm NoPerm)))  (and (and (<= 0 (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9))) (< (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9)) (|Seq#Length_19583| xs@@1))) (< NoPerm (ite (= (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9)) i@@9) FullPerm NoPerm)))) (=> (and (and (<= 0 (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9))) (< (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9)) (|Seq#Length_19583| xs@@1))) (< NoPerm (ite (= (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9)) i@@9) FullPerm NoPerm))) (= (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap2Heap) (|Seq#Index_19583| xs@@1 (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9))) f_7) (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap1Heap) (|Seq#Index_19583| xs@@1 (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9))) f_7)))) (= (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9)))
 :qid |stdinbpl.911:15|
 :skolemid |77|
 :pattern ( (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((x@@8 T@Ref) (y@@2 T@Ref) ) (! (= (|Seq#Contains_35685| (|Seq#Singleton_19583| x@@8) y@@2) (= x@@8 y@@2))
 :qid |stdinbpl.627:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_35685| (|Seq#Singleton_19583| x@@8) y@@2))
)))
(assert (forall ((x@@9 Int) (y@@3 Int) ) (! (= (|Seq#Contains_3587| (|Seq#Singleton_3587| x@@9) y@@3) (= x@@9 y@@3))
 :qid |stdinbpl.627:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3587| (|Seq#Singleton_3587| x@@9) y@@3))
)))
(assert (forall ((s@@11 T@Seq_35685) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_19583| s@@11))) (= (|Seq#Index_19583| (|Seq#Take_19583| s@@11 n@@9) j@@3) (|Seq#Index_19583| s@@11 j@@3)))
 :qid |stdinbpl.378:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_19583| (|Seq#Take_19583| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_19583| s@@11 j@@3) (|Seq#Take_19583| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3587) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3587| s@@12))) (= (|Seq#Index_3587| (|Seq#Take_3587| s@@12 n@@10) j@@4) (|Seq#Index_3587| s@@12 j@@4)))
 :qid |stdinbpl.378:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3587| (|Seq#Take_3587| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3587| s@@12 j@@4) (|Seq#Take_3587| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_35685) (t T@Seq_35685) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_19583| s@@13))) (< n@@11 (|Seq#Length_19583| (|Seq#Append_35685| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_19583| s@@13)) (|Seq#Length_19583| s@@13)) n@@11) (= (|Seq#Take_19583| (|Seq#Append_35685| s@@13 t) n@@11) (|Seq#Append_35685| s@@13 (|Seq#Take_19583| t (|Seq#Sub| n@@11 (|Seq#Length_19583| s@@13)))))))
 :qid |stdinbpl.463:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_19583| (|Seq#Append_35685| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3587) (t@@0 T@Seq_3587) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3587| s@@14))) (< n@@12 (|Seq#Length_3587| (|Seq#Append_3587| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3587| s@@14)) (|Seq#Length_3587| s@@14)) n@@12) (= (|Seq#Take_3587| (|Seq#Append_3587| s@@14 t@@0) n@@12) (|Seq#Append_3587| s@@14 (|Seq#Take_3587| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3587| s@@14)))))))
 :qid |stdinbpl.463:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3587| (|Seq#Append_3587| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_29497) (ExhaleHeap@@1 T@PolymorphicMapType_29497) (Mask@@5 T@PolymorphicMapType_29518) (o_34 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@5) (=> (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@11) o_34 $allocated) (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| ExhaleHeap@@1) o_34 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@5) (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| ExhaleHeap@@1) o_34 $allocated))
)))
(assert (forall ((p T@Field_19497_90561) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_29557_29557 p v_1 p w))
 :qid |stdinbpl.281:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_29557_29557 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_35685) (s1 T@Seq_35685) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_19583|)) (not (= s1 |Seq#Empty_19583|))) (<= (|Seq#Length_19583| s0) n@@13)) (< n@@13 (|Seq#Length_19583| (|Seq#Append_35685| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_19583| s0)) (|Seq#Length_19583| s0)) n@@13) (= (|Seq#Index_19583| (|Seq#Append_35685| s0 s1) n@@13) (|Seq#Index_19583| s1 (|Seq#Sub| n@@13 (|Seq#Length_19583| s0))))))
 :qid |stdinbpl.350:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_19583| (|Seq#Append_35685| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3587) (s1@@0 T@Seq_3587) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3587|)) (not (= s1@@0 |Seq#Empty_3587|))) (<= (|Seq#Length_3587| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3587| (|Seq#Append_3587| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3587| s0@@0)) (|Seq#Length_3587| s0@@0)) n@@14) (= (|Seq#Index_3587| (|Seq#Append_3587| s0@@0 s1@@0) n@@14) (|Seq#Index_3587| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3587| s0@@0))))))
 :qid |stdinbpl.350:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3587| (|Seq#Append_3587| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_19495_3709 f_7)))
(assert  (not (IsWandField_19495_3709 f_7)))
(assert  (not (IsPredicateField_19497_35709 elems)))
(assert  (not (IsWandField_19497_35735 elems)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_29497) (ExhaleHeap@@2 T@PolymorphicMapType_29497) (Mask@@6 T@PolymorphicMapType_29518) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@6) (succHeap Heap@@12 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_29518) (o_2@@5 T@Ref) (f_4@@5 T@Field_19497_90694) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| Mask@@7) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_19495_96737 f_4@@5))) (not (IsWandField_19495_96753 f_4@@5))) (<= (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| Mask@@7) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| Mask@@7) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_29518) (o_2@@6 T@Ref) (f_4@@6 T@Field_19497_90561) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| Mask@@8) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_19497_90652 f_4@@6))) (not (IsWandField_19497_92603 f_4@@6))) (<= (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| Mask@@8) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| Mask@@8) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_29518) (o_2@@7 T@Ref) (f_4@@7 T@Field_29570_29571) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| Mask@@9) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_19495_29571 f_4@@7))) (not (IsWandField_19495_29571 f_4@@7))) (<= (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| Mask@@9) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| Mask@@9) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_29518) (o_2@@8 T@Ref) (f_4@@8 T@Field_29557_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| Mask@@10) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_19495_53 f_4@@8))) (not (IsWandField_19495_53 f_4@@8))) (<= (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| Mask@@10) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| Mask@@10) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_29518) (o_2@@9 T@Ref) (f_4@@9 T@Field_35682_35687) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| Mask@@11) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_19497_35709 f_4@@9))) (not (IsWandField_19497_35735 f_4@@9))) (<= (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| Mask@@11) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| Mask@@11) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_29518) (o_2@@10 T@Ref) (f_4@@10 T@Field_35635_3709) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| Mask@@12) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_19495_3709 f_4@@10))) (not (IsWandField_19495_3709 f_4@@10))) (<= (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| Mask@@12) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| Mask@@12) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_29518) (o_2@@11 T@Ref) (f_4@@11 T@Field_19497_90694) ) (! (= (HasDirectPerm_19497_97274 Mask@@13 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| Mask@@13) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19497_97274 Mask@@13 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_29518) (o_2@@12 T@Ref) (f_4@@12 T@Field_19497_90561) ) (! (= (HasDirectPerm_19497_90625 Mask@@14 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| Mask@@14) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19497_90625 Mask@@14 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_29518) (o_2@@13 T@Ref) (f_4@@13 T@Field_35635_3709) ) (! (= (HasDirectPerm_19497_3709 Mask@@15 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| Mask@@15) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19497_3709 Mask@@15 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_29518) (o_2@@14 T@Ref) (f_4@@14 T@Field_29570_29571) ) (! (= (HasDirectPerm_19497_29571 Mask@@16 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| Mask@@16) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19497_29571 Mask@@16 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_29518) (o_2@@15 T@Ref) (f_4@@15 T@Field_29557_53) ) (! (= (HasDirectPerm_19497_53 Mask@@17 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| Mask@@17) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19497_53 Mask@@17 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_29518) (o_2@@16 T@Ref) (f_4@@16 T@Field_35682_35687) ) (! (= (HasDirectPerm_19497_44302 Mask@@18 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| Mask@@18) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19497_44302 Mask@@18 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.269:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3587| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.642:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3587| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_29497) (ExhaleHeap@@3 T@PolymorphicMapType_29497) (Mask@@19 T@PolymorphicMapType_29518) (o_34@@0 T@Ref) (f_40 T@Field_19497_90694) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@19) (=> (HasDirectPerm_19497_97274 Mask@@19 o_34@@0 f_40) (= (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@13) o_34@@0 f_40) (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| ExhaleHeap@@3) o_34@@0 f_40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@19) (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| ExhaleHeap@@3) o_34@@0 f_40))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_29497) (ExhaleHeap@@4 T@PolymorphicMapType_29497) (Mask@@20 T@PolymorphicMapType_29518) (o_34@@1 T@Ref) (f_40@@0 T@Field_19497_90561) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@20) (=> (HasDirectPerm_19497_90625 Mask@@20 o_34@@1 f_40@@0) (= (select (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@14) o_34@@1 f_40@@0) (select (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| ExhaleHeap@@4) o_34@@1 f_40@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@20) (select (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| ExhaleHeap@@4) o_34@@1 f_40@@0))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_29497) (ExhaleHeap@@5 T@PolymorphicMapType_29497) (Mask@@21 T@PolymorphicMapType_29518) (o_34@@2 T@Ref) (f_40@@1 T@Field_35635_3709) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@21) (=> (HasDirectPerm_19497_3709 Mask@@21 o_34@@2 f_40@@1) (= (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@15) o_34@@2 f_40@@1) (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| ExhaleHeap@@5) o_34@@2 f_40@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@21) (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| ExhaleHeap@@5) o_34@@2 f_40@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_29497) (ExhaleHeap@@6 T@PolymorphicMapType_29497) (Mask@@22 T@PolymorphicMapType_29518) (o_34@@3 T@Ref) (f_40@@2 T@Field_29570_29571) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@22) (=> (HasDirectPerm_19497_29571 Mask@@22 o_34@@3 f_40@@2) (= (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@16) o_34@@3 f_40@@2) (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| ExhaleHeap@@6) o_34@@3 f_40@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@22) (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| ExhaleHeap@@6) o_34@@3 f_40@@2))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_29497) (ExhaleHeap@@7 T@PolymorphicMapType_29497) (Mask@@23 T@PolymorphicMapType_29518) (o_34@@4 T@Ref) (f_40@@3 T@Field_29557_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@23) (=> (HasDirectPerm_19497_53 Mask@@23 o_34@@4 f_40@@3) (= (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@17) o_34@@4 f_40@@3) (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| ExhaleHeap@@7) o_34@@4 f_40@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@23) (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| ExhaleHeap@@7) o_34@@4 f_40@@3))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_29497) (ExhaleHeap@@8 T@PolymorphicMapType_29497) (Mask@@24 T@PolymorphicMapType_29518) (o_34@@5 T@Ref) (f_40@@4 T@Field_35682_35687) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@24) (=> (HasDirectPerm_19497_44302 Mask@@24 o_34@@5 f_40@@4) (= (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@18) o_34@@5 f_40@@4) (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| ExhaleHeap@@8) o_34@@5 f_40@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@24) (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| ExhaleHeap@@8) o_34@@5 f_40@@4))
)))
(assert (forall ((s0@@1 T@Seq_35685) (s1@@1 T@Seq_35685) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_19583|)) (not (= s1@@1 |Seq#Empty_19583|))) (= (|Seq#Length_19583| (|Seq#Append_35685| s0@@1 s1@@1)) (+ (|Seq#Length_19583| s0@@1) (|Seq#Length_19583| s1@@1))))
 :qid |stdinbpl.319:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_19583| (|Seq#Append_35685| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3587) (s1@@2 T@Seq_3587) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3587|)) (not (= s1@@2 |Seq#Empty_3587|))) (= (|Seq#Length_3587| (|Seq#Append_3587| s0@@2 s1@@2)) (+ (|Seq#Length_3587| s0@@2) (|Seq#Length_3587| s1@@2))))
 :qid |stdinbpl.319:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3587| (|Seq#Append_3587| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_19497_90694) ) (! (= (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_19497_90561) ) (! (= (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_29570_29571) ) (! (= (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_29557_53) ) (! (= (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_35682_35687) ) (! (= (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_35635_3709) ) (! (= (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((s@@15 T@Seq_35685) (t@@1 T@Seq_35685) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_19583| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_19583| s@@15)) (|Seq#Length_19583| s@@15)) n@@15) (= (|Seq#Drop_19583| (|Seq#Append_35685| s@@15 t@@1) n@@15) (|Seq#Drop_19583| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_19583| s@@15))))))
 :qid |stdinbpl.476:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_19583| (|Seq#Append_35685| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3587) (t@@2 T@Seq_3587) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3587| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3587| s@@16)) (|Seq#Length_3587| s@@16)) n@@16) (= (|Seq#Drop_3587| (|Seq#Append_3587| s@@16 t@@2) n@@16) (|Seq#Drop_3587| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3587| s@@16))))))
 :qid |stdinbpl.476:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3587| (|Seq#Append_3587| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_29497) (xs@@2 T@Seq_35685) (i@@10 Int) ) (!  (and (= (fun01qp Heap@@19 xs@@2 i@@10) (|fun01qp'| Heap@@19 xs@@2 i@@10)) (dummyFunction_3962 (|fun01qp#triggerStateless| xs@@2 i@@10)))
 :qid |stdinbpl.786:15|
 :skolemid |64|
 :pattern ( (fun01qp Heap@@19 xs@@2 i@@10))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_29497) (xs@@3 T@Seq_35685) (i@@11 Int) ) (!  (and (= (fun02qp Heap@@20 xs@@3 i@@11) (|fun02qp'| Heap@@20 xs@@3 i@@11)) (dummyFunction_3962 (|fun02qp#triggerStateless| xs@@3 i@@11)))
 :qid |stdinbpl.890:15|
 :skolemid |74|
 :pattern ( (fun02qp Heap@@20 xs@@3 i@@11))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_29497) (x@@10 T@Ref) (i@@12 Int) ) (!  (and (= (fun03qp Heap@@21 x@@10 i@@12) (|fun03qp'| Heap@@21 x@@10 i@@12)) (dummyFunction_3962 (|fun03qp#triggerStateless| x@@10 i@@12)))
 :qid |stdinbpl.1000:15|
 :skolemid |85|
 :pattern ( (fun03qp Heap@@21 x@@10 i@@12))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_29497) (x@@11 T@Ref) (i@@13 Int) ) (!  (and (= (fun04qp Heap@@22 x@@11 i@@13) (|fun04qp'| Heap@@22 x@@11 i@@13)) (dummyFunction_3962 (|fun04qp#triggerStateless| x@@11 i@@13)))
 :qid |stdinbpl.1121:15|
 :skolemid |95|
 :pattern ( (fun04qp Heap@@22 x@@11 i@@13))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_29497) (Mask@@25 T@PolymorphicMapType_29518) (xs@@4 T@Seq_35685) (i@@14 Int) ) (!  (=> (state Heap@@23 Mask@@25) (= (|fun01qp'| Heap@@23 xs@@4 i@@14) (|fun01qp#frame| (FrameFragment_3709 (|fun01qp#condqp1| Heap@@23 xs@@4 i@@14)) xs@@4 i@@14)))
 :qid |stdinbpl.797:15|
 :skolemid |66|
 :pattern ( (state Heap@@23 Mask@@25) (|fun01qp'| Heap@@23 xs@@4 i@@14))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_29497) (Mask@@26 T@PolymorphicMapType_29518) (xs@@5 T@Seq_35685) (i@@15 Int) ) (!  (=> (state Heap@@24 Mask@@26) (= (|fun02qp'| Heap@@24 xs@@5 i@@15) (|fun02qp#frame| (FrameFragment_3709 (|fun02qp#condqp2| Heap@@24 xs@@5 i@@15)) xs@@5 i@@15)))
 :qid |stdinbpl.901:15|
 :skolemid |76|
 :pattern ( (state Heap@@24 Mask@@26) (|fun02qp'| Heap@@24 xs@@5 i@@15))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_29497) (Heap1Heap@@0 T@PolymorphicMapType_29497) (x@@12 T@Ref) (i@@16 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16))) (< (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16)) (|Seq#Length_19583| (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap2Heap@@0) x@@12 elems)))) (< NoPerm (ite (= (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16)) i@@16) FullPerm NoPerm)))  (and (and (<= 0 (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16))) (< (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16)) (|Seq#Length_19583| (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap1Heap@@0) x@@12 elems)))) (< NoPerm (ite (= (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16)) i@@16) FullPerm NoPerm)))) (=> (and (and (<= 0 (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16))) (< (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16)) (|Seq#Length_19583| (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap2Heap@@0) x@@12 elems)))) (< NoPerm (ite (= (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16)) i@@16) FullPerm NoPerm))) (= (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap2Heap@@0) (|Seq#Index_19583| (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap2Heap@@0) x@@12 elems) (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16))) f_7) (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap1Heap@@0) (|Seq#Index_19583| (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap1Heap@@0) x@@12 elems) (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16))) f_7)))) (= (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16)))
 :qid |stdinbpl.1142:15|
 :skolemid |98|
 :pattern ( (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_29518) (SummandMask1 T@PolymorphicMapType_29518) (SummandMask2 T@PolymorphicMapType_29518) (o_2@@23 T@Ref) (f_4@@23 T@Field_19497_90694) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_29518) (SummandMask1@@0 T@PolymorphicMapType_29518) (SummandMask2@@0 T@PolymorphicMapType_29518) (o_2@@24 T@Ref) (f_4@@24 T@Field_19497_90561) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_29518) (SummandMask1@@1 T@PolymorphicMapType_29518) (SummandMask2@@1 T@PolymorphicMapType_29518) (o_2@@25 T@Ref) (f_4@@25 T@Field_29570_29571) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_29518) (SummandMask1@@2 T@PolymorphicMapType_29518) (SummandMask2@@2 T@PolymorphicMapType_29518) (o_2@@26 T@Ref) (f_4@@26 T@Field_29557_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_29518) (SummandMask1@@3 T@PolymorphicMapType_29518) (SummandMask2@@3 T@PolymorphicMapType_29518) (o_2@@27 T@Ref) (f_4@@27 T@Field_35682_35687) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_29518) (SummandMask1@@4 T@PolymorphicMapType_29518) (SummandMask2@@4 T@PolymorphicMapType_29518) (o_2@@28 T@Ref) (f_4@@28 T@Field_35635_3709) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3587| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3587| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.641:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3587| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_29497) (Heap1Heap@@1 T@PolymorphicMapType_29497) (x@@13 T@Ref) (i@@17 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17))) (and (< (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17)) (|Seq#Length_19583| (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap2Heap@@1) x@@13 elems))) (= (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17)) i@@17))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17))) (and (< (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17)) (|Seq#Length_19583| (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap1Heap@@1) x@@13 elems))) (= (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17)) i@@17))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17))) (and (< (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17)) (|Seq#Length_19583| (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap2Heap@@1) x@@13 elems))) (= (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17)) i@@17))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap2Heap@@1) (|Seq#Index_19583| (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap2Heap@@1) x@@13 elems) (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17))) f_7) (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap1Heap@@1) (|Seq#Index_19583| (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap1Heap@@1) x@@13 elems) (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17))) f_7)))) (= (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17)))
 :qid |stdinbpl.1021:15|
 :skolemid |88|
 :pattern ( (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((a T@Seq_3587) (b T@Seq_3587) ) (!  (=> (|Seq#Equal_3587| a b) (= a b))
 :qid |stdinbpl.614:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3587| a b))
)))
(assert (forall ((a@@0 T@Seq_35685) (b@@0 T@Seq_35685) ) (!  (=> (|Seq#Equal_19498| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.614:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_19498| a@@0 b@@0))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_29497) (x@@14 T@Ref) (y@@4 T@Ref) (b_24@@2 Bool) ) (!  (and (= (fun01 Heap@@25 x@@14 y@@4 b_24@@2) (|fun01'| Heap@@25 x@@14 y@@4 b_24@@2)) (dummyFunction_3962 (|fun01#triggerStateless| x@@14 y@@4 b_24@@2)))
 :qid |stdinbpl.668:15|
 :skolemid |58|
 :pattern ( (fun01 Heap@@25 x@@14 y@@4 b_24@@2))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_29497) (x@@15 T@Ref) (y@@5 T@Ref) (b_24@@3 Bool) ) (!  (and (= (fun02 Heap@@26 x@@15 y@@5 b_24@@3) (|fun02'| Heap@@26 x@@15 y@@5 b_24@@3)) (dummyFunction_3962 (|fun02#triggerStateless| x@@15 y@@5 b_24@@3)))
 :qid |stdinbpl.726:15|
 :skolemid |61|
 :pattern ( (fun02 Heap@@26 x@@15 y@@5 b_24@@3))
)))
(assert (forall ((s@@17 T@Seq_35685) (i@@18 Int) ) (!  (=> (and (<= 0 i@@18) (< i@@18 (|Seq#Length_19583| s@@17))) (|Seq#ContainsTrigger_19583| s@@17 (|Seq#Index_19583| s@@17 i@@18)))
 :qid |stdinbpl.507:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_19583| s@@17 i@@18))
)))
(assert (forall ((s@@18 T@Seq_3587) (i@@19 Int) ) (!  (=> (and (<= 0 i@@19) (< i@@19 (|Seq#Length_3587| s@@18))) (|Seq#ContainsTrigger_3587| s@@18 (|Seq#Index_3587| s@@18 i@@19)))
 :qid |stdinbpl.507:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3587| s@@18 i@@19))
)))
(assert (forall ((s0@@3 T@Seq_35685) (s1@@3 T@Seq_35685) ) (!  (and (=> (= s0@@3 |Seq#Empty_19583|) (= (|Seq#Append_35685| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_19583|) (= (|Seq#Append_35685| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.325:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_35685| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3587) (s1@@4 T@Seq_3587) ) (!  (and (=> (= s0@@4 |Seq#Empty_3587|) (= (|Seq#Append_3587| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3587|) (= (|Seq#Append_3587| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.325:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3587| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_19583| (|Seq#Singleton_19583| t@@3) 0) t@@3)
 :qid |stdinbpl.329:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_19583| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3587| (|Seq#Singleton_3587| t@@4) 0) t@@4)
 :qid |stdinbpl.329:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3587| t@@4))
)))
(assert (forall ((s@@19 T@Seq_35685) ) (! (<= 0 (|Seq#Length_19583| s@@19))
 :qid |stdinbpl.308:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_19583| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3587) ) (! (<= 0 (|Seq#Length_3587| s@@20))
 :qid |stdinbpl.308:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3587| s@@20))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_29497) (ExhaleHeap@@9 T@PolymorphicMapType_29497) (Mask@@27 T@PolymorphicMapType_29518) (pm_f_16@@1 T@Field_19497_90561) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@9 Mask@@27) (=> (and (HasDirectPerm_19497_90625 Mask@@27 null pm_f_16@@1) (IsPredicateField_19497_90652 pm_f_16@@1)) (and (and (and (and (and (forall ((o2_16 T@Ref) (f_40@@5 T@Field_29557_53) ) (!  (=> (select (|PolymorphicMapType_30046_29557_53#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@27) null (PredicateMaskField_19497 pm_f_16@@1))) o2_16 f_40@@5) (= (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@27) o2_16 f_40@@5) (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16 f_40@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16 f_40@@5))
)) (forall ((o2_16@@0 T@Ref) (f_40@@6 T@Field_29570_29571) ) (!  (=> (select (|PolymorphicMapType_30046_29557_29571#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@27) null (PredicateMaskField_19497 pm_f_16@@1))) o2_16@@0 f_40@@6) (= (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@27) o2_16@@0 f_40@@6) (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16@@0 f_40@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16@@0 f_40@@6))
))) (forall ((o2_16@@1 T@Ref) (f_40@@7 T@Field_35635_3709) ) (!  (=> (select (|PolymorphicMapType_30046_29557_3709#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@27) null (PredicateMaskField_19497 pm_f_16@@1))) o2_16@@1 f_40@@7) (= (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@27) o2_16@@1 f_40@@7) (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16@@1 f_40@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16@@1 f_40@@7))
))) (forall ((o2_16@@2 T@Ref) (f_40@@8 T@Field_35682_35687) ) (!  (=> (select (|PolymorphicMapType_30046_29557_35687#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@27) null (PredicateMaskField_19497 pm_f_16@@1))) o2_16@@2 f_40@@8) (= (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@27) o2_16@@2 f_40@@8) (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16@@2 f_40@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16@@2 f_40@@8))
))) (forall ((o2_16@@3 T@Ref) (f_40@@9 T@Field_19497_90561) ) (!  (=> (select (|PolymorphicMapType_30046_29557_90561#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@27) null (PredicateMaskField_19497 pm_f_16@@1))) o2_16@@3 f_40@@9) (= (select (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@27) o2_16@@3 f_40@@9) (select (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16@@3 f_40@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16@@3 f_40@@9))
))) (forall ((o2_16@@4 T@Ref) (f_40@@10 T@Field_19497_90694) ) (!  (=> (select (|PolymorphicMapType_30046_29557_92076#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@27) null (PredicateMaskField_19497 pm_f_16@@1))) o2_16@@4 f_40@@10) (= (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@27) o2_16@@4 f_40@@10) (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16@@4 f_40@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16@@4 f_40@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@9 Mask@@27) (IsPredicateField_19497_90652 pm_f_16@@1))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_29497) (ExhaleHeap@@10 T@PolymorphicMapType_29497) (Mask@@28 T@PolymorphicMapType_29518) (pm_f_16@@2 T@Field_19497_90561) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@10 Mask@@28) (=> (and (HasDirectPerm_19497_90625 Mask@@28 null pm_f_16@@2) (IsWandField_19497_92603 pm_f_16@@2)) (and (and (and (and (and (forall ((o2_16@@5 T@Ref) (f_40@@11 T@Field_29557_53) ) (!  (=> (select (|PolymorphicMapType_30046_29557_53#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@28) null (WandMaskField_19497 pm_f_16@@2))) o2_16@@5 f_40@@11) (= (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@28) o2_16@@5 f_40@@11) (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@5 f_40@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@5 f_40@@11))
)) (forall ((o2_16@@6 T@Ref) (f_40@@12 T@Field_29570_29571) ) (!  (=> (select (|PolymorphicMapType_30046_29557_29571#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@28) null (WandMaskField_19497 pm_f_16@@2))) o2_16@@6 f_40@@12) (= (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@28) o2_16@@6 f_40@@12) (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@6 f_40@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@6 f_40@@12))
))) (forall ((o2_16@@7 T@Ref) (f_40@@13 T@Field_35635_3709) ) (!  (=> (select (|PolymorphicMapType_30046_29557_3709#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@28) null (WandMaskField_19497 pm_f_16@@2))) o2_16@@7 f_40@@13) (= (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@28) o2_16@@7 f_40@@13) (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@7 f_40@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@7 f_40@@13))
))) (forall ((o2_16@@8 T@Ref) (f_40@@14 T@Field_35682_35687) ) (!  (=> (select (|PolymorphicMapType_30046_29557_35687#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@28) null (WandMaskField_19497 pm_f_16@@2))) o2_16@@8 f_40@@14) (= (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@28) o2_16@@8 f_40@@14) (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@8 f_40@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@8 f_40@@14))
))) (forall ((o2_16@@9 T@Ref) (f_40@@15 T@Field_19497_90561) ) (!  (=> (select (|PolymorphicMapType_30046_29557_90561#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@28) null (WandMaskField_19497 pm_f_16@@2))) o2_16@@9 f_40@@15) (= (select (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@28) o2_16@@9 f_40@@15) (select (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@9 f_40@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@9 f_40@@15))
))) (forall ((o2_16@@10 T@Ref) (f_40@@16 T@Field_19497_90694) ) (!  (=> (select (|PolymorphicMapType_30046_29557_92076#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@28) null (WandMaskField_19497 pm_f_16@@2))) o2_16@@10 f_40@@16) (= (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@28) o2_16@@10 f_40@@16) (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@10 f_40@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@10 f_40@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@10 Mask@@28) (IsWandField_19497_92603 pm_f_16@@2))
)))
(assert (forall ((s0@@5 T@Seq_3587) (s1@@5 T@Seq_3587) ) (!  (=> (|Seq#Equal_3587| s0@@5 s1@@5) (and (= (|Seq#Length_3587| s0@@5) (|Seq#Length_3587| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_3587| s0@@5))) (= (|Seq#Index_3587| s0@@5 j@@6) (|Seq#Index_3587| s1@@5 j@@6)))
 :qid |stdinbpl.604:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3587| s0@@5 j@@6))
 :pattern ( (|Seq#Index_3587| s1@@5 j@@6))
))))
 :qid |stdinbpl.601:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3587| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_35685) (s1@@6 T@Seq_35685) ) (!  (=> (|Seq#Equal_19498| s0@@6 s1@@6) (and (= (|Seq#Length_19583| s0@@6) (|Seq#Length_19583| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_19583| s0@@6))) (= (|Seq#Index_19583| s0@@6 j@@7) (|Seq#Index_19583| s1@@6 j@@7)))
 :qid |stdinbpl.604:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_19583| s0@@6 j@@7))
 :pattern ( (|Seq#Index_19583| s1@@6 j@@7))
))))
 :qid |stdinbpl.601:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_19498| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_19583| (|Seq#Singleton_19583| t@@5)) 1)
 :qid |stdinbpl.316:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_19583| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3587| (|Seq#Singleton_3587| t@@6)) 1)
 :qid |stdinbpl.316:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3587| t@@6))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_29497) (Mask@@29 T@PolymorphicMapType_29518) (x@@16 T@Ref) (y@@6 T@Ref) (b_24@@4 Bool) ) (!  (=> (state Heap@@29 Mask@@29) (= (|fun01'| Heap@@29 x@@16 y@@6 b_24@@4) (|fun01#frame| (FrameFragment_21492 (ite b_24@@4 (FrameFragment_3709 (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@29) x@@16 f_7)) (FrameFragment_3709 (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@29) y@@6 f_7)))) x@@16 y@@6 b_24@@4)))
 :qid |stdinbpl.679:15|
 :skolemid |60|
 :pattern ( (state Heap@@29 Mask@@29) (|fun01'| Heap@@29 x@@16 y@@6 b_24@@4))
)))
(assert (forall ((s@@21 T@Seq_35685) (t@@7 T@Seq_35685) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_19583| s@@21))) (= (|Seq#Take_19583| (|Seq#Append_35685| s@@21 t@@7) n@@17) (|Seq#Take_19583| s@@21 n@@17)))
 :qid |stdinbpl.458:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_19583| (|Seq#Append_35685| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3587) (t@@8 T@Seq_3587) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3587| s@@22))) (= (|Seq#Take_3587| (|Seq#Append_3587| s@@22 t@@8) n@@18) (|Seq#Take_3587| s@@22 n@@18)))
 :qid |stdinbpl.458:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3587| (|Seq#Append_3587| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_35685) (i@@20 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@20) (< i@@20 (|Seq#Length_19583| s@@23))) (= (|Seq#Length_19583| (|Seq#Update_19583| s@@23 i@@20 v@@2)) (|Seq#Length_19583| s@@23)))
 :qid |stdinbpl.357:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_19583| (|Seq#Update_19583| s@@23 i@@20 v@@2)))
 :pattern ( (|Seq#Length_19583| s@@23) (|Seq#Update_19583| s@@23 i@@20 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3587) (i@@21 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@21) (< i@@21 (|Seq#Length_3587| s@@24))) (= (|Seq#Length_3587| (|Seq#Update_3587| s@@24 i@@21 v@@3)) (|Seq#Length_3587| s@@24)))
 :qid |stdinbpl.357:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3587| (|Seq#Update_3587| s@@24 i@@21 v@@3)))
 :pattern ( (|Seq#Length_3587| s@@24) (|Seq#Update_3587| s@@24 i@@21 v@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_29497) (o_3 T@Ref) (f_35 T@Field_19497_90561) (v@@4 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@30) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@30) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@30) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@30) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@30) (store (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@30) o_3 f_35 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@30) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@30) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@30) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@30) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@30) (store (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@30) o_3 f_35 v@@4)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_29497) (o_3@@0 T@Ref) (f_35@@0 T@Field_19497_90694) (v@@5 T@PolymorphicMapType_30046) ) (! (succHeap Heap@@31 (PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@31) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@31) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@31) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@31) (store (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@31) o_3@@0 f_35@@0 v@@5) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@31) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@31) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@31) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@31) (store (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@31) o_3@@0 f_35@@0 v@@5) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_29497) (o_3@@1 T@Ref) (f_35@@1 T@Field_35682_35687) (v@@6 T@Seq_35685) ) (! (succHeap Heap@@32 (PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@32) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@32) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@32) (store (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@32) o_3@@1 f_35@@1 v@@6) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@32) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@32) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@32) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@32) (store (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@32) o_3@@1 f_35@@1 v@@6) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@32) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_29497) (o_3@@2 T@Ref) (f_35@@2 T@Field_35635_3709) (v@@7 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@33) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@33) (store (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@33) o_3@@2 f_35@@2 v@@7) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@33) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@33) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@33) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@33) (store (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@33) o_3@@2 f_35@@2 v@@7) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@33) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@33) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_29497) (o_3@@3 T@Ref) (f_35@@3 T@Field_29570_29571) (v@@8 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@34) (store (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@34) o_3@@3 f_35@@3 v@@8) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@34) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@34) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@34) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@34) (store (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@34) o_3@@3 f_35@@3 v@@8) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@34) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@34) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@34) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_29497) (o_3@@4 T@Ref) (f_35@@4 T@Field_29557_53) (v@@9 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_29497 (store (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@35) o_3@@4 f_35@@4 v@@9) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@35) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@35) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@35) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@35) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29497 (store (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@35) o_3@@4 f_35@@4 v@@9) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@35) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@35) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@35) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@35) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@35)))
)))
(assert (forall ((s@@25 T@Seq_35685) (t@@9 T@Seq_35685) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_19583| s@@25))) (= (|Seq#Drop_19583| (|Seq#Append_35685| s@@25 t@@9) n@@19) (|Seq#Append_35685| (|Seq#Drop_19583| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.472:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_19583| (|Seq#Append_35685| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3587) (t@@10 T@Seq_3587) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3587| s@@26))) (= (|Seq#Drop_3587| (|Seq#Append_3587| s@@26 t@@10) n@@20) (|Seq#Append_3587| (|Seq#Drop_3587| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.472:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3587| (|Seq#Append_3587| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_35685) (n@@21 Int) (i@@22 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@22)) (< i@@22 (|Seq#Length_19583| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@22 n@@21) n@@21) i@@22) (= (|Seq#Index_19583| (|Seq#Drop_19583| s@@27 n@@21) (|Seq#Sub| i@@22 n@@21)) (|Seq#Index_19583| s@@27 i@@22))))
 :qid |stdinbpl.408:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_19583| s@@27 n@@21) (|Seq#Index_19583| s@@27 i@@22))
)))
(assert (forall ((s@@28 T@Seq_3587) (n@@22 Int) (i@@23 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@23)) (< i@@23 (|Seq#Length_3587| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@23 n@@22) n@@22) i@@23) (= (|Seq#Index_3587| (|Seq#Drop_3587| s@@28 n@@22) (|Seq#Sub| i@@23 n@@22)) (|Seq#Index_3587| s@@28 i@@23))))
 :qid |stdinbpl.408:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3587| s@@28 n@@22) (|Seq#Index_3587| s@@28 i@@23))
)))
(assert (forall ((s0@@7 T@Seq_35685) (s1@@7 T@Seq_35685) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_19583|)) (not (= s1@@7 |Seq#Empty_19583|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_19583| s0@@7))) (= (|Seq#Index_19583| (|Seq#Append_35685| s0@@7 s1@@7) n@@23) (|Seq#Index_19583| s0@@7 n@@23)))
 :qid |stdinbpl.348:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_19583| (|Seq#Append_35685| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_19583| s0@@7 n@@23) (|Seq#Append_35685| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3587) (s1@@8 T@Seq_3587) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3587|)) (not (= s1@@8 |Seq#Empty_3587|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3587| s0@@8))) (= (|Seq#Index_3587| (|Seq#Append_3587| s0@@8 s1@@8) n@@24) (|Seq#Index_3587| s0@@8 n@@24)))
 :qid |stdinbpl.348:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3587| (|Seq#Append_3587| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3587| s0@@8 n@@24) (|Seq#Append_3587| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_35685) (s1@@9 T@Seq_35685) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_19583|)) (not (= s1@@9 |Seq#Empty_19583|))) (<= 0 m)) (< m (|Seq#Length_19583| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_19583| s0@@9)) (|Seq#Length_19583| s0@@9)) m) (= (|Seq#Index_19583| (|Seq#Append_35685| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_19583| s0@@9))) (|Seq#Index_19583| s1@@9 m))))
 :qid |stdinbpl.353:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_19583| s1@@9 m) (|Seq#Append_35685| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3587) (s1@@10 T@Seq_3587) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3587|)) (not (= s1@@10 |Seq#Empty_3587|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3587| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3587| s0@@10)) (|Seq#Length_3587| s0@@10)) m@@0) (= (|Seq#Index_3587| (|Seq#Append_3587| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3587| s0@@10))) (|Seq#Index_3587| s1@@10 m@@0))))
 :qid |stdinbpl.353:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3587| s1@@10 m@@0) (|Seq#Append_3587| s0@@10 s1@@10))
)))
(assert (forall ((o_3@@5 T@Ref) (f_8 T@Field_29570_29571) (Heap@@36 T@PolymorphicMapType_29497) ) (!  (=> (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@36) o_3@@5 $allocated) (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@36) (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@36) o_3@@5 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@36) o_3@@5 f_8))
)))
(assert (forall ((s@@29 T@Seq_35685) (x@@17 T@Ref) (i@@24 Int) ) (!  (=> (and (and (<= 0 i@@24) (< i@@24 (|Seq#Length_19583| s@@29))) (= (|Seq#Index_19583| s@@29 i@@24) x@@17)) (|Seq#Contains_35685| s@@29 x@@17))
 :qid |stdinbpl.505:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_35685| s@@29 x@@17) (|Seq#Index_19583| s@@29 i@@24))
)))
(assert (forall ((s@@30 T@Seq_3587) (x@@18 Int) (i@@25 Int) ) (!  (=> (and (and (<= 0 i@@25) (< i@@25 (|Seq#Length_3587| s@@30))) (= (|Seq#Index_3587| s@@30 i@@25) x@@18)) (|Seq#Contains_3587| s@@30 x@@18))
 :qid |stdinbpl.505:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3587| s@@30 x@@18) (|Seq#Index_3587| s@@30 i@@25))
)))
(assert (forall ((s0@@11 T@Seq_35685) (s1@@11 T@Seq_35685) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_19498| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_19498| s0@@11 s1@@11))) (not (= (|Seq#Length_19583| s0@@11) (|Seq#Length_19583| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_19498| s0@@11 s1@@11))) (= (|Seq#Length_19583| s0@@11) (|Seq#Length_19583| s1@@11))) (= (|Seq#SkolemDiff_35685| s0@@11 s1@@11) (|Seq#SkolemDiff_35685| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_35685| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_35685| s0@@11 s1@@11) (|Seq#Length_19583| s0@@11))) (not (= (|Seq#Index_19583| s0@@11 (|Seq#SkolemDiff_35685| s0@@11 s1@@11)) (|Seq#Index_19583| s1@@11 (|Seq#SkolemDiff_35685| s0@@11 s1@@11))))))
 :qid |stdinbpl.609:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_19498| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3587) (s1@@12 T@Seq_3587) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3587| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3587| s0@@12 s1@@12))) (not (= (|Seq#Length_3587| s0@@12) (|Seq#Length_3587| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3587| s0@@12 s1@@12))) (= (|Seq#Length_3587| s0@@12) (|Seq#Length_3587| s1@@12))) (= (|Seq#SkolemDiff_3587| s0@@12 s1@@12) (|Seq#SkolemDiff_3587| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3587| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3587| s0@@12 s1@@12) (|Seq#Length_3587| s0@@12))) (not (= (|Seq#Index_3587| s0@@12 (|Seq#SkolemDiff_3587| s0@@12 s1@@12)) (|Seq#Index_3587| s1@@12 (|Seq#SkolemDiff_3587| s0@@12 s1@@12))))))
 :qid |stdinbpl.609:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3587| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_19497_90561) (v_1@@0 T@FrameType) (q T@Field_19497_90561) (w@@0 T@FrameType) (r T@Field_19497_90561) (u T@FrameType) ) (!  (=> (and (InsidePredicate_29557_29557 p@@1 v_1@@0 q w@@0) (InsidePredicate_29557_29557 q w@@0 r u)) (InsidePredicate_29557_29557 p@@1 v_1@@0 r u))
 :qid |stdinbpl.276:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29557_29557 p@@1 v_1@@0 q w@@0) (InsidePredicate_29557_29557 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_35685) ) (!  (=> (= (|Seq#Length_19583| s@@31) 0) (= s@@31 |Seq#Empty_19583|))
 :qid |stdinbpl.312:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_19583| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3587) ) (!  (=> (= (|Seq#Length_3587| s@@32) 0) (= s@@32 |Seq#Empty_3587|))
 :qid |stdinbpl.312:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3587| s@@32))
)))
(assert (forall ((s@@33 T@Seq_35685) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_19583| s@@33 n@@25) |Seq#Empty_19583|))
 :qid |stdinbpl.488:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_19583| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3587) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3587| s@@34 n@@26) |Seq#Empty_3587|))
 :qid |stdinbpl.488:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3587| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_29497) (Heap1Heap@@2 T@PolymorphicMapType_29497) (xs@@6 T@Seq_35685) (i@@26 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26))) (and (< (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26)) (|Seq#Length_19583| xs@@6)) (= (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26)) i@@26))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26))) (and (< (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26)) (|Seq#Length_19583| xs@@6)) (= (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26)) i@@26))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26))) (and (< (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26)) (|Seq#Length_19583| xs@@6)) (= (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26)) i@@26))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap2Heap@@2) (|Seq#Index_19583| xs@@6 (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26))) f_7) (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap1Heap@@2) (|Seq#Index_19583| xs@@6 (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26))) f_7)))) (= (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26)))
 :qid |stdinbpl.807:15|
 :skolemid |67|
 :pattern ( (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |fun01#definedness|)
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
 (=> (= (ControlFlow 0 0) 5) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
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
(declare-sort T@Field_29557_53 0)
(declare-sort T@Field_29570_29571 0)
(declare-sort T@Field_35635_3709 0)
(declare-sort T@Field_35682_35687 0)
(declare-sort T@Seq_35685 0)
(declare-sort T@Field_19497_90694 0)
(declare-sort T@Field_19497_90561 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_29518 0)) (((PolymorphicMapType_29518 (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| (Array T@Ref T@Field_35635_3709 Real)) (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| (Array T@Ref T@Field_35682_35687 Real)) (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| (Array T@Ref T@Field_29557_53 Real)) (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| (Array T@Ref T@Field_29570_29571 Real)) (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| (Array T@Ref T@Field_19497_90561 Real)) (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| (Array T@Ref T@Field_19497_90694 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_30046 0)) (((PolymorphicMapType_30046 (|PolymorphicMapType_30046_29557_53#PolymorphicMapType_30046| (Array T@Ref T@Field_29557_53 Bool)) (|PolymorphicMapType_30046_29557_29571#PolymorphicMapType_30046| (Array T@Ref T@Field_29570_29571 Bool)) (|PolymorphicMapType_30046_29557_3709#PolymorphicMapType_30046| (Array T@Ref T@Field_35635_3709 Bool)) (|PolymorphicMapType_30046_29557_35687#PolymorphicMapType_30046| (Array T@Ref T@Field_35682_35687 Bool)) (|PolymorphicMapType_30046_29557_90561#PolymorphicMapType_30046| (Array T@Ref T@Field_19497_90561 Bool)) (|PolymorphicMapType_30046_29557_92076#PolymorphicMapType_30046| (Array T@Ref T@Field_19497_90694 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_29497 0)) (((PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| (Array T@Ref T@Field_29557_53 Bool)) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| (Array T@Ref T@Field_29570_29571 T@Ref)) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| (Array T@Ref T@Field_35635_3709 Int)) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| (Array T@Ref T@Field_35682_35687 T@Seq_35685)) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| (Array T@Ref T@Field_19497_90694 T@PolymorphicMapType_30046)) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| (Array T@Ref T@Field_19497_90561 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_29557_53)
(declare-fun f_7 () T@Field_35635_3709)
(declare-fun elems () T@Field_35682_35687)
(declare-fun |Seq#Length_19583| (T@Seq_35685) Int)
(declare-fun |Seq#Drop_19583| (T@Seq_35685 Int) T@Seq_35685)
(declare-sort T@Seq_3587 0)
(declare-fun |Seq#Length_3587| (T@Seq_3587) Int)
(declare-fun |Seq#Drop_3587| (T@Seq_3587 Int) T@Seq_3587)
(declare-fun state (T@PolymorphicMapType_29497 T@PolymorphicMapType_29518) Bool)
(declare-fun |fun02'| (T@PolymorphicMapType_29497 T@Ref T@Ref Bool) Int)
(declare-fun |fun02#frame| (T@FrameType T@Ref T@Ref Bool) Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun FullPerm () Real)
(declare-fun NoPerm () Real)
(declare-fun FrameFragment_3709 (Int) T@FrameType)
(declare-fun succHeap (T@PolymorphicMapType_29497 T@PolymorphicMapType_29497) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_29497 T@PolymorphicMapType_29497) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_29518) Bool)
(declare-fun |fun01'| (T@PolymorphicMapType_29497 T@Ref T@Ref Bool) Int)
(declare-fun dummyFunction_3962 (Int) Bool)
(declare-fun |fun01#triggerStateless| (T@Ref T@Ref Bool) Int)
(declare-fun |fun02#triggerStateless| (T@Ref T@Ref Bool) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_30046)
(declare-fun |fun01qp'| (T@PolymorphicMapType_29497 T@Seq_35685 Int) Int)
(declare-fun |fun01qp#triggerStateless| (T@Seq_35685 Int) Int)
(declare-fun |fun02qp'| (T@PolymorphicMapType_29497 T@Seq_35685 Int) Int)
(declare-fun |fun02qp#triggerStateless| (T@Seq_35685 Int) Int)
(declare-fun |fun03qp'| (T@PolymorphicMapType_29497 T@Ref Int) Int)
(declare-fun |fun03qp#triggerStateless| (T@Ref Int) Int)
(declare-fun |fun04qp'| (T@PolymorphicMapType_29497 T@Ref Int) Int)
(declare-fun |fun04qp#triggerStateless| (T@Ref Int) Int)
(declare-fun |Seq#Index_19583| (T@Seq_35685 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3587| (T@Seq_3587 Int) Int)
(declare-fun |Seq#Empty_19583| () T@Seq_35685)
(declare-fun |Seq#Empty_3587| () T@Seq_3587)
(declare-fun |Seq#Update_19583| (T@Seq_35685 Int T@Ref) T@Seq_35685)
(declare-fun |Seq#Update_3587| (T@Seq_3587 Int Int) T@Seq_3587)
(declare-fun |Seq#Take_19583| (T@Seq_35685 Int) T@Seq_35685)
(declare-fun |Seq#Take_3587| (T@Seq_3587 Int) T@Seq_3587)
(declare-fun |Seq#Contains_3587| (T@Seq_3587 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3587)
(declare-fun |Seq#Contains_35685| (T@Seq_35685 T@Ref) Bool)
(declare-fun |Seq#Skolem_35685| (T@Seq_35685 T@Ref) Int)
(declare-fun |Seq#Skolem_3587| (T@Seq_3587 Int) Int)
(declare-fun |fun03qp#frame| (T@FrameType T@Ref Int) Int)
(declare-fun FrameFragment_42927 (T@Seq_35685) T@FrameType)
(declare-fun |fun03qp#condqp3| (T@PolymorphicMapType_29497 T@Ref Int) Int)
(declare-fun |fun04qp#frame| (T@FrameType T@Ref Int) Int)
(declare-fun |fun04qp#condqp4| (T@PolymorphicMapType_29497 T@Ref Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_29497 T@PolymorphicMapType_29497 T@PolymorphicMapType_29518) Bool)
(declare-fun IsPredicateField_19497_90652 (T@Field_19497_90561) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_19497 (T@Field_19497_90561) T@Field_19497_90694)
(declare-fun HasDirectPerm_19497_90625 (T@PolymorphicMapType_29518 T@Ref T@Field_19497_90561) Bool)
(declare-fun IsWandField_19497_92603 (T@Field_19497_90561) Bool)
(declare-fun WandMaskField_19497 (T@Field_19497_90561) T@Field_19497_90694)
(declare-fun |fun02qp#condqp2| (T@PolymorphicMapType_29497 T@Seq_35685 Int) Int)
(declare-fun |sk_fun02qp#condqp2| (Int Int) Int)
(declare-fun |Seq#Singleton_19583| (T@Ref) T@Seq_35685)
(declare-fun |Seq#Singleton_3587| (Int) T@Seq_3587)
(declare-fun |Seq#Append_35685| (T@Seq_35685 T@Seq_35685) T@Seq_35685)
(declare-fun |Seq#Append_3587| (T@Seq_3587 T@Seq_3587) T@Seq_3587)
(declare-fun dummyHeap () T@PolymorphicMapType_29497)
(declare-fun ZeroMask () T@PolymorphicMapType_29518)
(declare-fun InsidePredicate_29557_29557 (T@Field_19497_90561 T@FrameType T@Field_19497_90561 T@FrameType) Bool)
(declare-fun IsPredicateField_19495_3709 (T@Field_35635_3709) Bool)
(declare-fun IsWandField_19495_3709 (T@Field_35635_3709) Bool)
(declare-fun IsPredicateField_19497_35709 (T@Field_35682_35687) Bool)
(declare-fun IsWandField_19497_35735 (T@Field_35682_35687) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_19495_96737 (T@Field_19497_90694) Bool)
(declare-fun IsWandField_19495_96753 (T@Field_19497_90694) Bool)
(declare-fun IsPredicateField_19495_29571 (T@Field_29570_29571) Bool)
(declare-fun IsWandField_19495_29571 (T@Field_29570_29571) Bool)
(declare-fun IsPredicateField_19495_53 (T@Field_29557_53) Bool)
(declare-fun IsWandField_19495_53 (T@Field_29557_53) Bool)
(declare-fun HasDirectPerm_19497_97274 (T@PolymorphicMapType_29518 T@Ref T@Field_19497_90694) Bool)
(declare-fun HasDirectPerm_19497_3709 (T@PolymorphicMapType_29518 T@Ref T@Field_35635_3709) Bool)
(declare-fun HasDirectPerm_19497_29571 (T@PolymorphicMapType_29518 T@Ref T@Field_29570_29571) Bool)
(declare-fun HasDirectPerm_19497_53 (T@PolymorphicMapType_29518 T@Ref T@Field_29557_53) Bool)
(declare-fun HasDirectPerm_19497_44302 (T@PolymorphicMapType_29518 T@Ref T@Field_35682_35687) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun fun01qp (T@PolymorphicMapType_29497 T@Seq_35685 Int) Int)
(declare-fun fun02qp (T@PolymorphicMapType_29497 T@Seq_35685 Int) Int)
(declare-fun fun03qp (T@PolymorphicMapType_29497 T@Ref Int) Int)
(declare-fun fun04qp (T@PolymorphicMapType_29497 T@Ref Int) Int)
(declare-fun |fun01qp#frame| (T@FrameType T@Seq_35685 Int) Int)
(declare-fun |fun01qp#condqp1| (T@PolymorphicMapType_29497 T@Seq_35685 Int) Int)
(declare-fun |fun02qp#frame| (T@FrameType T@Seq_35685 Int) Int)
(declare-fun |sk_fun04qp#condqp4| (Int Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_29518 T@PolymorphicMapType_29518 T@PolymorphicMapType_29518) Bool)
(declare-fun |sk_fun03qp#condqp3| (Int Int) Int)
(declare-fun |Seq#Equal_3587| (T@Seq_3587 T@Seq_3587) Bool)
(declare-fun |Seq#Equal_19498| (T@Seq_35685 T@Seq_35685) Bool)
(declare-fun fun01 (T@PolymorphicMapType_29497 T@Ref T@Ref Bool) Int)
(declare-fun fun02 (T@PolymorphicMapType_29497 T@Ref T@Ref Bool) Int)
(declare-fun |Seq#ContainsTrigger_19583| (T@Seq_35685 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3587| (T@Seq_3587 Int) Bool)
(declare-fun |fun01#frame| (T@FrameType T@Ref T@Ref Bool) Int)
(declare-fun FrameFragment_21492 (T@FrameType) T@FrameType)
(declare-fun |Seq#SkolemDiff_35685| (T@Seq_35685 T@Seq_35685) Int)
(declare-fun |Seq#SkolemDiff_3587| (T@Seq_3587 T@Seq_3587) Int)
(declare-fun |sk_fun01qp#condqp1| (Int Int) Int)
(assert (forall ((s T@Seq_35685) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_19583| s)) (= (|Seq#Length_19583| (|Seq#Drop_19583| s n)) (- (|Seq#Length_19583| s) n))) (=> (< (|Seq#Length_19583| s) n) (= (|Seq#Length_19583| (|Seq#Drop_19583| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_19583| (|Seq#Drop_19583| s n)) (|Seq#Length_19583| s))))
 :qid |stdinbpl.383:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_19583| (|Seq#Drop_19583| s n)))
 :pattern ( (|Seq#Length_19583| s) (|Seq#Drop_19583| s n))
)))
(assert (forall ((s@@0 T@Seq_3587) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3587| s@@0)) (= (|Seq#Length_3587| (|Seq#Drop_3587| s@@0 n@@0)) (- (|Seq#Length_3587| s@@0) n@@0))) (=> (< (|Seq#Length_3587| s@@0) n@@0) (= (|Seq#Length_3587| (|Seq#Drop_3587| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3587| (|Seq#Drop_3587| s@@0 n@@0)) (|Seq#Length_3587| s@@0))))
 :qid |stdinbpl.383:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3587| (|Seq#Drop_3587| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3587| s@@0) (|Seq#Drop_3587| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_29497) (Mask T@PolymorphicMapType_29518) (x T@Ref) (y T@Ref) (b_24 Bool) ) (!  (=> (state Heap Mask) (= (|fun02'| Heap x y b_24) (|fun02#frame| (CombineFrames (ConditionalFrame (ite b_24 FullPerm NoPerm) (FrameFragment_3709 (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap) x f_7))) (ConditionalFrame (ite  (not b_24) FullPerm NoPerm) (FrameFragment_3709 (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap) y f_7)))) x y b_24)))
 :qid |stdinbpl.737:15|
 :skolemid |63|
 :pattern ( (state Heap Mask) (|fun02'| Heap x y b_24))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_29497) (Heap1 T@PolymorphicMapType_29497) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_29497) (Mask@@0 T@PolymorphicMapType_29518) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_29497) (Heap1@@0 T@PolymorphicMapType_29497) (Heap2 T@PolymorphicMapType_29497) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_29497) (x@@0 T@Ref) (y@@0 T@Ref) (b_24@@0 Bool) ) (! (dummyFunction_3962 (|fun01#triggerStateless| x@@0 y@@0 b_24@@0))
 :qid |stdinbpl.672:15|
 :skolemid |59|
 :pattern ( (|fun01'| Heap@@1 x@@0 y@@0 b_24@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_29497) (x@@1 T@Ref) (y@@1 T@Ref) (b_24@@1 Bool) ) (! (dummyFunction_3962 (|fun02#triggerStateless| x@@1 y@@1 b_24@@1))
 :qid |stdinbpl.730:15|
 :skolemid |62|
 :pattern ( (|fun02'| Heap@@2 x@@1 y@@1 b_24@@1))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_19497_90694) ) (!  (not (select (|PolymorphicMapType_30046_29557_92076#PolymorphicMapType_30046| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30046_29557_92076#PolymorphicMapType_30046| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_19497_90561) ) (!  (not (select (|PolymorphicMapType_30046_29557_90561#PolymorphicMapType_30046| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30046_29557_90561#PolymorphicMapType_30046| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_35682_35687) ) (!  (not (select (|PolymorphicMapType_30046_29557_35687#PolymorphicMapType_30046| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30046_29557_35687#PolymorphicMapType_30046| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_35635_3709) ) (!  (not (select (|PolymorphicMapType_30046_29557_3709#PolymorphicMapType_30046| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30046_29557_3709#PolymorphicMapType_30046| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_29570_29571) ) (!  (not (select (|PolymorphicMapType_30046_29557_29571#PolymorphicMapType_30046| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30046_29557_29571#PolymorphicMapType_30046| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_29557_53) ) (!  (not (select (|PolymorphicMapType_30046_29557_53#PolymorphicMapType_30046| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30046_29557_53#PolymorphicMapType_30046| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_29497) (xs T@Seq_35685) (i Int) ) (! (dummyFunction_3962 (|fun01qp#triggerStateless| xs i))
 :qid |stdinbpl.790:15|
 :skolemid |65|
 :pattern ( (|fun01qp'| Heap@@3 xs i))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_29497) (xs@@0 T@Seq_35685) (i@@0 Int) ) (! (dummyFunction_3962 (|fun02qp#triggerStateless| xs@@0 i@@0))
 :qid |stdinbpl.894:15|
 :skolemid |75|
 :pattern ( (|fun02qp'| Heap@@4 xs@@0 i@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_29497) (x@@2 T@Ref) (i@@1 Int) ) (! (dummyFunction_3962 (|fun03qp#triggerStateless| x@@2 i@@1))
 :qid |stdinbpl.1004:15|
 :skolemid |86|
 :pattern ( (|fun03qp'| Heap@@5 x@@2 i@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_29497) (x@@3 T@Ref) (i@@2 Int) ) (! (dummyFunction_3962 (|fun04qp#triggerStateless| x@@3 i@@2))
 :qid |stdinbpl.1125:15|
 :skolemid |96|
 :pattern ( (|fun04qp'| Heap@@6 x@@3 i@@2))
)))
(assert (forall ((s@@1 T@Seq_35685) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_19583| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_19583| (|Seq#Drop_19583| s@@1 n@@1) j) (|Seq#Index_19583| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.404:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_19583| (|Seq#Drop_19583| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3587) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3587| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3587| (|Seq#Drop_3587| s@@2 n@@2) j@@0) (|Seq#Index_3587| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.404:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3587| (|Seq#Drop_3587| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_19583| |Seq#Empty_19583|) 0))
(assert (= (|Seq#Length_3587| |Seq#Empty_3587|) 0))
(assert (forall ((s@@3 T@Seq_35685) (i@@3 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_19583| s@@3))) (and (=> (= i@@3 n@@3) (= (|Seq#Index_19583| (|Seq#Update_19583| s@@3 i@@3 v) n@@3) v)) (=> (not (= i@@3 n@@3)) (= (|Seq#Index_19583| (|Seq#Update_19583| s@@3 i@@3 v) n@@3) (|Seq#Index_19583| s@@3 n@@3)))))
 :qid |stdinbpl.359:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_19583| (|Seq#Update_19583| s@@3 i@@3 v) n@@3))
 :pattern ( (|Seq#Index_19583| s@@3 n@@3) (|Seq#Update_19583| s@@3 i@@3 v))
)))
(assert (forall ((s@@4 T@Seq_3587) (i@@4 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3587| s@@4))) (and (=> (= i@@4 n@@4) (= (|Seq#Index_3587| (|Seq#Update_3587| s@@4 i@@4 v@@0) n@@4) v@@0)) (=> (not (= i@@4 n@@4)) (= (|Seq#Index_3587| (|Seq#Update_3587| s@@4 i@@4 v@@0) n@@4) (|Seq#Index_3587| s@@4 n@@4)))))
 :qid |stdinbpl.359:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3587| (|Seq#Update_3587| s@@4 i@@4 v@@0) n@@4))
 :pattern ( (|Seq#Index_3587| s@@4 n@@4) (|Seq#Update_3587| s@@4 i@@4 v@@0))
)))
(assert (forall ((s@@5 T@Seq_35685) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_19583| s@@5)) (= (|Seq#Length_19583| (|Seq#Take_19583| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_19583| s@@5) n@@5) (= (|Seq#Length_19583| (|Seq#Take_19583| s@@5 n@@5)) (|Seq#Length_19583| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_19583| (|Seq#Take_19583| s@@5 n@@5)) 0)))
 :qid |stdinbpl.370:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_19583| (|Seq#Take_19583| s@@5 n@@5)))
 :pattern ( (|Seq#Take_19583| s@@5 n@@5) (|Seq#Length_19583| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3587) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3587| s@@6)) (= (|Seq#Length_3587| (|Seq#Take_3587| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3587| s@@6) n@@6) (= (|Seq#Length_3587| (|Seq#Take_3587| s@@6 n@@6)) (|Seq#Length_3587| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3587| (|Seq#Take_3587| s@@6 n@@6)) 0)))
 :qid |stdinbpl.370:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3587| (|Seq#Take_3587| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3587| s@@6 n@@6) (|Seq#Length_3587| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3587| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.644:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3587| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_35685) (x@@4 T@Ref) ) (!  (=> (|Seq#Contains_35685| s@@7 x@@4) (and (and (<= 0 (|Seq#Skolem_35685| s@@7 x@@4)) (< (|Seq#Skolem_35685| s@@7 x@@4) (|Seq#Length_19583| s@@7))) (= (|Seq#Index_19583| s@@7 (|Seq#Skolem_35685| s@@7 x@@4)) x@@4)))
 :qid |stdinbpl.502:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_35685| s@@7 x@@4))
)))
(assert (forall ((s@@8 T@Seq_3587) (x@@5 Int) ) (!  (=> (|Seq#Contains_3587| s@@8 x@@5) (and (and (<= 0 (|Seq#Skolem_3587| s@@8 x@@5)) (< (|Seq#Skolem_3587| s@@8 x@@5) (|Seq#Length_3587| s@@8))) (= (|Seq#Index_3587| s@@8 (|Seq#Skolem_3587| s@@8 x@@5)) x@@5)))
 :qid |stdinbpl.502:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3587| s@@8 x@@5))
)))
(assert (forall ((s@@9 T@Seq_35685) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_19583| s@@9 n@@7) s@@9))
 :qid |stdinbpl.486:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_19583| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3587) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3587| s@@10 n@@8) s@@10))
 :qid |stdinbpl.486:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3587| s@@10 n@@8))
)))
(assert (forall ((i@@5 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@5 j@@1) (- i@@5 j@@1))
 :qid |stdinbpl.339:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@5 j@@1))
)))
(assert (forall ((i@@6 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@6 j@@2) (+ i@@6 j@@2))
 :qid |stdinbpl.337:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@6 j@@2))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_29497) (Mask@@1 T@PolymorphicMapType_29518) (x@@6 T@Ref) (i@@7 Int) ) (!  (=> (state Heap@@7 Mask@@1) (= (|fun03qp'| Heap@@7 x@@6 i@@7) (|fun03qp#frame| (CombineFrames (FrameFragment_42927 (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@7) x@@6 elems)) (FrameFragment_3709 (|fun03qp#condqp3| Heap@@7 x@@6 i@@7))) x@@6 i@@7)))
 :qid |stdinbpl.1011:15|
 :skolemid |87|
 :pattern ( (state Heap@@7 Mask@@1) (|fun03qp'| Heap@@7 x@@6 i@@7))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_29497) (Mask@@2 T@PolymorphicMapType_29518) (x@@7 T@Ref) (i@@8 Int) ) (!  (=> (state Heap@@8 Mask@@2) (= (|fun04qp'| Heap@@8 x@@7 i@@8) (|fun04qp#frame| (CombineFrames (FrameFragment_42927 (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@8) x@@7 elems)) (FrameFragment_3709 (|fun04qp#condqp4| Heap@@8 x@@7 i@@8))) x@@7 i@@8)))
 :qid |stdinbpl.1132:15|
 :skolemid |97|
 :pattern ( (state Heap@@8 Mask@@2) (|fun04qp'| Heap@@8 x@@7 i@@8))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_29497) (ExhaleHeap T@PolymorphicMapType_29497) (Mask@@3 T@PolymorphicMapType_29518) (pm_f_16 T@Field_19497_90561) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_19497_90625 Mask@@3 null pm_f_16) (IsPredicateField_19497_90652 pm_f_16)) (= (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@9) null (PredicateMaskField_19497 pm_f_16)) (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| ExhaleHeap) null (PredicateMaskField_19497 pm_f_16)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap Mask@@3) (IsPredicateField_19497_90652 pm_f_16) (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| ExhaleHeap) null (PredicateMaskField_19497 pm_f_16)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_29497) (ExhaleHeap@@0 T@PolymorphicMapType_29497) (Mask@@4 T@PolymorphicMapType_29518) (pm_f_16@@0 T@Field_19497_90561) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_19497_90625 Mask@@4 null pm_f_16@@0) (IsWandField_19497_92603 pm_f_16@@0)) (= (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@10) null (WandMaskField_19497 pm_f_16@@0)) (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| ExhaleHeap@@0) null (WandMaskField_19497 pm_f_16@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@0 Mask@@4) (IsWandField_19497_92603 pm_f_16@@0) (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| ExhaleHeap@@0) null (WandMaskField_19497 pm_f_16@@0)))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_29497) (Heap1Heap T@PolymorphicMapType_29497) (xs@@1 T@Seq_35685) (i@@9 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9))) (< (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9)) (|Seq#Length_19583| xs@@1))) (< NoPerm (ite (= (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9)) i@@9) FullPerm NoPerm)))  (and (and (<= 0 (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9))) (< (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9)) (|Seq#Length_19583| xs@@1))) (< NoPerm (ite (= (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9)) i@@9) FullPerm NoPerm)))) (=> (and (and (<= 0 (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9))) (< (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9)) (|Seq#Length_19583| xs@@1))) (< NoPerm (ite (= (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9)) i@@9) FullPerm NoPerm))) (= (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap2Heap) (|Seq#Index_19583| xs@@1 (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9))) f_7) (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap1Heap) (|Seq#Index_19583| xs@@1 (|sk_fun02qp#condqp2| (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9))) f_7)))) (= (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9)))
 :qid |stdinbpl.911:15|
 :skolemid |77|
 :pattern ( (|fun02qp#condqp2| Heap2Heap xs@@1 i@@9) (|fun02qp#condqp2| Heap1Heap xs@@1 i@@9) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((x@@8 T@Ref) (y@@2 T@Ref) ) (! (= (|Seq#Contains_35685| (|Seq#Singleton_19583| x@@8) y@@2) (= x@@8 y@@2))
 :qid |stdinbpl.627:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_35685| (|Seq#Singleton_19583| x@@8) y@@2))
)))
(assert (forall ((x@@9 Int) (y@@3 Int) ) (! (= (|Seq#Contains_3587| (|Seq#Singleton_3587| x@@9) y@@3) (= x@@9 y@@3))
 :qid |stdinbpl.627:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3587| (|Seq#Singleton_3587| x@@9) y@@3))
)))
(assert (forall ((s@@11 T@Seq_35685) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_19583| s@@11))) (= (|Seq#Index_19583| (|Seq#Take_19583| s@@11 n@@9) j@@3) (|Seq#Index_19583| s@@11 j@@3)))
 :qid |stdinbpl.378:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_19583| (|Seq#Take_19583| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_19583| s@@11 j@@3) (|Seq#Take_19583| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3587) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3587| s@@12))) (= (|Seq#Index_3587| (|Seq#Take_3587| s@@12 n@@10) j@@4) (|Seq#Index_3587| s@@12 j@@4)))
 :qid |stdinbpl.378:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3587| (|Seq#Take_3587| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3587| s@@12 j@@4) (|Seq#Take_3587| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_35685) (t T@Seq_35685) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_19583| s@@13))) (< n@@11 (|Seq#Length_19583| (|Seq#Append_35685| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_19583| s@@13)) (|Seq#Length_19583| s@@13)) n@@11) (= (|Seq#Take_19583| (|Seq#Append_35685| s@@13 t) n@@11) (|Seq#Append_35685| s@@13 (|Seq#Take_19583| t (|Seq#Sub| n@@11 (|Seq#Length_19583| s@@13)))))))
 :qid |stdinbpl.463:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_19583| (|Seq#Append_35685| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3587) (t@@0 T@Seq_3587) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3587| s@@14))) (< n@@12 (|Seq#Length_3587| (|Seq#Append_3587| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3587| s@@14)) (|Seq#Length_3587| s@@14)) n@@12) (= (|Seq#Take_3587| (|Seq#Append_3587| s@@14 t@@0) n@@12) (|Seq#Append_3587| s@@14 (|Seq#Take_3587| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3587| s@@14)))))))
 :qid |stdinbpl.463:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3587| (|Seq#Append_3587| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_29497) (ExhaleHeap@@1 T@PolymorphicMapType_29497) (Mask@@5 T@PolymorphicMapType_29518) (o_34 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@5) (=> (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@11) o_34 $allocated) (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| ExhaleHeap@@1) o_34 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@5) (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| ExhaleHeap@@1) o_34 $allocated))
)))
(assert (forall ((p T@Field_19497_90561) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_29557_29557 p v_1 p w))
 :qid |stdinbpl.281:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_29557_29557 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_35685) (s1 T@Seq_35685) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_19583|)) (not (= s1 |Seq#Empty_19583|))) (<= (|Seq#Length_19583| s0) n@@13)) (< n@@13 (|Seq#Length_19583| (|Seq#Append_35685| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_19583| s0)) (|Seq#Length_19583| s0)) n@@13) (= (|Seq#Index_19583| (|Seq#Append_35685| s0 s1) n@@13) (|Seq#Index_19583| s1 (|Seq#Sub| n@@13 (|Seq#Length_19583| s0))))))
 :qid |stdinbpl.350:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_19583| (|Seq#Append_35685| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3587) (s1@@0 T@Seq_3587) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3587|)) (not (= s1@@0 |Seq#Empty_3587|))) (<= (|Seq#Length_3587| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3587| (|Seq#Append_3587| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3587| s0@@0)) (|Seq#Length_3587| s0@@0)) n@@14) (= (|Seq#Index_3587| (|Seq#Append_3587| s0@@0 s1@@0) n@@14) (|Seq#Index_3587| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3587| s0@@0))))))
 :qid |stdinbpl.350:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3587| (|Seq#Append_3587| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_19495_3709 f_7)))
(assert  (not (IsWandField_19495_3709 f_7)))
(assert  (not (IsPredicateField_19497_35709 elems)))
(assert  (not (IsWandField_19497_35735 elems)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_29497) (ExhaleHeap@@2 T@PolymorphicMapType_29497) (Mask@@6 T@PolymorphicMapType_29518) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@6) (succHeap Heap@@12 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_29518) (o_2@@5 T@Ref) (f_4@@5 T@Field_19497_90694) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| Mask@@7) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_19495_96737 f_4@@5))) (not (IsWandField_19495_96753 f_4@@5))) (<= (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| Mask@@7) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| Mask@@7) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_29518) (o_2@@6 T@Ref) (f_4@@6 T@Field_19497_90561) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| Mask@@8) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_19497_90652 f_4@@6))) (not (IsWandField_19497_92603 f_4@@6))) (<= (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| Mask@@8) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| Mask@@8) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_29518) (o_2@@7 T@Ref) (f_4@@7 T@Field_29570_29571) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| Mask@@9) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_19495_29571 f_4@@7))) (not (IsWandField_19495_29571 f_4@@7))) (<= (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| Mask@@9) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| Mask@@9) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_29518) (o_2@@8 T@Ref) (f_4@@8 T@Field_29557_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| Mask@@10) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_19495_53 f_4@@8))) (not (IsWandField_19495_53 f_4@@8))) (<= (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| Mask@@10) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| Mask@@10) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_29518) (o_2@@9 T@Ref) (f_4@@9 T@Field_35682_35687) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| Mask@@11) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_19497_35709 f_4@@9))) (not (IsWandField_19497_35735 f_4@@9))) (<= (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| Mask@@11) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| Mask@@11) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_29518) (o_2@@10 T@Ref) (f_4@@10 T@Field_35635_3709) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| Mask@@12) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_19495_3709 f_4@@10))) (not (IsWandField_19495_3709 f_4@@10))) (<= (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| Mask@@12) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| Mask@@12) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_29518) (o_2@@11 T@Ref) (f_4@@11 T@Field_19497_90694) ) (! (= (HasDirectPerm_19497_97274 Mask@@13 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| Mask@@13) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19497_97274 Mask@@13 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_29518) (o_2@@12 T@Ref) (f_4@@12 T@Field_19497_90561) ) (! (= (HasDirectPerm_19497_90625 Mask@@14 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| Mask@@14) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19497_90625 Mask@@14 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_29518) (o_2@@13 T@Ref) (f_4@@13 T@Field_35635_3709) ) (! (= (HasDirectPerm_19497_3709 Mask@@15 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| Mask@@15) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19497_3709 Mask@@15 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_29518) (o_2@@14 T@Ref) (f_4@@14 T@Field_29570_29571) ) (! (= (HasDirectPerm_19497_29571 Mask@@16 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| Mask@@16) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19497_29571 Mask@@16 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_29518) (o_2@@15 T@Ref) (f_4@@15 T@Field_29557_53) ) (! (= (HasDirectPerm_19497_53 Mask@@17 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| Mask@@17) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19497_53 Mask@@17 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_29518) (o_2@@16 T@Ref) (f_4@@16 T@Field_35682_35687) ) (! (= (HasDirectPerm_19497_44302 Mask@@18 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| Mask@@18) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19497_44302 Mask@@18 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.269:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3587| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.642:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3587| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_29497) (ExhaleHeap@@3 T@PolymorphicMapType_29497) (Mask@@19 T@PolymorphicMapType_29518) (o_34@@0 T@Ref) (f_40 T@Field_19497_90694) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@19) (=> (HasDirectPerm_19497_97274 Mask@@19 o_34@@0 f_40) (= (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@13) o_34@@0 f_40) (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| ExhaleHeap@@3) o_34@@0 f_40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@19) (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| ExhaleHeap@@3) o_34@@0 f_40))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_29497) (ExhaleHeap@@4 T@PolymorphicMapType_29497) (Mask@@20 T@PolymorphicMapType_29518) (o_34@@1 T@Ref) (f_40@@0 T@Field_19497_90561) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@20) (=> (HasDirectPerm_19497_90625 Mask@@20 o_34@@1 f_40@@0) (= (select (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@14) o_34@@1 f_40@@0) (select (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| ExhaleHeap@@4) o_34@@1 f_40@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@20) (select (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| ExhaleHeap@@4) o_34@@1 f_40@@0))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_29497) (ExhaleHeap@@5 T@PolymorphicMapType_29497) (Mask@@21 T@PolymorphicMapType_29518) (o_34@@2 T@Ref) (f_40@@1 T@Field_35635_3709) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@21) (=> (HasDirectPerm_19497_3709 Mask@@21 o_34@@2 f_40@@1) (= (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@15) o_34@@2 f_40@@1) (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| ExhaleHeap@@5) o_34@@2 f_40@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@21) (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| ExhaleHeap@@5) o_34@@2 f_40@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_29497) (ExhaleHeap@@6 T@PolymorphicMapType_29497) (Mask@@22 T@PolymorphicMapType_29518) (o_34@@3 T@Ref) (f_40@@2 T@Field_29570_29571) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@22) (=> (HasDirectPerm_19497_29571 Mask@@22 o_34@@3 f_40@@2) (= (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@16) o_34@@3 f_40@@2) (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| ExhaleHeap@@6) o_34@@3 f_40@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@22) (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| ExhaleHeap@@6) o_34@@3 f_40@@2))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_29497) (ExhaleHeap@@7 T@PolymorphicMapType_29497) (Mask@@23 T@PolymorphicMapType_29518) (o_34@@4 T@Ref) (f_40@@3 T@Field_29557_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@23) (=> (HasDirectPerm_19497_53 Mask@@23 o_34@@4 f_40@@3) (= (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@17) o_34@@4 f_40@@3) (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| ExhaleHeap@@7) o_34@@4 f_40@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@23) (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| ExhaleHeap@@7) o_34@@4 f_40@@3))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_29497) (ExhaleHeap@@8 T@PolymorphicMapType_29497) (Mask@@24 T@PolymorphicMapType_29518) (o_34@@5 T@Ref) (f_40@@4 T@Field_35682_35687) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@24) (=> (HasDirectPerm_19497_44302 Mask@@24 o_34@@5 f_40@@4) (= (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@18) o_34@@5 f_40@@4) (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| ExhaleHeap@@8) o_34@@5 f_40@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@24) (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| ExhaleHeap@@8) o_34@@5 f_40@@4))
)))
(assert (forall ((s0@@1 T@Seq_35685) (s1@@1 T@Seq_35685) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_19583|)) (not (= s1@@1 |Seq#Empty_19583|))) (= (|Seq#Length_19583| (|Seq#Append_35685| s0@@1 s1@@1)) (+ (|Seq#Length_19583| s0@@1) (|Seq#Length_19583| s1@@1))))
 :qid |stdinbpl.319:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_19583| (|Seq#Append_35685| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3587) (s1@@2 T@Seq_3587) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3587|)) (not (= s1@@2 |Seq#Empty_3587|))) (= (|Seq#Length_3587| (|Seq#Append_3587| s0@@2 s1@@2)) (+ (|Seq#Length_3587| s0@@2) (|Seq#Length_3587| s1@@2))))
 :qid |stdinbpl.319:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3587| (|Seq#Append_3587| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_19497_90694) ) (! (= (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_19497_90561) ) (! (= (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_29570_29571) ) (! (= (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_29557_53) ) (! (= (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_35682_35687) ) (! (= (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_35635_3709) ) (! (= (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((s@@15 T@Seq_35685) (t@@1 T@Seq_35685) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_19583| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_19583| s@@15)) (|Seq#Length_19583| s@@15)) n@@15) (= (|Seq#Drop_19583| (|Seq#Append_35685| s@@15 t@@1) n@@15) (|Seq#Drop_19583| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_19583| s@@15))))))
 :qid |stdinbpl.476:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_19583| (|Seq#Append_35685| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3587) (t@@2 T@Seq_3587) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3587| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3587| s@@16)) (|Seq#Length_3587| s@@16)) n@@16) (= (|Seq#Drop_3587| (|Seq#Append_3587| s@@16 t@@2) n@@16) (|Seq#Drop_3587| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3587| s@@16))))))
 :qid |stdinbpl.476:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3587| (|Seq#Append_3587| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_29497) (xs@@2 T@Seq_35685) (i@@10 Int) ) (!  (and (= (fun01qp Heap@@19 xs@@2 i@@10) (|fun01qp'| Heap@@19 xs@@2 i@@10)) (dummyFunction_3962 (|fun01qp#triggerStateless| xs@@2 i@@10)))
 :qid |stdinbpl.786:15|
 :skolemid |64|
 :pattern ( (fun01qp Heap@@19 xs@@2 i@@10))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_29497) (xs@@3 T@Seq_35685) (i@@11 Int) ) (!  (and (= (fun02qp Heap@@20 xs@@3 i@@11) (|fun02qp'| Heap@@20 xs@@3 i@@11)) (dummyFunction_3962 (|fun02qp#triggerStateless| xs@@3 i@@11)))
 :qid |stdinbpl.890:15|
 :skolemid |74|
 :pattern ( (fun02qp Heap@@20 xs@@3 i@@11))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_29497) (x@@10 T@Ref) (i@@12 Int) ) (!  (and (= (fun03qp Heap@@21 x@@10 i@@12) (|fun03qp'| Heap@@21 x@@10 i@@12)) (dummyFunction_3962 (|fun03qp#triggerStateless| x@@10 i@@12)))
 :qid |stdinbpl.1000:15|
 :skolemid |85|
 :pattern ( (fun03qp Heap@@21 x@@10 i@@12))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_29497) (x@@11 T@Ref) (i@@13 Int) ) (!  (and (= (fun04qp Heap@@22 x@@11 i@@13) (|fun04qp'| Heap@@22 x@@11 i@@13)) (dummyFunction_3962 (|fun04qp#triggerStateless| x@@11 i@@13)))
 :qid |stdinbpl.1121:15|
 :skolemid |95|
 :pattern ( (fun04qp Heap@@22 x@@11 i@@13))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_29497) (Mask@@25 T@PolymorphicMapType_29518) (xs@@4 T@Seq_35685) (i@@14 Int) ) (!  (=> (state Heap@@23 Mask@@25) (= (|fun01qp'| Heap@@23 xs@@4 i@@14) (|fun01qp#frame| (FrameFragment_3709 (|fun01qp#condqp1| Heap@@23 xs@@4 i@@14)) xs@@4 i@@14)))
 :qid |stdinbpl.797:15|
 :skolemid |66|
 :pattern ( (state Heap@@23 Mask@@25) (|fun01qp'| Heap@@23 xs@@4 i@@14))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_29497) (Mask@@26 T@PolymorphicMapType_29518) (xs@@5 T@Seq_35685) (i@@15 Int) ) (!  (=> (state Heap@@24 Mask@@26) (= (|fun02qp'| Heap@@24 xs@@5 i@@15) (|fun02qp#frame| (FrameFragment_3709 (|fun02qp#condqp2| Heap@@24 xs@@5 i@@15)) xs@@5 i@@15)))
 :qid |stdinbpl.901:15|
 :skolemid |76|
 :pattern ( (state Heap@@24 Mask@@26) (|fun02qp'| Heap@@24 xs@@5 i@@15))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_29497) (Heap1Heap@@0 T@PolymorphicMapType_29497) (x@@12 T@Ref) (i@@16 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16))) (< (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16)) (|Seq#Length_19583| (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap2Heap@@0) x@@12 elems)))) (< NoPerm (ite (= (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16)) i@@16) FullPerm NoPerm)))  (and (and (<= 0 (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16))) (< (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16)) (|Seq#Length_19583| (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap1Heap@@0) x@@12 elems)))) (< NoPerm (ite (= (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16)) i@@16) FullPerm NoPerm)))) (=> (and (and (<= 0 (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16))) (< (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16)) (|Seq#Length_19583| (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap2Heap@@0) x@@12 elems)))) (< NoPerm (ite (= (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16)) i@@16) FullPerm NoPerm))) (= (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap2Heap@@0) (|Seq#Index_19583| (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap2Heap@@0) x@@12 elems) (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16))) f_7) (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap1Heap@@0) (|Seq#Index_19583| (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap1Heap@@0) x@@12 elems) (|sk_fun04qp#condqp4| (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16))) f_7)))) (= (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16)))
 :qid |stdinbpl.1142:15|
 :skolemid |98|
 :pattern ( (|fun04qp#condqp4| Heap2Heap@@0 x@@12 i@@16) (|fun04qp#condqp4| Heap1Heap@@0 x@@12 i@@16) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_29518) (SummandMask1 T@PolymorphicMapType_29518) (SummandMask2 T@PolymorphicMapType_29518) (o_2@@23 T@Ref) (f_4@@23 T@Field_19497_90694) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_29518_19495_95388#PolymorphicMapType_29518| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_29518) (SummandMask1@@0 T@PolymorphicMapType_29518) (SummandMask2@@0 T@PolymorphicMapType_29518) (o_2@@24 T@Ref) (f_4@@24 T@Field_19497_90561) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_29518_19495_90561#PolymorphicMapType_29518| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_29518) (SummandMask1@@1 T@PolymorphicMapType_29518) (SummandMask2@@1 T@PolymorphicMapType_29518) (o_2@@25 T@Ref) (f_4@@25 T@Field_29570_29571) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_29518_19495_29571#PolymorphicMapType_29518| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_29518) (SummandMask1@@2 T@PolymorphicMapType_29518) (SummandMask2@@2 T@PolymorphicMapType_29518) (o_2@@26 T@Ref) (f_4@@26 T@Field_29557_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_29518_19495_53#PolymorphicMapType_29518| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_29518) (SummandMask1@@3 T@PolymorphicMapType_29518) (SummandMask2@@3 T@PolymorphicMapType_29518) (o_2@@27 T@Ref) (f_4@@27 T@Field_35682_35687) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_29518_19497_44144#PolymorphicMapType_29518| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_29518) (SummandMask1@@4 T@PolymorphicMapType_29518) (SummandMask2@@4 T@PolymorphicMapType_29518) (o_2@@28 T@Ref) (f_4@@28 T@Field_35635_3709) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_29518_19495_3709#PolymorphicMapType_29518| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3587| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3587| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.641:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3587| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_29497) (Heap1Heap@@1 T@PolymorphicMapType_29497) (x@@13 T@Ref) (i@@17 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17))) (and (< (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17)) (|Seq#Length_19583| (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap2Heap@@1) x@@13 elems))) (= (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17)) i@@17))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17))) (and (< (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17)) (|Seq#Length_19583| (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap1Heap@@1) x@@13 elems))) (= (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17)) i@@17))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17))) (and (< (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17)) (|Seq#Length_19583| (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap2Heap@@1) x@@13 elems))) (= (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17)) i@@17))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap2Heap@@1) (|Seq#Index_19583| (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap2Heap@@1) x@@13 elems) (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17))) f_7) (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap1Heap@@1) (|Seq#Index_19583| (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap1Heap@@1) x@@13 elems) (|sk_fun03qp#condqp3| (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17))) f_7)))) (= (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17)))
 :qid |stdinbpl.1021:15|
 :skolemid |88|
 :pattern ( (|fun03qp#condqp3| Heap2Heap@@1 x@@13 i@@17) (|fun03qp#condqp3| Heap1Heap@@1 x@@13 i@@17) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((a T@Seq_3587) (b T@Seq_3587) ) (!  (=> (|Seq#Equal_3587| a b) (= a b))
 :qid |stdinbpl.614:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3587| a b))
)))
(assert (forall ((a@@0 T@Seq_35685) (b@@0 T@Seq_35685) ) (!  (=> (|Seq#Equal_19498| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.614:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_19498| a@@0 b@@0))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_29497) (x@@14 T@Ref) (y@@4 T@Ref) (b_24@@2 Bool) ) (!  (and (= (fun01 Heap@@25 x@@14 y@@4 b_24@@2) (|fun01'| Heap@@25 x@@14 y@@4 b_24@@2)) (dummyFunction_3962 (|fun01#triggerStateless| x@@14 y@@4 b_24@@2)))
 :qid |stdinbpl.668:15|
 :skolemid |58|
 :pattern ( (fun01 Heap@@25 x@@14 y@@4 b_24@@2))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_29497) (x@@15 T@Ref) (y@@5 T@Ref) (b_24@@3 Bool) ) (!  (and (= (fun02 Heap@@26 x@@15 y@@5 b_24@@3) (|fun02'| Heap@@26 x@@15 y@@5 b_24@@3)) (dummyFunction_3962 (|fun02#triggerStateless| x@@15 y@@5 b_24@@3)))
 :qid |stdinbpl.726:15|
 :skolemid |61|
 :pattern ( (fun02 Heap@@26 x@@15 y@@5 b_24@@3))
)))
(assert (forall ((s@@17 T@Seq_35685) (i@@18 Int) ) (!  (=> (and (<= 0 i@@18) (< i@@18 (|Seq#Length_19583| s@@17))) (|Seq#ContainsTrigger_19583| s@@17 (|Seq#Index_19583| s@@17 i@@18)))
 :qid |stdinbpl.507:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_19583| s@@17 i@@18))
)))
(assert (forall ((s@@18 T@Seq_3587) (i@@19 Int) ) (!  (=> (and (<= 0 i@@19) (< i@@19 (|Seq#Length_3587| s@@18))) (|Seq#ContainsTrigger_3587| s@@18 (|Seq#Index_3587| s@@18 i@@19)))
 :qid |stdinbpl.507:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3587| s@@18 i@@19))
)))
(assert (forall ((s0@@3 T@Seq_35685) (s1@@3 T@Seq_35685) ) (!  (and (=> (= s0@@3 |Seq#Empty_19583|) (= (|Seq#Append_35685| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_19583|) (= (|Seq#Append_35685| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.325:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_35685| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3587) (s1@@4 T@Seq_3587) ) (!  (and (=> (= s0@@4 |Seq#Empty_3587|) (= (|Seq#Append_3587| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3587|) (= (|Seq#Append_3587| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.325:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3587| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_19583| (|Seq#Singleton_19583| t@@3) 0) t@@3)
 :qid |stdinbpl.329:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_19583| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3587| (|Seq#Singleton_3587| t@@4) 0) t@@4)
 :qid |stdinbpl.329:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3587| t@@4))
)))
(assert (forall ((s@@19 T@Seq_35685) ) (! (<= 0 (|Seq#Length_19583| s@@19))
 :qid |stdinbpl.308:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_19583| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3587) ) (! (<= 0 (|Seq#Length_3587| s@@20))
 :qid |stdinbpl.308:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3587| s@@20))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_29497) (ExhaleHeap@@9 T@PolymorphicMapType_29497) (Mask@@27 T@PolymorphicMapType_29518) (pm_f_16@@1 T@Field_19497_90561) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@9 Mask@@27) (=> (and (HasDirectPerm_19497_90625 Mask@@27 null pm_f_16@@1) (IsPredicateField_19497_90652 pm_f_16@@1)) (and (and (and (and (and (forall ((o2_16 T@Ref) (f_40@@5 T@Field_29557_53) ) (!  (=> (select (|PolymorphicMapType_30046_29557_53#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@27) null (PredicateMaskField_19497 pm_f_16@@1))) o2_16 f_40@@5) (= (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@27) o2_16 f_40@@5) (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16 f_40@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16 f_40@@5))
)) (forall ((o2_16@@0 T@Ref) (f_40@@6 T@Field_29570_29571) ) (!  (=> (select (|PolymorphicMapType_30046_29557_29571#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@27) null (PredicateMaskField_19497 pm_f_16@@1))) o2_16@@0 f_40@@6) (= (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@27) o2_16@@0 f_40@@6) (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16@@0 f_40@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16@@0 f_40@@6))
))) (forall ((o2_16@@1 T@Ref) (f_40@@7 T@Field_35635_3709) ) (!  (=> (select (|PolymorphicMapType_30046_29557_3709#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@27) null (PredicateMaskField_19497 pm_f_16@@1))) o2_16@@1 f_40@@7) (= (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@27) o2_16@@1 f_40@@7) (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16@@1 f_40@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16@@1 f_40@@7))
))) (forall ((o2_16@@2 T@Ref) (f_40@@8 T@Field_35682_35687) ) (!  (=> (select (|PolymorphicMapType_30046_29557_35687#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@27) null (PredicateMaskField_19497 pm_f_16@@1))) o2_16@@2 f_40@@8) (= (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@27) o2_16@@2 f_40@@8) (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16@@2 f_40@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16@@2 f_40@@8))
))) (forall ((o2_16@@3 T@Ref) (f_40@@9 T@Field_19497_90561) ) (!  (=> (select (|PolymorphicMapType_30046_29557_90561#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@27) null (PredicateMaskField_19497 pm_f_16@@1))) o2_16@@3 f_40@@9) (= (select (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@27) o2_16@@3 f_40@@9) (select (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16@@3 f_40@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16@@3 f_40@@9))
))) (forall ((o2_16@@4 T@Ref) (f_40@@10 T@Field_19497_90694) ) (!  (=> (select (|PolymorphicMapType_30046_29557_92076#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@27) null (PredicateMaskField_19497 pm_f_16@@1))) o2_16@@4 f_40@@10) (= (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@27) o2_16@@4 f_40@@10) (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16@@4 f_40@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| ExhaleHeap@@9) o2_16@@4 f_40@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@9 Mask@@27) (IsPredicateField_19497_90652 pm_f_16@@1))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_29497) (ExhaleHeap@@10 T@PolymorphicMapType_29497) (Mask@@28 T@PolymorphicMapType_29518) (pm_f_16@@2 T@Field_19497_90561) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@10 Mask@@28) (=> (and (HasDirectPerm_19497_90625 Mask@@28 null pm_f_16@@2) (IsWandField_19497_92603 pm_f_16@@2)) (and (and (and (and (and (forall ((o2_16@@5 T@Ref) (f_40@@11 T@Field_29557_53) ) (!  (=> (select (|PolymorphicMapType_30046_29557_53#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@28) null (WandMaskField_19497 pm_f_16@@2))) o2_16@@5 f_40@@11) (= (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@28) o2_16@@5 f_40@@11) (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@5 f_40@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@5 f_40@@11))
)) (forall ((o2_16@@6 T@Ref) (f_40@@12 T@Field_29570_29571) ) (!  (=> (select (|PolymorphicMapType_30046_29557_29571#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@28) null (WandMaskField_19497 pm_f_16@@2))) o2_16@@6 f_40@@12) (= (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@28) o2_16@@6 f_40@@12) (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@6 f_40@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@6 f_40@@12))
))) (forall ((o2_16@@7 T@Ref) (f_40@@13 T@Field_35635_3709) ) (!  (=> (select (|PolymorphicMapType_30046_29557_3709#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@28) null (WandMaskField_19497 pm_f_16@@2))) o2_16@@7 f_40@@13) (= (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@28) o2_16@@7 f_40@@13) (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@7 f_40@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@7 f_40@@13))
))) (forall ((o2_16@@8 T@Ref) (f_40@@14 T@Field_35682_35687) ) (!  (=> (select (|PolymorphicMapType_30046_29557_35687#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@28) null (WandMaskField_19497 pm_f_16@@2))) o2_16@@8 f_40@@14) (= (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@28) o2_16@@8 f_40@@14) (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@8 f_40@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@8 f_40@@14))
))) (forall ((o2_16@@9 T@Ref) (f_40@@15 T@Field_19497_90561) ) (!  (=> (select (|PolymorphicMapType_30046_29557_90561#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@28) null (WandMaskField_19497 pm_f_16@@2))) o2_16@@9 f_40@@15) (= (select (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@28) o2_16@@9 f_40@@15) (select (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@9 f_40@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@9 f_40@@15))
))) (forall ((o2_16@@10 T@Ref) (f_40@@16 T@Field_19497_90694) ) (!  (=> (select (|PolymorphicMapType_30046_29557_92076#PolymorphicMapType_30046| (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@28) null (WandMaskField_19497 pm_f_16@@2))) o2_16@@10 f_40@@16) (= (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@28) o2_16@@10 f_40@@16) (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@10 f_40@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| ExhaleHeap@@10) o2_16@@10 f_40@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@10 Mask@@28) (IsWandField_19497_92603 pm_f_16@@2))
)))
(assert (forall ((s0@@5 T@Seq_3587) (s1@@5 T@Seq_3587) ) (!  (=> (|Seq#Equal_3587| s0@@5 s1@@5) (and (= (|Seq#Length_3587| s0@@5) (|Seq#Length_3587| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_3587| s0@@5))) (= (|Seq#Index_3587| s0@@5 j@@6) (|Seq#Index_3587| s1@@5 j@@6)))
 :qid |stdinbpl.604:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3587| s0@@5 j@@6))
 :pattern ( (|Seq#Index_3587| s1@@5 j@@6))
))))
 :qid |stdinbpl.601:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3587| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_35685) (s1@@6 T@Seq_35685) ) (!  (=> (|Seq#Equal_19498| s0@@6 s1@@6) (and (= (|Seq#Length_19583| s0@@6) (|Seq#Length_19583| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_19583| s0@@6))) (= (|Seq#Index_19583| s0@@6 j@@7) (|Seq#Index_19583| s1@@6 j@@7)))
 :qid |stdinbpl.604:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_19583| s0@@6 j@@7))
 :pattern ( (|Seq#Index_19583| s1@@6 j@@7))
))))
 :qid |stdinbpl.601:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_19498| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_19583| (|Seq#Singleton_19583| t@@5)) 1)
 :qid |stdinbpl.316:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_19583| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3587| (|Seq#Singleton_3587| t@@6)) 1)
 :qid |stdinbpl.316:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3587| t@@6))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_29497) (Mask@@29 T@PolymorphicMapType_29518) (x@@16 T@Ref) (y@@6 T@Ref) (b_24@@4 Bool) ) (!  (=> (state Heap@@29 Mask@@29) (= (|fun01'| Heap@@29 x@@16 y@@6 b_24@@4) (|fun01#frame| (FrameFragment_21492 (ite b_24@@4 (FrameFragment_3709 (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@29) x@@16 f_7)) (FrameFragment_3709 (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@29) y@@6 f_7)))) x@@16 y@@6 b_24@@4)))
 :qid |stdinbpl.679:15|
 :skolemid |60|
 :pattern ( (state Heap@@29 Mask@@29) (|fun01'| Heap@@29 x@@16 y@@6 b_24@@4))
)))
(assert (forall ((s@@21 T@Seq_35685) (t@@7 T@Seq_35685) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_19583| s@@21))) (= (|Seq#Take_19583| (|Seq#Append_35685| s@@21 t@@7) n@@17) (|Seq#Take_19583| s@@21 n@@17)))
 :qid |stdinbpl.458:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_19583| (|Seq#Append_35685| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3587) (t@@8 T@Seq_3587) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3587| s@@22))) (= (|Seq#Take_3587| (|Seq#Append_3587| s@@22 t@@8) n@@18) (|Seq#Take_3587| s@@22 n@@18)))
 :qid |stdinbpl.458:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3587| (|Seq#Append_3587| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_35685) (i@@20 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@20) (< i@@20 (|Seq#Length_19583| s@@23))) (= (|Seq#Length_19583| (|Seq#Update_19583| s@@23 i@@20 v@@2)) (|Seq#Length_19583| s@@23)))
 :qid |stdinbpl.357:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_19583| (|Seq#Update_19583| s@@23 i@@20 v@@2)))
 :pattern ( (|Seq#Length_19583| s@@23) (|Seq#Update_19583| s@@23 i@@20 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3587) (i@@21 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@21) (< i@@21 (|Seq#Length_3587| s@@24))) (= (|Seq#Length_3587| (|Seq#Update_3587| s@@24 i@@21 v@@3)) (|Seq#Length_3587| s@@24)))
 :qid |stdinbpl.357:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3587| (|Seq#Update_3587| s@@24 i@@21 v@@3)))
 :pattern ( (|Seq#Length_3587| s@@24) (|Seq#Update_3587| s@@24 i@@21 v@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_29497) (o_3 T@Ref) (f_35 T@Field_19497_90561) (v@@4 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@30) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@30) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@30) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@30) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@30) (store (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@30) o_3 f_35 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@30) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@30) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@30) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@30) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@30) (store (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@30) o_3 f_35 v@@4)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_29497) (o_3@@0 T@Ref) (f_35@@0 T@Field_19497_90694) (v@@5 T@PolymorphicMapType_30046) ) (! (succHeap Heap@@31 (PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@31) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@31) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@31) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@31) (store (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@31) o_3@@0 f_35@@0 v@@5) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@31) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@31) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@31) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@31) (store (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@31) o_3@@0 f_35@@0 v@@5) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_29497) (o_3@@1 T@Ref) (f_35@@1 T@Field_35682_35687) (v@@6 T@Seq_35685) ) (! (succHeap Heap@@32 (PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@32) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@32) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@32) (store (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@32) o_3@@1 f_35@@1 v@@6) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@32) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@32) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@32) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@32) (store (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@32) o_3@@1 f_35@@1 v@@6) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@32) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_29497) (o_3@@2 T@Ref) (f_35@@2 T@Field_35635_3709) (v@@7 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@33) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@33) (store (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@33) o_3@@2 f_35@@2 v@@7) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@33) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@33) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@33) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@33) (store (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@33) o_3@@2 f_35@@2 v@@7) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@33) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@33) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_29497) (o_3@@3 T@Ref) (f_35@@3 T@Field_29570_29571) (v@@8 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@34) (store (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@34) o_3@@3 f_35@@3 v@@8) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@34) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@34) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@34) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29497 (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@34) (store (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@34) o_3@@3 f_35@@3 v@@8) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@34) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@34) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@34) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_29497) (o_3@@4 T@Ref) (f_35@@4 T@Field_29557_53) (v@@9 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_29497 (store (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@35) o_3@@4 f_35@@4 v@@9) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@35) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@35) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@35) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@35) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29497 (store (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@35) o_3@@4 f_35@@4 v@@9) (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@35) (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap@@35) (|PolymorphicMapType_29497_19497_42906#PolymorphicMapType_29497| Heap@@35) (|PolymorphicMapType_29497_19497_90738#PolymorphicMapType_29497| Heap@@35) (|PolymorphicMapType_29497_29557_90561#PolymorphicMapType_29497| Heap@@35)))
)))
(assert (forall ((s@@25 T@Seq_35685) (t@@9 T@Seq_35685) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_19583| s@@25))) (= (|Seq#Drop_19583| (|Seq#Append_35685| s@@25 t@@9) n@@19) (|Seq#Append_35685| (|Seq#Drop_19583| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.472:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_19583| (|Seq#Append_35685| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3587) (t@@10 T@Seq_3587) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3587| s@@26))) (= (|Seq#Drop_3587| (|Seq#Append_3587| s@@26 t@@10) n@@20) (|Seq#Append_3587| (|Seq#Drop_3587| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.472:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3587| (|Seq#Append_3587| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_35685) (n@@21 Int) (i@@22 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@22)) (< i@@22 (|Seq#Length_19583| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@22 n@@21) n@@21) i@@22) (= (|Seq#Index_19583| (|Seq#Drop_19583| s@@27 n@@21) (|Seq#Sub| i@@22 n@@21)) (|Seq#Index_19583| s@@27 i@@22))))
 :qid |stdinbpl.408:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_19583| s@@27 n@@21) (|Seq#Index_19583| s@@27 i@@22))
)))
(assert (forall ((s@@28 T@Seq_3587) (n@@22 Int) (i@@23 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@23)) (< i@@23 (|Seq#Length_3587| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@23 n@@22) n@@22) i@@23) (= (|Seq#Index_3587| (|Seq#Drop_3587| s@@28 n@@22) (|Seq#Sub| i@@23 n@@22)) (|Seq#Index_3587| s@@28 i@@23))))
 :qid |stdinbpl.408:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3587| s@@28 n@@22) (|Seq#Index_3587| s@@28 i@@23))
)))
(assert (forall ((s0@@7 T@Seq_35685) (s1@@7 T@Seq_35685) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_19583|)) (not (= s1@@7 |Seq#Empty_19583|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_19583| s0@@7))) (= (|Seq#Index_19583| (|Seq#Append_35685| s0@@7 s1@@7) n@@23) (|Seq#Index_19583| s0@@7 n@@23)))
 :qid |stdinbpl.348:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_19583| (|Seq#Append_35685| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_19583| s0@@7 n@@23) (|Seq#Append_35685| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3587) (s1@@8 T@Seq_3587) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3587|)) (not (= s1@@8 |Seq#Empty_3587|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3587| s0@@8))) (= (|Seq#Index_3587| (|Seq#Append_3587| s0@@8 s1@@8) n@@24) (|Seq#Index_3587| s0@@8 n@@24)))
 :qid |stdinbpl.348:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3587| (|Seq#Append_3587| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3587| s0@@8 n@@24) (|Seq#Append_3587| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_35685) (s1@@9 T@Seq_35685) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_19583|)) (not (= s1@@9 |Seq#Empty_19583|))) (<= 0 m)) (< m (|Seq#Length_19583| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_19583| s0@@9)) (|Seq#Length_19583| s0@@9)) m) (= (|Seq#Index_19583| (|Seq#Append_35685| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_19583| s0@@9))) (|Seq#Index_19583| s1@@9 m))))
 :qid |stdinbpl.353:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_19583| s1@@9 m) (|Seq#Append_35685| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3587) (s1@@10 T@Seq_3587) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3587|)) (not (= s1@@10 |Seq#Empty_3587|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3587| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3587| s0@@10)) (|Seq#Length_3587| s0@@10)) m@@0) (= (|Seq#Index_3587| (|Seq#Append_3587| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3587| s0@@10))) (|Seq#Index_3587| s1@@10 m@@0))))
 :qid |stdinbpl.353:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3587| s1@@10 m@@0) (|Seq#Append_3587| s0@@10 s1@@10))
)))
(assert (forall ((o_3@@5 T@Ref) (f_8 T@Field_29570_29571) (Heap@@36 T@PolymorphicMapType_29497) ) (!  (=> (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@36) o_3@@5 $allocated) (select (|PolymorphicMapType_29497_19247_53#PolymorphicMapType_29497| Heap@@36) (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@36) o_3@@5 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_29497_19250_19251#PolymorphicMapType_29497| Heap@@36) o_3@@5 f_8))
)))
(assert (forall ((s@@29 T@Seq_35685) (x@@17 T@Ref) (i@@24 Int) ) (!  (=> (and (and (<= 0 i@@24) (< i@@24 (|Seq#Length_19583| s@@29))) (= (|Seq#Index_19583| s@@29 i@@24) x@@17)) (|Seq#Contains_35685| s@@29 x@@17))
 :qid |stdinbpl.505:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_35685| s@@29 x@@17) (|Seq#Index_19583| s@@29 i@@24))
)))
(assert (forall ((s@@30 T@Seq_3587) (x@@18 Int) (i@@25 Int) ) (!  (=> (and (and (<= 0 i@@25) (< i@@25 (|Seq#Length_3587| s@@30))) (= (|Seq#Index_3587| s@@30 i@@25) x@@18)) (|Seq#Contains_3587| s@@30 x@@18))
 :qid |stdinbpl.505:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3587| s@@30 x@@18) (|Seq#Index_3587| s@@30 i@@25))
)))
(assert (forall ((s0@@11 T@Seq_35685) (s1@@11 T@Seq_35685) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_19498| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_19498| s0@@11 s1@@11))) (not (= (|Seq#Length_19583| s0@@11) (|Seq#Length_19583| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_19498| s0@@11 s1@@11))) (= (|Seq#Length_19583| s0@@11) (|Seq#Length_19583| s1@@11))) (= (|Seq#SkolemDiff_35685| s0@@11 s1@@11) (|Seq#SkolemDiff_35685| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_35685| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_35685| s0@@11 s1@@11) (|Seq#Length_19583| s0@@11))) (not (= (|Seq#Index_19583| s0@@11 (|Seq#SkolemDiff_35685| s0@@11 s1@@11)) (|Seq#Index_19583| s1@@11 (|Seq#SkolemDiff_35685| s0@@11 s1@@11))))))
 :qid |stdinbpl.609:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_19498| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3587) (s1@@12 T@Seq_3587) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3587| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3587| s0@@12 s1@@12))) (not (= (|Seq#Length_3587| s0@@12) (|Seq#Length_3587| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3587| s0@@12 s1@@12))) (= (|Seq#Length_3587| s0@@12) (|Seq#Length_3587| s1@@12))) (= (|Seq#SkolemDiff_3587| s0@@12 s1@@12) (|Seq#SkolemDiff_3587| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3587| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3587| s0@@12 s1@@12) (|Seq#Length_3587| s0@@12))) (not (= (|Seq#Index_3587| s0@@12 (|Seq#SkolemDiff_3587| s0@@12 s1@@12)) (|Seq#Index_3587| s1@@12 (|Seq#SkolemDiff_3587| s0@@12 s1@@12))))))
 :qid |stdinbpl.609:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3587| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_19497_90561) (v_1@@0 T@FrameType) (q T@Field_19497_90561) (w@@0 T@FrameType) (r T@Field_19497_90561) (u T@FrameType) ) (!  (=> (and (InsidePredicate_29557_29557 p@@1 v_1@@0 q w@@0) (InsidePredicate_29557_29557 q w@@0 r u)) (InsidePredicate_29557_29557 p@@1 v_1@@0 r u))
 :qid |stdinbpl.276:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29557_29557 p@@1 v_1@@0 q w@@0) (InsidePredicate_29557_29557 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_35685) ) (!  (=> (= (|Seq#Length_19583| s@@31) 0) (= s@@31 |Seq#Empty_19583|))
 :qid |stdinbpl.312:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_19583| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3587) ) (!  (=> (= (|Seq#Length_3587| s@@32) 0) (= s@@32 |Seq#Empty_3587|))
 :qid |stdinbpl.312:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3587| s@@32))
)))
(assert (forall ((s@@33 T@Seq_35685) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_19583| s@@33 n@@25) |Seq#Empty_19583|))
 :qid |stdinbpl.488:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_19583| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3587) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3587| s@@34 n@@26) |Seq#Empty_3587|))
 :qid |stdinbpl.488:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3587| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_29497) (Heap1Heap@@2 T@PolymorphicMapType_29497) (xs@@6 T@Seq_35685) (i@@26 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26))) (and (< (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26)) (|Seq#Length_19583| xs@@6)) (= (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26)) i@@26))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26))) (and (< (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26)) (|Seq#Length_19583| xs@@6)) (= (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26)) i@@26))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26))) (and (< (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26)) (|Seq#Length_19583| xs@@6)) (= (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26)) i@@26))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap2Heap@@2) (|Seq#Index_19583| xs@@6 (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26))) f_7) (select (|PolymorphicMapType_29497_19495_3709#PolymorphicMapType_29497| Heap1Heap@@2) (|Seq#Index_19583| xs@@6 (|sk_fun01qp#condqp1| (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26))) f_7)))) (= (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26)))
 :qid |stdinbpl.807:15|
 :skolemid |67|
 :pattern ( (|fun01qp#condqp1| Heap2Heap@@2 xs@@6 i@@26) (|fun01qp#condqp1| Heap1Heap@@2 xs@@6 i@@26) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
; Valid

