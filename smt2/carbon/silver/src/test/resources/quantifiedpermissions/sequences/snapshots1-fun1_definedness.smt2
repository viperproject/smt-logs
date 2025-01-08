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
(declare-sort T@Field_22337_53 0)
(declare-sort T@Field_22350_22351 0)
(declare-sort T@Field_28383_3325 0)
(declare-sort T@Field_32191_32192 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_34782_34787 0)
(declare-sort T@Field_14538_14632 0)
(declare-sort T@Field_14538_34787 0)
(declare-sort T@Field_14631_3325 0)
(declare-sort T@Field_14631_53 0)
(declare-sort T@Field_14631_22351 0)
(declare-datatypes ((T@PolymorphicMapType_22298 0)) (((PolymorphicMapType_22298 (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| (Array T@Ref T@Field_28383_3325 Real)) (|PolymorphicMapType_22298_14631_14632#PolymorphicMapType_22298| (Array T@Ref T@Field_32191_32192 Real)) (|PolymorphicMapType_22298_14538_14632#PolymorphicMapType_22298| (Array T@Ref T@Field_14538_14632 Real)) (|PolymorphicMapType_22298_14538_53#PolymorphicMapType_22298| (Array T@Ref T@Field_22337_53 Real)) (|PolymorphicMapType_22298_14538_22351#PolymorphicMapType_22298| (Array T@Ref T@Field_22350_22351 Real)) (|PolymorphicMapType_22298_14538_74480#PolymorphicMapType_22298| (Array T@Ref T@Field_14538_34787 Real)) (|PolymorphicMapType_22298_14631_3325#PolymorphicMapType_22298| (Array T@Ref T@Field_14631_3325 Real)) (|PolymorphicMapType_22298_14631_53#PolymorphicMapType_22298| (Array T@Ref T@Field_14631_53 Real)) (|PolymorphicMapType_22298_14631_22351#PolymorphicMapType_22298| (Array T@Ref T@Field_14631_22351 Real)) (|PolymorphicMapType_22298_14631_74891#PolymorphicMapType_22298| (Array T@Ref T@Field_34782_34787 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22826 0)) (((PolymorphicMapType_22826 (|PolymorphicMapType_22826_14538_3325#PolymorphicMapType_22826| (Array T@Ref T@Field_28383_3325 Bool)) (|PolymorphicMapType_22826_14538_53#PolymorphicMapType_22826| (Array T@Ref T@Field_22337_53 Bool)) (|PolymorphicMapType_22826_14538_22351#PolymorphicMapType_22826| (Array T@Ref T@Field_22350_22351 Bool)) (|PolymorphicMapType_22826_14538_32192#PolymorphicMapType_22826| (Array T@Ref T@Field_14538_14632 Bool)) (|PolymorphicMapType_22826_14538_68038#PolymorphicMapType_22826| (Array T@Ref T@Field_14538_34787 Bool)) (|PolymorphicMapType_22826_32191_3325#PolymorphicMapType_22826| (Array T@Ref T@Field_14631_3325 Bool)) (|PolymorphicMapType_22826_32191_53#PolymorphicMapType_22826| (Array T@Ref T@Field_14631_53 Bool)) (|PolymorphicMapType_22826_32191_22351#PolymorphicMapType_22826| (Array T@Ref T@Field_14631_22351 Bool)) (|PolymorphicMapType_22826_32191_32192#PolymorphicMapType_22826| (Array T@Ref T@Field_32191_32192 Bool)) (|PolymorphicMapType_22826_32191_69086#PolymorphicMapType_22826| (Array T@Ref T@Field_34782_34787 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22277 0)) (((PolymorphicMapType_22277 (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| (Array T@Ref T@Field_22337_53 Bool)) (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| (Array T@Ref T@Field_22350_22351 T@Ref)) (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| (Array T@Ref T@Field_28383_3325 Int)) (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| (Array T@Ref T@Field_32191_32192 T@FrameType)) (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| (Array T@Ref T@Field_34782_34787 T@PolymorphicMapType_22826)) (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| (Array T@Ref T@Field_14538_14632 T@FrameType)) (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| (Array T@Ref T@Field_14538_34787 T@PolymorphicMapType_22826)) (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| (Array T@Ref T@Field_14631_3325 Int)) (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| (Array T@Ref T@Field_14631_53 Bool)) (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| (Array T@Ref T@Field_14631_22351 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_22337_53)
(declare-fun f_7 () T@Field_28383_3325)
(declare-sort T@Seq_28430 0)
(declare-fun |Seq#Length_14554| (T@Seq_28430) Int)
(declare-fun |Seq#Drop_14554| (T@Seq_28430 Int) T@Seq_28430)
(declare-sort T@Seq_3203 0)
(declare-fun |Seq#Length_3203| (T@Seq_3203) Int)
(declare-fun |Seq#Drop_3203| (T@Seq_3203 Int) T@Seq_3203)
(declare-fun succHeap (T@PolymorphicMapType_22277 T@PolymorphicMapType_22277) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_22277 T@PolymorphicMapType_22277) Bool)
(declare-fun state (T@PolymorphicMapType_22277 T@PolymorphicMapType_22298) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_22298) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_22826)
(declare-fun |Seq#Index_14554| (T@Seq_28430 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3203| (T@Seq_3203 Int) Int)
(declare-fun fun2 (T@PolymorphicMapType_22277 T@Seq_28430) Int)
(declare-fun |fun2#triggerStateless| (T@Seq_28430) Int)
(declare-fun |P#trigger_14631| (T@PolymorphicMapType_22277 T@Field_32191_32192) Bool)
(declare-fun P (T@Seq_28430) T@Field_32191_32192)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#Empty_14554| () T@Seq_28430)
(declare-fun |Seq#Empty_3203| () T@Seq_3203)
(declare-fun IsPredicateField_14631_14632 (T@Field_32191_32192) Bool)
(declare-fun |fun1'| (T@PolymorphicMapType_22277 T@Seq_28430) Int)
(declare-fun dummyFunction_3876 (Int) Bool)
(declare-fun |fun1#triggerStateless| (T@Seq_28430) Int)
(declare-fun |fun2'| (T@PolymorphicMapType_22277 T@Seq_28430) Int)
(declare-fun |P#everUsed_14631| (T@Field_32191_32192) Bool)
(declare-fun |Seq#Update_14554| (T@Seq_28430 Int T@Ref) T@Seq_28430)
(declare-fun |Seq#Update_3203| (T@Seq_3203 Int Int) T@Seq_3203)
(declare-fun |Seq#Take_14554| (T@Seq_28430 Int) T@Seq_28430)
(declare-fun |Seq#Take_3203| (T@Seq_3203 Int) T@Seq_3203)
(declare-fun |Seq#Contains_3203| (T@Seq_3203 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3203)
(declare-fun |Seq#Contains_28430| (T@Seq_28430 T@Ref) Bool)
(declare-fun |Seq#Skolem_28430| (T@Seq_28430 T@Ref) Int)
(declare-fun |Seq#Skolem_3203| (T@Seq_3203 Int) Int)
(declare-fun fun1 (T@PolymorphicMapType_22277 T@Seq_28430) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_22277 T@PolymorphicMapType_22277 T@PolymorphicMapType_22298) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_14631 (T@Field_32191_32192) T@Field_34782_34787)
(declare-fun HasDirectPerm_14631_14632 (T@PolymorphicMapType_22298 T@Ref T@Field_32191_32192) Bool)
(declare-fun IsPredicateField_14538_66566 (T@Field_14538_14632) Bool)
(declare-fun PredicateMaskField_14538 (T@Field_14538_14632) T@Field_14538_34787)
(declare-fun HasDirectPerm_14538_14632 (T@PolymorphicMapType_22298 T@Ref T@Field_14538_14632) Bool)
(declare-fun IsWandField_14631_70251 (T@Field_32191_32192) Bool)
(declare-fun WandMaskField_14631 (T@Field_32191_32192) T@Field_34782_34787)
(declare-fun IsWandField_14538_69894 (T@Field_14538_14632) Bool)
(declare-fun WandMaskField_14538 (T@Field_14538_14632) T@Field_14538_34787)
(declare-fun |Seq#Singleton_14554| (T@Ref) T@Seq_28430)
(declare-fun |Seq#Singleton_3203| (Int) T@Seq_3203)
(declare-fun |Seq#ContainsTrigger_3203| (T@Seq_3203 Int) Bool)
(declare-fun |P#sm| (T@Seq_28430) T@Field_34782_34787)
(declare-fun |Seq#Append_28430| (T@Seq_28430 T@Seq_28430) T@Seq_28430)
(declare-fun |Seq#Append_3203| (T@Seq_3203 T@Seq_3203) T@Seq_3203)
(declare-fun dummyHeap () T@PolymorphicMapType_22277)
(declare-fun ZeroMask () T@PolymorphicMapType_22298)
(declare-fun InsidePredicate_32191_32191 (T@Field_32191_32192 T@FrameType T@Field_32191_32192 T@FrameType) Bool)
(declare-fun InsidePredicate_22337_22337 (T@Field_14538_14632 T@FrameType T@Field_14538_14632 T@FrameType) Bool)
(declare-fun IsPredicateField_14538_3325 (T@Field_28383_3325) Bool)
(declare-fun IsWandField_14538_3325 (T@Field_28383_3325) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_14631_77183 (T@Field_34782_34787) Bool)
(declare-fun IsWandField_14631_77199 (T@Field_34782_34787) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_14631_22351 (T@Field_14631_22351) Bool)
(declare-fun IsWandField_14631_22351 (T@Field_14631_22351) Bool)
(declare-fun IsPredicateField_14631_53 (T@Field_14631_53) Bool)
(declare-fun IsWandField_14631_53 (T@Field_14631_53) Bool)
(declare-fun IsPredicateField_14631_3325 (T@Field_14631_3325) Bool)
(declare-fun IsWandField_14631_3325 (T@Field_14631_3325) Bool)
(declare-fun IsPredicateField_14538_76352 (T@Field_14538_34787) Bool)
(declare-fun IsWandField_14538_76368 (T@Field_14538_34787) Bool)
(declare-fun IsPredicateField_14538_22351 (T@Field_22350_22351) Bool)
(declare-fun IsWandField_14538_22351 (T@Field_22350_22351) Bool)
(declare-fun IsPredicateField_14538_53 (T@Field_22337_53) Bool)
(declare-fun IsWandField_14538_53 (T@Field_22337_53) Bool)
(declare-fun HasDirectPerm_14631_66321 (T@PolymorphicMapType_22298 T@Ref T@Field_34782_34787) Bool)
(declare-fun HasDirectPerm_14631_22351 (T@PolymorphicMapType_22298 T@Ref T@Field_14631_22351) Bool)
(declare-fun HasDirectPerm_14631_53 (T@PolymorphicMapType_22298 T@Ref T@Field_14631_53) Bool)
(declare-fun HasDirectPerm_14631_3325 (T@PolymorphicMapType_22298 T@Ref T@Field_14631_3325) Bool)
(declare-fun HasDirectPerm_14538_65180 (T@PolymorphicMapType_22298 T@Ref T@Field_14538_34787) Bool)
(declare-fun HasDirectPerm_14538_22351 (T@PolymorphicMapType_22298 T@Ref T@Field_22350_22351) Bool)
(declare-fun HasDirectPerm_14538_53 (T@PolymorphicMapType_22298 T@Ref T@Field_22337_53) Bool)
(declare-fun HasDirectPerm_14538_3325 (T@PolymorphicMapType_22298 T@Ref T@Field_28383_3325) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_22298 T@PolymorphicMapType_22298 T@PolymorphicMapType_22298) Bool)
(declare-fun |Seq#Equal_28430| (T@Seq_28430 T@Seq_28430) Bool)
(declare-fun |Seq#Equal_3203| (T@Seq_3203 T@Seq_3203) Bool)
(declare-fun |Seq#ContainsTrigger_14554| (T@Seq_28430 T@Ref) Bool)
(declare-fun |fun2#frame| (T@FrameType T@Seq_28430) Int)
(declare-fun getPredWandId_14631_14632 (T@Field_32191_32192) Int)
(declare-fun |fun1#condqp1| (T@PolymorphicMapType_22277 T@Seq_28430) Int)
(declare-fun |sk_fun1#condqp1| (Int Int) Int)
(declare-fun |P#condqp2| (T@PolymorphicMapType_22277 T@Seq_28430) Int)
(declare-fun |sk_P#condqp2| (Int Int) Int)
(declare-fun |fun1#frame| (T@FrameType T@Seq_28430) Int)
(declare-fun FrameFragment_3705 (Int) T@FrameType)
(declare-fun |Seq#SkolemDiff_28430| (T@Seq_28430 T@Seq_28430) Int)
(declare-fun |Seq#SkolemDiff_3203| (T@Seq_3203 T@Seq_3203) Int)
(declare-fun InsidePredicate_32191_22337 (T@Field_32191_32192 T@FrameType T@Field_14538_14632 T@FrameType) Bool)
(declare-fun InsidePredicate_22337_32191 (T@Field_14538_14632 T@FrameType T@Field_32191_32192 T@FrameType) Bool)
(assert (forall ((s T@Seq_28430) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_14554| s)) (= (|Seq#Length_14554| (|Seq#Drop_14554| s n)) (- (|Seq#Length_14554| s) n))) (=> (< (|Seq#Length_14554| s) n) (= (|Seq#Length_14554| (|Seq#Drop_14554| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_14554| (|Seq#Drop_14554| s n)) (|Seq#Length_14554| s))))
 :qid |stdinbpl.331:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_14554| (|Seq#Drop_14554| s n)))
 :pattern ( (|Seq#Length_14554| s) (|Seq#Drop_14554| s n))
)))
(assert (forall ((s@@0 T@Seq_3203) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3203| s@@0)) (= (|Seq#Length_3203| (|Seq#Drop_3203| s@@0 n@@0)) (- (|Seq#Length_3203| s@@0) n@@0))) (=> (< (|Seq#Length_3203| s@@0) n@@0) (= (|Seq#Length_3203| (|Seq#Drop_3203| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3203| (|Seq#Drop_3203| s@@0 n@@0)) (|Seq#Length_3203| s@@0))))
 :qid |stdinbpl.331:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3203| (|Seq#Drop_3203| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3203| s@@0) (|Seq#Drop_3203| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_22277) (Heap1 T@PolymorphicMapType_22277) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_22277) (Mask T@PolymorphicMapType_22298) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_22277) (Heap1@@0 T@PolymorphicMapType_22277) (Heap2 T@PolymorphicMapType_22277) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_34782_34787) ) (!  (not (select (|PolymorphicMapType_22826_32191_69086#PolymorphicMapType_22826| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22826_32191_69086#PolymorphicMapType_22826| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_32191_32192) ) (!  (not (select (|PolymorphicMapType_22826_32191_32192#PolymorphicMapType_22826| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22826_32191_32192#PolymorphicMapType_22826| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14631_22351) ) (!  (not (select (|PolymorphicMapType_22826_32191_22351#PolymorphicMapType_22826| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22826_32191_22351#PolymorphicMapType_22826| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_14631_53) ) (!  (not (select (|PolymorphicMapType_22826_32191_53#PolymorphicMapType_22826| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22826_32191_53#PolymorphicMapType_22826| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_14631_3325) ) (!  (not (select (|PolymorphicMapType_22826_32191_3325#PolymorphicMapType_22826| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22826_32191_3325#PolymorphicMapType_22826| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_14538_34787) ) (!  (not (select (|PolymorphicMapType_22826_14538_68038#PolymorphicMapType_22826| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22826_14538_68038#PolymorphicMapType_22826| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_14538_14632) ) (!  (not (select (|PolymorphicMapType_22826_14538_32192#PolymorphicMapType_22826| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22826_14538_32192#PolymorphicMapType_22826| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_22350_22351) ) (!  (not (select (|PolymorphicMapType_22826_14538_22351#PolymorphicMapType_22826| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22826_14538_22351#PolymorphicMapType_22826| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_22337_53) ) (!  (not (select (|PolymorphicMapType_22826_14538_53#PolymorphicMapType_22826| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22826_14538_53#PolymorphicMapType_22826| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_28383_3325) ) (!  (not (select (|PolymorphicMapType_22826_14538_3325#PolymorphicMapType_22826| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22826_14538_3325#PolymorphicMapType_22826| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((s@@1 T@Seq_28430) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_14554| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_14554| (|Seq#Drop_14554| s@@1 n@@1) j) (|Seq#Index_14554| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.352:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_14554| (|Seq#Drop_14554| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3203) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3203| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3203| (|Seq#Drop_3203| s@@2 n@@2) j@@0) (|Seq#Index_3203| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.352:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3203| (|Seq#Drop_3203| s@@2 n@@2) j@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_22277) (Mask@@0 T@PolymorphicMapType_22298) (xs T@Seq_28430) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 0)) (= (fun2 Heap@@0 xs) (select (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@0) (|Seq#Index_14554| xs 0) f_7)))
 :qid |stdinbpl.768:15|
 :skolemid |73|
 :pattern ( (state Heap@@0 Mask@@0) (fun2 Heap@@0 xs))
 :pattern ( (state Heap@@0 Mask@@0) (|fun2#triggerStateless| xs) (|P#trigger_14631| Heap@@0 (P xs)))
)))
(assert (= (|Seq#Length_14554| |Seq#Empty_14554|) 0))
(assert (= (|Seq#Length_3203| |Seq#Empty_3203|) 0))
(assert (forall ((xs@@0 T@Seq_28430) ) (! (IsPredicateField_14631_14632 (P xs@@0))
 :qid |stdinbpl.896:15|
 :skolemid |85|
 :pattern ( (P xs@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_22277) (xs@@1 T@Seq_28430) ) (! (dummyFunction_3876 (|fun1#triggerStateless| xs@@1))
 :qid |stdinbpl.617:15|
 :skolemid |59|
 :pattern ( (|fun1'| Heap@@1 xs@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_22277) (xs@@2 T@Seq_28430) ) (! (dummyFunction_3876 (|fun2#triggerStateless| xs@@2))
 :qid |stdinbpl.762:15|
 :skolemid |72|
 :pattern ( (|fun2'| Heap@@2 xs@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_22277) (xs@@3 T@Seq_28430) ) (! (|P#everUsed_14631| (P xs@@3))
 :qid |stdinbpl.915:15|
 :skolemid |89|
 :pattern ( (|P#trigger_14631| Heap@@3 (P xs@@3)))
)))
(assert (forall ((s@@3 T@Seq_28430) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_14554| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_14554| (|Seq#Update_14554| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_14554| (|Seq#Update_14554| s@@3 i v) n@@3) (|Seq#Index_14554| s@@3 n@@3)))))
 :qid |stdinbpl.307:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_14554| (|Seq#Update_14554| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_14554| s@@3 n@@3) (|Seq#Update_14554| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3203) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3203| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3203| (|Seq#Update_3203| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3203| (|Seq#Update_3203| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3203| s@@4 n@@4)))))
 :qid |stdinbpl.307:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3203| (|Seq#Update_3203| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3203| s@@4 n@@4) (|Seq#Update_3203| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_28430) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_14554| s@@5)) (= (|Seq#Length_14554| (|Seq#Take_14554| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_14554| s@@5) n@@5) (= (|Seq#Length_14554| (|Seq#Take_14554| s@@5 n@@5)) (|Seq#Length_14554| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_14554| (|Seq#Take_14554| s@@5 n@@5)) 0)))
 :qid |stdinbpl.318:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_14554| (|Seq#Take_14554| s@@5 n@@5)))
 :pattern ( (|Seq#Take_14554| s@@5 n@@5) (|Seq#Length_14554| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3203) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3203| s@@6)) (= (|Seq#Length_3203| (|Seq#Take_3203| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3203| s@@6) n@@6) (= (|Seq#Length_3203| (|Seq#Take_3203| s@@6 n@@6)) (|Seq#Length_3203| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3203| (|Seq#Take_3203| s@@6 n@@6)) 0)))
 :qid |stdinbpl.318:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3203| (|Seq#Take_3203| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3203| s@@6 n@@6) (|Seq#Length_3203| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3203| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.592:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_28430) (x T@Ref) ) (!  (=> (|Seq#Contains_28430| s@@7 x) (and (and (<= 0 (|Seq#Skolem_28430| s@@7 x)) (< (|Seq#Skolem_28430| s@@7 x) (|Seq#Length_14554| s@@7))) (= (|Seq#Index_14554| s@@7 (|Seq#Skolem_28430| s@@7 x)) x)))
 :qid |stdinbpl.450:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_28430| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3203) (x@@0 Int) ) (!  (=> (|Seq#Contains_3203| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3203| s@@8 x@@0)) (< (|Seq#Skolem_3203| s@@8 x@@0) (|Seq#Length_3203| s@@8))) (= (|Seq#Index_3203| s@@8 (|Seq#Skolem_3203| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.450:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3203| s@@8 x@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_22277) (xs@@4 T@Seq_28430) ) (!  (and (= (fun1 Heap@@4 xs@@4) (|fun1'| Heap@@4 xs@@4)) (dummyFunction_3876 (|fun1#triggerStateless| xs@@4)))
 :qid |stdinbpl.613:15|
 :skolemid |58|
 :pattern ( (fun1 Heap@@4 xs@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_22277) (xs@@5 T@Seq_28430) ) (!  (and (= (fun2 Heap@@5 xs@@5) (|fun2'| Heap@@5 xs@@5)) (dummyFunction_3876 (|fun2#triggerStateless| xs@@5)))
 :qid |stdinbpl.758:15|
 :skolemid |71|
 :pattern ( (fun2 Heap@@5 xs@@5))
)))
(assert (forall ((s@@9 T@Seq_28430) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_14554| s@@9 n@@7) s@@9))
 :qid |stdinbpl.434:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_14554| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3203) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3203| s@@10 n@@8) s@@10))
 :qid |stdinbpl.434:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3203| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.287:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.285:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_22277) (ExhaleHeap T@PolymorphicMapType_22277) (Mask@@1 T@PolymorphicMapType_22298) (pm_f_18 T@Field_32191_32192) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_14631_14632 Mask@@1 null pm_f_18) (IsPredicateField_14631_14632 pm_f_18)) (= (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@6) null (PredicateMaskField_14631 pm_f_18)) (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| ExhaleHeap) null (PredicateMaskField_14631 pm_f_18)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@1) (IsPredicateField_14631_14632 pm_f_18) (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| ExhaleHeap) null (PredicateMaskField_14631 pm_f_18)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_22277) (ExhaleHeap@@0 T@PolymorphicMapType_22277) (Mask@@2 T@PolymorphicMapType_22298) (pm_f_18@@0 T@Field_14538_14632) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_14538_14632 Mask@@2 null pm_f_18@@0) (IsPredicateField_14538_66566 pm_f_18@@0)) (= (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@7) null (PredicateMaskField_14538 pm_f_18@@0)) (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| ExhaleHeap@@0) null (PredicateMaskField_14538 pm_f_18@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@2) (IsPredicateField_14538_66566 pm_f_18@@0) (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| ExhaleHeap@@0) null (PredicateMaskField_14538 pm_f_18@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_22277) (ExhaleHeap@@1 T@PolymorphicMapType_22277) (Mask@@3 T@PolymorphicMapType_22298) (pm_f_18@@1 T@Field_32191_32192) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_14631_14632 Mask@@3 null pm_f_18@@1) (IsWandField_14631_70251 pm_f_18@@1)) (= (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@8) null (WandMaskField_14631 pm_f_18@@1)) (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| ExhaleHeap@@1) null (WandMaskField_14631 pm_f_18@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@3) (IsWandField_14631_70251 pm_f_18@@1) (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| ExhaleHeap@@1) null (WandMaskField_14631 pm_f_18@@1)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_22277) (ExhaleHeap@@2 T@PolymorphicMapType_22277) (Mask@@4 T@PolymorphicMapType_22298) (pm_f_18@@2 T@Field_14538_14632) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_14538_14632 Mask@@4 null pm_f_18@@2) (IsWandField_14538_69894 pm_f_18@@2)) (= (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@9) null (WandMaskField_14538 pm_f_18@@2)) (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| ExhaleHeap@@2) null (WandMaskField_14538 pm_f_18@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@4) (IsWandField_14538_69894 pm_f_18@@2) (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| ExhaleHeap@@2) null (WandMaskField_14538 pm_f_18@@2)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_28430| (|Seq#Singleton_14554| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.575:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_28430| (|Seq#Singleton_14554| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3203| (|Seq#Singleton_3203| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.575:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3203| (|Seq#Singleton_3203| x@@2) y@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_22277) (Mask@@5 T@PolymorphicMapType_22298) (xs@@6 T@Seq_28430) ) (!  (=> (and (state Heap@@10 Mask@@5) (< AssumeFunctionsAbove 1)) (=> (and (< 5 (|Seq#Length_14554| xs@@6)) (forall ((i1 Int) (i2_1 Int) ) (!  (=> (and (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@6)) i1) (and (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@6)) i2_1) (not (= i1 i2_1)))) (not (= (|Seq#Index_14554| xs@@6 i1) (|Seq#Index_14554| xs@@6 i2_1))))
 :qid |stdinbpl.625:83|
 :skolemid |60|
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@6)) i1) (|Seq#ContainsTrigger_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@6)) i2_1))
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@6)) i1) (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@6)) i2_1))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@6)) i1) (|Seq#ContainsTrigger_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@6)) i2_1))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@6)) i1) (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@6)) i2_1))
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@6)) i1) (|Seq#Index_14554| xs@@6 i2_1))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@6)) i1) (|Seq#Index_14554| xs@@6 i2_1))
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@6)) i2_1) (|Seq#Index_14554| xs@@6 i1))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@6)) i2_1) (|Seq#Index_14554| xs@@6 i1))
 :pattern ( (|Seq#Index_14554| xs@@6 i1) (|Seq#Index_14554| xs@@6 i2_1))
))) (= (fun1 Heap@@10 xs@@6) (select (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@10) (|Seq#Index_14554| xs@@6 0) f_7))))
 :qid |stdinbpl.623:15|
 :skolemid |61|
 :pattern ( (state Heap@@10 Mask@@5) (fun1 Heap@@10 xs@@6))
)))
(assert (forall ((s@@11 T@Seq_28430) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_14554| s@@11))) (= (|Seq#Index_14554| (|Seq#Take_14554| s@@11 n@@9) j@@3) (|Seq#Index_14554| s@@11 j@@3)))
 :qid |stdinbpl.326:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_14554| (|Seq#Take_14554| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_14554| s@@11 j@@3) (|Seq#Take_14554| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3203) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3203| s@@12))) (= (|Seq#Index_3203| (|Seq#Take_3203| s@@12 n@@10) j@@4) (|Seq#Index_3203| s@@12 j@@4)))
 :qid |stdinbpl.326:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3203| (|Seq#Take_3203| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3203| s@@12 j@@4) (|Seq#Take_3203| s@@12 n@@10))
)))
(assert (forall ((xs@@7 T@Seq_28430) (xs2 T@Seq_28430) ) (!  (=> (= (P xs@@7) (P xs2)) (= xs@@7 xs2))
 :qid |stdinbpl.906:15|
 :skolemid |87|
 :pattern ( (P xs@@7) (P xs2))
)))
(assert (forall ((xs@@8 T@Seq_28430) (xs2@@0 T@Seq_28430) ) (!  (=> (= (|P#sm| xs@@8) (|P#sm| xs2@@0)) (= xs@@8 xs2@@0))
 :qid |stdinbpl.910:15|
 :skolemid |88|
 :pattern ( (|P#sm| xs@@8) (|P#sm| xs2@@0))
)))
(assert (forall ((s@@13 T@Seq_28430) (t T@Seq_28430) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_14554| s@@13))) (< n@@11 (|Seq#Length_14554| (|Seq#Append_28430| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_14554| s@@13)) (|Seq#Length_14554| s@@13)) n@@11) (= (|Seq#Take_14554| (|Seq#Append_28430| s@@13 t) n@@11) (|Seq#Append_28430| s@@13 (|Seq#Take_14554| t (|Seq#Sub| n@@11 (|Seq#Length_14554| s@@13)))))))
 :qid |stdinbpl.411:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_14554| (|Seq#Append_28430| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3203) (t@@0 T@Seq_3203) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3203| s@@14))) (< n@@12 (|Seq#Length_3203| (|Seq#Append_3203| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3203| s@@14)) (|Seq#Length_3203| s@@14)) n@@12) (= (|Seq#Take_3203| (|Seq#Append_3203| s@@14 t@@0) n@@12) (|Seq#Append_3203| s@@14 (|Seq#Take_3203| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3203| s@@14)))))))
 :qid |stdinbpl.411:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3203| (|Seq#Append_3203| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_22277) (ExhaleHeap@@3 T@PolymorphicMapType_22277) (Mask@@6 T@PolymorphicMapType_22298) (pm_f_18@@3 T@Field_32191_32192) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@6) (=> (and (HasDirectPerm_14631_14632 Mask@@6 null pm_f_18@@3) (IsPredicateField_14631_14632 pm_f_18@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_18 T@Ref) (f_48 T@Field_28383_3325) ) (!  (=> (select (|PolymorphicMapType_22826_14538_3325#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@11) null (PredicateMaskField_14631 pm_f_18@@3))) o2_18 f_48) (= (select (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@11) o2_18 f_48) (select (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| ExhaleHeap@@3) o2_18 f_48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| ExhaleHeap@@3) o2_18 f_48))
)) (forall ((o2_18@@0 T@Ref) (f_48@@0 T@Field_22337_53) ) (!  (=> (select (|PolymorphicMapType_22826_14538_53#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@11) null (PredicateMaskField_14631 pm_f_18@@3))) o2_18@@0 f_48@@0) (= (select (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@11) o2_18@@0 f_48@@0) (select (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| ExhaleHeap@@3) o2_18@@0 f_48@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| ExhaleHeap@@3) o2_18@@0 f_48@@0))
))) (forall ((o2_18@@1 T@Ref) (f_48@@1 T@Field_22350_22351) ) (!  (=> (select (|PolymorphicMapType_22826_14538_22351#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@11) null (PredicateMaskField_14631 pm_f_18@@3))) o2_18@@1 f_48@@1) (= (select (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@11) o2_18@@1 f_48@@1) (select (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| ExhaleHeap@@3) o2_18@@1 f_48@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| ExhaleHeap@@3) o2_18@@1 f_48@@1))
))) (forall ((o2_18@@2 T@Ref) (f_48@@2 T@Field_14538_14632) ) (!  (=> (select (|PolymorphicMapType_22826_14538_32192#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@11) null (PredicateMaskField_14631 pm_f_18@@3))) o2_18@@2 f_48@@2) (= (select (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@11) o2_18@@2 f_48@@2) (select (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| ExhaleHeap@@3) o2_18@@2 f_48@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| ExhaleHeap@@3) o2_18@@2 f_48@@2))
))) (forall ((o2_18@@3 T@Ref) (f_48@@3 T@Field_14538_34787) ) (!  (=> (select (|PolymorphicMapType_22826_14538_68038#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@11) null (PredicateMaskField_14631 pm_f_18@@3))) o2_18@@3 f_48@@3) (= (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@11) o2_18@@3 f_48@@3) (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| ExhaleHeap@@3) o2_18@@3 f_48@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| ExhaleHeap@@3) o2_18@@3 f_48@@3))
))) (forall ((o2_18@@4 T@Ref) (f_48@@4 T@Field_14631_3325) ) (!  (=> (select (|PolymorphicMapType_22826_32191_3325#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@11) null (PredicateMaskField_14631 pm_f_18@@3))) o2_18@@4 f_48@@4) (= (select (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@11) o2_18@@4 f_48@@4) (select (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| ExhaleHeap@@3) o2_18@@4 f_48@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| ExhaleHeap@@3) o2_18@@4 f_48@@4))
))) (forall ((o2_18@@5 T@Ref) (f_48@@5 T@Field_14631_53) ) (!  (=> (select (|PolymorphicMapType_22826_32191_53#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@11) null (PredicateMaskField_14631 pm_f_18@@3))) o2_18@@5 f_48@@5) (= (select (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@11) o2_18@@5 f_48@@5) (select (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| ExhaleHeap@@3) o2_18@@5 f_48@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| ExhaleHeap@@3) o2_18@@5 f_48@@5))
))) (forall ((o2_18@@6 T@Ref) (f_48@@6 T@Field_14631_22351) ) (!  (=> (select (|PolymorphicMapType_22826_32191_22351#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@11) null (PredicateMaskField_14631 pm_f_18@@3))) o2_18@@6 f_48@@6) (= (select (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@11) o2_18@@6 f_48@@6) (select (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| ExhaleHeap@@3) o2_18@@6 f_48@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| ExhaleHeap@@3) o2_18@@6 f_48@@6))
))) (forall ((o2_18@@7 T@Ref) (f_48@@7 T@Field_32191_32192) ) (!  (=> (select (|PolymorphicMapType_22826_32191_32192#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@11) null (PredicateMaskField_14631 pm_f_18@@3))) o2_18@@7 f_48@@7) (= (select (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@11) o2_18@@7 f_48@@7) (select (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| ExhaleHeap@@3) o2_18@@7 f_48@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| ExhaleHeap@@3) o2_18@@7 f_48@@7))
))) (forall ((o2_18@@8 T@Ref) (f_48@@8 T@Field_34782_34787) ) (!  (=> (select (|PolymorphicMapType_22826_32191_69086#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@11) null (PredicateMaskField_14631 pm_f_18@@3))) o2_18@@8 f_48@@8) (= (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@11) o2_18@@8 f_48@@8) (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| ExhaleHeap@@3) o2_18@@8 f_48@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| ExhaleHeap@@3) o2_18@@8 f_48@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@6) (IsPredicateField_14631_14632 pm_f_18@@3))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_22277) (ExhaleHeap@@4 T@PolymorphicMapType_22277) (Mask@@7 T@PolymorphicMapType_22298) (pm_f_18@@4 T@Field_14538_14632) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@7) (=> (and (HasDirectPerm_14538_14632 Mask@@7 null pm_f_18@@4) (IsPredicateField_14538_66566 pm_f_18@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_18@@9 T@Ref) (f_48@@9 T@Field_28383_3325) ) (!  (=> (select (|PolymorphicMapType_22826_14538_3325#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@12) null (PredicateMaskField_14538 pm_f_18@@4))) o2_18@@9 f_48@@9) (= (select (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@12) o2_18@@9 f_48@@9) (select (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| ExhaleHeap@@4) o2_18@@9 f_48@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| ExhaleHeap@@4) o2_18@@9 f_48@@9))
)) (forall ((o2_18@@10 T@Ref) (f_48@@10 T@Field_22337_53) ) (!  (=> (select (|PolymorphicMapType_22826_14538_53#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@12) null (PredicateMaskField_14538 pm_f_18@@4))) o2_18@@10 f_48@@10) (= (select (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@12) o2_18@@10 f_48@@10) (select (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| ExhaleHeap@@4) o2_18@@10 f_48@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| ExhaleHeap@@4) o2_18@@10 f_48@@10))
))) (forall ((o2_18@@11 T@Ref) (f_48@@11 T@Field_22350_22351) ) (!  (=> (select (|PolymorphicMapType_22826_14538_22351#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@12) null (PredicateMaskField_14538 pm_f_18@@4))) o2_18@@11 f_48@@11) (= (select (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@12) o2_18@@11 f_48@@11) (select (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| ExhaleHeap@@4) o2_18@@11 f_48@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| ExhaleHeap@@4) o2_18@@11 f_48@@11))
))) (forall ((o2_18@@12 T@Ref) (f_48@@12 T@Field_14538_14632) ) (!  (=> (select (|PolymorphicMapType_22826_14538_32192#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@12) null (PredicateMaskField_14538 pm_f_18@@4))) o2_18@@12 f_48@@12) (= (select (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@12) o2_18@@12 f_48@@12) (select (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| ExhaleHeap@@4) o2_18@@12 f_48@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| ExhaleHeap@@4) o2_18@@12 f_48@@12))
))) (forall ((o2_18@@13 T@Ref) (f_48@@13 T@Field_14538_34787) ) (!  (=> (select (|PolymorphicMapType_22826_14538_68038#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@12) null (PredicateMaskField_14538 pm_f_18@@4))) o2_18@@13 f_48@@13) (= (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@12) o2_18@@13 f_48@@13) (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| ExhaleHeap@@4) o2_18@@13 f_48@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| ExhaleHeap@@4) o2_18@@13 f_48@@13))
))) (forall ((o2_18@@14 T@Ref) (f_48@@14 T@Field_14631_3325) ) (!  (=> (select (|PolymorphicMapType_22826_32191_3325#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@12) null (PredicateMaskField_14538 pm_f_18@@4))) o2_18@@14 f_48@@14) (= (select (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@12) o2_18@@14 f_48@@14) (select (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| ExhaleHeap@@4) o2_18@@14 f_48@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| ExhaleHeap@@4) o2_18@@14 f_48@@14))
))) (forall ((o2_18@@15 T@Ref) (f_48@@15 T@Field_14631_53) ) (!  (=> (select (|PolymorphicMapType_22826_32191_53#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@12) null (PredicateMaskField_14538 pm_f_18@@4))) o2_18@@15 f_48@@15) (= (select (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@12) o2_18@@15 f_48@@15) (select (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| ExhaleHeap@@4) o2_18@@15 f_48@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| ExhaleHeap@@4) o2_18@@15 f_48@@15))
))) (forall ((o2_18@@16 T@Ref) (f_48@@16 T@Field_14631_22351) ) (!  (=> (select (|PolymorphicMapType_22826_32191_22351#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@12) null (PredicateMaskField_14538 pm_f_18@@4))) o2_18@@16 f_48@@16) (= (select (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@12) o2_18@@16 f_48@@16) (select (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| ExhaleHeap@@4) o2_18@@16 f_48@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| ExhaleHeap@@4) o2_18@@16 f_48@@16))
))) (forall ((o2_18@@17 T@Ref) (f_48@@17 T@Field_32191_32192) ) (!  (=> (select (|PolymorphicMapType_22826_32191_32192#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@12) null (PredicateMaskField_14538 pm_f_18@@4))) o2_18@@17 f_48@@17) (= (select (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@12) o2_18@@17 f_48@@17) (select (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| ExhaleHeap@@4) o2_18@@17 f_48@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| ExhaleHeap@@4) o2_18@@17 f_48@@17))
))) (forall ((o2_18@@18 T@Ref) (f_48@@18 T@Field_34782_34787) ) (!  (=> (select (|PolymorphicMapType_22826_32191_69086#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@12) null (PredicateMaskField_14538 pm_f_18@@4))) o2_18@@18 f_48@@18) (= (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@12) o2_18@@18 f_48@@18) (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| ExhaleHeap@@4) o2_18@@18 f_48@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| ExhaleHeap@@4) o2_18@@18 f_48@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@7) (IsPredicateField_14538_66566 pm_f_18@@4))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_22277) (ExhaleHeap@@5 T@PolymorphicMapType_22277) (Mask@@8 T@PolymorphicMapType_22298) (pm_f_18@@5 T@Field_32191_32192) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@8) (=> (and (HasDirectPerm_14631_14632 Mask@@8 null pm_f_18@@5) (IsWandField_14631_70251 pm_f_18@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_18@@19 T@Ref) (f_48@@19 T@Field_28383_3325) ) (!  (=> (select (|PolymorphicMapType_22826_14538_3325#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@13) null (WandMaskField_14631 pm_f_18@@5))) o2_18@@19 f_48@@19) (= (select (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@13) o2_18@@19 f_48@@19) (select (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| ExhaleHeap@@5) o2_18@@19 f_48@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| ExhaleHeap@@5) o2_18@@19 f_48@@19))
)) (forall ((o2_18@@20 T@Ref) (f_48@@20 T@Field_22337_53) ) (!  (=> (select (|PolymorphicMapType_22826_14538_53#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@13) null (WandMaskField_14631 pm_f_18@@5))) o2_18@@20 f_48@@20) (= (select (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@13) o2_18@@20 f_48@@20) (select (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| ExhaleHeap@@5) o2_18@@20 f_48@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| ExhaleHeap@@5) o2_18@@20 f_48@@20))
))) (forall ((o2_18@@21 T@Ref) (f_48@@21 T@Field_22350_22351) ) (!  (=> (select (|PolymorphicMapType_22826_14538_22351#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@13) null (WandMaskField_14631 pm_f_18@@5))) o2_18@@21 f_48@@21) (= (select (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@13) o2_18@@21 f_48@@21) (select (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| ExhaleHeap@@5) o2_18@@21 f_48@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| ExhaleHeap@@5) o2_18@@21 f_48@@21))
))) (forall ((o2_18@@22 T@Ref) (f_48@@22 T@Field_14538_14632) ) (!  (=> (select (|PolymorphicMapType_22826_14538_32192#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@13) null (WandMaskField_14631 pm_f_18@@5))) o2_18@@22 f_48@@22) (= (select (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@13) o2_18@@22 f_48@@22) (select (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| ExhaleHeap@@5) o2_18@@22 f_48@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| ExhaleHeap@@5) o2_18@@22 f_48@@22))
))) (forall ((o2_18@@23 T@Ref) (f_48@@23 T@Field_14538_34787) ) (!  (=> (select (|PolymorphicMapType_22826_14538_68038#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@13) null (WandMaskField_14631 pm_f_18@@5))) o2_18@@23 f_48@@23) (= (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@13) o2_18@@23 f_48@@23) (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| ExhaleHeap@@5) o2_18@@23 f_48@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| ExhaleHeap@@5) o2_18@@23 f_48@@23))
))) (forall ((o2_18@@24 T@Ref) (f_48@@24 T@Field_14631_3325) ) (!  (=> (select (|PolymorphicMapType_22826_32191_3325#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@13) null (WandMaskField_14631 pm_f_18@@5))) o2_18@@24 f_48@@24) (= (select (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@13) o2_18@@24 f_48@@24) (select (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| ExhaleHeap@@5) o2_18@@24 f_48@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| ExhaleHeap@@5) o2_18@@24 f_48@@24))
))) (forall ((o2_18@@25 T@Ref) (f_48@@25 T@Field_14631_53) ) (!  (=> (select (|PolymorphicMapType_22826_32191_53#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@13) null (WandMaskField_14631 pm_f_18@@5))) o2_18@@25 f_48@@25) (= (select (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@13) o2_18@@25 f_48@@25) (select (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| ExhaleHeap@@5) o2_18@@25 f_48@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| ExhaleHeap@@5) o2_18@@25 f_48@@25))
))) (forall ((o2_18@@26 T@Ref) (f_48@@26 T@Field_14631_22351) ) (!  (=> (select (|PolymorphicMapType_22826_32191_22351#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@13) null (WandMaskField_14631 pm_f_18@@5))) o2_18@@26 f_48@@26) (= (select (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@13) o2_18@@26 f_48@@26) (select (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| ExhaleHeap@@5) o2_18@@26 f_48@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| ExhaleHeap@@5) o2_18@@26 f_48@@26))
))) (forall ((o2_18@@27 T@Ref) (f_48@@27 T@Field_32191_32192) ) (!  (=> (select (|PolymorphicMapType_22826_32191_32192#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@13) null (WandMaskField_14631 pm_f_18@@5))) o2_18@@27 f_48@@27) (= (select (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@13) o2_18@@27 f_48@@27) (select (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| ExhaleHeap@@5) o2_18@@27 f_48@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| ExhaleHeap@@5) o2_18@@27 f_48@@27))
))) (forall ((o2_18@@28 T@Ref) (f_48@@28 T@Field_34782_34787) ) (!  (=> (select (|PolymorphicMapType_22826_32191_69086#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@13) null (WandMaskField_14631 pm_f_18@@5))) o2_18@@28 f_48@@28) (= (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@13) o2_18@@28 f_48@@28) (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| ExhaleHeap@@5) o2_18@@28 f_48@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| ExhaleHeap@@5) o2_18@@28 f_48@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@8) (IsWandField_14631_70251 pm_f_18@@5))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_22277) (ExhaleHeap@@6 T@PolymorphicMapType_22277) (Mask@@9 T@PolymorphicMapType_22298) (pm_f_18@@6 T@Field_14538_14632) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@9) (=> (and (HasDirectPerm_14538_14632 Mask@@9 null pm_f_18@@6) (IsWandField_14538_69894 pm_f_18@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_18@@29 T@Ref) (f_48@@29 T@Field_28383_3325) ) (!  (=> (select (|PolymorphicMapType_22826_14538_3325#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@14) null (WandMaskField_14538 pm_f_18@@6))) o2_18@@29 f_48@@29) (= (select (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@14) o2_18@@29 f_48@@29) (select (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| ExhaleHeap@@6) o2_18@@29 f_48@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| ExhaleHeap@@6) o2_18@@29 f_48@@29))
)) (forall ((o2_18@@30 T@Ref) (f_48@@30 T@Field_22337_53) ) (!  (=> (select (|PolymorphicMapType_22826_14538_53#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@14) null (WandMaskField_14538 pm_f_18@@6))) o2_18@@30 f_48@@30) (= (select (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@14) o2_18@@30 f_48@@30) (select (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| ExhaleHeap@@6) o2_18@@30 f_48@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| ExhaleHeap@@6) o2_18@@30 f_48@@30))
))) (forall ((o2_18@@31 T@Ref) (f_48@@31 T@Field_22350_22351) ) (!  (=> (select (|PolymorphicMapType_22826_14538_22351#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@14) null (WandMaskField_14538 pm_f_18@@6))) o2_18@@31 f_48@@31) (= (select (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@14) o2_18@@31 f_48@@31) (select (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| ExhaleHeap@@6) o2_18@@31 f_48@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| ExhaleHeap@@6) o2_18@@31 f_48@@31))
))) (forall ((o2_18@@32 T@Ref) (f_48@@32 T@Field_14538_14632) ) (!  (=> (select (|PolymorphicMapType_22826_14538_32192#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@14) null (WandMaskField_14538 pm_f_18@@6))) o2_18@@32 f_48@@32) (= (select (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@14) o2_18@@32 f_48@@32) (select (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| ExhaleHeap@@6) o2_18@@32 f_48@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| ExhaleHeap@@6) o2_18@@32 f_48@@32))
))) (forall ((o2_18@@33 T@Ref) (f_48@@33 T@Field_14538_34787) ) (!  (=> (select (|PolymorphicMapType_22826_14538_68038#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@14) null (WandMaskField_14538 pm_f_18@@6))) o2_18@@33 f_48@@33) (= (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@14) o2_18@@33 f_48@@33) (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| ExhaleHeap@@6) o2_18@@33 f_48@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| ExhaleHeap@@6) o2_18@@33 f_48@@33))
))) (forall ((o2_18@@34 T@Ref) (f_48@@34 T@Field_14631_3325) ) (!  (=> (select (|PolymorphicMapType_22826_32191_3325#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@14) null (WandMaskField_14538 pm_f_18@@6))) o2_18@@34 f_48@@34) (= (select (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@14) o2_18@@34 f_48@@34) (select (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| ExhaleHeap@@6) o2_18@@34 f_48@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| ExhaleHeap@@6) o2_18@@34 f_48@@34))
))) (forall ((o2_18@@35 T@Ref) (f_48@@35 T@Field_14631_53) ) (!  (=> (select (|PolymorphicMapType_22826_32191_53#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@14) null (WandMaskField_14538 pm_f_18@@6))) o2_18@@35 f_48@@35) (= (select (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@14) o2_18@@35 f_48@@35) (select (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| ExhaleHeap@@6) o2_18@@35 f_48@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| ExhaleHeap@@6) o2_18@@35 f_48@@35))
))) (forall ((o2_18@@36 T@Ref) (f_48@@36 T@Field_14631_22351) ) (!  (=> (select (|PolymorphicMapType_22826_32191_22351#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@14) null (WandMaskField_14538 pm_f_18@@6))) o2_18@@36 f_48@@36) (= (select (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@14) o2_18@@36 f_48@@36) (select (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| ExhaleHeap@@6) o2_18@@36 f_48@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| ExhaleHeap@@6) o2_18@@36 f_48@@36))
))) (forall ((o2_18@@37 T@Ref) (f_48@@37 T@Field_32191_32192) ) (!  (=> (select (|PolymorphicMapType_22826_32191_32192#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@14) null (WandMaskField_14538 pm_f_18@@6))) o2_18@@37 f_48@@37) (= (select (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@14) o2_18@@37 f_48@@37) (select (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| ExhaleHeap@@6) o2_18@@37 f_48@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| ExhaleHeap@@6) o2_18@@37 f_48@@37))
))) (forall ((o2_18@@38 T@Ref) (f_48@@38 T@Field_34782_34787) ) (!  (=> (select (|PolymorphicMapType_22826_32191_69086#PolymorphicMapType_22826| (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@14) null (WandMaskField_14538 pm_f_18@@6))) o2_18@@38 f_48@@38) (= (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@14) o2_18@@38 f_48@@38) (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| ExhaleHeap@@6) o2_18@@38 f_48@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| ExhaleHeap@@6) o2_18@@38 f_48@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@9) (IsWandField_14538_69894 pm_f_18@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@15 T@PolymorphicMapType_22277) (ExhaleHeap@@7 T@PolymorphicMapType_22277) (Mask@@10 T@PolymorphicMapType_22298) (o_42 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@10) (=> (select (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@15) o_42 $allocated) (select (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| ExhaleHeap@@7) o_42 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@10) (select (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| ExhaleHeap@@7) o_42 $allocated))
)))
(assert (forall ((p T@Field_32191_32192) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_32191_32191 p v_1 p w))
 :qid |stdinbpl.229:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_32191_32191 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_14538_14632) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_22337_22337 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.229:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22337_22337 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_28430) (s1 T@Seq_28430) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_14554|)) (not (= s1 |Seq#Empty_14554|))) (<= (|Seq#Length_14554| s0) n@@13)) (< n@@13 (|Seq#Length_14554| (|Seq#Append_28430| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_14554| s0)) (|Seq#Length_14554| s0)) n@@13) (= (|Seq#Index_14554| (|Seq#Append_28430| s0 s1) n@@13) (|Seq#Index_14554| s1 (|Seq#Sub| n@@13 (|Seq#Length_14554| s0))))))
 :qid |stdinbpl.298:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_14554| (|Seq#Append_28430| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3203) (s1@@0 T@Seq_3203) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3203|)) (not (= s1@@0 |Seq#Empty_3203|))) (<= (|Seq#Length_3203| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3203| (|Seq#Append_3203| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3203| s0@@0)) (|Seq#Length_3203| s0@@0)) n@@14) (= (|Seq#Index_3203| (|Seq#Append_3203| s0@@0 s1@@0) n@@14) (|Seq#Index_3203| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3203| s0@@0))))))
 :qid |stdinbpl.298:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3203| (|Seq#Append_3203| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_14538_3325 f_7)))
(assert  (not (IsWandField_14538_3325 f_7)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_22277) (ExhaleHeap@@8 T@PolymorphicMapType_22277) (Mask@@11 T@PolymorphicMapType_22298) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@11) (succHeap Heap@@16 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_22298) (o_2@@9 T@Ref) (f_4@@9 T@Field_34782_34787) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_22298_14631_74891#PolymorphicMapType_22298| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_14631_77183 f_4@@9))) (not (IsWandField_14631_77199 f_4@@9))) (<= (select (|PolymorphicMapType_22298_14631_74891#PolymorphicMapType_22298| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_22298_14631_74891#PolymorphicMapType_22298| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_22298) (o_2@@10 T@Ref) (f_4@@10 T@Field_14631_22351) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_22298_14631_22351#PolymorphicMapType_22298| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_14631_22351 f_4@@10))) (not (IsWandField_14631_22351 f_4@@10))) (<= (select (|PolymorphicMapType_22298_14631_22351#PolymorphicMapType_22298| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_22298_14631_22351#PolymorphicMapType_22298| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_22298) (o_2@@11 T@Ref) (f_4@@11 T@Field_14631_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_22298_14631_53#PolymorphicMapType_22298| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_14631_53 f_4@@11))) (not (IsWandField_14631_53 f_4@@11))) (<= (select (|PolymorphicMapType_22298_14631_53#PolymorphicMapType_22298| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_22298_14631_53#PolymorphicMapType_22298| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_22298) (o_2@@12 T@Ref) (f_4@@12 T@Field_32191_32192) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_22298_14631_14632#PolymorphicMapType_22298| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_14631_14632 f_4@@12))) (not (IsWandField_14631_70251 f_4@@12))) (<= (select (|PolymorphicMapType_22298_14631_14632#PolymorphicMapType_22298| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_22298_14631_14632#PolymorphicMapType_22298| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_22298) (o_2@@13 T@Ref) (f_4@@13 T@Field_14631_3325) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_22298_14631_3325#PolymorphicMapType_22298| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_14631_3325 f_4@@13))) (not (IsWandField_14631_3325 f_4@@13))) (<= (select (|PolymorphicMapType_22298_14631_3325#PolymorphicMapType_22298| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_22298_14631_3325#PolymorphicMapType_22298| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_22298) (o_2@@14 T@Ref) (f_4@@14 T@Field_14538_34787) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_22298_14538_74480#PolymorphicMapType_22298| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_14538_76352 f_4@@14))) (not (IsWandField_14538_76368 f_4@@14))) (<= (select (|PolymorphicMapType_22298_14538_74480#PolymorphicMapType_22298| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_22298_14538_74480#PolymorphicMapType_22298| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_22298) (o_2@@15 T@Ref) (f_4@@15 T@Field_22350_22351) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_22298_14538_22351#PolymorphicMapType_22298| Mask@@18) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_14538_22351 f_4@@15))) (not (IsWandField_14538_22351 f_4@@15))) (<= (select (|PolymorphicMapType_22298_14538_22351#PolymorphicMapType_22298| Mask@@18) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_22298_14538_22351#PolymorphicMapType_22298| Mask@@18) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_22298) (o_2@@16 T@Ref) (f_4@@16 T@Field_22337_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_22298_14538_53#PolymorphicMapType_22298| Mask@@19) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_14538_53 f_4@@16))) (not (IsWandField_14538_53 f_4@@16))) (<= (select (|PolymorphicMapType_22298_14538_53#PolymorphicMapType_22298| Mask@@19) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_22298_14538_53#PolymorphicMapType_22298| Mask@@19) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_22298) (o_2@@17 T@Ref) (f_4@@17 T@Field_14538_14632) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_22298_14538_14632#PolymorphicMapType_22298| Mask@@20) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_14538_66566 f_4@@17))) (not (IsWandField_14538_69894 f_4@@17))) (<= (select (|PolymorphicMapType_22298_14538_14632#PolymorphicMapType_22298| Mask@@20) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_22298_14538_14632#PolymorphicMapType_22298| Mask@@20) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_22298) (o_2@@18 T@Ref) (f_4@@18 T@Field_28383_3325) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| Mask@@21) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_14538_3325 f_4@@18))) (not (IsWandField_14538_3325 f_4@@18))) (<= (select (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| Mask@@21) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| Mask@@21) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_22298) (o_2@@19 T@Ref) (f_4@@19 T@Field_34782_34787) ) (! (= (HasDirectPerm_14631_66321 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_22298_14631_74891#PolymorphicMapType_22298| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14631_66321 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_22298) (o_2@@20 T@Ref) (f_4@@20 T@Field_14631_22351) ) (! (= (HasDirectPerm_14631_22351 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_22298_14631_22351#PolymorphicMapType_22298| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14631_22351 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_22298) (o_2@@21 T@Ref) (f_4@@21 T@Field_14631_53) ) (! (= (HasDirectPerm_14631_53 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_22298_14631_53#PolymorphicMapType_22298| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14631_53 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_22298) (o_2@@22 T@Ref) (f_4@@22 T@Field_32191_32192) ) (! (= (HasDirectPerm_14631_14632 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_22298_14631_14632#PolymorphicMapType_22298| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14631_14632 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_22298) (o_2@@23 T@Ref) (f_4@@23 T@Field_14631_3325) ) (! (= (HasDirectPerm_14631_3325 Mask@@26 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_22298_14631_3325#PolymorphicMapType_22298| Mask@@26) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14631_3325 Mask@@26 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_22298) (o_2@@24 T@Ref) (f_4@@24 T@Field_14538_34787) ) (! (= (HasDirectPerm_14538_65180 Mask@@27 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_22298_14538_74480#PolymorphicMapType_22298| Mask@@27) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14538_65180 Mask@@27 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_22298) (o_2@@25 T@Ref) (f_4@@25 T@Field_22350_22351) ) (! (= (HasDirectPerm_14538_22351 Mask@@28 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_22298_14538_22351#PolymorphicMapType_22298| Mask@@28) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14538_22351 Mask@@28 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_22298) (o_2@@26 T@Ref) (f_4@@26 T@Field_22337_53) ) (! (= (HasDirectPerm_14538_53 Mask@@29 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_22298_14538_53#PolymorphicMapType_22298| Mask@@29) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14538_53 Mask@@29 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_22298) (o_2@@27 T@Ref) (f_4@@27 T@Field_14538_14632) ) (! (= (HasDirectPerm_14538_14632 Mask@@30 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_22298_14538_14632#PolymorphicMapType_22298| Mask@@30) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14538_14632 Mask@@30 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_22298) (o_2@@28 T@Ref) (f_4@@28 T@Field_28383_3325) ) (! (= (HasDirectPerm_14538_3325 Mask@@31 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| Mask@@31) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14538_3325 Mask@@31 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.217:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3203| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.590:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3203| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_22277) (ExhaleHeap@@9 T@PolymorphicMapType_22277) (Mask@@32 T@PolymorphicMapType_22298) (o_42@@0 T@Ref) (f_48@@39 T@Field_34782_34787) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@9 Mask@@32) (=> (HasDirectPerm_14631_66321 Mask@@32 o_42@@0 f_48@@39) (= (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@17) o_42@@0 f_48@@39) (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| ExhaleHeap@@9) o_42@@0 f_48@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@9 Mask@@32) (select (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| ExhaleHeap@@9) o_42@@0 f_48@@39))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_22277) (ExhaleHeap@@10 T@PolymorphicMapType_22277) (Mask@@33 T@PolymorphicMapType_22298) (o_42@@1 T@Ref) (f_48@@40 T@Field_14631_22351) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@10 Mask@@33) (=> (HasDirectPerm_14631_22351 Mask@@33 o_42@@1 f_48@@40) (= (select (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@18) o_42@@1 f_48@@40) (select (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| ExhaleHeap@@10) o_42@@1 f_48@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@10 Mask@@33) (select (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| ExhaleHeap@@10) o_42@@1 f_48@@40))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_22277) (ExhaleHeap@@11 T@PolymorphicMapType_22277) (Mask@@34 T@PolymorphicMapType_22298) (o_42@@2 T@Ref) (f_48@@41 T@Field_14631_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@11 Mask@@34) (=> (HasDirectPerm_14631_53 Mask@@34 o_42@@2 f_48@@41) (= (select (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@19) o_42@@2 f_48@@41) (select (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| ExhaleHeap@@11) o_42@@2 f_48@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@11 Mask@@34) (select (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| ExhaleHeap@@11) o_42@@2 f_48@@41))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_22277) (ExhaleHeap@@12 T@PolymorphicMapType_22277) (Mask@@35 T@PolymorphicMapType_22298) (o_42@@3 T@Ref) (f_48@@42 T@Field_32191_32192) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@12 Mask@@35) (=> (HasDirectPerm_14631_14632 Mask@@35 o_42@@3 f_48@@42) (= (select (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@20) o_42@@3 f_48@@42) (select (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| ExhaleHeap@@12) o_42@@3 f_48@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@12 Mask@@35) (select (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| ExhaleHeap@@12) o_42@@3 f_48@@42))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_22277) (ExhaleHeap@@13 T@PolymorphicMapType_22277) (Mask@@36 T@PolymorphicMapType_22298) (o_42@@4 T@Ref) (f_48@@43 T@Field_14631_3325) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@13 Mask@@36) (=> (HasDirectPerm_14631_3325 Mask@@36 o_42@@4 f_48@@43) (= (select (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@21) o_42@@4 f_48@@43) (select (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| ExhaleHeap@@13) o_42@@4 f_48@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@13 Mask@@36) (select (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| ExhaleHeap@@13) o_42@@4 f_48@@43))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_22277) (ExhaleHeap@@14 T@PolymorphicMapType_22277) (Mask@@37 T@PolymorphicMapType_22298) (o_42@@5 T@Ref) (f_48@@44 T@Field_14538_34787) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@14 Mask@@37) (=> (HasDirectPerm_14538_65180 Mask@@37 o_42@@5 f_48@@44) (= (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@22) o_42@@5 f_48@@44) (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| ExhaleHeap@@14) o_42@@5 f_48@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@14 Mask@@37) (select (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| ExhaleHeap@@14) o_42@@5 f_48@@44))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_22277) (ExhaleHeap@@15 T@PolymorphicMapType_22277) (Mask@@38 T@PolymorphicMapType_22298) (o_42@@6 T@Ref) (f_48@@45 T@Field_22350_22351) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@15 Mask@@38) (=> (HasDirectPerm_14538_22351 Mask@@38 o_42@@6 f_48@@45) (= (select (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@23) o_42@@6 f_48@@45) (select (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| ExhaleHeap@@15) o_42@@6 f_48@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@15 Mask@@38) (select (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| ExhaleHeap@@15) o_42@@6 f_48@@45))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_22277) (ExhaleHeap@@16 T@PolymorphicMapType_22277) (Mask@@39 T@PolymorphicMapType_22298) (o_42@@7 T@Ref) (f_48@@46 T@Field_22337_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@16 Mask@@39) (=> (HasDirectPerm_14538_53 Mask@@39 o_42@@7 f_48@@46) (= (select (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@24) o_42@@7 f_48@@46) (select (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| ExhaleHeap@@16) o_42@@7 f_48@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@16 Mask@@39) (select (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| ExhaleHeap@@16) o_42@@7 f_48@@46))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_22277) (ExhaleHeap@@17 T@PolymorphicMapType_22277) (Mask@@40 T@PolymorphicMapType_22298) (o_42@@8 T@Ref) (f_48@@47 T@Field_14538_14632) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@17 Mask@@40) (=> (HasDirectPerm_14538_14632 Mask@@40 o_42@@8 f_48@@47) (= (select (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@25) o_42@@8 f_48@@47) (select (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| ExhaleHeap@@17) o_42@@8 f_48@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@17 Mask@@40) (select (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| ExhaleHeap@@17) o_42@@8 f_48@@47))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_22277) (ExhaleHeap@@18 T@PolymorphicMapType_22277) (Mask@@41 T@PolymorphicMapType_22298) (o_42@@9 T@Ref) (f_48@@48 T@Field_28383_3325) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@18 Mask@@41) (=> (HasDirectPerm_14538_3325 Mask@@41 o_42@@9 f_48@@48) (= (select (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@26) o_42@@9 f_48@@48) (select (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| ExhaleHeap@@18) o_42@@9 f_48@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@18 Mask@@41) (select (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| ExhaleHeap@@18) o_42@@9 f_48@@48))
)))
(assert (forall ((s0@@1 T@Seq_28430) (s1@@1 T@Seq_28430) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_14554|)) (not (= s1@@1 |Seq#Empty_14554|))) (= (|Seq#Length_14554| (|Seq#Append_28430| s0@@1 s1@@1)) (+ (|Seq#Length_14554| s0@@1) (|Seq#Length_14554| s1@@1))))
 :qid |stdinbpl.267:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_14554| (|Seq#Append_28430| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3203) (s1@@2 T@Seq_3203) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3203|)) (not (= s1@@2 |Seq#Empty_3203|))) (= (|Seq#Length_3203| (|Seq#Append_3203| s0@@2 s1@@2)) (+ (|Seq#Length_3203| s0@@2) (|Seq#Length_3203| s1@@2))))
 :qid |stdinbpl.267:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3203| (|Seq#Append_3203| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_34782_34787) ) (! (= (select (|PolymorphicMapType_22298_14631_74891#PolymorphicMapType_22298| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22298_14631_74891#PolymorphicMapType_22298| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_14631_22351) ) (! (= (select (|PolymorphicMapType_22298_14631_22351#PolymorphicMapType_22298| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22298_14631_22351#PolymorphicMapType_22298| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_14631_53) ) (! (= (select (|PolymorphicMapType_22298_14631_53#PolymorphicMapType_22298| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22298_14631_53#PolymorphicMapType_22298| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_32191_32192) ) (! (= (select (|PolymorphicMapType_22298_14631_14632#PolymorphicMapType_22298| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22298_14631_14632#PolymorphicMapType_22298| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_14631_3325) ) (! (= (select (|PolymorphicMapType_22298_14631_3325#PolymorphicMapType_22298| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22298_14631_3325#PolymorphicMapType_22298| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_14538_34787) ) (! (= (select (|PolymorphicMapType_22298_14538_74480#PolymorphicMapType_22298| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22298_14538_74480#PolymorphicMapType_22298| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_22350_22351) ) (! (= (select (|PolymorphicMapType_22298_14538_22351#PolymorphicMapType_22298| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22298_14538_22351#PolymorphicMapType_22298| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_22337_53) ) (! (= (select (|PolymorphicMapType_22298_14538_53#PolymorphicMapType_22298| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22298_14538_53#PolymorphicMapType_22298| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_14538_14632) ) (! (= (select (|PolymorphicMapType_22298_14538_14632#PolymorphicMapType_22298| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22298_14538_14632#PolymorphicMapType_22298| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_28383_3325) ) (! (= (select (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@15 T@Seq_28430) (t@@1 T@Seq_28430) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_14554| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_14554| s@@15)) (|Seq#Length_14554| s@@15)) n@@15) (= (|Seq#Drop_14554| (|Seq#Append_28430| s@@15 t@@1) n@@15) (|Seq#Drop_14554| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_14554| s@@15))))))
 :qid |stdinbpl.424:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_14554| (|Seq#Append_28430| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3203) (t@@2 T@Seq_3203) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3203| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3203| s@@16)) (|Seq#Length_3203| s@@16)) n@@16) (= (|Seq#Drop_3203| (|Seq#Append_3203| s@@16 t@@2) n@@16) (|Seq#Drop_3203| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3203| s@@16))))))
 :qid |stdinbpl.424:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3203| (|Seq#Append_3203| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_22298) (SummandMask1 T@PolymorphicMapType_22298) (SummandMask2 T@PolymorphicMapType_22298) (o_2@@39 T@Ref) (f_4@@39 T@Field_34782_34787) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_22298_14631_74891#PolymorphicMapType_22298| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_22298_14631_74891#PolymorphicMapType_22298| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_22298_14631_74891#PolymorphicMapType_22298| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22298_14631_74891#PolymorphicMapType_22298| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22298_14631_74891#PolymorphicMapType_22298| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22298_14631_74891#PolymorphicMapType_22298| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_22298) (SummandMask1@@0 T@PolymorphicMapType_22298) (SummandMask2@@0 T@PolymorphicMapType_22298) (o_2@@40 T@Ref) (f_4@@40 T@Field_14631_22351) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_22298_14631_22351#PolymorphicMapType_22298| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_22298_14631_22351#PolymorphicMapType_22298| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_22298_14631_22351#PolymorphicMapType_22298| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22298_14631_22351#PolymorphicMapType_22298| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22298_14631_22351#PolymorphicMapType_22298| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22298_14631_22351#PolymorphicMapType_22298| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_22298) (SummandMask1@@1 T@PolymorphicMapType_22298) (SummandMask2@@1 T@PolymorphicMapType_22298) (o_2@@41 T@Ref) (f_4@@41 T@Field_14631_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_22298_14631_53#PolymorphicMapType_22298| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_22298_14631_53#PolymorphicMapType_22298| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_22298_14631_53#PolymorphicMapType_22298| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22298_14631_53#PolymorphicMapType_22298| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22298_14631_53#PolymorphicMapType_22298| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22298_14631_53#PolymorphicMapType_22298| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_22298) (SummandMask1@@2 T@PolymorphicMapType_22298) (SummandMask2@@2 T@PolymorphicMapType_22298) (o_2@@42 T@Ref) (f_4@@42 T@Field_32191_32192) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_22298_14631_14632#PolymorphicMapType_22298| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_22298_14631_14632#PolymorphicMapType_22298| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_22298_14631_14632#PolymorphicMapType_22298| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22298_14631_14632#PolymorphicMapType_22298| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22298_14631_14632#PolymorphicMapType_22298| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22298_14631_14632#PolymorphicMapType_22298| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_22298) (SummandMask1@@3 T@PolymorphicMapType_22298) (SummandMask2@@3 T@PolymorphicMapType_22298) (o_2@@43 T@Ref) (f_4@@43 T@Field_14631_3325) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_22298_14631_3325#PolymorphicMapType_22298| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_22298_14631_3325#PolymorphicMapType_22298| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_22298_14631_3325#PolymorphicMapType_22298| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22298_14631_3325#PolymorphicMapType_22298| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22298_14631_3325#PolymorphicMapType_22298| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22298_14631_3325#PolymorphicMapType_22298| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_22298) (SummandMask1@@4 T@PolymorphicMapType_22298) (SummandMask2@@4 T@PolymorphicMapType_22298) (o_2@@44 T@Ref) (f_4@@44 T@Field_14538_34787) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_22298_14538_74480#PolymorphicMapType_22298| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_22298_14538_74480#PolymorphicMapType_22298| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_22298_14538_74480#PolymorphicMapType_22298| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22298_14538_74480#PolymorphicMapType_22298| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22298_14538_74480#PolymorphicMapType_22298| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22298_14538_74480#PolymorphicMapType_22298| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_22298) (SummandMask1@@5 T@PolymorphicMapType_22298) (SummandMask2@@5 T@PolymorphicMapType_22298) (o_2@@45 T@Ref) (f_4@@45 T@Field_22350_22351) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_22298_14538_22351#PolymorphicMapType_22298| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_22298_14538_22351#PolymorphicMapType_22298| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_22298_14538_22351#PolymorphicMapType_22298| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22298_14538_22351#PolymorphicMapType_22298| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22298_14538_22351#PolymorphicMapType_22298| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22298_14538_22351#PolymorphicMapType_22298| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_22298) (SummandMask1@@6 T@PolymorphicMapType_22298) (SummandMask2@@6 T@PolymorphicMapType_22298) (o_2@@46 T@Ref) (f_4@@46 T@Field_22337_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_22298_14538_53#PolymorphicMapType_22298| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_22298_14538_53#PolymorphicMapType_22298| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_22298_14538_53#PolymorphicMapType_22298| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22298_14538_53#PolymorphicMapType_22298| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22298_14538_53#PolymorphicMapType_22298| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22298_14538_53#PolymorphicMapType_22298| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_22298) (SummandMask1@@7 T@PolymorphicMapType_22298) (SummandMask2@@7 T@PolymorphicMapType_22298) (o_2@@47 T@Ref) (f_4@@47 T@Field_14538_14632) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_22298_14538_14632#PolymorphicMapType_22298| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_22298_14538_14632#PolymorphicMapType_22298| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_22298_14538_14632#PolymorphicMapType_22298| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22298_14538_14632#PolymorphicMapType_22298| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22298_14538_14632#PolymorphicMapType_22298| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22298_14538_14632#PolymorphicMapType_22298| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_22298) (SummandMask1@@8 T@PolymorphicMapType_22298) (SummandMask2@@8 T@PolymorphicMapType_22298) (o_2@@48 T@Ref) (f_4@@48 T@Field_28383_3325) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3203| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3203| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.589:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3203| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_28430) (b T@Seq_28430) ) (!  (=> (|Seq#Equal_28430| a b) (= a b))
 :qid |stdinbpl.562:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_28430| a b))
)))
(assert (forall ((a@@0 T@Seq_3203) (b@@0 T@Seq_3203) ) (!  (=> (|Seq#Equal_3203| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.562:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3203| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_28430) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_14554| s@@17))) (|Seq#ContainsTrigger_14554| s@@17 (|Seq#Index_14554| s@@17 i@@3)))
 :qid |stdinbpl.455:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_14554| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3203) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3203| s@@18))) (|Seq#ContainsTrigger_3203| s@@18 (|Seq#Index_3203| s@@18 i@@4)))
 :qid |stdinbpl.455:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3203| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_28430) (s1@@3 T@Seq_28430) ) (!  (and (=> (= s0@@3 |Seq#Empty_14554|) (= (|Seq#Append_28430| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_14554|) (= (|Seq#Append_28430| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.273:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_28430| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3203) (s1@@4 T@Seq_3203) ) (!  (and (=> (= s0@@4 |Seq#Empty_3203|) (= (|Seq#Append_3203| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3203|) (= (|Seq#Append_3203| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.273:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3203| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_14554| (|Seq#Singleton_14554| t@@3) 0) t@@3)
 :qid |stdinbpl.277:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_14554| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3203| (|Seq#Singleton_3203| t@@4) 0) t@@4)
 :qid |stdinbpl.277:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3203| t@@4))
)))
(assert (forall ((s@@19 T@Seq_28430) ) (! (<= 0 (|Seq#Length_14554| s@@19))
 :qid |stdinbpl.256:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_14554| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3203) ) (! (<= 0 (|Seq#Length_3203| s@@20))
 :qid |stdinbpl.256:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3203| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_28430) (s1@@5 T@Seq_28430) ) (!  (=> (|Seq#Equal_28430| s0@@5 s1@@5) (and (= (|Seq#Length_14554| s0@@5) (|Seq#Length_14554| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_14554| s0@@5))) (= (|Seq#Index_14554| s0@@5 j@@6) (|Seq#Index_14554| s1@@5 j@@6)))
 :qid |stdinbpl.552:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_14554| s0@@5 j@@6))
 :pattern ( (|Seq#Index_14554| s1@@5 j@@6))
))))
 :qid |stdinbpl.549:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_28430| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3203) (s1@@6 T@Seq_3203) ) (!  (=> (|Seq#Equal_3203| s0@@6 s1@@6) (and (= (|Seq#Length_3203| s0@@6) (|Seq#Length_3203| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3203| s0@@6))) (= (|Seq#Index_3203| s0@@6 j@@7) (|Seq#Index_3203| s1@@6 j@@7)))
 :qid |stdinbpl.552:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3203| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3203| s1@@6 j@@7))
))))
 :qid |stdinbpl.549:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3203| s0@@6 s1@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_22277) (Mask@@42 T@PolymorphicMapType_22298) (xs@@9 T@Seq_28430) ) (!  (=> (state Heap@@27 Mask@@42) (= (|fun2'| Heap@@27 xs@@9) (|fun2#frame| (select (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@27) null (P xs@@9)) xs@@9)))
 :qid |stdinbpl.775:15|
 :skolemid |74|
 :pattern ( (state Heap@@27 Mask@@42) (|fun2'| Heap@@27 xs@@9))
)))
(assert (forall ((xs@@10 T@Seq_28430) ) (! (= (getPredWandId_14631_14632 (P xs@@10)) 0)
 :qid |stdinbpl.900:15|
 :skolemid |86|
 :pattern ( (P xs@@10))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_14554| (|Seq#Singleton_14554| t@@5)) 1)
 :qid |stdinbpl.264:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_14554| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3203| (|Seq#Singleton_3203| t@@6)) 1)
 :qid |stdinbpl.264:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3203| t@@6))
)))
(assert (forall ((s@@21 T@Seq_28430) (t@@7 T@Seq_28430) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_14554| s@@21))) (= (|Seq#Take_14554| (|Seq#Append_28430| s@@21 t@@7) n@@17) (|Seq#Take_14554| s@@21 n@@17)))
 :qid |stdinbpl.406:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_14554| (|Seq#Append_28430| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3203) (t@@8 T@Seq_3203) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3203| s@@22))) (= (|Seq#Take_3203| (|Seq#Append_3203| s@@22 t@@8) n@@18) (|Seq#Take_3203| s@@22 n@@18)))
 :qid |stdinbpl.406:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3203| (|Seq#Append_3203| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_28430) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_14554| s@@23))) (= (|Seq#Length_14554| (|Seq#Update_14554| s@@23 i@@5 v@@2)) (|Seq#Length_14554| s@@23)))
 :qid |stdinbpl.305:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_14554| (|Seq#Update_14554| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_14554| s@@23) (|Seq#Update_14554| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3203) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3203| s@@24))) (= (|Seq#Length_3203| (|Seq#Update_3203| s@@24 i@@6 v@@3)) (|Seq#Length_3203| s@@24)))
 :qid |stdinbpl.305:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3203| (|Seq#Update_3203| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3203| s@@24) (|Seq#Update_3203| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_22277) (Heap1Heap T@PolymorphicMapType_22277) (xs@@11 T@Seq_28430) ) (!  (=> (and (=  (and (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@11)) (|sk_fun1#condqp1| (|fun1#condqp1| Heap2Heap xs@@11) (|fun1#condqp1| Heap1Heap xs@@11))) (< NoPerm FullPerm))  (and (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@11)) (|sk_fun1#condqp1| (|fun1#condqp1| Heap2Heap xs@@11) (|fun1#condqp1| Heap1Heap xs@@11))) (< NoPerm FullPerm))) (=> (and (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@11)) (|sk_fun1#condqp1| (|fun1#condqp1| Heap2Heap xs@@11) (|fun1#condqp1| Heap1Heap xs@@11))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap2Heap) (|Seq#Index_14554| xs@@11 (|sk_fun1#condqp1| (|fun1#condqp1| Heap2Heap xs@@11) (|fun1#condqp1| Heap1Heap xs@@11))) f_7) (select (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap1Heap) (|Seq#Index_14554| xs@@11 (|sk_fun1#condqp1| (|fun1#condqp1| Heap2Heap xs@@11) (|fun1#condqp1| Heap1Heap xs@@11))) f_7)))) (= (|fun1#condqp1| Heap2Heap xs@@11) (|fun1#condqp1| Heap1Heap xs@@11)))
 :qid |stdinbpl.643:15|
 :skolemid |63|
 :pattern ( (|fun1#condqp1| Heap2Heap xs@@11) (|fun1#condqp1| Heap1Heap xs@@11) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_22277) (Heap1Heap@@0 T@PolymorphicMapType_22277) (xs@@12 T@Seq_28430) ) (!  (=> (and (=  (and (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@12)) (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@0 xs@@12) (|P#condqp2| Heap1Heap@@0 xs@@12))) (< NoPerm FullPerm))  (and (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@12)) (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@0 xs@@12) (|P#condqp2| Heap1Heap@@0 xs@@12))) (< NoPerm FullPerm))) (=> (and (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@12)) (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@0 xs@@12) (|P#condqp2| Heap1Heap@@0 xs@@12))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap2Heap@@0) (|Seq#Index_14554| xs@@12 (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@0 xs@@12) (|P#condqp2| Heap1Heap@@0 xs@@12))) f_7) (select (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap1Heap@@0) (|Seq#Index_14554| xs@@12 (|sk_P#condqp2| (|P#condqp2| Heap2Heap@@0 xs@@12) (|P#condqp2| Heap1Heap@@0 xs@@12))) f_7)))) (= (|P#condqp2| Heap2Heap@@0 xs@@12) (|P#condqp2| Heap1Heap@@0 xs@@12)))
 :qid |stdinbpl.926:15|
 :skolemid |90|
 :pattern ( (|P#condqp2| Heap2Heap@@0 xs@@12) (|P#condqp2| Heap1Heap@@0 xs@@12) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_22277) (o_41 T@Ref) (f_44 T@Field_34782_34787) (v@@4 T@PolymorphicMapType_22826) ) (! (succHeap Heap@@28 (PolymorphicMapType_22277 (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@28) (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@28) (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@28) (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@28) (store (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@28) o_41 f_44 v@@4) (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@28) (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@28) (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@28) (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@28) (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22277 (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@28) (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@28) (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@28) (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@28) (store (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@28) o_41 f_44 v@@4) (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@28) (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@28) (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@28) (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@28) (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_22277) (o_41@@0 T@Ref) (f_44@@0 T@Field_32191_32192) (v@@5 T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_22277 (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@29) (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@29) (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@29) (store (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@29) o_41@@0 f_44@@0 v@@5) (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@29) (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@29) (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@29) (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@29) (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@29) (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22277 (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@29) (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@29) (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@29) (store (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@29) o_41@@0 f_44@@0 v@@5) (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@29) (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@29) (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@29) (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@29) (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@29) (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_22277) (o_41@@1 T@Ref) (f_44@@1 T@Field_14631_3325) (v@@6 Int) ) (! (succHeap Heap@@30 (PolymorphicMapType_22277 (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@30) (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@30) (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@30) (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@30) (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@30) (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@30) (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@30) (store (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@30) o_41@@1 f_44@@1 v@@6) (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@30) (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22277 (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@30) (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@30) (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@30) (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@30) (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@30) (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@30) (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@30) (store (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@30) o_41@@1 f_44@@1 v@@6) (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@30) (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_22277) (o_41@@2 T@Ref) (f_44@@2 T@Field_14631_22351) (v@@7 T@Ref) ) (! (succHeap Heap@@31 (PolymorphicMapType_22277 (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@31) (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@31) (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@31) (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@31) (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@31) (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@31) (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@31) (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@31) (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@31) (store (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@31) o_41@@2 f_44@@2 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22277 (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@31) (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@31) (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@31) (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@31) (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@31) (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@31) (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@31) (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@31) (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@31) (store (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@31) o_41@@2 f_44@@2 v@@7)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_22277) (o_41@@3 T@Ref) (f_44@@3 T@Field_14631_53) (v@@8 Bool) ) (! (succHeap Heap@@32 (PolymorphicMapType_22277 (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@32) (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@32) (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@32) (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@32) (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@32) (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@32) (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@32) (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@32) (store (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@32) o_41@@3 f_44@@3 v@@8) (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22277 (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@32) (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@32) (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@32) (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@32) (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@32) (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@32) (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@32) (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@32) (store (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@32) o_41@@3 f_44@@3 v@@8) (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_22277) (o_41@@4 T@Ref) (f_44@@4 T@Field_14538_34787) (v@@9 T@PolymorphicMapType_22826) ) (! (succHeap Heap@@33 (PolymorphicMapType_22277 (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@33) (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@33) (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@33) (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@33) (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@33) (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@33) (store (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@33) o_41@@4 f_44@@4 v@@9) (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@33) (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@33) (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22277 (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@33) (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@33) (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@33) (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@33) (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@33) (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@33) (store (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@33) o_41@@4 f_44@@4 v@@9) (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@33) (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@33) (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_22277) (o_41@@5 T@Ref) (f_44@@5 T@Field_14538_14632) (v@@10 T@FrameType) ) (! (succHeap Heap@@34 (PolymorphicMapType_22277 (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@34) (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@34) (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@34) (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@34) (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@34) (store (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@34) o_41@@5 f_44@@5 v@@10) (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@34) (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@34) (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@34) (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22277 (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@34) (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@34) (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@34) (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@34) (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@34) (store (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@34) o_41@@5 f_44@@5 v@@10) (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@34) (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@34) (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@34) (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_22277) (o_41@@6 T@Ref) (f_44@@6 T@Field_28383_3325) (v@@11 Int) ) (! (succHeap Heap@@35 (PolymorphicMapType_22277 (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@35) (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@35) (store (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@35) o_41@@6 f_44@@6 v@@11) (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@35) (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@35) (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@35) (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@35) (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@35) (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@35) (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22277 (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@35) (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@35) (store (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@35) o_41@@6 f_44@@6 v@@11) (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@35) (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@35) (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@35) (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@35) (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@35) (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@35) (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_22277) (o_41@@7 T@Ref) (f_44@@7 T@Field_22350_22351) (v@@12 T@Ref) ) (! (succHeap Heap@@36 (PolymorphicMapType_22277 (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@36) (store (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@36) o_41@@7 f_44@@7 v@@12) (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@36) (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@36) (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@36) (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@36) (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@36) (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@36) (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@36) (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22277 (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@36) (store (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@36) o_41@@7 f_44@@7 v@@12) (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@36) (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@36) (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@36) (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@36) (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@36) (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@36) (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@36) (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_22277) (o_41@@8 T@Ref) (f_44@@8 T@Field_22337_53) (v@@13 Bool) ) (! (succHeap Heap@@37 (PolymorphicMapType_22277 (store (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@37) o_41@@8 f_44@@8 v@@13) (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@37) (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@37) (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@37) (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@37) (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@37) (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@37) (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@37) (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@37) (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22277 (store (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@37) o_41@@8 f_44@@8 v@@13) (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@37) (|PolymorphicMapType_22277_14538_3325#PolymorphicMapType_22277| Heap@@37) (|PolymorphicMapType_22277_14631_14632#PolymorphicMapType_22277| Heap@@37) (|PolymorphicMapType_22277_14636_34825#PolymorphicMapType_22277| Heap@@37) (|PolymorphicMapType_22277_14538_14632#PolymorphicMapType_22277| Heap@@37) (|PolymorphicMapType_22277_14538_65222#PolymorphicMapType_22277| Heap@@37) (|PolymorphicMapType_22277_14631_3325#PolymorphicMapType_22277| Heap@@37) (|PolymorphicMapType_22277_14631_53#PolymorphicMapType_22277| Heap@@37) (|PolymorphicMapType_22277_14631_22351#PolymorphicMapType_22277| Heap@@37)))
)))
(assert (forall ((xs@@13 T@Seq_28430) ) (! (= (PredicateMaskField_14631 (P xs@@13)) (|P#sm| xs@@13))
 :qid |stdinbpl.892:15|
 :skolemid |84|
 :pattern ( (PredicateMaskField_14631 (P xs@@13)))
)))
(assert (forall ((s@@25 T@Seq_28430) (t@@9 T@Seq_28430) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_14554| s@@25))) (= (|Seq#Drop_14554| (|Seq#Append_28430| s@@25 t@@9) n@@19) (|Seq#Append_28430| (|Seq#Drop_14554| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.420:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_14554| (|Seq#Append_28430| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3203) (t@@10 T@Seq_3203) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3203| s@@26))) (= (|Seq#Drop_3203| (|Seq#Append_3203| s@@26 t@@10) n@@20) (|Seq#Append_3203| (|Seq#Drop_3203| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.420:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3203| (|Seq#Append_3203| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_28430) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_14554| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_14554| (|Seq#Drop_14554| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_14554| s@@27 i@@7))))
 :qid |stdinbpl.356:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_14554| s@@27 n@@21) (|Seq#Index_14554| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3203) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3203| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3203| (|Seq#Drop_3203| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3203| s@@28 i@@8))))
 :qid |stdinbpl.356:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3203| s@@28 n@@22) (|Seq#Index_3203| s@@28 i@@8))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_22277) (Mask@@43 T@PolymorphicMapType_22298) (xs@@14 T@Seq_28430) ) (!  (=> (state Heap@@38 Mask@@43) (= (|fun1'| Heap@@38 xs@@14) (|fun1#frame| (FrameFragment_3705 (|fun1#condqp1| Heap@@38 xs@@14)) xs@@14)))
 :qid |stdinbpl.633:15|
 :skolemid |62|
 :pattern ( (state Heap@@38 Mask@@43) (|fun1'| Heap@@38 xs@@14))
)))
(assert (forall ((s0@@7 T@Seq_28430) (s1@@7 T@Seq_28430) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_14554|)) (not (= s1@@7 |Seq#Empty_14554|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_14554| s0@@7))) (= (|Seq#Index_14554| (|Seq#Append_28430| s0@@7 s1@@7) n@@23) (|Seq#Index_14554| s0@@7 n@@23)))
 :qid |stdinbpl.296:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_14554| (|Seq#Append_28430| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_14554| s0@@7 n@@23) (|Seq#Append_28430| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3203) (s1@@8 T@Seq_3203) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3203|)) (not (= s1@@8 |Seq#Empty_3203|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3203| s0@@8))) (= (|Seq#Index_3203| (|Seq#Append_3203| s0@@8 s1@@8) n@@24) (|Seq#Index_3203| s0@@8 n@@24)))
 :qid |stdinbpl.296:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3203| (|Seq#Append_3203| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3203| s0@@8 n@@24) (|Seq#Append_3203| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_28430) (s1@@9 T@Seq_28430) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_14554|)) (not (= s1@@9 |Seq#Empty_14554|))) (<= 0 m)) (< m (|Seq#Length_14554| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_14554| s0@@9)) (|Seq#Length_14554| s0@@9)) m) (= (|Seq#Index_14554| (|Seq#Append_28430| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_14554| s0@@9))) (|Seq#Index_14554| s1@@9 m))))
 :qid |stdinbpl.301:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_14554| s1@@9 m) (|Seq#Append_28430| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3203) (s1@@10 T@Seq_3203) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3203|)) (not (= s1@@10 |Seq#Empty_3203|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3203| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3203| s0@@10)) (|Seq#Length_3203| s0@@10)) m@@0) (= (|Seq#Index_3203| (|Seq#Append_3203| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3203| s0@@10))) (|Seq#Index_3203| s1@@10 m@@0))))
 :qid |stdinbpl.301:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3203| s1@@10 m@@0) (|Seq#Append_3203| s0@@10 s1@@10))
)))
(assert (forall ((o_41@@9 T@Ref) (f_27 T@Field_22350_22351) (Heap@@39 T@PolymorphicMapType_22277) ) (!  (=> (select (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@39) o_41@@9 $allocated) (select (|PolymorphicMapType_22277_14322_53#PolymorphicMapType_22277| Heap@@39) (select (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@39) o_41@@9 f_27) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_22277_14325_14326#PolymorphicMapType_22277| Heap@@39) o_41@@9 f_27))
)))
(assert (forall ((s@@29 T@Seq_28430) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_14554| s@@29))) (= (|Seq#Index_14554| s@@29 i@@9) x@@3)) (|Seq#Contains_28430| s@@29 x@@3))
 :qid |stdinbpl.453:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_28430| s@@29 x@@3) (|Seq#Index_14554| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3203) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3203| s@@30))) (= (|Seq#Index_3203| s@@30 i@@10) x@@4)) (|Seq#Contains_3203| s@@30 x@@4))
 :qid |stdinbpl.453:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3203| s@@30 x@@4) (|Seq#Index_3203| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_28430) (s1@@11 T@Seq_28430) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_28430| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_28430| s0@@11 s1@@11))) (not (= (|Seq#Length_14554| s0@@11) (|Seq#Length_14554| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_28430| s0@@11 s1@@11))) (= (|Seq#Length_14554| s0@@11) (|Seq#Length_14554| s1@@11))) (= (|Seq#SkolemDiff_28430| s0@@11 s1@@11) (|Seq#SkolemDiff_28430| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_28430| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_28430| s0@@11 s1@@11) (|Seq#Length_14554| s0@@11))) (not (= (|Seq#Index_14554| s0@@11 (|Seq#SkolemDiff_28430| s0@@11 s1@@11)) (|Seq#Index_14554| s1@@11 (|Seq#SkolemDiff_28430| s0@@11 s1@@11))))))
 :qid |stdinbpl.557:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_28430| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3203) (s1@@12 T@Seq_3203) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3203| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3203| s0@@12 s1@@12))) (not (= (|Seq#Length_3203| s0@@12) (|Seq#Length_3203| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3203| s0@@12 s1@@12))) (= (|Seq#Length_3203| s0@@12) (|Seq#Length_3203| s1@@12))) (= (|Seq#SkolemDiff_3203| s0@@12 s1@@12) (|Seq#SkolemDiff_3203| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3203| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3203| s0@@12 s1@@12) (|Seq#Length_3203| s0@@12))) (not (= (|Seq#Index_3203| s0@@12 (|Seq#SkolemDiff_3203| s0@@12 s1@@12)) (|Seq#Index_3203| s1@@12 (|Seq#SkolemDiff_3203| s0@@12 s1@@12))))))
 :qid |stdinbpl.557:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3203| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_32191_32192) (v_1@@1 T@FrameType) (q T@Field_32191_32192) (w@@1 T@FrameType) (r T@Field_32191_32192) (u T@FrameType) ) (!  (=> (and (InsidePredicate_32191_32191 p@@2 v_1@@1 q w@@1) (InsidePredicate_32191_32191 q w@@1 r u)) (InsidePredicate_32191_32191 p@@2 v_1@@1 r u))
 :qid |stdinbpl.224:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32191_32191 p@@2 v_1@@1 q w@@1) (InsidePredicate_32191_32191 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_32191_32192) (v_1@@2 T@FrameType) (q@@0 T@Field_32191_32192) (w@@2 T@FrameType) (r@@0 T@Field_14538_14632) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_32191_32191 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_32191_22337 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_32191_22337 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.224:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32191_32191 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_32191_22337 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_32191_32192) (v_1@@3 T@FrameType) (q@@1 T@Field_14538_14632) (w@@3 T@FrameType) (r@@1 T@Field_32191_32192) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_32191_22337 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_22337_32191 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_32191_32191 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.224:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32191_22337 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_22337_32191 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_32191_32192) (v_1@@4 T@FrameType) (q@@2 T@Field_14538_14632) (w@@4 T@FrameType) (r@@2 T@Field_14538_14632) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_32191_22337 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_22337_22337 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_32191_22337 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.224:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32191_22337 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_22337_22337 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_14538_14632) (v_1@@5 T@FrameType) (q@@3 T@Field_32191_32192) (w@@5 T@FrameType) (r@@3 T@Field_32191_32192) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_22337_32191 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_32191_32191 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_22337_32191 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.224:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22337_32191 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_32191_32191 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_14538_14632) (v_1@@6 T@FrameType) (q@@4 T@Field_32191_32192) (w@@6 T@FrameType) (r@@4 T@Field_14538_14632) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_22337_32191 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_32191_22337 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_22337_22337 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.224:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22337_32191 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_32191_22337 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_14538_14632) (v_1@@7 T@FrameType) (q@@5 T@Field_14538_14632) (w@@7 T@FrameType) (r@@5 T@Field_32191_32192) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_22337_22337 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_22337_32191 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_22337_32191 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.224:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22337_22337 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_22337_32191 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_14538_14632) (v_1@@8 T@FrameType) (q@@6 T@Field_14538_14632) (w@@8 T@FrameType) (r@@6 T@Field_14538_14632) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_22337_22337 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_22337_22337 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_22337_22337 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.224:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22337_22337 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_22337_22337 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@31 T@Seq_28430) ) (!  (=> (= (|Seq#Length_14554| s@@31) 0) (= s@@31 |Seq#Empty_14554|))
 :qid |stdinbpl.260:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_14554| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3203) ) (!  (=> (= (|Seq#Length_3203| s@@32) 0) (= s@@32 |Seq#Empty_3203|))
 :qid |stdinbpl.260:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3203| s@@32))
)))
(assert (forall ((s@@33 T@Seq_28430) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_14554| s@@33 n@@25) |Seq#Empty_14554|))
 :qid |stdinbpl.436:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_14554| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3203) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3203| s@@34 n@@26) |Seq#Empty_3203|))
 :qid |stdinbpl.436:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3203| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun xs@@15 () T@Seq_28430)
(declare-fun i_2 () Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_22298)
(declare-fun Heap@@40 () T@PolymorphicMapType_22277)
(declare-fun i1_17 () Int)
(declare-fun i2_7 () Int)
(set-info :boogie-vc-id |fun1#definedness|)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon7_correct true))
(let ((anon12_Else_correct  (=> (and (not (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i_2)) (= (ControlFlow 0 16) 12)) anon7_correct)))
(let ((anon12_Then_correct  (=> (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i_2) (and (=> (= (ControlFlow 0 13) (- 0 15)) (>= i_2 0)) (=> (>= i_2 0) (and (=> (= (ControlFlow 0 13) (- 0 14)) (< i_2 (|Seq#Length_14554| xs@@15))) (=> (< i_2 (|Seq#Length_14554| xs@@15)) (=> (= (ControlFlow 0 13) 12) anon7_correct))))))))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 9) (- 0 11)) (forall ((i_4_1 Int) (i_4_2 Int) ) (!  (=> (and (and (and (and (not (= i_4_1 i_4_2)) (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i_4_1)) (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i_4_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_14554| xs@@15 i_4_1) (|Seq#Index_14554| xs@@15 i_4_2))))
 :qid |stdinbpl.705:15|
 :skolemid |65|
))) (=> (forall ((i_4_1@@0 Int) (i_4_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_4_1@@0 i_4_2@@0)) (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i_4_1@@0)) (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i_4_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_14554| xs@@15 i_4_1@@0) (|Seq#Index_14554| xs@@15 i_4_2@@0))))
 :qid |stdinbpl.705:15|
 :skolemid |65|
)) (=> (and (and (forall ((i_4_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i_4_1@@1) (< NoPerm FullPerm)) (and (qpRange1 (|Seq#Index_14554| xs@@15 i_4_1@@1)) (= (invRecv1 (|Seq#Index_14554| xs@@15 i_4_1@@1)) i_4_1@@1)))
 :qid |stdinbpl.711:22|
 :skolemid |66|
 :pattern ( (|Seq#Index_14554| xs@@15 i_4_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i_4_1@@1))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i_4_1@@1))
 :pattern ( (|Seq#Index_14554| xs@@15 i_4_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) (invRecv1 o_4)) (< NoPerm FullPerm)) (qpRange1 o_4)) (= (|Seq#Index_14554| xs@@15 (invRecv1 o_4)) o_4))
 :qid |stdinbpl.715:22|
 :skolemid |67|
 :pattern ( (invRecv1 o_4))
))) (and (forall ((i_4_1@@2 Int) ) (!  (=> (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i_4_1@@2) (not (= (|Seq#Index_14554| xs@@15 i_4_1@@2) null)))
 :qid |stdinbpl.721:22|
 :skolemid |68|
 :pattern ( (|Seq#Index_14554| xs@@15 i_4_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i_4_1@@2))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i_4_1@@2))
 :pattern ( (|Seq#Index_14554| xs@@15 i_4_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) (invRecv1 o_4@@0)) (< NoPerm FullPerm)) (qpRange1 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_14554| xs@@15 (invRecv1 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| QPMask@0) o_4@@0 f_7) (+ (select (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| ZeroMask) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) (invRecv1 o_4@@0)) (< NoPerm FullPerm)) (qpRange1 o_4@@0))) (= (select (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| QPMask@0) o_4@@0 f_7) (select (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| ZeroMask) o_4@@0 f_7))))
 :qid |stdinbpl.727:22|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| QPMask@0) o_4@@0 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_22337_53) ) (!  (=> true (= (select (|PolymorphicMapType_22298_14538_53#PolymorphicMapType_22298| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_22298_14538_53#PolymorphicMapType_22298| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.731:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_22298_14538_53#PolymorphicMapType_22298| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_22298_14538_53#PolymorphicMapType_22298| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_22350_22351) ) (!  (=> true (= (select (|PolymorphicMapType_22298_14538_22351#PolymorphicMapType_22298| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_22298_14538_22351#PolymorphicMapType_22298| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.731:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_22298_14538_22351#PolymorphicMapType_22298| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_22298_14538_22351#PolymorphicMapType_22298| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_28383_3325) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.731:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_22298_14538_3325#PolymorphicMapType_22298| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_14538_14632) ) (!  (=> true (= (select (|PolymorphicMapType_22298_14538_14632#PolymorphicMapType_22298| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_22298_14538_14632#PolymorphicMapType_22298| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.731:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_22298_14538_14632#PolymorphicMapType_22298| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_22298_14538_14632#PolymorphicMapType_22298| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_14538_34787) ) (!  (=> true (= (select (|PolymorphicMapType_22298_14538_74480#PolymorphicMapType_22298| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_22298_14538_74480#PolymorphicMapType_22298| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.731:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_22298_14538_74480#PolymorphicMapType_22298| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_22298_14538_74480#PolymorphicMapType_22298| QPMask@0) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_14631_53) ) (!  (=> true (= (select (|PolymorphicMapType_22298_14631_53#PolymorphicMapType_22298| ZeroMask) o_4@@6 f_5@@4) (select (|PolymorphicMapType_22298_14631_53#PolymorphicMapType_22298| QPMask@0) o_4@@6 f_5@@4)))
 :qid |stdinbpl.731:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_22298_14631_53#PolymorphicMapType_22298| ZeroMask) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_22298_14631_53#PolymorphicMapType_22298| QPMask@0) o_4@@6 f_5@@4))
))) (forall ((o_4@@7 T@Ref) (f_5@@5 T@Field_14631_22351) ) (!  (=> true (= (select (|PolymorphicMapType_22298_14631_22351#PolymorphicMapType_22298| ZeroMask) o_4@@7 f_5@@5) (select (|PolymorphicMapType_22298_14631_22351#PolymorphicMapType_22298| QPMask@0) o_4@@7 f_5@@5)))
 :qid |stdinbpl.731:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_22298_14631_22351#PolymorphicMapType_22298| ZeroMask) o_4@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_22298_14631_22351#PolymorphicMapType_22298| QPMask@0) o_4@@7 f_5@@5))
))) (forall ((o_4@@8 T@Ref) (f_5@@6 T@Field_14631_3325) ) (!  (=> true (= (select (|PolymorphicMapType_22298_14631_3325#PolymorphicMapType_22298| ZeroMask) o_4@@8 f_5@@6) (select (|PolymorphicMapType_22298_14631_3325#PolymorphicMapType_22298| QPMask@0) o_4@@8 f_5@@6)))
 :qid |stdinbpl.731:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_22298_14631_3325#PolymorphicMapType_22298| ZeroMask) o_4@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_22298_14631_3325#PolymorphicMapType_22298| QPMask@0) o_4@@8 f_5@@6))
))) (forall ((o_4@@9 T@Ref) (f_5@@7 T@Field_32191_32192) ) (!  (=> true (= (select (|PolymorphicMapType_22298_14631_14632#PolymorphicMapType_22298| ZeroMask) o_4@@9 f_5@@7) (select (|PolymorphicMapType_22298_14631_14632#PolymorphicMapType_22298| QPMask@0) o_4@@9 f_5@@7)))
 :qid |stdinbpl.731:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_22298_14631_14632#PolymorphicMapType_22298| ZeroMask) o_4@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_22298_14631_14632#PolymorphicMapType_22298| QPMask@0) o_4@@9 f_5@@7))
))) (forall ((o_4@@10 T@Ref) (f_5@@8 T@Field_34782_34787) ) (!  (=> true (= (select (|PolymorphicMapType_22298_14631_74891#PolymorphicMapType_22298| ZeroMask) o_4@@10 f_5@@8) (select (|PolymorphicMapType_22298_14631_74891#PolymorphicMapType_22298| QPMask@0) o_4@@10 f_5@@8)))
 :qid |stdinbpl.731:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_22298_14631_74891#PolymorphicMapType_22298| ZeroMask) o_4@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_22298_14631_74891#PolymorphicMapType_22298| QPMask@0) o_4@@10 f_5@@8))
))) (and (state Heap@@40 QPMask@0) (state Heap@@40 QPMask@0))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< 0 (|Seq#Length_14554| xs@@15))) (=> (< 0 (|Seq#Length_14554| xs@@15)) (=> (= (ControlFlow 0 9) (- 0 8)) (HasDirectPerm_14538_3325 QPMask@0 (|Seq#Index_14554| xs@@15 0) f_7))))))))))
(let ((anon9_Else_correct  (=> (and (forall ((i1_3 Int) (i2_3 Int) ) (!  (=> (and (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i1_3) (and (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i2_3) (not (= i1_3 i2_3)))) (not (= (|Seq#Index_14554| xs@@15 i1_3) (|Seq#Index_14554| xs@@15 i2_3))))
 :qid |stdinbpl.687:20|
 :skolemid |64|
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i1_3) (|Seq#ContainsTrigger_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i2_3))
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i1_3) (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i2_3))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i1_3) (|Seq#ContainsTrigger_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i2_3))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i1_3) (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i2_3))
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i1_3) (|Seq#Index_14554| xs@@15 i2_3))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i1_3) (|Seq#Index_14554| xs@@15 i2_3))
 :pattern ( (|Seq#ContainsTrigger_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i2_3) (|Seq#Index_14554| xs@@15 i1_3))
 :pattern ( (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i2_3) (|Seq#Index_14554| xs@@15 i1_3))
 :pattern ( (|Seq#Index_14554| xs@@15 i1_3) (|Seq#Index_14554| xs@@15 i2_3))
)) (state Heap@@40 ZeroMask)) (and (and (=> (= (ControlFlow 0 17) 9) anon11_Else_correct) (=> (= (ControlFlow 0 17) 13) anon12_Then_correct)) (=> (= (ControlFlow 0 17) 16) anon12_Else_correct)))))
(let ((anon3_correct true))
(let ((anon10_Else_correct  (=> (and (not (and (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i1_17) (and (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i2_7) (not (= i1_17 i2_7))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon10_Then_correct  (=> (and (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i1_17) (and (|Seq#Contains_3203| (|Seq#Range| 0 (|Seq#Length_14554| xs@@15)) i2_7) (not (= i1_17 i2_7)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i1_17 0)) (=> (>= i1_17 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i1_17 (|Seq#Length_14554| xs@@15))) (=> (< i1_17 (|Seq#Length_14554| xs@@15)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= i2_7 0)) (=> (>= i2_7 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< i2_7 (|Seq#Length_14554| xs@@15))) (=> (< i2_7 (|Seq#Length_14554| xs@@15)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@40 ZeroMask) (=> (and (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 1)) (and (< 5 (|Seq#Length_14554| xs@@15)) (state Heap@@40 ZeroMask))) (and (and (=> (= (ControlFlow 0 18) 17) anon9_Else_correct) (=> (= (ControlFlow 0 18) 2) anon10_Then_correct)) (=> (= (ControlFlow 0 18) 7) anon10_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 19) 18) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
