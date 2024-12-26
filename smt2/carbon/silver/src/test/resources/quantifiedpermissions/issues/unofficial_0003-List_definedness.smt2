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
(declare-sort T@Field_9337_53 0)
(declare-sort T@Field_9350_9351 0)
(declare-sort T@Field_15456_15461 0)
(declare-sort T@Seq_15459 0)
(declare-sort T@Field_16089_16090 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_5838_5857 0)
(declare-sort T@Field_15409_3052 0)
(declare-sort T@Field_15521_15523 0)
(declare-sort T@Seq_2915 0)
(declare-sort T@Field_5838_16107 0)
(declare-sort T@Field_5856_17730 0)
(declare-sort T@Field_5856_5834 0)
(declare-sort T@Field_5856_53 0)
(declare-sort T@Field_5856_3052 0)
(declare-sort T@Field_5856_15523 0)
(declare-sort T@Field_16102_16107 0)
(declare-datatypes ((T@PolymorphicMapType_9298 0)) (((PolymorphicMapType_9298 (|PolymorphicMapType_9298_5838_17611#PolymorphicMapType_9298| (Array T@Ref T@Field_15456_15461 Real)) (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| (Array T@Ref T@Field_9350_9351 Real)) (|PolymorphicMapType_9298_5856_5857#PolymorphicMapType_9298| (Array T@Ref T@Field_16089_16090 Real)) (|PolymorphicMapType_9298_5838_5857#PolymorphicMapType_9298| (Array T@Ref T@Field_5838_5857 Real)) (|PolymorphicMapType_9298_5838_53#PolymorphicMapType_9298| (Array T@Ref T@Field_9337_53 Real)) (|PolymorphicMapType_9298_5838_3052#PolymorphicMapType_9298| (Array T@Ref T@Field_15409_3052 Real)) (|PolymorphicMapType_9298_5838_15523#PolymorphicMapType_9298| (Array T@Ref T@Field_15521_15523 Real)) (|PolymorphicMapType_9298_5838_39964#PolymorphicMapType_9298| (Array T@Ref T@Field_5838_16107 Real)) (|PolymorphicMapType_9298_5856_17611#PolymorphicMapType_9298| (Array T@Ref T@Field_5856_17730 Real)) (|PolymorphicMapType_9298_5856_5834#PolymorphicMapType_9298| (Array T@Ref T@Field_5856_5834 Real)) (|PolymorphicMapType_9298_5856_53#PolymorphicMapType_9298| (Array T@Ref T@Field_5856_53 Real)) (|PolymorphicMapType_9298_5856_3052#PolymorphicMapType_9298| (Array T@Ref T@Field_5856_3052 Real)) (|PolymorphicMapType_9298_5856_15523#PolymorphicMapType_9298| (Array T@Ref T@Field_5856_15523 Real)) (|PolymorphicMapType_9298_5856_40541#PolymorphicMapType_9298| (Array T@Ref T@Field_16102_16107 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9826 0)) (((PolymorphicMapType_9826 (|PolymorphicMapType_9826_9337_53#PolymorphicMapType_9826| (Array T@Ref T@Field_9337_53 Bool)) (|PolymorphicMapType_9826_9337_9351#PolymorphicMapType_9826| (Array T@Ref T@Field_9350_9351 Bool)) (|PolymorphicMapType_9826_9337_3052#PolymorphicMapType_9826| (Array T@Ref T@Field_15409_3052 Bool)) (|PolymorphicMapType_9826_9337_15461#PolymorphicMapType_9826| (Array T@Ref T@Field_15456_15461 Bool)) (|PolymorphicMapType_9826_9337_15523#PolymorphicMapType_9826| (Array T@Ref T@Field_15521_15523 Bool)) (|PolymorphicMapType_9826_9337_16090#PolymorphicMapType_9826| (Array T@Ref T@Field_5838_5857 Bool)) (|PolymorphicMapType_9826_9337_31766#PolymorphicMapType_9826| (Array T@Ref T@Field_5838_16107 Bool)) (|PolymorphicMapType_9826_16089_53#PolymorphicMapType_9826| (Array T@Ref T@Field_5856_53 Bool)) (|PolymorphicMapType_9826_16089_9351#PolymorphicMapType_9826| (Array T@Ref T@Field_5856_5834 Bool)) (|PolymorphicMapType_9826_16089_3052#PolymorphicMapType_9826| (Array T@Ref T@Field_5856_3052 Bool)) (|PolymorphicMapType_9826_16089_15461#PolymorphicMapType_9826| (Array T@Ref T@Field_5856_17730 Bool)) (|PolymorphicMapType_9826_16089_15523#PolymorphicMapType_9826| (Array T@Ref T@Field_5856_15523 Bool)) (|PolymorphicMapType_9826_16089_16090#PolymorphicMapType_9826| (Array T@Ref T@Field_16089_16090 Bool)) (|PolymorphicMapType_9826_16089_33222#PolymorphicMapType_9826| (Array T@Ref T@Field_16102_16107 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9277 0)) (((PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| (Array T@Ref T@Field_9337_53 Bool)) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| (Array T@Ref T@Field_9350_9351 T@Ref)) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| (Array T@Ref T@Field_15456_15461 T@Seq_15459)) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| (Array T@Ref T@Field_16089_16090 T@FrameType)) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| (Array T@Ref T@Field_5838_5857 T@FrameType)) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| (Array T@Ref T@Field_15409_3052 Int)) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| (Array T@Ref T@Field_15521_15523 T@Seq_2915)) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| (Array T@Ref T@Field_5838_16107 T@PolymorphicMapType_9826)) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| (Array T@Ref T@Field_5856_17730 T@Seq_15459)) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| (Array T@Ref T@Field_5856_5834 T@Ref)) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| (Array T@Ref T@Field_5856_53 Bool)) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| (Array T@Ref T@Field_5856_3052 Int)) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| (Array T@Ref T@Field_5856_15523 T@Seq_2915)) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| (Array T@Ref T@Field_16102_16107 T@PolymorphicMapType_9826)) ) ) ))
(declare-fun $allocated () T@Field_9337_53)
(declare-fun next () T@Field_9350_9351)
(declare-fun val () T@Field_15409_3052)
(declare-fun nodes () T@Field_15456_15461)
(declare-fun data () T@Field_15521_15523)
(declare-fun |Seq#Length_5839| (T@Seq_15459) Int)
(declare-fun |Seq#Drop_5839| (T@Seq_15459 Int) T@Seq_15459)
(declare-fun |Seq#Length_2915| (T@Seq_2915) Int)
(declare-fun |Seq#Drop_2915| (T@Seq_2915 Int) T@Seq_2915)
(declare-fun succHeap (T@PolymorphicMapType_9277 T@PolymorphicMapType_9277) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9277 T@PolymorphicMapType_9277) Bool)
(declare-fun |List#condqp1| (T@PolymorphicMapType_9277 T@Ref) Int)
(declare-fun |sk_List#condqp1| (Int Int) Int)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun |Seq#Index_5839| (T@Seq_15459 Int) T@Ref)
(declare-fun state (T@PolymorphicMapType_9277 T@PolymorphicMapType_9298) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9298) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9826)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2915| (T@Seq_2915 Int) Int)
(declare-fun |Seq#Empty_5839| () T@Seq_15459)
(declare-fun |Seq#Empty_2915| () T@Seq_2915)
(declare-fun List (T@Ref) T@Field_16089_16090)
(declare-fun IsPredicateField_5856_5857 (T@Field_16089_16090) Bool)
(declare-fun |trigger'| (T@PolymorphicMapType_9277 Int) Bool)
(declare-fun dummyFunction_3263 (Bool) Bool)
(declare-fun |trigger#triggerStateless| (Int) Bool)
(declare-fun |List#trigger_5856| (T@PolymorphicMapType_9277 T@Field_16089_16090) Bool)
(declare-fun |List#everUsed_5856| (T@Field_16089_16090) Bool)
(declare-fun |Seq#Update_5839| (T@Seq_15459 Int T@Ref) T@Seq_15459)
(declare-fun |Seq#Update_2915| (T@Seq_2915 Int Int) T@Seq_2915)
(declare-fun |Seq#Take_5839| (T@Seq_15459 Int) T@Seq_15459)
(declare-fun |Seq#Take_2915| (T@Seq_2915 Int) T@Seq_2915)
(declare-fun |Seq#Contains_2915| (T@Seq_2915 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2915)
(declare-fun |Seq#Contains_15459| (T@Seq_15459 T@Ref) Bool)
(declare-fun |Seq#Skolem_15459| (T@Seq_15459 T@Ref) Int)
(declare-fun |Seq#Skolem_2915| (T@Seq_2915 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9277 T@PolymorphicMapType_9277 T@PolymorphicMapType_9298) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5856 (T@Field_16089_16090) T@Field_16102_16107)
(declare-fun HasDirectPerm_5856_5857 (T@PolymorphicMapType_9298 T@Ref T@Field_16089_16090) Bool)
(declare-fun IsPredicateField_5838_29874 (T@Field_5838_5857) Bool)
(declare-fun PredicateMaskField_5838 (T@Field_5838_5857) T@Field_5838_16107)
(declare-fun HasDirectPerm_5838_5857 (T@PolymorphicMapType_9298 T@Ref T@Field_5838_5857) Bool)
(declare-fun IsWandField_5856_34387 (T@Field_16089_16090) Bool)
(declare-fun WandMaskField_5856 (T@Field_16089_16090) T@Field_16102_16107)
(declare-fun IsWandField_5838_34030 (T@Field_5838_5857) Bool)
(declare-fun WandMaskField_5838 (T@Field_5838_5857) T@Field_5838_16107)
(declare-fun |Seq#Singleton_5839| (T@Ref) T@Seq_15459)
(declare-fun |Seq#Singleton_2915| (Int) T@Seq_2915)
(declare-fun trigger (T@PolymorphicMapType_9277 Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |List#sm| (T@Ref) T@Field_16102_16107)
(declare-fun |Seq#Append_15459| (T@Seq_15459 T@Seq_15459) T@Seq_15459)
(declare-fun |Seq#Append_2915| (T@Seq_2915 T@Seq_2915) T@Seq_2915)
(declare-fun dummyHeap () T@PolymorphicMapType_9277)
(declare-fun ZeroMask () T@PolymorphicMapType_9298)
(declare-fun InsidePredicate_16089_16089 (T@Field_16089_16090 T@FrameType T@Field_16089_16090 T@FrameType) Bool)
(declare-fun InsidePredicate_9337_9337 (T@Field_5838_5857 T@FrameType T@Field_5838_5857 T@FrameType) Bool)
(declare-fun IsPredicateField_5833_5834 (T@Field_9350_9351) Bool)
(declare-fun IsWandField_5833_5834 (T@Field_9350_9351) Bool)
(declare-fun IsPredicateField_5836_3052 (T@Field_15409_3052) Bool)
(declare-fun IsWandField_5836_3052 (T@Field_15409_3052) Bool)
(declare-fun IsPredicateField_5838_15483 (T@Field_15456_15461) Bool)
(declare-fun IsWandField_5838_15509 (T@Field_15456_15461) Bool)
(declare-fun IsPredicateField_5842_15542 (T@Field_15521_15523) Bool)
(declare-fun IsWandField_5842_15565 (T@Field_15521_15523) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5856_43727 (T@Field_16102_16107) Bool)
(declare-fun IsWandField_5856_43743 (T@Field_16102_16107) Bool)
(declare-fun IsPredicateField_5856_15523 (T@Field_5856_15523) Bool)
(declare-fun IsWandField_5856_15523 (T@Field_5856_15523) Bool)
(declare-fun IsPredicateField_5856_3052 (T@Field_5856_3052) Bool)
(declare-fun IsWandField_5856_3052 (T@Field_5856_3052) Bool)
(declare-fun IsPredicateField_5856_53 (T@Field_5856_53) Bool)
(declare-fun IsWandField_5856_53 (T@Field_5856_53) Bool)
(declare-fun IsPredicateField_5856_5834 (T@Field_5856_5834) Bool)
(declare-fun IsWandField_5856_5834 (T@Field_5856_5834) Bool)
(declare-fun IsPredicateField_5856_17611 (T@Field_5856_17730) Bool)
(declare-fun IsWandField_5856_17611 (T@Field_5856_17730) Bool)
(declare-fun IsPredicateField_5838_42560 (T@Field_5838_16107) Bool)
(declare-fun IsWandField_5838_42576 (T@Field_5838_16107) Bool)
(declare-fun IsPredicateField_5838_53 (T@Field_9337_53) Bool)
(declare-fun IsWandField_5838_53 (T@Field_9337_53) Bool)
(declare-fun HasDirectPerm_5856_29586 (T@PolymorphicMapType_9298 T@Ref T@Field_16102_16107) Bool)
(declare-fun HasDirectPerm_5856_15523 (T@PolymorphicMapType_9298 T@Ref T@Field_5856_15523) Bool)
(declare-fun HasDirectPerm_5856_3052 (T@PolymorphicMapType_9298 T@Ref T@Field_5856_3052) Bool)
(declare-fun HasDirectPerm_5856_53 (T@PolymorphicMapType_9298 T@Ref T@Field_5856_53) Bool)
(declare-fun HasDirectPerm_5856_5834 (T@PolymorphicMapType_9298 T@Ref T@Field_5856_5834) Bool)
(declare-fun HasDirectPerm_5856_17730 (T@PolymorphicMapType_9298 T@Ref T@Field_5856_17730) Bool)
(declare-fun HasDirectPerm_5838_27987 (T@PolymorphicMapType_9298 T@Ref T@Field_5838_16107) Bool)
(declare-fun HasDirectPerm_5838_15523 (T@PolymorphicMapType_9298 T@Ref T@Field_15521_15523) Bool)
(declare-fun HasDirectPerm_5838_3052 (T@PolymorphicMapType_9298 T@Ref T@Field_15409_3052) Bool)
(declare-fun HasDirectPerm_5838_53 (T@PolymorphicMapType_9298 T@Ref T@Field_9337_53) Bool)
(declare-fun HasDirectPerm_5833_5834 (T@PolymorphicMapType_9298 T@Ref T@Field_9350_9351) Bool)
(declare-fun HasDirectPerm_5838_17730 (T@PolymorphicMapType_9298 T@Ref T@Field_15456_15461) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9298 T@PolymorphicMapType_9298 T@PolymorphicMapType_9298) Bool)
(declare-fun |Seq#Equal_15459| (T@Seq_15459 T@Seq_15459) Bool)
(declare-fun |Seq#Equal_2915| (T@Seq_2915 T@Seq_2915) Bool)
(declare-fun |trigger#frame| (T@FrameType Int) Bool)
(declare-fun |Seq#ContainsTrigger_5839| (T@Seq_15459 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2915| (T@Seq_2915 Int) Bool)
(declare-fun getPredWandId_5856_5857 (T@Field_16089_16090) Int)
(declare-fun |Seq#SkolemDiff_15459| (T@Seq_15459 T@Seq_15459) Int)
(declare-fun |Seq#SkolemDiff_2915| (T@Seq_2915 T@Seq_2915) Int)
(declare-fun InsidePredicate_16089_9337 (T@Field_16089_16090 T@FrameType T@Field_5838_5857 T@FrameType) Bool)
(declare-fun InsidePredicate_9337_16089 (T@Field_5838_5857 T@FrameType T@Field_16089_16090 T@FrameType) Bool)
(assert (forall ((s T@Seq_15459) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_5839| s)) (= (|Seq#Length_5839| (|Seq#Drop_5839| s n)) (- (|Seq#Length_5839| s) n))) (=> (< (|Seq#Length_5839| s) n) (= (|Seq#Length_5839| (|Seq#Drop_5839| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_5839| (|Seq#Drop_5839| s n)) (|Seq#Length_5839| s))))
 :qid |stdinbpl.294:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_5839| (|Seq#Drop_5839| s n)))
 :pattern ( (|Seq#Length_5839| s) (|Seq#Drop_5839| s n))
)))
(assert (forall ((s@@0 T@Seq_2915) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2915| s@@0)) (= (|Seq#Length_2915| (|Seq#Drop_2915| s@@0 n@@0)) (- (|Seq#Length_2915| s@@0) n@@0))) (=> (< (|Seq#Length_2915| s@@0) n@@0) (= (|Seq#Length_2915| (|Seq#Drop_2915| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2915| (|Seq#Drop_2915| s@@0 n@@0)) (|Seq#Length_2915| s@@0))))
 :qid |stdinbpl.294:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2915| (|Seq#Drop_2915| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2915| s@@0) (|Seq#Drop_2915| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_9277) (Heap1 T@PolymorphicMapType_9277) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_9277) (Heap1Heap T@PolymorphicMapType_9277) (this T@Ref) ) (!  (=> (and (=  (and (and (<= 0 (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this))) (< (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this)) (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap2Heap) this nodes)))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this))) (< (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this)) (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap1Heap) this nodes)))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this))) (< (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this)) (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap2Heap) this nodes)))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap2Heap) (|Seq#Index_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap2Heap) this nodes) (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this))) next) (select (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap1Heap) (|Seq#Index_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap1Heap) this nodes) (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this))) next)))) (= (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this)))
 :qid |stdinbpl.669:15|
 :skolemid |68|
 :pattern ( (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap T@PolymorphicMapType_9277) (Mask T@PolymorphicMapType_9298) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9277) (Heap1@@0 T@PolymorphicMapType_9277) (Heap2 T@PolymorphicMapType_9277) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_16102_16107) ) (!  (not (select (|PolymorphicMapType_9826_16089_33222#PolymorphicMapType_9826| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9826_16089_33222#PolymorphicMapType_9826| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_16089_16090) ) (!  (not (select (|PolymorphicMapType_9826_16089_16090#PolymorphicMapType_9826| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9826_16089_16090#PolymorphicMapType_9826| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5856_15523) ) (!  (not (select (|PolymorphicMapType_9826_16089_15523#PolymorphicMapType_9826| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9826_16089_15523#PolymorphicMapType_9826| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5856_17730) ) (!  (not (select (|PolymorphicMapType_9826_16089_15461#PolymorphicMapType_9826| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9826_16089_15461#PolymorphicMapType_9826| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5856_3052) ) (!  (not (select (|PolymorphicMapType_9826_16089_3052#PolymorphicMapType_9826| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9826_16089_3052#PolymorphicMapType_9826| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_5856_5834) ) (!  (not (select (|PolymorphicMapType_9826_16089_9351#PolymorphicMapType_9826| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9826_16089_9351#PolymorphicMapType_9826| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5856_53) ) (!  (not (select (|PolymorphicMapType_9826_16089_53#PolymorphicMapType_9826| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9826_16089_53#PolymorphicMapType_9826| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_5838_16107) ) (!  (not (select (|PolymorphicMapType_9826_9337_31766#PolymorphicMapType_9826| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9826_9337_31766#PolymorphicMapType_9826| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_5838_5857) ) (!  (not (select (|PolymorphicMapType_9826_9337_16090#PolymorphicMapType_9826| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9826_9337_16090#PolymorphicMapType_9826| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_15521_15523) ) (!  (not (select (|PolymorphicMapType_9826_9337_15523#PolymorphicMapType_9826| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9826_9337_15523#PolymorphicMapType_9826| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_15456_15461) ) (!  (not (select (|PolymorphicMapType_9826_9337_15461#PolymorphicMapType_9826| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9826_9337_15461#PolymorphicMapType_9826| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_15409_3052) ) (!  (not (select (|PolymorphicMapType_9826_9337_3052#PolymorphicMapType_9826| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9826_9337_3052#PolymorphicMapType_9826| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_9350_9351) ) (!  (not (select (|PolymorphicMapType_9826_9337_9351#PolymorphicMapType_9826| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9826_9337_9351#PolymorphicMapType_9826| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_9337_53) ) (!  (not (select (|PolymorphicMapType_9826_9337_53#PolymorphicMapType_9826| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9826_9337_53#PolymorphicMapType_9826| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((s@@1 T@Seq_15459) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_5839| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_5839| (|Seq#Drop_5839| s@@1 n@@1) j) (|Seq#Index_5839| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.315:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_5839| (|Seq#Drop_5839| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2915) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2915| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2915| (|Seq#Drop_2915| s@@2 n@@2) j@@0) (|Seq#Index_2915| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.315:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2915| (|Seq#Drop_2915| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_5839| |Seq#Empty_5839|) 0))
(assert (= (|Seq#Length_2915| |Seq#Empty_2915|) 0))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_5856_5857 (List this@@0))
 :qid |stdinbpl.639:15|
 :skolemid |63|
 :pattern ( (List this@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9277) (i Int) ) (! (dummyFunction_3263 (|trigger#triggerStateless| i))
 :qid |stdinbpl.589:15|
 :skolemid |59|
 :pattern ( (|trigger'| Heap@@0 i))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9277) (this@@1 T@Ref) ) (! (|List#everUsed_5856| (List this@@1))
 :qid |stdinbpl.658:15|
 :skolemid |67|
 :pattern ( (|List#trigger_5856| Heap@@1 (List this@@1)))
)))
(assert (forall ((s@@3 T@Seq_15459) (i@@0 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_5839| s@@3))) (and (=> (= i@@0 n@@3) (= (|Seq#Index_5839| (|Seq#Update_5839| s@@3 i@@0 v) n@@3) v)) (=> (not (= i@@0 n@@3)) (= (|Seq#Index_5839| (|Seq#Update_5839| s@@3 i@@0 v) n@@3) (|Seq#Index_5839| s@@3 n@@3)))))
 :qid |stdinbpl.270:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_5839| (|Seq#Update_5839| s@@3 i@@0 v) n@@3))
 :pattern ( (|Seq#Index_5839| s@@3 n@@3) (|Seq#Update_5839| s@@3 i@@0 v))
)))
(assert (forall ((s@@4 T@Seq_2915) (i@@1 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2915| s@@4))) (and (=> (= i@@1 n@@4) (= (|Seq#Index_2915| (|Seq#Update_2915| s@@4 i@@1 v@@0) n@@4) v@@0)) (=> (not (= i@@1 n@@4)) (= (|Seq#Index_2915| (|Seq#Update_2915| s@@4 i@@1 v@@0) n@@4) (|Seq#Index_2915| s@@4 n@@4)))))
 :qid |stdinbpl.270:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2915| (|Seq#Update_2915| s@@4 i@@1 v@@0) n@@4))
 :pattern ( (|Seq#Index_2915| s@@4 n@@4) (|Seq#Update_2915| s@@4 i@@1 v@@0))
)))
(assert (forall ((s@@5 T@Seq_15459) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_5839| s@@5)) (= (|Seq#Length_5839| (|Seq#Take_5839| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_5839| s@@5) n@@5) (= (|Seq#Length_5839| (|Seq#Take_5839| s@@5 n@@5)) (|Seq#Length_5839| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_5839| (|Seq#Take_5839| s@@5 n@@5)) 0)))
 :qid |stdinbpl.281:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_5839| (|Seq#Take_5839| s@@5 n@@5)))
 :pattern ( (|Seq#Take_5839| s@@5 n@@5) (|Seq#Length_5839| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2915) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2915| s@@6)) (= (|Seq#Length_2915| (|Seq#Take_2915| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2915| s@@6) n@@6) (= (|Seq#Length_2915| (|Seq#Take_2915| s@@6 n@@6)) (|Seq#Length_2915| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2915| (|Seq#Take_2915| s@@6 n@@6)) 0)))
 :qid |stdinbpl.281:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2915| (|Seq#Take_2915| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2915| s@@6 n@@6) (|Seq#Length_2915| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2915| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.555:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2915| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_15459) (x T@Ref) ) (!  (=> (|Seq#Contains_15459| s@@7 x) (and (and (<= 0 (|Seq#Skolem_15459| s@@7 x)) (< (|Seq#Skolem_15459| s@@7 x) (|Seq#Length_5839| s@@7))) (= (|Seq#Index_5839| s@@7 (|Seq#Skolem_15459| s@@7 x)) x)))
 :qid |stdinbpl.413:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_15459| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2915) (x@@0 Int) ) (!  (=> (|Seq#Contains_2915| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2915| s@@8 x@@0)) (< (|Seq#Skolem_2915| s@@8 x@@0) (|Seq#Length_2915| s@@8))) (= (|Seq#Index_2915| s@@8 (|Seq#Skolem_2915| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.413:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2915| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_15459) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_5839| s@@9 n@@7) s@@9))
 :qid |stdinbpl.397:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_5839| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2915) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2915| s@@10 n@@8) s@@10))
 :qid |stdinbpl.397:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2915| s@@10 n@@8))
)))
(assert (forall ((i@@2 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@2 j@@1) (- i@@2 j@@1))
 :qid |stdinbpl.250:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@2 j@@1))
)))
(assert (forall ((i@@3 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@3 j@@2) (+ i@@3 j@@2))
 :qid |stdinbpl.248:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@3 j@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9277) (ExhaleHeap T@PolymorphicMapType_9277) (Mask@@0 T@PolymorphicMapType_9298) (pm_f_13 T@Field_16089_16090) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5856_5857 Mask@@0 null pm_f_13) (IsPredicateField_5856_5857 pm_f_13)) (= (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@2) null (PredicateMaskField_5856 pm_f_13)) (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| ExhaleHeap) null (PredicateMaskField_5856 pm_f_13)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_5856_5857 pm_f_13) (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| ExhaleHeap) null (PredicateMaskField_5856 pm_f_13)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9277) (ExhaleHeap@@0 T@PolymorphicMapType_9277) (Mask@@1 T@PolymorphicMapType_9298) (pm_f_13@@0 T@Field_5838_5857) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5838_5857 Mask@@1 null pm_f_13@@0) (IsPredicateField_5838_29874 pm_f_13@@0)) (= (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@3) null (PredicateMaskField_5838 pm_f_13@@0)) (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| ExhaleHeap@@0) null (PredicateMaskField_5838 pm_f_13@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5838_29874 pm_f_13@@0) (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| ExhaleHeap@@0) null (PredicateMaskField_5838 pm_f_13@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9277) (ExhaleHeap@@1 T@PolymorphicMapType_9277) (Mask@@2 T@PolymorphicMapType_9298) (pm_f_13@@1 T@Field_16089_16090) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5856_5857 Mask@@2 null pm_f_13@@1) (IsWandField_5856_34387 pm_f_13@@1)) (= (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@4) null (WandMaskField_5856 pm_f_13@@1)) (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| ExhaleHeap@@1) null (WandMaskField_5856 pm_f_13@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsWandField_5856_34387 pm_f_13@@1) (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| ExhaleHeap@@1) null (WandMaskField_5856 pm_f_13@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9277) (ExhaleHeap@@2 T@PolymorphicMapType_9277) (Mask@@3 T@PolymorphicMapType_9298) (pm_f_13@@2 T@Field_5838_5857) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5838_5857 Mask@@3 null pm_f_13@@2) (IsWandField_5838_34030 pm_f_13@@2)) (= (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@5) null (WandMaskField_5838 pm_f_13@@2)) (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| ExhaleHeap@@2) null (WandMaskField_5838 pm_f_13@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_5838_34030 pm_f_13@@2) (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| ExhaleHeap@@2) null (WandMaskField_5838 pm_f_13@@2)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_15459| (|Seq#Singleton_5839| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.538:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_15459| (|Seq#Singleton_5839| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2915| (|Seq#Singleton_2915| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.538:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2915| (|Seq#Singleton_2915| x@@2) y@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9277) (Mask@@4 T@PolymorphicMapType_9298) (i@@4 Int) ) (!  (=> (and (state Heap@@6 Mask@@4) (< AssumeFunctionsAbove 0)) (trigger Heap@@6 i@@4))
 :qid |stdinbpl.595:15|
 :skolemid |60|
 :pattern ( (state Heap@@6 Mask@@4) (trigger Heap@@6 i@@4))
)))
(assert (forall ((s@@11 T@Seq_15459) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_5839| s@@11))) (= (|Seq#Index_5839| (|Seq#Take_5839| s@@11 n@@9) j@@3) (|Seq#Index_5839| s@@11 j@@3)))
 :qid |stdinbpl.289:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_5839| (|Seq#Take_5839| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_5839| s@@11 j@@3) (|Seq#Take_5839| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2915) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2915| s@@12))) (= (|Seq#Index_2915| (|Seq#Take_2915| s@@12 n@@10) j@@4) (|Seq#Index_2915| s@@12 j@@4)))
 :qid |stdinbpl.289:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2915| (|Seq#Take_2915| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2915| s@@12 j@@4) (|Seq#Take_2915| s@@12 n@@10))
)))
(assert (forall ((this@@2 T@Ref) (this2 T@Ref) ) (!  (=> (= (List this@@2) (List this2)) (= this@@2 this2))
 :qid |stdinbpl.649:15|
 :skolemid |65|
 :pattern ( (List this@@2) (List this2))
)))
(assert (forall ((this@@3 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|List#sm| this@@3) (|List#sm| this2@@0)) (= this@@3 this2@@0))
 :qid |stdinbpl.653:15|
 :skolemid |66|
 :pattern ( (|List#sm| this@@3) (|List#sm| this2@@0))
)))
(assert (forall ((s@@13 T@Seq_15459) (t T@Seq_15459) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_5839| s@@13))) (< n@@11 (|Seq#Length_5839| (|Seq#Append_15459| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_5839| s@@13)) (|Seq#Length_5839| s@@13)) n@@11) (= (|Seq#Take_5839| (|Seq#Append_15459| s@@13 t) n@@11) (|Seq#Append_15459| s@@13 (|Seq#Take_5839| t (|Seq#Sub| n@@11 (|Seq#Length_5839| s@@13)))))))
 :qid |stdinbpl.374:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_5839| (|Seq#Append_15459| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2915) (t@@0 T@Seq_2915) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2915| s@@14))) (< n@@12 (|Seq#Length_2915| (|Seq#Append_2915| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2915| s@@14)) (|Seq#Length_2915| s@@14)) n@@12) (= (|Seq#Take_2915| (|Seq#Append_2915| s@@14 t@@0) n@@12) (|Seq#Append_2915| s@@14 (|Seq#Take_2915| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2915| s@@14)))))))
 :qid |stdinbpl.374:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2915| (|Seq#Append_2915| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9277) (ExhaleHeap@@3 T@PolymorphicMapType_9277) (Mask@@5 T@PolymorphicMapType_9298) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (=> (select (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@7) o_22 $allocated) (select (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| ExhaleHeap@@3) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (select (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| ExhaleHeap@@3) o_22 $allocated))
)))
(assert (forall ((p T@Field_16089_16090) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_16089_16089 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16089_16089 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_5838_5857) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_9337_9337 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9337_9337 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_15459) (s1 T@Seq_15459) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_5839|)) (not (= s1 |Seq#Empty_5839|))) (<= (|Seq#Length_5839| s0) n@@13)) (< n@@13 (|Seq#Length_5839| (|Seq#Append_15459| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_5839| s0)) (|Seq#Length_5839| s0)) n@@13) (= (|Seq#Index_5839| (|Seq#Append_15459| s0 s1) n@@13) (|Seq#Index_5839| s1 (|Seq#Sub| n@@13 (|Seq#Length_5839| s0))))))
 :qid |stdinbpl.261:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_5839| (|Seq#Append_15459| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2915) (s1@@0 T@Seq_2915) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2915|)) (not (= s1@@0 |Seq#Empty_2915|))) (<= (|Seq#Length_2915| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2915| (|Seq#Append_2915| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2915| s0@@0)) (|Seq#Length_2915| s0@@0)) n@@14) (= (|Seq#Index_2915| (|Seq#Append_2915| s0@@0 s1@@0) n@@14) (|Seq#Index_2915| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2915| s0@@0))))))
 :qid |stdinbpl.261:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2915| (|Seq#Append_2915| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_5833_5834 next)))
(assert  (not (IsWandField_5833_5834 next)))
(assert  (not (IsPredicateField_5836_3052 val)))
(assert  (not (IsWandField_5836_3052 val)))
(assert  (not (IsPredicateField_5838_15483 nodes)))
(assert  (not (IsWandField_5838_15509 nodes)))
(assert  (not (IsPredicateField_5842_15542 data)))
(assert  (not (IsWandField_5842_15565 data)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9277) (ExhaleHeap@@4 T@PolymorphicMapType_9277) (Mask@@6 T@PolymorphicMapType_9298) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (succHeap Heap@@8 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_9298) (o_2@@13 T@Ref) (f_4@@13 T@Field_16102_16107) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_9298_5856_40541#PolymorphicMapType_9298| Mask@@7) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5856_43727 f_4@@13))) (not (IsWandField_5856_43743 f_4@@13))) (<= (select (|PolymorphicMapType_9298_5856_40541#PolymorphicMapType_9298| Mask@@7) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_9298_5856_40541#PolymorphicMapType_9298| Mask@@7) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_9298) (o_2@@14 T@Ref) (f_4@@14 T@Field_5856_15523) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_9298_5856_15523#PolymorphicMapType_9298| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5856_15523 f_4@@14))) (not (IsWandField_5856_15523 f_4@@14))) (<= (select (|PolymorphicMapType_9298_5856_15523#PolymorphicMapType_9298| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_9298_5856_15523#PolymorphicMapType_9298| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_9298) (o_2@@15 T@Ref) (f_4@@15 T@Field_5856_3052) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_9298_5856_3052#PolymorphicMapType_9298| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5856_3052 f_4@@15))) (not (IsWandField_5856_3052 f_4@@15))) (<= (select (|PolymorphicMapType_9298_5856_3052#PolymorphicMapType_9298| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_9298_5856_3052#PolymorphicMapType_9298| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9298) (o_2@@16 T@Ref) (f_4@@16 T@Field_5856_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_9298_5856_53#PolymorphicMapType_9298| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5856_53 f_4@@16))) (not (IsWandField_5856_53 f_4@@16))) (<= (select (|PolymorphicMapType_9298_5856_53#PolymorphicMapType_9298| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_9298_5856_53#PolymorphicMapType_9298| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9298) (o_2@@17 T@Ref) (f_4@@17 T@Field_16089_16090) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_9298_5856_5857#PolymorphicMapType_9298| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5856_5857 f_4@@17))) (not (IsWandField_5856_34387 f_4@@17))) (<= (select (|PolymorphicMapType_9298_5856_5857#PolymorphicMapType_9298| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_9298_5856_5857#PolymorphicMapType_9298| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9298) (o_2@@18 T@Ref) (f_4@@18 T@Field_5856_5834) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_9298_5856_5834#PolymorphicMapType_9298| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5856_5834 f_4@@18))) (not (IsWandField_5856_5834 f_4@@18))) (<= (select (|PolymorphicMapType_9298_5856_5834#PolymorphicMapType_9298| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_9298_5856_5834#PolymorphicMapType_9298| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9298) (o_2@@19 T@Ref) (f_4@@19 T@Field_5856_17730) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_9298_5856_17611#PolymorphicMapType_9298| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5856_17611 f_4@@19))) (not (IsWandField_5856_17611 f_4@@19))) (<= (select (|PolymorphicMapType_9298_5856_17611#PolymorphicMapType_9298| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_9298_5856_17611#PolymorphicMapType_9298| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9298) (o_2@@20 T@Ref) (f_4@@20 T@Field_5838_16107) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_9298_5838_39964#PolymorphicMapType_9298| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5838_42560 f_4@@20))) (not (IsWandField_5838_42576 f_4@@20))) (<= (select (|PolymorphicMapType_9298_5838_39964#PolymorphicMapType_9298| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_9298_5838_39964#PolymorphicMapType_9298| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_9298) (o_2@@21 T@Ref) (f_4@@21 T@Field_15521_15523) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_9298_5838_15523#PolymorphicMapType_9298| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5842_15542 f_4@@21))) (not (IsWandField_5842_15565 f_4@@21))) (<= (select (|PolymorphicMapType_9298_5838_15523#PolymorphicMapType_9298| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_9298_5838_15523#PolymorphicMapType_9298| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_9298) (o_2@@22 T@Ref) (f_4@@22 T@Field_15409_3052) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_9298_5838_3052#PolymorphicMapType_9298| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5836_3052 f_4@@22))) (not (IsWandField_5836_3052 f_4@@22))) (<= (select (|PolymorphicMapType_9298_5838_3052#PolymorphicMapType_9298| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_9298_5838_3052#PolymorphicMapType_9298| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_9298) (o_2@@23 T@Ref) (f_4@@23 T@Field_9337_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_9298_5838_53#PolymorphicMapType_9298| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5838_53 f_4@@23))) (not (IsWandField_5838_53 f_4@@23))) (<= (select (|PolymorphicMapType_9298_5838_53#PolymorphicMapType_9298| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_9298_5838_53#PolymorphicMapType_9298| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9298) (o_2@@24 T@Ref) (f_4@@24 T@Field_5838_5857) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_9298_5838_5857#PolymorphicMapType_9298| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5838_29874 f_4@@24))) (not (IsWandField_5838_34030 f_4@@24))) (<= (select (|PolymorphicMapType_9298_5838_5857#PolymorphicMapType_9298| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_9298_5838_5857#PolymorphicMapType_9298| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9298) (o_2@@25 T@Ref) (f_4@@25 T@Field_9350_9351) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5833_5834 f_4@@25))) (not (IsWandField_5833_5834 f_4@@25))) (<= (select (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9298) (o_2@@26 T@Ref) (f_4@@26 T@Field_15456_15461) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_9298_5838_17611#PolymorphicMapType_9298| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5838_15483 f_4@@26))) (not (IsWandField_5838_15509 f_4@@26))) (<= (select (|PolymorphicMapType_9298_5838_17611#PolymorphicMapType_9298| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_9298_5838_17611#PolymorphicMapType_9298| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9298) (o_2@@27 T@Ref) (f_4@@27 T@Field_16102_16107) ) (! (= (HasDirectPerm_5856_29586 Mask@@21 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_9298_5856_40541#PolymorphicMapType_9298| Mask@@21) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5856_29586 Mask@@21 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9298) (o_2@@28 T@Ref) (f_4@@28 T@Field_5856_15523) ) (! (= (HasDirectPerm_5856_15523 Mask@@22 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_9298_5856_15523#PolymorphicMapType_9298| Mask@@22) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5856_15523 Mask@@22 o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9298) (o_2@@29 T@Ref) (f_4@@29 T@Field_5856_3052) ) (! (= (HasDirectPerm_5856_3052 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_9298_5856_3052#PolymorphicMapType_9298| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5856_3052 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_9298) (o_2@@30 T@Ref) (f_4@@30 T@Field_5856_53) ) (! (= (HasDirectPerm_5856_53 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_9298_5856_53#PolymorphicMapType_9298| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5856_53 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_9298) (o_2@@31 T@Ref) (f_4@@31 T@Field_16089_16090) ) (! (= (HasDirectPerm_5856_5857 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_9298_5856_5857#PolymorphicMapType_9298| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5856_5857 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_9298) (o_2@@32 T@Ref) (f_4@@32 T@Field_5856_5834) ) (! (= (HasDirectPerm_5856_5834 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_9298_5856_5834#PolymorphicMapType_9298| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5856_5834 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_9298) (o_2@@33 T@Ref) (f_4@@33 T@Field_5856_17730) ) (! (= (HasDirectPerm_5856_17730 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_9298_5856_17611#PolymorphicMapType_9298| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5856_17730 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_9298) (o_2@@34 T@Ref) (f_4@@34 T@Field_5838_16107) ) (! (= (HasDirectPerm_5838_27987 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_9298_5838_39964#PolymorphicMapType_9298| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5838_27987 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_9298) (o_2@@35 T@Ref) (f_4@@35 T@Field_15521_15523) ) (! (= (HasDirectPerm_5838_15523 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_9298_5838_15523#PolymorphicMapType_9298| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5838_15523 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_9298) (o_2@@36 T@Ref) (f_4@@36 T@Field_15409_3052) ) (! (= (HasDirectPerm_5838_3052 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_9298_5838_3052#PolymorphicMapType_9298| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5838_3052 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_9298) (o_2@@37 T@Ref) (f_4@@37 T@Field_9337_53) ) (! (= (HasDirectPerm_5838_53 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_9298_5838_53#PolymorphicMapType_9298| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5838_53 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_9298) (o_2@@38 T@Ref) (f_4@@38 T@Field_5838_5857) ) (! (= (HasDirectPerm_5838_5857 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_9298_5838_5857#PolymorphicMapType_9298| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5838_5857 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_9298) (o_2@@39 T@Ref) (f_4@@39 T@Field_9350_9351) ) (! (= (HasDirectPerm_5833_5834 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5833_5834 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_9298) (o_2@@40 T@Ref) (f_4@@40 T@Field_15456_15461) ) (! (= (HasDirectPerm_5838_17730 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_9298_5838_17611#PolymorphicMapType_9298| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5838_17730 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2915| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.553:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2915| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9277) (ExhaleHeap@@5 T@PolymorphicMapType_9277) (Mask@@35 T@PolymorphicMapType_9298) (o_22@@0 T@Ref) (f_30 T@Field_16102_16107) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@35) (=> (HasDirectPerm_5856_29586 Mask@@35 o_22@@0 f_30) (= (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@9) o_22@@0 f_30) (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| ExhaleHeap@@5) o_22@@0 f_30))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@35) (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| ExhaleHeap@@5) o_22@@0 f_30))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9277) (ExhaleHeap@@6 T@PolymorphicMapType_9277) (Mask@@36 T@PolymorphicMapType_9298) (o_22@@1 T@Ref) (f_30@@0 T@Field_5856_15523) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@36) (=> (HasDirectPerm_5856_15523 Mask@@36 o_22@@1 f_30@@0) (= (select (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@10) o_22@@1 f_30@@0) (select (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| ExhaleHeap@@6) o_22@@1 f_30@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@36) (select (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| ExhaleHeap@@6) o_22@@1 f_30@@0))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9277) (ExhaleHeap@@7 T@PolymorphicMapType_9277) (Mask@@37 T@PolymorphicMapType_9298) (o_22@@2 T@Ref) (f_30@@1 T@Field_5856_3052) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@37) (=> (HasDirectPerm_5856_3052 Mask@@37 o_22@@2 f_30@@1) (= (select (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@11) o_22@@2 f_30@@1) (select (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| ExhaleHeap@@7) o_22@@2 f_30@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@37) (select (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| ExhaleHeap@@7) o_22@@2 f_30@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9277) (ExhaleHeap@@8 T@PolymorphicMapType_9277) (Mask@@38 T@PolymorphicMapType_9298) (o_22@@3 T@Ref) (f_30@@2 T@Field_5856_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@38) (=> (HasDirectPerm_5856_53 Mask@@38 o_22@@3 f_30@@2) (= (select (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@12) o_22@@3 f_30@@2) (select (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| ExhaleHeap@@8) o_22@@3 f_30@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@38) (select (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| ExhaleHeap@@8) o_22@@3 f_30@@2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9277) (ExhaleHeap@@9 T@PolymorphicMapType_9277) (Mask@@39 T@PolymorphicMapType_9298) (o_22@@4 T@Ref) (f_30@@3 T@Field_16089_16090) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@39) (=> (HasDirectPerm_5856_5857 Mask@@39 o_22@@4 f_30@@3) (= (select (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@13) o_22@@4 f_30@@3) (select (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| ExhaleHeap@@9) o_22@@4 f_30@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@39) (select (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| ExhaleHeap@@9) o_22@@4 f_30@@3))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9277) (ExhaleHeap@@10 T@PolymorphicMapType_9277) (Mask@@40 T@PolymorphicMapType_9298) (o_22@@5 T@Ref) (f_30@@4 T@Field_5856_5834) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@40) (=> (HasDirectPerm_5856_5834 Mask@@40 o_22@@5 f_30@@4) (= (select (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@14) o_22@@5 f_30@@4) (select (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| ExhaleHeap@@10) o_22@@5 f_30@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@40) (select (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| ExhaleHeap@@10) o_22@@5 f_30@@4))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9277) (ExhaleHeap@@11 T@PolymorphicMapType_9277) (Mask@@41 T@PolymorphicMapType_9298) (o_22@@6 T@Ref) (f_30@@5 T@Field_5856_17730) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@41) (=> (HasDirectPerm_5856_17730 Mask@@41 o_22@@6 f_30@@5) (= (select (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@15) o_22@@6 f_30@@5) (select (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| ExhaleHeap@@11) o_22@@6 f_30@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@41) (select (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| ExhaleHeap@@11) o_22@@6 f_30@@5))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9277) (ExhaleHeap@@12 T@PolymorphicMapType_9277) (Mask@@42 T@PolymorphicMapType_9298) (o_22@@7 T@Ref) (f_30@@6 T@Field_5838_16107) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@42) (=> (HasDirectPerm_5838_27987 Mask@@42 o_22@@7 f_30@@6) (= (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@16) o_22@@7 f_30@@6) (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| ExhaleHeap@@12) o_22@@7 f_30@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@42) (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| ExhaleHeap@@12) o_22@@7 f_30@@6))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9277) (ExhaleHeap@@13 T@PolymorphicMapType_9277) (Mask@@43 T@PolymorphicMapType_9298) (o_22@@8 T@Ref) (f_30@@7 T@Field_15521_15523) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@43) (=> (HasDirectPerm_5838_15523 Mask@@43 o_22@@8 f_30@@7) (= (select (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@17) o_22@@8 f_30@@7) (select (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| ExhaleHeap@@13) o_22@@8 f_30@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@43) (select (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| ExhaleHeap@@13) o_22@@8 f_30@@7))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9277) (ExhaleHeap@@14 T@PolymorphicMapType_9277) (Mask@@44 T@PolymorphicMapType_9298) (o_22@@9 T@Ref) (f_30@@8 T@Field_15409_3052) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@44) (=> (HasDirectPerm_5838_3052 Mask@@44 o_22@@9 f_30@@8) (= (select (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@18) o_22@@9 f_30@@8) (select (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| ExhaleHeap@@14) o_22@@9 f_30@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@44) (select (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| ExhaleHeap@@14) o_22@@9 f_30@@8))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9277) (ExhaleHeap@@15 T@PolymorphicMapType_9277) (Mask@@45 T@PolymorphicMapType_9298) (o_22@@10 T@Ref) (f_30@@9 T@Field_9337_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@45) (=> (HasDirectPerm_5838_53 Mask@@45 o_22@@10 f_30@@9) (= (select (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@19) o_22@@10 f_30@@9) (select (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| ExhaleHeap@@15) o_22@@10 f_30@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@45) (select (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| ExhaleHeap@@15) o_22@@10 f_30@@9))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9277) (ExhaleHeap@@16 T@PolymorphicMapType_9277) (Mask@@46 T@PolymorphicMapType_9298) (o_22@@11 T@Ref) (f_30@@10 T@Field_5838_5857) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@46) (=> (HasDirectPerm_5838_5857 Mask@@46 o_22@@11 f_30@@10) (= (select (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@20) o_22@@11 f_30@@10) (select (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| ExhaleHeap@@16) o_22@@11 f_30@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@46) (select (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| ExhaleHeap@@16) o_22@@11 f_30@@10))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9277) (ExhaleHeap@@17 T@PolymorphicMapType_9277) (Mask@@47 T@PolymorphicMapType_9298) (o_22@@12 T@Ref) (f_30@@11 T@Field_9350_9351) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@47) (=> (HasDirectPerm_5833_5834 Mask@@47 o_22@@12 f_30@@11) (= (select (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@21) o_22@@12 f_30@@11) (select (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| ExhaleHeap@@17) o_22@@12 f_30@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@47) (select (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| ExhaleHeap@@17) o_22@@12 f_30@@11))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9277) (ExhaleHeap@@18 T@PolymorphicMapType_9277) (Mask@@48 T@PolymorphicMapType_9298) (o_22@@13 T@Ref) (f_30@@12 T@Field_15456_15461) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@48) (=> (HasDirectPerm_5838_17730 Mask@@48 o_22@@13 f_30@@12) (= (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@22) o_22@@13 f_30@@12) (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| ExhaleHeap@@18) o_22@@13 f_30@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@48) (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| ExhaleHeap@@18) o_22@@13 f_30@@12))
)))
(assert (forall ((s0@@1 T@Seq_15459) (s1@@1 T@Seq_15459) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_5839|)) (not (= s1@@1 |Seq#Empty_5839|))) (= (|Seq#Length_5839| (|Seq#Append_15459| s0@@1 s1@@1)) (+ (|Seq#Length_5839| s0@@1) (|Seq#Length_5839| s1@@1))))
 :qid |stdinbpl.230:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_5839| (|Seq#Append_15459| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2915) (s1@@2 T@Seq_2915) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2915|)) (not (= s1@@2 |Seq#Empty_2915|))) (= (|Seq#Length_2915| (|Seq#Append_2915| s0@@2 s1@@2)) (+ (|Seq#Length_2915| s0@@2) (|Seq#Length_2915| s1@@2))))
 :qid |stdinbpl.230:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2915| (|Seq#Append_2915| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@41 T@Ref) (f_4@@41 T@Field_16102_16107) ) (! (= (select (|PolymorphicMapType_9298_5856_40541#PolymorphicMapType_9298| ZeroMask) o_2@@41 f_4@@41) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9298_5856_40541#PolymorphicMapType_9298| ZeroMask) o_2@@41 f_4@@41))
)))
(assert (forall ((o_2@@42 T@Ref) (f_4@@42 T@Field_5856_15523) ) (! (= (select (|PolymorphicMapType_9298_5856_15523#PolymorphicMapType_9298| ZeroMask) o_2@@42 f_4@@42) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9298_5856_15523#PolymorphicMapType_9298| ZeroMask) o_2@@42 f_4@@42))
)))
(assert (forall ((o_2@@43 T@Ref) (f_4@@43 T@Field_5856_3052) ) (! (= (select (|PolymorphicMapType_9298_5856_3052#PolymorphicMapType_9298| ZeroMask) o_2@@43 f_4@@43) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9298_5856_3052#PolymorphicMapType_9298| ZeroMask) o_2@@43 f_4@@43))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_5856_53) ) (! (= (select (|PolymorphicMapType_9298_5856_53#PolymorphicMapType_9298| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9298_5856_53#PolymorphicMapType_9298| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_16089_16090) ) (! (= (select (|PolymorphicMapType_9298_5856_5857#PolymorphicMapType_9298| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9298_5856_5857#PolymorphicMapType_9298| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_5856_5834) ) (! (= (select (|PolymorphicMapType_9298_5856_5834#PolymorphicMapType_9298| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9298_5856_5834#PolymorphicMapType_9298| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_5856_17730) ) (! (= (select (|PolymorphicMapType_9298_5856_17611#PolymorphicMapType_9298| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9298_5856_17611#PolymorphicMapType_9298| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_5838_16107) ) (! (= (select (|PolymorphicMapType_9298_5838_39964#PolymorphicMapType_9298| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9298_5838_39964#PolymorphicMapType_9298| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_15521_15523) ) (! (= (select (|PolymorphicMapType_9298_5838_15523#PolymorphicMapType_9298| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9298_5838_15523#PolymorphicMapType_9298| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_15409_3052) ) (! (= (select (|PolymorphicMapType_9298_5838_3052#PolymorphicMapType_9298| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9298_5838_3052#PolymorphicMapType_9298| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_9337_53) ) (! (= (select (|PolymorphicMapType_9298_5838_53#PolymorphicMapType_9298| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9298_5838_53#PolymorphicMapType_9298| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_5838_5857) ) (! (= (select (|PolymorphicMapType_9298_5838_5857#PolymorphicMapType_9298| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9298_5838_5857#PolymorphicMapType_9298| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_9350_9351) ) (! (= (select (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_15456_15461) ) (! (= (select (|PolymorphicMapType_9298_5838_17611#PolymorphicMapType_9298| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9298_5838_17611#PolymorphicMapType_9298| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((s@@15 T@Seq_15459) (t@@1 T@Seq_15459) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_5839| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_5839| s@@15)) (|Seq#Length_5839| s@@15)) n@@15) (= (|Seq#Drop_5839| (|Seq#Append_15459| s@@15 t@@1) n@@15) (|Seq#Drop_5839| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_5839| s@@15))))))
 :qid |stdinbpl.387:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_5839| (|Seq#Append_15459| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2915) (t@@2 T@Seq_2915) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2915| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2915| s@@16)) (|Seq#Length_2915| s@@16)) n@@16) (= (|Seq#Drop_2915| (|Seq#Append_2915| s@@16 t@@2) n@@16) (|Seq#Drop_2915| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2915| s@@16))))))
 :qid |stdinbpl.387:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2915| (|Seq#Append_2915| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9298) (SummandMask1 T@PolymorphicMapType_9298) (SummandMask2 T@PolymorphicMapType_9298) (o_2@@55 T@Ref) (f_4@@55 T@Field_16102_16107) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9298_5856_40541#PolymorphicMapType_9298| ResultMask) o_2@@55 f_4@@55) (+ (select (|PolymorphicMapType_9298_5856_40541#PolymorphicMapType_9298| SummandMask1) o_2@@55 f_4@@55) (select (|PolymorphicMapType_9298_5856_40541#PolymorphicMapType_9298| SummandMask2) o_2@@55 f_4@@55))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9298_5856_40541#PolymorphicMapType_9298| ResultMask) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9298_5856_40541#PolymorphicMapType_9298| SummandMask1) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9298_5856_40541#PolymorphicMapType_9298| SummandMask2) o_2@@55 f_4@@55))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9298) (SummandMask1@@0 T@PolymorphicMapType_9298) (SummandMask2@@0 T@PolymorphicMapType_9298) (o_2@@56 T@Ref) (f_4@@56 T@Field_5856_15523) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9298_5856_15523#PolymorphicMapType_9298| ResultMask@@0) o_2@@56 f_4@@56) (+ (select (|PolymorphicMapType_9298_5856_15523#PolymorphicMapType_9298| SummandMask1@@0) o_2@@56 f_4@@56) (select (|PolymorphicMapType_9298_5856_15523#PolymorphicMapType_9298| SummandMask2@@0) o_2@@56 f_4@@56))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9298_5856_15523#PolymorphicMapType_9298| ResultMask@@0) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9298_5856_15523#PolymorphicMapType_9298| SummandMask1@@0) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9298_5856_15523#PolymorphicMapType_9298| SummandMask2@@0) o_2@@56 f_4@@56))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9298) (SummandMask1@@1 T@PolymorphicMapType_9298) (SummandMask2@@1 T@PolymorphicMapType_9298) (o_2@@57 T@Ref) (f_4@@57 T@Field_5856_3052) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9298_5856_3052#PolymorphicMapType_9298| ResultMask@@1) o_2@@57 f_4@@57) (+ (select (|PolymorphicMapType_9298_5856_3052#PolymorphicMapType_9298| SummandMask1@@1) o_2@@57 f_4@@57) (select (|PolymorphicMapType_9298_5856_3052#PolymorphicMapType_9298| SummandMask2@@1) o_2@@57 f_4@@57))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9298_5856_3052#PolymorphicMapType_9298| ResultMask@@1) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9298_5856_3052#PolymorphicMapType_9298| SummandMask1@@1) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9298_5856_3052#PolymorphicMapType_9298| SummandMask2@@1) o_2@@57 f_4@@57))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9298) (SummandMask1@@2 T@PolymorphicMapType_9298) (SummandMask2@@2 T@PolymorphicMapType_9298) (o_2@@58 T@Ref) (f_4@@58 T@Field_5856_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9298_5856_53#PolymorphicMapType_9298| ResultMask@@2) o_2@@58 f_4@@58) (+ (select (|PolymorphicMapType_9298_5856_53#PolymorphicMapType_9298| SummandMask1@@2) o_2@@58 f_4@@58) (select (|PolymorphicMapType_9298_5856_53#PolymorphicMapType_9298| SummandMask2@@2) o_2@@58 f_4@@58))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9298_5856_53#PolymorphicMapType_9298| ResultMask@@2) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9298_5856_53#PolymorphicMapType_9298| SummandMask1@@2) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9298_5856_53#PolymorphicMapType_9298| SummandMask2@@2) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9298) (SummandMask1@@3 T@PolymorphicMapType_9298) (SummandMask2@@3 T@PolymorphicMapType_9298) (o_2@@59 T@Ref) (f_4@@59 T@Field_16089_16090) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9298_5856_5857#PolymorphicMapType_9298| ResultMask@@3) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_9298_5856_5857#PolymorphicMapType_9298| SummandMask1@@3) o_2@@59 f_4@@59) (select (|PolymorphicMapType_9298_5856_5857#PolymorphicMapType_9298| SummandMask2@@3) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9298_5856_5857#PolymorphicMapType_9298| ResultMask@@3) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9298_5856_5857#PolymorphicMapType_9298| SummandMask1@@3) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9298_5856_5857#PolymorphicMapType_9298| SummandMask2@@3) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9298) (SummandMask1@@4 T@PolymorphicMapType_9298) (SummandMask2@@4 T@PolymorphicMapType_9298) (o_2@@60 T@Ref) (f_4@@60 T@Field_5856_5834) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9298_5856_5834#PolymorphicMapType_9298| ResultMask@@4) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_9298_5856_5834#PolymorphicMapType_9298| SummandMask1@@4) o_2@@60 f_4@@60) (select (|PolymorphicMapType_9298_5856_5834#PolymorphicMapType_9298| SummandMask2@@4) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9298_5856_5834#PolymorphicMapType_9298| ResultMask@@4) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9298_5856_5834#PolymorphicMapType_9298| SummandMask1@@4) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9298_5856_5834#PolymorphicMapType_9298| SummandMask2@@4) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_9298) (SummandMask1@@5 T@PolymorphicMapType_9298) (SummandMask2@@5 T@PolymorphicMapType_9298) (o_2@@61 T@Ref) (f_4@@61 T@Field_5856_17730) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_9298_5856_17611#PolymorphicMapType_9298| ResultMask@@5) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_9298_5856_17611#PolymorphicMapType_9298| SummandMask1@@5) o_2@@61 f_4@@61) (select (|PolymorphicMapType_9298_5856_17611#PolymorphicMapType_9298| SummandMask2@@5) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9298_5856_17611#PolymorphicMapType_9298| ResultMask@@5) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9298_5856_17611#PolymorphicMapType_9298| SummandMask1@@5) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9298_5856_17611#PolymorphicMapType_9298| SummandMask2@@5) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_9298) (SummandMask1@@6 T@PolymorphicMapType_9298) (SummandMask2@@6 T@PolymorphicMapType_9298) (o_2@@62 T@Ref) (f_4@@62 T@Field_5838_16107) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_9298_5838_39964#PolymorphicMapType_9298| ResultMask@@6) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_9298_5838_39964#PolymorphicMapType_9298| SummandMask1@@6) o_2@@62 f_4@@62) (select (|PolymorphicMapType_9298_5838_39964#PolymorphicMapType_9298| SummandMask2@@6) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9298_5838_39964#PolymorphicMapType_9298| ResultMask@@6) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9298_5838_39964#PolymorphicMapType_9298| SummandMask1@@6) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9298_5838_39964#PolymorphicMapType_9298| SummandMask2@@6) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_9298) (SummandMask1@@7 T@PolymorphicMapType_9298) (SummandMask2@@7 T@PolymorphicMapType_9298) (o_2@@63 T@Ref) (f_4@@63 T@Field_15521_15523) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_9298_5838_15523#PolymorphicMapType_9298| ResultMask@@7) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_9298_5838_15523#PolymorphicMapType_9298| SummandMask1@@7) o_2@@63 f_4@@63) (select (|PolymorphicMapType_9298_5838_15523#PolymorphicMapType_9298| SummandMask2@@7) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9298_5838_15523#PolymorphicMapType_9298| ResultMask@@7) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9298_5838_15523#PolymorphicMapType_9298| SummandMask1@@7) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9298_5838_15523#PolymorphicMapType_9298| SummandMask2@@7) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_9298) (SummandMask1@@8 T@PolymorphicMapType_9298) (SummandMask2@@8 T@PolymorphicMapType_9298) (o_2@@64 T@Ref) (f_4@@64 T@Field_15409_3052) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_9298_5838_3052#PolymorphicMapType_9298| ResultMask@@8) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_9298_5838_3052#PolymorphicMapType_9298| SummandMask1@@8) o_2@@64 f_4@@64) (select (|PolymorphicMapType_9298_5838_3052#PolymorphicMapType_9298| SummandMask2@@8) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9298_5838_3052#PolymorphicMapType_9298| ResultMask@@8) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9298_5838_3052#PolymorphicMapType_9298| SummandMask1@@8) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9298_5838_3052#PolymorphicMapType_9298| SummandMask2@@8) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_9298) (SummandMask1@@9 T@PolymorphicMapType_9298) (SummandMask2@@9 T@PolymorphicMapType_9298) (o_2@@65 T@Ref) (f_4@@65 T@Field_9337_53) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_9298_5838_53#PolymorphicMapType_9298| ResultMask@@9) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_9298_5838_53#PolymorphicMapType_9298| SummandMask1@@9) o_2@@65 f_4@@65) (select (|PolymorphicMapType_9298_5838_53#PolymorphicMapType_9298| SummandMask2@@9) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9298_5838_53#PolymorphicMapType_9298| ResultMask@@9) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9298_5838_53#PolymorphicMapType_9298| SummandMask1@@9) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9298_5838_53#PolymorphicMapType_9298| SummandMask2@@9) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_9298) (SummandMask1@@10 T@PolymorphicMapType_9298) (SummandMask2@@10 T@PolymorphicMapType_9298) (o_2@@66 T@Ref) (f_4@@66 T@Field_5838_5857) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_9298_5838_5857#PolymorphicMapType_9298| ResultMask@@10) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_9298_5838_5857#PolymorphicMapType_9298| SummandMask1@@10) o_2@@66 f_4@@66) (select (|PolymorphicMapType_9298_5838_5857#PolymorphicMapType_9298| SummandMask2@@10) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9298_5838_5857#PolymorphicMapType_9298| ResultMask@@10) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9298_5838_5857#PolymorphicMapType_9298| SummandMask1@@10) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9298_5838_5857#PolymorphicMapType_9298| SummandMask2@@10) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_9298) (SummandMask1@@11 T@PolymorphicMapType_9298) (SummandMask2@@11 T@PolymorphicMapType_9298) (o_2@@67 T@Ref) (f_4@@67 T@Field_9350_9351) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| ResultMask@@11) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| SummandMask1@@11) o_2@@67 f_4@@67) (select (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| SummandMask2@@11) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| ResultMask@@11) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| SummandMask1@@11) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| SummandMask2@@11) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_9298) (SummandMask1@@12 T@PolymorphicMapType_9298) (SummandMask2@@12 T@PolymorphicMapType_9298) (o_2@@68 T@Ref) (f_4@@68 T@Field_15456_15461) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_9298_5838_17611#PolymorphicMapType_9298| ResultMask@@12) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_9298_5838_17611#PolymorphicMapType_9298| SummandMask1@@12) o_2@@68 f_4@@68) (select (|PolymorphicMapType_9298_5838_17611#PolymorphicMapType_9298| SummandMask2@@12) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9298_5838_17611#PolymorphicMapType_9298| ResultMask@@12) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9298_5838_17611#PolymorphicMapType_9298| SummandMask1@@12) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9298_5838_17611#PolymorphicMapType_9298| SummandMask2@@12) o_2@@68 f_4@@68))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2915| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2915| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.552:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2915| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_15459) (b T@Seq_15459) ) (!  (=> (|Seq#Equal_15459| a b) (= a b))
 :qid |stdinbpl.525:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_15459| a b))
)))
(assert (forall ((a@@0 T@Seq_2915) (b@@0 T@Seq_2915) ) (!  (=> (|Seq#Equal_2915| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.525:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2915| a@@0 b@@0))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9277) (Mask@@49 T@PolymorphicMapType_9298) (i@@5 Int) ) (!  (=> (state Heap@@23 Mask@@49) (= (|trigger'| Heap@@23 i@@5) (|trigger#frame| EmptyFrame i@@5)))
 :qid |stdinbpl.602:15|
 :skolemid |61|
 :pattern ( (state Heap@@23 Mask@@49) (|trigger'| Heap@@23 i@@5))
)))
(assert (forall ((s@@17 T@Seq_15459) (i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_5839| s@@17))) (|Seq#ContainsTrigger_5839| s@@17 (|Seq#Index_5839| s@@17 i@@6)))
 :qid |stdinbpl.418:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_5839| s@@17 i@@6))
)))
(assert (forall ((s@@18 T@Seq_2915) (i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_2915| s@@18))) (|Seq#ContainsTrigger_2915| s@@18 (|Seq#Index_2915| s@@18 i@@7)))
 :qid |stdinbpl.418:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2915| s@@18 i@@7))
)))
(assert (forall ((s0@@3 T@Seq_15459) (s1@@3 T@Seq_15459) ) (!  (and (=> (= s0@@3 |Seq#Empty_5839|) (= (|Seq#Append_15459| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_5839|) (= (|Seq#Append_15459| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.236:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_15459| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2915) (s1@@4 T@Seq_2915) ) (!  (and (=> (= s0@@4 |Seq#Empty_2915|) (= (|Seq#Append_2915| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2915|) (= (|Seq#Append_2915| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.236:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2915| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_5839| (|Seq#Singleton_5839| t@@3) 0) t@@3)
 :qid |stdinbpl.240:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_5839| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2915| (|Seq#Singleton_2915| t@@4) 0) t@@4)
 :qid |stdinbpl.240:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2915| t@@4))
)))
(assert (forall ((s@@19 T@Seq_15459) ) (! (<= 0 (|Seq#Length_5839| s@@19))
 :qid |stdinbpl.219:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_5839| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2915) ) (! (<= 0 (|Seq#Length_2915| s@@20))
 :qid |stdinbpl.219:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2915| s@@20))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9277) (i@@8 Int) ) (!  (and (= (trigger Heap@@24 i@@8) (|trigger'| Heap@@24 i@@8)) (dummyFunction_3263 (|trigger#triggerStateless| i@@8)))
 :qid |stdinbpl.585:15|
 :skolemid |58|
 :pattern ( (trigger Heap@@24 i@@8))
)))
(assert (forall ((s0@@5 T@Seq_15459) (s1@@5 T@Seq_15459) ) (!  (=> (|Seq#Equal_15459| s0@@5 s1@@5) (and (= (|Seq#Length_5839| s0@@5) (|Seq#Length_5839| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_5839| s0@@5))) (= (|Seq#Index_5839| s0@@5 j@@6) (|Seq#Index_5839| s1@@5 j@@6)))
 :qid |stdinbpl.515:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_5839| s0@@5 j@@6))
 :pattern ( (|Seq#Index_5839| s1@@5 j@@6))
))))
 :qid |stdinbpl.512:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_15459| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2915) (s1@@6 T@Seq_2915) ) (!  (=> (|Seq#Equal_2915| s0@@6 s1@@6) (and (= (|Seq#Length_2915| s0@@6) (|Seq#Length_2915| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2915| s0@@6))) (= (|Seq#Index_2915| s0@@6 j@@7) (|Seq#Index_2915| s1@@6 j@@7)))
 :qid |stdinbpl.515:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2915| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2915| s1@@6 j@@7))
))))
 :qid |stdinbpl.512:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2915| s0@@6 s1@@6))
)))
(assert (forall ((this@@4 T@Ref) ) (! (= (getPredWandId_5856_5857 (List this@@4)) 0)
 :qid |stdinbpl.643:15|
 :skolemid |64|
 :pattern ( (List this@@4))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_5839| (|Seq#Singleton_5839| t@@5)) 1)
 :qid |stdinbpl.227:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_5839| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2915| (|Seq#Singleton_2915| t@@6)) 1)
 :qid |stdinbpl.227:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2915| t@@6))
)))
(assert (forall ((s@@21 T@Seq_15459) (t@@7 T@Seq_15459) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_5839| s@@21))) (= (|Seq#Take_5839| (|Seq#Append_15459| s@@21 t@@7) n@@17) (|Seq#Take_5839| s@@21 n@@17)))
 :qid |stdinbpl.369:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_5839| (|Seq#Append_15459| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2915) (t@@8 T@Seq_2915) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2915| s@@22))) (= (|Seq#Take_2915| (|Seq#Append_2915| s@@22 t@@8) n@@18) (|Seq#Take_2915| s@@22 n@@18)))
 :qid |stdinbpl.369:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2915| (|Seq#Append_2915| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_15459) (i@@9 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length_5839| s@@23))) (= (|Seq#Length_5839| (|Seq#Update_5839| s@@23 i@@9 v@@2)) (|Seq#Length_5839| s@@23)))
 :qid |stdinbpl.268:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_5839| (|Seq#Update_5839| s@@23 i@@9 v@@2)))
 :pattern ( (|Seq#Length_5839| s@@23) (|Seq#Update_5839| s@@23 i@@9 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2915) (i@@10 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2915| s@@24))) (= (|Seq#Length_2915| (|Seq#Update_2915| s@@24 i@@10 v@@3)) (|Seq#Length_2915| s@@24)))
 :qid |stdinbpl.268:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2915| (|Seq#Update_2915| s@@24 i@@10 v@@3)))
 :pattern ( (|Seq#Length_2915| s@@24) (|Seq#Update_2915| s@@24 i@@10 v@@3))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9277) (o_35 T@Ref) (f_11 T@Field_16102_16107) (v@@4 T@PolymorphicMapType_9826) ) (! (succHeap Heap@@25 (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@25) (store (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@25) o_35 f_11 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@25) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@25) (store (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@25) o_35 f_11 v@@4)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9277) (o_35@@0 T@Ref) (f_11@@0 T@Field_5856_15523) (v@@5 T@Seq_2915) ) (! (succHeap Heap@@26 (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@26) (store (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@26) o_35@@0 f_11@@0 v@@5) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@26) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@26) (store (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@26) o_35@@0 f_11@@0 v@@5) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9277) (o_35@@1 T@Ref) (f_11@@1 T@Field_5856_3052) (v@@6 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@27) (store (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@27) o_35@@1 f_11@@1 v@@6) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@27) (store (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@27) o_35@@1 f_11@@1 v@@6) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@27) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9277) (o_35@@2 T@Ref) (f_11@@2 T@Field_16089_16090) (v@@7 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@28) (store (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@28) o_35@@2 f_11@@2 v@@7) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@28) (store (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@28) o_35@@2 f_11@@2 v@@7) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@28) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9277) (o_35@@3 T@Ref) (f_11@@3 T@Field_5856_17730) (v@@8 T@Seq_15459) ) (! (succHeap Heap@@29 (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@29) (store (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@29) o_35@@3 f_11@@3 v@@8) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@29) (store (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@29) o_35@@3 f_11@@3 v@@8) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@29) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9277) (o_35@@4 T@Ref) (f_11@@4 T@Field_5856_5834) (v@@9 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@30) (store (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@30) o_35@@4 f_11@@4 v@@9) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@30) (store (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@30) o_35@@4 f_11@@4 v@@9) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@30) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_9277) (o_35@@5 T@Ref) (f_11@@5 T@Field_5856_53) (v@@10 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@31) (store (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@31) o_35@@5 f_11@@5 v@@10) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@31) (store (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@31) o_35@@5 f_11@@5 v@@10) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@31) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_9277) (o_35@@6 T@Ref) (f_11@@6 T@Field_5838_16107) (v@@11 T@PolymorphicMapType_9826) ) (! (succHeap Heap@@32 (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@32) (store (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@32) o_35@@6 f_11@@6 v@@11) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@32) (store (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@32) o_35@@6 f_11@@6 v@@11) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@32) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_9277) (o_35@@7 T@Ref) (f_11@@7 T@Field_15521_15523) (v@@12 T@Seq_2915) ) (! (succHeap Heap@@33 (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@33) (store (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@33) o_35@@7 f_11@@7 v@@12) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@33) (store (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@33) o_35@@7 f_11@@7 v@@12) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@33) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_9277) (o_35@@8 T@Ref) (f_11@@8 T@Field_15409_3052) (v@@13 Int) ) (! (succHeap Heap@@34 (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@34) (store (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@34) o_35@@8 f_11@@8 v@@13) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@34) (store (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@34) o_35@@8 f_11@@8 v@@13) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@34) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_9277) (o_35@@9 T@Ref) (f_11@@9 T@Field_5838_5857) (v@@14 T@FrameType) ) (! (succHeap Heap@@35 (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@35) (store (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@35) o_35@@9 f_11@@9 v@@14) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@35) (store (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@35) o_35@@9 f_11@@9 v@@14) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@35) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_9277) (o_35@@10 T@Ref) (f_11@@10 T@Field_15456_15461) (v@@15 T@Seq_15459) ) (! (succHeap Heap@@36 (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@36) (store (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@36) o_35@@10 f_11@@10 v@@15) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@36) (store (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@36) o_35@@10 f_11@@10 v@@15) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@36) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_9277) (o_35@@11 T@Ref) (f_11@@11 T@Field_9350_9351) (v@@16 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@37) (store (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@37) o_35@@11 f_11@@11 v@@16) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9277 (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@37) (store (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@37) o_35@@11 f_11@@11 v@@16) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@37) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_9277) (o_35@@12 T@Ref) (f_11@@12 T@Field_9337_53) (v@@17 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_9277 (store (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@38) o_35@@12 f_11@@12 v@@17) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9277 (store (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@38) o_35@@12 f_11@@12 v@@17) (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@38) (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@38)))
)))
(assert (forall ((this@@5 T@Ref) ) (! (= (PredicateMaskField_5856 (List this@@5)) (|List#sm| this@@5))
 :qid |stdinbpl.635:15|
 :skolemid |62|
 :pattern ( (PredicateMaskField_5856 (List this@@5)))
)))
(assert (forall ((s@@25 T@Seq_15459) (t@@9 T@Seq_15459) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_5839| s@@25))) (= (|Seq#Drop_5839| (|Seq#Append_15459| s@@25 t@@9) n@@19) (|Seq#Append_15459| (|Seq#Drop_5839| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.383:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_5839| (|Seq#Append_15459| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2915) (t@@10 T@Seq_2915) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2915| s@@26))) (= (|Seq#Drop_2915| (|Seq#Append_2915| s@@26 t@@10) n@@20) (|Seq#Append_2915| (|Seq#Drop_2915| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.383:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2915| (|Seq#Append_2915| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_15459) (n@@21 Int) (i@@11 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@11)) (< i@@11 (|Seq#Length_5839| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@11 n@@21) n@@21) i@@11) (= (|Seq#Index_5839| (|Seq#Drop_5839| s@@27 n@@21) (|Seq#Sub| i@@11 n@@21)) (|Seq#Index_5839| s@@27 i@@11))))
 :qid |stdinbpl.319:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_5839| s@@27 n@@21) (|Seq#Index_5839| s@@27 i@@11))
)))
(assert (forall ((s@@28 T@Seq_2915) (n@@22 Int) (i@@12 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@12)) (< i@@12 (|Seq#Length_2915| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@12 n@@22) n@@22) i@@12) (= (|Seq#Index_2915| (|Seq#Drop_2915| s@@28 n@@22) (|Seq#Sub| i@@12 n@@22)) (|Seq#Index_2915| s@@28 i@@12))))
 :qid |stdinbpl.319:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2915| s@@28 n@@22) (|Seq#Index_2915| s@@28 i@@12))
)))
(assert (forall ((s0@@7 T@Seq_15459) (s1@@7 T@Seq_15459) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_5839|)) (not (= s1@@7 |Seq#Empty_5839|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_5839| s0@@7))) (= (|Seq#Index_5839| (|Seq#Append_15459| s0@@7 s1@@7) n@@23) (|Seq#Index_5839| s0@@7 n@@23)))
 :qid |stdinbpl.259:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_5839| (|Seq#Append_15459| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_5839| s0@@7 n@@23) (|Seq#Append_15459| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2915) (s1@@8 T@Seq_2915) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2915|)) (not (= s1@@8 |Seq#Empty_2915|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2915| s0@@8))) (= (|Seq#Index_2915| (|Seq#Append_2915| s0@@8 s1@@8) n@@24) (|Seq#Index_2915| s0@@8 n@@24)))
 :qid |stdinbpl.259:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2915| (|Seq#Append_2915| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2915| s0@@8 n@@24) (|Seq#Append_2915| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_15459) (s1@@9 T@Seq_15459) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_5839|)) (not (= s1@@9 |Seq#Empty_5839|))) (<= 0 m)) (< m (|Seq#Length_5839| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_5839| s0@@9)) (|Seq#Length_5839| s0@@9)) m) (= (|Seq#Index_5839| (|Seq#Append_15459| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_5839| s0@@9))) (|Seq#Index_5839| s1@@9 m))))
 :qid |stdinbpl.264:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_5839| s1@@9 m) (|Seq#Append_15459| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2915) (s1@@10 T@Seq_2915) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2915|)) (not (= s1@@10 |Seq#Empty_2915|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2915| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2915| s0@@10)) (|Seq#Length_2915| s0@@10)) m@@0) (= (|Seq#Index_2915| (|Seq#Append_2915| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2915| s0@@10))) (|Seq#Index_2915| s1@@10 m@@0))))
 :qid |stdinbpl.264:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2915| s1@@10 m@@0) (|Seq#Append_2915| s0@@10 s1@@10))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_9277) (ExhaleHeap@@19 T@PolymorphicMapType_9277) (Mask@@50 T@PolymorphicMapType_9298) (pm_f_13@@3 T@Field_16089_16090) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@19 Mask@@50) (=> (and (HasDirectPerm_5856_5857 Mask@@50 null pm_f_13@@3) (IsPredicateField_5856_5857 pm_f_13@@3)) (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13 T@Ref) (f_30@@13 T@Field_9337_53) ) (!  (=> (select (|PolymorphicMapType_9826_9337_53#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@39) null (PredicateMaskField_5856 pm_f_13@@3))) o2_13 f_30@@13) (= (select (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@39) o2_13 f_30@@13) (select (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13 f_30@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13 f_30@@13))
)) (forall ((o2_13@@0 T@Ref) (f_30@@14 T@Field_9350_9351) ) (!  (=> (select (|PolymorphicMapType_9826_9337_9351#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@39) null (PredicateMaskField_5856 pm_f_13@@3))) o2_13@@0 f_30@@14) (= (select (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@39) o2_13@@0 f_30@@14) (select (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@0 f_30@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@0 f_30@@14))
))) (forall ((o2_13@@1 T@Ref) (f_30@@15 T@Field_15409_3052) ) (!  (=> (select (|PolymorphicMapType_9826_9337_3052#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@39) null (PredicateMaskField_5856 pm_f_13@@3))) o2_13@@1 f_30@@15) (= (select (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@39) o2_13@@1 f_30@@15) (select (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@1 f_30@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@1 f_30@@15))
))) (forall ((o2_13@@2 T@Ref) (f_30@@16 T@Field_15456_15461) ) (!  (=> (select (|PolymorphicMapType_9826_9337_15461#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@39) null (PredicateMaskField_5856 pm_f_13@@3))) o2_13@@2 f_30@@16) (= (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@39) o2_13@@2 f_30@@16) (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@2 f_30@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@2 f_30@@16))
))) (forall ((o2_13@@3 T@Ref) (f_30@@17 T@Field_15521_15523) ) (!  (=> (select (|PolymorphicMapType_9826_9337_15523#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@39) null (PredicateMaskField_5856 pm_f_13@@3))) o2_13@@3 f_30@@17) (= (select (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@39) o2_13@@3 f_30@@17) (select (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@3 f_30@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@3 f_30@@17))
))) (forall ((o2_13@@4 T@Ref) (f_30@@18 T@Field_5838_5857) ) (!  (=> (select (|PolymorphicMapType_9826_9337_16090#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@39) null (PredicateMaskField_5856 pm_f_13@@3))) o2_13@@4 f_30@@18) (= (select (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@39) o2_13@@4 f_30@@18) (select (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@4 f_30@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@4 f_30@@18))
))) (forall ((o2_13@@5 T@Ref) (f_30@@19 T@Field_5838_16107) ) (!  (=> (select (|PolymorphicMapType_9826_9337_31766#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@39) null (PredicateMaskField_5856 pm_f_13@@3))) o2_13@@5 f_30@@19) (= (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@39) o2_13@@5 f_30@@19) (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@5 f_30@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@5 f_30@@19))
))) (forall ((o2_13@@6 T@Ref) (f_30@@20 T@Field_5856_53) ) (!  (=> (select (|PolymorphicMapType_9826_16089_53#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@39) null (PredicateMaskField_5856 pm_f_13@@3))) o2_13@@6 f_30@@20) (= (select (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@39) o2_13@@6 f_30@@20) (select (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@6 f_30@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@6 f_30@@20))
))) (forall ((o2_13@@7 T@Ref) (f_30@@21 T@Field_5856_5834) ) (!  (=> (select (|PolymorphicMapType_9826_16089_9351#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@39) null (PredicateMaskField_5856 pm_f_13@@3))) o2_13@@7 f_30@@21) (= (select (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@39) o2_13@@7 f_30@@21) (select (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@7 f_30@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@7 f_30@@21))
))) (forall ((o2_13@@8 T@Ref) (f_30@@22 T@Field_5856_3052) ) (!  (=> (select (|PolymorphicMapType_9826_16089_3052#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@39) null (PredicateMaskField_5856 pm_f_13@@3))) o2_13@@8 f_30@@22) (= (select (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@39) o2_13@@8 f_30@@22) (select (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@8 f_30@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@8 f_30@@22))
))) (forall ((o2_13@@9 T@Ref) (f_30@@23 T@Field_5856_17730) ) (!  (=> (select (|PolymorphicMapType_9826_16089_15461#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@39) null (PredicateMaskField_5856 pm_f_13@@3))) o2_13@@9 f_30@@23) (= (select (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@39) o2_13@@9 f_30@@23) (select (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@9 f_30@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@9 f_30@@23))
))) (forall ((o2_13@@10 T@Ref) (f_30@@24 T@Field_5856_15523) ) (!  (=> (select (|PolymorphicMapType_9826_16089_15523#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@39) null (PredicateMaskField_5856 pm_f_13@@3))) o2_13@@10 f_30@@24) (= (select (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@39) o2_13@@10 f_30@@24) (select (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@10 f_30@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@10 f_30@@24))
))) (forall ((o2_13@@11 T@Ref) (f_30@@25 T@Field_16089_16090) ) (!  (=> (select (|PolymorphicMapType_9826_16089_16090#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@39) null (PredicateMaskField_5856 pm_f_13@@3))) o2_13@@11 f_30@@25) (= (select (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@39) o2_13@@11 f_30@@25) (select (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@11 f_30@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@11 f_30@@25))
))) (forall ((o2_13@@12 T@Ref) (f_30@@26 T@Field_16102_16107) ) (!  (=> (select (|PolymorphicMapType_9826_16089_33222#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@39) null (PredicateMaskField_5856 pm_f_13@@3))) o2_13@@12 f_30@@26) (= (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@39) o2_13@@12 f_30@@26) (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@12 f_30@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| ExhaleHeap@@19) o2_13@@12 f_30@@26))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@19 Mask@@50) (IsPredicateField_5856_5857 pm_f_13@@3))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_9277) (ExhaleHeap@@20 T@PolymorphicMapType_9277) (Mask@@51 T@PolymorphicMapType_9298) (pm_f_13@@4 T@Field_5838_5857) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@20 Mask@@51) (=> (and (HasDirectPerm_5838_5857 Mask@@51 null pm_f_13@@4) (IsPredicateField_5838_29874 pm_f_13@@4)) (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@13 T@Ref) (f_30@@27 T@Field_9337_53) ) (!  (=> (select (|PolymorphicMapType_9826_9337_53#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@40) null (PredicateMaskField_5838 pm_f_13@@4))) o2_13@@13 f_30@@27) (= (select (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@40) o2_13@@13 f_30@@27) (select (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@13 f_30@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@13 f_30@@27))
)) (forall ((o2_13@@14 T@Ref) (f_30@@28 T@Field_9350_9351) ) (!  (=> (select (|PolymorphicMapType_9826_9337_9351#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@40) null (PredicateMaskField_5838 pm_f_13@@4))) o2_13@@14 f_30@@28) (= (select (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@40) o2_13@@14 f_30@@28) (select (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@14 f_30@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@14 f_30@@28))
))) (forall ((o2_13@@15 T@Ref) (f_30@@29 T@Field_15409_3052) ) (!  (=> (select (|PolymorphicMapType_9826_9337_3052#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@40) null (PredicateMaskField_5838 pm_f_13@@4))) o2_13@@15 f_30@@29) (= (select (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@40) o2_13@@15 f_30@@29) (select (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@15 f_30@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@15 f_30@@29))
))) (forall ((o2_13@@16 T@Ref) (f_30@@30 T@Field_15456_15461) ) (!  (=> (select (|PolymorphicMapType_9826_9337_15461#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@40) null (PredicateMaskField_5838 pm_f_13@@4))) o2_13@@16 f_30@@30) (= (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@40) o2_13@@16 f_30@@30) (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@16 f_30@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@16 f_30@@30))
))) (forall ((o2_13@@17 T@Ref) (f_30@@31 T@Field_15521_15523) ) (!  (=> (select (|PolymorphicMapType_9826_9337_15523#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@40) null (PredicateMaskField_5838 pm_f_13@@4))) o2_13@@17 f_30@@31) (= (select (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@40) o2_13@@17 f_30@@31) (select (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@17 f_30@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@17 f_30@@31))
))) (forall ((o2_13@@18 T@Ref) (f_30@@32 T@Field_5838_5857) ) (!  (=> (select (|PolymorphicMapType_9826_9337_16090#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@40) null (PredicateMaskField_5838 pm_f_13@@4))) o2_13@@18 f_30@@32) (= (select (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@40) o2_13@@18 f_30@@32) (select (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@18 f_30@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@18 f_30@@32))
))) (forall ((o2_13@@19 T@Ref) (f_30@@33 T@Field_5838_16107) ) (!  (=> (select (|PolymorphicMapType_9826_9337_31766#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@40) null (PredicateMaskField_5838 pm_f_13@@4))) o2_13@@19 f_30@@33) (= (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@40) o2_13@@19 f_30@@33) (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@19 f_30@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@19 f_30@@33))
))) (forall ((o2_13@@20 T@Ref) (f_30@@34 T@Field_5856_53) ) (!  (=> (select (|PolymorphicMapType_9826_16089_53#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@40) null (PredicateMaskField_5838 pm_f_13@@4))) o2_13@@20 f_30@@34) (= (select (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@40) o2_13@@20 f_30@@34) (select (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@20 f_30@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@20 f_30@@34))
))) (forall ((o2_13@@21 T@Ref) (f_30@@35 T@Field_5856_5834) ) (!  (=> (select (|PolymorphicMapType_9826_16089_9351#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@40) null (PredicateMaskField_5838 pm_f_13@@4))) o2_13@@21 f_30@@35) (= (select (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@40) o2_13@@21 f_30@@35) (select (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@21 f_30@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@21 f_30@@35))
))) (forall ((o2_13@@22 T@Ref) (f_30@@36 T@Field_5856_3052) ) (!  (=> (select (|PolymorphicMapType_9826_16089_3052#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@40) null (PredicateMaskField_5838 pm_f_13@@4))) o2_13@@22 f_30@@36) (= (select (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@40) o2_13@@22 f_30@@36) (select (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@22 f_30@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@22 f_30@@36))
))) (forall ((o2_13@@23 T@Ref) (f_30@@37 T@Field_5856_17730) ) (!  (=> (select (|PolymorphicMapType_9826_16089_15461#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@40) null (PredicateMaskField_5838 pm_f_13@@4))) o2_13@@23 f_30@@37) (= (select (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@40) o2_13@@23 f_30@@37) (select (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@23 f_30@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@23 f_30@@37))
))) (forall ((o2_13@@24 T@Ref) (f_30@@38 T@Field_5856_15523) ) (!  (=> (select (|PolymorphicMapType_9826_16089_15523#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@40) null (PredicateMaskField_5838 pm_f_13@@4))) o2_13@@24 f_30@@38) (= (select (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@40) o2_13@@24 f_30@@38) (select (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@24 f_30@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@24 f_30@@38))
))) (forall ((o2_13@@25 T@Ref) (f_30@@39 T@Field_16089_16090) ) (!  (=> (select (|PolymorphicMapType_9826_16089_16090#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@40) null (PredicateMaskField_5838 pm_f_13@@4))) o2_13@@25 f_30@@39) (= (select (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@40) o2_13@@25 f_30@@39) (select (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@25 f_30@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@25 f_30@@39))
))) (forall ((o2_13@@26 T@Ref) (f_30@@40 T@Field_16102_16107) ) (!  (=> (select (|PolymorphicMapType_9826_16089_33222#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@40) null (PredicateMaskField_5838 pm_f_13@@4))) o2_13@@26 f_30@@40) (= (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@40) o2_13@@26 f_30@@40) (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@26 f_30@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| ExhaleHeap@@20) o2_13@@26 f_30@@40))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@20 Mask@@51) (IsPredicateField_5838_29874 pm_f_13@@4))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_9277) (ExhaleHeap@@21 T@PolymorphicMapType_9277) (Mask@@52 T@PolymorphicMapType_9298) (pm_f_13@@5 T@Field_16089_16090) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@21 Mask@@52) (=> (and (HasDirectPerm_5856_5857 Mask@@52 null pm_f_13@@5) (IsWandField_5856_34387 pm_f_13@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@27 T@Ref) (f_30@@41 T@Field_9337_53) ) (!  (=> (select (|PolymorphicMapType_9826_9337_53#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@41) null (WandMaskField_5856 pm_f_13@@5))) o2_13@@27 f_30@@41) (= (select (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@41) o2_13@@27 f_30@@41) (select (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@27 f_30@@41)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@27 f_30@@41))
)) (forall ((o2_13@@28 T@Ref) (f_30@@42 T@Field_9350_9351) ) (!  (=> (select (|PolymorphicMapType_9826_9337_9351#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@41) null (WandMaskField_5856 pm_f_13@@5))) o2_13@@28 f_30@@42) (= (select (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@41) o2_13@@28 f_30@@42) (select (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@28 f_30@@42)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@28 f_30@@42))
))) (forall ((o2_13@@29 T@Ref) (f_30@@43 T@Field_15409_3052) ) (!  (=> (select (|PolymorphicMapType_9826_9337_3052#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@41) null (WandMaskField_5856 pm_f_13@@5))) o2_13@@29 f_30@@43) (= (select (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@41) o2_13@@29 f_30@@43) (select (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@29 f_30@@43)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@29 f_30@@43))
))) (forall ((o2_13@@30 T@Ref) (f_30@@44 T@Field_15456_15461) ) (!  (=> (select (|PolymorphicMapType_9826_9337_15461#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@41) null (WandMaskField_5856 pm_f_13@@5))) o2_13@@30 f_30@@44) (= (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@41) o2_13@@30 f_30@@44) (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@30 f_30@@44)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@30 f_30@@44))
))) (forall ((o2_13@@31 T@Ref) (f_30@@45 T@Field_15521_15523) ) (!  (=> (select (|PolymorphicMapType_9826_9337_15523#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@41) null (WandMaskField_5856 pm_f_13@@5))) o2_13@@31 f_30@@45) (= (select (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@41) o2_13@@31 f_30@@45) (select (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@31 f_30@@45)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@31 f_30@@45))
))) (forall ((o2_13@@32 T@Ref) (f_30@@46 T@Field_5838_5857) ) (!  (=> (select (|PolymorphicMapType_9826_9337_16090#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@41) null (WandMaskField_5856 pm_f_13@@5))) o2_13@@32 f_30@@46) (= (select (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@41) o2_13@@32 f_30@@46) (select (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@32 f_30@@46)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@32 f_30@@46))
))) (forall ((o2_13@@33 T@Ref) (f_30@@47 T@Field_5838_16107) ) (!  (=> (select (|PolymorphicMapType_9826_9337_31766#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@41) null (WandMaskField_5856 pm_f_13@@5))) o2_13@@33 f_30@@47) (= (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@41) o2_13@@33 f_30@@47) (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@33 f_30@@47)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@33 f_30@@47))
))) (forall ((o2_13@@34 T@Ref) (f_30@@48 T@Field_5856_53) ) (!  (=> (select (|PolymorphicMapType_9826_16089_53#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@41) null (WandMaskField_5856 pm_f_13@@5))) o2_13@@34 f_30@@48) (= (select (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@41) o2_13@@34 f_30@@48) (select (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@34 f_30@@48)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@34 f_30@@48))
))) (forall ((o2_13@@35 T@Ref) (f_30@@49 T@Field_5856_5834) ) (!  (=> (select (|PolymorphicMapType_9826_16089_9351#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@41) null (WandMaskField_5856 pm_f_13@@5))) o2_13@@35 f_30@@49) (= (select (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@41) o2_13@@35 f_30@@49) (select (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@35 f_30@@49)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@35 f_30@@49))
))) (forall ((o2_13@@36 T@Ref) (f_30@@50 T@Field_5856_3052) ) (!  (=> (select (|PolymorphicMapType_9826_16089_3052#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@41) null (WandMaskField_5856 pm_f_13@@5))) o2_13@@36 f_30@@50) (= (select (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@41) o2_13@@36 f_30@@50) (select (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@36 f_30@@50)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@36 f_30@@50))
))) (forall ((o2_13@@37 T@Ref) (f_30@@51 T@Field_5856_17730) ) (!  (=> (select (|PolymorphicMapType_9826_16089_15461#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@41) null (WandMaskField_5856 pm_f_13@@5))) o2_13@@37 f_30@@51) (= (select (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@41) o2_13@@37 f_30@@51) (select (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@37 f_30@@51)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@37 f_30@@51))
))) (forall ((o2_13@@38 T@Ref) (f_30@@52 T@Field_5856_15523) ) (!  (=> (select (|PolymorphicMapType_9826_16089_15523#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@41) null (WandMaskField_5856 pm_f_13@@5))) o2_13@@38 f_30@@52) (= (select (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@41) o2_13@@38 f_30@@52) (select (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@38 f_30@@52)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@38 f_30@@52))
))) (forall ((o2_13@@39 T@Ref) (f_30@@53 T@Field_16089_16090) ) (!  (=> (select (|PolymorphicMapType_9826_16089_16090#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@41) null (WandMaskField_5856 pm_f_13@@5))) o2_13@@39 f_30@@53) (= (select (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@41) o2_13@@39 f_30@@53) (select (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@39 f_30@@53)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@39 f_30@@53))
))) (forall ((o2_13@@40 T@Ref) (f_30@@54 T@Field_16102_16107) ) (!  (=> (select (|PolymorphicMapType_9826_16089_33222#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@41) null (WandMaskField_5856 pm_f_13@@5))) o2_13@@40 f_30@@54) (= (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@41) o2_13@@40 f_30@@54) (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@40 f_30@@54)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| ExhaleHeap@@21) o2_13@@40 f_30@@54))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@21 Mask@@52) (IsWandField_5856_34387 pm_f_13@@5))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_9277) (ExhaleHeap@@22 T@PolymorphicMapType_9277) (Mask@@53 T@PolymorphicMapType_9298) (pm_f_13@@6 T@Field_5838_5857) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_5838_5857 Mask@@53 null pm_f_13@@6) (IsWandField_5838_34030 pm_f_13@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@41 T@Ref) (f_30@@55 T@Field_9337_53) ) (!  (=> (select (|PolymorphicMapType_9826_9337_53#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@42) null (WandMaskField_5838 pm_f_13@@6))) o2_13@@41 f_30@@55) (= (select (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@42) o2_13@@41 f_30@@55) (select (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@41 f_30@@55)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@41 f_30@@55))
)) (forall ((o2_13@@42 T@Ref) (f_30@@56 T@Field_9350_9351) ) (!  (=> (select (|PolymorphicMapType_9826_9337_9351#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@42) null (WandMaskField_5838 pm_f_13@@6))) o2_13@@42 f_30@@56) (= (select (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@42) o2_13@@42 f_30@@56) (select (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@42 f_30@@56)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@42 f_30@@56))
))) (forall ((o2_13@@43 T@Ref) (f_30@@57 T@Field_15409_3052) ) (!  (=> (select (|PolymorphicMapType_9826_9337_3052#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@42) null (WandMaskField_5838 pm_f_13@@6))) o2_13@@43 f_30@@57) (= (select (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| Heap@@42) o2_13@@43 f_30@@57) (select (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@43 f_30@@57)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5838_3052#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@43 f_30@@57))
))) (forall ((o2_13@@44 T@Ref) (f_30@@58 T@Field_15456_15461) ) (!  (=> (select (|PolymorphicMapType_9826_9337_15461#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@42) null (WandMaskField_5838 pm_f_13@@6))) o2_13@@44 f_30@@58) (= (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@42) o2_13@@44 f_30@@58) (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@44 f_30@@58)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@44 f_30@@58))
))) (forall ((o2_13@@45 T@Ref) (f_30@@59 T@Field_15521_15523) ) (!  (=> (select (|PolymorphicMapType_9826_9337_15523#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@42) null (WandMaskField_5838 pm_f_13@@6))) o2_13@@45 f_30@@59) (= (select (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| Heap@@42) o2_13@@45 f_30@@59) (select (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@45 f_30@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5838_15523#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@45 f_30@@59))
))) (forall ((o2_13@@46 T@Ref) (f_30@@60 T@Field_5838_5857) ) (!  (=> (select (|PolymorphicMapType_9826_9337_16090#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@42) null (WandMaskField_5838 pm_f_13@@6))) o2_13@@46 f_30@@60) (= (select (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| Heap@@42) o2_13@@46 f_30@@60) (select (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@46 f_30@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5838_5857#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@46 f_30@@60))
))) (forall ((o2_13@@47 T@Ref) (f_30@@61 T@Field_5838_16107) ) (!  (=> (select (|PolymorphicMapType_9826_9337_31766#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@42) null (WandMaskField_5838 pm_f_13@@6))) o2_13@@47 f_30@@61) (= (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@42) o2_13@@47 f_30@@61) (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@47 f_30@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@47 f_30@@61))
))) (forall ((o2_13@@48 T@Ref) (f_30@@62 T@Field_5856_53) ) (!  (=> (select (|PolymorphicMapType_9826_16089_53#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@42) null (WandMaskField_5838 pm_f_13@@6))) o2_13@@48 f_30@@62) (= (select (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| Heap@@42) o2_13@@48 f_30@@62) (select (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@48 f_30@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5856_53#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@48 f_30@@62))
))) (forall ((o2_13@@49 T@Ref) (f_30@@63 T@Field_5856_5834) ) (!  (=> (select (|PolymorphicMapType_9826_16089_9351#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@42) null (WandMaskField_5838 pm_f_13@@6))) o2_13@@49 f_30@@63) (= (select (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| Heap@@42) o2_13@@49 f_30@@63) (select (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@49 f_30@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5856_5834#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@49 f_30@@63))
))) (forall ((o2_13@@50 T@Ref) (f_30@@64 T@Field_5856_3052) ) (!  (=> (select (|PolymorphicMapType_9826_16089_3052#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@42) null (WandMaskField_5838 pm_f_13@@6))) o2_13@@50 f_30@@64) (= (select (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| Heap@@42) o2_13@@50 f_30@@64) (select (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@50 f_30@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5856_3052#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@50 f_30@@64))
))) (forall ((o2_13@@51 T@Ref) (f_30@@65 T@Field_5856_17730) ) (!  (=> (select (|PolymorphicMapType_9826_16089_15461#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@42) null (WandMaskField_5838 pm_f_13@@6))) o2_13@@51 f_30@@65) (= (select (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| Heap@@42) o2_13@@51 f_30@@65) (select (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@51 f_30@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5856_17730#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@51 f_30@@65))
))) (forall ((o2_13@@52 T@Ref) (f_30@@66 T@Field_5856_15523) ) (!  (=> (select (|PolymorphicMapType_9826_16089_15523#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@42) null (WandMaskField_5838 pm_f_13@@6))) o2_13@@52 f_30@@66) (= (select (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| Heap@@42) o2_13@@52 f_30@@66) (select (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@52 f_30@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5856_15523#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@52 f_30@@66))
))) (forall ((o2_13@@53 T@Ref) (f_30@@67 T@Field_16089_16090) ) (!  (=> (select (|PolymorphicMapType_9826_16089_16090#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@42) null (WandMaskField_5838 pm_f_13@@6))) o2_13@@53 f_30@@67) (= (select (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| Heap@@42) o2_13@@53 f_30@@67) (select (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@53 f_30@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5856_5857#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@53 f_30@@67))
))) (forall ((o2_13@@54 T@Ref) (f_30@@68 T@Field_16102_16107) ) (!  (=> (select (|PolymorphicMapType_9826_16089_33222#PolymorphicMapType_9826| (select (|PolymorphicMapType_9277_5838_28029#PolymorphicMapType_9277| Heap@@42) null (WandMaskField_5838 pm_f_13@@6))) o2_13@@54 f_30@@68) (= (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| Heap@@42) o2_13@@54 f_30@@68) (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@54 f_30@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9277_5856_29628#PolymorphicMapType_9277| ExhaleHeap@@22) o2_13@@54 f_30@@68))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@22 Mask@@53) (IsWandField_5838_34030 pm_f_13@@6))
)))
(assert (forall ((o_35@@13 T@Ref) (f_31 T@Field_9350_9351) (Heap@@43 T@PolymorphicMapType_9277) ) (!  (=> (select (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@43) o_35@@13 $allocated) (select (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@43) (select (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@43) o_35@@13 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9277_5644_5645#PolymorphicMapType_9277| Heap@@43) o_35@@13 f_31))
)))
(assert (forall ((s@@29 T@Seq_15459) (x@@3 T@Ref) (i@@13 Int) ) (!  (=> (and (and (<= 0 i@@13) (< i@@13 (|Seq#Length_5839| s@@29))) (= (|Seq#Index_5839| s@@29 i@@13) x@@3)) (|Seq#Contains_15459| s@@29 x@@3))
 :qid |stdinbpl.416:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_15459| s@@29 x@@3) (|Seq#Index_5839| s@@29 i@@13))
)))
(assert (forall ((s@@30 T@Seq_2915) (x@@4 Int) (i@@14 Int) ) (!  (=> (and (and (<= 0 i@@14) (< i@@14 (|Seq#Length_2915| s@@30))) (= (|Seq#Index_2915| s@@30 i@@14) x@@4)) (|Seq#Contains_2915| s@@30 x@@4))
 :qid |stdinbpl.416:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2915| s@@30 x@@4) (|Seq#Index_2915| s@@30 i@@14))
)))
(assert (forall ((s0@@11 T@Seq_15459) (s1@@11 T@Seq_15459) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_15459| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_15459| s0@@11 s1@@11))) (not (= (|Seq#Length_5839| s0@@11) (|Seq#Length_5839| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_15459| s0@@11 s1@@11))) (= (|Seq#Length_5839| s0@@11) (|Seq#Length_5839| s1@@11))) (= (|Seq#SkolemDiff_15459| s0@@11 s1@@11) (|Seq#SkolemDiff_15459| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_15459| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_15459| s0@@11 s1@@11) (|Seq#Length_5839| s0@@11))) (not (= (|Seq#Index_5839| s0@@11 (|Seq#SkolemDiff_15459| s0@@11 s1@@11)) (|Seq#Index_5839| s1@@11 (|Seq#SkolemDiff_15459| s0@@11 s1@@11))))))
 :qid |stdinbpl.520:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_15459| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2915) (s1@@12 T@Seq_2915) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2915| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2915| s0@@12 s1@@12))) (not (= (|Seq#Length_2915| s0@@12) (|Seq#Length_2915| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2915| s0@@12 s1@@12))) (= (|Seq#Length_2915| s0@@12) (|Seq#Length_2915| s1@@12))) (= (|Seq#SkolemDiff_2915| s0@@12 s1@@12) (|Seq#SkolemDiff_2915| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2915| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2915| s0@@12 s1@@12) (|Seq#Length_2915| s0@@12))) (not (= (|Seq#Index_2915| s0@@12 (|Seq#SkolemDiff_2915| s0@@12 s1@@12)) (|Seq#Index_2915| s1@@12 (|Seq#SkolemDiff_2915| s0@@12 s1@@12))))))
 :qid |stdinbpl.520:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2915| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_16089_16090) (v_1@@1 T@FrameType) (q T@Field_16089_16090) (w@@1 T@FrameType) (r T@Field_16089_16090) (u T@FrameType) ) (!  (=> (and (InsidePredicate_16089_16089 p@@2 v_1@@1 q w@@1) (InsidePredicate_16089_16089 q w@@1 r u)) (InsidePredicate_16089_16089 p@@2 v_1@@1 r u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16089_16089 p@@2 v_1@@1 q w@@1) (InsidePredicate_16089_16089 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_16089_16090) (v_1@@2 T@FrameType) (q@@0 T@Field_16089_16090) (w@@2 T@FrameType) (r@@0 T@Field_5838_5857) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_16089_16089 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_16089_9337 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_16089_9337 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16089_16089 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_16089_9337 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_16089_16090) (v_1@@3 T@FrameType) (q@@1 T@Field_5838_5857) (w@@3 T@FrameType) (r@@1 T@Field_16089_16090) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_16089_9337 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_9337_16089 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_16089_16089 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16089_9337 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_9337_16089 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_16089_16090) (v_1@@4 T@FrameType) (q@@2 T@Field_5838_5857) (w@@4 T@FrameType) (r@@2 T@Field_5838_5857) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_16089_9337 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_9337_9337 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_16089_9337 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16089_9337 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_9337_9337 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_5838_5857) (v_1@@5 T@FrameType) (q@@3 T@Field_16089_16090) (w@@5 T@FrameType) (r@@3 T@Field_16089_16090) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_9337_16089 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_16089_16089 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_9337_16089 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9337_16089 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_16089_16089 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_5838_5857) (v_1@@6 T@FrameType) (q@@4 T@Field_16089_16090) (w@@6 T@FrameType) (r@@4 T@Field_5838_5857) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_9337_16089 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_16089_9337 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_9337_9337 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9337_16089 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_16089_9337 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_5838_5857) (v_1@@7 T@FrameType) (q@@5 T@Field_5838_5857) (w@@7 T@FrameType) (r@@5 T@Field_16089_16090) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_9337_9337 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_9337_16089 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_9337_16089 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9337_9337 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_9337_16089 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_5838_5857) (v_1@@8 T@FrameType) (q@@6 T@Field_5838_5857) (w@@8 T@FrameType) (r@@6 T@Field_5838_5857) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_9337_9337 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_9337_9337 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_9337_9337 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9337_9337 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_9337_9337 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@31 T@Seq_15459) ) (!  (=> (= (|Seq#Length_5839| s@@31) 0) (= s@@31 |Seq#Empty_5839|))
 :qid |stdinbpl.223:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_5839| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2915) ) (!  (=> (= (|Seq#Length_2915| s@@32) 0) (= s@@32 |Seq#Empty_2915|))
 :qid |stdinbpl.223:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2915| s@@32))
)))
(assert (forall ((s@@33 T@Seq_15459) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_5839| s@@33 n@@25) |Seq#Empty_5839|))
 :qid |stdinbpl.399:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_5839| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2915) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2915| s@@34 n@@26) |Seq#Empty_2915|))
 :qid |stdinbpl.399:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2915| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@44 () T@PolymorphicMapType_9277)
(declare-fun i_4 () Int)
(declare-fun this@@6 () T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_9298)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun Mask@0 () T@PolymorphicMapType_9298)
(declare-fun i_2 () Int)
(declare-fun i_14 () Int)
(declare-fun j_5 () Int)
(set-info :boogie-vc-id |List#definedness|)
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
 (=> (= (ControlFlow 0 0) 48) (let ((anon38_Then_correct true))
(let ((anon25_correct true))
(let ((anon40_Else_correct  (=> (not (and (trigger Heap@@44 i_4) (< i_4 (- (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes)) 1)))) (and (=> (= (ControlFlow 0 32) (- 0 36)) (HasDirectPerm_5838_17730 QPMask@0 this@@6 nodes)) (=> (HasDirectPerm_5838_17730 QPMask@0 this@@6 nodes) (and (=> (= (ControlFlow 0 32) (- 0 35)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 32) (- 0 34)) (< i_4 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes)))) (=> (< i_4 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes))) (and (=> (= (ControlFlow 0 32) (- 0 33)) (HasDirectPerm_5833_5834 QPMask@0 (|Seq#Index_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes) i_4) next)) (=> (HasDirectPerm_5833_5834 QPMask@0 (|Seq#Index_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes) i_4) next) (=> (= (ControlFlow 0 32) 28) anon25_correct))))))))))))
(let ((anon40_Then_correct  (=> (and (and (trigger Heap@@44 i_4) (< i_4 (- (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes)) 1))) (= (ControlFlow 0 31) 28)) anon25_correct)))
(let ((anon39_Else_correct  (=> (not (trigger Heap@@44 i_4)) (and (=> (= (ControlFlow 0 39) 31) anon40_Then_correct) (=> (= (ControlFlow 0 39) 32) anon40_Else_correct)))))
(let ((anon39_Then_correct  (=> (trigger Heap@@44 i_4) (and (=> (= (ControlFlow 0 37) (- 0 38)) (HasDirectPerm_5838_17730 QPMask@0 this@@6 nodes)) (=> (HasDirectPerm_5838_17730 QPMask@0 this@@6 nodes) (and (=> (= (ControlFlow 0 37) 31) anon40_Then_correct) (=> (= (ControlFlow 0 37) 32) anon40_Else_correct)))))))
(let ((anon37_Then_correct  (=> (and (<= 0 i_4) (< i_4 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes)))) (and (and (=> (= (ControlFlow 0 40) 30) anon38_Then_correct) (=> (= (ControlFlow 0 40) 37) anon39_Then_correct)) (=> (= (ControlFlow 0 40) 39) anon39_Else_correct)))))
(let ((anon37_Else_correct  (=> (and (not (and (<= 0 i_4) (< i_4 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes))))) (= (ControlFlow 0 29) 28)) anon25_correct)))
(let ((anon36_Else_correct  (=> (< i_4 0) (and (=> (= (ControlFlow 0 43) 40) anon37_Then_correct) (=> (= (ControlFlow 0 43) 29) anon37_Else_correct)))))
(let ((anon36_Then_correct  (=> (<= 0 i_4) (and (=> (= (ControlFlow 0 41) (- 0 42)) (HasDirectPerm_5838_17730 QPMask@0 this@@6 nodes)) (=> (HasDirectPerm_5838_17730 QPMask@0 this@@6 nodes) (and (=> (= (ControlFlow 0 41) 40) anon37_Then_correct) (=> (= (ControlFlow 0 41) 29) anon37_Else_correct)))))))
(let ((anon35_Else_correct true))
(let ((anon32_Else_correct  (and (=> (= (ControlFlow 0 44) (- 0 45)) (forall ((i_4_1 Int) (i_4_2 Int) ) (!  (=> (and (and (and (and (not (= i_4_1 i_4_2)) (and (<= 0 i_4_1) (< i_4_1 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes))))) (and (<= 0 i_4_2) (< i_4_2 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes) i_4_1) (|Seq#Index_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes) i_4_2))))
 :qid |stdinbpl.748:15|
 :skolemid |70|
))) (=> (forall ((i_4_1@@0 Int) (i_4_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_4_1@@0 i_4_2@@0)) (and (<= 0 i_4_1@@0) (< i_4_1@@0 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes))))) (and (<= 0 i_4_2@@0) (< i_4_2@@0 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes) i_4_1@@0) (|Seq#Index_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes) i_4_2@@0))))
 :qid |stdinbpl.748:15|
 :skolemid |70|
)) (=> (and (and (forall ((i_4_1@@1 Int) ) (!  (=> (and (and (<= 0 i_4_1@@1) (< i_4_1@@1 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes)))) (< NoPerm FullPerm)) (and (qpRange1 (|Seq#Index_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes) i_4_1@@1)) (= (invRecv1 (|Seq#Index_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes) i_4_1@@1)) i_4_1@@1)))
 :qid |stdinbpl.754:22|
 :skolemid |71|
 :pattern ( (|Seq#Index_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes) i_4_1@@1))
 :pattern ( (|Seq#Index_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes) i_4_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 o_4)) (< (invRecv1 o_4) (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes)))) (< NoPerm FullPerm)) (qpRange1 o_4)) (= (|Seq#Index_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes) (invRecv1 o_4)) o_4))
 :qid |stdinbpl.758:22|
 :skolemid |72|
 :pattern ( (invRecv1 o_4))
))) (and (forall ((i_4_1@@2 Int) ) (!  (=> (and (<= 0 i_4_1@@2) (< i_4_1@@2 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes)))) (not (= (|Seq#Index_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes) i_4_1@@2) null)))
 :qid |stdinbpl.764:22|
 :skolemid |73|
 :pattern ( (|Seq#Index_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes) i_4_1@@2))
 :pattern ( (|Seq#Index_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes) i_4_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv1 o_4@@0)) (< (invRecv1 o_4@@0) (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes)))) (< NoPerm FullPerm)) (qpRange1 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes) (invRecv1 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| QPMask@0) o_4@@0 next) (+ (select (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| Mask@0) o_4@@0 next) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv1 o_4@@0)) (< (invRecv1 o_4@@0) (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes)))) (< NoPerm FullPerm)) (qpRange1 o_4@@0))) (= (select (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| QPMask@0) o_4@@0 next) (select (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| Mask@0) o_4@@0 next))))
 :qid |stdinbpl.770:22|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| QPMask@0) o_4@@0 next))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_9337_53) ) (!  (=> true (= (select (|PolymorphicMapType_9298_5838_53#PolymorphicMapType_9298| Mask@0) o_4@@1 f_5) (select (|PolymorphicMapType_9298_5838_53#PolymorphicMapType_9298| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.774:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_9298_5838_53#PolymorphicMapType_9298| Mask@0) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_9298_5838_53#PolymorphicMapType_9298| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_9350_9351) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| Mask@0) o_4@@2 f_5@@0) (select (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.774:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| Mask@0) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_15409_3052) ) (!  (=> true (= (select (|PolymorphicMapType_9298_5838_3052#PolymorphicMapType_9298| Mask@0) o_4@@3 f_5@@1) (select (|PolymorphicMapType_9298_5838_3052#PolymorphicMapType_9298| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.774:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_9298_5838_3052#PolymorphicMapType_9298| Mask@0) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_9298_5838_3052#PolymorphicMapType_9298| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_15456_15461) ) (!  (=> true (= (select (|PolymorphicMapType_9298_5838_17611#PolymorphicMapType_9298| Mask@0) o_4@@4 f_5@@2) (select (|PolymorphicMapType_9298_5838_17611#PolymorphicMapType_9298| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.774:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_9298_5838_17611#PolymorphicMapType_9298| Mask@0) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_9298_5838_17611#PolymorphicMapType_9298| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_15521_15523) ) (!  (=> true (= (select (|PolymorphicMapType_9298_5838_15523#PolymorphicMapType_9298| Mask@0) o_4@@5 f_5@@3) (select (|PolymorphicMapType_9298_5838_15523#PolymorphicMapType_9298| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.774:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_9298_5838_15523#PolymorphicMapType_9298| Mask@0) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_9298_5838_15523#PolymorphicMapType_9298| QPMask@0) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_5838_5857) ) (!  (=> true (= (select (|PolymorphicMapType_9298_5838_5857#PolymorphicMapType_9298| Mask@0) o_4@@6 f_5@@4) (select (|PolymorphicMapType_9298_5838_5857#PolymorphicMapType_9298| QPMask@0) o_4@@6 f_5@@4)))
 :qid |stdinbpl.774:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_9298_5838_5857#PolymorphicMapType_9298| Mask@0) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_9298_5838_5857#PolymorphicMapType_9298| QPMask@0) o_4@@6 f_5@@4))
))) (forall ((o_4@@7 T@Ref) (f_5@@5 T@Field_5838_16107) ) (!  (=> true (= (select (|PolymorphicMapType_9298_5838_39964#PolymorphicMapType_9298| Mask@0) o_4@@7 f_5@@5) (select (|PolymorphicMapType_9298_5838_39964#PolymorphicMapType_9298| QPMask@0) o_4@@7 f_5@@5)))
 :qid |stdinbpl.774:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_9298_5838_39964#PolymorphicMapType_9298| Mask@0) o_4@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_9298_5838_39964#PolymorphicMapType_9298| QPMask@0) o_4@@7 f_5@@5))
))) (forall ((o_4@@8 T@Ref) (f_5@@6 T@Field_5856_53) ) (!  (=> true (= (select (|PolymorphicMapType_9298_5856_53#PolymorphicMapType_9298| Mask@0) o_4@@8 f_5@@6) (select (|PolymorphicMapType_9298_5856_53#PolymorphicMapType_9298| QPMask@0) o_4@@8 f_5@@6)))
 :qid |stdinbpl.774:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_9298_5856_53#PolymorphicMapType_9298| Mask@0) o_4@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_9298_5856_53#PolymorphicMapType_9298| QPMask@0) o_4@@8 f_5@@6))
))) (forall ((o_4@@9 T@Ref) (f_5@@7 T@Field_5856_5834) ) (!  (=> true (= (select (|PolymorphicMapType_9298_5856_5834#PolymorphicMapType_9298| Mask@0) o_4@@9 f_5@@7) (select (|PolymorphicMapType_9298_5856_5834#PolymorphicMapType_9298| QPMask@0) o_4@@9 f_5@@7)))
 :qid |stdinbpl.774:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_9298_5856_5834#PolymorphicMapType_9298| Mask@0) o_4@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_9298_5856_5834#PolymorphicMapType_9298| QPMask@0) o_4@@9 f_5@@7))
))) (forall ((o_4@@10 T@Ref) (f_5@@8 T@Field_5856_3052) ) (!  (=> true (= (select (|PolymorphicMapType_9298_5856_3052#PolymorphicMapType_9298| Mask@0) o_4@@10 f_5@@8) (select (|PolymorphicMapType_9298_5856_3052#PolymorphicMapType_9298| QPMask@0) o_4@@10 f_5@@8)))
 :qid |stdinbpl.774:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_9298_5856_3052#PolymorphicMapType_9298| Mask@0) o_4@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_9298_5856_3052#PolymorphicMapType_9298| QPMask@0) o_4@@10 f_5@@8))
))) (forall ((o_4@@11 T@Ref) (f_5@@9 T@Field_5856_17730) ) (!  (=> true (= (select (|PolymorphicMapType_9298_5856_17611#PolymorphicMapType_9298| Mask@0) o_4@@11 f_5@@9) (select (|PolymorphicMapType_9298_5856_17611#PolymorphicMapType_9298| QPMask@0) o_4@@11 f_5@@9)))
 :qid |stdinbpl.774:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_9298_5856_17611#PolymorphicMapType_9298| Mask@0) o_4@@11 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_9298_5856_17611#PolymorphicMapType_9298| QPMask@0) o_4@@11 f_5@@9))
))) (forall ((o_4@@12 T@Ref) (f_5@@10 T@Field_5856_15523) ) (!  (=> true (= (select (|PolymorphicMapType_9298_5856_15523#PolymorphicMapType_9298| Mask@0) o_4@@12 f_5@@10) (select (|PolymorphicMapType_9298_5856_15523#PolymorphicMapType_9298| QPMask@0) o_4@@12 f_5@@10)))
 :qid |stdinbpl.774:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_9298_5856_15523#PolymorphicMapType_9298| Mask@0) o_4@@12 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_9298_5856_15523#PolymorphicMapType_9298| QPMask@0) o_4@@12 f_5@@10))
))) (forall ((o_4@@13 T@Ref) (f_5@@11 T@Field_16089_16090) ) (!  (=> true (= (select (|PolymorphicMapType_9298_5856_5857#PolymorphicMapType_9298| Mask@0) o_4@@13 f_5@@11) (select (|PolymorphicMapType_9298_5856_5857#PolymorphicMapType_9298| QPMask@0) o_4@@13 f_5@@11)))
 :qid |stdinbpl.774:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_9298_5856_5857#PolymorphicMapType_9298| Mask@0) o_4@@13 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_9298_5856_5857#PolymorphicMapType_9298| QPMask@0) o_4@@13 f_5@@11))
))) (forall ((o_4@@14 T@Ref) (f_5@@12 T@Field_16102_16107) ) (!  (=> true (= (select (|PolymorphicMapType_9298_5856_40541#PolymorphicMapType_9298| Mask@0) o_4@@14 f_5@@12) (select (|PolymorphicMapType_9298_5856_40541#PolymorphicMapType_9298| QPMask@0) o_4@@14 f_5@@12)))
 :qid |stdinbpl.774:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_9298_5856_40541#PolymorphicMapType_9298| Mask@0) o_4@@14 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_9298_5856_40541#PolymorphicMapType_9298| QPMask@0) o_4@@14 f_5@@12))
))) (and (state Heap@@44 QPMask@0) (state Heap@@44 QPMask@0))) (and (and (=> (= (ControlFlow 0 44) 27) anon35_Else_correct) (=> (= (ControlFlow 0 44) 41) anon36_Then_correct)) (=> (= (ControlFlow 0 44) 43) anon36_Else_correct))))))))
(let ((anon13_correct true))
(let ((anon34_Else_correct  (=> (and (not (and (<= 0 i_2) (< i_2 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes))))) (= (ControlFlow 0 23) 18)) anon13_correct)))
(let ((anon34_Then_correct  (=> (and (<= 0 i_2) (< i_2 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes)))) (and (=> (= (ControlFlow 0 19) (- 0 22)) (HasDirectPerm_5838_17730 Mask@0 this@@6 nodes)) (=> (HasDirectPerm_5838_17730 Mask@0 this@@6 nodes) (and (=> (= (ControlFlow 0 19) (- 0 21)) (>= i_2 0)) (=> (>= i_2 0) (and (=> (= (ControlFlow 0 19) (- 0 20)) (< i_2 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes)))) (=> (< i_2 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes))) (=> (= (ControlFlow 0 19) 18) anon13_correct))))))))))
(let ((anon33_Else_correct  (=> (< i_2 0) (and (=> (= (ControlFlow 0 26) 19) anon34_Then_correct) (=> (= (ControlFlow 0 26) 23) anon34_Else_correct)))))
(let ((anon33_Then_correct  (=> (<= 0 i_2) (and (=> (= (ControlFlow 0 24) (- 0 25)) (HasDirectPerm_5838_17730 Mask@0 this@@6 nodes)) (=> (HasDirectPerm_5838_17730 Mask@0 this@@6 nodes) (and (=> (= (ControlFlow 0 24) 19) anon34_Then_correct) (=> (= (ControlFlow 0 24) 23) anon34_Else_correct)))))))
(let ((anon27_Else_correct  (=> (forall ((i_2_1 Int) (j_1 Int) ) (!  (=> (and (>= i_2_1 0) (and (< i_2_1 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes))) (and (>= j_1 0) (and (< j_1 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes))) (not (= i_2_1 j_1)))))) (not (= (|Seq#Index_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes) i_2_1) (|Seq#Index_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes) j_1))))
 :qid |stdinbpl.725:20|
 :skolemid |69|
 :pattern ( (|Seq#Index_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes) i_2_1) (|Seq#Index_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes) j_1))
)) (and (and (=> (= (ControlFlow 0 46) 44) anon32_Else_correct) (=> (= (ControlFlow 0 46) 24) anon33_Then_correct)) (=> (= (ControlFlow 0 46) 26) anon33_Else_correct)))))
(let ((anon7_correct true))
(let ((anon31_Else_correct  (=> (and (not (and (>= i_14 0) (and (< i_14 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes))) (and (>= j_5 0) (and (< j_5 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes))) (not (= i_14 j_5))))))) (= (ControlFlow 0 9) 1)) anon7_correct)))
(let ((anon31_Then_correct  (=> (and (>= i_14 0) (and (< i_14 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes))) (and (>= j_5 0) (and (< j_5 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes))) (not (= i_14 j_5)))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (HasDirectPerm_5838_17730 Mask@0 this@@6 nodes)) (=> (HasDirectPerm_5838_17730 Mask@0 this@@6 nodes) (and (=> (= (ControlFlow 0 2) (- 0 7)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 2) (- 0 6)) (< i_14 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes)))) (=> (< i_14 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (HasDirectPerm_5838_17730 Mask@0 this@@6 nodes)) (=> (HasDirectPerm_5838_17730 Mask@0 this@@6 nodes) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_5 0)) (=> (>= j_5 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_5 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes)))) (=> (< j_5 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes))) (=> (= (ControlFlow 0 2) 1) anon7_correct))))))))))))))))
(let ((anon30_Else_correct  (=> (> 0 j_5) (and (=> (= (ControlFlow 0 14) 2) anon31_Then_correct) (=> (= (ControlFlow 0 14) 9) anon31_Else_correct)))))
(let ((anon30_Then_correct  (=> (>= j_5 0) (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_5838_17730 Mask@0 this@@6 nodes)) (=> (HasDirectPerm_5838_17730 Mask@0 this@@6 nodes) (and (=> (= (ControlFlow 0 12) 2) anon31_Then_correct) (=> (= (ControlFlow 0 12) 9) anon31_Else_correct)))))))
(let ((anon29_Then_correct  (=> (< i_14 (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes))) (and (=> (= (ControlFlow 0 15) 12) anon30_Then_correct) (=> (= (ControlFlow 0 15) 14) anon30_Else_correct)))))
(let ((anon29_Else_correct  (=> (<= (|Seq#Length_5839| (select (|PolymorphicMapType_9277_5838_16764#PolymorphicMapType_9277| Heap@@44) this@@6 nodes)) i_14) (and (=> (= (ControlFlow 0 11) 2) anon31_Then_correct) (=> (= (ControlFlow 0 11) 9) anon31_Else_correct)))))
(let ((anon28_Then_correct  (=> (>= i_14 0) (and (=> (= (ControlFlow 0 16) (- 0 17)) (HasDirectPerm_5838_17730 Mask@0 this@@6 nodes)) (=> (HasDirectPerm_5838_17730 Mask@0 this@@6 nodes) (and (=> (= (ControlFlow 0 16) 15) anon29_Then_correct) (=> (= (ControlFlow 0 16) 11) anon29_Else_correct)))))))
(let ((anon28_Else_correct  (=> (> 0 i_14) (and (=> (= (ControlFlow 0 10) 2) anon31_Then_correct) (=> (= (ControlFlow 0 10) 9) anon31_Else_correct)))))
(let ((anon0_correct  (=> (state Heap@@44 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_9277_5641_53#PolymorphicMapType_9277| Heap@@44) this@@6 $allocated) (not (= this@@6 null))) (and (= Mask@0 (PolymorphicMapType_9298 (store (|PolymorphicMapType_9298_5838_17611#PolymorphicMapType_9298| ZeroMask) this@@6 nodes (+ (select (|PolymorphicMapType_9298_5838_17611#PolymorphicMapType_9298| ZeroMask) this@@6 nodes) FullPerm)) (|PolymorphicMapType_9298_5833_5834#PolymorphicMapType_9298| ZeroMask) (|PolymorphicMapType_9298_5856_5857#PolymorphicMapType_9298| ZeroMask) (|PolymorphicMapType_9298_5838_5857#PolymorphicMapType_9298| ZeroMask) (|PolymorphicMapType_9298_5838_53#PolymorphicMapType_9298| ZeroMask) (|PolymorphicMapType_9298_5838_3052#PolymorphicMapType_9298| ZeroMask) (|PolymorphicMapType_9298_5838_15523#PolymorphicMapType_9298| ZeroMask) (|PolymorphicMapType_9298_5838_39964#PolymorphicMapType_9298| ZeroMask) (|PolymorphicMapType_9298_5856_17611#PolymorphicMapType_9298| ZeroMask) (|PolymorphicMapType_9298_5856_5834#PolymorphicMapType_9298| ZeroMask) (|PolymorphicMapType_9298_5856_53#PolymorphicMapType_9298| ZeroMask) (|PolymorphicMapType_9298_5856_3052#PolymorphicMapType_9298| ZeroMask) (|PolymorphicMapType_9298_5856_15523#PolymorphicMapType_9298| ZeroMask) (|PolymorphicMapType_9298_5856_40541#PolymorphicMapType_9298| ZeroMask))) (state Heap@@44 Mask@0))) (and (and (=> (= (ControlFlow 0 47) 46) anon27_Else_correct) (=> (= (ControlFlow 0 47) 16) anon28_Then_correct)) (=> (= (ControlFlow 0 47) 10) anon28_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 48) 47) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
